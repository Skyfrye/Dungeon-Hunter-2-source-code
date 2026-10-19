
; =============== S U B R O U T I N E =======================================


; int __fastcall operator>>(int, int)
                EXPORT _ZrsRSiRN6glitch4core8vector3dIiEE
_ZrsRSiRN6glitch4core8vector3dIiEE      ; DATA XREF: LOAD:00050418↑o

var_5           = -5

; __unwind {
                PUSH            {R4-R7,LR}
00310330                 SUB             SP, SP, #0xC
00310334                 MOV             R4, R1
00310338                 MOV             R6, R0
0031033C                 BL              _ZNSirsERi ; std::istream::operator>>(int &)
00310340                 ADD             R5, SP, #0xC+var_5
00310344                 MOV             R7, R0
