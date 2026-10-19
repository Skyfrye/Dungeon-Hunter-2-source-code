; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035dcd0, declared_size=28, range_size=28, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZNK33ShadowModularSkinnedMeshSceneNode14getBoundingBoxEv
; demangled: ShadowModularSkinnedMeshSceneNode::getBoundingBox() const
; decoder-mode: arm
0035dcd0  10 40 2d e9                                      push {r4, lr}
0035dcd4  c8 31 90 e5                                      ldr r3, [r0, #0x1c8]
0035dcd8  03 00 a0 e1                                      mov r0, r3
0035dcdc  00 30 93 e5                                      ldr r3, [r3]
0035dce0  0f e0 a0 e1                                      mov lr, pc
0035dce4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0035dce8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035dcec, declared_size=28, range_size=28, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZNK33ShadowModularSkinnedMeshSceneNode25getTransformedBoundingBoxEv
; demangled: ShadowModularSkinnedMeshSceneNode::getTransformedBoundingBox() const
; decoder-mode: arm
0035dcec  10 40 2d e9                                      push {r4, lr}
0035dcf0  c8 31 90 e5                                      ldr r3, [r0, #0x1c8]
0035dcf4  03 00 a0 e1                                      mov r0, r3
0035dcf8  00 30 93 e5                                      ldr r3, [r3]
0035dcfc  0f e0 a0 e1                                      mov lr, pc
0035dd00  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0035dd04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035f348, declared_size=488, range_size=488, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZN33ShadowModularSkinnedMeshSceneNode12UpdateShadowEv
; demangled: ShadowModularSkinnedMeshSceneNode::UpdateShadow()
; decoder-mode: arm
0035f348  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
0035f34c  d8 21 9f e5                                      ldr r2, [pc, #0x1d8]
0035f350  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035f354  03 30 8f e0                                      add r3, pc, r3
0035f358  02 20 93 e7                                      ldr r2, [r3, r2]
0035f35c  85 df 4d e2                                      sub sp, sp, #0x214
0035f360  00 50 a0 e3                                      mov r5, #0
0035f364  10 10 92 e5                                      ldr r1, [r2, #0x10]
0035f368  1a 7e 8d e2                                      add r7, sp, #0x1a0
0035f36c  40 80 a0 e3                                      mov r8, #0x40
0035f370  00 60 a0 e1                                      mov r6, r0
0035f374  08 20 a0 e1                                      mov r2, r8
0035f378  1c a0 91 e5                                      ldr sl, [r1, #0x1c]
0035f37c  07 00 a0 e1                                      mov r0, r7
0035f380  05 10 a0 e1                                      mov r1, r5
0035f384  35 bc fe eb                                      bl #0x30e460
0035f388  01 20 a0 e3                                      mov r2, #1
0035f38c  fe 45 a0 e3                                      mov r4, #0x3f800000
0035f390  00 30 a0 e3                                      mov r3, #0
0035f394  07 00 a0 e1                                      mov r0, r7
0035f398  7d 1f 8d e2                                      add r1, sp, #0x1f4
0035f39c  e0 21 cd e5                                      strb r2, [sp, #0x1e0]
0035f3a0  02 21 a0 e3                                      mov r2, #0x80000000
0035f3a4  f8 31 8d e5                                      str r3, [sp, #0x1f8]
0035f3a8  00 22 8d e5                                      str r2, [sp, #0x200]
0035f3ac  a0 41 8d e5                                      str r4, [sp, #0x1a0]
0035f3b0  b4 41 8d e5                                      str r4, [sp, #0x1b4]
0035f3b4  c8 41 8d e5                                      str r4, [sp, #0x1c8]
0035f3b8  dc 41 8d e5                                      str r4, [sp, #0x1dc]
0035f3bc  f4 31 8d e5                                      str r3, [sp, #0x1f4]
0035f3c0  fc 41 8d e5                                      str r4, [sp, #0x1fc]
0035f3c4  4f fa ff eb                                      bl #0x35dd08
0035f3c8  f4 31 9d e5                                      ldr r3, [sp, #0x1f4]
0035f3cc  57 9f 8d e2                                      add sb, sp, #0x15c
0035f3d0  01 ab 8a e2                                      add sl, sl, #0x400
0035f3d4  e4 31 8d e5                                      str r3, [sp, #0x1e4]
0035f3d8  f8 31 9d e5                                      ldr r3, [sp, #0x1f8]
0035f3dc  79 2f 8d e2                                      add r2, sp, #0x1e4
0035f3e0  0a 10 a0 e1                                      mov r1, sl
0035f3e4  e8 31 8d e5                                      str r3, [sp, #0x1e8]
0035f3e8  fc 31 9d e5                                      ldr r3, [sp, #0x1fc]
0035f3ec  09 00 a0 e1                                      mov r0, sb
0035f3f0  46 bf 8d e2                                      add fp, sp, #0x118
0035f3f4  ec 31 8d e5                                      str r3, [sp, #0x1ec]
0035f3f8  00 32 9d e5                                      ldr r3, [sp, #0x200]
0035f3fc  d4 a0 8d e2                                      add sl, sp, #0xd4
0035f400  f0 31 8d e5                                      str r3, [sp, #0x1f0]
0035f404  5f ff ff eb                                      bl #0x35f188
0035f408  81 0f 8d e2                                      add r0, sp, #0x204
0035f40c  cc 11 96 e5                                      ldr r1, [r6, #0x1cc]
0035f410  5a df 08 eb                                      bl #0x597180
0035f414  05 10 a0 e1                                      mov r1, r5
0035f418  08 20 a0 e1                                      mov r2, r8
0035f41c  0b 00 a0 e1                                      mov r0, fp
0035f420  0e bc fe eb                                      bl #0x30e460
0035f424  04 c2 9d e5                                      ldr ip, [sp, #0x204]
0035f428  08 e2 9d e5                                      ldr lr, [sp, #0x208]
0035f42c  0c 32 9d e5                                      ldr r3, [sp, #0x20c]
0035f430  08 20 a0 e1                                      mov r2, r8
0035f434  02 e1 8e e2                                      add lr, lr, #0x80000000
0035f438  02 c1 8c e2                                      add ip, ip, #0x80000000
0035f43c  02 31 83 e2                                      add r3, r3, #0x80000000
0035f440  05 10 a0 e1                                      mov r1, r5
0035f444  0a 00 a0 e1                                      mov r0, sl
0035f448  4c e1 8d e5                                      str lr, [sp, #0x14c]
0035f44c  48 c1 8d e5                                      str ip, [sp, #0x148]
0035f450  50 31 8d e5                                      str r3, [sp, #0x150]
0035f454  18 41 8d e5                                      str r4, [sp, #0x118]
0035f458  2c 41 8d e5                                      str r4, [sp, #0x12c]
0035f45c  40 41 8d e5                                      str r4, [sp, #0x140]
0035f460  54 41 8d e5                                      str r4, [sp, #0x154]
0035f464  58 51 cd e5                                      strb r5, [sp, #0x158]
0035f468  fc bb fe eb                                      bl #0x30e460
0035f46c  41 14 a0 e3                                      mov r1, #0x41000000
0035f470  04 02 9d e5                                      ldr r0, [sp, #0x204]
0035f474  02 16 81 e2                                      add r1, r1, #0x200000
0035f478  10 41 8d e5                                      str r4, [sp, #0x110]
0035f47c  d4 40 8d e5                                      str r4, [sp, #0xd4]
0035f480  e8 40 8d e5                                      str r4, [sp, #0xe8]
0035f484  fc 40 8d e5                                      str r4, [sp, #0xfc]
0035f488  c5 bd fe eb                                      bl #0x30eba4
0035f48c  c1 14 a0 e3                                      mov r1, #0xc1000000
0035f490  00 30 a0 e1                                      mov r3, r0
0035f494  02 16 81 e2                                      add r1, r1, #0x200000
0035f498  08 02 9d e5                                      ldr r0, [sp, #0x208]
0035f49c  00 30 8d e5                                      str r3, [sp]
0035f4a0  bf bd fe eb                                      bl #0x30eba4
0035f4a4  41 14 a0 e3                                      mov r1, #0x41000000
0035f4a8  00 c0 a0 e1                                      mov ip, r0
0035f4ac  02 16 81 e2                                      add r1, r1, #0x200000
0035f4b0  0c 02 9d e5                                      ldr r0, [sp, #0x20c]
0035f4b4  04 c0 8d e5                                      str ip, [sp, #4]
0035f4b8  b9 bd fe eb                                      bl #0x30eba4
0035f4bc  08 10 9d e8                                      ldm sp, {r3, ip}
0035f4c0  4c 40 8d e2                                      add r4, sp, #0x4c
0035f4c4  0c 01 8d e5                                      str r0, [sp, #0x10c]
0035f4c8  0a 10 a0 e1                                      mov r1, sl
0035f4cc  09 20 a0 e1                                      mov r2, sb
0035f4d0  04 00 a0 e1                                      mov r0, r4
0035f4d4  08 80 8d e2                                      add r8, sp, #8
0035f4d8  04 31 8d e5                                      str r3, [sp, #0x104]
0035f4dc  08 c1 8d e5                                      str ip, [sp, #0x108]
0035f4e0  14 51 cd e5                                      strb r5, [sp, #0x114]
0035f4e4  2b fd ff eb                                      bl #0x35e998
0035f4e8  04 10 a0 e1                                      mov r1, r4
0035f4ec  07 20 a0 e1                                      mov r2, r7
0035f4f0  08 00 a0 e1                                      mov r0, r8
0035f4f4  90 40 8d e2                                      add r4, sp, #0x90
0035f4f8  26 fd ff eb                                      bl #0x35e998
0035f4fc  08 10 a0 e1                                      mov r1, r8
0035f500  04 00 a0 e1                                      mov r0, r4
0035f504  0b 20 a0 e1                                      mov r2, fp
0035f508  22 fd ff eb                                      bl #0x35e998
0035f50c  06 00 a0 e1                                      mov r0, r6
0035f510  04 10 a0 e1                                      mov r1, r4
0035f514  00 30 96 e5                                      ldr r3, [r6]
0035f518  0f e0 a0 e1                                      mov lr, pc
0035f51c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0035f520  85 df 8d e2                                      add sp, sp, #0x214
0035f524  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0035f528  3c 57 63 00 f4 37 00 00                          .byte 0x3c, 0x57, 0x63, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0035f530, declared_size=592, range_size=592, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZN33ShadowModularSkinnedMeshSceneNode19onRegisterSceneNodeEv
; demangled: ShadowModularSkinnedMeshSceneNode::onRegisterSceneNode()
; decoder-mode: arm
0035f530  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035f534  30 72 9f e5                                      ldr r7, [pc, #0x230]
0035f538  30 22 9f e5                                      ldr r2, [pc, #0x230]
0035f53c  44 d0 4d e2                                      sub sp, sp, #0x44
0035f540  07 70 8f e0                                      add r7, pc, r7
0035f544  02 30 97 e7                                      ldr r3, [r7, r2]
0035f548  14 20 8d e5                                      str r2, [sp, #0x14]
0035f54c  00 50 a0 e1                                      mov r5, r0
0035f550  00 30 93 e5                                      ldr r3, [r3]
0035f554  3c 30 8d e5                                      str r3, [sp, #0x3c]
0035f558  7a ff ff eb                                      bl #0x35f348
0035f55c  10 32 9f e5                                      ldr r3, [pc, #0x210]
0035f560  34 21 95 e5                                      ldr r2, [r5, #0x134]
0035f564  03 30 97 e7                                      ldr r3, [r7, r3]
0035f568  00 00 52 e3                                      cmp r2, #0
0035f56c  10 30 93 e5                                      ldr r3, [r3, #0x10]
0035f570  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0035f574  18 84 93 e5                                      ldr r8, [r3, #0x418]
0035f578  69 00 00 0a                                      beq #0x35f724
0035f57c  f4 31 9f e5                                      ldr r3, [pc, #0x1f4]
0035f580  24 40 8d e2                                      add r4, sp, #0x24
0035f584  03 60 97 e7                                      ldr r6, [r7, r3]
0035f588  06 00 a0 e1                                      mov r0, r6
0035f58c  bd 60 ff eb                                      bl #0x337888
0035f590  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
0035f594  04 00 a0 e1                                      mov r0, r4
0035f598  34 40 8d e5                                      str r4, [sp, #0x34]
0035f59c  01 10 8f e0                                      add r1, pc, r1
0035f5a0  20 10 81 e2                                      add r1, r1, #0x20
0035f5a4  38 40 8d e5                                      str r4, [sp, #0x38]
0035f5a8  29 fe ff eb                                      bl #0x35ee54
0035f5ac  06 00 a0 e1                                      mov r0, r6
0035f5b0  04 10 a0 e1                                      mov r1, r4
0035f5b4  33 61 ff eb                                      bl #0x337a88
0035f5b8  00 60 50 e2                                      subs r6, r0, #0
0035f5bc  06 00 00 0a                                      beq #0x35f5dc
0035f5c0  08 00 a0 e1                                      mov r0, r8
0035f5c4  00 10 a0 e3                                      mov r1, #0
0035f5c8  4a bb fe eb                                      bl #0x30e2f8
0035f5cc  00 00 50 e3                                      cmp r0, #0
0035f5d0  00 60 a0 e3                                      mov r6, #0
0035f5d4  01 60 a0 13                                      movne r6, #1
0035f5d8  76 60 ef e6                                      uxtb r6, r6
0035f5dc  38 00 9d e5                                      ldr r0, [sp, #0x38]
0035f5e0  04 00 50 e1                                      cmp r0, r4
0035f5e4  06 00 00 0a                                      beq #0x35f604
0035f5e8  00 00 50 e3                                      cmp r0, #0
0035f5ec  04 00 00 0a                                      beq #0x35f604
0035f5f0  24 10 9d e5                                      ldr r1, [sp, #0x24]
0035f5f4  01 10 60 e0                                      rsb r1, r0, r1
0035f5f8  80 00 51 e3                                      cmp r1, #0x80
0035f5fc  57 00 00 8a                                      bhi #0x35f760
0035f600  3e a6 0e eb                                      bl #0x708f00
0035f604  00 00 56 e3                                      cmp r6, #0
0035f608  45 00 00 0a                                      beq #0x35f724
0035f60c  10 31 95 e5                                      ldr r3, [r5, #0x110]
0035f610  14 a0 93 e5                                      ldr sl, [r3, #0x14]
0035f614  00 00 5a e3                                      cmp sl, #0
0035f618  41 00 00 0a                                      beq #0x35f724
0035f61c  34 31 95 e5                                      ldr r3, [r5, #0x134]
0035f620  03 00 a0 e1                                      mov r0, r3
0035f624  00 30 93 e5                                      ldr r3, [r3]
0035f628  0f e0 a0 e1                                      mov lr, pc
0035f62c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0035f630  00 90 50 e2                                      subs sb, r0, #0
0035f634  3a 00 00 0a                                      beq #0x35f724
0035f638  00 40 a0 e3                                      mov r4, #0
0035f63c  01 60 a0 e3                                      mov r6, #1
0035f640  20 b0 8d e2                                      add fp, sp, #0x20
0035f644  1c 80 8d e2                                      add r8, sp, #0x1c
0035f648  07 00 00 ea                                      b #0x35f66c
0035f64c  05 00 50 e3                                      cmp r0, #5
0035f650  3c 00 00 0a                                      beq #0x35f748
0035f654  08 00 a0 e1                                      mov r0, r8
0035f658  62 c5 fe eb                                      bl #0x310be8
0035f65c  06 00 59 e1                                      cmp sb, r6
0035f660  01 40 84 e2                                      add r4, r4, #1
0035f664  01 60 86 e2                                      add r6, r6, #1
0035f668  2d 00 00 9a                                      bls #0x35f724
0035f66c  34 31 95 e5                                      ldr r3, [r5, #0x134]
0035f670  0b 00 a0 e1                                      mov r0, fp
0035f674  04 20 a0 e1                                      mov r2, r4
0035f678  03 10 a0 e1                                      mov r1, r3
0035f67c  00 30 93 e5                                      ldr r3, [r3]
0035f680  0f e0 a0 e1                                      mov lr, pc
0035f684  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0035f688  20 00 9d e5                                      ldr r0, [sp, #0x20]
0035f68c  00 00 50 e3                                      cmp r0, #0
0035f690  f1 ff ff 0a                                      beq #0x35f65c
0035f694  ba f7 fe eb                                      bl #0x31d584
0035f698  80 21 95 e5                                      ldr r2, [r5, #0x180]
0035f69c  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
0035f6a0  00 10 a0 e3                                      mov r1, #0
0035f6a4  04 21 92 e7                                      ldr r2, [r2, r4, lsl #2]
0035f6a8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0035f6ac  00 00 53 e3                                      cmp r3, #0
0035f6b0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0035f6b4  00 20 93 15                                      ldrne r2, [r3]
0035f6b8  01 20 82 12                                      addne r2, r2, #1
0035f6bc  00 20 83 15                                      strne r2, [r3]
0035f6c0  34 31 95 e5                                      ldr r3, [r5, #0x134]
0035f6c4  0a 20 a0 e1                                      mov r2, sl
0035f6c8  03 00 a0 e1                                      mov r0, r3
0035f6cc  00 c0 93 e5                                      ldr ip, [r3]
0035f6d0  04 30 a0 e1                                      mov r3, r4
0035f6d4  0f e0 a0 e1                                      mov lr, pc
0035f6d8  38 f0 9c e5                                      ldr pc, [ip, #0x38]
0035f6dc  04 00 50 e3                                      cmp r0, #4
0035f6e0  10 00 50 13                                      cmpne r0, #0x10
0035f6e4  d8 ff ff 1a                                      bne #0x35f64c
0035f6e8  10 31 95 e5                                      ldr r3, [r5, #0x110]
0035f6ec  05 10 a0 e1                                      mov r1, r5
0035f6f0  08 20 a0 e1                                      mov r2, r8
0035f6f4  00 c0 93 e5                                      ldr ip, [r3]
0035f6f8  03 00 a0 e1                                      mov r0, r3
0035f6fc  06 30 a0 e3                                      mov r3, #6
0035f700  00 30 8d e5                                      str r3, [sp]
0035f704  00 30 a0 e3                                      mov r3, #0
0035f708  04 30 8d e5                                      str r3, [sp, #4]
0035f70c  02 31 e0 e3                                      mvn r3, #0x80000000
0035f710  08 30 8d e5                                      str r3, [sp, #8]
0035f714  06 30 a0 e1                                      mov r3, r6
0035f718  0f e0 a0 e1                                      mov lr, pc
0035f71c  24 f0 9c e5                                      ldr pc, [ip, #0x24]
0035f720  cb ff ff ea                                      b #0x35f654
0035f724  14 20 9d e5                                      ldr r2, [sp, #0x14]
0035f728  01 00 a0 e3                                      mov r0, #1
0035f72c  02 30 97 e7                                      ldr r3, [r7, r2]
0035f730  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0035f734  00 30 93 e5                                      ldr r3, [r3]
0035f738  03 00 52 e1                                      cmp r2, r3
0035f73c  09 00 00 1a                                      bne #0x35f768
0035f740  44 d0 8d e2                                      add sp, sp, #0x44
0035f744  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035f748  34 31 95 e5                                      ldr r3, [r5, #0x134]
0035f74c  03 00 a0 e1                                      mov r0, r3
0035f750  00 30 93 e5                                      ldr r3, [r3]
0035f754  0f e0 a0 e1                                      mov lr, pc
0035f758  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0035f75c  bc ff ff ea                                      b #0x35f654
0035f760  36 c3 fe eb                                      bl #0x310440
0035f764  a6 ff ff ea                                      b #0x35f604
0035f768  e8 ba fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0035f76c  50 55 63 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0x50, 0x55, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
0035f77c  b4 04 56 00                                      .byte 0xb4, 0x04, 0x56, 0x00

; FUNCTION 0x003601fc, declared_size=208, range_size=208, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZN33ShadowModularSkinnedMeshSceneNodeD1Ev
; demangled: ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode()
; decoder-mode: arm
003601fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00360200  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
00360204  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00360208  00 40 a0 e1                                      mov r4, r0
0036020c  05 50 8f e0                                      add r5, pc, r5
00360210  03 30 95 e7                                      ldr r3, [r5, r3]
00360214  6f 0f 80 e2                                      add r0, r0, #0x1bc
00360218  4a 2f 83 e2                                      add r2, r3, #0x128
0036021c  1c 30 83 e2                                      add r3, r3, #0x1c
00360220  00 30 84 e5                                      str r3, [r4]
00360224  d0 21 84 e5                                      str r2, [r4, #0x1d0]
00360228  e8 fd ff eb                                      bl #0x35f9d0
0036022c  1b 0e 84 e2                                      add r0, r4, #0x1b0
00360230  09 fe ff eb                                      bl #0x35fa5c
00360234  69 0f 84 e2                                      add r0, r4, #0x1a4
00360238  e4 fd ff eb                                      bl #0x35f9d0
0036023c  66 0f 84 e2                                      add r0, r4, #0x198
00360240  05 fe ff eb                                      bl #0x35fa5c
00360244  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
00360248  63 3f 84 e2                                      add r3, r4, #0x18c
0036024c  00 00 50 e3                                      cmp r0, #0
00360250  05 00 00 0a                                      beq #0x36026c
00360254  08 10 93 e5                                      ldr r1, [r3, #8]
00360258  01 10 60 e0                                      rsb r1, r0, r1
0036025c  03 10 c1 e3                                      bic r1, r1, #3
00360260  80 00 51 e3                                      cmp r1, #0x80
00360264  11 00 00 8a                                      bhi #0x3602b0
00360268  24 a3 0e eb                                      bl #0x708f00
0036026c  80 01 94 e5                                      ldr r0, [r4, #0x180]
00360270  06 3d 84 e2                                      add r3, r4, #0x180
00360274  00 00 50 e3                                      cmp r0, #0
00360278  05 00 00 0a                                      beq #0x360294
0036027c  08 10 93 e5                                      ldr r1, [r3, #8]
00360280  01 10 60 e0                                      rsb r1, r0, r1
00360284  03 10 c1 e3                                      bic r1, r1, #3
00360288  80 00 51 e3                                      cmp r1, #0x80
0036028c  09 00 00 8a                                      bhi #0x3602b8
00360290  1a a3 0e eb                                      bl #0x708f00
00360294  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00360298  04 00 a0 e1                                      mov r0, r4
0036029c  01 10 95 e7                                      ldr r1, [r5, r1]
003602a0  04 10 81 e2                                      add r1, r1, #4
003602a4  c4 ed ff eb                                      bl #0x35b9bc
003602a8  04 00 a0 e1                                      mov r0, r4
003602ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
003602b0  62 c0 fe eb                                      bl #0x310440
003602b4  ec ff ff ea                                      b #0x36026c
003602b8  60 c0 fe eb                                      bl #0x310440
003602bc  f4 ff ff ea                                      b #0x360294
; mapping-symbol data/literal pool
003602c0  84 48 63 00 c0 3f 00 00 c8 26 00 00              .byte 0x84, 0x48, 0x63, 0x00, 0xc0, 0x3f, 0x00, 0x00, 0xc8, 0x26, 0x00, 0x00

; FUNCTION 0x003602cc, declared_size=28, range_size=28, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZN33ShadowModularSkinnedMeshSceneNodeD0Ev
; demangled: ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode()
; decoder-mode: arm
003602cc  10 40 2d e9                                      push {r4, lr}
003602d0  00 40 a0 e1                                      mov r4, r0
003602d4  c8 ff ff eb                                      bl #0x3601fc
003602d8  04 00 a0 e1                                      mov r0, r4
003602dc  57 c0 fe eb                                      bl #0x310440
003602e0  04 00 a0 e1                                      mov r0, r4
003602e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003602e8, declared_size=448, range_size=448, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZN33ShadowModularSkinnedMeshSceneNode10renderMeshEPv
; demangled: ShadowModularSkinnedMeshSceneNode::renderMesh(void*)
; decoder-mode: arm
003602e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003602ec  34 31 90 e5                                      ldr r3, [r0, #0x134]
003602f0  10 21 90 e5                                      ldr r2, [r0, #0x110]
003602f4  10 d0 4d e2                                      sub sp, sp, #0x10
003602f8  00 00 53 e3                                      cmp r3, #0
003602fc  00 40 a0 e1                                      mov r4, r0
00360300  14 50 92 e5                                      ldr r5, [r2, #0x14]
00360304  50 00 00 0a                                      beq #0x36044c
00360308  00 00 55 e3                                      cmp r5, #0
0036030c  4e 00 00 0a                                      beq #0x36044c
00360310  00 00 51 e3                                      cmp r1, #0
00360314  4c 00 00 0a                                      beq #0x36044c
00360318  01 60 41 e2                                      sub r6, r1, #1
0036031c  0c 00 8d e2                                      add r0, sp, #0xc
00360320  03 10 a0 e1                                      mov r1, r3
00360324  06 20 a0 e1                                      mov r2, r6
00360328  00 30 93 e5                                      ldr r3, [r3]
0036032c  0f e0 a0 e1                                      mov lr, pc
00360330  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00360334  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00360338  00 00 53 e3                                      cmp r3, #0
0036033c  42 00 00 0a                                      beq #0x36044c
00360340  34 31 94 e5                                      ldr r3, [r4, #0x134]
00360344  1f 00 06 e2                                      and r0, r6, #0x1f
00360348  01 10 a0 e3                                      mov r1, #1
0036034c  14 20 93 e5                                      ldr r2, [r3, #0x14]
00360350  11 20 12 e0                                      ands r2, r2, r1, lsl r0
00360354  00 80 a0 13                                      movne r8, #0
00360358  4a 00 00 0a                                      beq #0x360488
0036035c  80 21 94 e5                                      ldr r2, [r4, #0x180]
00360360  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00360364  05 00 a0 e1                                      mov r0, r5
00360368  06 11 92 e7                                      ldr r1, [r2, r6, lsl #2]
0036036c  08 70 8d e2                                      add r7, sp, #8
00360370  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00360374  01 10 a0 e3                                      mov r1, #1
00360378  08 30 8d e5                                      str r3, [sp, #8]
0036037c  00 00 53 e3                                      cmp r3, #0
00360380  00 20 93 15                                      ldrne r2, [r3]
00360384  01 20 82 12                                      addne r2, r2, #1
00360388  00 20 83 15                                      strne r2, [r3]
0036038c  80 21 94 15                                      ldrne r2, [r4, #0x180]
00360390  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
00360394  06 21 92 e7                                      ldr r2, [r2, r6, lsl #2]
00360398  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0036039c  00 00 53 e3                                      cmp r3, #0
003603a0  04 30 8d e5                                      str r3, [sp, #4]
003603a4  00 20 93 15                                      ldrne r2, [r3]
003603a8  01 20 82 12                                      addne r2, r2, #1
003603ac  00 20 83 15                                      strne r2, [r3]
003603b0  00 30 95 e5                                      ldr r3, [r5]
003603b4  24 20 84 e2                                      add r2, r4, #0x24
003603b8  0f e0 a0 e1                                      mov lr, pc
003603bc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
003603c0  04 20 8d e2                                      add r2, sp, #4
003603c4  05 00 a0 e1                                      mov r0, r5
003603c8  07 10 a0 e1                                      mov r1, r7
003603cc  cf f9 ff eb                                      bl #0x35eb10
003603d0  00 30 a0 e3                                      mov r3, #0
003603d4  e8 30 85 e5                                      str r3, [r5, #0xe8]
003603d8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003603dc  05 00 a0 e1                                      mov r0, r5
003603e0  0d 10 a0 e1                                      mov r1, sp
003603e4  00 00 53 e3                                      cmp r3, #0
003603e8  00 30 8d e5                                      str r3, [sp]
003603ec  04 20 93 15                                      ldrne r2, [r3, #4]
003603f0  01 20 82 12                                      addne r2, r2, #1
003603f4  04 20 83 15                                      strne r2, [r3, #4]
003603f8  f4 f9 ff eb                                      bl #0x35ebd0
003603fc  00 00 9d e5                                      ldr r0, [sp]
00360400  00 00 50 e3                                      cmp r0, #0
00360404  00 00 00 0a                                      beq #0x36040c
00360408  5d f4 fe eb                                      bl #0x31d584
0036040c  00 00 58 e3                                      cmp r8, #0
00360410  14 00 00 1a                                      bne #0x360468
00360414  04 40 9d e5                                      ldr r4, [sp, #4]
00360418  00 00 54 e3                                      cmp r4, #0
0036041c  04 00 00 0a                                      beq #0x360434
00360420  00 30 94 e5                                      ldr r3, [r4]
00360424  01 30 43 e2                                      sub r3, r3, #1
00360428  00 00 53 e3                                      cmp r3, #0
0036042c  00 30 84 e5                                      str r3, [r4]
00360430  07 00 00 0a                                      beq #0x360454
00360434  07 00 a0 e1                                      mov r0, r7
00360438  ea c1 fe eb                                      bl #0x310be8
0036043c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00360440  00 00 50 e3                                      cmp r0, #0
00360444  00 00 00 0a                                      beq #0x36044c
00360448  4d f4 fe eb                                      bl #0x31d584
0036044c  10 d0 8d e2                                      add sp, sp, #0x10
00360450  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00360454  04 00 a0 e1                                      mov r0, r4
00360458  bd fc 09 eb                                      bl #0x5df754
0036045c  04 00 a0 e1                                      mov r0, r4
00360460  f6 bf fe eb                                      bl #0x310440
00360464  f2 ff ff ea                                      b #0x360434
00360468  34 31 94 e5                                      ldr r3, [r4, #0x134]
0036046c  05 10 a0 e1                                      mov r1, r5
00360470  06 20 a0 e1                                      mov r2, r6
00360474  03 00 a0 e1                                      mov r0, r3
00360478  00 30 93 e5                                      ldr r3, [r3]
0036047c  0f e0 a0 e1                                      mov lr, pc
00360480  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00360484  e2 ff ff ea                                      b #0x360414
00360488  03 00 a0 e1                                      mov r0, r3
0036048c  00 c0 93 e5                                      ldr ip, [r3]
00360490  05 20 a0 e1                                      mov r2, r5
00360494  06 30 a0 e1                                      mov r3, r6
00360498  0f e0 a0 e1                                      mov lr, pc
0036049c  38 f0 9c e5                                      ldr pc, [ip, #0x38]
003604a0  04 80 00 e2                                      and r8, r0, #4
003604a4  ac ff ff ea                                      b #0x36035c

; FUNCTION 0x003604a8, declared_size=760, range_size=760, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZN33ShadowModularSkinnedMeshSceneNode6renderEPv
; demangled: ShadowModularSkinnedMeshSceneNode::render(void*)
; decoder-mode: arm
003604a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003604ac  d8 82 9f e5                                      ldr r8, [pc, #0x2d8]
003604b0  d8 b2 9f e5                                      ldr fp, [pc, #0x2d8]
003604b4  d8 22 9f e5                                      ldr r2, [pc, #0x2d8]
003604b8  08 80 8f e0                                      add r8, pc, r8
003604bc  0b 30 98 e7                                      ldr r3, [r8, fp]
003604c0  02 60 98 e7                                      ldr r6, [r8, r2]
003604c4  44 d0 4d e2                                      sub sp, sp, #0x44
003604c8  00 30 93 e5                                      ldr r3, [r3]
003604cc  00 40 a0 e1                                      mov r4, r0
003604d0  06 00 a0 e1                                      mov r0, r6
003604d4  3c 30 8d e5                                      str r3, [sp, #0x3c]
003604d8  04 10 8d e5                                      str r1, [sp, #4]
003604dc  e9 5c ff eb                                      bl #0x337888
003604e0  b0 12 9f e5                                      ldr r1, [pc, #0x2b0]
003604e4  24 50 8d e2                                      add r5, sp, #0x24
003604e8  05 00 a0 e1                                      mov r0, r5
003604ec  01 10 8f e0                                      add r1, pc, r1
003604f0  20 10 81 e2                                      add r1, r1, #0x20
003604f4  34 50 8d e5                                      str r5, [sp, #0x34]
003604f8  38 50 8d e5                                      str r5, [sp, #0x38]
003604fc  54 fa ff eb                                      bl #0x35ee54
00360500  06 00 a0 e1                                      mov r0, r6
00360504  05 10 a0 e1                                      mov r1, r5
00360508  5e 5d ff eb                                      bl #0x337a88
0036050c  00 60 a0 e1                                      mov r6, r0
00360510  38 00 9d e5                                      ldr r0, [sp, #0x38]
00360514  05 00 50 e1                                      cmp r0, r5
00360518  06 00 00 0a                                      beq #0x360538
0036051c  00 00 50 e3                                      cmp r0, #0
00360520  04 00 00 0a                                      beq #0x360538
00360524  24 10 9d e5                                      ldr r1, [sp, #0x24]
00360528  01 10 60 e0                                      rsb r1, r0, r1
0036052c  80 00 51 e3                                      cmp r1, #0x80
00360530  92 00 00 8a                                      bhi #0x360780
00360534  71 a2 0e eb                                      bl #0x708f00
00360538  00 00 56 e3                                      cmp r6, #0
0036053c  0c 00 00 0a                                      beq #0x360574
00360540  54 32 9f e5                                      ldr r3, [pc, #0x254]
00360544  03 30 98 e7                                      ldr r3, [r8, r3]
00360548  10 30 93 e5                                      ldr r3, [r3, #0x10]
0036054c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00360550  18 04 93 e5                                      ldr r0, [r3, #0x418]
00360554  d2 b8 fe eb                                      bl #0x30e8a4
00360558  2d 23 04 e3                                      movw r2, #0x432d
0036055c  e2 36 03 e3                                      movw r3, #0x36e2
00360560  1c 2b 4e e3                                      movt r2, #0xeb1c
00360564  1a 3f 43 e3                                      movt r3, #0x3f1a
00360568  7c b8 fe eb                                      bl #0x30e760
0036056c  00 50 50 e2                                      subs r5, r0, #0
00360570  06 00 00 0a                                      beq #0x360590
00360574  0b 30 98 e7                                      ldr r3, [r8, fp]
00360578  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0036057c  00 30 93 e5                                      ldr r3, [r3]
00360580  03 00 52 e1                                      cmp r2, r3
00360584  7f 00 00 1a                                      bne #0x360788
00360588  44 d0 8d e2                                      add sp, sp, #0x44
0036058c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00360590  04 00 a0 e1                                      mov r0, r4
00360594  6b fb ff eb                                      bl #0x35f348
00360598  34 31 94 e5                                      ldr r3, [r4, #0x134]
0036059c  03 00 a0 e1                                      mov r0, r3
003605a0  00 30 93 e5                                      ldr r3, [r3]
003605a4  0f e0 a0 e1                                      mov lr, pc
003605a8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003605ac  00 60 50 e2                                      subs r6, r0, #0
003605b0  0f 00 00 0a                                      beq #0x3605f4
003605b4  80 31 94 e5                                      ldr r3, [r4, #0x180]
003605b8  34 c1 94 e5                                      ldr ip, [r4, #0x134]
003605bc  b0 11 94 e5                                      ldr r1, [r4, #0x1b0]
003605c0  05 21 93 e7                                      ldr r2, [r3, r5, lsl #2]
003605c4  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
003605c8  0c 00 a0 e1                                      mov r0, ip
003605cc  02 21 a0 e1                                      lsl r2, r2, #2
003605d0  02 30 83 e0                                      add r3, r3, r2
003605d4  00 c0 9c e5                                      ldr ip, [ip]
003605d8  02 20 81 e0                                      add r2, r1, r2
003605dc  05 10 a0 e1                                      mov r1, r5
003605e0  01 50 85 e2                                      add r5, r5, #1
003605e4  0f e0 a0 e1                                      mov lr, pc
003605e8  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003605ec  06 00 55 e1                                      cmp r5, r6
003605f0  ef ff ff 1a                                      bne #0x3605b4
003605f4  34 61 94 e5                                      ldr r6, [r4, #0x134]
003605f8  00 70 a0 e3                                      mov r7, #0
003605fc  18 70 8d e5                                      str r7, [sp, #0x18]
00360600  1c 70 8d e5                                      str r7, [sp, #0x1c]
00360604  20 70 8d e5                                      str r7, [sp, #0x20]
00360608  0c 70 8d e5                                      str r7, [sp, #0xc]
0036060c  10 70 8d e5                                      str r7, [sp, #0x10]
00360610  14 70 8d e5                                      str r7, [sp, #0x14]
00360614  24 30 96 e5                                      ldr r3, [r6, #0x24]
00360618  28 a0 96 e5                                      ldr sl, [r6, #0x28]
0036061c  0a a0 63 e0                                      rsb sl, r3, sl
00360620  ca a1 b0 e1                                      asrs sl, sl, #3
00360624  01 00 00 1a                                      bne #0x360630
00360628  18 00 00 ea                                      b #0x360690
0036062c  24 30 96 e5                                      ldr r3, [r6, #0x24]
00360630  87 31 83 e0                                      add r3, r3, r7, lsl #3
00360634  04 50 93 e5                                      ldr r5, [r3, #4]
00360638  00 00 55 e3                                      cmp r5, #0
0036063c  10 00 00 0a                                      beq #0x360684
00360640  04 30 95 e5                                      ldr r3, [r5, #4]
00360644  05 00 a0 e1                                      mov r0, r5
00360648  00 90 95 e5                                      ldr sb, [r5]
0036064c  01 30 83 e2                                      add r3, r3, #1
00360650  04 30 85 e5                                      str r3, [r5, #4]
00360654  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00360658  b0 c1 94 e5                                      ldr ip, [r4, #0x1b0]
0036065c  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
00360660  07 21 92 e7                                      ldr r2, [r2, r7, lsl #2]
00360664  00 10 a0 e3                                      mov r1, #0
00360668  02 21 a0 e1                                      lsl r2, r2, #2
0036066c  02 30 83 e0                                      add r3, r3, r2
00360670  02 20 8c e0                                      add r2, ip, r2
00360674  0f e0 a0 e1                                      mov lr, pc
00360678  20 f0 99 e5                                      ldr pc, [sb, #0x20]
0036067c  05 00 a0 e1                                      mov r0, r5
00360680  bf f3 fe eb                                      bl #0x31d584
00360684  01 70 87 e2                                      add r7, r7, #1
00360688  0a 00 57 e1                                      cmp r7, sl
0036068c  e6 ff ff 1a                                      bne #0x36062c
00360690  04 10 9d e5                                      ldr r1, [sp, #4]
00360694  04 00 a0 e1                                      mov r0, r4
00360698  12 ff ff eb                                      bl #0x3602e8
0036069c  34 31 94 e5                                      ldr r3, [r4, #0x134]
003606a0  03 00 a0 e1                                      mov r0, r3
003606a4  00 30 93 e5                                      ldr r3, [r3]
003606a8  0f e0 a0 e1                                      mov lr, pc
003606ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003606b0  00 70 50 e2                                      subs r7, r0, #0
003606b4  10 00 00 0a                                      beq #0x3606fc
003606b8  00 50 a0 e3                                      mov r5, #0
003606bc  80 31 94 e5                                      ldr r3, [r4, #0x180]
003606c0  34 c1 94 e5                                      ldr ip, [r4, #0x134]
003606c4  98 11 94 e5                                      ldr r1, [r4, #0x198]
003606c8  05 21 93 e7                                      ldr r2, [r3, r5, lsl #2]
003606cc  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
003606d0  0c 00 a0 e1                                      mov r0, ip
003606d4  02 21 a0 e1                                      lsl r2, r2, #2
003606d8  02 30 83 e0                                      add r3, r3, r2
003606dc  00 c0 9c e5                                      ldr ip, [ip]
003606e0  02 20 81 e0                                      add r2, r1, r2
003606e4  05 10 a0 e1                                      mov r1, r5
003606e8  01 50 85 e2                                      add r5, r5, #1
003606ec  0f e0 a0 e1                                      mov lr, pc
003606f0  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003606f4  07 00 55 e1                                      cmp r5, r7
003606f8  ef ff ff 1a                                      bne #0x3606bc
003606fc  00 00 5a e3                                      cmp sl, #0
00360700  19 00 00 0a                                      beq #0x36076c
00360704  00 70 a0 e3                                      mov r7, #0
00360708  24 30 96 e5                                      ldr r3, [r6, #0x24]
0036070c  87 31 83 e0                                      add r3, r3, r7, lsl #3
00360710  04 50 93 e5                                      ldr r5, [r3, #4]
00360714  00 00 55 e3                                      cmp r5, #0
00360718  10 00 00 0a                                      beq #0x360760
0036071c  04 30 95 e5                                      ldr r3, [r5, #4]
00360720  05 00 a0 e1                                      mov r0, r5
00360724  00 90 95 e5                                      ldr sb, [r5]
00360728  01 30 83 e2                                      add r3, r3, #1
0036072c  04 30 85 e5                                      str r3, [r5, #4]
00360730  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00360734  98 c1 94 e5                                      ldr ip, [r4, #0x198]
00360738  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
0036073c  07 21 92 e7                                      ldr r2, [r2, r7, lsl #2]
00360740  00 10 a0 e3                                      mov r1, #0
00360744  02 21 a0 e1                                      lsl r2, r2, #2
00360748  02 30 83 e0                                      add r3, r3, r2
0036074c  02 20 8c e0                                      add r2, ip, r2
00360750  0f e0 a0 e1                                      mov lr, pc
00360754  20 f0 99 e5                                      ldr pc, [sb, #0x20]
00360758  05 00 a0 e1                                      mov r0, r5
0036075c  88 f3 fe eb                                      bl #0x31d584
00360760  01 70 87 e2                                      add r7, r7, #1
00360764  0a 00 57 e1                                      cmp r7, sl
00360768  e6 ff ff 1a                                      bne #0x360708
0036076c  0c 00 8d e2                                      add r0, sp, #0xc
00360770  96 fc ff eb                                      bl #0x35f9d0
00360774  18 00 8d e2                                      add r0, sp, #0x18
00360778  b7 fc ff eb                                      bl #0x35fa5c
0036077c  7c ff ff ea                                      b #0x360574
00360780  2e bf fe eb                                      bl #0x310440
00360784  6b ff ff ea                                      b #0x360538
00360788  e0 b6 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036078c  d8 45 63 00 ac 40 00 00 84 08 00 00 64 f5 55 00  .byte 0xd8, 0x45, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x64, 0xf5, 0x55, 0x00
0036079c  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00360aa8, declared_size=212, range_size=212, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZN33ShadowModularSkinnedMeshSceneNodeD2Ev
; demangled: ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode()
; decoder-mode: arm
00360aa8  70 40 2d e9                                      push {r4, r5, r6, lr}
00360aac  00 30 91 e5                                      ldr r3, [r1]
00360ab0  00 40 a0 e1                                      mov r4, r0
00360ab4  6f 0f 80 e2                                      add r0, r0, #0x1bc
00360ab8  00 30 84 e5                                      str r3, [r4]
00360abc  4c 20 91 e5                                      ldr r2, [r1, #0x4c]
00360ac0  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00360ac4  01 50 a0 e1                                      mov r5, r1
00360ac8  03 20 84 e7                                      str r2, [r4, r3]
00360acc  00 30 94 e5                                      ldr r3, [r4]
00360ad0  50 20 91 e5                                      ldr r2, [r1, #0x50]
00360ad4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00360ad8  03 20 84 e7                                      str r2, [r4, r3]
00360adc  bb fb ff eb                                      bl #0x35f9d0
00360ae0  1b 0e 84 e2                                      add r0, r4, #0x1b0
00360ae4  dc fb ff eb                                      bl #0x35fa5c
00360ae8  69 0f 84 e2                                      add r0, r4, #0x1a4
00360aec  b7 fb ff eb                                      bl #0x35f9d0
00360af0  66 0f 84 e2                                      add r0, r4, #0x198
00360af4  d8 fb ff eb                                      bl #0x35fa5c
00360af8  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
00360afc  63 3f 84 e2                                      add r3, r4, #0x18c
00360b00  00 00 50 e3                                      cmp r0, #0
00360b04  05 00 00 0a                                      beq #0x360b20
00360b08  08 10 93 e5                                      ldr r1, [r3, #8]
00360b0c  01 10 60 e0                                      rsb r1, r0, r1
00360b10  03 10 c1 e3                                      bic r1, r1, #3
00360b14  80 00 51 e3                                      cmp r1, #0x80
00360b18  0f 00 00 8a                                      bhi #0x360b5c
00360b1c  f7 a0 0e eb                                      bl #0x708f00
00360b20  80 01 94 e5                                      ldr r0, [r4, #0x180]
00360b24  06 3d 84 e2                                      add r3, r4, #0x180
00360b28  00 00 50 e3                                      cmp r0, #0
00360b2c  05 00 00 0a                                      beq #0x360b48
00360b30  08 10 93 e5                                      ldr r1, [r3, #8]
00360b34  01 10 60 e0                                      rsb r1, r0, r1
00360b38  03 10 c1 e3                                      bic r1, r1, #3
00360b3c  80 00 51 e3                                      cmp r1, #0x80
00360b40  07 00 00 8a                                      bhi #0x360b64
00360b44  ed a0 0e eb                                      bl #0x708f00
00360b48  04 10 85 e2                                      add r1, r5, #4
00360b4c  04 00 a0 e1                                      mov r0, r4
00360b50  99 eb ff eb                                      bl #0x35b9bc
00360b54  04 00 a0 e1                                      mov r0, r4
00360b58  70 80 bd e8                                      pop {r4, r5, r6, pc}
00360b5c  37 be fe eb                                      bl #0x310440
00360b60  ee ff ff ea                                      b #0x360b20
00360b64  35 be fe eb                                      bl #0x310440
00360b68  04 10 85 e2                                      add r1, r5, #4
00360b6c  04 00 a0 e1                                      mov r0, r4
00360b70  91 eb ff eb                                      bl #0x35b9bc
00360b74  04 00 a0 e1                                      mov r0, r4
00360b78  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00361298, declared_size=1840, range_size=1840, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZN33ShadowModularSkinnedMeshSceneNode24regenerateShadowMaterialEv
; demangled: ShadowModularSkinnedMeshSceneNode::regenerateShadowMaterial()
; decoder-mode: arm
00361298  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036129c  0c 37 9f e5                                      ldr r3, [pc, #0x70c]
003612a0  0c 27 9f e5                                      ldr r2, [pc, #0x70c]
003612a4  8c d0 4d e2                                      sub sp, sp, #0x8c
003612a8  03 30 8f e0                                      add r3, pc, r3
003612ac  02 20 93 e7                                      ldr r2, [r3, r2]
003612b0  38 10 8d e2                                      add r1, sp, #0x38
003612b4  30 10 8d e5                                      str r1, [sp, #0x30]
003612b8  10 c0 92 e5                                      ldr ip, [r2, #0x10]
003612bc  f4 16 9f e5                                      ldr r1, [pc, #0x6f4]
003612c0  f4 26 9f e5                                      ldr r2, [pc, #0x6f4]
003612c4  00 40 a0 e1                                      mov r4, r0
003612c8  01 10 8f e0                                      add r1, pc, r1
003612cc  02 20 93 e7                                      ldr r2, [r3, r2]
003612d0  30 00 9d e5                                      ldr r0, [sp, #0x30]
003612d4  10 50 9c e5                                      ldr r5, [ip, #0x10]
003612d8  df b7 0a eb                                      bl #0x60f25c
003612dc  dc 36 9f e5                                      ldr r3, [pc, #0x6dc]
003612e0  84 20 8d e2                                      add r2, sp, #0x84
003612e4  20 20 8d e5                                      str r2, [sp, #0x20]
003612e8  03 30 8f e0                                      add r3, pc, r3
003612ec  05 20 a0 e1                                      mov r2, r5
003612f0  30 10 9d e5                                      ldr r1, [sp, #0x30]
003612f4  00 50 a0 e3                                      mov r5, #0
003612f8  20 00 9d e5                                      ldr r0, [sp, #0x20]
003612fc  00 50 8d e5                                      str r5, [sp]
00361300  81 e7 0a eb                                      bl #0x61b10c
00361304  34 31 94 e5                                      ldr r3, [r4, #0x134]
00361308  66 1f 84 e2                                      add r1, r4, #0x198
0036130c  34 10 8d e5                                      str r1, [sp, #0x34]
00361310  2c 30 8d e5                                      str r3, [sp, #0x2c]
00361314  00 30 93 e5                                      ldr r3, [r3]
00361318  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0036131c  0f e0 a0 e1                                      mov lr, pc
00361320  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00361324  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00361328  14 00 8d e5                                      str r0, [sp, #0x14]
0036132c  88 60 8d e2                                      add r6, sp, #0x88
00361330  28 20 93 e5                                      ldr r2, [r3, #0x28]
00361334  24 30 93 e5                                      ldr r3, [r3, #0x24]
00361338  08 50 26 e5                                      str r5, [r6, #-8]!
0036133c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00361340  02 30 63 e0                                      rsb r3, r3, r2
00361344  c3 31 a0 e1                                      asr r3, r3, #3
00361348  06 20 a0 e1                                      mov r2, r6
0036134c  34 00 9d e5                                      ldr r0, [sp, #0x34]
00361350  1c 30 8d e5                                      str r3, [sp, #0x1c]
00361354  50 fa ff eb                                      bl #0x35fc9c
00361358  06 00 a0 e1                                      mov r0, r6
0036135c  21 be fe eb                                      bl #0x310be8
00361360  88 20 8d e2                                      add r2, sp, #0x88
00361364  0c 50 22 e5                                      str r5, [r2, #-0xc]!
00361368  69 0f 84 e2                                      add r0, r4, #0x1a4
0036136c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00361370  b4 ff ff eb                                      bl #0x361248
00361374  7c 50 9d e5                                      ldr r5, [sp, #0x7c]
00361378  00 00 55 e3                                      cmp r5, #0
0036137c  04 00 00 0a                                      beq #0x361394
00361380  00 30 95 e5                                      ldr r3, [r5]
00361384  01 30 43 e2                                      sub r3, r3, #1
00361388  00 00 53 e3                                      cmp r3, #0
0036138c  00 30 85 e5                                      str r3, [r5]
00361390  81 01 00 0a                                      beq #0x36199c
00361394  88 20 8d e2                                      add r2, sp, #0x88
00361398  00 50 a0 e3                                      mov r5, #0
0036139c  10 50 22 e5                                      str r5, [r2, #-0x10]!
003613a0  14 10 9d e5                                      ldr r1, [sp, #0x14]
003613a4  06 0d 84 e2                                      add r0, r4, #0x180
003613a8  ce fa ff eb                                      bl #0x35fee8
003613ac  98 21 94 e5                                      ldr r2, [r4, #0x198]
003613b0  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
003613b4  02 30 a0 e1                                      mov r3, r2
003613b8  01 70 62 e0                                      rsb r7, r2, r1
003613bc  47 71 b0 e1                                      asrs r7, r7, #2
003613c0  1c 00 00 0a                                      beq #0x361438
003613c4  4c a0 8d e2                                      add sl, sp, #0x4c
003613c8  05 80 a0 e1                                      mov r8, r5
003613cc  00 00 00 ea                                      b #0x3613d4
003613d0  98 21 94 e5                                      ldr r2, [r4, #0x198]
003613d4  4c 80 8d e5                                      str r8, [sp, #0x4c]
003613d8  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
003613dc  0a 00 a0 e1                                      mov r0, sl
003613e0  4c 30 8d e5                                      str r3, [sp, #0x4c]
003613e4  05 81 82 e7                                      str r8, [r2, r5, lsl #2]
003613e8  fe bd fe eb                                      bl #0x310be8
003613ec  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
003613f0  05 61 93 e7                                      ldr r6, [r3, r5, lsl #2]
003613f4  05 81 83 e7                                      str r8, [r3, r5, lsl #2]
003613f8  01 50 85 e2                                      add r5, r5, #1
003613fc  00 00 56 e3                                      cmp r6, #0
00361400  08 00 00 0a                                      beq #0x361428
00361404  00 30 96 e5                                      ldr r3, [r6]
00361408  01 30 43 e2                                      sub r3, r3, #1
0036140c  00 00 53 e3                                      cmp r3, #0
00361410  00 30 86 e5                                      str r3, [r6]
00361414  03 00 00 1a                                      bne #0x361428
00361418  06 00 a0 e1                                      mov r0, r6
0036141c  cc f8 09 eb                                      bl #0x5df754
00361420  06 00 a0 e1                                      mov r0, r6
00361424  05 bc fe eb                                      bl #0x310440
00361428  07 00 55 e1                                      cmp r5, r7
0036142c  e7 ff ff 1a                                      bne #0x3613d0
00361430  98 31 94 e5                                      ldr r3, [r4, #0x198]
00361434  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00361438  14 20 9d e5                                      ldr r2, [sp, #0x14]
0036143c  01 90 63 e0                                      rsb sb, r3, r1
00361440  49 91 a0 e1                                      asr sb, sb, #2
00361444  00 00 52 e3                                      cmp r2, #0
00361448  03 a0 a0 e1                                      mov sl, r3
0036144c  85 00 00 0a                                      beq #0x361668
00361450  74 20 8d e2                                      add r2, sp, #0x74
00361454  00 b0 a0 e3                                      mov fp, #0
00361458  18 20 8d e5                                      str r2, [sp, #0x18]
0036145c  44 10 8d e2                                      add r1, sp, #0x44
00361460  70 20 8d e2                                      add r2, sp, #0x70
00361464  0b 80 a0 e1                                      mov r8, fp
00361468  6c 70 8d e2                                      add r7, sp, #0x6c
0036146c  24 10 8d e5                                      str r1, [sp, #0x24]
00361470  28 20 8d e5                                      str r2, [sp, #0x28]
00361474  00 00 59 e3                                      cmp sb, #0
00361478  00 60 a0 13                                      movne r6, #0
0036147c  06 50 a0 11                                      movne r5, r6
00361480  13 00 00 1a                                      bne #0x3614d4
00361484  5c 00 00 ea                                      b #0x3615fc
00361488  34 31 94 e5                                      ldr r3, [r4, #0x134]
0036148c  07 00 a0 e1                                      mov r0, r7
00361490  08 20 a0 e1                                      mov r2, r8
00361494  03 10 a0 e1                                      mov r1, r3
00361498  00 30 93 e5                                      ldr r3, [r3]
0036149c  0f e0 a0 e1                                      mov lr, pc
003614a0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
003614a4  98 31 94 e5                                      ldr r3, [r4, #0x198]
003614a8  6c a0 9d e5                                      ldr sl, [sp, #0x6c]
003614ac  07 00 a0 e1                                      mov r0, r7
003614b0  06 60 93 e7                                      ldr r6, [r3, r6]
003614b4  cb bd fe eb                                      bl #0x310be8
003614b8  06 00 5a e1                                      cmp sl, r6
003614bc  4a 00 00 0a                                      beq #0x3615ec
003614c0  01 50 85 e2                                      add r5, r5, #1
003614c4  09 00 55 e1                                      cmp r5, sb
003614c8  05 60 a0 e1                                      mov r6, r5
003614cc  51 00 00 0a                                      beq #0x361618
003614d0  98 a1 94 e5                                      ldr sl, [r4, #0x198]
003614d4  06 31 9a e7                                      ldr r3, [sl, r6, lsl #2]
003614d8  06 61 a0 e1                                      lsl r6, r6, #2
003614dc  06 a0 8a e0                                      add sl, sl, r6
003614e0  00 00 53 e3                                      cmp r3, #0
003614e4  e7 ff ff 1a                                      bne #0x361488
003614e8  34 31 94 e5                                      ldr r3, [r4, #0x134]
003614ec  18 00 9d e5                                      ldr r0, [sp, #0x18]
003614f0  08 20 a0 e1                                      mov r2, r8
003614f4  03 10 a0 e1                                      mov r1, r3
003614f8  00 30 93 e5                                      ldr r3, [r3]
003614fc  0f e0 a0 e1                                      mov lr, pc
00361500  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00361504  74 20 9d e5                                      ldr r2, [sp, #0x74]
00361508  00 00 52 e3                                      cmp r2, #0
0036150c  44 20 8d e5                                      str r2, [sp, #0x44]
00361510  00 30 92 15                                      ldrne r3, [r2]
00361514  01 30 83 12                                      addne r3, r3, #1
00361518  00 30 82 15                                      strne r3, [r2]
0036151c  44 20 9d 15                                      ldrne r2, [sp, #0x44]
00361520  00 30 9a e5                                      ldr r3, [sl]
00361524  24 00 9d e5                                      ldr r0, [sp, #0x24]
00361528  44 30 8d e5                                      str r3, [sp, #0x44]
0036152c  00 20 8a e5                                      str r2, [sl]
00361530  ac bd fe eb                                      bl #0x310be8
00361534  18 00 9d e5                                      ldr r0, [sp, #0x18]
00361538  aa bd fe eb                                      bl #0x310be8
0036153c  34 31 94 e5                                      ldr r3, [r4, #0x134]
00361540  08 20 a0 e1                                      mov r2, r8
00361544  28 00 9d e5                                      ldr r0, [sp, #0x28]
00361548  03 10 a0 e1                                      mov r1, r3
0036154c  00 30 93 e5                                      ldr r3, [r3]
00361550  a4 a1 94 e5                                      ldr sl, [r4, #0x1a4]
00361554  0f e0 a0 e1                                      mov lr, pc
00361558  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036155c  70 20 9d e5                                      ldr r2, [sp, #0x70]
00361560  0b a0 8a e0                                      add sl, sl, fp
00361564  00 00 52 e3                                      cmp r2, #0
00361568  00 30 92 15                                      ldrne r3, [r2]
0036156c  01 30 83 12                                      addne r3, r3, #1
00361570  00 30 82 15                                      strne r3, [r2]
00361574  00 30 9a e5                                      ldr r3, [sl]
00361578  00 20 8a e5                                      str r2, [sl]
0036157c  00 00 53 e3                                      cmp r3, #0
00361580  0a 00 00 0a                                      beq #0x3615b0
00361584  00 20 93 e5                                      ldr r2, [r3]
00361588  01 20 42 e2                                      sub r2, r2, #1
0036158c  00 00 52 e3                                      cmp r2, #0
00361590  00 20 83 e5                                      str r2, [r3]
00361594  05 00 00 1a                                      bne #0x3615b0
00361598  03 00 a0 e1                                      mov r0, r3
0036159c  0c 30 8d e5                                      str r3, [sp, #0xc]
003615a0  6b f8 09 eb                                      bl #0x5df754
003615a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003615a8  03 00 a0 e1                                      mov r0, r3
003615ac  a3 bb fe eb                                      bl #0x310440
003615b0  70 a0 9d e5                                      ldr sl, [sp, #0x70]
003615b4  00 00 5a e3                                      cmp sl, #0
003615b8  08 00 00 0a                                      beq #0x3615e0
003615bc  00 30 9a e5                                      ldr r3, [sl]
003615c0  01 30 43 e2                                      sub r3, r3, #1
003615c4  00 00 53 e3                                      cmp r3, #0
003615c8  00 30 8a e5                                      str r3, [sl]
003615cc  03 00 00 1a                                      bne #0x3615e0
003615d0  0a 00 a0 e1                                      mov r0, sl
003615d4  5e f8 09 eb                                      bl #0x5df754
003615d8  0a 00 a0 e1                                      mov r0, sl
003615dc  97 bb fe eb                                      bl #0x310440
003615e0  80 31 94 e5                                      ldr r3, [r4, #0x180]
003615e4  0b 50 83 e7                                      str r5, [r3, fp]
003615e8  a6 ff ff ea                                      b #0x361488
003615ec  80 31 94 e5                                      ldr r3, [r4, #0x180]
003615f0  0b 50 83 e7                                      str r5, [r3, fp]
003615f4  98 31 94 e5                                      ldr r3, [r4, #0x198]
003615f8  03 a0 a0 e1                                      mov sl, r3
003615fc  14 10 9d e5                                      ldr r1, [sp, #0x14]
00361600  01 80 88 e2                                      add r8, r8, #1
00361604  04 b0 8b e2                                      add fp, fp, #4
00361608  01 00 58 e1                                      cmp r8, r1
0036160c  08 00 00 0a                                      beq #0x361634
00361610  03 a0 a0 e1                                      mov sl, r3
00361614  96 ff ff ea                                      b #0x361474
00361618  14 10 9d e5                                      ldr r1, [sp, #0x14]
0036161c  98 31 94 e5                                      ldr r3, [r4, #0x198]
00361620  01 80 88 e2                                      add r8, r8, #1
00361624  01 00 58 e1                                      cmp r8, r1
00361628  03 a0 a0 e1                                      mov sl, r3
0036162c  04 b0 8b e2                                      add fp, fp, #4
00361630  f6 ff ff 1a                                      bne #0x361610
00361634  00 10 93 e5                                      ldr r1, [r3]
00361638  00 00 51 e3                                      cmp r1, #0
0036163c  c6 00 00 0a                                      beq #0x36195c
00361640  00 10 a0 e3                                      mov r1, #0
00361644  14 00 9d e5                                      ldr r0, [sp, #0x14]
00361648  02 00 00 ea                                      b #0x361658
0036164c  01 21 93 e7                                      ldr r2, [r3, r1, lsl #2]
00361650  00 00 52 e3                                      cmp r2, #0
00361654  c0 00 00 0a                                      beq #0x36195c
00361658  01 10 81 e2                                      add r1, r1, #1
0036165c  00 00 51 e1                                      cmp r1, r0
00361660  f9 ff ff 1a                                      bne #0x36164c
00361664  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00361668  88 60 8d e2                                      add r6, sp, #0x88
0036166c  00 70 a0 e3                                      mov r7, #0
00361670  01 10 6a e0                                      rsb r1, sl, r1
00361674  24 70 26 e5                                      str r7, [r6, #-0x24]!
00361678  41 51 a0 e1                                      asr r5, r1, #2
0036167c  06 20 a0 e1                                      mov r2, r6
00361680  05 10 a0 e1                                      mov r1, r5
00361684  1b 0e 84 e2                                      add r0, r4, #0x1b0
00361688  83 f9 ff eb                                      bl #0x35fc9c
0036168c  06 00 a0 e1                                      mov r0, r6
00361690  54 bd fe eb                                      bl #0x310be8
00361694  88 20 8d e2                                      add r2, sp, #0x88
00361698  28 70 22 e5                                      str r7, [r2, #-0x28]!
0036169c  6f 0f 84 e2                                      add r0, r4, #0x1bc
003616a0  05 10 a0 e1                                      mov r1, r5
003616a4  e7 fe ff eb                                      bl #0x361248
003616a8  60 60 9d e5                                      ldr r6, [sp, #0x60]
003616ac  07 00 56 e1                                      cmp r6, r7
003616b0  04 00 00 0a                                      beq #0x3616c8
003616b4  00 30 96 e5                                      ldr r3, [r6]
003616b8  01 30 43 e2                                      sub r3, r3, #1
003616bc  07 00 53 e1                                      cmp r3, r7
003616c0  00 30 86 e5                                      str r3, [r6]
003616c4  af 00 00 0a                                      beq #0x361988
003616c8  88 20 8d e2                                      add r2, sp, #0x88
003616cc  00 a0 a0 e3                                      mov sl, #0
003616d0  2c a0 22 e5                                      str sl, [r2, #-0x2c]!
003616d4  63 0f 84 e2                                      add r0, r4, #0x18c
003616d8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003616dc  01 fa ff eb                                      bl #0x35fee8
003616e0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003616e4  0a 00 53 e1                                      cmp r3, sl
003616e8  28 00 00 0a                                      beq #0x361790
003616ec  2c b0 9d e5                                      ldr fp, [sp, #0x2c]
003616f0  58 80 8d e2                                      add r8, sp, #0x58
003616f4  24 30 9b e5                                      ldr r3, [fp, #0x24]
003616f8  8a 31 83 e0                                      add r3, r3, sl, lsl #3
003616fc  04 70 93 e5                                      ldr r7, [r3, #4]
00361700  00 00 57 e3                                      cmp r7, #0
00361704  1d 00 00 0a                                      beq #0x361780
00361708  04 30 97 e5                                      ldr r3, [r7, #4]
0036170c  00 00 55 e3                                      cmp r5, #0
00361710  01 30 83 e2                                      add r3, r3, #1
00361714  04 30 87 e5                                      str r3, [r7, #4]
00361718  16 00 00 0a                                      beq #0x361778
0036171c  0a 91 a0 e1                                      lsl sb, sl, #2
00361720  00 60 a0 e3                                      mov r6, #0
00361724  08 00 a0 e1                                      mov r0, r8
00361728  07 10 a0 e1                                      mov r1, r7
0036172c  00 20 a0 e3                                      mov r2, #0
00361730  00 30 97 e5                                      ldr r3, [r7]
00361734  0f e0 a0 e1                                      mov lr, pc
00361738  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0036173c  98 31 94 e5                                      ldr r3, [r4, #0x198]
00361740  58 20 9d e5                                      ldr r2, [sp, #0x58]
00361744  08 00 a0 e1                                      mov r0, r8
00361748  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0036174c  10 20 8d e5                                      str r2, [sp, #0x10]
00361750  0c 30 8d e5                                      str r3, [sp, #0xc]
00361754  23 bd fe eb                                      bl #0x310be8
00361758  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0036175c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00361760  03 00 52 e1                                      cmp r2, r3
00361764  8c 31 94 05                                      ldreq r3, [r4, #0x18c]
00361768  09 60 83 07                                      streq r6, [r3, sb]
0036176c  01 60 86 e2                                      add r6, r6, #1
00361770  05 00 56 e1                                      cmp r6, r5
00361774  ea ff ff 1a                                      bne #0x361724
00361778  07 00 a0 e1                                      mov r0, r7
0036177c  80 ef fe eb                                      bl #0x31d584
00361780  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00361784  01 a0 8a e2                                      add sl, sl, #1
00361788  01 00 5a e1                                      cmp sl, r1
0036178c  d8 ff ff 1a                                      bne #0x3616f4
00361790  00 00 55 e3                                      cmp r5, #0
00361794  6a 00 00 0a                                      beq #0x361944
00361798  24 32 9f e5                                      ldr r3, [pc, #0x224]
0036179c  00 60 a0 e3                                      mov r6, #0
003617a0  40 20 8d e2                                      add r2, sp, #0x40
003617a4  03 30 8f e0                                      add r3, pc, r3
003617a8  14 30 8d e5                                      str r3, [sp, #0x14]
003617ac  50 30 8d e2                                      add r3, sp, #0x50
003617b0  48 b0 8d e2                                      add fp, sp, #0x48
003617b4  06 80 a0 e1                                      mov r8, r6
003617b8  54 90 8d e2                                      add sb, sp, #0x54
003617bc  18 20 8d e5                                      str r2, [sp, #0x18]
003617c0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003617c4  05 a0 a0 e1                                      mov sl, r5
003617c8  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
003617cc  48 80 8d e5                                      str r8, [sp, #0x48]
003617d0  0b 00 a0 e1                                      mov r0, fp
003617d4  06 21 93 e7                                      ldr r2, [r3, r6, lsl #2]
003617d8  06 51 a0 e1                                      lsl r5, r6, #2
003617dc  48 20 8d e5                                      str r2, [sp, #0x48]
003617e0  06 81 83 e7                                      str r8, [r3, r6, lsl #2]
003617e4  ff bc fe eb                                      bl #0x310be8
003617e8  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
003617ec  06 71 93 e7                                      ldr r7, [r3, r6, lsl #2]
003617f0  06 81 83 e7                                      str r8, [r3, r6, lsl #2]
003617f4  00 00 57 e3                                      cmp r7, #0
003617f8  08 00 00 0a                                      beq #0x361820
003617fc  00 30 97 e5                                      ldr r3, [r7]
00361800  01 30 43 e2                                      sub r3, r3, #1
00361804  00 00 53 e3                                      cmp r3, #0
00361808  00 30 87 e5                                      str r3, [r7]
0036180c  03 00 00 1a                                      bne #0x361820
00361810  07 00 a0 e1                                      mov r0, r7
00361814  ce f7 09 eb                                      bl #0x5df754
00361818  07 00 a0 e1                                      mov r0, r7
0036181c  07 bb fe eb                                      bl #0x310440
00361820  98 31 94 e5                                      ldr r3, [r4, #0x198]
00361824  05 30 93 e7                                      ldr r3, [r3, r5]
00361828  00 00 53 e3                                      cmp r3, #0
0036182c  41 00 00 0a                                      beq #0x361938
00361830  14 20 9d e5                                      ldr r2, [sp, #0x14]
00361834  20 10 9d e5                                      ldr r1, [sp, #0x20]
00361838  09 00 a0 e1                                      mov r0, sb
0036183c  00 30 a0 e3                                      mov r3, #0
00361840  b0 71 94 e5                                      ldr r7, [r4, #0x1b0]
00361844  15 aa 09 eb                                      bl #0x5cc0a0
00361848  54 30 9d e5                                      ldr r3, [sp, #0x54]
0036184c  40 30 8d e5                                      str r3, [sp, #0x40]
00361850  00 00 53 e3                                      cmp r3, #0
00361854  00 20 93 15                                      ldrne r2, [r3]
00361858  01 20 82 12                                      addne r2, r2, #1
0036185c  00 20 83 15                                      strne r2, [r3]
00361860  40 30 9d 15                                      ldrne r3, [sp, #0x40]
00361864  05 20 97 e7                                      ldr r2, [r7, r5]
00361868  18 00 9d e5                                      ldr r0, [sp, #0x18]
0036186c  40 20 8d e5                                      str r2, [sp, #0x40]
00361870  05 30 87 e7                                      str r3, [r7, r5]
00361874  db bc fe eb                                      bl #0x310be8
00361878  09 00 a0 e1                                      mov r0, sb
0036187c  d9 bc fe eb                                      bl #0x310be8
00361880  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00361884  03 10 a0 e3                                      mov r1, #3
00361888  05 30 93 e7                                      ldr r3, [r3, r5]
0036188c  08 10 c3 e5                                      strb r1, [r3, #8]
00361890  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00361894  05 30 93 e7                                      ldr r3, [r3, r5]
00361898  00 00 53 e3                                      cmp r3, #0
0036189c  25 00 00 0a                                      beq #0x361938
003618a0  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
003618a4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003618a8  bc 71 94 e5                                      ldr r7, [r4, #0x1bc]
003618ac  05 10 93 e7                                      ldr r1, [r3, r5]
003618b0  04 10 81 e2                                      add r1, r1, #4
003618b4  a0 f6 09 eb                                      bl #0x5df33c
003618b8  50 20 9d e5                                      ldr r2, [sp, #0x50]
003618bc  00 00 52 e3                                      cmp r2, #0
003618c0  00 30 92 15                                      ldrne r3, [r2]
003618c4  01 30 83 12                                      addne r3, r3, #1
003618c8  00 30 82 15                                      strne r3, [r2]
003618cc  05 30 97 e7                                      ldr r3, [r7, r5]
003618d0  05 20 87 e7                                      str r2, [r7, r5]
003618d4  00 00 53 e3                                      cmp r3, #0
003618d8  0a 00 00 0a                                      beq #0x361908
003618dc  00 20 93 e5                                      ldr r2, [r3]
003618e0  01 20 42 e2                                      sub r2, r2, #1
003618e4  00 00 52 e3                                      cmp r2, #0
003618e8  00 20 83 e5                                      str r2, [r3]
003618ec  05 00 00 1a                                      bne #0x361908
003618f0  03 00 a0 e1                                      mov r0, r3
003618f4  0c 30 8d e5                                      str r3, [sp, #0xc]
003618f8  95 f7 09 eb                                      bl #0x5df754
003618fc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00361900  03 00 a0 e1                                      mov r0, r3
00361904  cd ba fe eb                                      bl #0x310440
00361908  50 50 9d e5                                      ldr r5, [sp, #0x50]
0036190c  00 00 55 e3                                      cmp r5, #0
00361910  08 00 00 0a                                      beq #0x361938
00361914  00 30 95 e5                                      ldr r3, [r5]
00361918  01 30 43 e2                                      sub r3, r3, #1
0036191c  00 00 53 e3                                      cmp r3, #0
00361920  00 30 85 e5                                      str r3, [r5]
00361924  03 00 00 1a                                      bne #0x361938
00361928  05 00 a0 e1                                      mov r0, r5
0036192c  88 f7 09 eb                                      bl #0x5df754
00361930  05 00 a0 e1                                      mov r0, r5
00361934  c1 ba fe eb                                      bl #0x310440
00361938  01 60 86 e2                                      add r6, r6, #1
0036193c  0a 00 56 e1                                      cmp r6, sl
00361940  a0 ff ff 1a                                      bne #0x3617c8
00361944  20 00 9d e5                                      ldr r0, [sp, #0x20]
00361948  5a c2 ff eb                                      bl #0x3522b8
0036194c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00361950  c7 de 0a eb                                      bl #0x619474
00361954  8c d0 8d e2                                      add sp, sp, #0x8c
00361958  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036195c  88 50 8d e2                                      add r5, sp, #0x88
00361960  00 30 a0 e3                                      mov r3, #0
00361964  20 30 25 e5                                      str r3, [r5, #-0x20]!
00361968  34 00 9d e5                                      ldr r0, [sp, #0x34]
0036196c  05 20 a0 e1                                      mov r2, r5
00361970  c9 f8 ff eb                                      bl #0x35fc9c
00361974  05 00 a0 e1                                      mov r0, r5
00361978  9a bc fe eb                                      bl #0x310be8
0036197c  98 a1 94 e5                                      ldr sl, [r4, #0x198]
00361980  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00361984  37 ff ff ea                                      b #0x361668
00361988  06 00 a0 e1                                      mov r0, r6
0036198c  70 f7 09 eb                                      bl #0x5df754
00361990  06 00 a0 e1                                      mov r0, r6
00361994  a9 ba fe eb                                      bl #0x310440
00361998  4a ff ff ea                                      b #0x3616c8
0036199c  05 00 a0 e1                                      mov r0, r5
003619a0  6b f7 09 eb                                      bl #0x5df754
003619a4  05 00 a0 e1                                      mov r0, r5
003619a8  a4 ba fe eb                                      bl #0x310440
003619ac  78 fe ff ea                                      b #0x361394
; mapping-symbol data/literal pool
003619b0  e8 37 63 00 f4 37 00 00 50 fa 55 00 10 47 00 00  .byte 0xe8, 0x37, 0x63, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x50, 0xfa, 0x55, 0x00, 0x10, 0x47, 0x00, 0x00
003619c0  50 fa 55 00 ac f5 55 00                          .byte 0x50, 0xfa, 0x55, 0x00, 0xac, 0xf5, 0x55, 0x00

; FUNCTION 0x003619c8, declared_size=232, range_size=232, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZN33ShadowModularSkinnedMeshSceneNodeC1EN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPKNS2_5scene10ISceneNodeES9_
; demangled: ShadowModularSkinnedMeshSceneNode::ShadowModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>, glitch::scene::ISceneNode const*, glitch::scene::ISceneNode const*)
; decoder-mode: arm
003619c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003619cc  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
003619d0  cc c0 9f e5                                      ldr ip, [pc, #0xcc]
003619d4  cc e0 9f e5                                      ldr lr, [pc, #0xcc]
003619d8  05 50 8f e0                                      add r5, pc, r5
003619dc  0c c0 95 e7                                      ldr ip, [r5, ip]
003619e0  0e e0 95 e7                                      ldr lr, [r5, lr]
003619e4  01 70 a0 e3                                      mov r7, #1
003619e8  54 60 9c e5                                      ldr r6, [ip, #0x54]
003619ec  08 e0 8e e2                                      add lr, lr, #8
003619f0  d0 e1 80 e5                                      str lr, [r0, #0x1d0]
003619f4  00 60 80 e5                                      str r6, [r0]
003619f8  d4 71 80 e5                                      str r7, [r0, #0x1d4]
003619fc  0c 70 16 e5                                      ldr r7, [r6, #-0xc]
00361a00  58 80 9c e5                                      ldr r8, [ip, #0x58]
00361a04  01 e0 a0 e1                                      mov lr, r1
00361a08  02 60 a0 e1                                      mov r6, r2
00361a0c  04 10 8c e2                                      add r1, ip, #4
00361a10  0e 20 a0 e1                                      mov r2, lr
00361a14  07 80 80 e7                                      str r8, [r0, r7]
00361a18  00 40 a0 e1                                      mov r4, r0
00361a1c  03 70 a0 e1                                      mov r7, r3
00361a20  0d e5 ff eb                                      bl #0x35ae5c
00361a24  80 20 9f e5                                      ldr r2, [pc, #0x80]
00361a28  00 30 a0 e3                                      mov r3, #0
00361a2c  04 00 a0 e1                                      mov r0, r4
00361a30  02 20 95 e7                                      ldr r2, [r5, r2]
00361a34  c4 31 84 e5                                      str r3, [r4, #0x1c4]
00361a38  c8 61 84 e5                                      str r6, [r4, #0x1c8]
00361a3c  4a 1f 82 e2                                      add r1, r2, #0x128
00361a40  1c 20 82 e2                                      add r2, r2, #0x1c
00361a44  cc 71 84 e5                                      str r7, [r4, #0x1cc]
00361a48  00 20 84 e5                                      str r2, [r4]
00361a4c  d0 11 84 e5                                      str r1, [r4, #0x1d0]
00361a50  80 31 84 e5                                      str r3, [r4, #0x180]
00361a54  84 31 84 e5                                      str r3, [r4, #0x184]
00361a58  88 31 84 e5                                      str r3, [r4, #0x188]
00361a5c  8c 31 84 e5                                      str r3, [r4, #0x18c]
00361a60  90 31 84 e5                                      str r3, [r4, #0x190]
00361a64  94 31 84 e5                                      str r3, [r4, #0x194]
00361a68  98 31 84 e5                                      str r3, [r4, #0x198]
00361a6c  9c 31 84 e5                                      str r3, [r4, #0x19c]
00361a70  a0 31 84 e5                                      str r3, [r4, #0x1a0]
00361a74  a4 31 84 e5                                      str r3, [r4, #0x1a4]
00361a78  a8 31 84 e5                                      str r3, [r4, #0x1a8]
00361a7c  ac 31 84 e5                                      str r3, [r4, #0x1ac]
00361a80  b0 31 84 e5                                      str r3, [r4, #0x1b0]
00361a84  b4 31 84 e5                                      str r3, [r4, #0x1b4]
00361a88  b8 31 84 e5                                      str r3, [r4, #0x1b8]
00361a8c  bc 31 84 e5                                      str r3, [r4, #0x1bc]
00361a90  c0 31 84 e5                                      str r3, [r4, #0x1c0]
00361a94  ff fd ff eb                                      bl #0x361298
00361a98  04 00 a0 e1                                      mov r0, r4
00361a9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00361aa0  b8 30 63 00 c8 26 00 00 44 2b 00 00 c0 3f 00 00  .byte 0xb8, 0x30, 0x63, 0x00, 0xc8, 0x26, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xc0, 0x3f, 0x00, 0x00

; FUNCTION 0x00361ab0, declared_size=164, range_size=164, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZN33ShadowModularSkinnedMeshSceneNodeC2EN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPKNS2_5scene10ISceneNodeES9_
; demangled: ShadowModularSkinnedMeshSceneNode::ShadowModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>, glitch::scene::ISceneNode const*, glitch::scene::ISceneNode const*)
; decoder-mode: arm
00361ab0  70 40 2d e9                                      push {r4, r5, r6, lr}
00361ab4  01 40 a0 e1                                      mov r4, r1
00361ab8  04 10 81 e2                                      add r1, r1, #4
00361abc  00 50 a0 e1                                      mov r5, r0
00361ac0  03 60 a0 e1                                      mov r6, r3
00361ac4  e4 e4 ff eb                                      bl #0x35ae5c
00361ac8  00 20 94 e5                                      ldr r2, [r4]
00361acc  00 30 a0 e3                                      mov r3, #0
00361ad0  05 00 a0 e1                                      mov r0, r5
00361ad4  00 20 85 e5                                      str r2, [r5]
00361ad8  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00361adc  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00361ae0  02 10 85 e7                                      str r1, [r5, r2]
00361ae4  00 20 95 e5                                      ldr r2, [r5]
00361ae8  50 10 94 e5                                      ldr r1, [r4, #0x50]
00361aec  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00361af0  02 10 85 e7                                      str r1, [r5, r2]
00361af4  c4 31 85 e5                                      str r3, [r5, #0x1c4]
00361af8  c8 61 85 e5                                      str r6, [r5, #0x1c8]
00361afc  10 20 9d e5                                      ldr r2, [sp, #0x10]
00361b00  80 31 85 e5                                      str r3, [r5, #0x180]
00361b04  84 31 85 e5                                      str r3, [r5, #0x184]
00361b08  cc 21 85 e5                                      str r2, [r5, #0x1cc]
00361b0c  88 31 85 e5                                      str r3, [r5, #0x188]
00361b10  8c 31 85 e5                                      str r3, [r5, #0x18c]
00361b14  90 31 85 e5                                      str r3, [r5, #0x190]
00361b18  94 31 85 e5                                      str r3, [r5, #0x194]
00361b1c  98 31 85 e5                                      str r3, [r5, #0x198]
00361b20  9c 31 85 e5                                      str r3, [r5, #0x19c]
00361b24  a0 31 85 e5                                      str r3, [r5, #0x1a0]
00361b28  a4 31 85 e5                                      str r3, [r5, #0x1a4]
00361b2c  a8 31 85 e5                                      str r3, [r5, #0x1a8]
00361b30  ac 31 85 e5                                      str r3, [r5, #0x1ac]
00361b34  b0 31 85 e5                                      str r3, [r5, #0x1b0]
00361b38  b4 31 85 e5                                      str r3, [r5, #0x1b4]
00361b3c  b8 31 85 e5                                      str r3, [r5, #0x1b8]
00361b40  bc 31 85 e5                                      str r3, [r5, #0x1bc]
00361b44  c0 31 85 e5                                      str r3, [r5, #0x1c0]
00361b48  d2 fd ff eb                                      bl #0x361298
00361b4c  05 00 a0 e1                                      mov r0, r5
00361b50  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003622fc, declared_size=16, range_size=16, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZTv0_n24_N33ShadowModularSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode()
; decoder-mode: arm
003622fc  00 30 90 e5                                      ldr r3, [r0]
00362300  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00362304  03 00 80 e0                                      add r0, r0, r3
00362308  ef f7 ff ea                                      b #0x3602cc

; FUNCTION 0x0036230c, declared_size=16, range_size=16, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZTv0_n12_N33ShadowModularSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode()
; decoder-mode: arm
0036230c  00 30 90 e5                                      ldr r3, [r0]
00362310  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00362314  03 00 80 e0                                      add r0, r0, r3
00362318  eb f7 ff ea                                      b #0x3602cc

; FUNCTION 0x0036231c, declared_size=16, range_size=16, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZTv0_n24_N33ShadowModularSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode()
; decoder-mode: arm
0036231c  00 30 90 e5                                      ldr r3, [r0]
00362320  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00362324  03 00 80 e0                                      add r0, r0, r3
00362328  b3 f7 ff ea                                      b #0x3601fc

; FUNCTION 0x0036232c, declared_size=16, range_size=16, mode=arm
; class-group: ShadowModularSkinnedMeshSceneNode
; alias: _ZTv0_n12_N33ShadowModularSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode()
; decoder-mode: arm
0036232c  00 30 90 e5                                      ldr r3, [r0]
00362330  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00362334  03 00 80 e0                                      add r0, r0, r3
00362338  af f7 ff ea                                      b #0x3601fc
