; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d27c, declared_size=4, range_size=4, mode=arm
; class-group: NetStructBool
; alias: _ZN13NetStructBoolD1Ev
; demangled: NetStructBool::~NetStructBool()
; decoder-mode: arm
0036d27c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d624, declared_size=52, range_size=52, mode=arm
; class-group: NetStructBool
; alias: _ZN13NetStructBoolD0Ev
; demangled: NetStructBool::~NetStructBool()
; decoder-mode: arm
0036d624  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036d628  24 20 9f e5                                      ldr r2, [pc, #0x24]
0036d62c  10 40 2d e9                                      push {r4, lr}
0036d630  03 30 8f e0                                      add r3, pc, r3
0036d634  02 20 93 e7                                      ldr r2, [r3, r2]
0036d638  00 40 a0 e1                                      mov r4, r0
0036d63c  08 20 82 e2                                      add r2, r2, #8
0036d640  00 20 80 e5                                      str r2, [r0]
0036d644  7d 8b fe eb                                      bl #0x310440
0036d648  04 00 a0 e1                                      mov r0, r4
0036d64c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036d650  60 74 62 00 a8 10 00 00                          .byte 0x60, 0x74, 0x62, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0036f028, declared_size=60, range_size=60, mode=arm
; class-group: NetStructBool
; alias: _ZN13NetStructBool4ReadER12NetBitStream
; demangled: NetStructBool::Read(NetBitStream&)
; decoder-mode: arm
0036f028  10 40 2d e9                                      push {r4, lr}
0036f02c  00 40 a0 e1                                      mov r4, r0
0036f030  08 d0 4d e2                                      sub sp, sp, #8
0036f034  01 00 a0 e1                                      mov r0, r1
0036f038  16 7d 12 eb                                      bl #0x80e498
0036f03c  08 10 8d e2                                      add r1, sp, #8
0036f040  00 00 50 e2                                      subs r0, r0, #0
0036f044  01 00 a0 13                                      movne r0, #1
0036f048  01 00 61 e5                                      strb r0, [r1, #-1]!
0036f04c  00 30 94 e5                                      ldr r3, [r4]
0036f050  04 00 a0 e1                                      mov r0, r4
0036f054  0f e0 a0 e1                                      mov lr, pc
0036f058  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036f05c  08 d0 8d e2                                      add sp, sp, #8
0036f060  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036f064, declared_size=16, range_size=16, mode=arm
; class-group: NetStructBool
; alias: _ZN13NetStructBool5WriteER12NetBitStream
; demangled: NetStructBool::Write(NetBitStream&)
; decoder-mode: arm
0036f064  1d 30 d0 e5                                      ldrb r3, [r0, #0x1d]
0036f068  01 00 a0 e1                                      mov r0, r1
0036f06c  03 10 a0 e1                                      mov r1, r3
0036f070  ed 7c 12 ea                                      b #0x80e42c
