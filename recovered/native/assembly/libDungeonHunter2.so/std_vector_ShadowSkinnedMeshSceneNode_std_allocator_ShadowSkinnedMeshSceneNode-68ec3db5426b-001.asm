; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00470d58, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<ShadowSkinnedMeshSceneNode*, std::allocator<ShadowSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP26ShadowSkinnedMeshSceneNodeSaIS1_EE20_M_compute_next_sizeEj
; demangled: std::vector<ShadowSkinnedMeshSceneNode*, std::allocator<ShadowSkinnedMeshSceneNode*> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00470d58  70 40 2d e9                                      push {r4, r5, r6, lr}
00470d5c  14 00 90 e8                                      ldm r0, {r2, r4}
00470d60  ff 3f 0f e3                                      movw r3, #0xffff
00470d64  ff 3f 43 e3                                      movt r3, #0x3fff
00470d68  04 40 62 e0                                      rsb r4, r2, r4
00470d6c  44 41 a0 e1                                      asr r4, r4, #2
00470d70  03 30 64 e0                                      rsb r3, r4, r3
00470d74  01 00 53 e1                                      cmp r3, r1
00470d78  01 50 a0 e1                                      mov r5, r1
00470d7c  08 00 00 3a                                      blo #0x470da4
00470d80  05 00 54 e1                                      cmp r4, r5
00470d84  04 00 84 20                                      addhs r0, r4, r4
00470d88  05 00 84 30                                      addlo r0, r4, r5
00470d8c  07 01 70 e3                                      cmn r0, #0xc0000001
00470d90  01 00 00 8a                                      bhi #0x470d9c
00470d94  04 00 50 e1                                      cmp r0, r4
00470d98  00 00 00 2a                                      bhs #0x470da0
00470d9c  03 01 e0 e3                                      mvn r0, #0xc0000000
00470da0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00470da4  08 00 9f e5                                      ldr r0, [pc, #8]
00470da8  00 00 8f e0                                      add r0, pc, r0
00470dac  23 60 0a eb                                      bl #0x708e40
00470db0  f2 ff ff ea                                      b #0x470d80
; mapping-symbol data/literal pool
00470db4  c0 d6 44 00                                      .byte 0xc0, 0xd6, 0x44, 0x00

; FUNCTION 0x00471584, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<ShadowSkinnedMeshSceneNode*, std::allocator<ShadowSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP26ShadowSkinnedMeshSceneNodeSaIS1_EE18_M_fill_insert_auxEPS1_jRKS1_RKSt12__false_type
; demangled: std::vector<ShadowSkinnedMeshSceneNode*, std::allocator<ShadowSkinnedMeshSceneNode*> >::_M_fill_insert_aux(ShadowSkinnedMeshSceneNode**, unsigned int, ShadowSkinnedMeshSceneNode* const&, std::__false_type const&)
; decoder-mode: arm
00471584  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00471588  00 c0 90 e5                                      ldr ip, [r0]
0047158c  03 50 a0 e1                                      mov r5, r3
00471590  14 d0 4d e2                                      sub sp, sp, #0x14
00471594  0c 00 53 e1                                      cmp r3, ip
00471598  00 40 a0 e1                                      mov r4, r0
0047159c  01 60 a0 e1                                      mov r6, r1
004715a0  02 30 a0 e1                                      mov r3, r2
004715a4  04 70 90 35                                      ldrlo r7, [r0, #4]
004715a8  0a 00 00 3a                                      blo #0x4715d8
004715ac  04 70 90 e5                                      ldr r7, [r0, #4]
004715b0  07 00 55 e1                                      cmp r5, r7
004715b4  07 00 00 2a                                      bhs #0x4715d8
004715b8  00 c0 95 e5                                      ldr ip, [r5]
004715bc  10 30 8d e2                                      add r3, sp, #0x10
004715c0  08 c0 23 e5                                      str ip, [r3, #-8]!
004715c4  0c c0 8d e2                                      add ip, sp, #0xc
004715c8  00 c0 8d e5                                      str ip, [sp]
004715cc  ec ff ff eb                                      bl #0x471584
004715d0  14 d0 8d e2                                      add sp, sp, #0x14
004715d4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004715d8  07 20 66 e0                                      rsb r2, r6, r7
004715dc  42 81 a0 e1                                      asr r8, r2, #2
004715e0  08 00 53 e1                                      cmp r3, r8
004715e4  1c 00 00 2a                                      bhs #0x47165c
004715e8  03 81 a0 e1                                      lsl r8, r3, #2
004715ec  07 30 68 e0                                      rsb r3, r8, r7
004715f0  07 00 53 e1                                      cmp r3, r7
004715f4  07 a0 a0 01                                      moveq sl, r7
004715f8  05 00 00 0a                                      beq #0x471614
004715fc  03 10 a0 e1                                      mov r1, r3
00471600  07 20 63 e0                                      rsb r2, r3, r7
00471604  07 00 a0 e1                                      mov r0, r7
00471608  03 a0 a0 e1                                      mov sl, r3
0047160c  95 74 fa eb                                      bl #0x30e868
00471610  04 30 94 e5                                      ldr r3, [r4, #4]
00471614  0a 20 66 e0                                      rsb r2, r6, sl
00471618  08 30 83 e0                                      add r3, r3, r8
0047161c  00 00 52 e3                                      cmp r2, #0
00471620  04 30 84 e5                                      str r3, [r4, #4]
00471624  02 00 00 da                                      ble #0x471634
00471628  07 00 62 e0                                      rsb r0, r2, r7
0047162c  06 10 a0 e1                                      mov r1, r6
00471630  40 72 fa eb                                      bl #0x30df38
00471634  48 81 a0 e1                                      asr r8, r8, #2
00471638  00 00 58 e3                                      cmp r8, #0
0047163c  e3 ff ff da                                      ble #0x4715d0
00471640  00 20 a0 e3                                      mov r2, #0
00471644  00 10 95 e5                                      ldr r1, [r5]
00471648  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
0047164c  01 20 82 e2                                      add r2, r2, #1
00471650  08 00 52 e1                                      cmp r2, r8
00471654  fa ff ff 1a                                      bne #0x471644
00471658  dc ff ff ea                                      b #0x4715d0
0047165c  03 30 68 e0                                      rsb r3, r8, r3
00471660  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
00471664  00 00 5a e3                                      cmp sl, #0
00471668  03 01 87 e0                                      add r0, r7, r3, lsl #2
0047166c  05 00 00 da                                      ble #0x471688
00471670  00 10 a0 e3                                      mov r1, #0
00471674  00 c0 95 e5                                      ldr ip, [r5]
00471678  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0047167c  01 10 81 e2                                      add r1, r1, #1
00471680  0a 00 51 e1                                      cmp r1, sl
00471684  fa ff ff 1a                                      bne #0x471674
00471688  07 00 56 e1                                      cmp r6, r7
0047168c  04 00 84 e5                                      str r0, [r4, #4]
00471690  02 00 00 0a                                      beq #0x4716a0
00471694  06 10 a0 e1                                      mov r1, r6
00471698  72 74 fa eb                                      bl #0x30e868
0047169c  04 00 94 e5                                      ldr r0, [r4, #4]
004716a0  08 01 80 e0                                      add r0, r0, r8, lsl #2
004716a4  00 00 58 e3                                      cmp r8, #0
004716a8  04 00 84 e5                                      str r0, [r4, #4]
004716ac  c7 ff ff da                                      ble #0x4715d0
004716b0  00 30 a0 e3                                      mov r3, #0
004716b4  00 20 95 e5                                      ldr r2, [r5]
004716b8  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
004716bc  01 30 83 e2                                      add r3, r3, #1
004716c0  03 00 58 e1                                      cmp r8, r3
004716c4  fa ff ff 1a                                      bne #0x4716b4
004716c8  c0 ff ff ea                                      b #0x4715d0

; FUNCTION 0x00472ffc, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<ShadowSkinnedMeshSceneNode*, std::allocator<ShadowSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP26ShadowSkinnedMeshSceneNodeSaIS1_EE14_M_fill_insertEPS1_jRKS1_
; demangled: std::vector<ShadowSkinnedMeshSceneNode*, std::allocator<ShadowSkinnedMeshSceneNode*> >::_M_fill_insert(ShadowSkinnedMeshSceneNode**, unsigned int, ShadowSkinnedMeshSceneNode* const&)
; decoder-mode: arm
00472ffc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00473000  00 60 52 e2                                      subs r6, r2, #0
00473004  14 d0 4d e2                                      sub sp, sp, #0x14
00473008  00 40 a0 e1                                      mov r4, r0
0047300c  01 70 a0 e1                                      mov r7, r1
00473010  03 50 a0 e1                                      mov r5, r3
00473014  30 00 00 0a                                      beq #0x4730dc
00473018  00 50 90 e9                                      ldmib r0, {ip, lr}
0047301c  0e c0 6c e0                                      rsb ip, ip, lr
00473020  4c 01 56 e1                                      cmp r6, ip, asr #2
00473024  2e 00 00 9a                                      bls #0x4730e4
00473028  06 10 a0 e1                                      mov r1, r6
0047302c  49 f7 ff eb                                      bl #0x470d58
00473030  10 20 8d e2                                      add r2, sp, #0x10
00473034  00 10 a0 e1                                      mov r1, r0
00473038  08 00 22 e5                                      str r0, [r2, #-8]!
0047303c  08 00 84 e2                                      add r0, r4, #8
00473040  b5 ff ff eb                                      bl #0x472f1c
00473044  00 10 94 e5                                      ldr r1, [r4]
00473048  00 80 a0 e1                                      mov r8, r0
0047304c  01 a0 57 e0                                      subs sl, r7, r1
00473050  00 00 a0 01                                      moveq r0, r0
00473054  02 00 00 0a                                      beq #0x473064
00473058  0a 20 a0 e1                                      mov r2, sl
0047305c  b5 6b fa eb                                      bl #0x30df38
00473060  0a 00 80 e0                                      add r0, r0, sl
00473064  06 20 a0 e1                                      mov r2, r6
00473068  00 30 a0 e3                                      mov r3, #0
0047306c  00 10 95 e5                                      ldr r1, [r5]
00473070  01 20 52 e2                                      subs r2, r2, #1
00473074  03 10 80 e7                                      str r1, [r0, r3]
00473078  04 30 83 e2                                      add r3, r3, #4
0047307c  fa ff ff 1a                                      bne #0x47306c
00473080  04 30 94 e5                                      ldr r3, [r4, #4]
00473084  06 01 80 e0                                      add r0, r0, r6, lsl #2
00473088  07 50 53 e0                                      subs r5, r3, r7
0047308c  00 60 a0 01                                      moveq r6, r0
00473090  03 00 00 0a                                      beq #0x4730a4
00473094  07 10 a0 e1                                      mov r1, r7
00473098  05 20 a0 e1                                      mov r2, r5
0047309c  a5 6b fa eb                                      bl #0x30df38
004730a0  05 60 80 e0                                      add r6, r0, r5
004730a4  00 00 94 e5                                      ldr r0, [r4]
004730a8  08 10 94 e5                                      ldr r1, [r4, #8]
004730ac  00 00 50 e3                                      cmp r0, #0
004730b0  04 00 00 0a                                      beq #0x4730c8
004730b4  01 10 60 e0                                      rsb r1, r0, r1
004730b8  03 10 c1 e3                                      bic r1, r1, #3
004730bc  80 00 51 e3                                      cmp r1, #0x80
004730c0  0b 00 00 8a                                      bhi #0x4730f4
004730c4  8d 57 0a eb                                      bl #0x708f00
004730c8  08 30 9d e5                                      ldr r3, [sp, #8]
004730cc  00 80 84 e5                                      str r8, [r4]
004730d0  04 60 84 e5                                      str r6, [r4, #4]
004730d4  03 81 88 e0                                      add r8, r8, r3, lsl #2
004730d8  08 80 84 e5                                      str r8, [r4, #8]
004730dc  14 d0 8d e2                                      add sp, sp, #0x14
004730e0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004730e4  0c c0 8d e2                                      add ip, sp, #0xc
004730e8  00 c0 8d e5                                      str ip, [sp]
004730ec  24 f9 ff eb                                      bl #0x471584
004730f0  f9 ff ff ea                                      b #0x4730dc
004730f4  d1 74 fa eb                                      bl #0x310440
004730f8  08 30 9d e5                                      ldr r3, [sp, #8]
004730fc  00 80 84 e5                                      str r8, [r4]
00473100  04 60 84 e5                                      str r6, [r4, #4]
00473104  03 81 88 e0                                      add r8, r8, r3, lsl #2
00473108  08 80 84 e5                                      str r8, [r4, #8]
0047310c  f2 ff ff ea                                      b #0x4730dc

; FUNCTION 0x00473110, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<ShadowSkinnedMeshSceneNode*, std::allocator<ShadowSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP26ShadowSkinnedMeshSceneNodeSaIS1_EE6resizeEjRKS1_
; demangled: std::vector<ShadowSkinnedMeshSceneNode*, std::allocator<ShadowSkinnedMeshSceneNode*> >::resize(unsigned int, ShadowSkinnedMeshSceneNode* const&)
; decoder-mode: arm
00473110  30 00 2d e9                                      push {r4, r5}
00473114  04 40 90 e5                                      ldr r4, [r0, #4]
00473118  00 50 90 e5                                      ldr r5, [r0]
0047311c  02 30 a0 e1                                      mov r3, r2
00473120  04 20 65 e0                                      rsb r2, r5, r4
00473124  42 21 a0 e1                                      asr r2, r2, #2
00473128  02 00 51 e1                                      cmp r1, r2
0047312c  04 00 00 2a                                      bhs #0x473144
00473130  01 51 85 e0                                      add r5, r5, r1, lsl #2
00473134  04 00 55 e1                                      cmp r5, r4
00473138  04 50 80 15                                      strne r5, [r0, #4]
0047313c  30 00 bd e8                                      pop {r4, r5}
00473140  1e ff 2f e1                                      bx lr
00473144  01 20 62 e0                                      rsb r2, r2, r1
00473148  04 10 a0 e1                                      mov r1, r4
0047314c  30 00 bd e8                                      pop {r4, r5}
00473150  a9 ff ff ea                                      b #0x472ffc
