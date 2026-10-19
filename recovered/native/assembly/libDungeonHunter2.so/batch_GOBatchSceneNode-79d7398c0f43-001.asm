; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050cd44, declared_size=108, range_size=108, mode=arm
; class-group: batch::GOBatchSceneNode
; alias: _ZN5batch16GOBatchSceneNode16isSegmentVisibleERKN6glitch5scene10CBatchMesh8SSegmentE
; demangled: batch::GOBatchSceneNode::isSegmentVisible(glitch::scene::CBatchMesh::SSegment const&)
; decoder-mode: arm
0050cd44  70 40 2d e9                                      push {r4, r5, r6, lr}
0050cd48  30 31 90 e5                                      ldr r3, [r0, #0x130]
0050cd4c  01 50 a0 e1                                      mov r5, r1
0050cd50  04 10 91 e5                                      ldr r1, [r1, #4]
0050cd54  08 20 93 e5                                      ldr r2, [r3, #8]
0050cd58  70 30 93 e5                                      ldr r3, [r3, #0x70]
0050cd5c  91 23 23 e0                                      mla r3, r1, r3, r2
0050cd60  2c 40 93 e5                                      ldr r4, [r3, #0x2c]
0050cd64  00 30 94 e5                                      ldr r3, [r4]
0050cd68  04 00 a0 e1                                      mov r0, r4
0050cd6c  0f e0 a0 e1                                      mov lr, pc
0050cd70  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
0050cd74  00 00 50 e3                                      cmp r0, #0
0050cd78  02 00 00 0a                                      beq #0x50cd88
0050cd7c  ee 32 d4 e5                                      ldrb r3, [r4, #0x2ee]
0050cd80  00 00 53 e3                                      cmp r3, #0
0050cd84  04 00 00 1a                                      bne #0x50cd9c
0050cd88  80 30 d4 e5                                      ldrb r3, [r4, #0x80]
0050cd8c  00 00 53 e3                                      cmp r3, #0
0050cd90  04 00 00 0a                                      beq #0x50cda8
0050cd94  20 00 d5 e5                                      ldrb r0, [r5, #0x20]
0050cd98  70 80 bd e8                                      pop {r4, r5, r6, pc}
0050cd9c  f0 32 d4 e5                                      ldrb r3, [r4, #0x2f0]
0050cda0  00 00 53 e3                                      cmp r3, #0
0050cda4  f7 ff ff 1a                                      bne #0x50cd88
0050cda8  00 00 a0 e3                                      mov r0, #0
0050cdac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0050cf08, declared_size=76, range_size=76, mode=arm
; class-group: batch::GOBatchSceneNode
; alias: _ZN5batch16GOBatchSceneNodeD1Ev
; demangled: batch::GOBatchSceneNode::~GOBatchSceneNode()
; decoder-mode: arm
0050cf08  38 30 9f e5                                      ldr r3, [pc, #0x38]
0050cf0c  38 20 9f e5                                      ldr r2, [pc, #0x38]
0050cf10  38 10 9f e5                                      ldr r1, [pc, #0x38]
0050cf14  03 30 8f e0                                      add r3, pc, r3
0050cf18  02 20 93 e7                                      ldr r2, [r3, r2]
0050cf1c  01 10 93 e7                                      ldr r1, [r3, r1]
0050cf20  10 40 2d e9                                      push {r4, lr}
0050cf24  4f cf 82 e2                                      add ip, r2, #0x13c
0050cf28  1c 20 82 e2                                      add r2, r2, #0x1c
0050cf2c  00 40 a0 e1                                      mov r4, r0
0050cf30  00 20 80 e5                                      str r2, [r0]
0050cf34  60 c1 80 e5                                      str ip, [r0, #0x160]
0050cf38  04 10 81 e2                                      add r1, r1, #4
0050cf3c  00 c9 01 eb                                      bl #0x57f344
0050cf40  04 00 a0 e1                                      mov r0, r4
0050cf44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0050cf48  7c 7b 48 00 d8 19 00 00 08 12 00 00              .byte 0x7c, 0x7b, 0x48, 0x00, 0xd8, 0x19, 0x00, 0x00, 0x08, 0x12, 0x00, 0x00

; FUNCTION 0x0050cf54, declared_size=16, range_size=16, mode=arm
; class-group: batch::GOBatchSceneNode
; alias: _ZTv0_n24_N5batch16GOBatchSceneNodeD1Ev
; demangled: virtual thunk to batch::GOBatchSceneNode::~GOBatchSceneNode()
; decoder-mode: arm
0050cf54  00 30 90 e5                                      ldr r3, [r0]
0050cf58  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0050cf5c  03 00 80 e0                                      add r0, r0, r3
0050cf60  e8 ff ff ea                                      b #0x50cf08

; FUNCTION 0x0050cf64, declared_size=16, range_size=16, mode=arm
; class-group: batch::GOBatchSceneNode
; alias: _ZTv0_n12_N5batch16GOBatchSceneNodeD1Ev
; demangled: virtual thunk to batch::GOBatchSceneNode::~GOBatchSceneNode()
; decoder-mode: arm
0050cf64  00 30 90 e5                                      ldr r3, [r0]
0050cf68  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0050cf6c  03 00 80 e0                                      add r0, r0, r3
0050cf70  e4 ff ff ea                                      b #0x50cf08

; FUNCTION 0x0050d71c, declared_size=928, range_size=928, mode=arm
; class-group: batch::GOBatchSceneNode
; alias: _ZN5batch16GOBatchSceneNode23updateSegmentVisibilityEv
; demangled: batch::GOBatchSceneNode::updateSegmentVisibility()
; decoder-mode: arm
0050d71c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050d720  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
0050d724  64 53 9f e5                                      ldr r5, [pc, #0x364]
0050d728  1c d0 4d e2                                      sub sp, sp, #0x1c
0050d72c  01 00 13 e3                                      tst r3, #1
0050d730  00 40 a0 e1                                      mov r4, r0
0050d734  05 50 8f e0                                      add r5, pc, r5
0050d738  01 00 00 1a                                      bne #0x50d744
0050d73c  1c d0 8d e2                                      add sp, sp, #0x1c
0050d740  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050d744  ae c3 01 eb                                      bl #0x57e604
0050d748  10 71 94 e5                                      ldr r7, [r4, #0x110]
0050d74c  00 60 a0 e1                                      mov r6, r0
0050d750  00 00 57 e3                                      cmp r7, #0
0050d754  7d 00 00 0a                                      beq #0x50d950
0050d758  07 00 a0 e1                                      mov r0, r7
0050d75c  04 10 a0 e1                                      mov r1, r4
0050d760  f0 f4 01 eb                                      bl #0x58ab28
0050d764  00 00 50 e3                                      cmp r0, #0
0050d768  f3 ff ff 1a                                      bne #0x50d73c
0050d76c  10 31 94 e5                                      ldr r3, [r4, #0x110]
0050d770  50 b2 d3 e5                                      ldrb fp, [r3, #0x250]
0050d774  00 00 5b e3                                      cmp fp, #0
0050d778  38 91 94 15                                      ldrne sb, [r4, #0x138]
0050d77c  50 02 c3 15                                      strbne r0, [r3, #0x250]
0050d780  10 31 94 15                                      ldrne r3, [r4, #0x110]
0050d784  0b a0 a0 01                                      moveq sl, fp
0050d788  0b 90 a0 01                                      moveq sb, fp
0050d78c  e4 a0 93 15                                      ldrne sl, [r3, #0xe4]
0050d790  00 00 56 e3                                      cmp r6, #0
0050d794  18 00 00 0a                                      beq #0x50d7fc
0050d798  00 80 a0 e3                                      mov r8, #0
0050d79c  08 70 a0 e1                                      mov r7, r8
0050d7a0  08 00 59 e3                                      cmp sb, #8
0050d7a4  09 f1 8f 90                                      addls pc, pc, sb, lsl #2
0050d7a8  0f 00 00 ea                                      b #0x50d7ec
0050d7ac  07 00 00 ea                                      b #0x50d7d0
0050d7b0  4b 00 00 ea                                      b #0x50d8e4
0050d7b4  3d 00 00 ea                                      b #0x50d8b0
0050d7b8  0b 00 00 ea                                      b #0x50d7ec
0050d7bc  03 00 00 ea                                      b #0x50d7d0
0050d7c0  09 00 00 ea                                      b #0x50d7ec
0050d7c4  08 00 00 ea                                      b #0x50d7ec
0050d7c8  07 00 00 ea                                      b #0x50d7ec
0050d7cc  2a 00 00 ea                                      b #0x50d87c
0050d7d0  50 31 d4 e5                                      ldrb r3, [r4, #0x150]
0050d7d4  04 00 a0 e1                                      mov r0, r4
0050d7d8  07 10 a0 e1                                      mov r1, r7
0050d7dc  00 00 53 e3                                      cmp r3, #0
0050d7e0  4c 00 00 0a                                      beq #0x50d918
0050d7e4  00 20 a0 e3                                      mov r2, #0
0050d7e8  6a fe ff eb                                      bl #0x50d198
0050d7ec  01 70 87 e2                                      add r7, r7, #1
0050d7f0  06 00 57 e1                                      cmp r7, r6
0050d7f4  14 80 88 e2                                      add r8, r8, #0x14
0050d7f8  e8 ff ff 1a                                      bne #0x50d7a0
0050d7fc  30 11 94 e5                                      ldr r1, [r4, #0x130]
0050d800  44 21 94 e5                                      ldr r2, [r4, #0x144]
0050d804  24 60 91 e5                                      ldr r6, [r1, #0x24]
0050d808  20 30 91 e5                                      ldr r3, [r1, #0x20]
0050d80c  06 30 63 e0                                      rsb r3, r3, r6
0050d810  43 31 a0 e1                                      asr r3, r3, #2
0050d814  83 60 83 e0                                      add r6, r3, r3, lsl #1
0050d818  06 62 86 e0                                      add r6, r6, r6, lsl #4
0050d81c  06 64 86 e0                                      add r6, r6, r6, lsl #8
0050d820  06 68 86 e0                                      add r6, r6, r6, lsl #16
0050d824  06 61 83 e0                                      add r6, r3, r6, lsl #2
0050d828  06 00 52 e1                                      cmp r2, r6
0050d82c  0d 00 00 2a                                      bhs #0x50d868
0050d830  14 30 a0 e3                                      mov r3, #0x14
0050d834  58 12 9f e5                                      ldr r1, [pc, #0x258]
0050d838  93 02 03 e0                                      mul r3, r3, r2
0050d83c  01 70 95 e7                                      ldr r7, [r5, r1]
0050d840  00 50 a0 e3                                      mov r5, #0
0050d844  58 11 94 e5                                      ldr r1, [r4, #0x158]
0050d848  00 c0 97 e5                                      ldr ip, [r7]
0050d84c  01 20 82 e2                                      add r2, r2, #1
0050d850  03 00 81 e0                                      add r0, r1, r3
0050d854  06 00 52 e1                                      cmp r2, r6
0050d858  08 c0 80 e5                                      str ip, [r0, #8]
0050d85c  03 50 81 e7                                      str r5, [r1, r3]
0050d860  14 30 83 e2                                      add r3, r3, #0x14
0050d864  f6 ff ff 3a                                      blo #0x50d844
0050d868  00 00 5b e3                                      cmp fp, #0
0050d86c  10 31 94 15                                      ldrne r3, [r4, #0x110]
0050d870  01 20 a0 13                                      movne r2, #1
0050d874  50 22 c3 15                                      strbne r2, [r3, #0x250]
0050d878  af ff ff ea                                      b #0x50d73c
0050d87c  00 30 9a e5                                      ldr r3, [sl]
0050d880  0a 00 a0 e1                                      mov r0, sl
0050d884  0f e0 a0 e1                                      mov lr, pc
0050d888  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0050d88c  07 10 a0 e1                                      mov r1, r7
0050d890  00 20 a0 e1                                      mov r2, r0
0050d894  01 70 87 e2                                      add r7, r7, #1
0050d898  04 00 a0 e1                                      mov r0, r4
0050d89c  43 fd ff eb                                      bl #0x50cdb0
0050d8a0  06 00 57 e1                                      cmp r7, r6
0050d8a4  14 80 88 e2                                      add r8, r8, #0x14
0050d8a8  bc ff ff 1a                                      bne #0x50d7a0
0050d8ac  d2 ff ff ea                                      b #0x50d7fc
0050d8b0  00 30 9a e5                                      ldr r3, [sl]
0050d8b4  0a 00 a0 e1                                      mov r0, sl
0050d8b8  0f e0 a0 e1                                      mov lr, pc
0050d8bc  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0050d8c0  07 10 a0 e1                                      mov r1, r7
0050d8c4  00 20 a0 e1                                      mov r2, r0
0050d8c8  01 70 87 e2                                      add r7, r7, #1
0050d8cc  04 00 a0 e1                                      mov r0, r4
0050d8d0  f1 fe ff eb                                      bl #0x50d49c
0050d8d4  06 00 57 e1                                      cmp r7, r6
0050d8d8  14 80 88 e2                                      add r8, r8, #0x14
0050d8dc  af ff ff 1a                                      bne #0x50d7a0
0050d8e0  c5 ff ff ea                                      b #0x50d7fc
0050d8e4  00 30 9a e5                                      ldr r3, [sl]
0050d8e8  0a 00 a0 e1                                      mov r0, sl
0050d8ec  0f e0 a0 e1                                      mov lr, pc
0050d8f0  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0050d8f4  07 10 a0 e1                                      mov r1, r7
0050d8f8  6c 20 80 e2                                      add r2, r0, #0x6c
0050d8fc  01 70 87 e2                                      add r7, r7, #1
0050d900  04 00 a0 e1                                      mov r0, r4
0050d904  6d fe ff eb                                      bl #0x50d2c0
0050d908  06 00 57 e1                                      cmp r7, r6
0050d90c  14 80 88 e2                                      add r8, r8, #0x14
0050d910  a2 ff ff 1a                                      bne #0x50d7a0
0050d914  b8 ff ff ea                                      b #0x50d7fc
0050d918  30 31 94 e5                                      ldr r3, [r4, #0x130]
0050d91c  58 21 94 e5                                      ldr r2, [r4, #0x158]
0050d920  01 70 87 e2                                      add r7, r7, #1
0050d924  20 30 93 e5                                      ldr r3, [r3, #0x20]
0050d928  06 00 57 e1                                      cmp r7, r6
0050d92c  08 30 83 e0                                      add r3, r3, r8
0050d930  bc 10 d3 e1                                      ldrh r1, [r3, #0xc]
0050d934  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
0050d938  03 30 61 e0                                      rsb r3, r1, r3
0050d93c  73 30 ff e6                                      uxth r3, r3
0050d940  08 30 82 e7                                      str r3, [r2, r8]
0050d944  14 80 88 e2                                      add r8, r8, #0x14
0050d948  94 ff ff 1a                                      bne #0x50d7a0
0050d94c  aa ff ff ea                                      b #0x50d7fc
0050d950  40 31 9f e5                                      ldr r3, [pc, #0x140]
0050d954  03 a0 95 e7                                      ldr sl, [r5, r3]
0050d958  10 30 9a e5                                      ldr r3, [sl, #0x10]
0050d95c  0a 00 a0 e1                                      mov r0, sl
0050d960  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0050d964  10 31 84 e5                                      str r3, [r4, #0x110]
0050d968  09 47 f8 eb                                      bl #0x31f594
0050d96c  00 80 50 e2                                      subs r8, r0, #0
0050d970  44 00 00 0a                                      beq #0x50da88
0050d974  86 bf 0b eb                                      bl #0x7fd794
0050d978  05 30 d0 e5                                      ldrb r3, [r0, #5]
0050d97c  00 00 53 e3                                      cmp r3, #0
0050d980  20 00 00 0a                                      beq #0x50da08
0050d984  40 00 9a e5                                      ldr r0, [sl, #0x40]
0050d988  b9 85 f9 eb                                      bl #0x36f074
0050d98c  08 11 9f e5                                      ldr r1, [pc, #0x108]
0050d990  08 31 9f e5                                      ldr r3, [pc, #0x108]
0050d994  01 c0 95 e7                                      ldr ip, [r5, r1]
0050d998  04 11 9f e5                                      ldr r1, [pc, #0x104]
0050d99c  03 20 95 e7                                      ldr r2, [r5, r3]
0050d9a0  00 31 9f e5                                      ldr r3, [pc, #0x100]
0050d9a4  01 e0 95 e7                                      ldr lr, [r5, r1]
0050d9a8  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
0050d9ac  03 30 95 e7                                      ldr r3, [r5, r3]
0050d9b0  00 c0 dc e5                                      ldrb ip, [ip]
0050d9b4  01 b0 95 e7                                      ldr fp, [r5, r1]
0050d9b8  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0050d9bc  00 e0 de e5                                      ldrb lr, [lr]
0050d9c0  00 20 92 e5                                      ldr r2, [r2]
0050d9c4  01 90 95 e7                                      ldr sb, [r5, r1]
0050d9c8  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0050d9cc  00 30 93 e5                                      ldr r3, [r3]
0050d9d0  00 90 99 e5                                      ldr sb, [sb]
0050d9d4  01 00 95 e7                                      ldr r0, [r5, r1]
0050d9d8  0c 11 98 e5                                      ldr r1, [r8, #0x10c]
0050d9dc  00 80 9b e5                                      ldr r8, [fp]
0050d9e0  00 b0 90 e5                                      ldr fp, [r0]
0050d9e4  0a 00 a0 e1                                      mov r0, sl
0050d9e8  0c 70 8d e5                                      str r7, [sp, #0xc]
0050d9ec  00 50 8d e8                                      stm sp, {ip, lr}
0050d9f0  08 80 8d e5                                      str r8, [sp, #8]
0050d9f4  10 90 8d e5                                      str sb, [sp, #0x10]
0050d9f8  14 b0 8d e5                                      str fp, [sp, #0x14]
0050d9fc  f1 78 f8 eb                                      bl #0x32bdc8
0050da00  10 71 94 e5                                      ldr r7, [r4, #0x110]
0050da04  53 ff ff ea                                      b #0x50d758
0050da08  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0050da0c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0050da10  01 70 95 e7                                      ldr r7, [r5, r1]
0050da14  88 10 9f e5                                      ldr r1, [pc, #0x88]
0050da18  03 20 95 e7                                      ldr r2, [r5, r3]
0050da1c  84 30 9f e5                                      ldr r3, [pc, #0x84]
0050da20  01 e0 95 e7                                      ldr lr, [r5, r1]
0050da24  80 10 9f e5                                      ldr r1, [pc, #0x80]
0050da28  03 30 95 e7                                      ldr r3, [r5, r3]
0050da2c  00 70 d7 e5                                      ldrb r7, [r7]
0050da30  01 b0 95 e7                                      ldr fp, [r5, r1]
0050da34  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0050da38  00 e0 de e5                                      ldrb lr, [lr]
0050da3c  00 20 92 e5                                      ldr r2, [r2]
0050da40  01 c0 95 e7                                      ldr ip, [r5, r1]
0050da44  64 10 9f e5                                      ldr r1, [pc, #0x64]
0050da48  00 30 93 e5                                      ldr r3, [r3]
0050da4c  00 c0 dc e5                                      ldrb ip, [ip]
0050da50  01 90 95 e7                                      ldr sb, [r5, r1]
0050da54  58 10 9f e5                                      ldr r1, [pc, #0x58]
0050da58  00 90 99 e5                                      ldr sb, [sb]
0050da5c  01 00 95 e7                                      ldr r0, [r5, r1]
0050da60  0c 11 98 e5                                      ldr r1, [r8, #0x10c]
0050da64  00 80 9b e5                                      ldr r8, [fp]
0050da68  00 b0 90 e5                                      ldr fp, [r0]
0050da6c  0a 00 a0 e1                                      mov r0, sl
0050da70  80 40 8d e8                                      stm sp, {r7, lr}
0050da74  08 80 8d e5                                      str r8, [sp, #8]
0050da78  0c c0 8d e5                                      str ip, [sp, #0xc]
0050da7c  10 90 8d e5                                      str sb, [sp, #0x10]
0050da80  14 b0 8d e5                                      str fp, [sp, #0x14]
0050da84  cf 78 f8 eb                                      bl #0x32bdc8
0050da88  10 71 94 e5                                      ldr r7, [r4, #0x110]
0050da8c  31 ff ff ea                                      b #0x50d758
; mapping-symbol data/literal pool
0050da90  5c 73 48 00 b0 07 00 00 f4 37 00 00 58 4c 00 00  .byte 0x5c, 0x73, 0x48, 0x00, 0xb0, 0x07, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x58, 0x4c, 0x00, 0x00
0050daa0  f8 2f 00 00 18 26 00 00 e0 46 00 00 2c 3d 00 00  .byte 0xf8, 0x2f, 0x00, 0x00, 0x18, 0x26, 0x00, 0x00, 0xe0, 0x46, 0x00, 0x00, 0x2c, 0x3d, 0x00, 0x00
0050dab0  10 3f 00 00 74 42 00 00 10 1d 00 00              .byte 0x10, 0x3f, 0x00, 0x00, 0x74, 0x42, 0x00, 0x00, 0x10, 0x1d, 0x00, 0x00

; FUNCTION 0x0050dabc, declared_size=124, range_size=124, mode=arm
; class-group: batch::GOBatchSceneNode
; alias: _ZN5batch16GOBatchSceneNodeD0Ev
; demangled: batch::GOBatchSceneNode::~GOBatchSceneNode()
; decoder-mode: arm
0050dabc  70 40 2d e9                                      push {r4, r5, r6, lr}
0050dac0  60 50 9f e5                                      ldr r5, [pc, #0x60]
0050dac4  60 30 9f e5                                      ldr r3, [pc, #0x60]
0050dac8  60 60 9f e5                                      ldr r6, [pc, #0x60]
0050dacc  05 50 8f e0                                      add r5, pc, r5
0050dad0  03 30 95 e7                                      ldr r3, [r5, r3]
0050dad4  06 60 95 e7                                      ldr r6, [r5, r6]
0050dad8  00 40 a0 e1                                      mov r4, r0
0050dadc  4f 2f 83 e2                                      add r2, r3, #0x13c
0050dae0  1c 30 83 e2                                      add r3, r3, #0x1c
0050dae4  04 10 86 e2                                      add r1, r6, #4
0050dae8  00 30 80 e5                                      str r3, [r0]
0050daec  60 21 80 e5                                      str r2, [r0, #0x160]
0050daf0  13 c6 01 eb                                      bl #0x57f344
0050daf4  30 20 96 e5                                      ldr r2, [r6, #0x30]
0050daf8  34 30 9f e5                                      ldr r3, [pc, #0x34]
0050dafc  34 10 96 e5                                      ldr r1, [r6, #0x34]
0050db00  00 20 84 e5                                      str r2, [r4]
0050db04  03 30 95 e7                                      ldr r3, [r5, r3]
0050db08  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0050db0c  04 00 a0 e1                                      mov r0, r4
0050db10  08 30 83 e2                                      add r3, r3, #8
0050db14  02 10 84 e7                                      str r1, [r4, r2]
0050db18  60 31 84 e5                                      str r3, [r4, #0x160]
0050db1c  47 0a f8 eb                                      bl #0x310440
0050db20  04 00 a0 e1                                      mov r0, r4
0050db24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0050db28  c4 6f 48 00 d8 19 00 00 08 12 00 00 44 2b 00 00  .byte 0xc4, 0x6f, 0x48, 0x00, 0xd8, 0x19, 0x00, 0x00, 0x08, 0x12, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x0050db38, declared_size=16, range_size=16, mode=arm
; class-group: batch::GOBatchSceneNode
; alias: _ZTv0_n24_N5batch16GOBatchSceneNodeD0Ev
; demangled: virtual thunk to batch::GOBatchSceneNode::~GOBatchSceneNode()
; decoder-mode: arm
0050db38  00 30 90 e5                                      ldr r3, [r0]
0050db3c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0050db40  03 00 80 e0                                      add r0, r0, r3
0050db44  dc ff ff ea                                      b #0x50dabc

; FUNCTION 0x0050db48, declared_size=16, range_size=16, mode=arm
; class-group: batch::GOBatchSceneNode
; alias: _ZTv0_n12_N5batch16GOBatchSceneNodeD0Ev
; demangled: virtual thunk to batch::GOBatchSceneNode::~GOBatchSceneNode()
; decoder-mode: arm
0050db48  00 30 90 e5                                      ldr r3, [r0]
0050db4c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0050db50  03 00 80 e0                                      add r0, r0, r3
0050db54  d8 ff ff ea                                      b #0x50dabc
