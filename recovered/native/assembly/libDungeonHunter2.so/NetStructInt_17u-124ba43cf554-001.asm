; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d310, declared_size=4, range_size=4, mode=arm
; class-group: NetStructInt<17u>
; alias: _ZN12NetStructIntILj17EED1Ev
; demangled: NetStructInt<17u>::~NetStructInt()
; decoder-mode: arm
0036d310  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d450, declared_size=28, range_size=28, mode=arm
; class-group: NetStructInt<17u>
; alias: _ZN12NetStructIntILj17EE9TestValueERKi
; demangled: NetStructInt<17u>::TestValue(int const&)
; decoder-mode: arm
0036d450  00 30 91 e5                                      ldr r3, [r1]
0036d454  c3 0f 23 e0                                      eor r0, r3, r3, asr #31
0036d458  c3 0f 40 e0                                      sub r0, r0, r3, asr #31
0036d45c  01 08 50 e3                                      cmp r0, #0x10000
0036d460  00 00 a0 23                                      movhs r0, #0
0036d464  01 00 a0 33                                      movlo r0, #1
0036d468  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d68c, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInt<17u>
; alias: _ZN12NetStructIntILj17EED0Ev
; demangled: NetStructInt<17u>::~NetStructInt()
; decoder-mode: arm
0036d68c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036d690  24 20 9f e5                                      ldr r2, [pc, #0x24]
0036d694  10 40 2d e9                                      push {r4, lr}
0036d698  03 30 8f e0                                      add r3, pc, r3
0036d69c  02 20 93 e7                                      ldr r2, [r3, r2]
0036d6a0  00 40 a0 e1                                      mov r4, r0
0036d6a4  08 20 82 e2                                      add r2, r2, #8
0036d6a8  00 20 80 e5                                      str r2, [r0]
0036d6ac  63 8b fe eb                                      bl #0x310440
0036d6b0  04 00 a0 e1                                      mov r0, r4
0036d6b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036d6b8  f8 73 62 00 a8 10 00 00                          .byte 0xf8, 0x73, 0x62, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0036db30, declared_size=96, range_size=96, mode=arm
; class-group: NetStructInt<17u>
; alias: _ZN12NetStructIntILj17EE4ReadER12NetBitStream
; demangled: NetStructInt<17u>::Read(NetBitStream&)
; decoder-mode: arm
0036db30  30 40 2d e9                                      push {r4, r5, lr}
0036db34  01 50 a0 e1                                      mov r5, r1
0036db38  0c d0 4d e2                                      sub sp, sp, #0xc
0036db3c  00 40 a0 e1                                      mov r4, r0
0036db40  10 10 a0 e3                                      mov r1, #0x10
0036db44  05 00 a0 e1                                      mov r0, r5
0036db48  b8 82 12 eb                                      bl #0x80e630
0036db4c  01 10 a0 e3                                      mov r1, #1
0036db50  04 00 8d e5                                      str r0, [sp, #4]
0036db54  05 00 a0 e1                                      mov r0, r5
0036db58  81 82 12 eb                                      bl #0x80e564
0036db5c  04 30 9d e5                                      ldr r3, [sp, #4]
0036db60  00 00 50 e3                                      cmp r0, #0
0036db64  00 20 e0 13                                      mvnne r2, #0
0036db68  01 20 a0 03                                      moveq r2, #1
0036db6c  92 03 03 e0                                      mul r3, r2, r3
0036db70  08 10 8d e2                                      add r1, sp, #8
0036db74  04 30 21 e5                                      str r3, [r1, #-4]!
0036db78  04 00 a0 e1                                      mov r0, r4
0036db7c  00 30 94 e5                                      ldr r3, [r4]
0036db80  0f e0 a0 e1                                      mov lr, pc
0036db84  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036db88  0c d0 8d e2                                      add sp, sp, #0xc
0036db8c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0036dcfc, declared_size=52, range_size=52, mode=arm
; class-group: NetStructInt<17u>
; alias: _ZN12NetStructIntILj17EE5WriteER12NetBitStream
; demangled: NetStructInt<17u>::Write(NetBitStream&)
; decoder-mode: arm
0036dcfc  70 40 2d e9                                      push {r4, r5, r6, lr}
0036dd00  20 40 90 e5                                      ldr r4, [r0, #0x20]
0036dd04  01 50 a0 e1                                      mov r5, r1
0036dd08  05 00 a0 e1                                      mov r0, r5
0036dd0c  c4 1f 24 e0                                      eor r1, r4, r4, asr #31
0036dd10  c4 1f 41 e0                                      sub r1, r1, r4, asr #31
0036dd14  10 20 a0 e3                                      mov r2, #0x10
0036dd18  2f 82 12 eb                                      bl #0x80e5dc
0036dd1c  05 00 a0 e1                                      mov r0, r5
0036dd20  a4 1f a0 e1                                      lsr r1, r4, #0x1f
0036dd24  01 20 a0 e3                                      mov r2, #1
0036dd28  70 40 bd e8                                      pop {r4, r5, r6, lr}
0036dd2c  ed 81 12 ea                                      b #0x80e4e8
