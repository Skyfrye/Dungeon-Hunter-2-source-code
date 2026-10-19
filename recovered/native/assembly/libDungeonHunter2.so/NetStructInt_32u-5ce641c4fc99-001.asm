; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d254, declared_size=4, range_size=4, mode=arm
; class-group: NetStructInt<32u>
; alias: _ZN12NetStructIntILj32EED1Ev
; demangled: NetStructInt<32u>::~NetStructInt()
; decoder-mode: arm
0036d254  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d3e0, declared_size=8, range_size=8, mode=arm
; class-group: NetStructInt<32u>
; alias: _ZN12NetStructIntILj32EE9TestValueERKi
; demangled: NetStructInt<32u>::TestValue(int const&)
; decoder-mode: arm
0036d3e0  01 00 a0 e3                                      mov r0, #1
0036d3e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d554, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInt<32u>
; alias: _ZN12NetStructIntILj32EED0Ev
; demangled: NetStructInt<32u>::~NetStructInt()
; decoder-mode: arm
0036d554  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036d558  24 20 9f e5                                      ldr r2, [pc, #0x24]
0036d55c  10 40 2d e9                                      push {r4, lr}
0036d560  03 30 8f e0                                      add r3, pc, r3
0036d564  02 20 93 e7                                      ldr r2, [r3, r2]
0036d568  00 40 a0 e1                                      mov r4, r0
0036d56c  08 20 82 e2                                      add r2, r2, #8
0036d570  00 20 80 e5                                      str r2, [r0]
0036d574  b1 8b fe eb                                      bl #0x310440
0036d578  04 00 a0 e1                                      mov r0, r4
0036d57c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036d580  30 75 62 00 a8 10 00 00                          .byte 0x30, 0x75, 0x62, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0036da70, declared_size=96, range_size=96, mode=arm
; class-group: NetStructInt<32u>
; alias: _ZN12NetStructIntILj32EE4ReadER12NetBitStream
; demangled: NetStructInt<32u>::Read(NetBitStream&)
; decoder-mode: arm
0036da70  30 40 2d e9                                      push {r4, r5, lr}
0036da74  01 50 a0 e1                                      mov r5, r1
0036da78  0c d0 4d e2                                      sub sp, sp, #0xc
0036da7c  00 40 a0 e1                                      mov r4, r0
0036da80  1f 10 a0 e3                                      mov r1, #0x1f
0036da84  05 00 a0 e1                                      mov r0, r5
0036da88  e8 82 12 eb                                      bl #0x80e630
0036da8c  01 10 a0 e3                                      mov r1, #1
0036da90  04 00 8d e5                                      str r0, [sp, #4]
0036da94  05 00 a0 e1                                      mov r0, r5
0036da98  b1 82 12 eb                                      bl #0x80e564
0036da9c  04 30 9d e5                                      ldr r3, [sp, #4]
0036daa0  00 00 50 e3                                      cmp r0, #0
0036daa4  00 20 e0 13                                      mvnne r2, #0
0036daa8  01 20 a0 03                                      moveq r2, #1
0036daac  92 03 03 e0                                      mul r3, r2, r3
0036dab0  08 10 8d e2                                      add r1, sp, #8
0036dab4  04 30 21 e5                                      str r3, [r1, #-4]!
0036dab8  04 00 a0 e1                                      mov r0, r4
0036dabc  00 30 94 e5                                      ldr r3, [r4]
0036dac0  0f e0 a0 e1                                      mov lr, pc
0036dac4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036dac8  0c d0 8d e2                                      add sp, sp, #0xc
0036dacc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0036dc94, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInt<32u>
; alias: _ZN12NetStructIntILj32EE5WriteER12NetBitStream
; demangled: NetStructInt<32u>::Write(NetBitStream&)
; decoder-mode: arm
0036dc94  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dc98  20 40 90 e5                                      ldr r4, [r0, #0x20]
0036dc9c  01 50 a0 e1                                      mov r5, r1
0036dca0  05 00 a0 e1                                      mov r0, r5
0036dca4  c4 1f 24 e0                                      eor r1, r4, r4, asr #31
0036dca8  c4 1f 41 e0                                      sub r1, r1, r4, asr #31
0036dcac  1f 20 a0 e3                                      mov r2, #0x1f
0036dcb0  49 82 12 eb                                      bl #0x80e5dc
0036dcb4  05 00 a0 e1                                      mov r0, r5
0036dcb8  a4 1f a0 e1                                      lsr r1, r4, #0x1f
0036dcbc  01 20 a0 e3                                      mov r2, #1
0036dcc0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036dcc4  07 82 12 ea                                      b #0x80e4e8
