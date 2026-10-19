; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003b38f4, declared_size=52, range_size=52, mode=arm
; class-group: POMonster
; alias: _ZN9POMonsterD1Ev
; demangled: POMonster::~POMonster()
; decoder-mode: arm
003b38f4  24 30 9f e5                                      ldr r3, [pc, #0x24]
003b38f8  24 20 9f e5                                      ldr r2, [pc, #0x24]
003b38fc  10 40 2d e9                                      push {r4, lr}
003b3900  03 30 8f e0                                      add r3, pc, r3
003b3904  02 20 93 e7                                      ldr r2, [r3, r2]
003b3908  00 40 a0 e1                                      mov r4, r0
003b390c  08 20 82 e2                                      add r2, r2, #8
003b3910  00 20 80 e5                                      str r2, [r0]
003b3914  81 ed 02 eb                                      bl #0x46ef20
003b3918  04 00 a0 e1                                      mov r0, r4
003b391c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003b3920  90 11 5e 00 2c 12 00 00                          .byte 0x90, 0x11, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00

; FUNCTION 0x003b4458, declared_size=60, range_size=60, mode=arm
; class-group: POMonster
; alias: _ZN9POMonsterD0Ev
; demangled: POMonster::~POMonster()
; decoder-mode: arm
003b4458  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003b445c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003b4460  10 40 2d e9                                      push {r4, lr}
003b4464  03 30 8f e0                                      add r3, pc, r3
003b4468  02 20 93 e7                                      ldr r2, [r3, r2]
003b446c  00 40 a0 e1                                      mov r4, r0
003b4470  08 20 82 e2                                      add r2, r2, #8
003b4474  00 20 80 e5                                      str r2, [r0]
003b4478  a8 ea 02 eb                                      bl #0x46ef20
003b447c  04 00 a0 e1                                      mov r0, r4
003b4480  ee 6f fd eb                                      bl #0x310440
003b4484  04 00 a0 e1                                      mov r0, r4
003b4488  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003b448c  2c 06 5e 00 2c 12 00 00                          .byte 0x2c, 0x06, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00
