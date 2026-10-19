; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008100b8, declared_size=4, range_size=4, mode=arm
; class-group: NetStructInt<6u>
; alias: _ZN12NetStructIntILj6EED1Ev
; demangled: NetStructInt<6u>::~NetStructInt()
; decoder-mode: arm
008100b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008103b8, declared_size=28, range_size=28, mode=arm
; class-group: NetStructInt<6u>
; alias: _ZN12NetStructIntILj6EE9TestValueERKi
; demangled: NetStructInt<6u>::TestValue(int const&)
; decoder-mode: arm
008103b8  00 30 91 e5                                      ldr r3, [r1]
008103bc  c3 0f 23 e0                                      eor r0, r3, r3, asr #31
008103c0  c3 0f 40 e0                                      sub r0, r0, r3, asr #31
008103c4  1f 00 50 e3                                      cmp r0, #0x1f
008103c8  00 00 a0 83                                      movhi r0, #0
008103cc  01 00 a0 93                                      movls r0, #1
008103d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008108d8, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInt<6u>
; alias: _ZN12NetStructIntILj6EED0Ev
; demangled: NetStructInt<6u>::~NetStructInt()
; decoder-mode: arm
008108d8  24 30 9f e5                                      ldr r3, [pc, #0x24]
008108dc  24 20 9f e5                                      ldr r2, [pc, #0x24]
008108e0  10 40 2d e9                                      push {r4, lr}
008108e4  03 30 8f e0                                      add r3, pc, r3
008108e8  02 20 93 e7                                      ldr r2, [r3, r2]
008108ec  00 40 a0 e1                                      mov r4, r0
008108f0  08 20 82 e2                                      add r2, r2, #8
008108f4  00 20 80 e5                                      str r2, [r0]
008108f8  d0 fe eb eb                                      bl #0x310440
008108fc  04 00 a0 e1                                      mov r0, r4
00810900  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00810904  ac 41 18 00 a8 10 00 00                          .byte 0xac, 0x41, 0x18, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0081090c, declared_size=96, range_size=96, mode=arm
; class-group: NetStructInt<6u>
; alias: _ZN12NetStructIntILj6EE4ReadER12NetBitStream
; demangled: NetStructInt<6u>::Read(NetBitStream&)
; decoder-mode: arm
0081090c  30 40 2d e9                                      push {r4, r5, lr}
00810910  01 50 a0 e1                                      mov r5, r1
00810914  0c d0 4d e2                                      sub sp, sp, #0xc
00810918  00 40 a0 e1                                      mov r4, r0
0081091c  05 10 a0 e3                                      mov r1, #5
00810920  05 00 a0 e1                                      mov r0, r5
00810924  41 f7 ff eb                                      bl #0x80e630
00810928  01 10 a0 e3                                      mov r1, #1
0081092c  04 00 8d e5                                      str r0, [sp, #4]
00810930  05 00 a0 e1                                      mov r0, r5
00810934  0a f7 ff eb                                      bl #0x80e564
00810938  04 30 9d e5                                      ldr r3, [sp, #4]
0081093c  00 00 50 e3                                      cmp r0, #0
00810940  00 20 e0 13                                      mvnne r2, #0
00810944  01 20 a0 03                                      moveq r2, #1
00810948  92 03 03 e0                                      mul r3, r2, r3
0081094c  08 10 8d e2                                      add r1, sp, #8
00810950  04 30 21 e5                                      str r3, [r1, #-4]!
00810954  04 00 a0 e1                                      mov r0, r4
00810958  00 30 94 e5                                      ldr r3, [r4]
0081095c  0f e0 a0 e1                                      mov lr, pc
00810960  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00810964  0c d0 8d e2                                      add sp, sp, #0xc
00810968  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0081096c, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInt<6u>
; alias: _ZN12NetStructIntILj6EE5WriteER12NetBitStream
; demangled: NetStructInt<6u>::Write(NetBitStream&)
; decoder-mode: arm
0081096c  70 40 2d e9                                      push {r4, r5, r6, lr}
00810970  20 40 90 e5                                      ldr r4, [r0, #0x20]
00810974  01 50 a0 e1                                      mov r5, r1
00810978  05 00 a0 e1                                      mov r0, r5
0081097c  c4 1f 24 e0                                      eor r1, r4, r4, asr #31
00810980  c4 1f 41 e0                                      sub r1, r1, r4, asr #31
00810984  05 20 a0 e3                                      mov r2, #5
00810988  13 f7 ff eb                                      bl #0x80e5dc
0081098c  05 00 a0 e1                                      mov r0, r5
00810990  a4 1f a0 e1                                      lsr r1, r4, #0x1f
00810994  01 20 a0 e3                                      mov r2, #1
00810998  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081099c  d1 f6 ff ea                                      b #0x80e4e8
