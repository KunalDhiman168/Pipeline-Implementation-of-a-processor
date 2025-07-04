always (posedge clk2)

// ID Stage

if (HALTED == 0)

begin

if (IF_ID_IR [25:21] == 5'b00000) ID EX_A <= 0; else ID_EX_A <= #2 Reg [IF_ID_IR [25:21]]; // "rs"

if (IF_ID_IR [20:16] 5'b০০০০০) ID EX B <= 0;

else ID_EX_B <= #2 Reg [IF_ID_IR [20:16]]; // "rt"

ID_EX_NPC <= #2 IF ID NPC;

ID_EX_IR <= #2 IF_ID_IR;

ID_EX_Imm <= #2 {{16{IF_ID_IR [15]}}, {IF_ID_IR [15:01});

case (IF_ID_IR [31:26])

ADD, SUB, AND, OR, SLT, MUL:

ID_EX_type <= #2 RR_ALU;

ADDI, SUBI, SLTI:

ID EX type <= #2 RM_ALU;

LW:

ID EX_type <= #2 LOAD;

SW:

ID_EX_type <= #2 STORE;

BNEQZ, BEQZ:

ID EX type <= #2 BRANCH:

HLT:

ID_EX_type <= #2 HALT;

default:

ID_EX_type <= #2 HALT;

// Invalid opcode

endcase

end
