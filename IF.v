module pipe_MIPS32 (clk1, clk2);

input elki, clk2;

// Two-phase clock

reg [31:0] PC, IF_ID_IR, IF_ID_NPC;

reg [31:0] ID_EX_IR, ID_EX_NPC, ID_EX_A, ID_EX_B, ID_EX_Imm;

reg [2:0] ID_EX_type, EX_MEM_type, MEM_WB_type;

reg [31:0] EX_MEM_IR, EX_MEM_ALUOut, EX_MEM_B;

reg EX_MEM_Cond;

reg [31:0] MEM_WB_IR, MEM_WB_ALUOut, MEM_WB_LMD;

reg [31:0] Reg [0:31];

// Register bank (32 x 32)

// 1024 x 32 memory

reg [31:0] Mem [0:1023]:

parameter ADD-6'b০০০০০০, SUB-6b000001, AND=6b000010, OR 6'6000011, SLT-6'6000100, MUL-66000101, HLT=6'b111111, LW-6′6001000, SW-6'b001001, ADDI=6'6001010, SUBI-6′b001011, SLTI-66001100, BNEQZ-6'b001101, BEQZ-6/b001110;

parameter RR_ALU-3′6000, BRANCH 3'6100, RM ALU-3'6001, LOAD-3′6010, STORE 3'b011, HALT-3'b101;

reg HALTED;

// Set after HLT instruction is completed (in WB stage)

reg TAKEN BRANCH:

// Required to disable instructions after branch
  always (posedge clk1)

// IF Stage

if (HALTED == 0)

begin

if (((EX_MEM_IR [31:26] ((EX_MEM_IR [31:26] BEQZ) && (EX MEM cond=-1)) 11 BNEQZ) && (EX_MEM_cond == 0)))

begin

IFID IR

<= #2 Mem [EX_MEM_ALUOut];

TAKEN BRANCH <= #22 1'b1;

IF_ID_NPC <= #2 EX_MEM_ALUOut + 1;

PC

<= #2 EX_MEM_ALUOut + 1;

end

else

begin

IF ID IR

<= #2 Mem [PC];

IF ID NPC

PC

<= #2 PC + 1;

end

<=#2 PC + 1;

end
