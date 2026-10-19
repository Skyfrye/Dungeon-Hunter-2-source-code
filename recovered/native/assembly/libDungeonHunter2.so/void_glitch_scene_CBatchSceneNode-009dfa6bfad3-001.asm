; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050cdb0, declared_size=336, range_size=336, mode=arm
; class-group: void glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode18addVisibleSegmentsINS0_23SFrustumBoxIntersector3EEEvjT_
; demangled: void glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SFrustumBoxIntersector3>(unsigned int, glitch::scene::SFrustumBoxIntersector3)
; decoder-mode: arm
0050cdb0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050cdb4  30 31 90 e5                                      ldr r3, [r0, #0x130]
0050cdb8  00 40 a0 e1                                      mov r4, r0
0050cdbc  14 00 a0 e3                                      mov r0, #0x14
0050cdc0  90 01 0b e0                                      mul fp, r0, r1
0050cdc4  20 c0 93 e5                                      ldr ip, [r3, #0x20]
0050cdc8  0c d0 4d e2                                      sub sp, sp, #0xc
0050cdcc  04 20 8d e5                                      str r2, [sp, #4]
0050cdd0  0b c0 8c e0                                      add ip, ip, fp
0050cdd4  be a0 dc e1                                      ldrh sl, [ip, #0xe]
0050cdd8  bc 70 dc e1                                      ldrh r7, [ip, #0xc]
0050cddc  14 11 9f e5                                      ldr r1, [pc, #0x114]
0050cde0  0a a0 67 e0                                      rsb sl, r7, sl
0050cde4  7a a0 ff e6                                      uxth sl, sl
0050cde8  00 00 5a e3                                      cmp sl, #0
0050cdec  01 10 8f e0                                      add r1, pc, r1
0050cdf0  3e 00 00 0a                                      beq #0x50cef0
0050cdf4  00 21 9f e5                                      ldr r2, [pc, #0x100]
0050cdf8  00 50 a0 e3                                      mov r5, #0
0050cdfc  02 90 91 e7                                      ldr sb, [r1, r2]
0050ce00  05 00 00 ea                                      b #0x50ce1c
0050ce04  0a 00 55 e1                                      cmp r5, sl
0050ce08  38 00 00 2a                                      bhs #0x50cef0
0050ce0c  30 31 94 e5                                      ldr r3, [r4, #0x130]
0050ce10  20 20 93 e5                                      ldr r2, [r3, #0x20]
0050ce14  0b 20 82 e0                                      add r2, r2, fp
0050ce18  bc 70 d2 e1                                      ldrh r7, [r2, #0xc]
0050ce1c  70 20 93 e5                                      ldr r2, [r3, #0x70]
0050ce20  05 70 87 e0                                      add r7, r7, r5
0050ce24  08 80 93 e5                                      ldr r8, [r3, #8]
0050ce28  92 07 07 e0                                      mul r7, r2, r7
0050ce2c  00 20 99 e5                                      ldr r2, [sb]
0050ce30  07 60 88 e0                                      add r6, r8, r7
0050ce34  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
0050ce38  04 00 a0 e1                                      mov r0, r4
0050ce3c  06 10 a0 e1                                      mov r1, r6
0050ce40  02 00 53 e1                                      cmp r3, r2
0050ce44  01 50 85 e2                                      add r5, r5, #1
0050ce48  ed ff ff 0a                                      beq #0x50ce04
0050ce4c  00 30 94 e5                                      ldr r3, [r4]
0050ce50  0f e0 a0 e1                                      mov lr, pc
0050ce54  08 f1 93 e5                                      ldr pc, [r3, #0x108]
0050ce58  00 00 50 e3                                      cmp r0, #0
0050ce5c  e8 ff ff 0a                                      beq #0x50ce04
0050ce60  04 00 9d e5                                      ldr r0, [sp, #4]
0050ce64  0c 10 96 e5                                      ldr r1, [r6, #0xc]
0050ce68  17 ff ff eb                                      bl #0x50cacc
0050ce6c  00 00 50 e3                                      cmp r0, #0
0050ce70  e3 ff ff 0a                                      beq #0x50ce04
0050ce74  07 20 98 e7                                      ldr r2, [r8, r7]
0050ce78  04 00 96 e5                                      ldr r0, [r6, #4]
0050ce7c  58 31 94 e5                                      ldr r3, [r4, #0x158]
0050ce80  00 20 92 e5                                      ldr r2, [r2]
0050ce84  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
0050ce88  80 21 92 e7                                      ldr r2, [r2, r0, lsl #3]
0050ce8c  14 00 a0 e3                                      mov r0, #0x14
0050ce90  90 32 23 e0                                      mla r3, r0, r2, r3
0050ce94  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050ce98  08 00 93 e5                                      ldr r0, [r3, #8]
0050ce9c  01 00 50 e1                                      cmp r0, r1
0050cea0  01 20 82 13                                      orrne r2, r2, #1
0050cea4  0c 20 83 e5                                      str r2, [r3, #0xc]
0050cea8  00 30 99 e5                                      ldr r3, [sb]
0050ceac  04 10 96 e5                                      ldr r1, [r6, #4]
0050ceb0  0a 00 55 e1                                      cmp r5, sl
0050ceb4  1c 30 86 e5                                      str r3, [r6, #0x1c]
0050ceb8  07 20 98 e7                                      ldr r2, [r8, r7]
0050cebc  58 31 94 e5                                      ldr r3, [r4, #0x158]
0050cec0  00 20 92 e5                                      ldr r2, [r2]
0050cec4  81 21 92 e7                                      ldr r2, [r2, r1, lsl #3]
0050cec8  14 10 a0 e3                                      mov r1, #0x14
0050cecc  91 02 02 e0                                      mul r2, r1, r2
0050ced0  02 10 83 e0                                      add r1, r3, r2
0050ced4  10 c0 91 e5                                      ldr ip, [r1, #0x10]
0050ced8  02 10 93 e7                                      ldr r1, [r3, r2]
0050cedc  0c c1 83 e0                                      add ip, r3, ip, lsl #2
0050cee0  01 00 81 e2                                      add r0, r1, #1
0050cee4  01 61 8c e7                                      str r6, [ip, r1, lsl #2]
0050cee8  02 00 83 e7                                      str r0, [r3, r2]
0050ceec  c6 ff ff 3a                                      blo #0x50ce0c
0050cef0  0c d0 8d e2                                      add sp, sp, #0xc
0050cef4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0050cef8  a4 7c 48 00 b0 07 00 00                          .byte 0xa4, 0x7c, 0x48, 0x00, 0xb0, 0x07, 0x00, 0x00

; FUNCTION 0x0050d198, declared_size=296, range_size=296, mode=arm
; class-group: void glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode18addVisibleSegmentsINS0_20SUniverseIntersectorEEEvjT_
; demangled: void glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SUniverseIntersector>(unsigned int, glitch::scene::SUniverseIntersector)
; decoder-mode: arm
0050d198  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050d19c  30 31 90 e5                                      ldr r3, [r0, #0x130]
0050d1a0  00 60 a0 e1                                      mov r6, r0
0050d1a4  14 00 a0 e3                                      mov r0, #0x14
0050d1a8  90 01 0b e0                                      mul fp, r0, r1
0050d1ac  20 20 93 e5                                      ldr r2, [r3, #0x20]
0050d1b0  00 11 9f e5                                      ldr r1, [pc, #0x100]
0050d1b4  0b 20 82 e0                                      add r2, r2, fp
0050d1b8  be 90 d2 e1                                      ldrh sb, [r2, #0xe]
0050d1bc  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
0050d1c0  01 10 8f e0                                      add r1, pc, r1
0050d1c4  09 90 62 e0                                      rsb sb, r2, sb
0050d1c8  79 90 ff e6                                      uxth sb, sb
0050d1cc  00 00 59 e3                                      cmp sb, #0
0050d1d0  37 00 00 0a                                      beq #0x50d2b4
0050d1d4  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
0050d1d8  00 50 a0 e3                                      mov r5, #0
0050d1dc  00 a0 91 e7                                      ldr sl, [r1, r0]
0050d1e0  03 00 00 ea                                      b #0x50d1f4
0050d1e4  30 31 96 e5                                      ldr r3, [r6, #0x130]
0050d1e8  20 20 93 e5                                      ldr r2, [r3, #0x20]
0050d1ec  0b 20 82 e0                                      add r2, r2, fp
0050d1f0  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
0050d1f4  70 10 93 e5                                      ldr r1, [r3, #0x70]
0050d1f8  05 70 82 e0                                      add r7, r2, r5
0050d1fc  08 80 93 e5                                      ldr r8, [r3, #8]
0050d200  91 07 07 e0                                      mul r7, r1, r7
0050d204  00 20 9a e5                                      ldr r2, [sl]
0050d208  07 40 88 e0                                      add r4, r8, r7
0050d20c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0050d210  06 00 a0 e1                                      mov r0, r6
0050d214  04 10 a0 e1                                      mov r1, r4
0050d218  02 00 53 e1                                      cmp r3, r2
0050d21c  01 50 85 e2                                      add r5, r5, #1
0050d220  21 00 00 0a                                      beq #0x50d2ac
0050d224  00 30 96 e5                                      ldr r3, [r6]
0050d228  0f e0 a0 e1                                      mov lr, pc
0050d22c  08 f1 93 e5                                      ldr pc, [r3, #0x108]
0050d230  00 00 50 e3                                      cmp r0, #0
0050d234  1c 00 00 0a                                      beq #0x50d2ac
0050d238  07 20 98 e7                                      ldr r2, [r8, r7]
0050d23c  04 10 94 e5                                      ldr r1, [r4, #4]
0050d240  58 31 96 e5                                      ldr r3, [r6, #0x158]
0050d244  00 20 92 e5                                      ldr r2, [r2]
0050d248  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0050d24c  81 21 92 e7                                      ldr r2, [r2, r1, lsl #3]
0050d250  14 10 a0 e3                                      mov r1, #0x14
0050d254  91 32 23 e0                                      mla r3, r1, r2, r3
0050d258  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050d25c  08 10 93 e5                                      ldr r1, [r3, #8]
0050d260  00 00 51 e1                                      cmp r1, r0
0050d264  01 20 82 13                                      orrne r2, r2, #1
0050d268  0c 20 83 e5                                      str r2, [r3, #0xc]
0050d26c  00 30 9a e5                                      ldr r3, [sl]
0050d270  04 10 94 e5                                      ldr r1, [r4, #4]
0050d274  1c 30 84 e5                                      str r3, [r4, #0x1c]
0050d278  07 20 98 e7                                      ldr r2, [r8, r7]
0050d27c  58 31 96 e5                                      ldr r3, [r6, #0x158]
0050d280  00 20 92 e5                                      ldr r2, [r2]
0050d284  81 21 92 e7                                      ldr r2, [r2, r1, lsl #3]
0050d288  14 10 a0 e3                                      mov r1, #0x14
0050d28c  91 02 02 e0                                      mul r2, r1, r2
0050d290  02 10 83 e0                                      add r1, r3, r2
0050d294  10 c0 91 e5                                      ldr ip, [r1, #0x10]
0050d298  02 10 93 e7                                      ldr r1, [r3, r2]
0050d29c  0c c1 83 e0                                      add ip, r3, ip, lsl #2
0050d2a0  01 00 81 e2                                      add r0, r1, #1
0050d2a4  01 41 8c e7                                      str r4, [ip, r1, lsl #2]
0050d2a8  02 00 83 e7                                      str r0, [r3, r2]
0050d2ac  09 00 55 e1                                      cmp r5, sb
0050d2b0  cb ff ff 3a                                      blo #0x50d1e4
0050d2b4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0050d2b8  d0 78 48 00 b0 07 00 00                          .byte 0xd0, 0x78, 0x48, 0x00, 0xb0, 0x07, 0x00, 0x00

; FUNCTION 0x0050d2c0, declared_size=476, range_size=476, mode=arm
; class-group: void glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode18addVisibleSegmentsINS0_15SBoxIntersectorEEEvjT_
; demangled: void glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SBoxIntersector>(unsigned int, glitch::scene::SBoxIntersector)
; decoder-mode: arm
0050d2c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050d2c4  00 40 a0 e1                                      mov r4, r0
0050d2c8  30 31 90 e5                                      ldr r3, [r0, #0x130]
0050d2cc  14 00 a0 e3                                      mov r0, #0x14
0050d2d0  90 01 01 e0                                      mul r1, r0, r1
0050d2d4  0c d0 4d e2                                      sub sp, sp, #0xc
0050d2d8  00 10 8d e5                                      str r1, [sp]
0050d2dc  20 c0 93 e5                                      ldr ip, [r3, #0x20]
0050d2e0  04 20 8d e5                                      str r2, [sp, #4]
0050d2e4  00 20 9d e5                                      ldr r2, [sp]
0050d2e8  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
0050d2ec  02 c0 8c e0                                      add ip, ip, r2
0050d2f0  be a0 dc e1                                      ldrh sl, [ip, #0xe]
0050d2f4  bc 20 dc e1                                      ldrh r2, [ip, #0xc]
0050d2f8  01 10 8f e0                                      add r1, pc, r1
0050d2fc  0a a0 62 e0                                      rsb sl, r2, sl
0050d300  7a a0 ff e6                                      uxth sl, sl
0050d304  00 00 5a e3                                      cmp sl, #0
0050d308  2f 00 00 0a                                      beq #0x50d3cc
0050d30c  84 01 9f e5                                      ldr r0, [pc, #0x184]
0050d310  00 50 a0 e3                                      mov r5, #0
0050d314  02 70 a0 e1                                      mov r7, r2
0050d318  00 90 91 e7                                      ldr sb, [r1, r0]
0050d31c  70 10 93 e5                                      ldr r1, [r3, #0x70]
0050d320  05 70 87 e0                                      add r7, r7, r5
0050d324  08 80 93 e5                                      ldr r8, [r3, #8]
0050d328  91 07 07 e0                                      mul r7, r1, r7
0050d32c  00 30 99 e5                                      ldr r3, [sb]
0050d330  07 60 88 e0                                      add r6, r8, r7
0050d334  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
0050d338  03 00 52 e1                                      cmp r2, r3
0050d33c  19 00 00 0a                                      beq #0x50d3a8
0050d340  00 30 94 e5                                      ldr r3, [r4]
0050d344  04 00 a0 e1                                      mov r0, r4
0050d348  06 10 a0 e1                                      mov r1, r6
0050d34c  0f e0 a0 e1                                      mov lr, pc
0050d350  08 f1 93 e5                                      ldr pc, [r3, #0x108]
0050d354  00 00 50 e3                                      cmp r0, #0
0050d358  12 00 00 0a                                      beq #0x50d3a8
0050d35c  04 30 9d e5                                      ldr r3, [sp, #4]
0050d360  0c b0 96 e5                                      ldr fp, [r6, #0xc]
0050d364  00 00 93 e5                                      ldr r0, [r3]
0050d368  0c 10 9b e5                                      ldr r1, [fp, #0xc]
0050d36c  8e 05 f8 eb                                      bl #0x30e9ac
0050d370  00 00 50 e3                                      cmp r0, #0
0050d374  0b 00 00 0a                                      beq #0x50d3a8
0050d378  04 10 9d e5                                      ldr r1, [sp, #4]
0050d37c  04 00 91 e5                                      ldr r0, [r1, #4]
0050d380  10 10 9b e5                                      ldr r1, [fp, #0x10]
0050d384  88 05 f8 eb                                      bl #0x30e9ac
0050d388  00 00 50 e3                                      cmp r0, #0
0050d38c  05 00 00 0a                                      beq #0x50d3a8
0050d390  04 20 9d e5                                      ldr r2, [sp, #4]
0050d394  14 10 9b e5                                      ldr r1, [fp, #0x14]
0050d398  08 00 92 e5                                      ldr r0, [r2, #8]
0050d39c  82 05 f8 eb                                      bl #0x30e9ac
0050d3a0  00 00 50 e3                                      cmp r0, #0
0050d3a4  0a 00 00 1a                                      bne #0x50d3d4
0050d3a8  01 50 85 e2                                      add r5, r5, #1
0050d3ac  0a 00 55 e1                                      cmp r5, sl
0050d3b0  05 00 00 2a                                      bhs #0x50d3cc
0050d3b4  30 31 94 e5                                      ldr r3, [r4, #0x130]
0050d3b8  00 10 9d e5                                      ldr r1, [sp]
0050d3bc  20 20 93 e5                                      ldr r2, [r3, #0x20]
0050d3c0  01 20 82 e0                                      add r2, r2, r1
0050d3c4  bc 70 d2 e1                                      ldrh r7, [r2, #0xc]
0050d3c8  d3 ff ff ea                                      b #0x50d31c
0050d3cc  0c d0 8d e2                                      add sp, sp, #0xc
0050d3d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050d3d4  04 30 9d e5                                      ldr r3, [sp, #4]
0050d3d8  00 10 9b e5                                      ldr r1, [fp]
0050d3dc  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0050d3e0  33 04 f8 eb                                      bl #0x30e4b4
0050d3e4  00 00 50 e3                                      cmp r0, #0
0050d3e8  ee ff ff 0a                                      beq #0x50d3a8
0050d3ec  04 10 9d e5                                      ldr r1, [sp, #4]
0050d3f0  10 00 91 e5                                      ldr r0, [r1, #0x10]
0050d3f4  04 10 9b e5                                      ldr r1, [fp, #4]
0050d3f8  2d 04 f8 eb                                      bl #0x30e4b4
0050d3fc  00 00 50 e3                                      cmp r0, #0
0050d400  e8 ff ff 0a                                      beq #0x50d3a8
0050d404  04 20 9d e5                                      ldr r2, [sp, #4]
0050d408  08 10 9b e5                                      ldr r1, [fp, #8]
0050d40c  14 00 92 e5                                      ldr r0, [r2, #0x14]
0050d410  27 04 f8 eb                                      bl #0x30e4b4
0050d414  00 00 50 e3                                      cmp r0, #0
0050d418  e2 ff ff 0a                                      beq #0x50d3a8
0050d41c  07 20 98 e7                                      ldr r2, [r8, r7]
0050d420  04 10 96 e5                                      ldr r1, [r6, #4]
0050d424  58 31 94 e5                                      ldr r3, [r4, #0x158]
0050d428  00 20 92 e5                                      ldr r2, [r2]
0050d42c  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
0050d430  81 21 92 e7                                      ldr r2, [r2, r1, lsl #3]
0050d434  14 10 a0 e3                                      mov r1, #0x14
0050d438  91 32 23 e0                                      mla r3, r1, r2, r3
0050d43c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0050d440  08 10 93 e5                                      ldr r1, [r3, #8]
0050d444  00 00 51 e1                                      cmp r1, r0
0050d448  01 20 82 13                                      orrne r2, r2, #1
0050d44c  0c 20 83 e5                                      str r2, [r3, #0xc]
0050d450  00 30 99 e5                                      ldr r3, [sb]
0050d454  04 10 96 e5                                      ldr r1, [r6, #4]
0050d458  1c 30 86 e5                                      str r3, [r6, #0x1c]
0050d45c  07 20 98 e7                                      ldr r2, [r8, r7]
0050d460  58 31 94 e5                                      ldr r3, [r4, #0x158]
0050d464  00 20 92 e5                                      ldr r2, [r2]
0050d468  81 21 92 e7                                      ldr r2, [r2, r1, lsl #3]
0050d46c  14 10 a0 e3                                      mov r1, #0x14
0050d470  91 02 02 e0                                      mul r2, r1, r2
0050d474  02 10 83 e0                                      add r1, r3, r2
0050d478  10 c0 91 e5                                      ldr ip, [r1, #0x10]
0050d47c  02 10 93 e7                                      ldr r1, [r3, r2]
0050d480  0c c1 83 e0                                      add ip, r3, ip, lsl #2
0050d484  01 00 81 e2                                      add r0, r1, #1
0050d488  01 61 8c e7                                      str r6, [ip, r1, lsl #2]
0050d48c  02 00 83 e7                                      str r0, [r3, r2]
0050d490  c4 ff ff ea                                      b #0x50d3a8
; mapping-symbol data/literal pool
0050d494  98 77 48 00 b0 07 00 00                          .byte 0x98, 0x77, 0x48, 0x00, 0xb0, 0x07, 0x00, 0x00

; FUNCTION 0x0050d49c, declared_size=640, range_size=640, mode=arm
; class-group: void glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode18addVisibleSegmentsINS0_22SFrustumBoxIntersectorEEEvjT_
; demangled: void glitch::scene::CBatchSceneNode::addVisibleSegments<glitch::scene::SFrustumBoxIntersector>(unsigned int, glitch::scene::SFrustumBoxIntersector)
; decoder-mode: arm
0050d49c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050d4a0  00 40 a0 e1                                      mov r4, r0
0050d4a4  30 31 90 e5                                      ldr r3, [r0, #0x130]
0050d4a8  14 00 a0 e3                                      mov r0, #0x14
0050d4ac  90 01 01 e0                                      mul r1, r0, r1
0050d4b0  34 d0 4d e2                                      sub sp, sp, #0x34
0050d4b4  10 10 8d e5                                      str r1, [sp, #0x10]
0050d4b8  20 10 93 e5                                      ldr r1, [r3, #0x20]
0050d4bc  10 70 9d e5                                      ldr r7, [sp, #0x10]
0050d4c0  2c 20 8d e5                                      str r2, [sp, #0x2c]
0050d4c4  48 52 9f e5                                      ldr r5, [pc, #0x248]
0050d4c8  07 10 81 e0                                      add r1, r1, r7
0050d4cc  be c0 d1 e1                                      ldrh ip, [r1, #0xe]
0050d4d0  bc 20 d1 e1                                      ldrh r2, [r1, #0xc]
0050d4d4  05 50 8f e0                                      add r5, pc, r5
0050d4d8  20 50 8d e5                                      str r5, [sp, #0x20]
0050d4dc  0c 10 62 e0                                      rsb r1, r2, ip
0050d4e0  71 10 ff e6                                      uxth r1, r1
0050d4e4  00 00 51 e3                                      cmp r1, #0
0050d4e8  0c 10 8d e5                                      str r1, [sp, #0xc]
0050d4ec  86 00 00 0a                                      beq #0x50d70c
0050d4f0  20 c2 9f e5                                      ldr ip, [pc, #0x220]
0050d4f4  00 60 a0 e3                                      mov r6, #0
0050d4f8  0c 00 95 e7                                      ldr r0, [r5, ip]
0050d4fc  24 c0 8d e5                                      str ip, [sp, #0x24]
0050d500  14 00 8d e5                                      str r0, [sp, #0x14]
0050d504  0a 00 00 ea                                      b #0x50d534
0050d508  18 60 9d e5                                      ldr r6, [sp, #0x18]
0050d50c  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
0050d510  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0050d514  01 60 86 e2                                      add r6, r6, #1
0050d518  0c 00 56 e1                                      cmp r6, ip
0050d51c  7a 00 00 2a                                      bhs #0x50d70c
0050d520  30 31 94 e5                                      ldr r3, [r4, #0x130]
0050d524  10 00 9d e5                                      ldr r0, [sp, #0x10]
0050d528  20 20 93 e5                                      ldr r2, [r3, #0x20]
0050d52c  00 20 82 e0                                      add r2, r2, r0
0050d530  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
0050d534  70 10 93 e5                                      ldr r1, [r3, #0x70]
0050d538  06 20 82 e0                                      add r2, r2, r6
0050d53c  08 30 93 e5                                      ldr r3, [r3, #8]
0050d540  91 02 01 e0                                      mul r1, r1, r2
0050d544  0a 00 8d e8                                      stm sp, {r1, r3}
0050d548  04 20 9d e5                                      ldr r2, [sp, #4]
0050d54c  00 50 9d e5                                      ldr r5, [sp]
0050d550  14 10 9d e5                                      ldr r1, [sp, #0x14]
0050d554  05 80 82 e0                                      add r8, r2, r5
0050d558  00 30 91 e5                                      ldr r3, [r1]
0050d55c  1c 20 98 e5                                      ldr r2, [r8, #0x1c]
0050d560  03 00 52 e1                                      cmp r2, r3
0050d564  e9 ff ff 0a                                      beq #0x50d510
0050d568  00 30 94 e5                                      ldr r3, [r4]
0050d56c  04 00 a0 e1                                      mov r0, r4
0050d570  08 10 a0 e1                                      mov r1, r8
0050d574  0f e0 a0 e1                                      mov lr, pc
0050d578  08 f1 93 e5                                      ldr pc, [r3, #0x108]
0050d57c  00 00 50 e3                                      cmp r0, #0
0050d580  e2 ff ff 0a                                      beq #0x50d510
0050d584  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
0050d588  00 c0 a0 e3                                      mov ip, #0
0050d58c  0c 70 98 e5                                      ldr r7, [r8, #0xc]
0050d590  08 c0 8d e5                                      str ip, [sp, #8]
0050d594  28 80 8d e5                                      str r8, [sp, #0x28]
0050d598  18 60 8d e5                                      str r6, [sp, #0x18]
0050d59c  1c 40 8d e5                                      str r4, [sp, #0x1c]
0050d5a0  0c 80 95 e5                                      ldr r8, [r5, #0xc]
0050d5a4  00 10 a0 e3                                      mov r1, #0
0050d5a8  08 00 a0 e1                                      mov r0, r8
0050d5ac  c0 03 f8 eb                                      bl #0x30e4b4
0050d5b0  10 60 95 e5                                      ldr r6, [r5, #0x10]
0050d5b4  00 00 50 e3                                      cmp r0, #0
0050d5b8  00 10 a0 e3                                      mov r1, #0
0050d5bc  06 00 a0 e1                                      mov r0, r6
0050d5c0  00 b0 97 15                                      ldrne fp, [r7]
0050d5c4  0c b0 97 05                                      ldreq fp, [r7, #0xc]
0050d5c8  b9 03 f8 eb                                      bl #0x30e4b4
0050d5cc  14 40 95 e5                                      ldr r4, [r5, #0x14]
0050d5d0  00 00 50 e3                                      cmp r0, #0
0050d5d4  00 10 a0 e3                                      mov r1, #0
0050d5d8  04 00 a0 e1                                      mov r0, r4
0050d5dc  04 90 97 15                                      ldrne sb, [r7, #4]
0050d5e0  10 90 97 05                                      ldreq sb, [r7, #0x10]
0050d5e4  b2 03 f8 eb                                      bl #0x30e4b4
0050d5e8  0b 10 a0 e1                                      mov r1, fp
0050d5ec  00 00 50 e3                                      cmp r0, #0
0050d5f0  08 00 a0 e1                                      mov r0, r8
0050d5f4  08 a0 97 15                                      ldrne sl, [r7, #8]
0050d5f8  14 a0 97 05                                      ldreq sl, [r7, #0x14]
0050d5fc  da 05 f8 eb                                      bl #0x30ed6c
0050d600  09 10 a0 e1                                      mov r1, sb
0050d604  00 80 a0 e1                                      mov r8, r0
0050d608  06 00 a0 e1                                      mov r0, r6
0050d60c  d6 05 f8 eb                                      bl #0x30ed6c
0050d610  00 10 a0 e1                                      mov r1, r0
0050d614  08 00 a0 e1                                      mov r0, r8
0050d618  61 05 f8 eb                                      bl #0x30eba4
0050d61c  0a 10 a0 e1                                      mov r1, sl
0050d620  00 60 a0 e1                                      mov r6, r0
0050d624  04 00 a0 e1                                      mov r0, r4
0050d628  cf 05 f8 eb                                      bl #0x30ed6c
0050d62c  00 10 a0 e1                                      mov r1, r0
0050d630  06 00 a0 e1                                      mov r0, r6
0050d634  5a 05 f8 eb                                      bl #0x30eba4
0050d638  18 10 95 e5                                      ldr r1, [r5, #0x18]
0050d63c  58 05 f8 eb                                      bl #0x30eba4
0050d640  00 10 a0 e3                                      mov r1, #0
0050d644  2b 03 f8 eb                                      bl #0x30e2f8
0050d648  00 00 50 e3                                      cmp r0, #0
0050d64c  ad ff ff 1a                                      bne #0x50d508
0050d650  08 10 9d e5                                      ldr r1, [sp, #8]
0050d654  10 50 85 e2                                      add r5, r5, #0x10
0050d658  01 10 81 e2                                      add r1, r1, #1
0050d65c  06 00 51 e3                                      cmp r1, #6
0050d660  08 10 8d e5                                      str r1, [sp, #8]
0050d664  cd ff ff 1a                                      bne #0x50d5a0
0050d668  03 00 9d e8                                      ldm sp, {r0, r1}
0050d66c  28 80 9d e5                                      ldr r8, [sp, #0x28]
0050d670  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
0050d674  00 20 91 e7                                      ldr r2, [r1, r0]
0050d678  04 00 98 e5                                      ldr r0, [r8, #4]
0050d67c  58 31 94 e5                                      ldr r3, [r4, #0x158]
0050d680  00 10 92 e5                                      ldr r1, [r2]
0050d684  20 70 9d e5                                      ldr r7, [sp, #0x20]
0050d688  24 50 9d e5                                      ldr r5, [sp, #0x24]
0050d68c  80 11 91 e7                                      ldr r1, [r1, r0, lsl #3]
0050d690  14 00 a0 e3                                      mov r0, #0x14
0050d694  1c c0 98 e5                                      ldr ip, [r8, #0x1c]
0050d698  90 31 23 e0                                      mla r3, r0, r1, r3
0050d69c  05 20 97 e7                                      ldr r2, [r7, r5]
0050d6a0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0050d6a4  08 00 93 e5                                      ldr r0, [r3, #8]
0050d6a8  18 60 9d e5                                      ldr r6, [sp, #0x18]
0050d6ac  14 70 a0 e3                                      mov r7, #0x14
0050d6b0  0c 00 50 e1                                      cmp r0, ip
0050d6b4  01 10 81 13                                      orrne r1, r1, #1
0050d6b8  0c 10 83 e5                                      str r1, [r3, #0xc]
0050d6bc  00 30 92 e5                                      ldr r3, [r2]
0050d6c0  04 20 98 e5                                      ldr r2, [r8, #4]
0050d6c4  01 60 86 e2                                      add r6, r6, #1
0050d6c8  1c 30 88 e5                                      str r3, [r8, #0x1c]
0050d6cc  28 00 9d e8                                      ldm sp, {r3, r5}
0050d6d0  03 10 95 e7                                      ldr r1, [r5, r3]
0050d6d4  58 31 94 e5                                      ldr r3, [r4, #0x158]
0050d6d8  00 10 91 e5                                      ldr r1, [r1]
0050d6dc  82 21 91 e7                                      ldr r2, [r1, r2, lsl #3]
0050d6e0  97 02 02 e0                                      mul r2, r7, r2
0050d6e4  02 10 83 e0                                      add r1, r3, r2
0050d6e8  10 c0 91 e5                                      ldr ip, [r1, #0x10]
0050d6ec  02 10 93 e7                                      ldr r1, [r3, r2]
0050d6f0  0c c1 83 e0                                      add ip, r3, ip, lsl #2
0050d6f4  01 00 81 e2                                      add r0, r1, #1
0050d6f8  01 81 8c e7                                      str r8, [ip, r1, lsl #2]
0050d6fc  02 00 83 e7                                      str r0, [r3, r2]
0050d700  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0050d704  0c 00 56 e1                                      cmp r6, ip
0050d708  84 ff ff 3a                                      blo #0x50d520
0050d70c  34 d0 8d e2                                      add sp, sp, #0x34
0050d710  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0050d714  bc 75 48 00 b0 07 00 00                          .byte 0xbc, 0x75, 0x48, 0x00, 0xb0, 0x07, 0x00, 0x00
