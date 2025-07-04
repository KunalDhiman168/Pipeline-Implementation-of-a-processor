 always @(posedge clk1) // IF STAGE
        if (HALTED == 0)
        begin
            if(((EX_MEM_IR[31:26] == BEQZ) && (EX_MEM_cond == 1)) || ((EX_MEM_IR[31:26] == BNEQZ) && (EX_MEM_cond == 0))) //check op code
                begin 
                    IF_ID_IR <= #2 Mem[EX_MEM_ALUOut]; //adrs. of branch is stored in EX_MEM_ALUOut,now saved in IR 
                    TAKEN_BRANCH <= #2 1'b1; // set to 1 as branch is taken
                    IF_ID_NPC <= #2 EX_MEM_ALUOut + 1;// address of next is given by +1
                    PC <= #2 EX_MEM_ALUOut + 1;
                end
            else // BRANCH NOT TAKEN
                begin
                    IF_ID_IR <= #2 Mem[PC];
                    IF_ID_NPC <= #2 PC + 1;
                    PC <= #2 PC + 1; 
                end
        end





