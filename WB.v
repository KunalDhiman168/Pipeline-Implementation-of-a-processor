 always @(posedge clk1) // wb stage
        begin
            if (TAKEN_BRANCH == 0) // DISABLE WRITE IF BRANCH TAKEN 
            case (MEM_WB_type)
                RR_ALU: Reg[MEM_WB_IR[15:11]] <= #2 MEM_WB_ALUOut; //"rd"

                RM_ALU: Reg[MEM_WB_IR[20:16]] <= #2 MEM_WB_ALUOut; //"rt"

                LOAD: Reg [MEM_WB_IR[20:16]] <= #2 MEM_WB_LMD; //"rt"

                HALT : HALTED <= #2 1'B1;

            endcase
        end
