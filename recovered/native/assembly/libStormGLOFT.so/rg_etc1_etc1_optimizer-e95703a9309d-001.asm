; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0003ff58, declared_size=1572, range_size=1572, mode=arm
; class-group: rg_etc1::etc1_optimizer
; alias: _ZN7rg_etc114etc1_optimizer7computeEv
; demangled: rg_etc1::etc1_optimizer::compute()
; decoder-mode: arm
0003ff58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0003ff5c  1c b0 8d e2                                      add fp, sp, #0x1c
0003ff60  04 d0 4d e2                                      sub sp, sp, #4
0003ff64  06 8b 2d ed                                      vpush {d8, d9, d10}
0003ff68  70 d0 4d e2                                      sub sp, sp, #0x70
0003ff6c  00 40 a0 e1                                      mov r4, r0
0003ff70  f8 05 9f e5                                      ldr r0, [pc, #0x5f8]
0003ff74  00 00 9f e7                                      ldr r0, [pc, r0]
0003ff78  00 00 90 e5                                      ldr r0, [r0]
0003ff7c  3c 00 0b e5                                      str r0, [fp, #-0x3c]
0003ff80  00 00 94 e5                                      ldr r0, [r4]
0003ff84  08 10 90 e5                                      ldr r1, [r0, #8]
0003ff88  34 10 8d e5                                      str r1, [sp, #0x34]
0003ff8c  18 10 90 e5                                      ldr r1, [r0, #0x18]
0003ff90  1c 10 8d e5                                      str r1, [sp, #0x1c]
0003ff94  01 00 51 e3                                      cmp r1, #1
0003ff98  4e 01 00 ba                                      blt #0x404d8
0003ff9c  34 10 9d e5                                      ldr r1, [sp, #0x34]
0003ffa0  00 aa b6 ee                                      vmov.f32 s20, #5.000000e-01
0003ffa4  90 80 84 e2                                      add r8, r4, #0x90
0003ffa8  ce 9a 9f ed                                      vldr s18, [pc, #0x338]
0003ffac  10 1a 00 ee                                      vmov s0, r1
0003ffb0  9c 10 84 e2                                      add r1, r4, #0x9c
0003ffb4  40 8a b8 ee                                      vcvt.f32.u32 s16, s0
0003ffb8  24 10 8d e5                                      str r1, [sp, #0x24]
0003ffbc  b8 10 84 e2                                      add r1, r4, #0xb8
0003ffc0  40 10 8d e5                                      str r1, [sp, #0x40]
0003ffc4  a8 15 9f e5                                      ldr r1, [pc, #0x5a8]
0003ffc8  30 40 8d e5                                      str r4, [sp, #0x30]
0003ffcc  01 90 8f e0                                      add sb, pc, r1
0003ffd0  00 10 a0 e3                                      mov r1, #0
0003ffd4  00 10 8d e5                                      str r1, [sp]
0003ffd8  2c 80 8d e5                                      str r8, [sp, #0x2c]
0003ffdc  08 00 00 ea                                      b #0x40004
0003ffe0  00 00 9d e5                                      ldr r0, [sp]
0003ffe4  00 20 a0 e1                                      mov r2, r0
0003ffe8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0003ffec  01 20 82 e2                                      add r2, r2, #1
0003fff0  00 00 52 e1                                      cmp r2, r0
0003fff4  02 10 a0 e1                                      mov r1, r2
0003fff8  00 10 8d e5                                      str r1, [sp]
0003fffc  35 01 00 aa                                      bge #0x404d8
00040000  00 00 94 e5                                      ldr r0, [r4]
00040004  14 10 90 e5                                      ldr r1, [r0, #0x14]
00040008  00 30 9d e5                                      ldr r3, [sp]
0004000c  20 20 94 e5                                      ldr r2, [r4, #0x20]
00040010  03 31 91 e7                                      ldr r3, [r1, r3, lsl #2]
00040014  04 30 8d e5                                      str r3, [sp, #4]
00040018  03 20 82 e0                                      add r2, r2, r3
0004001c  18 20 8d e5                                      str r2, [sp, #0x18]
00040020  00 00 52 e3                                      cmp r2, #0
00040024  ed ff ff ba                                      blt #0x3ffe0
00040028  18 30 9d e5                                      ldr r3, [sp, #0x18]
0004002c  08 20 94 e5                                      ldr r2, [r4, #8]
00040030  02 00 53 e1                                      cmp r3, r2
00040034  03 20 a0 e1                                      mov r2, r3
00040038  26 01 00 ca                                      bgt #0x404d8
0004003c  ff 00 52 e3                                      cmp r2, #0xff
00040040  02 30 a0 e1                                      mov r3, r2
00040044  ff 20 a0 e3                                      mov r2, #0xff
00040048  a3 3f 22 80                                      eorhi r3, r2, r3, lsr #31
0004004c  00 20 a0 e3                                      mov r2, #0
00040050  10 30 8d e5                                      str r3, [sp, #0x10]
00040054  0c 20 8d e5                                      str r2, [sp, #0xc]
00040058  09 00 00 ea                                      b #0x40084
0004005c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00040060  00 20 a0 e1                                      mov r2, r0
00040064  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00040068  01 20 82 e2                                      add r2, r2, #1
0004006c  00 00 52 e1                                      cmp r2, r0
00040070  02 10 a0 e1                                      mov r1, r2
00040074  0c 10 8d e5                                      str r1, [sp, #0xc]
00040078  d8 ff ff aa                                      bge #0x3ffe0
0004007c  00 00 94 e5                                      ldr r0, [r4]
00040080  14 10 90 e5                                      ldr r1, [r0, #0x14]
00040084  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00040088  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0004008c  02 21 91 e7                                      ldr r2, [r1, r2, lsl #2]
00040090  02 30 83 e0                                      add r3, r3, r2
00040094  28 30 8d e5                                      str r3, [sp, #0x28]
00040098  00 00 53 e3                                      cmp r3, #0
0004009c  ee ff ff ba                                      blt #0x4005c
000400a0  08 30 94 e5                                      ldr r3, [r4, #8]
000400a4  28 70 9d e5                                      ldr r7, [sp, #0x28]
000400a8  03 00 57 e1                                      cmp r7, r3
000400ac  cb ff ff ca                                      bgt #0x3ffe0
000400b0  04 30 9d e5                                      ldr r3, [sp, #4]
000400b4  ff 00 57 e3                                      cmp r7, #0xff
000400b8  03 20 82 e1                                      orr r2, r2, r3
000400bc  08 20 8d e5                                      str r2, [sp, #8]
000400c0  ff 20 a0 e3                                      mov r2, #0xff
000400c4  a7 7f 22 80                                      eorhi r7, r2, r7, lsr #31
000400c8  00 20 a0 e3                                      mov r2, #0
000400cc  14 70 8d e5                                      str r7, [sp, #0x14]
000400d0  06 00 00 ea                                      b #0x400f0
000400d4  20 20 9d e5                                      ldr r2, [sp, #0x20]
000400d8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
000400dc  01 20 82 e2                                      add r2, r2, #1
000400e0  00 00 52 e1                                      cmp r2, r0
000400e4  dc ff ff aa                                      bge #0x4005c
000400e8  00 00 94 e5                                      ldr r0, [r4]
000400ec  14 10 90 e5                                      ldr r1, [r0, #0x14]
000400f0  02 61 91 e7                                      ldr r6, [r1, r2, lsl #2]
000400f4  18 10 94 e5                                      ldr r1, [r4, #0x18]
000400f8  06 50 81 e0                                      add r5, r1, r6
000400fc  00 00 55 e3                                      cmp r5, #0
00040100  f4 ff ff ba                                      blt #0x400d8
00040104  08 10 94 e5                                      ldr r1, [r4, #8]
00040108  01 00 55 e1                                      cmp r5, r1
0004010c  d2 ff ff ca                                      bgt #0x4005c
00040110  20 20 8d e5                                      str r2, [sp, #0x20]
00040114  ff 00 55 e3                                      cmp r5, #0xff
00040118  14 20 9d e5                                      ldr r2, [sp, #0x14]
0004011c  10 10 d0 e5                                      ldrb r1, [r0, #0x10]
00040120  47 20 4b e5                                      strb r2, [fp, #-0x47]
00040124  05 20 a0 e1                                      mov r2, r5
00040128  a2 2f e0 81                                      mvnhi r2, r2, lsr #31
0004012c  48 20 4b e5                                      strb r2, [fp, #-0x48]
00040130  10 20 9d e5                                      ldr r2, [sp, #0x10]
00040134  46 20 4b e5                                      strb r2, [fp, #-0x46]
00040138  ff 20 a0 e3                                      mov r2, #0xff
0004013c  45 20 4b e5                                      strb r2, [fp, #-0x45]
00040140  00 20 a0 e3                                      mov r2, #0
00040144  44 20 0b e5                                      str r2, [fp, #-0x44]
00040148  40 10 4b e5                                      strb r1, [fp, #-0x40]
0004014c  00 00 90 e5                                      ldr r0, [r0]
00040150  02 00 50 e3                                      cmp r0, #2
00040154  07 00 00 1a                                      bne #0x40178
00040158  40 20 9d e5                                      ldr r2, [sp, #0x40]
0004015c  48 10 4b e2                                      sub r1, fp, #0x48
00040160  04 00 a0 e1                                      mov r0, r4
00040164  08 30 a0 e1                                      mov r3, r8
00040168  ac c8 ff eb                                      bl #0x32420
0004016c  00 00 50 e3                                      cmp r0, #0
00040170  d7 ff ff 0a                                      beq #0x400d4
00040174  06 00 00 ea                                      b #0x40194
00040178  40 20 9d e5                                      ldr r2, [sp, #0x40]
0004017c  48 10 4b e2                                      sub r1, fp, #0x48
00040180  04 00 a0 e1                                      mov r0, r4
00040184  08 30 a0 e1                                      mov r3, r8
00040188  a7 c8 ff eb                                      bl #0x3242c
0004018c  01 00 50 e3                                      cmp r0, #1
00040190  cf ff ff 1a                                      bne #0x400d4
00040194  00 00 94 e5                                      ldr r0, [r4]
00040198  00 00 90 e5                                      ldr r0, [r0]
0004019c  00 00 50 e3                                      cmp r0, #0
000401a0  04 00 00 0a                                      beq #0x401b8
000401a4  08 00 9d e5                                      ldr r0, [sp, #8]
000401a8  06 00 90 e1                                      orrs r0, r0, r6
000401ac  02 00 a0 e3                                      mov r0, #2
000401b0  04 00 00 03                                      movweq r0, #4
000401b4  00 00 00 ea                                      b #0x401bc
000401b8  02 00 a0 e3                                      mov r0, #2
000401bc  38 00 8d e5                                      str r0, [sp, #0x38]
000401c0  00 00 a0 e3                                      mov r0, #0
000401c4  4c 00 8d e5                                      str r0, [sp, #0x4c]
000401c8  3c 50 8d e5                                      str r5, [sp, #0x3c]
000401cc  98 00 d4 e5                                      ldrb r0, [r4, #0x98]
000401d0  90 10 d4 e5                                      ldrb r1, [r4, #0x90]
000401d4  94 30 94 e5                                      ldr r3, [r4, #0x94]
000401d8  00 00 50 e3                                      cmp r0, #0
000401dc  50 10 8d e5                                      str r1, [sp, #0x50]
000401e0  07 00 00 0a                                      beq #0x40204
000401e4  02 20 d8 e5                                      ldrb r2, [r8, #2]
000401e8  01 72 81 e1                                      orr r7, r1, r1, lsl #4
000401ec  01 60 d8 e5                                      ldrb r6, [r8, #1]
000401f0  48 60 8d e5                                      str r6, [sp, #0x48]
000401f4  02 02 a0 e1                                      lsl r0, r2, #4
000401f8  44 20 8d e5                                      str r2, [sp, #0x44]
000401fc  06 62 86 e1                                      orr r6, r6, r6, lsl #4
00040200  09 00 00 ea                                      b #0x4022c
00040204  01 20 d8 e5                                      ldrb r2, [r8, #1]
00040208  21 01 a0 e1                                      lsr r0, r1, #2
0004020c  02 40 d8 e5                                      ldrb r4, [r8, #2]
00040210  81 71 80 e1                                      orr r7, r0, r1, lsl #3
00040214  48 20 8d e5                                      str r2, [sp, #0x48]
00040218  22 01 a0 e1                                      lsr r0, r2, #2
0004021c  82 61 80 e1                                      orr r6, r0, r2, lsl #3
00040220  84 21 a0 e1                                      lsl r2, r4, #3
00040224  24 01 a0 e1                                      lsr r0, r4, #2
00040228  44 40 8d e5                                      str r4, [sp, #0x44]
0004022c  01 0c 57 e3                                      cmp r7, #0x100
00040230  02 00 80 e1                                      orr r0, r0, r2
00040234  c7 7f e0 21                                      mvnhs r7, r7, asr #31
00040238  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0004023c  77 70 ef 26                                      uxtbhs r7, r7
00040240  01 0c 56 e3                                      cmp r6, #0x100
00040244  c6 2f e0 21                                      mvnhs r2, r6, asr #31
00040248  72 60 ef 26                                      uxtbhs r6, r2
0004024c  01 0c 50 e3                                      cmp r0, #0x100
00040250  c0 0f e0 21                                      mvnhs r0, r0, asr #31
00040254  70 00 ef 26                                      uxtbhs r0, r0
00040258  00 00 5c e3                                      cmp ip, #0
0004025c  22 00 00 0a                                      beq #0x402ec
00040260  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00040264  76 a0 ef e6                                      uxtb sl, r6
00040268  77 80 ef e6                                      uxtb r8, r7
0004026c  70 00 ef e6                                      uxtb r0, r0
00040270  00 20 a0 e3                                      mov r2, #0
00040274  00 70 a0 e3                                      mov r7, #0
00040278  00 60 a0 e3                                      mov r6, #0
0004027c  01 10 de e4                                      ldrb r1, [lr], #1
00040280  03 52 89 e0                                      add r5, sb, r3, lsl #4
00040284  ff 40 a0 e3                                      mov r4, #0xff
00040288  00 60 46 e0                                      sub r6, r6, r0
0004028c  0a 70 47 e0                                      sub r7, r7, sl
00040290  08 20 42 e0                                      sub r2, r2, r8
00040294  01 11 95 e7                                      ldr r1, [r5, r1, lsl #2]
00040298  00 50 81 e0                                      add r5, r1, r0
0004029c  ff 00 55 e3                                      cmp r5, #0xff
000402a0  05 40 a0 b1                                      movlt r4, r5
000402a4  00 00 55 e3                                      cmp r5, #0
000402a8  04 60 86 c0                                      addgt r6, r6, r4
000402ac  0a 40 81 e0                                      add r4, r1, sl
000402b0  ff 00 54 e3                                      cmp r4, #0xff
000402b4  ff 50 a0 e3                                      mov r5, #0xff
000402b8  04 50 a0 b1                                      movlt r5, r4
000402bc  00 00 54 e3                                      cmp r4, #0
000402c0  08 10 81 e0                                      add r1, r1, r8
000402c4  05 70 87 c0                                      addgt r7, r7, r5
000402c8  ff 00 51 e3                                      cmp r1, #0xff
000402cc  ff 40 a0 e3                                      mov r4, #0xff
000402d0  01 40 a0 b1                                      movlt r4, r1
000402d4  00 00 51 e3                                      cmp r1, #0
000402d8  04 20 82 c0                                      addgt r2, r2, r4
000402dc  01 c0 5c e2                                      subs ip, ip, #1
000402e0  e5 ff ff 1a                                      bne #0x4027c
000402e4  03 00 00 ea                                      b #0x402f8
000402e8  00 00 7f 43                                      cmnmi pc, #0
000402ec  00 60 a0 e3                                      mov r6, #0
000402f0  00 70 a0 e3                                      mov r7, #0
000402f4  00 20 a0 e3                                      mov r2, #0
000402f8  30 40 9d e5                                      ldr r4, [sp, #0x30]
000402fc  06 00 87 e1                                      orr r0, r7, r6
00040300  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00040304  02 00 90 e1                                      orrs r0, r0, r2
00040308  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
0004030c  70 ff ff 0a                                      beq #0x400d4
00040310  10 2a 00 ee                                      vmov s0, r2
00040314  10 6a 01 ee                                      vmov s2, r6
00040318  c0 0a b8 ee                                      vcvt.f32.s32 s0, s0
0004031c  c1 1a b8 ee                                      vcvt.f32.s32 s2, s2
00040320  10 7a 02 ee                                      vmov s4, r7
00040324  c2 2a b8 ee                                      vcvt.f32.s32 s4, s4
00040328  08 70 94 e5                                      ldr r7, [r4, #8]
0004032c  03 3a 94 ed                                      vldr s6, [r4, #0xc]
00040330  05 5a 94 ed                                      vldr s10, [r4, #0x14]
00040334  08 0a 80 ee                                      vdiv.f32 s0, s0, s16
00040338  08 1a 81 ee                                      vdiv.f32 s2, s2, s16
0004033c  10 7a 06 ee                                      vmov s12, r7
00040340  04 4a 94 ed                                      vldr s8, [r4, #0x10]
00040344  40 0a 33 ee                                      vsub.f32 s0, s6, s0
00040348  c6 6a b8 ee                                      vcvt.f32.s32 s12, s12
0004034c  41 1a 35 ee                                      vsub.f32 s2, s10, s2
00040350  08 2a 82 ee                                      vdiv.f32 s4, s4, s16
00040354  06 0a 20 ee                                      vmul.f32 s0, s0, s12
00040358  06 1a 21 ee                                      vmul.f32 s2, s2, s12
0004035c  42 2a 34 ee                                      vsub.f32 s4, s8, s4
00040360  09 0a 80 ee                                      vdiv.f32 s0, s0, s18
00040364  09 1a 81 ee                                      vdiv.f32 s2, s2, s18
00040368  06 2a 22 ee                                      vmul.f32 s4, s4, s12
0004036c  0a 0a 30 ee                                      vadd.f32 s0, s0, s20
00040370  0a 1a 31 ee                                      vadd.f32 s2, s2, s20
00040374  09 2a 82 ee                                      vdiv.f32 s4, s4, s18
00040378  c0 0a bc ee                                      vcvt.u32.f32 s0, s0
0004037c  c1 1a bc ee                                      vcvt.u32.f32 s2, s2
00040380  0a 2a 32 ee                                      vadd.f32 s4, s4, s20
00040384  10 0a 11 ee                                      vmov r0, s2
00040388  c2 2a bc ee                                      vcvt.u32.f32 s4, s4
0004038c  00 00 57 e1                                      cmp r7, r0
00040390  00 30 a0 e1                                      mov r3, r0
00040394  07 30 a0 b1                                      movlt r3, r7
00040398  00 00 50 e3                                      cmp r0, #0
0004039c  10 0a 12 ee                                      vmov r0, s4
000403a0  00 30 00 b3                                      movwlt r3, #0
000403a4  00 00 57 e1                                      cmp r7, r0
000403a8  00 60 a0 e1                                      mov r6, r0
000403ac  07 60 a0 b1                                      movlt r6, r7
000403b0  00 00 50 e3                                      cmp r0, #0
000403b4  10 0a 10 ee                                      vmov r0, s0
000403b8  00 60 00 b3                                      movwlt r6, #0
000403bc  00 00 57 e1                                      cmp r7, r0
000403c0  00 70 a0 a1                                      movge r7, r0
000403c4  00 00 50 e3                                      cmp r0, #0
000403c8  00 70 00 b3                                      movwlt r7, #0
000403cc  07 00 55 e1                                      cmp r5, r7
000403d0  28 00 9d 05                                      ldreq r0, [sp, #0x28]
000403d4  06 00 50 01                                      cmpeq r0, r6
000403d8  02 00 00 1a                                      bne #0x403e8
000403dc  18 00 9d e5                                      ldr r0, [sp, #0x18]
000403e0  03 00 50 e1                                      cmp r0, r3
000403e4  3a ff ff 0a                                      beq #0x400d4
000403e8  50 00 9d e5                                      ldr r0, [sp, #0x50]
000403ec  00 00 57 e1                                      cmp r7, r0
000403f0  48 00 9d 05                                      ldreq r0, [sp, #0x48]
000403f4  00 00 56 01                                      cmpeq r6, r0
000403f8  02 00 00 1a                                      bne #0x40408
000403fc  44 00 9d e5                                      ldr r0, [sp, #0x44]
00040400  00 00 53 e1                                      cmp r3, r0
00040404  32 ff ff 0a                                      beq #0x400d4
00040408  18 00 94 e5                                      ldr r0, [r4, #0x18]
0004040c  07 00 50 e1                                      cmp r0, r7
00040410  1c 00 94 05                                      ldreq r0, [r4, #0x1c]
00040414  06 00 50 01                                      cmpeq r0, r6
00040418  02 00 00 1a                                      bne #0x40428
0004041c  20 00 94 e5                                      ldr r0, [r4, #0x20]
00040420  03 00 50 e1                                      cmp r0, r3
00040424  2a ff ff 0a                                      beq #0x400d4
00040428  01 0c 57 e3                                      cmp r7, #0x100
0004042c  00 00 94 e5                                      ldr r0, [r4]
00040430  c7 2f e0 21                                      mvnhs r2, r7, asr #31
00040434  72 70 ef 26                                      uxtbhs r7, r2
00040438  01 0c 56 e3                                      cmp r6, #0x100
0004043c  c6 2f e0 21                                      mvnhs r2, r6, asr #31
00040440  10 10 d0 e5                                      ldrb r1, [r0, #0x10]
00040444  72 60 ef 26                                      uxtbhs r6, r2
00040448  01 0c 53 e3                                      cmp r3, #0x100
0004044c  c3 2f e0 21                                      mvnhs r2, r3, asr #31
00040450  54 70 cd e5                                      strb r7, [sp, #0x54]
00040454  72 30 ef 26                                      uxtbhs r3, r2
00040458  ff 20 a0 e3                                      mov r2, #0xff
0004045c  55 60 cd e5                                      strb r6, [sp, #0x55]
00040460  57 20 cd e5                                      strb r2, [sp, #0x57]
00040464  00 20 a0 e3                                      mov r2, #0
00040468  56 30 cd e5                                      strb r3, [sp, #0x56]
0004046c  58 20 8d e5                                      str r2, [sp, #0x58]
00040470  5c 10 cd e5                                      strb r1, [sp, #0x5c]
00040474  00 00 90 e5                                      ldr r0, [r0]
00040478  02 00 50 e3                                      cmp r0, #2
0004047c  07 00 00 1a                                      bne #0x404a0
00040480  40 20 9d e5                                      ldr r2, [sp, #0x40]
00040484  54 10 8d e2                                      add r1, sp, #0x54
00040488  04 00 a0 e1                                      mov r0, r4
0004048c  08 30 a0 e1                                      mov r3, r8
00040490  e2 c7 ff eb                                      bl #0x32420
00040494  00 00 50 e3                                      cmp r0, #0
00040498  07 00 00 1a                                      bne #0x404bc
0004049c  0c ff ff ea                                      b #0x400d4
000404a0  40 20 9d e5                                      ldr r2, [sp, #0x40]
000404a4  54 10 8d e2                                      add r1, sp, #0x54
000404a8  04 00 a0 e1                                      mov r0, r4
000404ac  08 30 a0 e1                                      mov r3, r8
000404b0  dd c7 ff eb                                      bl #0x3242c
000404b4  00 00 50 e3                                      cmp r0, #0
000404b8  05 ff ff 0a                                      beq #0x400d4
000404bc  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
000404c0  38 00 9d e5                                      ldr r0, [sp, #0x38]
000404c4  01 10 81 e2                                      add r1, r1, #1
000404c8  4c 10 8d e5                                      str r1, [sp, #0x4c]
000404cc  00 00 51 e1                                      cmp r1, r0
000404d0  3d ff ff 3a                                      blo #0x401cc
000404d4  fe fe ff ea                                      b #0x400d4
000404d8  b0 00 d4 e5                                      ldrb r0, [r4, #0xb0]
000404dc  00 00 50 e3                                      cmp r0, #0
000404e0  12 00 00 0a                                      beq #0x40530
000404e4  04 10 94 e5                                      ldr r1, [r4, #4]
000404e8  a8 00 94 e5                                      ldr r0, [r4, #0xa8]
000404ec  ac 30 94 e5                                      ldr r3, [r4, #0xac]
000404f0  09 00 81 e8                                      stm r1, {r0, r3}
000404f4  90 00 94 e5                                      ldr r0, [r4, #0x90]
000404f8  08 00 81 e5                                      str r0, [r1, #8]
000404fc  98 00 d4 e5                                      ldrb r0, [r4, #0x98]
00040500  18 00 c1 e5                                      strb r0, [r1, #0x18]
00040504  94 20 94 e5                                      ldr r2, [r4, #0x94]
00040508  14 00 91 e5                                      ldr r0, [r1, #0x14]
0004050c  0c 20 81 e5                                      str r2, [r1, #0xc]
00040510  9c 10 84 e2                                      add r1, r4, #0x9c
00040514  34 50 9d e5                                      ldr r5, [sp, #0x34]
00040518  05 20 a0 e1                                      mov r2, r5
0004051c  ae c6 ff eb                                      bl #0x31fdc
00040520  04 00 94 e5                                      ldr r0, [r4, #4]
00040524  01 10 a0 e3                                      mov r1, #1
00040528  10 50 80 e5                                      str r5, [r0, #0x10]
0004052c  04 00 00 ea                                      b #0x40544
00040530  04 00 94 e5                                      ldr r0, [r4, #4]
00040534  00 20 e0 e3                                      mvn r2, #0
00040538  00 10 a0 e3                                      mov r1, #0
0004053c  00 20 80 e5                                      str r2, [r0]
00040540  04 10 80 e5                                      str r1, [r0, #4]
00040544  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
00040548  3c 20 1b e5                                      ldr r2, [fp, #-0x3c]
0004054c  00 00 9f e7                                      ldr r0, [pc, r0]
00040550  00 00 90 e5                                      ldr r0, [r0]
00040554  02 00 50 e0                                      subs r0, r0, r2
00040558  01 00 a0 01                                      moveq r0, r1
0004055c  38 d0 4b 02                                      subeq sp, fp, #0x38
00040560  06 8b bd 0c                                      vpopeq {d8, d9, d10}
00040564  04 d0 8d 02                                      addeq sp, sp, #4
00040568  f0 8f bd 08                                      popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0004056c  bb c6 ff eb                                      bl #0x32060
00040570  3c c5 09 00                                      andeq ip, sb, ip, lsr r5
00040574  40 3b 08 00                                      andeq r3, r8, r0, asr #22
00040578  64 bf 09 00                                      andeq fp, sb, r4, ror #30

; FUNCTION 0x0004057c, declared_size=1216, range_size=1216, mode=arm
; class-group: rg_etc1::etc1_optimizer
; alias: _ZN7rg_etc114etc1_optimizer17evaluate_solutionERKNS_25etc1_solution_coordinatesERNS0_18potential_solutionEPS4_
; demangled: rg_etc1::etc1_optimizer::evaluate_solution(rg_etc1::etc1_solution_coordinates const&, rg_etc1::etc1_optimizer::potential_solution&, rg_etc1::etc1_optimizer::potential_solution*)
; decoder-mode: arm
0004057c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00040580  1c b0 8d e2                                      add fp, sp, #0x1c
00040584  68 d0 4d e2                                      sub sp, sp, #0x68
00040588  00 c0 a0 e3                                      mov ip, #0
0004058c  04 30 8d e5                                      str r3, [sp, #4]
00040590  0c 20 8d e5                                      str r2, [sp, #0xc]
00040594  20 c0 c2 e5                                      strb ip, [r2, #0x20]
00040598  2c 00 8d e5                                      str r0, [sp, #0x2c]
0004059c  00 00 90 e5                                      ldr r0, [r0]
000405a0  20 20 d0 e5                                      ldrb r2, [r0, #0x20]
000405a4  00 00 52 e3                                      cmp r2, #0
000405a8  18 00 00 0a                                      beq #0x40610
000405ac  1d 40 d0 e5                                      ldrb r4, [r0, #0x1d]
000405b0  01 50 a0 e1                                      mov r5, r1
000405b4  01 70 d1 e5                                      ldrb r7, [r1, #1]
000405b8  1c 20 d0 e5                                      ldrb r2, [r0, #0x1c]
000405bc  1e 30 d0 e5                                      ldrb r3, [r0, #0x1e]
000405c0  04 70 47 e0                                      sub r7, r7, r4
000405c4  00 00 d1 e5                                      ldrb r0, [r1]
000405c8  02 60 d1 e5                                      ldrb r6, [r1, #2]
000405cc  07 10 a0 e1                                      mov r1, r7
000405d0  02 20 40 e0                                      sub r2, r0, r2
000405d4  07 00 52 e1                                      cmp r2, r7
000405d8  03 30 46 e0                                      sub r3, r6, r3
000405dc  02 10 a0 b1                                      movlt r1, r2
000405e0  03 00 51 e1                                      cmp r1, r3
000405e4  03 10 a0 a1                                      movge r1, r3
000405e8  04 00 71 e3                                      cmn r1, #4
000405ec  0b 01 00 ba                                      blt #0x40a20
000405f0  07 00 52 e1                                      cmp r2, r7
000405f4  02 70 a0 c1                                      movgt r7, r2
000405f8  03 00 57 e1                                      cmp r7, r3
000405fc  03 70 a0 d1                                      movle r7, r3
00040600  03 00 57 e3                                      cmp r7, #3
00040604  05 01 00 ca                                      bgt #0x40a20
00040608  05 20 a0 e1                                      mov r2, r5
0004060c  01 00 00 ea                                      b #0x40618
00040610  00 00 d1 e5                                      ldrb r0, [r1]
00040614  01 20 a0 e1                                      mov r2, r1
00040618  08 10 d2 e5                                      ldrb r1, [r2, #8]
0004061c  00 20 8d e5                                      str r2, [sp]
00040620  00 00 51 e3                                      cmp r1, #0
00040624  05 00 00 0a                                      beq #0x40640
00040628  01 10 d2 e5                                      ldrb r1, [r2, #1]
0004062c  00 02 80 e1                                      orr r0, r0, r0, lsl #4
00040630  02 20 d2 e5                                      ldrb r2, [r2, #2]
00040634  01 12 81 e1                                      orr r1, r1, r1, lsl #4
00040638  02 32 a0 e1                                      lsl r3, r2, #4
0004063c  07 00 00 ea                                      b #0x40660
00040640  01 10 d2 e5                                      ldrb r1, [r2, #1]
00040644  02 30 d2 e5                                      ldrb r3, [r2, #2]
00040648  20 21 a0 e1                                      lsr r2, r0, #2
0004064c  80 01 82 e1                                      orr r0, r2, r0, lsl #3
00040650  21 21 a0 e1                                      lsr r2, r1, #2
00040654  81 11 82 e1                                      orr r1, r2, r1, lsl #3
00040658  83 21 a0 e1                                      lsl r2, r3, #3
0004065c  23 31 a0 e1                                      lsr r3, r3, #2
00040660  01 0c 50 e3                                      cmp r0, #0x100
00040664  0c 70 9d e5                                      ldr r7, [sp, #0xc]
00040668  c0 0f e0 21                                      mvnhs r0, r0, asr #31
0004066c  02 20 83 e1                                      orr r2, r3, r2
00040670  70 00 ef 26                                      uxtbhs r0, r0
00040674  00 30 e0 e3                                      mvn r3, #0
00040678  70 60 ef e6                                      uxtb r6, r0
0004067c  a8 03 9f e5                                      ldr r0, [pc, #0x3a8]
00040680  18 30 a7 e5                                      str r3, [r7, #0x18]!
00040684  01 0c 51 e3                                      cmp r1, #0x100
00040688  00 00 8f e0                                      add r0, pc, r0
0004068c  c1 1f e0 21                                      mvnhs r1, r1, asr #31
00040690  04 30 87 e5                                      str r3, [r7, #4]
00040694  0c 30 47 e2                                      sub r3, r7, #0xc
00040698  1c 00 8d e5                                      str r0, [sp, #0x1c]
0004069c  71 10 ef 26                                      uxtbhs r1, r1
000406a0  88 03 9f e5                                      ldr r0, [pc, #0x388]
000406a4  01 0c 52 e3                                      cmp r2, #0x100
000406a8  08 30 8d e5                                      str r3, [sp, #8]
000406ac  c2 2f e0 21                                      mvnhs r2, r2, asr #31
000406b0  00 00 8f e0                                      add r0, pc, r0
000406b4  18 00 8d e5                                      str r0, [sp, #0x18]
000406b8  74 03 9f e5                                      ldr r0, [pc, #0x374]
000406bc  72 20 ef 26                                      uxtbhs r2, r2
000406c0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
000406c4  72 40 ef e6                                      uxtb r4, r2
000406c8  00 00 8f e0                                      add r0, pc, r0
000406cc  14 00 8d e5                                      str r0, [sp, #0x14]
000406d0  60 03 9f e5                                      ldr r0, [pc, #0x360]
000406d4  e0 30 83 e2                                      add r3, r3, #0xe0
000406d8  34 30 8d e5                                      str r3, [sp, #0x34]
000406dc  71 30 ef e6                                      uxtb r3, r1
000406e0  00 50 a0 e3                                      mov r5, #0
000406e4  00 00 8f e0                                      add r0, pc, r0
000406e8  38 70 8d e5                                      str r7, [sp, #0x38]
000406ec  10 00 8d e5                                      str r0, [sp, #0x10]
000406f0  28 40 8d e5                                      str r4, [sp, #0x28]
000406f4  20 60 8d e5                                      str r6, [sp, #0x20]
000406f8  24 30 8d e5                                      str r3, [sp, #0x24]
000406fc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00040700  30 50 8d e5                                      str r5, [sp, #0x30]
00040704  05 02 90 e7                                      ldr r0, [r0, r5, lsl #4]
00040708  06 80 80 e0                                      add r8, r0, r6
0004070c  03 90 80 e0                                      add sb, r0, r3
00040710  01 0c 58 e3                                      cmp r8, #0x100
00040714  04 a0 80 e0                                      add sl, r0, r4
00040718  c8 1f e0 21                                      mvnhs r1, r8, asr #31
0004071c  71 80 ef 26                                      uxtbhs r8, r1
00040720  01 0c 59 e3                                      cmp sb, #0x100
00040724  c9 0f e0 21                                      mvnhs r0, sb, asr #31
00040728  70 90 ef 26                                      uxtbhs sb, r0
0004072c  01 0c 5a e3                                      cmp sl, #0x100
00040730  ca 0f e0 21                                      mvnhs r0, sl, asr #31
00040734  70 a0 ef 26                                      uxtbhs sl, r0
00040738  18 00 9d e5                                      ldr r0, [sp, #0x18]
0004073c  05 02 80 e0                                      add r0, r0, r5, lsl #4
00040740  04 00 90 e5                                      ldr r0, [r0, #4]
00040744  06 10 80 e0                                      add r1, r0, r6
00040748  03 c0 80 e0                                      add ip, r0, r3
0004074c  ff 00 51 e3                                      cmp r1, #0xff
00040750  04 e0 80 e0                                      add lr, r0, r4
00040754  c1 1f e0 81                                      mvnhi r1, r1, asr #31
00040758  71 10 ef 86                                      uxtbhi r1, r1
0004075c  01 0c 5c e3                                      cmp ip, #0x100
00040760  40 10 0b e5                                      str r1, [fp, #-0x40]
00040764  cc 1f e0 21                                      mvnhs r1, ip, asr #31
00040768  71 c0 ef 26                                      uxtbhs ip, r1
0004076c  01 0c 5e e3                                      cmp lr, #0x100
00040770  ce 0f e0 21                                      mvnhs r0, lr, asr #31
00040774  70 e0 ef 26                                      uxtbhs lr, r0
00040778  14 00 9d e5                                      ldr r0, [sp, #0x14]
0004077c  05 12 80 e0                                      add r1, r0, r5, lsl #4
00040780  08 10 91 e5                                      ldr r1, [r1, #8]
00040784  06 00 81 e0                                      add r0, r1, r6
00040788  03 70 81 e0                                      add r7, r1, r3
0004078c  01 0c 50 e3                                      cmp r0, #0x100
00040790  04 10 81 e0                                      add r1, r1, r4
00040794  c0 2f e0 21                                      mvnhs r2, r0, asr #31
00040798  72 00 ef 26                                      uxtbhs r0, r2
0004079c  01 0c 57 e3                                      cmp r7, #0x100
000407a0  c7 2f e0 21                                      mvnhs r2, r7, asr #31
000407a4  70 00 ef e6                                      uxtb r0, r0
000407a8  72 70 ef 26                                      uxtbhs r7, r2
000407ac  10 20 9d e5                                      ldr r2, [sp, #0x10]
000407b0  01 0c 51 e3                                      cmp r1, #0x100
000407b4  34 00 0b e5                                      str r0, [fp, #-0x34]
000407b8  05 22 82 e0                                      add r2, r2, r5, lsl #4
000407bc  7e 00 ef e6                                      uxtb r0, lr
000407c0  c1 1f e0 21                                      mvnhs r1, r1, asr #31
000407c4  38 00 0b e5                                      str r0, [fp, #-0x38]
000407c8  0c 50 92 e5                                      ldr r5, [r2, #0xc]
000407cc  7c 00 ef e6                                      uxtb r0, ip
000407d0  71 10 ef 26                                      uxtbhs r1, r1
000407d4  3c 00 0b e5                                      str r0, [fp, #-0x3c]
000407d8  06 20 85 e0                                      add r2, r5, r6
000407dc  40 00 1b e5                                      ldr r0, [fp, #-0x40]
000407e0  01 0c 52 e3                                      cmp r2, #0x100
000407e4  03 30 85 e0                                      add r3, r5, r3
000407e8  c2 2f e0 21                                      mvnhs r2, r2, asr #31
000407ec  04 50 85 e0                                      add r5, r5, r4
000407f0  72 20 ef 26                                      uxtbhs r2, r2
000407f4  01 0c 53 e3                                      cmp r3, #0x100
000407f8  c3 3f e0 21                                      mvnhs r3, r3, asr #31
000407fc  70 00 ef e6                                      uxtb r0, r0
00040800  73 30 ef 26                                      uxtbhs r3, r3
00040804  01 0c 55 e3                                      cmp r5, #0x100
00040808  40 00 0b e5                                      str r0, [fp, #-0x40]
0004080c  7a 00 ef e6                                      uxtb r0, sl
00040810  c5 5f e0 21                                      mvnhs r5, r5, asr #31
00040814  40 00 8d e5                                      str r0, [sp, #0x40]
00040818  79 00 ef e6                                      uxtb r0, sb
0004081c  75 50 ef 26                                      uxtbhs r5, r5
00040820  71 10 ef e6                                      uxtb r1, r1
00040824  3c 00 8d e5                                      str r0, [sp, #0x3c]
00040828  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0004082c  75 40 ef e6                                      uxtb r4, r5
00040830  73 30 ef e6                                      uxtb r3, r3
00040834  72 20 ef e6                                      uxtb r2, r2
00040838  2c 10 0b e5                                      str r1, [fp, #-0x2c]
0004083c  77 10 ef e6                                      uxtb r1, r7
00040840  24 30 0b e5                                      str r3, [fp, #-0x24]
00040844  78 e0 ef e6                                      uxtb lr, r8
00040848  28 20 0b e5                                      str r2, [fp, #-0x28]
0004084c  00 90 a0 e3                                      mov sb, #0
00040850  20 40 0b e5                                      str r4, [fp, #-0x20]
00040854  00 20 a0 e3                                      mov r2, #0
00040858  30 10 0b e5                                      str r1, [fp, #-0x30]
0004085c  00 30 a0 e3                                      mov r3, #0
00040860  00 00 90 e5                                      ldr r0, [r0]
00040864  0c 80 90 e5                                      ldr r8, [r0, #0xc]
00040868  08 00 a0 e1                                      mov r0, r8
0004086c  40 70 1b e5                                      ldr r7, [fp, #-0x40]
00040870  09 11 f0 e7                                      ldrb r1, [r0, sb, lsl #2]!
00040874  07 50 41 e0                                      sub r5, r1, r7
00040878  34 70 1b e5                                      ldr r7, [fp, #-0x34]
0004087c  01 60 d0 e5                                      ldrb r6, [r0, #1]
00040880  0e a0 41 e0                                      sub sl, r1, lr
00040884  07 40 41 e0                                      sub r4, r1, r7
00040888  28 70 1b e5                                      ldr r7, [fp, #-0x28]
0004088c  02 00 d0 e5                                      ldrb r0, [r0, #2]
00040890  07 10 41 e0                                      sub r1, r1, r7
00040894  24 70 1b e5                                      ldr r7, [fp, #-0x24]
00040898  07 c0 46 e0                                      sub ip, r6, r7
0004089c  8c 0c 67 e1                                      smulbb r7, ip, ip
000408a0  81 71 01 e1                                      smlabb r1, r1, r1, r7
000408a4  30 70 1b e5                                      ldr r7, [fp, #-0x30]
000408a8  07 70 46 e0                                      sub r7, r6, r7
000408ac  87 07 67 e1                                      smulbb r7, r7, r7
000408b0  84 74 07 e1                                      smlabb r7, r4, r4, r7
000408b4  3c 40 1b e5                                      ldr r4, [fp, #-0x3c]
000408b8  04 40 46 e0                                      sub r4, r6, r4
000408bc  84 04 64 e1                                      smulbb r4, r4, r4
000408c0  85 45 05 e1                                      smlabb r5, r5, r5, r4
000408c4  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
000408c8  04 60 46 e0                                      sub r6, r6, r4
000408cc  40 40 9d e5                                      ldr r4, [sp, #0x40]
000408d0  86 06 66 e1                                      smulbb r6, r6, r6
000408d4  04 40 40 e0                                      sub r4, r0, r4
000408d8  8a 6a 06 e1                                      smlabb r6, sl, sl, r6
000408dc  84 64 06 e1                                      smlabb r6, r4, r4, r6
000408e0  38 40 1b e5                                      ldr r4, [fp, #-0x38]
000408e4  04 40 40 e0                                      sub r4, r0, r4
000408e8  84 54 05 e1                                      smlabb r5, r4, r4, r5
000408ec  2c 40 1b e5                                      ldr r4, [fp, #-0x2c]
000408f0  04 40 40 e0                                      sub r4, r0, r4
000408f4  84 74 07 e1                                      smlabb r7, r4, r4, r7
000408f8  20 40 1b e5                                      ldr r4, [fp, #-0x20]
000408fc  06 00 55 e1                                      cmp r5, r6
00040900  04 00 40 e0                                      sub r0, r0, r4
00040904  05 60 a0 31                                      movlo r6, r5
00040908  80 10 00 e1                                      smlabb r0, r0, r0, r1
0004090c  00 10 a0 e3                                      mov r1, #0
00040910  01 10 00 33                                      movwlo r1, #1
00040914  06 00 57 e1                                      cmp r7, r6
00040918  07 60 a0 31                                      movlo r6, r7
0004091c  34 70 9d e5                                      ldr r7, [sp, #0x34]
00040920  02 10 00 33                                      movwlo r1, #2
00040924  06 00 50 e1                                      cmp r0, r6
00040928  03 10 00 33                                      movwlo r1, #3
0004092c  00 60 a0 31                                      movlo r6, r0
00040930  09 10 c7 e7                                      strb r1, [r7, sb]
00040934  06 20 92 e0                                      adds r2, r2, r6
00040938  00 30 a3 e2                                      adc r3, r3, #0
0004093c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00040940  d0 00 c0 e1                                      ldrd r0, r1, [r0]
00040944  00 70 52 e0                                      subs r7, r2, r0
00040948  01 70 d3 e0                                      sbcs r7, r3, r1
0004094c  0f 00 00 2a                                      bhs #0x40990
00040950  01 90 89 e2                                      add sb, sb, #1
00040954  08 00 59 e3                                      cmp sb, #8
00040958  c2 ff ff 3a                                      blo #0x40868
0004095c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00040960  f0 20 c0 e1                                      strd r2, r3, [r0]
00040964  0c 70 9d e5                                      ldr r7, [sp, #0xc]
00040968  30 00 9d e5                                      ldr r0, [sp, #0x30]
0004096c  04 00 87 e5                                      str r0, [r7, #4]
00040970  34 10 9d e5                                      ldr r1, [sp, #0x34]
00040974  03 00 91 e8                                      ldm r1, {r0, r1}
00040978  08 60 9d e5                                      ldr r6, [sp, #8]
0004097c  03 00 86 e8                                      stm r6, {r0, r1}
00040980  01 00 a0 e3                                      mov r0, #1
00040984  03 10 a0 e1                                      mov r1, r3
00040988  20 00 c7 e5                                      strb r0, [r7, #0x20]
0004098c  02 00 a0 e1                                      mov r0, r2
00040990  30 50 9d e5                                      ldr r5, [sp, #0x30]
00040994  28 40 9d e5                                      ldr r4, [sp, #0x28]
00040998  24 30 9d e5                                      ldr r3, [sp, #0x24]
0004099c  01 50 85 e2                                      add r5, r5, #1
000409a0  20 60 9d e5                                      ldr r6, [sp, #0x20]
000409a4  08 00 55 e3                                      cmp r5, #8
000409a8  53 ff ff 1a                                      bne #0x406fc
000409ac  00 20 9d e5                                      ldr r2, [sp]
000409b0  00 c0 a0 e3                                      mov ip, #0
000409b4  0c 70 9d e5                                      ldr r7, [sp, #0xc]
000409b8  00 20 92 e5                                      ldr r2, [r2]
000409bc  00 20 87 e5                                      str r2, [r7]
000409c0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
000409c4  00 30 93 e5                                      ldr r3, [r3]
000409c8  10 30 d3 e5                                      ldrb r3, [r3, #0x10]
000409cc  08 30 c7 e5                                      strb r3, [r7, #8]
000409d0  04 70 9d e5                                      ldr r7, [sp, #4]
000409d4  00 00 57 e3                                      cmp r7, #0
000409d8  10 00 00 0a                                      beq #0x40a20
000409dc  d8 41 c7 e1                                      ldrd r4, r5, [r7, #0x18]
000409e0  04 00 50 e0                                      subs r0, r0, r4
000409e4  05 00 d1 e0                                      sbcs r0, r1, r5
000409e8  0c 00 00 2a                                      bhs #0x40a20
000409ec  04 10 9d e5                                      ldr r1, [sp, #4]
000409f0  01 c0 a0 e3                                      mov ip, #1
000409f4  00 20 81 e5                                      str r2, [r1]
000409f8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
000409fc  04 00 90 e5                                      ldr r0, [r0, #4]
00040a00  08 30 c1 e5                                      strb r3, [r1, #8]
00040a04  04 00 81 e5                                      str r0, [r1, #4]
00040a08  0c 00 81 e2                                      add r0, r1, #0xc
00040a0c  08 50 9d e5                                      ldr r5, [sp, #8]
00040a10  ce 00 b5 e8                                      ldm r5!, {r1, r2, r3, r6, r7}
00040a14  ce 00 a0 e8                                      stm r0!, {r1, r2, r3, r6, r7}
00040a18  00 10 d5 e5                                      ldrb r1, [r5]
00040a1c  00 10 c0 e5                                      strb r1, [r0]
00040a20  0c 00 a0 e1                                      mov r0, ip
00040a24  1c d0 4b e2                                      sub sp, fp, #0x1c
00040a28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00040a2c  84 34 08 00                                      andeq r3, r8, r4, lsl #9
00040a30  5c 34 08 00                                      andeq r3, r8, ip, asr r4
00040a34  44 34 08 00                                      andeq r3, r8, r4, asr #8
00040a38  28 34 08 00                                      andeq r3, r8, r8, lsr #8

; FUNCTION 0x00040a3c, declared_size=2356, range_size=2356, mode=arm
; class-group: rg_etc1::etc1_optimizer
; alias: _ZN7rg_etc114etc1_optimizer22evaluate_solution_fastERKNS_25etc1_solution_coordinatesERNS0_18potential_solutionEPS4_
; demangled: rg_etc1::etc1_optimizer::evaluate_solution_fast(rg_etc1::etc1_solution_coordinates const&, rg_etc1::etc1_optimizer::potential_solution&, rg_etc1::etc1_optimizer::potential_solution*)
; decoder-mode: arm
00040a3c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00040a40  1c b0 8d e2                                      add fp, sp, #0x1c
00040a44  7c d0 4d e2                                      sub sp, sp, #0x7c
00040a48  00 c0 a0 e1                                      mov ip, r0
00040a4c  04 09 9f e5                                      ldr r0, [pc, #0x904]
00040a50  14 20 8d e5                                      str r2, [sp, #0x14]
00040a54  00 00 9f e7                                      ldr r0, [pc, r0]
00040a58  00 00 90 e5                                      ldr r0, [r0]
00040a5c  20 00 0b e5                                      str r0, [fp, #-0x20]
00040a60  00 00 9c e5                                      ldr r0, [ip]
00040a64  20 20 d0 e5                                      ldrb r2, [r0, #0x20]
00040a68  00 00 52 e3                                      cmp r2, #0
00040a6c  19 00 00 0a                                      beq #0x40ad8
00040a70  1d 40 d0 e5                                      ldrb r4, [r0, #0x1d]
00040a74  01 70 d1 e5                                      ldrb r7, [r1, #1]
00040a78  1c 20 d0 e5                                      ldrb r2, [r0, #0x1c]
00040a7c  1e 50 d0 e5                                      ldrb r5, [r0, #0x1e]
00040a80  04 40 47 e0                                      sub r4, r7, r4
00040a84  00 00 d1 e5                                      ldrb r0, [r1]
00040a88  02 60 d1 e5                                      ldrb r6, [r1, #2]
00040a8c  04 70 a0 e1                                      mov r7, r4
00040a90  02 20 40 e0                                      sub r2, r0, r2
00040a94  04 00 52 e1                                      cmp r2, r4
00040a98  05 60 46 e0                                      sub r6, r6, r5
00040a9c  02 70 a0 b1                                      movlt r7, r2
00040aa0  06 00 57 e1                                      cmp r7, r6
00040aa4  06 70 a0 a1                                      movge r7, r6
00040aa8  04 00 77 e3                                      cmn r7, #4
00040aac  05 00 00 ba                                      blt #0x40ac8
00040ab0  04 00 52 e1                                      cmp r2, r4
00040ab4  02 40 a0 c1                                      movgt r4, r2
00040ab8  06 00 54 e1                                      cmp r4, r6
00040abc  06 40 a0 d1                                      movle r4, r6
00040ac0  04 00 54 e3                                      cmp r4, #4
00040ac4  04 00 00 ba                                      blt #0x40adc
00040ac8  14 10 9d e5                                      ldr r1, [sp, #0x14]
00040acc  00 00 a0 e3                                      mov r0, #0
00040ad0  20 00 c1 e5                                      strb r0, [r1, #0x20]
00040ad4  17 02 00 ea                                      b #0x41338
00040ad8  00 00 d1 e5                                      ldrb r0, [r1]
00040adc  08 20 d1 e5                                      ldrb r2, [r1, #8]
00040ae0  00 00 52 e3                                      cmp r2, #0
00040ae4  05 00 00 0a                                      beq #0x40b00
00040ae8  01 20 d1 e5                                      ldrb r2, [r1, #1]
00040aec  00 52 80 e1                                      orr r5, r0, r0, lsl #4
00040af0  02 60 d1 e5                                      ldrb r6, [r1, #2]
00040af4  02 22 82 e1                                      orr r2, r2, r2, lsl #4
00040af8  06 02 a0 e1                                      lsl r0, r6, #4
00040afc  07 00 00 ea                                      b #0x40b20
00040b00  01 20 d1 e5                                      ldrb r2, [r1, #1]
00040b04  20 61 a0 e1                                      lsr r6, r0, #2
00040b08  02 70 d1 e5                                      ldrb r7, [r1, #2]
00040b0c  80 51 86 e1                                      orr r5, r6, r0, lsl #3
00040b10  22 01 a0 e1                                      lsr r0, r2, #2
00040b14  82 21 80 e1                                      orr r2, r0, r2, lsl #3
00040b18  87 61 a0 e1                                      lsl r6, r7, #3
00040b1c  27 01 a0 e1                                      lsr r0, r7, #2
00040b20  01 0c 55 e3                                      cmp r5, #0x100
00040b24  06 00 80 e1                                      orr r0, r0, r6
00040b28  c5 7f e0 21                                      mvnhs r7, r5, asr #31
00040b2c  04 10 8d e5                                      str r1, [sp, #4]
00040b30  77 50 ef 26                                      uxtbhs r5, r7
00040b34  01 0c 52 e3                                      cmp r2, #0x100
00040b38  c2 2f e0 21                                      mvnhs r2, r2, asr #31
00040b3c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00040b40  72 20 ef 26                                      uxtbhs r2, r2
00040b44  01 0c 50 e3                                      cmp r0, #0x100
00040b48  c0 0f e0 21                                      mvnhs r0, r0, asr #31
00040b4c  00 70 e0 e3                                      mvn r7, #0
00040b50  70 00 ef 26                                      uxtbhs r0, r0
00040b54  18 70 a1 e5                                      str r7, [r1, #0x18]!
00040b58  00 60 e0 e3                                      mvn r6, #0
00040b5c  70 00 ef e6                                      uxtb r0, r0
00040b60  18 10 8d e5                                      str r1, [sp, #0x18]
00040b64  72 e0 ef e6                                      uxtb lr, r2
00040b68  3c 60 8d e5                                      str r6, [sp, #0x3c]
00040b6c  75 50 ef e6                                      uxtb r5, r5
00040b70  04 70 81 e5                                      str r7, [r1, #4]
00040b74  0c 10 41 e2                                      sub r1, r1, #0xc
00040b78  48 00 0b e5                                      str r0, [fp, #-0x48]
00040b7c  30 70 4b e2                                      sub r7, fp, #0x30
00040b80  d4 07 9f e5                                      ldr r0, [pc, #0x7d4]
00040b84  07 20 a0 e3                                      mov r2, #7
00040b88  0c 10 8d e5                                      str r1, [sp, #0xc]
00040b8c  02 10 87 e3                                      orr r1, r7, #2
00040b90  00 00 8f e0                                      add r0, pc, r0
00040b94  2c 00 8d e5                                      str r0, [sp, #0x2c]
00040b98  c0 07 9f e5                                      ldr r0, [pc, #0x7c0]
00040b9c  10 10 8d e5                                      str r1, [sp, #0x10]
00040ba0  e0 10 8c e2                                      add r1, ip, #0xe0
00040ba4  00 00 8f e0                                      add r0, pc, r0
00040ba8  28 00 8d e5                                      str r0, [sp, #0x28]
00040bac  b0 07 9f e5                                      ldr r0, [pc, #0x7b0]
00040bb0  1c 10 8d e5                                      str r1, [sp, #0x1c]
00040bb4  00 00 8f e0                                      add r0, pc, r0
00040bb8  24 00 8d e5                                      str r0, [sp, #0x24]
00040bbc  a4 07 9f e5                                      ldr r0, [pc, #0x7a4]
00040bc0  30 30 8d e5                                      str r3, [sp, #0x30]
00040bc4  00 00 8f e0                                      add r0, pc, r0
00040bc8  20 00 8d e5                                      str r0, [sp, #0x20]
00040bcc  00 00 e0 e3                                      mvn r0, #0
00040bd0  34 c0 8d e5                                      str ip, [sp, #0x34]
00040bd4  38 00 8d e5                                      str r0, [sp, #0x38]
00040bd8  4c 50 8d e5                                      str r5, [sp, #0x4c]
00040bdc  48 e0 8d e5                                      str lr, [sp, #0x48]
00040be0  41 00 00 ea                                      b #0x40cec
00040be4  74 00 9c e5                                      ldr r0, [ip, #0x74]
00040be8  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
00040bec  01 30 83 e2                                      add r3, r3, #1
00040bf0  00 60 8c e0                                      add r6, ip, r0
00040bf4  e0 50 c6 e5                                      strb r5, [r6, #0xe0]
00040bf8  08 60 a0 e1                                      mov r6, r8
00040bfc  00 71 f6 e7                                      ldrb r7, [r6, r0, lsl #2]!
00040c00  02 00 54 e5                                      ldrb r0, [r4, #-2]
00040c04  44 00 8d e5                                      str r0, [sp, #0x44]
00040c08  00 00 d4 e5                                      ldrb r0, [r4]
00040c0c  40 00 8d e5                                      str r0, [sp, #0x40]
00040c10  01 e0 54 e5                                      ldrb lr, [r4, #-1]
00040c14  01 00 d6 e5                                      ldrb r0, [r6, #1]
00040c18  44 40 9d e5                                      ldr r4, [sp, #0x44]
00040c1c  00 00 4e e0                                      sub r0, lr, r0
00040c20  02 60 d6 e5                                      ldrb r6, [r6, #2]
00040c24  07 40 44 e0                                      sub r4, r4, r7
00040c28  40 70 9d e5                                      ldr r7, [sp, #0x40]
00040c2c  80 00 60 e1                                      smulbb r0, r0, r0
00040c30  06 60 47 e0                                      sub r6, r7, r6
00040c34  84 04 00 e1                                      smlabb r0, r4, r4, r0
00040c38  86 06 00 e1                                      smlabb r0, r6, r6, r0
00040c3c  00 20 92 e0                                      adds r2, r2, r0
00040c40  00 10 a1 e2                                      adc r1, r1, #0
00040c44  07 00 53 e3                                      cmp r3, #7
00040c48  7a 01 00 8a                                      bhi #0x41238
00040c4c  78 00 9c e5                                      ldr r0, [ip, #0x78]
00040c50  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
00040c54  10 60 9d e5                                      ldr r6, [sp, #0x10]
00040c58  3c 70 4b e2                                      sub r7, fp, #0x3c
00040c5c  44 e0 1b e5                                      ldr lr, [fp, #-0x44]
00040c60  80 00 a0 e1                                      lsl r0, r0, #1
00040c64  05 41 86 e0                                      add r4, r6, r5, lsl #2
00040c68  05 61 97 e7                                      ldr r6, [r7, r5, lsl #2]
00040c6c  06 00 50 e1                                      cmp r0, r6
00040c70  db ff ff 3a                                      blo #0x40be4
00040c74  01 50 85 e2                                      add r5, r5, #1
00040c78  04 40 84 e2                                      add r4, r4, #4
00040c7c  02 00 55 e3                                      cmp r5, #2
00040c80  f8 ff ff 9a                                      bls #0x40c68
00040c84  07 00 53 e3                                      cmp r3, #7
00040c88  6a 01 00 8a                                      bhi #0x41238
00040c8c  18 40 9d e5                                      ldr r4, [sp, #0x18]
00040c90  03 70 a0 e3                                      mov r7, #3
00040c94  74 00 9c e5                                      ldr r0, [ip, #0x74]
00040c98  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
00040c9c  01 30 83 e2                                      add r3, r3, #1
00040ca0  00 60 8c e0                                      add r6, ip, r0
00040ca4  e0 70 c6 e5                                      strb r7, [r6, #0xe0]
00040ca8  08 60 a0 e1                                      mov r6, r8
00040cac  00 01 f6 e7                                      ldrb r0, [r6, r0, lsl #2]!
00040cb0  01 50 d6 e5                                      ldrb r5, [r6, #1]
00040cb4  00 00 4a e0                                      sub r0, sl, r0
00040cb8  02 60 d6 e5                                      ldrb r6, [r6, #2]
00040cbc  05 50 49 e0                                      sub r5, sb, r5
00040cc0  06 60 4e e0                                      sub r6, lr, r6
00040cc4  85 05 65 e1                                      smulbb r5, r5, r5
00040cc8  80 50 00 e1                                      smlabb r0, r0, r0, r5
00040ccc  86 06 00 e1                                      smlabb r0, r6, r6, r0
00040cd0  00 20 92 e0                                      adds r2, r2, r0
00040cd4  00 10 a1 e2                                      adc r1, r1, #0
00040cd8  08 00 53 e3                                      cmp r3, #8
00040cdc  ec ff ff 1a                                      bne #0x40c94
00040ce0  55 01 00 ea                                      b #0x4123c
00040ce4  30 70 9d e5                                      ldr r7, [sp, #0x30]
00040ce8  6a 01 00 ea                                      b #0x41298
00040cec  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00040cf0  02 60 a0 e1                                      mov r6, r2
00040cf4  48 70 1b e5                                      ldr r7, [fp, #-0x48]
00040cf8  40 60 0b e5                                      str r6, [fp, #-0x40]
00040cfc  02 12 90 e7                                      ldr r1, [r0, r2, lsl #4]
00040d00  05 90 81 e0                                      add sb, r1, r5
00040d04  0e 00 81 e0                                      add r0, r1, lr
00040d08  01 0c 59 e3                                      cmp sb, #0x100
00040d0c  07 80 81 e0                                      add r8, r1, r7
00040d10  c9 2f e0 21                                      mvnhs r2, sb, asr #31
00040d14  72 90 ef 26                                      uxtbhs sb, r2
00040d18  01 0c 50 e3                                      cmp r0, #0x100
00040d1c  c0 0f e0 21                                      mvnhs r0, r0, asr #31
00040d20  79 c0 ef e6                                      uxtb ip, sb
00040d24  70 00 ef 26                                      uxtbhs r0, r0
00040d28  01 0c 58 e3                                      cmp r8, #0x100
00040d2c  c8 1f e0 21                                      mvnhs r1, r8, asr #31
00040d30  70 00 ef e6                                      uxtb r0, r0
00040d34  71 80 ef 26                                      uxtbhs r8, r1
00040d38  44 00 0b e5                                      str r0, [fp, #-0x44]
00040d3c  78 20 ef e6                                      uxtb r2, r8
00040d40  00 04 8c e1                                      orr r0, ip, r0, lsl #8
00040d44  02 08 80 e1                                      orr r0, r0, r2, lsl #16
00040d48  30 00 0b e5                                      str r0, [fp, #-0x30]
00040d4c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00040d50  44 20 8d e5                                      str r2, [sp, #0x44]
00040d54  06 02 80 e0                                      add r0, r0, r6, lsl #4
00040d58  40 c0 8d e5                                      str ip, [sp, #0x40]
00040d5c  04 10 90 e5                                      ldr r1, [r0, #4]
00040d60  05 40 81 e0                                      add r4, r1, r5
00040d64  0e 00 81 e0                                      add r0, r1, lr
00040d68  ff 00 54 e3                                      cmp r4, #0xff
00040d6c  07 a0 81 e0                                      add sl, r1, r7
00040d70  c4 2f e0 81                                      mvnhi r2, r4, asr #31
00040d74  72 40 ef 86                                      uxtbhi r4, r2
00040d78  01 0c 50 e3                                      cmp r0, #0x100
00040d7c  c0 0f e0 21                                      mvnhs r0, r0, asr #31
00040d80  70 00 ef 26                                      uxtbhs r0, r0
00040d84  01 0c 5a e3                                      cmp sl, #0x100
00040d88  ca 1f e0 21                                      mvnhs r1, sl, asr #31
00040d8c  70 30 ef e6                                      uxtb r3, r0
00040d90  74 00 ef e6                                      uxtb r0, r4
00040d94  71 a0 ef 26                                      uxtbhs sl, r1
00040d98  03 04 80 e1                                      orr r0, r0, r3, lsl #8
00040d9c  7a 10 ef e6                                      uxtb r1, sl
00040da0  01 08 80 e1                                      orr r0, r0, r1, lsl #16
00040da4  2c 00 0b e5                                      str r0, [fp, #-0x2c]
00040da8  24 00 9d e5                                      ldr r0, [sp, #0x24]
00040dac  74 40 e3 e6                                      uxtab r4, r3, r4
00040db0  7a 40 e4 e6                                      uxtab r4, r4, sl
00040db4  06 02 80 e0                                      add r0, r0, r6, lsl #4
00040db8  08 20 90 e5                                      ldr r2, [r0, #8]
00040dbc  05 10 82 e0                                      add r1, r2, r5
00040dc0  0e 00 82 e0                                      add r0, r2, lr
00040dc4  01 0c 51 e3                                      cmp r1, #0x100
00040dc8  07 50 82 e0                                      add r5, r2, r7
00040dcc  c1 1f e0 21                                      mvnhs r1, r1, asr #31
00040dd0  71 10 ef 26                                      uxtbhs r1, r1
00040dd4  01 0c 50 e3                                      cmp r0, #0x100
00040dd8  c0 0f e0 21                                      mvnhs r0, r0, asr #31
00040ddc  70 00 ef 26                                      uxtbhs r0, r0
00040de0  01 0c 55 e3                                      cmp r5, #0x100
00040de4  c5 2f e0 21                                      mvnhs r2, r5, asr #31
00040de8  70 70 ef e6                                      uxtb r7, r0
00040dec  72 50 ef 26                                      uxtbhs r5, r2
00040df0  71 00 ef e6                                      uxtb r0, r1
00040df4  07 04 80 e1                                      orr r0, r0, r7, lsl #8
00040df8  75 20 ef e6                                      uxtb r2, r5
00040dfc  02 08 80 e1                                      orr r0, r0, r2, lsl #16
00040e00  28 00 0b e5                                      str r0, [fp, #-0x28]
00040e04  20 00 9d e5                                      ldr r0, [sp, #0x20]
00040e08  71 70 e7 e6                                      uxtab r7, r7, r1
00040e0c  48 10 1b e5                                      ldr r1, [fp, #-0x48]
00040e10  06 02 80 e0                                      add r0, r0, r6, lsl #4
00040e14  44 20 1b e5                                      ldr r2, [fp, #-0x44]
00040e18  0c c0 90 e5                                      ldr ip, [r0, #0xc]
00040e1c  79 20 e2 e6                                      uxtab r2, r2, sb
00040e20  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00040e24  0e 60 8c e0                                      add r6, ip, lr
00040e28  01 30 8c e0                                      add r3, ip, r1
00040e2c  00 00 8c e0                                      add r0, ip, r0
00040e30  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00040e34  01 0c 50 e3                                      cmp r0, #0x100
00040e38  c0 0f e0 21                                      mvnhs r0, r0, asr #31
00040e3c  70 00 ef 26                                      uxtbhs r0, r0
00040e40  01 0c 56 e3                                      cmp r6, #0x100
00040e44  c6 1f e0 21                                      mvnhs r1, r6, asr #31
00040e48  70 a0 ef e6                                      uxtb sl, r0
00040e4c  71 60 ef 26                                      uxtbhs r6, r1
00040e50  01 0c 53 e3                                      cmp r3, #0x100
00040e54  c3 3f e0 21                                      mvnhs r3, r3, asr #31
00040e58  76 90 ef e6                                      uxtb sb, r6
00040e5c  73 30 ef 26                                      uxtbhs r3, r3
00040e60  78 10 e2 e6                                      uxtab r1, r2, r8
00040e64  75 20 e7 e6                                      uxtab r2, r7, r5
00040e68  09 64 8a e1                                      orr r6, sl, sb, lsl #8
00040e6c  73 70 ef e6                                      uxtb r7, r3
00040e70  70 00 e9 e6                                      uxtab r0, sb, r0
00040e74  07 68 86 e1                                      orr r6, r6, r7, lsl #16
00040e78  24 60 0b e5                                      str r6, [fp, #-0x24]
00040e7c  04 60 82 e0                                      add r6, r2, r4
00040e80  73 30 e0 e6                                      uxtab r3, r0, r3
00040e84  38 60 0b e5                                      str r6, [fp, #-0x38]
00040e88  01 60 84 e0                                      add r6, r4, r1
00040e8c  3c 60 0b e5                                      str r6, [fp, #-0x3c]
00040e90  02 20 83 e0                                      add r2, r3, r2
00040e94  34 20 0b e5                                      str r2, [fp, #-0x34]
00040e98  78 50 9c e5                                      ldr r5, [ip, #0x78]
00040e9c  00 40 9c e5                                      ldr r4, [ip]
00040ea0  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00040ea4  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00040ea8  80 40 a0 e1                                      lsl r4, r0, #1
00040eac  06 00 54 e1                                      cmp r4, r6
00040eb0  65 00 00 2a                                      bhs #0x4104c
00040eb4  48 e0 9d e5                                      ldr lr, [sp, #0x48]
00040eb8  00 00 51 e1                                      cmp r1, r0
00040ebc  06 00 00 9a                                      bls #0x40edc
00040ec0  00 00 51 e0                                      subs r0, r1, r0
00040ec4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00040ec8  00 00 60 42                                      rsbmi r0, r0, #0
00040ecc  38 20 9d e5                                      ldr r2, [sp, #0x38]
00040ed0  01 00 50 e0                                      subs r0, r0, r1
00040ed4  00 00 f2 e2                                      rscs r0, r2, #0
00040ed8  81 ff ff 2a                                      bhs #0x40ce4
00040edc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00040ee0  00 e0 a0 e3                                      mov lr, #0
00040ee4  00 e0 80 e5                                      str lr, [r0]
00040ee8  04 e0 80 e5                                      str lr, [r0, #4]
00040eec  1d 00 d8 e5                                      ldrb r0, [r8, #0x1d]
00040ef0  44 a0 1b e5                                      ldr sl, [fp, #-0x44]
00040ef4  1c 20 d8 e5                                      ldrb r2, [r8, #0x1c]
00040ef8  00 00 4a e0                                      sub r0, sl, r0
00040efc  40 40 9d e5                                      ldr r4, [sp, #0x40]
00040f00  1e 10 d8 e5                                      ldrb r1, [r8, #0x1e]
00040f04  80 00 60 e1                                      smulbb r0, r0, r0
00040f08  02 20 44 e0                                      sub r2, r4, r2
00040f0c  05 60 d8 e5                                      ldrb r6, [r8, #5]
00040f10  82 02 00 e1                                      smlabb r0, r2, r2, r0
00040f14  44 20 9d e5                                      ldr r2, [sp, #0x44]
00040f18  04 70 d8 e5                                      ldrb r7, [r8, #4]
00040f1c  01 10 42 e0                                      sub r1, r2, r1
00040f20  06 60 4a e0                                      sub r6, sl, r6
00040f24  07 70 44 e0                                      sub r7, r4, r7
00040f28  02 30 d8 e5                                      ldrb r3, [r8, #2]
00040f2c  81 01 09 e1                                      smlabb sb, r1, r1, r0
00040f30  01 10 d8 e5                                      ldrb r1, [r8, #1]
00040f34  00 00 d8 e5                                      ldrb r0, [r8]
00040f38  01 10 4a e0                                      sub r1, sl, r1
00040f3c  86 06 66 e1                                      smulbb r6, r6, r6
00040f40  00 00 44 e0                                      sub r0, r4, r0
00040f44  0d 50 d8 e5                                      ldrb r5, [r8, #0xd]
00040f48  81 01 61 e1                                      smulbb r1, r1, r1
00040f4c  87 67 07 e1                                      smlabb r7, r7, r7, r6
00040f50  06 60 d8 e5                                      ldrb r6, [r8, #6]
00040f54  05 50 4a e0                                      sub r5, sl, r5
00040f58  80 10 00 e1                                      smlabb r0, r0, r0, r1
00040f5c  03 10 42 e0                                      sub r1, r2, r3
00040f60  19 30 d8 e5                                      ldrb r3, [r8, #0x19]
00040f64  06 60 42 e0                                      sub r6, r2, r6
00040f68  85 05 65 e1                                      smulbb r5, r5, r5
00040f6c  03 30 4a e0                                      sub r3, sl, r3
00040f70  81 01 00 e1                                      smlabb r0, r1, r1, r0
00040f74  18 10 d8 e5                                      ldrb r1, [r8, #0x18]
00040f78  86 76 07 e1                                      smlabb r7, r6, r6, r7
00040f7c  11 60 d8 e5                                      ldrb r6, [r8, #0x11]
00040f80  01 10 44 e0                                      sub r1, r4, r1
00040f84  83 03 63 e1                                      smulbb r3, r3, r3
00040f88  06 60 4a e0                                      sub r6, sl, r6
00040f8c  81 31 01 e1                                      smlabb r1, r1, r1, r3
00040f90  1a 30 d8 e5                                      ldrb r3, [r8, #0x1a]
00040f94  07 00 80 e0                                      add r0, r0, r7
00040f98  15 70 d8 e5                                      ldrb r7, [r8, #0x15]
00040f9c  03 30 42 e0                                      sub r3, r2, r3
00040fa0  86 06 66 e1                                      smulbb r6, r6, r6
00040fa4  07 70 4a e0                                      sub r7, sl, r7
00040fa8  83 13 01 e1                                      smlabb r1, r3, r3, r1
00040fac  14 30 d8 e5                                      ldrb r3, [r8, #0x14]
00040fb0  87 07 67 e1                                      smulbb r7, r7, r7
00040fb4  03 30 44 e0                                      sub r3, r4, r3
00040fb8  83 73 03 e1                                      smlabb r3, r3, r3, r7
00040fbc  16 70 d8 e5                                      ldrb r7, [r8, #0x16]
00040fc0  07 70 42 e0                                      sub r7, r2, r7
00040fc4  87 37 03 e1                                      smlabb r3, r7, r7, r3
00040fc8  10 70 d8 e5                                      ldrb r7, [r8, #0x10]
00040fcc  07 70 44 e0                                      sub r7, r4, r7
00040fd0  87 67 07 e1                                      smlabb r7, r7, r7, r6
00040fd4  12 60 d8 e5                                      ldrb r6, [r8, #0x12]
00040fd8  06 60 42 e0                                      sub r6, r2, r6
00040fdc  86 76 07 e1                                      smlabb r7, r6, r6, r7
00040fe0  0c 60 d8 e5                                      ldrb r6, [r8, #0xc]
00040fe4  06 60 44 e0                                      sub r6, r4, r6
00040fe8  86 56 06 e1                                      smlabb r6, r6, r6, r5
00040fec  0e 50 d8 e5                                      ldrb r5, [r8, #0xe]
00040ff0  05 50 42 e0                                      sub r5, r2, r5
00040ff4  85 65 06 e1                                      smlabb r6, r5, r5, r6
00040ff8  08 50 d8 e5                                      ldrb r5, [r8, #8]
00040ffc  05 50 44 e0                                      sub r5, r4, r5
00041000  09 40 d8 e5                                      ldrb r4, [r8, #9]
00041004  04 40 4a e0                                      sub r4, sl, r4
00041008  84 04 64 e1                                      smulbb r4, r4, r4
0004100c  85 45 05 e1                                      smlabb r5, r5, r5, r4
00041010  0a 40 d8 e5                                      ldrb r4, [r8, #0xa]
00041014  04 40 42 e0                                      sub r4, r2, r4
00041018  84 54 05 e1                                      smlabb r5, r4, r4, r5
0004101c  05 00 90 e0                                      adds r0, r0, r5
00041020  00 50 ae e2                                      adc r5, lr, #0
00041024  06 00 90 e0                                      adds r0, r0, r6
00041028  00 60 a5 e2                                      adc r6, r5, #0
0004102c  07 00 90 e0                                      adds r0, r0, r7
00041030  00 70 a6 e2                                      adc r7, r6, #0
00041034  03 00 90 e0                                      adds r0, r0, r3
00041038  00 30 a7 e2                                      adc r3, r7, #0
0004103c  01 00 90 e0                                      adds r0, r0, r1
00041040  00 10 a3 e2                                      adc r1, r3, #0
00041044  09 20 90 e0                                      adds r2, r0, sb
00041048  79 00 00 ea                                      b #0x41234
0004104c  44 70 0b e5                                      str r7, [fp, #-0x44]
00041050  00 00 95 e5                                      ldr r0, [r5]
00041054  48 e0 9d e5                                      ldr lr, [sp, #0x48]
00041058  80 10 a0 e1                                      lsl r1, r0, #1
0004105c  02 00 51 e1                                      cmp r1, r2
00041060  04 00 00 2a                                      bhs #0x41078
00041064  00 30 a0 e3                                      mov r3, #0
00041068  00 50 a0 e3                                      mov r5, #0
0004106c  00 20 a0 e3                                      mov r2, #0
00041070  00 10 a0 e3                                      mov r1, #0
00041074  f6 fe ff ea                                      b #0x40c54
00041078  03 00 50 e1                                      cmp r0, r3
0004107c  06 00 00 9a                                      bls #0x4109c
00041080  03 00 50 e0                                      subs r0, r0, r3
00041084  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00041088  00 00 60 42                                      rsbmi r0, r0, #0
0004108c  38 20 9d e5                                      ldr r2, [sp, #0x38]
00041090  01 00 50 e0                                      subs r0, r0, r1
00041094  00 00 f2 e2                                      rscs r0, r2, #0
00041098  11 ff ff 2a                                      bhs #0x40ce4
0004109c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
000410a0  03 13 00 e3                                      movw r1, #0x303
000410a4  03 13 40 e3                                      movt r1, #0x303
000410a8  00 10 80 e5                                      str r1, [r0]
000410ac  04 10 80 e5                                      str r1, [r0, #4]
000410b0  15 50 d8 e5                                      ldrb r5, [r8, #0x15]
000410b4  14 20 d8 e5                                      ldrb r2, [r8, #0x14]
000410b8  05 50 49 e0                                      sub r5, sb, r5
000410bc  1d 30 d8 e5                                      ldrb r3, [r8, #0x1d]
000410c0  02 20 4a e0                                      sub r2, sl, r2
000410c4  18 00 d8 e5                                      ldrb r0, [r8, #0x18]
000410c8  85 05 65 e1                                      smulbb r5, r5, r5
000410cc  1c 10 d8 e5                                      ldrb r1, [r8, #0x1c]
000410d0  03 30 49 e0                                      sub r3, sb, r3
000410d4  00 00 4a e0                                      sub r0, sl, r0
000410d8  82 52 05 e1                                      smlabb r5, r2, r2, r5
000410dc  19 20 d8 e5                                      ldrb r2, [r8, #0x19]
000410e0  01 10 4a e0                                      sub r1, sl, r1
000410e4  02 20 49 e0                                      sub r2, sb, r2
000410e8  83 03 63 e1                                      smulbb r3, r3, r3
000410ec  82 02 62 e1                                      smulbb r2, r2, r2
000410f0  81 31 01 e1                                      smlabb r1, r1, r1, r3
000410f4  44 30 1b e5                                      ldr r3, [fp, #-0x44]
000410f8  80 20 00 e1                                      smlabb r0, r0, r0, r2
000410fc  1e 20 d8 e5                                      ldrb r2, [r8, #0x1e]
00041100  02 20 43 e0                                      sub r2, r3, r2
00041104  82 12 01 e1                                      smlabb r1, r2, r2, r1
00041108  44 10 8d e5                                      str r1, [sp, #0x44]
0004110c  1a 20 d8 e5                                      ldrb r2, [r8, #0x1a]
00041110  02 20 43 e0                                      sub r2, r3, r2
00041114  82 02 00 e1                                      smlabb r0, r2, r2, r0
00041118  40 00 8d e5                                      str r0, [sp, #0x40]
0004111c  16 00 d8 e5                                      ldrb r0, [r8, #0x16]
00041120  00 00 43 e0                                      sub r0, r3, r0
00041124  80 50 00 e1                                      smlabb r0, r0, r0, r5
00041128  3c 00 8d e5                                      str r0, [sp, #0x3c]
0004112c  11 50 d8 e5                                      ldrb r5, [r8, #0x11]
00041130  10 00 d8 e5                                      ldrb r0, [r8, #0x10]
00041134  05 50 49 e0                                      sub r5, sb, r5
00041138  00 00 4a e0                                      sub r0, sl, r0
0004113c  85 05 65 e1                                      smulbb r5, r5, r5
00041140  80 50 00 e1                                      smlabb r0, r0, r0, r5
00041144  12 50 d8 e5                                      ldrb r5, [r8, #0x12]
00041148  05 50 43 e0                                      sub r5, r3, r5
0004114c  85 05 00 e1                                      smlabb r0, r5, r5, r0
00041150  38 00 8d e5                                      str r0, [sp, #0x38]
00041154  0d 40 d8 e5                                      ldrb r4, [r8, #0xd]
00041158  0c 50 d8 e5                                      ldrb r5, [r8, #0xc]
0004115c  04 40 49 e0                                      sub r4, sb, r4
00041160  05 50 4a e0                                      sub r5, sl, r5
00041164  84 04 64 e1                                      smulbb r4, r4, r4
00041168  85 45 05 e1                                      smlabb r5, r5, r5, r4
0004116c  0e 40 d8 e5                                      ldrb r4, [r8, #0xe]
00041170  04 40 43 e0                                      sub r4, r3, r4
00041174  84 54 00 e1                                      smlabb r0, r4, r4, r5
00041178  08 00 8d e5                                      str r0, [sp, #8]
0004117c  09 10 d8 e5                                      ldrb r1, [r8, #9]
00041180  08 40 d8 e5                                      ldrb r4, [r8, #8]
00041184  01 10 49 e0                                      sub r1, sb, r1
00041188  01 20 d8 e5                                      ldrb r2, [r8, #1]
0004118c  04 40 4a e0                                      sub r4, sl, r4
00041190  05 e0 d8 e5                                      ldrb lr, [r8, #5]
00041194  81 01 61 e1                                      smulbb r1, r1, r1
00041198  04 c0 d8 e5                                      ldrb ip, [r8, #4]
0004119c  0e 00 49 e0                                      sub r0, sb, lr
000411a0  02 20 49 e0                                      sub r2, sb, r2
000411a4  84 14 01 e1                                      smlabb r1, r4, r4, r1
000411a8  0a 40 d8 e5                                      ldrb r4, [r8, #0xa]
000411ac  0c c0 4a e0                                      sub ip, sl, ip
000411b0  04 40 43 e0                                      sub r4, r3, r4
000411b4  80 00 60 e1                                      smulbb r0, r0, r0
000411b8  82 02 62 e1                                      smulbb r2, r2, r2
000411bc  06 50 d8 e5                                      ldrb r5, [r8, #6]
000411c0  84 14 06 e1                                      smlabb r6, r4, r4, r1
000411c4  00 40 d8 e5                                      ldrb r4, [r8]
000411c8  02 10 d8 e5                                      ldrb r1, [r8, #2]
000411cc  04 70 4a e0                                      sub r7, sl, r4
000411d0  8c 0c 00 e1                                      smlabb r0, ip, ip, r0
000411d4  05 50 43 e0                                      sub r5, r3, r5
000411d8  87 27 02 e1                                      smlabb r2, r7, r7, r2
000411dc  01 30 43 e0                                      sub r3, r3, r1
000411e0  00 10 a0 e3                                      mov r1, #0
000411e4  85 05 00 e1                                      smlabb r0, r5, r5, r0
000411e8  34 c0 9d e5                                      ldr ip, [sp, #0x34]
000411ec  83 23 02 e1                                      smlabb r2, r3, r3, r2
000411f0  00 00 82 e0                                      add r0, r2, r0
000411f4  08 20 9d e5                                      ldr r2, [sp, #8]
000411f8  06 00 90 e0                                      adds r0, r0, r6
000411fc  00 10 a1 e2                                      adc r1, r1, #0
00041200  02 00 90 e0                                      adds r0, r0, r2
00041204  38 20 9d e5                                      ldr r2, [sp, #0x38]
00041208  00 10 a1 e2                                      adc r1, r1, #0
0004120c  02 00 90 e0                                      adds r0, r0, r2
00041210  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00041214  00 10 a1 e2                                      adc r1, r1, #0
00041218  02 00 90 e0                                      adds r0, r0, r2
0004121c  40 20 9d e5                                      ldr r2, [sp, #0x40]
00041220  00 10 a1 e2                                      adc r1, r1, #0
00041224  02 00 90 e0                                      adds r0, r0, r2
00041228  44 20 9d e5                                      ldr r2, [sp, #0x44]
0004122c  00 10 a1 e2                                      adc r1, r1, #0
00041230  02 20 90 e0                                      adds r2, r0, r2
00041234  00 10 a1 e2                                      adc r1, r1, #0
00041238  18 40 9d e5                                      ldr r4, [sp, #0x18]
0004123c  88 00 94 e8                                      ldm r4, {r3, r7}
00041240  03 00 52 e0                                      subs r0, r2, r3
00041244  07 00 d1 e0                                      sbcs r0, r1, r7
00041248  0e 00 00 2a                                      bhs #0x41288
0004124c  00 20 84 e5                                      str r2, [r4]
00041250  04 10 84 e5                                      str r1, [r4, #4]
00041254  14 70 9d e5                                      ldr r7, [sp, #0x14]
00041258  40 00 1b e5                                      ldr r0, [fp, #-0x40]
0004125c  04 00 87 e5                                      str r0, [r7, #4]
00041260  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00041264  09 00 93 e8                                      ldm r3, {r0, r3}
00041268  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0004126c  09 00 86 e8                                      stm r6, {r0, r3}
00041270  01 00 a0 e3                                      mov r0, #1
00041274  02 30 a0 e1                                      mov r3, r2
00041278  20 00 c7 e5                                      strb r0, [r7, #0x20]
0004127c  01 00 92 e1                                      orrs r0, r2, r1
00041280  01 70 a0 e1                                      mov r7, r1
00041284  0a 00 00 0a                                      beq #0x412b4
00041288  38 70 8d e5                                      str r7, [sp, #0x38]
0004128c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00041290  30 70 9d e5                                      ldr r7, [sp, #0x30]
00041294  48 e0 9d e5                                      ldr lr, [sp, #0x48]
00041298  40 10 1b e5                                      ldr r1, [fp, #-0x40]
0004129c  4c 50 9d e5                                      ldr r5, [sp, #0x4c]
000412a0  01 00 41 e2                                      sub r0, r1, #1
000412a4  00 00 51 e3                                      cmp r1, #0
000412a8  00 20 a0 e1                                      mov r2, r0
000412ac  8e fe ff ca                                      bgt #0x40cec
000412b0  04 00 00 ea                                      b #0x412c8
000412b4  00 00 a0 e3                                      mov r0, #0
000412b8  30 70 9d e5                                      ldr r7, [sp, #0x30]
000412bc  3c 00 8d e5                                      str r0, [sp, #0x3c]
000412c0  00 00 a0 e3                                      mov r0, #0
000412c4  38 00 8d e5                                      str r0, [sp, #0x38]
000412c8  04 00 9d e5                                      ldr r0, [sp, #4]
000412cc  00 00 57 e3                                      cmp r7, #0
000412d0  14 30 9d e5                                      ldr r3, [sp, #0x14]
000412d4  00 10 90 e5                                      ldr r1, [r0]
000412d8  00 10 83 e5                                      str r1, [r3]
000412dc  00 00 9c e5                                      ldr r0, [ip]
000412e0  10 20 d0 e5                                      ldrb r2, [r0, #0x10]
000412e4  00 00 a0 e3                                      mov r0, #0
000412e8  08 20 c3 e5                                      strb r2, [r3, #8]
000412ec  11 00 00 0a                                      beq #0x41338
000412f0  d8 41 c7 e1                                      ldrd r4, r5, [r7, #0x18]
000412f4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
000412f8  04 30 53 e0                                      subs r3, r3, r4
000412fc  38 30 9d e5                                      ldr r3, [sp, #0x38]
00041300  05 30 d3 e0                                      sbcs r3, r3, r5
00041304  0b 00 00 2a                                      bhs #0x41338
00041308  00 10 87 e5                                      str r1, [r7]
0004130c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00041310  04 00 90 e5                                      ldr r0, [r0, #4]
00041314  08 20 c7 e5                                      strb r2, [r7, #8]
00041318  04 00 87 e5                                      str r0, [r7, #4]
0004131c  0c 00 87 e2                                      add r0, r7, #0xc
00041320  0c 50 9d e5                                      ldr r5, [sp, #0xc]
00041324  ce 00 b5 e8                                      ldm r5!, {r1, r2, r3, r6, r7}
00041328  ce 00 a0 e8                                      stm r0!, {r1, r2, r3, r6, r7}
0004132c  00 10 d5 e5                                      ldrb r1, [r5]
00041330  00 10 c0 e5                                      strb r1, [r0]
00041334  01 00 a0 e3                                      mov r0, #1
00041338  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0004133c  20 20 1b e5                                      ldr r2, [fp, #-0x20]
00041340  01 10 9f e7                                      ldr r1, [pc, r1]
00041344  00 10 91 e5                                      ldr r1, [r1]
00041348  02 10 51 e0                                      subs r1, r1, r2
0004134c  1c d0 4b 02                                      subeq sp, fp, #0x1c
00041350  f0 8f bd 08                                      popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00041354  41 c3 ff eb                                      bl #0x32060
00041358  5c ba 09 00                                      andeq fp, sb, ip, asr sl
0004135c  7c 2f 08 00                                      andeq r2, r8, ip, ror pc
00041360  68 2f 08 00                                      andeq r2, r8, r8, ror #30
00041364  58 2f 08 00                                      andeq r2, r8, r8, asr pc
00041368  48 2f 08 00                                      andeq r2, r8, r8, asr #30
0004136c  70 b1 09 00                                      andeq fp, sb, r0, ror r1

; FUNCTION 0x00041370, declared_size=584, range_size=584, mode=arm
; class-group: rg_etc1::etc1_optimizer
; alias: _ZN7rg_etc114etc1_optimizer4initERKNS0_6paramsERNS0_7resultsE
; demangled: rg_etc1::etc1_optimizer::init(rg_etc1::etc1_optimizer::params const&, rg_etc1::etc1_optimizer::results&)
; decoder-mode: arm
00041370  f0 48 2d e9                                      push {r4, r5, r6, r7, fp, lr}
00041374  10 b0 8d e2                                      add fp, sp, #0x10
00041378  10 d0 4d e2                                      sub sp, sp, #0x10
0004137c  8b 0a 9f ed                                      vldr s0, [pc, #0x22c]
00041380  00 40 a0 e1                                      mov r4, r0
00041384  06 00 84 e8                                      stm r4, {r1, r2}
00041388  1f 20 a0 e3                                      mov r2, #0x1f
0004138c  40 1a b0 ee                                      vmov.f32 s2, s0
00041390  40 2a b0 ee                                      vmov.f32 s4, s0
00041394  10 00 d1 e5                                      ldrb r0, [r1, #0x10]
00041398  34 50 84 e2                                      add r5, r4, #0x34
0004139c  00 00 50 e3                                      cmp r0, #0
000413a0  24 00 84 e2                                      add r0, r4, #0x24
000413a4  0f 20 00 13                                      movwne r2, #0xf
000413a8  08 20 84 e5                                      str r2, [r4, #8]
000413ac  00 20 a0 e3                                      mov r2, #0
000413b0  02 00 00 ea                                      b #0x413c0
000413b4  01 20 82 e2                                      add r2, r2, #1
000413b8  00 10 94 e5                                      ldr r1, [r4]
000413bc  02 00 80 e2                                      add r0, r0, #2
000413c0  0c 10 91 e5                                      ldr r1, [r1, #0xc]
000413c4  07 00 52 e3                                      cmp r2, #7
000413c8  02 31 f1 e7                                      ldrb r3, [r1, r2, lsl #2]!
000413cc  01 70 d1 e5                                      ldrb r7, [r1, #1]
000413d0  02 10 d1 e5                                      ldrb r1, [r1, #2]
000413d4  10 3a 03 ee                                      vmov s6, r3
000413d8  03 30 87 e0                                      add r3, r7, r3
000413dc  10 7a 05 ee                                      vmov s10, r7
000413e0  10 1a 04 ee                                      vmov s8, r1
000413e4  01 10 83 e0                                      add r1, r3, r1
000413e8  43 3a b8 ee                                      vcvt.f32.u32 s6, s6
000413ec  44 4a b8 ee                                      vcvt.f32.u32 s8, s8
000413f0  45 5a b8 ee                                      vcvt.f32.u32 s10, s10
000413f4  b0 10 c0 e1                                      strh r1, [r0]
000413f8  02 21 85 e7                                      str r2, [r5, r2, lsl #2]
000413fc  03 2a 32 ee                                      vadd.f32 s4, s4, s6
00041400  04 0a 30 ee                                      vadd.f32 s0, s0, s8
00041404  05 1a 31 ee                                      vadd.f32 s2, s2, s10
00041408  e9 ff ff 1a                                      bne #0x413b4
0004140c  00 3a b4 ee                                      vmov.f32 s6, #1.250000e-01
00041410  08 10 94 e5                                      ldr r1, [r4, #8]
00041414  00 00 94 e5                                      ldr r0, [r4]
00041418  65 5a 9f ed                                      vldr s10, [pc, #0x194]
0004141c  10 1a 04 ee                                      vmov s8, r1
00041420  c4 4a b8 ee                                      vcvt.f32.s32 s8, s8
00041424  03 0a 20 ee                                      vmul.f32 s0, s0, s6
00041428  03 2a 22 ee                                      vmul.f32 s4, s4, s6
0004142c  03 1a 21 ee                                      vmul.f32 s2, s2, s6
00041430  04 3a 20 ee                                      vmul.f32 s6, s0, s8
00041434  05 0a 84 ed                                      vstr s0, [r4, #0x14]
00041438  04 6a 22 ee                                      vmul.f32 s12, s4, s8
0004143c  04 4a 21 ee                                      vmul.f32 s8, s2, s8
00041440  04 1a 84 ed                                      vstr s2, [r4, #0x10]
00041444  05 3a 83 ee                                      vdiv.f32 s6, s6, s10
00041448  05 6a 86 ee                                      vdiv.f32 s12, s12, s10
0004144c  05 4a 84 ee                                      vdiv.f32 s8, s8, s10
00041450  00 5a b6 ee                                      vmov.f32 s10, #5.000000e-01
00041454  05 3a 33 ee                                      vadd.f32 s6, s6, s10
00041458  05 6a 36 ee                                      vadd.f32 s12, s12, s10
0004145c  05 4a 34 ee                                      vadd.f32 s8, s8, s10
00041460  c3 0a bc ee                                      vcvt.u32.f32 s0, s6
00041464  03 2a 84 ed                                      vstr s4, [r4, #0xc]
00041468  c6 1a bc ee                                      vcvt.u32.f32 s2, s12
0004146c  c4 2a bc ee                                      vcvt.u32.f32 s4, s8
00041470  10 2a 11 ee                                      vmov r2, s2
00041474  10 7a 12 ee                                      vmov r7, s4
00041478  02 00 51 e1                                      cmp r1, r2
0004147c  02 30 a0 e1                                      mov r3, r2
00041480  01 30 a0 b1                                      movlt r3, r1
00041484  00 00 52 e3                                      cmp r2, #0
00041488  00 30 00 b3                                      movwlt r3, #0
0004148c  07 00 51 e1                                      cmp r1, r7
00041490  07 20 a0 e1                                      mov r2, r7
00041494  18 30 84 e5                                      str r3, [r4, #0x18]
00041498  01 20 a0 b1                                      movlt r2, r1
0004149c  00 00 57 e3                                      cmp r7, #0
000414a0  10 7a 10 ee                                      vmov r7, s0
000414a4  00 20 00 b3                                      movwlt r2, #0
000414a8  1c 20 84 e5                                      str r2, [r4, #0x1c]
000414ac  07 00 51 e1                                      cmp r1, r7
000414b0  07 10 a0 a1                                      movge r1, r7
000414b4  00 00 57 e3                                      cmp r7, #0
000414b8  00 10 00 b3                                      movwlt r1, #0
000414bc  20 10 84 e5                                      str r1, [r4, #0x20]
000414c0  00 00 90 e5                                      ldr r0, [r0]
000414c4  02 00 50 e3                                      cmp r0, #2
000414c8  2e 00 00 aa                                      bge #0x41588
000414cc  54 70 84 e2                                      add r7, r4, #0x54
000414d0  24 60 84 e2                                      add r6, r4, #0x24
000414d4  00 00 a0 e3                                      mov r0, #0
000414d8  02 10 a0 e3                                      mov r1, #2
000414dc  03 00 8d e8                                      stm sp, {r0, r1}
000414e0  05 10 a0 e1                                      mov r1, r5
000414e4  07 20 a0 e1                                      mov r2, r7
000414e8  08 00 8d e5                                      str r0, [sp, #8]
000414ec  08 00 a0 e3                                      mov r0, #8
000414f0  06 30 a0 e1                                      mov r3, r6
000414f4  cf c3 ff eb                                      bl #0x32438
000414f8  05 00 50 e1                                      cmp r0, r5
000414fc  74 00 84 e5                                      str r0, [r4, #0x74]
00041500  07 50 a0 01                                      moveq r5, r7
00041504  78 50 84 e5                                      str r5, [r4, #0x78]
00041508  00 10 90 e5                                      ldr r1, [r0]
0004150c  81 10 86 e0                                      add r1, r6, r1, lsl #1
00041510  b0 10 d1 e1                                      ldrh r1, [r1]
00041514  00 10 85 e5                                      str r1, [r5]
00041518  04 10 90 e5                                      ldr r1, [r0, #4]
0004151c  81 10 86 e0                                      add r1, r6, r1, lsl #1
00041520  b0 10 d1 e1                                      ldrh r1, [r1]
00041524  04 10 85 e5                                      str r1, [r5, #4]
00041528  08 10 90 e5                                      ldr r1, [r0, #8]
0004152c  81 10 86 e0                                      add r1, r6, r1, lsl #1
00041530  b0 10 d1 e1                                      ldrh r1, [r1]
00041534  08 10 85 e5                                      str r1, [r5, #8]
00041538  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0004153c  81 10 86 e0                                      add r1, r6, r1, lsl #1
00041540  b0 10 d1 e1                                      ldrh r1, [r1]
00041544  0c 10 85 e5                                      str r1, [r5, #0xc]
00041548  10 10 90 e5                                      ldr r1, [r0, #0x10]
0004154c  81 10 86 e0                                      add r1, r6, r1, lsl #1
00041550  b0 10 d1 e1                                      ldrh r1, [r1]
00041554  10 10 85 e5                                      str r1, [r5, #0x10]
00041558  14 10 90 e5                                      ldr r1, [r0, #0x14]
0004155c  81 10 86 e0                                      add r1, r6, r1, lsl #1
00041560  b0 10 d1 e1                                      ldrh r1, [r1]
00041564  14 10 85 e5                                      str r1, [r5, #0x14]
00041568  18 10 90 e5                                      ldr r1, [r0, #0x18]
0004156c  81 10 86 e0                                      add r1, r6, r1, lsl #1
00041570  b0 10 d1 e1                                      ldrh r1, [r1]
00041574  18 10 85 e5                                      str r1, [r5, #0x18]
00041578  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0004157c  80 00 86 e0                                      add r0, r6, r0, lsl #1
00041580  b0 00 d0 e1                                      ldrh r0, [r0]
00041584  1c 00 85 e5                                      str r0, [r5, #0x1c]
00041588  00 00 a0 e3                                      mov r0, #0
0004158c  00 10 e0 e3                                      mvn r1, #0
00041590  98 00 c4 e5                                      strb r0, [r4, #0x98]
00041594  b0 00 c4 e5                                      strb r0, [r4, #0xb0]
00041598  a8 10 84 e5                                      str r1, [r4, #0xa8]
0004159c  ac 10 84 e5                                      str r1, [r4, #0xac]
000415a0  90 00 84 e5                                      str r0, [r4, #0x90]
000415a4  94 00 84 e5                                      str r0, [r4, #0x94]
000415a8  10 d0 4b e2                                      sub sp, fp, #0x10
000415ac  f0 88 bd e8                                      pop {r4, r5, r6, r7, fp, pc}
000415b0  00 00 00 00                                      andeq r0, r0, r0
000415b4  00 00 7f 43                                      cmnmi pc, #0
