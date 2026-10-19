; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00470db8, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<ShadowModularSkinnedMeshSceneNode*, std::allocator<ShadowModularSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP33ShadowModularSkinnedMeshSceneNodeSaIS1_EE20_M_compute_next_sizeEj
; demangled: std::vector<ShadowModularSkinnedMeshSceneNode*, std::allocator<ShadowModularSkinnedMeshSceneNode*> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00470db8  70 40 2d e9                                      push {r4, r5, r6, lr}
00470dbc  14 00 90 e8                                      ldm r0, {r2, r4}
00470dc0  ff 3f 0f e3                                      movw r3, #0xffff
00470dc4  ff 3f 43 e3                                      movt r3, #0x3fff
00470dc8  04 40 62 e0                                      rsb r4, r2, r4
00470dcc  44 41 a0 e1                                      asr r4, r4, #2
00470dd0  03 30 64 e0                                      rsb r3, r4, r3
00470dd4  01 00 53 e1                                      cmp r3, r1
00470dd8  01 50 a0 e1                                      mov r5, r1
00470ddc  08 00 00 3a                                      blo #0x470e04
00470de0  05 00 54 e1                                      cmp r4, r5
00470de4  04 00 84 20                                      addhs r0, r4, r4
00470de8  05 00 84 30                                      addlo r0, r4, r5
00470dec  07 01 70 e3                                      cmn r0, #0xc0000001
00470df0  01 00 00 8a                                      bhi #0x470dfc
00470df4  04 00 50 e1                                      cmp r0, r4
00470df8  00 00 00 2a                                      bhs #0x470e00
00470dfc  03 01 e0 e3                                      mvn r0, #0xc0000000
00470e00  70 80 bd e8                                      pop {r4, r5, r6, pc}
00470e04  08 00 9f e5                                      ldr r0, [pc, #8]
00470e08  00 00 8f e0                                      add r0, pc, r0
00470e0c  0b 60 0a eb                                      bl #0x708e40
00470e10  f2 ff ff ea                                      b #0x470de0
; mapping-symbol data/literal pool
00470e14  60 d6 44 00                                      .byte 0x60, 0xd6, 0x44, 0x00

; FUNCTION 0x004716cc, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<ShadowModularSkinnedMeshSceneNode*, std::allocator<ShadowModularSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP33ShadowModularSkinnedMeshSceneNodeSaIS1_EE18_M_fill_insert_auxEPS1_jRKS1_RKSt12__false_type
; demangled: std::vector<ShadowModularSkinnedMeshSceneNode*, std::allocator<ShadowModularSkinnedMeshSceneNode*> >::_M_fill_insert_aux(ShadowModularSkinnedMeshSceneNode**, unsigned int, ShadowModularSkinnedMeshSceneNode* const&, std::__false_type const&)
; decoder-mode: arm
004716cc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004716d0  00 c0 90 e5                                      ldr ip, [r0]
004716d4  03 50 a0 e1                                      mov r5, r3
004716d8  14 d0 4d e2                                      sub sp, sp, #0x14
004716dc  0c 00 53 e1                                      cmp r3, ip
004716e0  00 40 a0 e1                                      mov r4, r0
004716e4  01 60 a0 e1                                      mov r6, r1
004716e8  02 30 a0 e1                                      mov r3, r2
004716ec  04 70 90 35                                      ldrlo r7, [r0, #4]
004716f0  0a 00 00 3a                                      blo #0x471720
004716f4  04 70 90 e5                                      ldr r7, [r0, #4]
004716f8  07 00 55 e1                                      cmp r5, r7
004716fc  07 00 00 2a                                      bhs #0x471720
00471700  00 c0 95 e5                                      ldr ip, [r5]
00471704  10 30 8d e2                                      add r3, sp, #0x10
00471708  08 c0 23 e5                                      str ip, [r3, #-8]!
0047170c  0c c0 8d e2                                      add ip, sp, #0xc
00471710  00 c0 8d e5                                      str ip, [sp]
00471714  ec ff ff eb                                      bl #0x4716cc
00471718  14 d0 8d e2                                      add sp, sp, #0x14
0047171c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00471720  07 20 66 e0                                      rsb r2, r6, r7
00471724  42 81 a0 e1                                      asr r8, r2, #2
00471728  08 00 53 e1                                      cmp r3, r8
0047172c  1c 00 00 2a                                      bhs #0x4717a4
00471730  03 81 a0 e1                                      lsl r8, r3, #2
00471734  07 30 68 e0                                      rsb r3, r8, r7
00471738  07 00 53 e1                                      cmp r3, r7
0047173c  07 a0 a0 01                                      moveq sl, r7
00471740  05 00 00 0a                                      beq #0x47175c
00471744  03 10 a0 e1                                      mov r1, r3
00471748  07 20 63 e0                                      rsb r2, r3, r7
0047174c  07 00 a0 e1                                      mov r0, r7
00471750  03 a0 a0 e1                                      mov sl, r3
00471754  43 74 fa eb                                      bl #0x30e868
00471758  04 30 94 e5                                      ldr r3, [r4, #4]
0047175c  0a 20 66 e0                                      rsb r2, r6, sl
00471760  08 30 83 e0                                      add r3, r3, r8
00471764  00 00 52 e3                                      cmp r2, #0
00471768  04 30 84 e5                                      str r3, [r4, #4]
0047176c  02 00 00 da                                      ble #0x47177c
00471770  07 00 62 e0                                      rsb r0, r2, r7
00471774  06 10 a0 e1                                      mov r1, r6
00471778  ee 71 fa eb                                      bl #0x30df38
0047177c  48 81 a0 e1                                      asr r8, r8, #2
00471780  00 00 58 e3                                      cmp r8, #0
00471784  e3 ff ff da                                      ble #0x471718
00471788  00 20 a0 e3                                      mov r2, #0
0047178c  00 10 95 e5                                      ldr r1, [r5]
00471790  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
00471794  01 20 82 e2                                      add r2, r2, #1
00471798  08 00 52 e1                                      cmp r2, r8
0047179c  fa ff ff 1a                                      bne #0x47178c
004717a0  dc ff ff ea                                      b #0x471718
004717a4  03 30 68 e0                                      rsb r3, r8, r3
004717a8  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
004717ac  00 00 5a e3                                      cmp sl, #0
004717b0  03 01 87 e0                                      add r0, r7, r3, lsl #2
004717b4  05 00 00 da                                      ble #0x4717d0
004717b8  00 10 a0 e3                                      mov r1, #0
004717bc  00 c0 95 e5                                      ldr ip, [r5]
004717c0  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
004717c4  01 10 81 e2                                      add r1, r1, #1
004717c8  0a 00 51 e1                                      cmp r1, sl
004717cc  fa ff ff 1a                                      bne #0x4717bc
004717d0  07 00 56 e1                                      cmp r6, r7
004717d4  04 00 84 e5                                      str r0, [r4, #4]
004717d8  02 00 00 0a                                      beq #0x4717e8
004717dc  06 10 a0 e1                                      mov r1, r6
004717e0  20 74 fa eb                                      bl #0x30e868
004717e4  04 00 94 e5                                      ldr r0, [r4, #4]
004717e8  08 01 80 e0                                      add r0, r0, r8, lsl #2
004717ec  00 00 58 e3                                      cmp r8, #0
004717f0  04 00 84 e5                                      str r0, [r4, #4]
004717f4  c7 ff ff da                                      ble #0x471718
004717f8  00 30 a0 e3                                      mov r3, #0
004717fc  00 20 95 e5                                      ldr r2, [r5]
00471800  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
00471804  01 30 83 e2                                      add r3, r3, #1
00471808  03 00 58 e1                                      cmp r8, r3
0047180c  fa ff ff 1a                                      bne #0x4717fc
00471810  c0 ff ff ea                                      b #0x471718

; FUNCTION 0x00473154, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<ShadowModularSkinnedMeshSceneNode*, std::allocator<ShadowModularSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP33ShadowModularSkinnedMeshSceneNodeSaIS1_EE14_M_fill_insertEPS1_jRKS1_
; demangled: std::vector<ShadowModularSkinnedMeshSceneNode*, std::allocator<ShadowModularSkinnedMeshSceneNode*> >::_M_fill_insert(ShadowModularSkinnedMeshSceneNode**, unsigned int, ShadowModularSkinnedMeshSceneNode* const&)
; decoder-mode: arm
00473154  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00473158  00 60 52 e2                                      subs r6, r2, #0
0047315c  14 d0 4d e2                                      sub sp, sp, #0x14
00473160  00 40 a0 e1                                      mov r4, r0
00473164  01 70 a0 e1                                      mov r7, r1
00473168  03 50 a0 e1                                      mov r5, r3
0047316c  30 00 00 0a                                      beq #0x473234
00473170  00 50 90 e9                                      ldmib r0, {ip, lr}
00473174  0e c0 6c e0                                      rsb ip, ip, lr
00473178  4c 01 56 e1                                      cmp r6, ip, asr #2
0047317c  2e 00 00 9a                                      bls #0x47323c
00473180  06 10 a0 e1                                      mov r1, r6
00473184  0b f7 ff eb                                      bl #0x470db8
00473188  10 20 8d e2                                      add r2, sp, #0x10
0047318c  00 10 a0 e1                                      mov r1, r0
00473190  08 00 22 e5                                      str r0, [r2, #-8]!
00473194  08 00 84 e2                                      add r0, r4, #8
00473198  7b ff ff eb                                      bl #0x472f8c
0047319c  00 10 94 e5                                      ldr r1, [r4]
004731a0  00 80 a0 e1                                      mov r8, r0
004731a4  01 a0 57 e0                                      subs sl, r7, r1
004731a8  00 00 a0 01                                      moveq r0, r0
004731ac  02 00 00 0a                                      beq #0x4731bc
004731b0  0a 20 a0 e1                                      mov r2, sl
004731b4  5f 6b fa eb                                      bl #0x30df38
004731b8  0a 00 80 e0                                      add r0, r0, sl
004731bc  06 20 a0 e1                                      mov r2, r6
004731c0  00 30 a0 e3                                      mov r3, #0
004731c4  00 10 95 e5                                      ldr r1, [r5]
004731c8  01 20 52 e2                                      subs r2, r2, #1
004731cc  03 10 80 e7                                      str r1, [r0, r3]
004731d0  04 30 83 e2                                      add r3, r3, #4
004731d4  fa ff ff 1a                                      bne #0x4731c4
004731d8  04 30 94 e5                                      ldr r3, [r4, #4]
004731dc  06 01 80 e0                                      add r0, r0, r6, lsl #2
004731e0  07 50 53 e0                                      subs r5, r3, r7
004731e4  00 60 a0 01                                      moveq r6, r0
004731e8  03 00 00 0a                                      beq #0x4731fc
004731ec  07 10 a0 e1                                      mov r1, r7
004731f0  05 20 a0 e1                                      mov r2, r5
004731f4  4f 6b fa eb                                      bl #0x30df38
004731f8  05 60 80 e0                                      add r6, r0, r5
004731fc  00 00 94 e5                                      ldr r0, [r4]
00473200  08 10 94 e5                                      ldr r1, [r4, #8]
00473204  00 00 50 e3                                      cmp r0, #0
00473208  04 00 00 0a                                      beq #0x473220
0047320c  01 10 60 e0                                      rsb r1, r0, r1
00473210  03 10 c1 e3                                      bic r1, r1, #3
00473214  80 00 51 e3                                      cmp r1, #0x80
00473218  0b 00 00 8a                                      bhi #0x47324c
0047321c  37 57 0a eb                                      bl #0x708f00
00473220  08 30 9d e5                                      ldr r3, [sp, #8]
00473224  00 80 84 e5                                      str r8, [r4]
00473228  04 60 84 e5                                      str r6, [r4, #4]
0047322c  03 81 88 e0                                      add r8, r8, r3, lsl #2
00473230  08 80 84 e5                                      str r8, [r4, #8]
00473234  14 d0 8d e2                                      add sp, sp, #0x14
00473238  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0047323c  0c c0 8d e2                                      add ip, sp, #0xc
00473240  00 c0 8d e5                                      str ip, [sp]
00473244  20 f9 ff eb                                      bl #0x4716cc
00473248  f9 ff ff ea                                      b #0x473234
0047324c  7b 74 fa eb                                      bl #0x310440
00473250  08 30 9d e5                                      ldr r3, [sp, #8]
00473254  00 80 84 e5                                      str r8, [r4]
00473258  04 60 84 e5                                      str r6, [r4, #4]
0047325c  03 81 88 e0                                      add r8, r8, r3, lsl #2
00473260  08 80 84 e5                                      str r8, [r4, #8]
00473264  f2 ff ff ea                                      b #0x473234

; FUNCTION 0x00473268, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<ShadowModularSkinnedMeshSceneNode*, std::allocator<ShadowModularSkinnedMeshSceneNode*> >
; alias: _ZNSt6vectorIP33ShadowModularSkinnedMeshSceneNodeSaIS1_EE6resizeEjRKS1_
; demangled: std::vector<ShadowModularSkinnedMeshSceneNode*, std::allocator<ShadowModularSkinnedMeshSceneNode*> >::resize(unsigned int, ShadowModularSkinnedMeshSceneNode* const&)
; decoder-mode: arm
00473268  30 00 2d e9                                      push {r4, r5}
0047326c  04 40 90 e5                                      ldr r4, [r0, #4]
00473270  00 50 90 e5                                      ldr r5, [r0]
00473274  02 30 a0 e1                                      mov r3, r2
00473278  04 20 65 e0                                      rsb r2, r5, r4
0047327c  42 21 a0 e1                                      asr r2, r2, #2
00473280  02 00 51 e1                                      cmp r1, r2
00473284  04 00 00 2a                                      bhs #0x47329c
00473288  01 51 85 e0                                      add r5, r5, r1, lsl #2
0047328c  04 00 55 e1                                      cmp r5, r4
00473290  04 50 80 15                                      strne r5, [r0, #4]
00473294  30 00 bd e8                                      pop {r4, r5}
00473298  1e ff 2f e1                                      bx lr
0047329c  01 20 62 e0                                      rsb r2, r2, r1
004732a0  04 10 a0 e1                                      mov r1, r4
004732a4  30 00 bd e8                                      pop {r4, r5}
004732a8  a9 ff ff ea                                      b #0x473154
