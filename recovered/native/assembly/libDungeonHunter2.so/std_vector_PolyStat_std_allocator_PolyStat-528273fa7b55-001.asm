; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00510230, declared_size=184, range_size=184, mode=arm
; class-group: std::vector<PolyStat, std::allocator<PolyStat> >
; alias: _ZNSt6vectorI8PolyStatSaIS0_EED1Ev
; demangled: std::vector<PolyStat, std::allocator<PolyStat> >::~vector()
; decoder-mode: arm
00510230  70 40 2d e9                                      push {r4, r5, r6, lr}
00510234  04 40 90 e5                                      ldr r4, [r0, #4]
00510238  00 50 90 e5                                      ldr r5, [r0]
0051023c  00 60 a0 e1                                      mov r6, r0
00510240  05 00 54 e1                                      cmp r4, r5
00510244  03 00 00 1a                                      bne #0x510258
00510248  10 00 00 ea                                      b #0x510290
0051024c  2b e3 07 eb                                      bl #0x708f00
00510250  04 00 55 e1                                      cmp r5, r4
00510254  0d 00 00 0a                                      beq #0x510290
00510258  1c 40 44 e2                                      sub r4, r4, #0x1c
0051025c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00510260  04 00 53 e1                                      cmp r3, r4
00510264  03 00 a0 e1                                      mov r0, r3
00510268  f8 ff ff 0a                                      beq #0x510250
0051026c  00 00 53 e3                                      cmp r3, #0
00510270  f6 ff ff 0a                                      beq #0x510250
00510274  00 10 94 e5                                      ldr r1, [r4]
00510278  01 10 63 e0                                      rsb r1, r3, r1
0051027c  80 00 51 e3                                      cmp r1, #0x80
00510280  f1 ff ff 9a                                      bls #0x51024c
00510284  6d 00 f8 eb                                      bl #0x310440
00510288  04 00 55 e1                                      cmp r5, r4
0051028c  f1 ff ff 1a                                      bne #0x510258
00510290  00 00 96 e5                                      ldr r0, [r6]
00510294  00 00 50 e3                                      cmp r0, #0
00510298  0d 00 00 0a                                      beq #0x5102d4
0051029c  08 30 96 e5                                      ldr r3, [r6, #8]
005102a0  1c 10 a0 e3                                      mov r1, #0x1c
005102a4  03 30 60 e0                                      rsb r3, r0, r3
005102a8  43 31 a0 e1                                      asr r3, r3, #2
005102ac  83 21 83 e0                                      add r2, r3, r3, lsl #3
005102b0  02 23 82 e0                                      add r2, r2, r2, lsl #6
005102b4  82 21 83 e0                                      add r2, r3, r2, lsl #3
005102b8  82 27 82 e0                                      add r2, r2, r2, lsl #15
005102bc  82 31 83 e0                                      add r3, r3, r2, lsl #3
005102c0  00 30 63 e2                                      rsb r3, r3, #0
005102c4  91 03 01 e0                                      mul r1, r1, r3
005102c8  80 00 51 e3                                      cmp r1, #0x80
005102cc  02 00 00 8a                                      bhi #0x5102dc
005102d0  0a e3 07 eb                                      bl #0x708f00
005102d4  06 00 a0 e1                                      mov r0, r6
005102d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005102dc  57 00 f8 eb                                      bl #0x310440
005102e0  06 00 a0 e1                                      mov r0, r6
005102e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
