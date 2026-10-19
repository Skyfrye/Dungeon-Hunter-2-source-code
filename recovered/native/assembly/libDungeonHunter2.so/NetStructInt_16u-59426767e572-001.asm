; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d278, declared_size=4, range_size=4, mode=arm
; class-group: NetStructInt<16u>
; alias: _ZN12NetStructIntILj16EED1Ev
; demangled: NetStructInt<16u>::~NetStructInt()
; decoder-mode: arm
0036d278  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d418, declared_size=28, range_size=28, mode=arm
; class-group: NetStructInt<16u>
; alias: _ZN12NetStructIntILj16EE9TestValueERKi
; demangled: NetStructInt<16u>::TestValue(int const&)
; decoder-mode: arm
0036d418  00 30 91 e5                                      ldr r3, [r1]
0036d41c  c3 0f 23 e0                                      eor r0, r3, r3, asr #31
0036d420  c3 0f 40 e0                                      sub r0, r0, r3, asr #31
0036d424  02 09 50 e3                                      cmp r0, #0x8000
0036d428  00 00 a0 23                                      movhs r0, #0
0036d42c  01 00 a0 33                                      movlo r0, #1
0036d430  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d658, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInt<16u>
; alias: _ZN12NetStructIntILj16EED0Ev
; demangled: NetStructInt<16u>::~NetStructInt()
; decoder-mode: arm
0036d658  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036d65c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0036d660  10 40 2d e9                                      push {r4, lr}
0036d664  03 30 8f e0                                      add r3, pc, r3
0036d668  02 20 93 e7                                      ldr r2, [r3, r2]
0036d66c  00 40 a0 e1                                      mov r4, r0
0036d670  08 20 82 e2                                      add r2, r2, #8
0036d674  00 20 80 e5                                      str r2, [r0]
0036d678  70 8b fe eb                                      bl #0x310440
0036d67c  04 00 a0 e1                                      mov r0, r4
0036d680  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036d684  2c 74 62 00 a8 10 00 00                          .byte 0x2c, 0x74, 0x62, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0036dad0, declared_size=96, range_size=96, mode=arm
; class-group: NetStructInt<16u>
; alias: _ZN12NetStructIntILj16EE4ReadER12NetBitStream
; demangled: NetStructInt<16u>::Read(NetBitStream&)
; decoder-mode: arm
0036dad0  30 40 2d e9                                      push {r4, r5, lr}
0036dad4  01 50 a0 e1                                      mov r5, r1
0036dad8  0c d0 4d e2                                      sub sp, sp, #0xc
0036dadc  00 40 a0 e1                                      mov r4, r0
0036dae0  0f 10 a0 e3                                      mov r1, #0xf
0036dae4  05 00 a0 e1                                      mov r0, r5
0036dae8  d0 82 12 eb                                      bl #0x80e630
0036daec  01 10 a0 e3                                      mov r1, #1
0036daf0  04 00 8d e5                                      str r0, [sp, #4]
0036daf4  05 00 a0 e1                                      mov r0, r5
0036daf8  99 82 12 eb                                      bl #0x80e564
0036dafc  04 30 9d e5                                      ldr r3, [sp, #4]
0036db00  00 00 50 e3                                      cmp r0, #0
0036db04  00 20 e0 13                                      mvnne r2, #0
0036db08  01 20 a0 03                                      moveq r2, #1
0036db0c  92 03 03 e0                                      mul r3, r2, r3
0036db10  08 10 8d e2                                      add r1, sp, #8
0036db14  04 30 21 e5                                      str r3, [r1, #-4]!
0036db18  04 00 a0 e1                                      mov r0, r4
0036db1c  00 30 94 e5                                      ldr r3, [r4]
0036db20  0f e0 a0 e1                                      mov lr, pc
0036db24  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036db28  0c d0 8d e2                                      add sp, sp, #0xc
0036db2c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0036dcc8, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInt<16u>
; alias: _ZN12NetStructIntILj16EE5WriteER12NetBitStream
; demangled: NetStructInt<16u>::Write(NetBitStream&)
; decoder-mode: arm
0036dcc8  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dccc  20 40 90 e5                                      ldr r4, [r0, #0x20]
0036dcd0  01 50 a0 e1                                      mov r5, r1
0036dcd4  05 00 a0 e1                                      mov r0, r5
0036dcd8  c4 1f 24 e0                                      eor r1, r4, r4, asr #31
0036dcdc  c4 1f 41 e0                                      sub r1, r1, r4, asr #31
0036dce0  0f 20 a0 e3                                      mov r2, #0xf
0036dce4  3c 82 12 eb                                      bl #0x80e5dc
0036dce8  05 00 a0 e1                                      mov r0, r5
0036dcec  a4 1f a0 e1                                      lsr r1, r4, #0x1f
0036dcf0  01 20 a0 e3                                      mov r2, #1
0036dcf4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036dcf8  fa 81 12 ea                                      b #0x80e4e8
