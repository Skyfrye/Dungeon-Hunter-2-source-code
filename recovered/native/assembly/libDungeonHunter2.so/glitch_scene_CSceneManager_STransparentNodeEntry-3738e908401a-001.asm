; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003538ac, declared_size=316, range_size=316, mode=arm
; class-group: glitch::scene::CSceneManager::STransparentNodeEntry
; alias: _ZNK6glitch5scene13CSceneManager21STransparentNodeEntryltERKS2_
; demangled: glitch::scene::CSceneManager::STransparentNodeEntry::operator<(glitch::scene::CSceneManager::STransparentNodeEntry const&) const
; decoder-mode: arm
003538ac  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003538b0  08 30 91 e5                                      ldr r3, [r1, #8]
003538b4  0c d0 4d e2                                      sub sp, sp, #0xc
003538b8  01 40 a0 e1                                      mov r4, r1
003538bc  00 00 53 e3                                      cmp r3, #0
003538c0  04 30 8d e5                                      str r3, [sp, #4]
003538c4  00 20 93 15                                      ldrne r2, [r3]
003538c8  00 50 a0 e1                                      mov r5, r0
003538cc  01 20 82 12                                      addne r2, r2, #1
003538d0  00 20 83 15                                      strne r2, [r3]
003538d4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003538d8  0c 30 91 e5                                      ldr r3, [r1, #0xc]
003538dc  03 00 52 e1                                      cmp r2, r3
003538e0  2c 00 00 ca                                      bgt #0x353998
003538e4  05 00 00 0a                                      beq #0x353900
003538e8  00 50 a0 e3                                      mov r5, #0
003538ec  04 00 8d e2                                      add r0, sp, #4
003538f0  51 f9 ff eb                                      bl #0x351e3c
003538f4  05 00 a0 e1                                      mov r0, r5
003538f8  0c d0 8d e2                                      add sp, sp, #0xc
003538fc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00353900  10 70 90 e5                                      ldr r7, [r0, #0x10]
00353904  10 60 91 e5                                      ldr r6, [r1, #0x10]
00353908  07 00 a0 e1                                      mov r0, r7
0035390c  06 10 a0 e1                                      mov r1, r6
00353910  78 ea fe eb                                      bl #0x30e2f8
00353914  00 00 50 e3                                      cmp r0, #0
00353918  1e 00 00 1a                                      bne #0x353998
0035391c  07 00 a0 e1                                      mov r0, r7
00353920  06 10 a0 e1                                      mov r1, r6
00353924  98 e9 fe eb                                      bl #0x30df8c
00353928  00 00 50 e3                                      cmp r0, #0
0035392c  ed ff ff 0a                                      beq #0x3538e8
00353930  08 00 95 e5                                      ldr r0, [r5, #8]
00353934  00 00 50 e3                                      cmp r0, #0
00353938  21 00 00 0a                                      beq #0x3539c4
0035393c  04 10 9d e5                                      ldr r1, [sp, #4]
00353940  00 00 51 e3                                      cmp r1, #0
00353944  1a 00 00 0a                                      beq #0x3539b4
00353948  98 ff ff eb                                      bl #0x3537b0
0035394c  00 00 50 e3                                      cmp r0, #0
00353950  12 00 00 0a                                      beq #0x3539a0
00353954  00 30 95 e5                                      ldr r3, [r5]
00353958  04 10 95 e5                                      ldr r1, [r5, #4]
0035395c  03 00 a0 e1                                      mov r0, r3
00353960  00 30 93 e5                                      ldr r3, [r3]
00353964  0f e0 a0 e1                                      mov lr, pc
00353968  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0035396c  00 30 94 e5                                      ldr r3, [r4]
00353970  00 50 a0 e1                                      mov r5, r0
00353974  04 10 94 e5                                      ldr r1, [r4, #4]
00353978  03 00 a0 e1                                      mov r0, r3
0035397c  00 30 93 e5                                      ldr r3, [r3]
00353980  0f e0 a0 e1                                      mov lr, pc
00353984  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00353988  00 00 55 e1                                      cmp r5, r0
0035398c  00 50 a0 a3                                      movge r5, #0
00353990  01 50 a0 b3                                      movlt r5, #1
00353994  d4 ff ff ea                                      b #0x3538ec
00353998  01 50 a0 e3                                      mov r5, #1
0035399c  d2 ff ff ea                                      b #0x3538ec
003539a0  08 00 95 e5                                      ldr r0, [r5, #8]
003539a4  04 10 9d e5                                      ldr r1, [sp, #4]
003539a8  8d ff ff eb                                      bl #0x3537e4
003539ac  00 50 a0 e1                                      mov r5, r0
003539b0  cd ff ff ea                                      b #0x3538ec
003539b4  01 00 50 e1                                      cmp r0, r1
003539b8  00 50 a0 23                                      movhs r5, #0
003539bc  01 50 a0 33                                      movlo r5, #1
003539c0  c9 ff ff ea                                      b #0x3538ec
003539c4  04 10 9d e5                                      ldr r1, [sp, #4]
003539c8  00 00 51 e3                                      cmp r1, #0
003539cc  f8 ff ff 1a                                      bne #0x3539b4
003539d0  00 50 95 e5                                      ldr r5, [r5]
003539d4  00 30 94 e5                                      ldr r3, [r4]
003539d8  03 00 55 e1                                      cmp r5, r3
003539dc  00 50 a0 23                                      movhs r5, #0
003539e0  01 50 a0 33                                      movlo r5, #1
003539e4  c0 ff ff ea                                      b #0x3538ec

; FUNCTION 0x00354e8c, declared_size=372, range_size=372, mode=arm
; class-group: glitch::scene::CSceneManager::STransparentNodeEntry
; alias: _ZN6glitch5scene13CSceneManager21STransparentNodeEntryC1EPNS0_10ISceneNodeERKNS_4core8vector3dIfEEN5boost13intrusive_ptrINS_5video9CMaterialEEEPvPS8_i
; demangled: glitch::scene::CSceneManager::STransparentNodeEntry::STransparentNodeEntry(glitch::scene::ISceneNode*, glitch::core::vector3d<float> const&, boost::intrusive_ptr<glitch::video::CMaterial>, void*, glitch::core::vector3d<float> const*, int)
; decoder-mode: arm
00354e8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00354e90  00 30 93 e5                                      ldr r3, [r3]
00354e94  08 d0 4d e2                                      sub sp, sp, #8
00354e98  00 40 a0 e1                                      mov r4, r0
00354e9c  04 30 8d e5                                      str r3, [sp, #4]
00354ea0  00 00 53 e3                                      cmp r3, #0
00354ea4  00 00 93 15                                      ldrne r0, [r3]
00354ea8  24 50 9d e5                                      ldr r5, [sp, #0x24]
00354eac  02 60 a0 e1                                      mov r6, r2
00354eb0  01 00 80 12                                      addne r0, r0, #1
00354eb4  28 20 9d e5                                      ldr r2, [sp, #0x28]
00354eb8  00 00 83 15                                      strne r0, [r3]
00354ebc  04 30 9d e5                                      ldr r3, [sp, #4]
00354ec0  00 10 84 e5                                      str r1, [r4]
00354ec4  20 10 9d e5                                      ldr r1, [sp, #0x20]
00354ec8  00 00 53 e3                                      cmp r3, #0
00354ecc  0a 00 84 e9                                      stmib r4, {r1, r3}
00354ed0  00 10 93 15                                      ldrne r1, [r3]
00354ed4  01 10 81 12                                      addne r1, r1, #1
00354ed8  00 10 83 15                                      strne r1, [r3]
00354edc  06 01 72 e3                                      cmn r2, #0x80000001
00354ee0  0c 20 84 15                                      strne r2, [r4, #0xc]
00354ee4  2d 00 00 0a                                      beq #0x354fa0
00354ee8  04 00 8d e2                                      add r0, sp, #4
00354eec  3d ef fe eb                                      bl #0x310be8
00354ef0  00 00 55 e3                                      cmp r5, #0
00354ef4  30 00 00 0a                                      beq #0x354fbc
00354ef8  00 10 96 e5                                      ldr r1, [r6]
00354efc  00 00 95 e5                                      ldr r0, [r5]
00354f00  29 e5 fe eb                                      bl #0x30e3ac
00354f04  04 10 96 e5                                      ldr r1, [r6, #4]
00354f08  00 80 a0 e1                                      mov r8, r0
00354f0c  04 00 95 e5                                      ldr r0, [r5, #4]
00354f10  25 e5 fe eb                                      bl #0x30e3ac
00354f14  08 10 96 e5                                      ldr r1, [r6, #8]
00354f18  00 70 a0 e1                                      mov r7, r0
00354f1c  08 00 95 e5                                      ldr r0, [r5, #8]
00354f20  21 e5 fe eb                                      bl #0x30e3ac
00354f24  08 10 a0 e1                                      mov r1, r8
00354f28  00 60 a0 e1                                      mov r6, r0
00354f2c  08 00 a0 e1                                      mov r0, r8
00354f30  8d e7 fe eb                                      bl #0x30ed6c
00354f34  07 10 a0 e1                                      mov r1, r7
00354f38  00 50 a0 e1                                      mov r5, r0
00354f3c  07 00 a0 e1                                      mov r0, r7
00354f40  89 e7 fe eb                                      bl #0x30ed6c
00354f44  00 10 a0 e1                                      mov r1, r0
00354f48  05 00 a0 e1                                      mov r0, r5
00354f4c  14 e7 fe eb                                      bl #0x30eba4
00354f50  06 10 a0 e1                                      mov r1, r6
00354f54  00 50 a0 e1                                      mov r5, r0
00354f58  06 00 a0 e1                                      mov r0, r6
00354f5c  82 e7 fe eb                                      bl #0x30ed6c
00354f60  00 10 a0 e1                                      mov r1, r0
00354f64  05 00 a0 e1                                      mov r0, r5
00354f68  0d e7 fe eb                                      bl #0x30eba4
00354f6c  00 30 94 e5                                      ldr r3, [r4]
00354f70  00 50 a0 e1                                      mov r5, r0
00354f74  03 00 a0 e1                                      mov r0, r3
00354f78  00 30 93 e5                                      ldr r3, [r3]
00354f7c  0f e0 a0 e1                                      mov lr, pc
00354f80  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
00354f84  00 10 a0 e1                                      mov r1, r0
00354f88  05 00 a0 e1                                      mov r0, r5
00354f8c  04 e7 fe eb                                      bl #0x30eba4
00354f90  10 00 84 e5                                      str r0, [r4, #0x10]
00354f94  04 00 a0 e1                                      mov r0, r4
00354f98  08 d0 8d e2                                      add sp, sp, #8
00354f9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00354fa0  00 30 94 e5                                      ldr r3, [r4]
00354fa4  03 00 a0 e1                                      mov r0, r3
00354fa8  00 30 93 e5                                      ldr r3, [r3]
00354fac  0f e0 a0 e1                                      mov lr, pc
00354fb0  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
00354fb4  0c 00 84 e5                                      str r0, [r4, #0xc]
00354fb8  ca ff ff ea                                      b #0x354ee8
00354fbc  00 30 94 e5                                      ldr r3, [r4]
00354fc0  03 00 a0 e1                                      mov r0, r3
00354fc4  00 30 93 e5                                      ldr r3, [r3]
00354fc8  0f e0 a0 e1                                      mov lr, pc
00354fcc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00354fd0  00 10 96 e5                                      ldr r1, [r6]
00354fd4  00 50 a0 e1                                      mov r5, r0
00354fd8  30 00 90 e5                                      ldr r0, [r0, #0x30]
00354fdc  f2 e4 fe eb                                      bl #0x30e3ac
00354fe0  04 10 96 e5                                      ldr r1, [r6, #4]
00354fe4  00 80 a0 e1                                      mov r8, r0
00354fe8  34 00 95 e5                                      ldr r0, [r5, #0x34]
00354fec  ee e4 fe eb                                      bl #0x30e3ac
00354ff0  08 10 96 e5                                      ldr r1, [r6, #8]
00354ff4  00 70 a0 e1                                      mov r7, r0
00354ff8  38 00 95 e5                                      ldr r0, [r5, #0x38]
00354ffc  c7 ff ff ea                                      b #0x354f20

; FUNCTION 0x0058d710, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CSceneManager::STransparentNodeEntry
; alias: _ZN6glitch5scene13CSceneManager21STransparentNodeEntryD1Ev
; demangled: glitch::scene::CSceneManager::STransparentNodeEntry::~STransparentNodeEntry()
; decoder-mode: arm
0058d710  70 40 2d e9                                      push {r4, r5, r6, lr}
0058d714  08 40 90 e5                                      ldr r4, [r0, #8]
0058d718  00 50 a0 e1                                      mov r5, r0
0058d71c  00 00 54 e3                                      cmp r4, #0
0058d720  04 00 00 0a                                      beq #0x58d738
0058d724  00 30 94 e5                                      ldr r3, [r4]
0058d728  01 30 43 e2                                      sub r3, r3, #1
0058d72c  00 00 53 e3                                      cmp r3, #0
0058d730  00 30 84 e5                                      str r3, [r4]
0058d734  01 00 00 0a                                      beq #0x58d740
0058d738  05 00 a0 e1                                      mov r0, r5
0058d73c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0058d740  04 00 a0 e1                                      mov r0, r4
0058d744  0b fa 00 eb                                      bl #0x5cbf78
0058d748  04 00 a0 e1                                      mov r0, r4
0058d74c  d7 02 f6 eb                                      bl #0x30e2b0
0058d750  05 00 a0 e1                                      mov r0, r5
0058d754  70 80 bd e8                                      pop {r4, r5, r6, pc}
