; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081ce00, declared_size=24, range_size=24, mode=arm
; class-group: GameCenterInfo
; alias: _ZN14GameCenterInfoD1Ev
; demangled: GameCenterInfo::~GameCenterInfo()
; decoder-mode: arm
0081ce00  10 40 2d e9                                      push {r4, lr}
0081ce04  00 40 a0 e1                                      mov r4, r0
0081ce08  10 00 80 e2                                      add r0, r0, #0x10
0081ce0c  03 30 ec eb                                      bl #0x328e20
0081ce10  04 00 a0 e1                                      mov r0, r4
0081ce14  10 80 bd e8                                      pop {r4, pc}
