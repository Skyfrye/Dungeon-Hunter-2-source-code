; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003b388c, declared_size=52, range_size=52, mode=arm
; class-group: POFollower
; alias: _ZN10POFollowerD1Ev
; demangled: POFollower::~POFollower()
; decoder-mode: arm
003b388c  24 30 9f e5                                      ldr r3, [pc, #0x24]
003b3890  24 20 9f e5                                      ldr r2, [pc, #0x24]
003b3894  10 40 2d e9                                      push {r4, lr}
003b3898  03 30 8f e0                                      add r3, pc, r3
003b389c  02 20 93 e7                                      ldr r2, [r3, r2]
003b38a0  00 40 a0 e1                                      mov r4, r0
003b38a4  08 20 82 e2                                      add r2, r2, #8
003b38a8  00 20 80 e5                                      str r2, [r0]
003b38ac  9b ed 02 eb                                      bl #0x46ef20
003b38b0  04 00 a0 e1                                      mov r0, r4
003b38b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003b38b8  f8 11 5e 00 2c 12 00 00                          .byte 0xf8, 0x11, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00

; FUNCTION 0x003b4494, declared_size=60, range_size=60, mode=arm
; class-group: POFollower
; alias: _ZN10POFollowerD0Ev
; demangled: POFollower::~POFollower()
; decoder-mode: arm
003b4494  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003b4498  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003b449c  10 40 2d e9                                      push {r4, lr}
003b44a0  03 30 8f e0                                      add r3, pc, r3
003b44a4  02 20 93 e7                                      ldr r2, [r3, r2]
003b44a8  00 40 a0 e1                                      mov r4, r0
003b44ac  08 20 82 e2                                      add r2, r2, #8
003b44b0  00 20 80 e5                                      str r2, [r0]
003b44b4  99 ea 02 eb                                      bl #0x46ef20
003b44b8  04 00 a0 e1                                      mov r0, r4
003b44bc  df 6f fd eb                                      bl #0x310440
003b44c0  04 00 a0 e1                                      mov r0, r4
003b44c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003b44c8  f0 05 5e 00 2c 12 00 00                          .byte 0xf0, 0x05, 0x5e, 0x00, 0x2c, 0x12, 0x00, 0x00
