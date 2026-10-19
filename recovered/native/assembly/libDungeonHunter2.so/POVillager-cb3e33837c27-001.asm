; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003b3824, declared_size=52, range_size=52, mode=arm
; class-group: POVillager
; alias: _ZN10POVillagerD1Ev
; demangled: POVillager::~POVillager()
; decoder-mode: arm
003b3824  24 30 9f e5                                      ldr r3, [pc, #0x24]
003b3828  24 20 9f e5                                      ldr r2, [pc, #0x24]
003b382c  10 40 2d e9                                      push {r4, lr}
003b3830  03 30 8f e0                                      add r3, pc, r3
003b3834  02 20 93 e7                                      ldr r2, [r3, r2]
003b3838  00 40 a0 e1                                      mov r4, r0
003b383c  08 20 82 e2                                      add r2, r2, #8
003b3840  00 20 80 e5                                      str r2, [r0]
003b3844  b5 ed 02 eb                                      bl #0x46ef20
003b3848  04 00 a0 e1                                      mov r0, r4
003b384c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003b3850  60 12 5e 00 2c 12 00 00                          .byte 0x60, 0x12, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00

; FUNCTION 0x003b43e0, declared_size=60, range_size=60, mode=arm
; class-group: POVillager
; alias: _ZN10POVillagerD0Ev
; demangled: POVillager::~POVillager()
; decoder-mode: arm
003b43e0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003b43e4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003b43e8  10 40 2d e9                                      push {r4, lr}
003b43ec  03 30 8f e0                                      add r3, pc, r3
003b43f0  02 20 93 e7                                      ldr r2, [r3, r2]
003b43f4  00 40 a0 e1                                      mov r4, r0
003b43f8  08 20 82 e2                                      add r2, r2, #8
003b43fc  00 20 80 e5                                      str r2, [r0]
003b4400  c6 ea 02 eb                                      bl #0x46ef20
003b4404  04 00 a0 e1                                      mov r0, r4
003b4408  0c 70 fd eb                                      bl #0x310440
003b440c  04 00 a0 e1                                      mov r0, r4
003b4410  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003b4414  a4 06 5e 00 2c 12 00 00                          .byte 0xa4, 0x06, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00
