; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00470cf8, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<XrayModularSkinnedMeshSceneNode*, std::allocator<XrayModularSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP31XrayModularSkinnedMeshSceneNodeSaIS1_EE20_M_compute_next_sizeEj
; demangled: std::vector<XrayModularSkinnedMeshSceneNode*, std::allocator<XrayModularSkinnedMeshSceneNode*> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00470cf8  70 40 2d e9                                      push {r4, r5, r6, lr}
00470cfc  14 00 90 e8                                      ldm r0, {r2, r4}
00470d00  ff 3f 0f e3                                      movw r3, #0xffff
00470d04  ff 3f 43 e3                                      movt r3, #0x3fff
00470d08  04 40 62 e0                                      rsb r4, r2, r4
00470d0c  44 41 a0 e1                                      asr r4, r4, #2
00470d10  03 30 64 e0                                      rsb r3, r4, r3
00470d14  01 00 53 e1                                      cmp r3, r1
00470d18  01 50 a0 e1                                      mov r5, r1
00470d1c  08 00 00 3a                                      blo #0x470d44
00470d20  05 00 54 e1                                      cmp r4, r5
00470d24  04 00 84 20                                      addhs r0, r4, r4
00470d28  05 00 84 30                                      addlo r0, r4, r5
00470d2c  07 01 70 e3                                      cmn r0, #0xc0000001
00470d30  01 00 00 8a                                      bhi #0x470d3c
00470d34  04 00 50 e1                                      cmp r0, r4
00470d38  00 00 00 2a                                      bhs #0x470d40
00470d3c  03 01 e0 e3                                      mvn r0, #0xc0000000
00470d40  70 80 bd e8                                      pop {r4, r5, r6, pc}
00470d44  08 00 9f e5                                      ldr r0, [pc, #8]
00470d48  00 00 8f e0                                      add r0, pc, r0
00470d4c  3b 60 0a eb                                      bl #0x708e40
00470d50  f2 ff ff ea                                      b #0x470d20
; mapping-symbol data/literal pool
00470d54  20 d7 44 00                                      .byte 0x20, 0xd7, 0x44, 0x00

; FUNCTION 0x0047143c, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<XrayModularSkinnedMeshSceneNode*, std::allocator<XrayModularSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP31XrayModularSkinnedMeshSceneNodeSaIS1_EE18_M_fill_insert_auxEPS1_jRKS1_RKSt12__false_type
; demangled: std::vector<XrayModularSkinnedMeshSceneNode*, std::allocator<XrayModularSkinnedMeshSceneNode*> >::_M_fill_insert_aux(XrayModularSkinnedMeshSceneNode**, unsigned int, XrayModularSkinnedMeshSceneNode* const&, std::__false_type const&)
; decoder-mode: arm
0047143c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00471440  00 c0 90 e5                                      ldr ip, [r0]
00471444  03 50 a0 e1                                      mov r5, r3
00471448  14 d0 4d e2                                      sub sp, sp, #0x14
0047144c  0c 00 53 e1                                      cmp r3, ip
00471450  00 40 a0 e1                                      mov r4, r0
00471454  01 60 a0 e1                                      mov r6, r1
00471458  02 30 a0 e1                                      mov r3, r2
0047145c  04 70 90 35                                      ldrlo r7, [r0, #4]
00471460  0a 00 00 3a                                      blo #0x471490
00471464  04 70 90 e5                                      ldr r7, [r0, #4]
00471468  07 00 55 e1                                      cmp r5, r7
0047146c  07 00 00 2a                                      bhs #0x471490
00471470  00 c0 95 e5                                      ldr ip, [r5]
00471474  10 30 8d e2                                      add r3, sp, #0x10
00471478  08 c0 23 e5                                      str ip, [r3, #-8]!
0047147c  0c c0 8d e2                                      add ip, sp, #0xc
00471480  00 c0 8d e5                                      str ip, [sp]
00471484  ec ff ff eb                                      bl #0x47143c
00471488  14 d0 8d e2                                      add sp, sp, #0x14
0047148c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00471490  07 20 66 e0                                      rsb r2, r6, r7
00471494  42 81 a0 e1                                      asr r8, r2, #2
00471498  08 00 53 e1                                      cmp r3, r8
0047149c  1c 00 00 2a                                      bhs #0x471514
004714a0  03 81 a0 e1                                      lsl r8, r3, #2
004714a4  07 30 68 e0                                      rsb r3, r8, r7
004714a8  07 00 53 e1                                      cmp r3, r7
004714ac  07 a0 a0 01                                      moveq sl, r7
004714b0  05 00 00 0a                                      beq #0x4714cc
004714b4  03 10 a0 e1                                      mov r1, r3
004714b8  07 20 63 e0                                      rsb r2, r3, r7
004714bc  07 00 a0 e1                                      mov r0, r7
004714c0  03 a0 a0 e1                                      mov sl, r3
004714c4  e7 74 fa eb                                      bl #0x30e868
004714c8  04 30 94 e5                                      ldr r3, [r4, #4]
004714cc  0a 20 66 e0                                      rsb r2, r6, sl
004714d0  08 30 83 e0                                      add r3, r3, r8
004714d4  00 00 52 e3                                      cmp r2, #0
004714d8  04 30 84 e5                                      str r3, [r4, #4]
004714dc  02 00 00 da                                      ble #0x4714ec
004714e0  07 00 62 e0                                      rsb r0, r2, r7
004714e4  06 10 a0 e1                                      mov r1, r6
004714e8  92 72 fa eb                                      bl #0x30df38
004714ec  48 81 a0 e1                                      asr r8, r8, #2
004714f0  00 00 58 e3                                      cmp r8, #0
004714f4  e3 ff ff da                                      ble #0x471488
004714f8  00 20 a0 e3                                      mov r2, #0
004714fc  00 10 95 e5                                      ldr r1, [r5]
00471500  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
00471504  01 20 82 e2                                      add r2, r2, #1
00471508  08 00 52 e1                                      cmp r2, r8
0047150c  fa ff ff 1a                                      bne #0x4714fc
00471510  dc ff ff ea                                      b #0x471488
00471514  03 30 68 e0                                      rsb r3, r8, r3
00471518  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
0047151c  00 00 5a e3                                      cmp sl, #0
00471520  03 01 87 e0                                      add r0, r7, r3, lsl #2
00471524  05 00 00 da                                      ble #0x471540
00471528  00 10 a0 e3                                      mov r1, #0
0047152c  00 c0 95 e5                                      ldr ip, [r5]
00471530  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
00471534  01 10 81 e2                                      add r1, r1, #1
00471538  0a 00 51 e1                                      cmp r1, sl
0047153c  fa ff ff 1a                                      bne #0x47152c
00471540  07 00 56 e1                                      cmp r6, r7
00471544  04 00 84 e5                                      str r0, [r4, #4]
00471548  02 00 00 0a                                      beq #0x471558
0047154c  06 10 a0 e1                                      mov r1, r6
00471550  c4 74 fa eb                                      bl #0x30e868
00471554  04 00 94 e5                                      ldr r0, [r4, #4]
00471558  08 01 80 e0                                      add r0, r0, r8, lsl #2
0047155c  00 00 58 e3                                      cmp r8, #0
00471560  04 00 84 e5                                      str r0, [r4, #4]
00471564  c7 ff ff da                                      ble #0x471488
00471568  00 30 a0 e3                                      mov r3, #0
0047156c  00 20 95 e5                                      ldr r2, [r5]
00471570  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
00471574  01 30 83 e2                                      add r3, r3, #1
00471578  03 00 58 e1                                      cmp r8, r3
0047157c  fa ff ff 1a                                      bne #0x47156c
00471580  c0 ff ff ea                                      b #0x471488

; FUNCTION 0x0047358c, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<XrayModularSkinnedMeshSceneNode*, std::allocator<XrayModularSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP31XrayModularSkinnedMeshSceneNodeSaIS1_EE14_M_fill_insertEPS1_jRKS1_
; demangled: std::vector<XrayModularSkinnedMeshSceneNode*, std::allocator<XrayModularSkinnedMeshSceneNode*> >::_M_fill_insert(XrayModularSkinnedMeshSceneNode**, unsigned int, XrayModularSkinnedMeshSceneNode* const&)
; decoder-mode: arm
0047358c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00473590  00 60 52 e2                                      subs r6, r2, #0
00473594  14 d0 4d e2                                      sub sp, sp, #0x14
00473598  00 40 a0 e1                                      mov r4, r0
0047359c  01 70 a0 e1                                      mov r7, r1
004735a0  03 50 a0 e1                                      mov r5, r3
004735a4  30 00 00 0a                                      beq #0x47366c
004735a8  00 50 90 e9                                      ldmib r0, {ip, lr}
004735ac  0e c0 6c e0                                      rsb ip, ip, lr
004735b0  4c 01 56 e1                                      cmp r6, ip, asr #2
004735b4  2e 00 00 9a                                      bls #0x473674
004735b8  06 10 a0 e1                                      mov r1, r6
004735bc  cd f5 ff eb                                      bl #0x470cf8
004735c0  10 20 8d e2                                      add r2, sp, #0x10
004735c4  00 10 a0 e1                                      mov r1, r0
004735c8  08 00 22 e5                                      str r0, [r2, #-8]!
004735cc  08 00 84 e2                                      add r0, r4, #8
004735d0  35 fe ff eb                                      bl #0x472eac
004735d4  00 10 94 e5                                      ldr r1, [r4]
004735d8  00 80 a0 e1                                      mov r8, r0
004735dc  01 a0 57 e0                                      subs sl, r7, r1
004735e0  00 00 a0 01                                      moveq r0, r0
004735e4  02 00 00 0a                                      beq #0x4735f4
004735e8  0a 20 a0 e1                                      mov r2, sl
004735ec  51 6a fa eb                                      bl #0x30df38
004735f0  0a 00 80 e0                                      add r0, r0, sl
004735f4  06 20 a0 e1                                      mov r2, r6
004735f8  00 30 a0 e3                                      mov r3, #0
004735fc  00 10 95 e5                                      ldr r1, [r5]
00473600  01 20 52 e2                                      subs r2, r2, #1
00473604  03 10 80 e7                                      str r1, [r0, r3]
00473608  04 30 83 e2                                      add r3, r3, #4
0047360c  fa ff ff 1a                                      bne #0x4735fc
00473610  04 30 94 e5                                      ldr r3, [r4, #4]
00473614  06 01 80 e0                                      add r0, r0, r6, lsl #2
00473618  07 50 53 e0                                      subs r5, r3, r7
0047361c  00 60 a0 01                                      moveq r6, r0
00473620  03 00 00 0a                                      beq #0x473634
00473624  07 10 a0 e1                                      mov r1, r7
00473628  05 20 a0 e1                                      mov r2, r5
0047362c  41 6a fa eb                                      bl #0x30df38
00473630  05 60 80 e0                                      add r6, r0, r5
00473634  00 00 94 e5                                      ldr r0, [r4]
00473638  08 10 94 e5                                      ldr r1, [r4, #8]
0047363c  00 00 50 e3                                      cmp r0, #0
00473640  04 00 00 0a                                      beq #0x473658
00473644  01 10 60 e0                                      rsb r1, r0, r1
00473648  03 10 c1 e3                                      bic r1, r1, #3
0047364c  80 00 51 e3                                      cmp r1, #0x80
00473650  0b 00 00 8a                                      bhi #0x473684
00473654  29 56 0a eb                                      bl #0x708f00
00473658  08 30 9d e5                                      ldr r3, [sp, #8]
0047365c  00 80 84 e5                                      str r8, [r4]
00473660  04 60 84 e5                                      str r6, [r4, #4]
00473664  03 81 88 e0                                      add r8, r8, r3, lsl #2
00473668  08 80 84 e5                                      str r8, [r4, #8]
0047366c  14 d0 8d e2                                      add sp, sp, #0x14
00473670  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00473674  0c c0 8d e2                                      add ip, sp, #0xc
00473678  00 c0 8d e5                                      str ip, [sp]
0047367c  6e f7 ff eb                                      bl #0x47143c
00473680  f9 ff ff ea                                      b #0x47366c
00473684  6d 73 fa eb                                      bl #0x310440
00473688  08 30 9d e5                                      ldr r3, [sp, #8]
0047368c  00 80 84 e5                                      str r8, [r4]
00473690  04 60 84 e5                                      str r6, [r4, #4]
00473694  03 81 88 e0                                      add r8, r8, r3, lsl #2
00473698  08 80 84 e5                                      str r8, [r4, #8]
0047369c  f2 ff ff ea                                      b #0x47366c

; FUNCTION 0x004736a0, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<XrayModularSkinnedMeshSceneNode*, std::allocator<XrayModularSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP31XrayModularSkinnedMeshSceneNodeSaIS1_EE6resizeEjRKS1_
; demangled: std::vector<XrayModularSkinnedMeshSceneNode*, std::allocator<XrayModularSkinnedMeshSceneNode*> >::resize(unsigned int, XrayModularSkinnedMeshSceneNode* const&)
; decoder-mode: arm
004736a0  30 00 2d e9                                      push {r4, r5}
004736a4  04 40 90 e5                                      ldr r4, [r0, #4]
004736a8  00 50 90 e5                                      ldr r5, [r0]
004736ac  02 30 a0 e1                                      mov r3, r2
004736b0  04 20 65 e0                                      rsb r2, r5, r4
004736b4  42 21 a0 e1                                      asr r2, r2, #2
004736b8  02 00 51 e1                                      cmp r1, r2
004736bc  04 00 00 2a                                      bhs #0x4736d4
004736c0  01 51 85 e0                                      add r5, r5, r1, lsl #2
004736c4  04 00 55 e1                                      cmp r5, r4
004736c8  04 50 80 15                                      strne r5, [r0, #4]
004736cc  30 00 bd e8                                      pop {r4, r5}
004736d0  1e ff 2f e1                                      bx lr
004736d4  01 20 62 e0                                      rsb r2, r2, r1
004736d8  04 10 a0 e1                                      mov r1, r4
004736dc  30 00 bd e8                                      pop {r4, r5}
004736e0  a9 ff ff ea                                      b #0x47358c
