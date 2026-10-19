; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005846f8, declared_size=428, range_size=428, mode=arm
; class-group: glitch::video::STransformationSource
; alias: _ZN6glitch5video21STransformationSource6detachEv
; demangled: glitch::video::STransformationSource::detach()
; decoder-mode: arm
005846f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005846fc  04 30 d0 e5                                      ldrb r3, [r0, #4]
00584700  90 51 9f e5                                      ldr r5, [pc, #0x190]
00584704  0c d0 4d e2                                      sub sp, sp, #0xc
00584708  00 00 53 e3                                      cmp r3, #0
0058470c  00 40 a0 e1                                      mov r4, r0
00584710  05 50 8f e0                                      add r5, pc, r5
00584714  12 00 00 0a                                      beq #0x584764
00584718  7c 71 9f e5                                      ldr r7, [pc, #0x17c]
0058471c  00 30 a0 e3                                      mov r3, #0
00584720  04 30 c0 e5                                      strb r3, [r0, #4]
00584724  07 30 95 e7                                      ldr r3, [r5, r7]
00584728  00 60 90 e5                                      ldr r6, [r0]
0058472c  00 80 93 e5                                      ldr r8, [r3]
00584730  00 00 58 e3                                      cmp r8, #0
00584734  0f 00 00 0a                                      beq #0x584778
00584738  00 20 98 e5                                      ldr r2, [r8]
0058473c  00 20 83 e5                                      str r2, [r3]
00584740  00 00 56 e3                                      cmp r6, #0
00584744  08 00 00 0a                                      beq #0x58476c
00584748  00 30 a0 e3                                      mov r3, #0
0058474c  40 30 c8 e5                                      strb r3, [r8, #0x40]
00584750  06 10 a0 e1                                      mov r1, r6
00584754  08 00 a0 e1                                      mov r0, r8
00584758  41 20 a0 e3                                      mov r2, #0x41
0058475c  41 28 f6 eb                                      bl #0x30e868
00584760  00 80 84 e5                                      str r8, [r4]
00584764  0c d0 8d e2                                      add sp, sp, #0xc
00584768  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0058476c  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
00584770  03 60 95 e7                                      ldr r6, [r5, r3]
00584774  f3 ff ff ea                                      b #0x584748
00584778  0c a0 93 e5                                      ldr sl, [r3, #0xc]
0058477c  04 80 a0 e3                                      mov r8, #4
00584780  0a 00 a0 e1                                      mov r0, sl
00584784  08 10 a0 e1                                      mov r1, r8
00584788  e7 28 f6 eb                                      bl #0x30eb2c
0058478c  08 30 a0 e1                                      mov r3, r8
00584790  00 80 51 e2                                      subs r8, r1, #0
00584794  03 00 a0 e1                                      mov r0, r3
00584798  f9 ff ff 1a                                      bne #0x584784
0058479c  03 10 a0 e1                                      mov r1, r3
005847a0  0a 00 a0 e1                                      mov r0, sl
005847a4  28 29 f6 eb                                      bl #0x30ec4c
005847a8  07 b0 95 e7                                      ldr fp, [r5, r7]
005847ac  00 91 a0 e1                                      lsl sb, r0, #2
005847b0  08 10 a0 e1                                      mov r1, r8
005847b4  10 30 9b e5                                      ldr r3, [fp, #0x10]
005847b8  93 09 03 e0                                      mul r3, r3, sb
005847bc  0f 00 83 e2                                      add r0, r3, #0xf
005847c0  04 30 8d e5                                      str r3, [sp, #4]
005847c4  67 2f f6 eb                                      bl #0x310568
005847c8  07 a0 80 e2                                      add sl, r0, #7
005847cc  03 a0 ca e3                                      bic sl, sl, #3
005847d0  04 00 0a e5                                      str r0, [sl, #-4]
005847d4  04 30 9d e5                                      ldr r3, [sp, #4]
005847d8  00 00 5a e3                                      cmp sl, #0
005847dc  08 20 83 e2                                      add r2, r3, #8
005847e0  d6 ff ff 0a                                      beq #0x584740
005847e4  10 c0 9b e5                                      ldr ip, [fp, #0x10]
005847e8  03 00 69 e0                                      rsb r0, sb, r3
005847ec  09 10 a0 e1                                      mov r1, sb
005847f0  8c 30 a0 e1                                      lsl r3, ip, #1
005847f4  10 30 8b e5                                      str r3, [fp, #0x10]
005847f8  04 20 8d e5                                      str r2, [sp, #4]
005847fc  12 29 f6 eb                                      bl #0x30ec4c
00584800  99 00 00 e0                                      mul r0, sb, r0
00584804  00 30 9b e5                                      ldr r3, [fp]
00584808  00 c0 8a e0                                      add ip, sl, r0
0058480c  0c 00 5a e1                                      cmp sl, ip
00584810  00 30 8a e7                                      str r3, [sl, r0]
00584814  04 20 9d e5                                      ldr r2, [sp, #4]
00584818  12 00 00 0a                                      beq #0x584868
0058481c  00 90 69 e2                                      rsb sb, sb, #0
00584820  09 10 8c e0                                      add r1, ip, sb
00584824  01 00 5a e1                                      cmp sl, r1
00584828  0a e0 a0 01                                      moveq lr, sl
0058482c  0c 00 00 0a                                      beq #0x584864
00584830  09 30 81 e0                                      add r3, r1, sb
00584834  03 00 a0 e1                                      mov r0, r3
00584838  02 00 00 ea                                      b #0x584848
0058483c  01 c0 a0 e1                                      mov ip, r1
00584840  03 10 a0 e1                                      mov r1, r3
00584844  09 30 83 e0                                      add r3, r3, sb
00584848  09 00 80 e0                                      add r0, r0, sb
0058484c  00 e0 69 e0                                      rsb lr, sb, r0
00584850  0e 00 5a e1                                      cmp sl, lr
00584854  00 c0 81 e5                                      str ip, [r1]
00584858  03 e0 a0 e1                                      mov lr, r3
0058485c  f6 ff ff 1a                                      bne #0x58483c
00584860  01 c0 a0 e1                                      mov ip, r1
00584864  00 c0 8e e5                                      str ip, [lr]
00584868  07 30 95 e7                                      ldr r3, [r5, r7]
0058486c  04 10 42 e2                                      sub r1, r2, #4
00584870  01 00 8a e0                                      add r0, sl, r1
00584874  04 c0 93 e5                                      ldr ip, [r3, #4]
00584878  00 a0 83 e5                                      str sl, [r3]
0058487c  04 c0 00 e5                                      str ip, [r0, #-4]
00584880  08 00 93 e5                                      ldr r0, [r3, #8]
00584884  01 00 8a e7                                      str r0, [sl, r1]
00584888  00 80 93 e5                                      ldr r8, [r3]
0058488c  08 20 83 e5                                      str r2, [r3, #8]
00584890  04 a0 83 e5                                      str sl, [r3, #4]
00584894  a7 ff ff ea                                      b #0x584738
; mapping-symbol data/literal pool
00584898  80 03 41 00 c0 3c 00 00 30 28 00 00              .byte 0x80, 0x03, 0x41, 0x00, 0xc0, 0x3c, 0x00, 0x00, 0x30, 0x28, 0x00, 0x00
