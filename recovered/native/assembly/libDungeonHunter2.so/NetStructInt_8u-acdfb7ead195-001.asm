; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d274, declared_size=4, range_size=4, mode=arm
; class-group: NetStructInt<8u>
; alias: _ZN12NetStructIntILj8EED1Ev
; demangled: NetStructInt<8u>::~NetStructInt()
; decoder-mode: arm
0036d274  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d434, declared_size=28, range_size=28, mode=arm
; class-group: NetStructInt<8u>
; alias: _ZN12NetStructIntILj8EE9TestValueERKi
; demangled: NetStructInt<8u>::TestValue(int const&)
; decoder-mode: arm
0036d434  00 30 91 e5                                      ldr r3, [r1]
0036d438  c3 0f 23 e0                                      eor r0, r3, r3, asr #31
0036d43c  c3 0f 40 e0                                      sub r0, r0, r3, asr #31
0036d440  7f 00 50 e3                                      cmp r0, #0x7f
0036d444  00 00 a0 83                                      movhi r0, #0
0036d448  01 00 a0 93                                      movls r0, #1
0036d44c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d6c0, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInt<8u>
; alias: _ZN12NetStructIntILj8EED0Ev
; demangled: NetStructInt<8u>::~NetStructInt()
; decoder-mode: arm
0036d6c0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036d6c4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0036d6c8  10 40 2d e9                                      push {r4, lr}
0036d6cc  03 30 8f e0                                      add r3, pc, r3
0036d6d0  02 20 93 e7                                      ldr r2, [r3, r2]
0036d6d4  00 40 a0 e1                                      mov r4, r0
0036d6d8  08 20 82 e2                                      add r2, r2, #8
0036d6dc  00 20 80 e5                                      str r2, [r0]
0036d6e0  56 8b fe eb                                      bl #0x310440
0036d6e4  04 00 a0 e1                                      mov r0, r4
0036d6e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036d6ec  c4 73 62 00 a8 10 00 00                          .byte 0xc4, 0x73, 0x62, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0036db90, declared_size=96, range_size=96, mode=arm
; class-group: NetStructInt<8u>
; alias: _ZN12NetStructIntILj8EE4ReadER12NetBitStream
; demangled: NetStructInt<8u>::Read(NetBitStream&)
; decoder-mode: arm
0036db90  30 40 2d e9                                      push {r4, r5, lr}
0036db94  01 50 a0 e1                                      mov r5, r1
0036db98  0c d0 4d e2                                      sub sp, sp, #0xc
0036db9c  00 40 a0 e1                                      mov r4, r0
0036dba0  07 10 a0 e3                                      mov r1, #7
0036dba4  05 00 a0 e1                                      mov r0, r5
0036dba8  a0 82 12 eb                                      bl #0x80e630
0036dbac  01 10 a0 e3                                      mov r1, #1
0036dbb0  04 00 8d e5                                      str r0, [sp, #4]
0036dbb4  05 00 a0 e1                                      mov r0, r5
0036dbb8  69 82 12 eb                                      bl #0x80e564
0036dbbc  04 30 9d e5                                      ldr r3, [sp, #4]
0036dbc0  00 00 50 e3                                      cmp r0, #0
0036dbc4  00 20 e0 13                                      mvnne r2, #0
0036dbc8  01 20 a0 03                                      moveq r2, #1
0036dbcc  92 03 03 e0                                      mul r3, r2, r3
0036dbd0  08 10 8d e2                                      add r1, sp, #8
0036dbd4  04 30 21 e5                                      str r3, [r1, #-4]!
0036dbd8  04 00 a0 e1                                      mov r0, r4
0036dbdc  00 30 94 e5                                      ldr r3, [r4]
0036dbe0  0f e0 a0 e1                                      mov lr, pc
0036dbe4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036dbe8  0c d0 8d e2                                      add sp, sp, #0xc
0036dbec  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0036dd30, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInt<8u>
; alias: _ZN12NetStructIntILj8EE5WriteER12NetBitStream
; demangled: NetStructInt<8u>::Write(NetBitStream&)
; decoder-mode: arm
0036dd30  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dd34  20 40 90 e5                                      ldr r4, [r0, #0x20]
0036dd38  01 50 a0 e1                                      mov r5, r1
0036dd3c  05 00 a0 e1                                      mov r0, r5
0036dd40  c4 1f 24 e0                                      eor r1, r4, r4, asr #31
0036dd44  c4 1f 41 e0                                      sub r1, r1, r4, asr #31
0036dd48  07 20 a0 e3                                      mov r2, #7
0036dd4c  22 82 12 eb                                      bl #0x80e5dc
0036dd50  05 00 a0 e1                                      mov r0, r5
0036dd54  a4 1f a0 e1                                      lsr r1, r4, #0x1f
0036dd58  01 20 a0 e3                                      mov r2, #1
0036dd5c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036dd60  e0 81 12 ea                                      b #0x80e4e8
