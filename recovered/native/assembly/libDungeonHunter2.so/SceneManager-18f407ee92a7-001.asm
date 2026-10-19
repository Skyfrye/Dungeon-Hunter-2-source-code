; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00350e5c, declared_size=36, range_size=36, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12SearchByTypeEPN6glitch5scene10ISceneNodeERSt6vectorIS3_NS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEENS1_17E_SCENE_NODE_TYPEE
; demangled: SceneManager::SearchByType(glitch::scene::ISceneNode*, std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >&, glitch::scene::E_SCENE_NODE_TYPE)
; decoder-mode: arm
00350e5c  00 c0 51 e2                                      subs ip, r1, #0
00350e60  10 40 2d e9                                      push {r4, lr}
00350e64  04 00 00 0a                                      beq #0x350e7c
00350e68  03 10 a0 e1                                      mov r1, r3
00350e6c  00 40 90 e5                                      ldr r4, [r0]
00350e70  0c 30 a0 e1                                      mov r3, ip
00350e74  0f e0 a0 e1                                      mov lr, pc
00350e78  20 f0 94 e5                                      ldr pc, [r4, #0x20]
00350e7c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00350e80, declared_size=12, range_size=12, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager10DisableFogEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::DisableFog(glitch::scene::ISceneNode*)
; decoder-mode: arm
00350e80  00 30 a0 e3                                      mov r3, #0
00350e84  32 34 c0 e5                                      strb r3, [r0, #0x432]
00350e88  1e ff 2f e1                                      bx lr

; FUNCTION 0x00350e8c, declared_size=84, range_size=84, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager13DBG_PrintNodeEPN6glitch5scene10ISceneNodeEbj
; demangled: SceneManager::DBG_PrintNode(glitch::scene::ISceneNode*, bool, unsigned int)
; decoder-mode: arm
00350e8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00350e90  00 50 51 e2                                      subs r5, r1, #0
00350e94  00 60 a0 e1                                      mov r6, r0
00350e98  0f 00 00 0a                                      beq #0x350edc
00350e9c  00 00 52 e3                                      cmp r2, #0
00350ea0  0d 00 00 0a                                      beq #0x350edc
00350ea4  f4 40 b5 e5                                      ldr r4, [r5, #0xf4]!
00350ea8  05 00 54 e1                                      cmp r4, r5
00350eac  0a 00 00 0a                                      beq #0x350edc
00350eb0  01 70 83 e2                                      add r7, r3, #1
00350eb4  00 00 54 e3                                      cmp r4, #0
00350eb8  04 10 a0 01                                      moveq r1, r4
00350ebc  04 10 44 12                                      subne r1, r4, #4
00350ec0  06 00 a0 e1                                      mov r0, r6
00350ec4  01 20 a0 e3                                      mov r2, #1
00350ec8  07 30 a0 e1                                      mov r3, r7
00350ecc  ee ff ff eb                                      bl #0x350e8c
00350ed0  00 40 94 e5                                      ldr r4, [r4]
00350ed4  04 00 55 e1                                      cmp r5, r4
00350ed8  f5 ff ff 1a                                      bne #0x350eb4
00350edc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00350ee0, declared_size=16, range_size=16, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager13ForceRegisterEv
; demangled: SceneManager::ForceRegister()
; decoder-mode: arm
00350ee0  01 30 a0 e3                                      mov r3, #1
00350ee4  48 34 c0 e5                                      strb r3, [r0, #0x448]
00350ee8  89 32 c0 e5                                      strb r3, [r0, #0x289]
00350eec  1e ff 2f e1                                      bx lr

; FUNCTION 0x00350ef0, declared_size=16, range_size=16, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager28setSceneNodeCustomRenderPassE31E_SCENE_NODE_CUSTOM_RENDER_PASS
; demangled: SceneManager::setSceneNodeCustomRenderPass(E_SCENE_NODE_CUSTOM_RENDER_PASS)
; decoder-mode: arm
00350ef0  00 30 a0 e1                                      mov r3, r0
00350ef4  88 04 90 e5                                      ldr r0, [r0, #0x488]
00350ef8  88 14 83 e5                                      str r1, [r3, #0x488]
00350efc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00352154, declared_size=356, range_size=356, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager14DBG_DrawCircleERK7Point2DIfEffRKN6glitch5video6SColorE
; demangled: SceneManager::DBG_DrawCircle(Point2D<float> const&, float, float, glitch::video::SColor const&)
; decoder-mode: arm
00352154  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00352158  00 c0 a0 e3                                      mov ip, #0
0035215c  2c d0 4d e2                                      sub sp, sp, #0x2c
00352160  04 c0 8d e5                                      str ip, [sp, #4]
00352164  03 40 a0 e1                                      mov r4, r3
00352168  1c 30 8d e2                                      add r3, sp, #0x1c
0035216c  14 70 90 e5                                      ldr r7, [r0, #0x14]
00352170  16 9f 0e e3                                      movw sb, #0xef16
00352174  5e b3 08 e3                                      movw fp, #0x835e
00352178  fe c5 a0 e3                                      mov ip, #0x3f800000
0035217c  08 30 8d e5                                      str r3, [sp, #8]
00352180  10 30 8d e2                                      add r3, sp, #0x10
00352184  01 50 a0 e1                                      mov r5, r1
00352188  50 60 9d e5                                      ldr r6, [sp, #0x50]
0035218c  c3 9e 43 e3                                      movt sb, #0x3ec3
00352190  6c bf 43 e3                                      movt fp, #0x3f6c
00352194  24 20 8d e5                                      str r2, [sp, #0x24]
00352198  18 20 8d e5                                      str r2, [sp, #0x18]
0035219c  00 80 a0 e3                                      mov r8, #0
003521a0  04 a0 9d e5                                      ldr sl, [sp, #4]
003521a4  0c 30 8d e5                                      str r3, [sp, #0xc]
003521a8  0c 10 a0 e1                                      mov r1, ip
003521ac  0c 00 00 ea                                      b #0x3521e4
003521b0  7b f2 fe eb                                      bl #0x30eba4
003521b4  00 00 8d e5                                      str r0, [sp]
003521b8  65 f1 fe eb                                      bl #0x30e754
003521bc  00 20 9d e5                                      ldr r2, [sp]
003521c0  00 30 a0 e1                                      mov r3, r0
003521c4  00 30 8d e5                                      str r3, [sp]
003521c8  02 00 a0 e1                                      mov r0, r2
003521cc  4d f2 fe eb                                      bl #0x30eb08
003521d0  00 30 9d e5                                      ldr r3, [sp]
003521d4  04 90 8d e5                                      str sb, [sp, #4]
003521d8  0b 10 a0 e1                                      mov r1, fp
003521dc  00 90 a0 e1                                      mov sb, r0
003521e0  03 b0 a0 e1                                      mov fp, r3
003521e4  04 00 a0 e1                                      mov r0, r4
003521e8  df f2 fe eb                                      bl #0x30ed6c
003521ec  00 10 a0 e1                                      mov r1, r0
003521f0  00 00 95 e5                                      ldr r0, [r5]
003521f4  6a f2 fe eb                                      bl #0x30eba4
003521f8  04 10 9d e5                                      ldr r1, [sp, #4]
003521fc  1c 00 8d e5                                      str r0, [sp, #0x1c]
00352200  04 00 a0 e1                                      mov r0, r4
00352204  d8 f2 fe eb                                      bl #0x30ed6c
00352208  00 10 a0 e1                                      mov r1, r0
0035220c  04 00 95 e5                                      ldr r0, [r5, #4]
00352210  63 f2 fe eb                                      bl #0x30eba4
00352214  db 1f 00 e3                                      movw r1, #0xfdb
00352218  20 00 8d e5                                      str r0, [sp, #0x20]
0035221c  c9 1e 43 e3                                      movt r1, #0x3ec9
00352220  0a 00 a0 e1                                      mov r0, sl
00352224  5e f2 fe eb                                      bl #0x30eba4
00352228  0b 10 a0 e1                                      mov r1, fp
0035222c  00 a0 a0 e1                                      mov sl, r0
00352230  04 00 a0 e1                                      mov r0, r4
00352234  cc f2 fe eb                                      bl #0x30ed6c
00352238  00 10 a0 e1                                      mov r1, r0
0035223c  00 00 95 e5                                      ldr r0, [r5]
00352240  57 f2 fe eb                                      bl #0x30eba4
00352244  09 10 a0 e1                                      mov r1, sb
00352248  10 00 8d e5                                      str r0, [sp, #0x10]
0035224c  04 00 a0 e1                                      mov r0, r4
00352250  c5 f2 fe eb                                      bl #0x30ed6c
00352254  00 10 a0 e1                                      mov r1, r0
00352258  04 00 95 e5                                      ldr r0, [r5, #4]
0035225c  50 f2 fe eb                                      bl #0x30eba4
00352260  01 c0 d6 e5                                      ldrb ip, [r6, #1]
00352264  00 10 d6 e5                                      ldrb r1, [r6]
00352268  02 30 d6 e5                                      ldrb r3, [r6, #2]
0035226c  03 20 d6 e5                                      ldrb r2, [r6, #3]
00352270  0c 14 81 e1                                      orr r1, r1, ip, lsl #8
00352274  14 00 8d e5                                      str r0, [sp, #0x14]
00352278  03 38 81 e1                                      orr r3, r1, r3, lsl #16
0035227c  02 3c 83 e1                                      orr r3, r3, r2, lsl #24
00352280  07 00 a0 e1                                      mov r0, r7
00352284  08 10 9d e5                                      ldr r1, [sp, #8]
00352288  01 80 88 e2                                      add r8, r8, #1
0035228c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00352290  00 c0 97 e5                                      ldr ip, [r7]
00352294  0f e0 a0 e1                                      mov lr, pc
00352298  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0035229c  db 1f 00 e3                                      movw r1, #0xfdb
003522a0  10 00 58 e3                                      cmp r8, #0x10
003522a4  c9 1e 43 e3                                      movt r1, #0x3ec9
003522a8  0a 00 a0 e1                                      mov r0, sl
003522ac  bf ff ff 1a                                      bne #0x3521b0
003522b0  2c d0 8d e2                                      add sp, sp, #0x2c
003522b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x003522f8, declared_size=68, range_size=68, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager9UpdateFogEffRK7Point3DIfE
; demangled: SceneManager::UpdateFog(float, float, Point3D<float> const&)
; decoder-mode: arm
003522f8  04 e0 2d e5                                      str lr, [sp, #-4]!
003522fc  32 34 d0 e5                                      ldrb r3, [r0, #0x432]
00352300  0c d0 4d e2                                      sub sp, sp, #0xc
00352304  00 00 53 e3                                      cmp r3, #0
00352308  09 00 00 0a                                      beq #0x352334
0035230c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00352310  04 20 8d e5                                      str r2, [sp, #4]
00352314  00 10 8d e5                                      str r1, [sp]
00352318  ba 1f d3 e1                                      ldrh r1, [r3, #0xfa]
0035231c  e4 00 93 e5                                      ldr r0, [r3, #0xe4]
00352320  00 20 a0 e3                                      mov r2, #0
00352324  02 10 81 e2                                      add r1, r1, #2
00352328  71 10 ff e6                                      uxth r1, r1
0035232c  0d 30 a0 e1                                      mov r3, sp
00352330  f3 c9 09 eb                                      bl #0x5c4b04
00352334  0c d0 8d e2                                      add sp, sp, #0xc
00352338  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0035233c, declared_size=136, range_size=136, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager9EnableFogEffRK7Point3DIfEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::EnableFog(float, float, Point3D<float> const&, glitch::scene::ISceneNode*)
; decoder-mode: arm
0035233c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00352340  14 d0 4d e2                                      sub sp, sp, #0x14
00352344  14 40 90 e5                                      ldr r4, [r0, #0x14]
00352348  08 20 8d e5                                      str r2, [sp, #8]
0035234c  01 20 a0 e3                                      mov r2, #1
00352350  04 10 8d e5                                      str r1, [sp, #4]
00352354  32 24 c0 e5                                      strb r2, [r0, #0x432]
00352358  ba 1f d4 e1                                      ldrh r1, [r4, #0xfa]
0035235c  03 50 a0 e1                                      mov r5, r3
00352360  00 20 a0 e3                                      mov r2, #0
00352364  02 10 81 e2                                      add r1, r1, #2
00352368  04 30 8d e2                                      add r3, sp, #4
0035236c  71 10 ff e6                                      uxth r1, r1
00352370  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
00352374  e2 c9 09 eb                                      bl #0x5c4b04
00352378  04 00 95 e5                                      ldr r0, [r5, #4]
0035237c  c7 af 15 eb                                      bl #0x8be2a0
00352380  70 70 ef e6                                      uxtb r7, r0
00352384  08 00 95 e5                                      ldr r0, [r5, #8]
00352388  c4 af 15 eb                                      bl #0x8be2a0
0035238c  70 60 ef e6                                      uxtb r6, r0
00352390  00 00 95 e5                                      ldr r0, [r5]
00352394  c1 af 15 eb                                      bl #0x8be2a0
00352398  00 20 a0 e3                                      mov r2, #0
0035239c  0c 00 cd e5                                      strb r0, [sp, #0xc]
003523a0  0d 70 cd e5                                      strb r7, [sp, #0xd]
003523a4  0e 60 cd e5                                      strb r6, [sp, #0xe]
003523a8  0f 20 cd e5                                      strb r2, [sp, #0xf]
003523ac  ba 1f d4 e1                                      ldrh r1, [r4, #0xfa]
003523b0  e4 00 94 e5                                      ldr r0, [r4, #0xe4]
003523b4  0c 30 8d e2                                      add r3, sp, #0xc
003523b8  0f c9 09 eb                                      bl #0x5c47fc
003523bc  14 d0 8d e2                                      add sp, sp, #0x14
003523c0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x003523c4, declared_size=220, range_size=220, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12SetCustomFogERN5boost13intrusive_ptrIN6glitch5video9CMaterialEEENS2_4core8vector3dIfEES9_S9_
; demangled: SceneManager::SetCustomFog(boost::intrusive_ptr<glitch::video::CMaterial>&, glitch::core::vector3d<float>, glitch::core::vector3d<float>, glitch::core::vector3d<float>)
; decoder-mode: arm
003523c4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003523c8  01 40 a0 e1                                      mov r4, r1
003523cc  00 10 91 e5                                      ldr r1, [r1]
003523d0  02 80 a0 e1                                      mov r8, r2
003523d4  00 20 a0 e3                                      mov r2, #0
003523d8  04 00 91 e5                                      ldr r0, [r1, #4]
003523dc  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
003523e0  03 90 a0 e1                                      mov sb, r3
003523e4  20 70 9d e5                                      ldr r7, [sp, #0x20]
003523e8  01 10 8f e0                                      add r1, pc, r1
003523ec  26 03 0a eb                                      bl #0x5d308c
003523f0  00 30 94 e5                                      ldr r3, [r4]
003523f4  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
003523f8  00 a0 a0 e1                                      mov sl, r0
003523fc  00 20 a0 e3                                      mov r2, #0
00352400  04 00 93 e5                                      ldr r0, [r3, #4]
00352404  01 10 8f e0                                      add r1, pc, r1
00352408  1f 03 0a eb                                      bl #0x5d308c
0035240c  00 30 94 e5                                      ldr r3, [r4]
00352410  84 10 9f e5                                      ldr r1, [pc, #0x84]
00352414  00 60 a0 e1                                      mov r6, r0
00352418  00 20 a0 e3                                      mov r2, #0
0035241c  04 00 93 e5                                      ldr r0, [r3, #4]
00352420  01 10 8f e0                                      add r1, pc, r1
00352424  18 03 0a eb                                      bl #0x5d308c
00352428  ff 3f 0f e3                                      movw r3, #0xffff
0035242c  03 00 5a e1                                      cmp sl, r3
00352430  00 50 a0 e1                                      mov r5, r0
00352434  04 00 00 0a                                      beq #0x35244c
00352438  0a 10 a0 e1                                      mov r1, sl
0035243c  08 30 a0 e1                                      mov r3, r8
00352440  00 00 94 e5                                      ldr r0, [r4]
00352444  00 20 a0 e3                                      mov r2, #0
00352448  6f d0 09 eb                                      bl #0x5c660c
0035244c  ff 3f 0f e3                                      movw r3, #0xffff
00352450  03 00 56 e1                                      cmp r6, r3
00352454  04 00 00 0a                                      beq #0x35246c
00352458  06 10 a0 e1                                      mov r1, r6
0035245c  09 30 a0 e1                                      mov r3, sb
00352460  00 00 94 e5                                      ldr r0, [r4]
00352464  00 20 a0 e3                                      mov r2, #0
00352468  67 d0 09 eb                                      bl #0x5c660c
0035246c  ff 3f 0f e3                                      movw r3, #0xffff
00352470  03 00 55 e1                                      cmp r5, r3
00352474  05 00 00 0a                                      beq #0x352490
00352478  00 00 94 e5                                      ldr r0, [r4]
0035247c  05 10 a0 e1                                      mov r1, r5
00352480  07 30 a0 e1                                      mov r3, r7
00352484  00 20 a0 e3                                      mov r2, #0
00352488  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0035248c  5e d0 09 ea                                      b #0x5c660c
00352490  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00352494  c0 e3 56 00 bc e3 56 00 b0 e3 56 00              .byte 0xc0, 0xe3, 0x56, 0x00, 0xbc, 0xe3, 0x56, 0x00, 0xb0, 0xe3, 0x56, 0x00

; FUNCTION 0x003524a0, declared_size=276, range_size=276, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12AddNodeToMapEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::AddNodeToMap(glitch::scene::ISceneNode*)
; decoder-mode: arm
003524a0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003524a4  8c 62 90 e5                                      ldr r6, [r0, #0x28c]
003524a8  14 d0 4d e2                                      sub sp, sp, #0x14
003524ac  00 50 a0 e1                                      mov r5, r0
003524b0  00 00 56 e3                                      cmp r6, #0
003524b4  01 40 a0 e1                                      mov r4, r1
003524b8  24 00 00 0a                                      beq #0x352550
003524bc  00 30 94 e5                                      ldr r3, [r4]
003524c0  04 00 a0 e1                                      mov r0, r4
003524c4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003524c8  03 30 84 e0                                      add r3, r4, r3
003524cc  04 20 93 e5                                      ldr r2, [r3, #4]
003524d0  01 20 82 e2                                      add r2, r2, #1
003524d4  04 20 83 e5                                      str r2, [r3, #4]
003524d8  6c 13 09 eb                                      bl #0x597290
003524dc  00 00 50 e3                                      cmp r0, #0
003524e0  0c 00 00 0a                                      beq #0x352518
003524e4  00 30 94 e5                                      ldr r3, [r4]
003524e8  04 60 8d e2                                      add r6, sp, #4
003524ec  06 00 a0 e1                                      mov r0, r6
003524f0  04 10 a0 e1                                      mov r1, r4
003524f4  a4 70 93 e5                                      ldr r7, [r3, #0xa4]
003524f8  20 13 09 eb                                      bl #0x597180
003524fc  04 00 a0 e1                                      mov r0, r4
00352500  06 10 a0 e1                                      mov r1, r6
00352504  37 ff 2f e1                                      blx r7
00352508  00 30 94 e5                                      ldr r3, [r4]
0035250c  04 00 a0 e1                                      mov r0, r4
00352510  0f e0 a0 e1                                      mov lr, pc
00352514  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00352518  04 00 a0 e1                                      mov r0, r4
0035251c  3f f3 06 eb                                      bl #0x50f220
00352520  8c 32 95 e5                                      ldr r3, [r5, #0x28c]
00352524  04 10 a0 e1                                      mov r1, r4
00352528  03 00 a0 e1                                      mov r0, r3
0035252c  00 30 93 e5                                      ldr r3, [r3]
00352530  0f e0 a0 e1                                      mov lr, pc
00352534  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00352538  00 30 94 e5                                      ldr r3, [r4]
0035253c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00352540  00 00 84 e0                                      add r0, r4, r0
00352544  0e 2c ff eb                                      bl #0x31d584
00352548  14 d0 8d e2                                      add sp, sp, #0x14
0035254c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00352550  06 10 a0 e1                                      mov r1, r6
00352554  15 0e a0 e3                                      mov r0, #0x150
00352558  13 87 07 eb                                      bl #0x5341ac
0035255c  00 10 e0 e3                                      mvn r1, #0
00352560  00 70 a0 e1                                      mov r7, r0
00352564  1b c5 08 eb                                      bl #0x5839d8
00352568  04 30 95 e5                                      ldr r3, [r5, #4]
0035256c  8c 72 85 e5                                      str r7, [r5, #0x28c]
00352570  07 10 a0 e1                                      mov r1, r7
00352574  03 00 a0 e1                                      mov r0, r3
00352578  00 30 93 e5                                      ldr r3, [r3]
0035257c  0f e0 a0 e1                                      mov lr, pc
00352580  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00352584  8c 32 95 e5                                      ldr r3, [r5, #0x28c]
00352588  00 20 93 e5                                      ldr r2, [r3]
0035258c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00352590  00 00 83 e0                                      add r0, r3, r0
00352594  fa 2b ff eb                                      bl #0x31d584
00352598  8c 32 95 e5                                      ldr r3, [r5, #0x28c]
0035259c  06 10 a0 e1                                      mov r1, r6
003525a0  03 00 a0 e1                                      mov r0, r3
003525a4  00 30 93 e5                                      ldr r3, [r3]
003525a8  0f e0 a0 e1                                      mov lr, pc
003525ac  48 f0 93 e5                                      ldr pc, [r3, #0x48]
003525b0  c1 ff ff ea                                      b #0x3524bc

; FUNCTION 0x003525b4, declared_size=180, range_size=180, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager18SetMaterialTextureEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEES5_
; demangled: SceneManager::SetMaterialTexture(boost::intrusive_ptr<glitch::video::CMaterial>, boost::intrusive_ptr<glitch::video::CMaterial>)
; decoder-mode: arm
003525b4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003525b8  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
003525bc  00 30 92 e5                                      ldr r3, [r2]
003525c0  0c d0 4d e2                                      sub sp, sp, #0xc
003525c4  04 40 8f e0                                      add r4, pc, r4
003525c8  01 60 a0 e1                                      mov r6, r1
003525cc  04 00 93 e5                                      ldr r0, [r3, #4]
003525d0  04 10 a0 e1                                      mov r1, r4
003525d4  02 a0 a0 e1                                      mov sl, r2
003525d8  00 20 a0 e3                                      mov r2, #0
003525dc  aa 02 0a eb                                      bl #0x5d308c
003525e0  00 30 96 e5                                      ldr r3, [r6]
003525e4  00 80 a0 e1                                      mov r8, r0
003525e8  04 10 a0 e1                                      mov r1, r4
003525ec  04 00 93 e5                                      ldr r0, [r3, #4]
003525f0  00 20 a0 e3                                      mov r2, #0
003525f4  a4 02 0a eb                                      bl #0x5d308c
003525f8  ff 3f 0f e3                                      movw r3, #0xffff
003525fc  03 00 50 e1                                      cmp r0, r3
00352600  03 00 58 11                                      cmpne r8, r3
00352604  00 50 a0 e1                                      mov r5, r0
00352608  13 00 00 0a                                      beq #0x35265c
0035260c  00 70 a0 e3                                      mov r7, #0
00352610  08 40 8d e2                                      add r4, sp, #8
00352614  04 70 24 e5                                      str r7, [r4, #-4]!
00352618  04 30 a0 e1                                      mov r3, r4
0035261c  00 00 9a e5                                      ldr r0, [sl]
00352620  08 10 a0 e1                                      mov r1, r8
00352624  07 20 a0 e1                                      mov r2, r7
00352628  23 ed 09 eb                                      bl #0x5cdabc
0035262c  04 30 9d e5                                      ldr r3, [sp, #4]
00352630  07 00 53 e1                                      cmp r3, r7
00352634  08 00 00 0a                                      beq #0x35265c
00352638  00 00 96 e5                                      ldr r0, [r6]
0035263c  05 10 a0 e1                                      mov r1, r5
00352640  07 20 a0 e1                                      mov r2, r7
00352644  04 30 a0 e1                                      mov r3, r4
00352648  35 eb 09 eb                                      bl #0x5cd324
0035264c  04 00 9d e5                                      ldr r0, [sp, #4]
00352650  07 00 50 e1                                      cmp r0, r7
00352654  00 00 00 0a                                      beq #0x35265c
00352658  c9 2b ff eb                                      bl #0x31d584
0035265c  0c d0 8d e2                                      add sp, sp, #0xc
00352660  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00352664  1c e2 56 00                                      .byte 0x1c, 0xe2, 0x56, 0x00

; FUNCTION 0x00352668, declared_size=404, range_size=404, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager34SetShadowProjectionMaterialEffectsEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEENS2_4core8vector3dIfEEff
; demangled: SceneManager::SetShadowProjectionMaterialEffects(boost::intrusive_ptr<glitch::video::CMaterial>, glitch::core::vector3d<float>, float, float)
; decoder-mode: arm
00352668  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035266c  01 40 a0 e1                                      mov r4, r1
00352670  00 10 91 e5                                      ldr r1, [r1]
00352674  14 d0 4d e2                                      sub sp, sp, #0x14
00352678  04 30 8d e5                                      str r3, [sp, #4]
0035267c  04 30 91 e5                                      ldr r3, [r1, #4]
00352680  02 80 a0 e1                                      mov r8, r2
00352684  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
00352688  00 00 53 e3                                      cmp r3, #0
0035268c  0c 30 8d e5                                      str r3, [sp, #0xc]
00352690  00 20 93 15                                      ldrne r2, [r3]
00352694  01 10 8f e0                                      add r1, pc, r1
00352698  01 20 82 12                                      addne r2, r2, #1
0035269c  00 20 83 15                                      strne r2, [r3]
003526a0  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
003526a4  13 20 a0 e3                                      mov r2, #0x13
003526a8  08 00 93 e5                                      ldr r0, [r3, #8]
003526ac  72 f1 fe eb                                      bl #0x30ec7c
003526b0  00 00 50 e3                                      cmp r0, #0
003526b4  09 00 00 1a                                      bne #0x3526e0
003526b8  00 50 94 e5                                      ldr r5, [r4]
003526bc  28 11 9f e5                                      ldr r1, [pc, #0x128]
003526c0  03 20 a0 e3                                      mov r2, #3
003526c4  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
003526c8  01 10 8f e0                                      add r1, pc, r1
003526cc  00 00 50 e3                                      cmp r0, #0
003526d0  04 00 80 12                                      addne r0, r0, #4
003526d4  68 f1 fe eb                                      bl #0x30ec7c
003526d8  00 70 50 e2                                      subs r7, r0, #0
003526dc  03 00 00 0a                                      beq #0x3526f0
003526e0  0c 00 8d e2                                      add r0, sp, #0xc
003526e4  f3 fe ff eb                                      bl #0x3522b8
003526e8  14 d0 8d e2                                      add sp, sp, #0x14
003526ec  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003526f0  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
003526f4  04 00 95 e5                                      ldr r0, [r5, #4]
003526f8  07 20 a0 e1                                      mov r2, r7
003526fc  01 10 8f e0                                      add r1, pc, r1
00352700  61 02 0a eb                                      bl #0x5d308c
00352704  00 30 94 e5                                      ldr r3, [r4]
00352708  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0035270c  00 a0 a0 e1                                      mov sl, r0
00352710  07 20 a0 e1                                      mov r2, r7
00352714  04 00 93 e5                                      ldr r0, [r3, #4]
00352718  01 10 8f e0                                      add r1, pc, r1
0035271c  5a 02 0a eb                                      bl #0x5d308c
00352720  00 30 94 e5                                      ldr r3, [r4]
00352724  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
00352728  00 60 a0 e1                                      mov r6, r0
0035272c  07 20 a0 e1                                      mov r2, r7
00352730  04 00 93 e5                                      ldr r0, [r3, #4]
00352734  01 10 8f e0                                      add r1, pc, r1
00352738  53 02 0a eb                                      bl #0x5d308c
0035273c  ff 3f 0f e3                                      movw r3, #0xffff
00352740  03 00 5a e1                                      cmp sl, r3
00352744  00 50 a0 e1                                      mov r5, r0
00352748  04 00 00 0a                                      beq #0x352760
0035274c  00 00 98 e5                                      ldr r0, [r8]
00352750  bf 14 a0 e3                                      mov r1, #0xbf000000
00352754  e7 ee fe eb                                      bl #0x30e2f8
00352758  00 00 50 e3                                      cmp r0, #0
0035275c  15 00 00 1a                                      bne #0x3527b8
00352760  ff 3f 0f e3                                      movw r3, #0xffff
00352764  03 00 56 e1                                      cmp r6, r3
00352768  04 00 00 0a                                      beq #0x352780
0035276c  04 00 9d e5                                      ldr r0, [sp, #4]
00352770  bf 14 a0 e3                                      mov r1, #0xbf000000
00352774  df ee fe eb                                      bl #0x30e2f8
00352778  00 00 50 e3                                      cmp r0, #0
0035277c  13 00 00 1a                                      bne #0x3527d0
00352780  ff 3f 0f e3                                      movw r3, #0xffff
00352784  03 00 55 e1                                      cmp r5, r3
00352788  d4 ff ff 0a                                      beq #0x3526e0
0035278c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00352790  bf 14 a0 e3                                      mov r1, #0xbf000000
00352794  d7 ee fe eb                                      bl #0x30e2f8
00352798  00 00 50 e3                                      cmp r0, #0
0035279c  cf ff ff 0a                                      beq #0x3526e0
003527a0  00 00 94 e5                                      ldr r0, [r4]
003527a4  05 10 a0 e1                                      mov r1, r5
003527a8  00 20 a0 e3                                      mov r2, #0
003527ac  30 30 8d e2                                      add r3, sp, #0x30
003527b0  47 cf 09 eb                                      bl #0x5c64d4
003527b4  c9 ff ff ea                                      b #0x3526e0
003527b8  0a 10 a0 e1                                      mov r1, sl
003527bc  07 20 a0 e1                                      mov r2, r7
003527c0  08 30 a0 e1                                      mov r3, r8
003527c4  00 00 94 e5                                      ldr r0, [r4]
003527c8  8f cf 09 eb                                      bl #0x5c660c
003527cc  e3 ff ff ea                                      b #0x352760
003527d0  06 10 a0 e1                                      mov r1, r6
003527d4  00 00 94 e5                                      ldr r0, [r4]
003527d8  00 20 a0 e3                                      mov r2, #0
003527dc  04 30 8d e2                                      add r3, sp, #4
003527e0  3b cf 09 eb                                      bl #0x5c64d4
003527e4  e5 ff ff ea                                      b #0x352780
; mapping-symbol data/literal pool
003527e8  54 e1 56 00 38 e1 56 00 0c e1 56 00 00 e1 56 00  .byte 0x54, 0xe1, 0x56, 0x00, 0x38, 0xe1, 0x56, 0x00, 0x0c, 0xe1, 0x56, 0x00, 0x00, 0xe1, 0x56, 0x00
003527f8  f4 e0 56 00                                      .byte 0xf4, 0xe0, 0x56, 0x00

; FUNCTION 0x003527fc, declared_size=560, range_size=560, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager18SetMaterialEffectsEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEENS2_4core8vector3dIfEEff
; demangled: SceneManager::SetMaterialEffects(boost::intrusive_ptr<glitch::video::CMaterial>, glitch::core::vector3d<float>, float, float)
; decoder-mode: arm
003527fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00352800  01 40 a0 e1                                      mov r4, r1
00352804  00 10 91 e5                                      ldr r1, [r1]
00352808  10 d0 4d e2                                      sub sp, sp, #0x10
0035280c  04 30 8d e5                                      str r3, [sp, #4]
00352810  04 30 91 e5                                      ldr r3, [r1, #4]
00352814  02 70 a0 e1                                      mov r7, r2
00352818  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
0035281c  00 00 53 e3                                      cmp r3, #0
00352820  0c 30 8d e5                                      str r3, [sp, #0xc]
00352824  00 20 93 15                                      ldrne r2, [r3]
00352828  01 10 8f e0                                      add r1, pc, r1
0035282c  01 20 82 12                                      addne r2, r2, #1
00352830  00 20 83 15                                      strne r2, [r3]
00352834  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
00352838  0a 20 a0 e3                                      mov r2, #0xa
0035283c  08 50 93 e5                                      ldr r5, [r3, #8]
00352840  05 00 a0 e1                                      mov r0, r5
00352844  0c f1 fe eb                                      bl #0x30ec7c
00352848  00 00 50 e3                                      cmp r0, #0
0035284c  11 00 00 0a                                      beq #0x352898
00352850  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
00352854  05 00 a0 e1                                      mov r0, r5
00352858  0f 20 a0 e3                                      mov r2, #0xf
0035285c  01 10 8f e0                                      add r1, pc, r1
00352860  05 f1 fe eb                                      bl #0x30ec7c
00352864  00 00 50 e3                                      cmp r0, #0
00352868  0a 00 00 0a                                      beq #0x352898
0035286c  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
00352870  05 00 a0 e1                                      mov r0, r5
00352874  07 20 a0 e3                                      mov r2, #7
00352878  01 10 8f e0                                      add r1, pc, r1
0035287c  fe f0 fe eb                                      bl #0x30ec7c
00352880  00 00 50 e3                                      cmp r0, #0
00352884  03 00 00 0a                                      beq #0x352898
00352888  0c 00 8d e2                                      add r0, sp, #0xc
0035288c  89 fe ff eb                                      bl #0x3522b8
00352890  10 d0 8d e2                                      add sp, sp, #0x10
00352894  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00352898  00 60 94 e5                                      ldr r6, [r4]
0035289c  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
003528a0  00 00 55 e3                                      cmp r5, #0
003528a4  04 50 85 12                                      addne r5, r5, #4
003528a8  05 00 a0 e1                                      mov r0, r5
003528ac  68 ed fe eb                                      bl #0x30de54
003528b0  02 00 50 e3                                      cmp r0, #2
003528b4  f3 ff ff da                                      ble #0x352888
003528b8  54 11 9f e5                                      ldr r1, [pc, #0x154]
003528bc  05 00 a0 e1                                      mov r0, r5
003528c0  03 20 a0 e3                                      mov r2, #3
003528c4  01 10 8f e0                                      add r1, pc, r1
003528c8  eb f0 fe eb                                      bl #0x30ec7c
003528cc  00 00 50 e3                                      cmp r0, #0
003528d0  06 00 00 0a                                      beq #0x3528f0
003528d4  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
003528d8  05 00 a0 e1                                      mov r0, r5
003528dc  03 20 a0 e3                                      mov r2, #3
003528e0  01 10 8f e0                                      add r1, pc, r1
003528e4  e4 f0 fe eb                                      bl #0x30ec7c
003528e8  00 00 50 e3                                      cmp r0, #0
003528ec  31 00 00 1a                                      bne #0x3529b8
003528f0  24 11 9f e5                                      ldr r1, [pc, #0x124]
003528f4  04 00 96 e5                                      ldr r0, [r6, #4]
003528f8  00 20 a0 e3                                      mov r2, #0
003528fc  01 10 8f e0                                      add r1, pc, r1
00352900  e1 01 0a eb                                      bl #0x5d308c
00352904  00 30 94 e5                                      ldr r3, [r4]
00352908  10 11 9f e5                                      ldr r1, [pc, #0x110]
0035290c  00 80 a0 e1                                      mov r8, r0
00352910  00 20 a0 e3                                      mov r2, #0
00352914  04 00 93 e5                                      ldr r0, [r3, #4]
00352918  01 10 8f e0                                      add r1, pc, r1
0035291c  da 01 0a eb                                      bl #0x5d308c
00352920  00 30 94 e5                                      ldr r3, [r4]
00352924  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
00352928  00 60 a0 e1                                      mov r6, r0
0035292c  00 20 a0 e3                                      mov r2, #0
00352930  04 00 93 e5                                      ldr r0, [r3, #4]
00352934  01 10 8f e0                                      add r1, pc, r1
00352938  d3 01 0a eb                                      bl #0x5d308c
0035293c  ff 3f 0f e3                                      movw r3, #0xffff
00352940  03 00 58 e1                                      cmp r8, r3
00352944  00 50 a0 e1                                      mov r5, r0
00352948  04 00 00 0a                                      beq #0x352960
0035294c  00 00 97 e5                                      ldr r0, [r7]
00352950  bf 14 a0 e3                                      mov r1, #0xbf000000
00352954  67 ee fe eb                                      bl #0x30e2f8
00352958  00 00 50 e3                                      cmp r0, #0
0035295c  23 00 00 1a                                      bne #0x3529f0
00352960  ff 3f 0f e3                                      movw r3, #0xffff
00352964  03 00 56 e1                                      cmp r6, r3
00352968  04 00 00 0a                                      beq #0x352980
0035296c  04 00 9d e5                                      ldr r0, [sp, #4]
00352970  bf 14 a0 e3                                      mov r1, #0xbf000000
00352974  5f ee fe eb                                      bl #0x30e2f8
00352978  00 00 50 e3                                      cmp r0, #0
0035297c  15 00 00 1a                                      bne #0x3529d8
00352980  ff 3f 0f e3                                      movw r3, #0xffff
00352984  03 00 55 e1                                      cmp r5, r3
00352988  be ff ff 0a                                      beq #0x352888
0035298c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00352990  bf 14 a0 e3                                      mov r1, #0xbf000000
00352994  57 ee fe eb                                      bl #0x30e2f8
00352998  00 00 50 e3                                      cmp r0, #0
0035299c  b9 ff ff 0a                                      beq #0x352888
003529a0  00 00 94 e5                                      ldr r0, [r4]
003529a4  05 10 a0 e1                                      mov r1, r5
003529a8  00 20 a0 e3                                      mov r2, #0
003529ac  28 30 8d e2                                      add r3, sp, #0x28
003529b0  c7 ce 09 eb                                      bl #0x5c64d4
003529b4  b3 ff ff ea                                      b #0x352888
003529b8  68 10 9f e5                                      ldr r1, [pc, #0x68]
003529bc  05 00 a0 e1                                      mov r0, r5
003529c0  03 20 a0 e3                                      mov r2, #3
003529c4  01 10 8f e0                                      add r1, pc, r1
003529c8  ab f0 fe eb                                      bl #0x30ec7c
003529cc  00 00 50 e3                                      cmp r0, #0
003529d0  ac ff ff 1a                                      bne #0x352888
003529d4  c5 ff ff ea                                      b #0x3528f0
003529d8  06 10 a0 e1                                      mov r1, r6
003529dc  00 00 94 e5                                      ldr r0, [r4]
003529e0  00 20 a0 e3                                      mov r2, #0
003529e4  04 30 8d e2                                      add r3, sp, #4
003529e8  b9 ce 09 eb                                      bl #0x5c64d4
003529ec  e3 ff ff ea                                      b #0x352980
003529f0  08 10 a0 e1                                      mov r1, r8
003529f4  07 30 a0 e1                                      mov r3, r7
003529f8  00 00 94 e5                                      ldr r0, [r4]
003529fc  00 20 a0 e3                                      mov r2, #0
00352a00  01 cf 09 eb                                      bl #0x5c660c
00352a04  d5 ff ff ea                                      b #0x352960
; mapping-symbol data/literal pool
00352a08  10 e0 56 00 ec df 56 00 e0 df 56 00 9c df 56 00  .byte 0x10, 0xe0, 0x56, 0x00, 0xec, 0xdf, 0x56, 0x00, 0xe0, 0xdf, 0x56, 0x00, 0x9c, 0xdf, 0x56, 0x00
00352a18  88 df 56 00 0c df 56 00 60 df 56 00 e4 de 56 00  .byte 0x88, 0xdf, 0x56, 0x00, 0x0c, 0xdf, 0x56, 0x00, 0x60, 0xdf, 0x56, 0x00, 0xe4, 0xde, 0x56, 0x00
00352a28  ac de 56 00                                      .byte 0xac, 0xde, 0x56, 0x00

; FUNCTION 0x00352a2c, declared_size=120, range_size=120, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager15ChangeTechniqueEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEEPKc
; demangled: SceneManager::ChangeTechnique(boost::intrusive_ptr<glitch::video::CMaterial>, char const*)
; decoder-mode: arm
00352a2c  10 40 2d e9                                      push {r4, lr}
00352a30  00 30 91 e5                                      ldr r3, [r1]
00352a34  08 d0 4d e2                                      sub sp, sp, #8
00352a38  01 40 a0 e1                                      mov r4, r1
00352a3c  04 30 93 e5                                      ldr r3, [r3, #4]
00352a40  00 00 53 e3                                      cmp r3, #0
00352a44  04 30 8d e5                                      str r3, [sp, #4]
00352a48  00 10 93 15                                      ldrne r1, [r3]
00352a4c  01 10 81 12                                      addne r1, r1, #1
00352a50  00 10 83 15                                      strne r1, [r3]
00352a54  00 00 52 e3                                      cmp r2, #0
00352a58  0f 00 00 0a                                      beq #0x352a9c
00352a5c  02 10 a0 e1                                      mov r1, r2
00352a60  04 00 9d e5                                      ldr r0, [sp, #4]
00352a64  2a 07 0a eb                                      bl #0x5d4714
00352a68  ff 00 50 e3                                      cmp r0, #0xff
00352a6c  0a 00 00 0a                                      beq #0x352a9c
00352a70  00 30 94 e5                                      ldr r3, [r4]
00352a74  08 20 d3 e5                                      ldrb r2, [r3, #8]
00352a78  00 00 52 e1                                      cmp r2, r0
00352a7c  08 00 c3 15                                      strbne r0, [r3, #8]
00352a80  01 40 a0 13                                      movne r4, #1
00352a84  04 00 00 0a                                      beq #0x352a9c
00352a88  04 00 8d e2                                      add r0, sp, #4
00352a8c  09 fe ff eb                                      bl #0x3522b8
00352a90  04 00 a0 e1                                      mov r0, r4
00352a94  08 d0 8d e2                                      add sp, sp, #8
00352a98  10 80 bd e8                                      pop {r4, pc}
00352a9c  00 40 a0 e3                                      mov r4, #0
00352aa0  f8 ff ff ea                                      b #0x352a88

; FUNCTION 0x00352aa4, declared_size=208, range_size=208, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeEPFvS3_ERKSsb
; demangled: SceneManager::SearchByName(glitch::scene::ISceneNode*, void (*)(glitch::scene::ISceneNode*), std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, bool)
; decoder-mode: arm
00352aa4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00352aa8  00 00 52 e3                                      cmp r2, #0
00352aac  00 00 51 13                                      cmpne r1, #0
00352ab0  0c d0 4d e2                                      sub sp, sp, #0xc
00352ab4  02 60 a0 e1                                      mov r6, r2
00352ab8  01 40 a0 e1                                      mov r4, r1
00352abc  00 a0 a0 e1                                      mov sl, r0
00352ac0  03 70 a0 e1                                      mov r7, r3
00352ac4  28 80 dd e5                                      ldrb r8, [sp, #0x28]
00352ac8  1a 00 00 0a                                      beq #0x352b38
00352acc  00 00 58 e3                                      cmp r8, #0
00352ad0  1a 00 00 1a                                      bne #0x352b40
00352ad4  00 30 91 e5                                      ldr r3, [r1]
00352ad8  01 00 a0 e1                                      mov r0, r1
00352adc  0f e0 a0 e1                                      mov lr, pc
00352ae0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00352ae4  14 10 97 e5                                      ldr r1, [r7, #0x14]
00352ae8  0b ee fe eb                                      bl #0x30e31c
00352aec  00 00 50 e3                                      cmp r0, #0
00352af0  1c 00 00 0a                                      beq #0x352b68
00352af4  04 00 a0 e1                                      mov r0, r4
00352af8  b2 11 09 eb                                      bl #0x5971c8
00352afc  00 50 a0 e1                                      mov r5, r0
00352b00  04 40 b5 e5                                      ldr r4, [r5, #4]!
00352b04  05 00 54 e1                                      cmp r4, r5
00352b08  0a 00 00 0a                                      beq #0x352b38
00352b0c  00 00 54 e3                                      cmp r4, #0
00352b10  04 10 a0 01                                      moveq r1, r4
00352b14  04 10 44 12                                      subne r1, r4, #4
00352b18  0a 00 a0 e1                                      mov r0, sl
00352b1c  06 20 a0 e1                                      mov r2, r6
00352b20  07 30 a0 e1                                      mov r3, r7
00352b24  00 80 8d e5                                      str r8, [sp]
00352b28  dd ff ff eb                                      bl #0x352aa4
00352b2c  00 40 94 e5                                      ldr r4, [r4]
00352b30  04 00 55 e1                                      cmp r5, r4
00352b34  f4 ff ff 1a                                      bne #0x352b0c
00352b38  0c d0 8d e2                                      add sp, sp, #0xc
00352b3c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00352b40  00 30 91 e5                                      ldr r3, [r1]
00352b44  01 00 a0 e1                                      mov r0, r1
00352b48  0f e0 a0 e1                                      mov lr, pc
00352b4c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00352b50  14 10 97 e5                                      ldr r1, [r7, #0x14]
00352b54  10 20 97 e5                                      ldr r2, [r7, #0x10]
00352b58  02 20 61 e0                                      rsb r2, r1, r2
00352b5c  46 f0 fe eb                                      bl #0x30ec7c
00352b60  00 00 50 e3                                      cmp r0, #0
00352b64  e2 ff ff 1a                                      bne #0x352af4
00352b68  04 00 a0 e1                                      mov r0, r4
00352b6c  36 ff 2f e1                                      blx r6
00352b70  df ff ff ea                                      b #0x352af4

; FUNCTION 0x00352b74, declared_size=200, range_size=200, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeERKSsb
; demangled: SceneManager::SearchByName(glitch::scene::ISceneNode*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, bool)
; decoder-mode: arm
00352b74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00352b78  00 40 51 e2                                      subs r4, r1, #0
00352b7c  00 80 a0 e1                                      mov r8, r0
00352b80  02 50 a0 e1                                      mov r5, r2
00352b84  03 70 a0 e1                                      mov r7, r3
00352b88  1d 00 00 0a                                      beq #0x352c04
00352b8c  00 00 53 e3                                      cmp r3, #0
00352b90  1d 00 00 1a                                      bne #0x352c0c
00352b94  00 30 94 e5                                      ldr r3, [r4]
00352b98  04 00 a0 e1                                      mov r0, r4
00352b9c  0f e0 a0 e1                                      mov lr, pc
00352ba0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00352ba4  14 10 95 e5                                      ldr r1, [r5, #0x14]
00352ba8  db ed fe eb                                      bl #0x30e31c
00352bac  00 00 50 e3                                      cmp r0, #0
00352bb0  13 00 00 0a                                      beq #0x352c04
00352bb4  04 00 a0 e1                                      mov r0, r4
00352bb8  82 11 09 eb                                      bl #0x5971c8
00352bbc  00 60 a0 e1                                      mov r6, r0
00352bc0  04 40 b6 e5                                      ldr r4, [r6, #4]!
00352bc4  06 00 54 e1                                      cmp r4, r6
00352bc8  00 40 a0 03                                      moveq r4, #0
00352bcc  0c 00 00 0a                                      beq #0x352c04
00352bd0  00 00 54 e3                                      cmp r4, #0
00352bd4  04 10 a0 01                                      moveq r1, r4
00352bd8  04 10 44 12                                      subne r1, r4, #4
00352bdc  08 00 a0 e1                                      mov r0, r8
00352be0  05 20 a0 e1                                      mov r2, r5
00352be4  07 30 a0 e1                                      mov r3, r7
00352be8  e1 ff ff eb                                      bl #0x352b74
00352bec  00 40 94 e5                                      ldr r4, [r4]
00352bf0  04 00 56 e1                                      cmp r6, r4
00352bf4  01 00 00 0a                                      beq #0x352c00
00352bf8  00 00 50 e3                                      cmp r0, #0
00352bfc  f3 ff ff 0a                                      beq #0x352bd0
00352c00  00 40 a0 e1                                      mov r4, r0
00352c04  04 00 a0 e1                                      mov r0, r4
00352c08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00352c0c  00 30 94 e5                                      ldr r3, [r4]
00352c10  04 00 a0 e1                                      mov r0, r4
00352c14  0f e0 a0 e1                                      mov lr, pc
00352c18  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00352c1c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00352c20  10 20 95 e5                                      ldr r2, [r5, #0x10]
00352c24  02 20 61 e0                                      rsb r2, r1, r2
00352c28  13 f0 fe eb                                      bl #0x30ec7c
00352c2c  00 00 50 e3                                      cmp r0, #0
00352c30  df ff ff 1a                                      bne #0x352bb4
00352c34  04 00 a0 e1                                      mov r0, r4
00352c38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00352c3c, declared_size=272, range_size=272, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManagerC1EPN6glitch5video12IVideoDriverEN5boost13intrusive_ptrINS0_2io11IFileSystemEEEPNS0_3gui14ICursorControlEPNS9_15IGUIEnvironmentE
; demangled: SceneManager::SceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem>, glitch::gui::ICursorControl*, glitch::gui::IGUIEnvironment*)
; decoder-mode: arm
00352c3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00352c40  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
00352c44  f4 c0 9f e5                                      ldr ip, [pc, #0xf4]
00352c48  f4 e0 9f e5                                      ldr lr, [pc, #0xf4]
00352c4c  05 50 8f e0                                      add r5, pc, r5
00352c50  0c c0 95 e7                                      ldr ip, [r5, ip]
00352c54  0e e0 95 e7                                      ldr lr, [r5, lr]
00352c58  01 70 a0 e3                                      mov r7, #1
00352c5c  18 60 9c e5                                      ldr r6, [ip, #0x18]
00352c60  08 e0 8e e2                                      add lr, lr, #8
00352c64  8c e4 80 e5                                      str lr, [r0, #0x48c]
00352c68  00 60 80 e5                                      str r6, [r0]
00352c6c  90 74 80 e5                                      str r7, [r0, #0x490]
00352c70  0c 70 16 e5                                      ldr r7, [r6, #-0xc]
00352c74  1c 80 9c e5                                      ldr r8, [ip, #0x1c]
00352c78  10 d0 4d e2                                      sub sp, sp, #0x10
00352c7c  01 60 a0 e1                                      mov r6, r1
00352c80  07 80 80 e7                                      str r8, [r0, r7]
00352c84  04 10 8c e2                                      add r1, ip, #4
00352c88  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00352c8c  02 e0 a0 e1                                      mov lr, r2
00352c90  00 30 8d e5                                      str r3, [sp]
00352c94  06 20 a0 e1                                      mov r2, r6
00352c98  0e 30 a0 e1                                      mov r3, lr
00352c9c  00 60 a0 e3                                      mov r6, #0
00352ca0  00 40 a0 e1                                      mov r4, r0
00352ca4  40 10 8d e9                                      stmib sp, {r6, ip}
00352ca8  48 ec 08 eb                                      bl #0x58ddd0
00352cac  94 30 9f e5                                      ldr r3, [pc, #0x94]
00352cb0  8c 62 84 e5                                      str r6, [r4, #0x28c]
00352cb4  90 62 c4 e5                                      strb r6, [r4, #0x290]
00352cb8  03 30 95 e7                                      ldr r3, [r5, r3]
00352cbc  a5 0f 84 e2                                      add r0, r4, #0x294
00352cc0  c0 20 83 e2                                      add r2, r3, #0xc0
00352cc4  1c 30 83 e2                                      add r3, r3, #0x1c
00352cc8  00 30 84 e5                                      str r3, [r4]
00352ccc  8c 24 84 e5                                      str r2, [r4, #0x48c]
00352cd0  bf ea 02 eb                                      bl #0x40d7d4
00352cd4  04 20 a0 e3                                      mov r2, #4
00352cd8  00 30 a0 e3                                      mov r3, #0
00352cdc  44 24 84 e5                                      str r2, [r4, #0x444]
00352ce0  fe 25 a0 e3                                      mov r2, #0x3f800000
00352ce4  5c 34 84 e5                                      str r3, [r4, #0x45c]
00352ce8  60 24 84 e5                                      str r2, [r4, #0x460]
00352cec  84 64 84 e5                                      str r6, [r4, #0x484]
00352cf0  38 64 84 e5                                      str r6, [r4, #0x438]
00352cf4  3c 64 c4 e5                                      strb r6, [r4, #0x43c]
00352cf8  40 64 84 e5                                      str r6, [r4, #0x440]
00352cfc  48 64 c4 e5                                      strb r6, [r4, #0x448]
00352d00  4c 64 84 e5                                      str r6, [r4, #0x44c]
00352d04  50 64 84 e5                                      str r6, [r4, #0x450]
00352d08  54 64 84 e5                                      str r6, [r4, #0x454]
00352d0c  58 34 84 e5                                      str r3, [r4, #0x458]
00352d10  64 64 84 e5                                      str r6, [r4, #0x464]
00352d14  68 64 84 e5                                      str r6, [r4, #0x468]
00352d18  6c 64 84 e5                                      str r6, [r4, #0x46c]
00352d1c  70 64 84 e5                                      str r6, [r4, #0x470]
00352d20  74 64 84 e5                                      str r6, [r4, #0x474]
00352d24  78 64 84 e5                                      str r6, [r4, #0x478]
00352d28  7c 64 84 e5                                      str r6, [r4, #0x47c]
00352d2c  80 64 84 e5                                      str r6, [r4, #0x480]
00352d30  04 00 a0 e1                                      mov r0, r4
00352d34  10 d0 8d e2                                      add sp, sp, #0x10
00352d38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00352d3c  44 1e 64 00 40 31 00 00 44 2b 00 00 00 42 00 00  .byte 0x44, 0x1e, 0x64, 0x00, 0x40, 0x31, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x00, 0x42, 0x00, 0x00

; FUNCTION 0x00352d4c, declared_size=200, range_size=200, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManagerC2EPN6glitch5video12IVideoDriverEN5boost13intrusive_ptrINS0_2io11IFileSystemEEEPNS0_3gui14ICursorControlEPNS9_15IGUIEnvironmentE
; demangled: SceneManager::SceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem>, glitch::gui::ICursorControl*, glitch::gui::IGUIEnvironment*)
; decoder-mode: arm
00352d4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00352d50  10 d0 4d e2                                      sub sp, sp, #0x10
00352d54  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00352d58  00 50 a0 e3                                      mov r5, #0
00352d5c  01 60 a0 e1                                      mov r6, r1
00352d60  00 c0 8d e5                                      str ip, [sp]
00352d64  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00352d68  04 10 81 e2                                      add r1, r1, #4
00352d6c  00 40 a0 e1                                      mov r4, r0
00352d70  20 10 8d e9                                      stmib sp, {r5, ip}
00352d74  15 ec 08 eb                                      bl #0x58ddd0
00352d78  00 30 96 e5                                      ldr r3, [r6]
00352d7c  a5 0f 84 e2                                      add r0, r4, #0x294
00352d80  00 30 84 e5                                      str r3, [r4]
00352d84  10 20 96 e5                                      ldr r2, [r6, #0x10]
00352d88  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00352d8c  03 20 84 e7                                      str r2, [r4, r3]
00352d90  00 30 94 e5                                      ldr r3, [r4]
00352d94  14 20 96 e5                                      ldr r2, [r6, #0x14]
00352d98  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00352d9c  03 20 84 e7                                      str r2, [r4, r3]
00352da0  8c 52 84 e5                                      str r5, [r4, #0x28c]
00352da4  90 52 c4 e5                                      strb r5, [r4, #0x290]
00352da8  89 ea 02 eb                                      bl #0x40d7d4
00352dac  04 20 a0 e3                                      mov r2, #4
00352db0  00 30 a0 e3                                      mov r3, #0
00352db4  44 24 84 e5                                      str r2, [r4, #0x444]
00352db8  fe 25 a0 e3                                      mov r2, #0x3f800000
00352dbc  5c 34 84 e5                                      str r3, [r4, #0x45c]
00352dc0  60 24 84 e5                                      str r2, [r4, #0x460]
00352dc4  84 54 84 e5                                      str r5, [r4, #0x484]
00352dc8  38 54 84 e5                                      str r5, [r4, #0x438]
00352dcc  3c 54 c4 e5                                      strb r5, [r4, #0x43c]
00352dd0  40 54 84 e5                                      str r5, [r4, #0x440]
00352dd4  48 54 c4 e5                                      strb r5, [r4, #0x448]
00352dd8  4c 54 84 e5                                      str r5, [r4, #0x44c]
00352ddc  50 54 84 e5                                      str r5, [r4, #0x450]
00352de0  54 54 84 e5                                      str r5, [r4, #0x454]
00352de4  58 34 84 e5                                      str r3, [r4, #0x458]
00352de8  64 54 84 e5                                      str r5, [r4, #0x464]
00352dec  68 54 84 e5                                      str r5, [r4, #0x468]
00352df0  6c 54 84 e5                                      str r5, [r4, #0x46c]
00352df4  70 54 84 e5                                      str r5, [r4, #0x470]
00352df8  74 54 84 e5                                      str r5, [r4, #0x474]
00352dfc  78 54 84 e5                                      str r5, [r4, #0x478]
00352e00  7c 54 84 e5                                      str r5, [r4, #0x47c]
00352e04  80 54 84 e5                                      str r5, [r4, #0x480]
00352e08  04 00 a0 e1                                      mov r0, r4
00352e0c  10 d0 8d e2                                      add sp, sp, #0x10
00352e10  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00352fa8, declared_size=1524, range_size=1524, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager17AutoLoadNormalMapEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEE
; demangled: SceneManager::AutoLoadNormalMap(boost::intrusive_ptr<glitch::video::CMaterial>)
; decoder-mode: arm
00352fa8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00352fac  9c 45 9f e5                                      ldr r4, [pc, #0x59c]
00352fb0  9c 55 9f e5                                      ldr r5, [pc, #0x59c]
00352fb4  00 80 91 e5                                      ldr r8, [r1]
00352fb8  04 40 8f e0                                      add r4, pc, r4
00352fbc  05 30 94 e7                                      ldr r3, [r4, r5]
00352fc0  6c d0 4d e2                                      sub sp, sp, #0x6c
00352fc4  01 70 a0 e1                                      mov r7, r1
00352fc8  00 30 93 e5                                      ldr r3, [r3]
00352fcc  84 15 9f e5                                      ldr r1, [pc, #0x584]
00352fd0  03 20 a0 e3                                      mov r2, #3
00352fd4  64 30 8d e5                                      str r3, [sp, #0x64]
00352fd8  1c 60 98 e5                                      ldr r6, [r8, #0x1c]
00352fdc  01 10 8f e0                                      add r1, pc, r1
00352fe0  00 00 56 e3                                      cmp r6, #0
00352fe4  04 60 86 12                                      addne r6, r6, #4
00352fe8  06 00 a0 e1                                      mov r0, r6
00352fec  22 ef fe eb                                      bl #0x30ec7c
00352ff0  00 00 50 e3                                      cmp r0, #0
00352ff4  10 00 00 0a                                      beq #0x35303c
00352ff8  06 00 a0 e1                                      mov r0, r6
00352ffc  94 eb fe eb                                      bl #0x30de54
00353000  05 00 50 e3                                      cmp r0, #5
00353004  06 00 00 8a                                      bhi #0x353024
00353008  05 30 94 e7                                      ldr r3, [r4, r5]
0035300c  64 20 9d e5                                      ldr r2, [sp, #0x64]
00353010  00 30 93 e5                                      ldr r3, [r3]
00353014  03 00 52 e1                                      cmp r2, r3
00353018  4b 01 00 1a                                      bne #0x35354c
0035301c  6c d0 8d e2                                      add sp, sp, #0x6c
00353020  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00353024  d0 30 d6 e1                                      ldrsb r3, [r6]
00353028  44 00 53 e3                                      cmp r3, #0x44
0035302c  f5 ff ff 1a                                      bne #0x353008
00353030  d1 30 d6 e1                                      ldrsb r3, [r6, #1]
00353034  56 00 53 e3                                      cmp r3, #0x56
00353038  f2 ff ff 1a                                      bne #0x353008
0035303c  18 15 9f e5                                      ldr r1, [pc, #0x518]
00353040  04 00 98 e5                                      ldr r0, [r8, #4]
00353044  00 20 a0 e3                                      mov r2, #0
00353048  01 10 8f e0                                      add r1, pc, r1
0035304c  0e 00 0a eb                                      bl #0x5d308c
00353050  00 30 97 e5                                      ldr r3, [r7]
00353054  04 15 9f e5                                      ldr r1, [pc, #0x504]
00353058  00 a0 a0 e1                                      mov sl, r0
0035305c  00 20 a0 e3                                      mov r2, #0
00353060  04 00 93 e5                                      ldr r0, [r3, #4]
00353064  01 10 8f e0                                      add r1, pc, r1
00353068  07 00 0a eb                                      bl #0x5d308c
0035306c  ff 3f 0f e3                                      movw r3, #0xffff
00353070  03 00 50 e1                                      cmp r0, r3
00353074  03 00 5a 11                                      cmpne sl, r3
00353078  00 80 a0 e1                                      mov r8, r0
0035307c  e1 ff ff 0a                                      beq #0x353008
00353080  00 20 a0 e3                                      mov r2, #0
00353084  68 90 8d e2                                      add sb, sp, #0x68
00353088  38 20 29 e5                                      str r2, [sb, #-0x38]!
0035308c  00 00 97 e5                                      ldr r0, [r7]
00353090  08 10 a0 e1                                      mov r1, r8
00353094  09 30 a0 e1                                      mov r3, sb
00353098  87 ea 09 eb                                      bl #0x5cdabc
0035309c  30 00 9d e5                                      ldr r0, [sp, #0x30]
003530a0  00 00 50 e3                                      cmp r0, #0
003530a4  01 00 00 0a                                      beq #0x3530b0
003530a8  35 29 ff eb                                      bl #0x31d584
003530ac  d5 ff ff ea                                      b #0x353008
003530b0  68 30 8d e2                                      add r3, sp, #0x68
003530b4  3c 00 23 e5                                      str r0, [r3, #-0x3c]!
003530b8  00 20 a0 e1                                      mov r2, r0
003530bc  0a 10 a0 e1                                      mov r1, sl
003530c0  00 00 97 e5                                      ldr r0, [r7]
003530c4  7c ea 09 eb                                      bl #0x5cdabc
003530c8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003530cc  00 00 53 e3                                      cmp r3, #0
003530d0  96 00 00 0a                                      beq #0x353330
003530d4  4c 10 8d e2                                      add r1, sp, #0x4c
003530d8  14 10 8d e5                                      str r1, [sp, #0x14]
003530dc  5c 10 8d e5                                      str r1, [sp, #0x5c]
003530e0  60 10 8d e5                                      str r1, [sp, #0x60]
003530e4  18 20 93 e5                                      ldr r2, [r3, #0x18]
003530e8  34 a0 8d e2                                      add sl, sp, #0x34
003530ec  01 00 a0 e1                                      mov r0, r1
003530f0  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
003530f4  be 4b ff eb                                      bl #0x325ff4
003530f8  0a 00 a0 e1                                      mov r0, sl
003530fc  60 10 9d e5                                      ldr r1, [sp, #0x60]
00353100  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00353104  44 a0 8d e5                                      str sl, [sp, #0x44]
00353108  48 a0 8d e5                                      str sl, [sp, #0x48]
0035310c  b8 4b ff eb                                      bl #0x325ff4
00353110  4c 14 9f e5                                      ldr r1, [pc, #0x44c]
00353114  0a 00 a0 e1                                      mov r0, sl
00353118  01 10 8f e0                                      add r1, pc, r1
0035311c  80 ff ff eb                                      bl #0x352f24
00353120  00 30 50 e2                                      subs r3, r0, #0
00353124  0c c0 a0 a3                                      movge ip, #0xc
00353128  d3 00 00 ba                                      blt #0x35347c
0035312c  48 20 9d e5                                      ldr r2, [sp, #0x48]
00353130  44 10 9d e5                                      ldr r1, [sp, #0x44]
00353134  01 20 62 e0                                      rsb r2, r2, r1
00353138  02 00 53 e1                                      cmp r3, r2
0035313c  c4 00 00 8a                                      bhi #0x353454
00353140  fe 1f 0f e3                                      movw r1, #0xfffe
00353144  ff 1f 4f e3                                      movt r1, #0xffff
00353148  02 b0 63 e0                                      rsb fp, r3, r2
0035314c  0c 00 5b e1                                      cmp fp, ip
00353150  0c b0 a0 21                                      movhs fp, ip
00353154  01 10 62 e0                                      rsb r1, r2, r1
00353158  0b 10 81 e0                                      add r1, r1, fp
0035315c  0a 00 51 e3                                      cmp r1, #0xa
00353160  b5 00 00 9a                                      bls #0x35343c
00353164  fc 23 9f e5                                      ldr r2, [pc, #0x3fc]
00353168  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0035316c  03 b0 8b e0                                      add fp, fp, r3
00353170  02 20 8f e0                                      add r2, pc, r2
00353174  02 00 5c e1                                      cmp ip, r2
00353178  03 30 8c e0                                      add r3, ip, r3
0035317c  00 20 a0 83                                      movhi r2, #0
00353180  0b b0 8c e0                                      add fp, ip, fp
00353184  18 30 8d e5                                      str r3, [sp, #0x18]
00353188  24 20 8d 85                                      strhi r2, [sp, #0x24]
0035318c  04 00 00 8a                                      bhi #0x3531a4
00353190  44 30 9d e5                                      ldr r3, [sp, #0x44]
00353194  02 00 53 e1                                      cmp r3, r2
00353198  00 30 a0 93                                      movls r3, #0
0035319c  01 30 a0 83                                      movhi r3, #1
003531a0  24 30 8d e5                                      str r3, [sp, #0x24]
003531a4  18 30 9d e5                                      ldr r3, [sp, #0x18]
003531a8  0b 30 63 e0                                      rsb r3, r3, fp
003531ac  0a 00 53 e3                                      cmp r3, #0xa
003531b0  20 30 8d e5                                      str r3, [sp, #0x20]
003531b4  62 00 00 da                                      ble #0x353344
003531b8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
003531bc  00 00 5c e3                                      cmp ip, #0
003531c0  97 00 00 0a                                      beq #0x353424
003531c4  a0 13 9f e5                                      ldr r1, [pc, #0x3a0]
003531c8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
003531cc  01 10 8f e0                                      add r1, pc, r1
003531d0  0b 30 81 e2                                      add r3, r1, #0xb
003531d4  0e 00 53 e1                                      cmp r3, lr
003531d8  01 00 5b 21                                      cmphs fp, r1
003531dc  90 00 00 9a                                      bls #0x353424
003531e0  18 00 9d e5                                      ldr r0, [sp, #0x18]
003531e4  0b 20 a0 e3                                      mov r2, #0xb
003531e8  9e ed fe eb                                      bl #0x30e868
003531ec  18 10 9d e5                                      ldr r1, [sp, #0x18]
003531f0  0b 30 81 e2                                      add r3, r1, #0xb
003531f4  03 00 5b e1                                      cmp fp, r3
003531f8  72 00 00 0a                                      beq #0x3533c8
003531fc  44 10 9d e5                                      ldr r1, [sp, #0x44]
00353200  01 20 81 e2                                      add r2, r1, #1
00353204  0b 20 52 e0                                      subs r2, r2, fp
00353208  05 00 00 0a                                      beq #0x353224
0035320c  03 00 a0 e1                                      mov r0, r3
00353210  0b 10 a0 e1                                      mov r1, fp
00353214  08 30 8d e5                                      str r3, [sp, #8]
00353218  46 eb fe eb                                      bl #0x30df38
0035321c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00353220  08 30 9d e5                                      ldr r3, [sp, #8]
00353224  03 30 6b e0                                      rsb r3, fp, r3
00353228  48 20 9d e5                                      ldr r2, [sp, #0x48]
0035322c  03 10 81 e0                                      add r1, r1, r3
00353230  44 10 8d e5                                      str r1, [sp, #0x44]
00353234  34 33 9f e5                                      ldr r3, [pc, #0x334]
00353238  28 00 8d e2                                      add r0, sp, #0x28
0035323c  03 10 94 e7                                      ldr r1, [r4, r3]
00353240  00 30 a0 e3                                      mov r3, #0
00353244  10 10 91 e5                                      ldr r1, [r1, #0x10]
00353248  10 10 91 e5                                      ldr r1, [r1, #0x10]
0035324c  e0 10 91 e5                                      ldr r1, [r1, #0xe0]
00353250  ee 67 0a eb                                      bl #0x5ed210
00353254  28 30 9d e5                                      ldr r3, [sp, #0x28]
00353258  00 00 53 e3                                      cmp r3, #0
0035325c  04 20 93 15                                      ldrne r2, [r3, #4]
00353260  01 20 82 12                                      addne r2, r2, #1
00353264  04 20 83 15                                      strne r2, [r3, #4]
00353268  30 00 9d e5                                      ldr r0, [sp, #0x30]
0035326c  30 30 8d e5                                      str r3, [sp, #0x30]
00353270  00 00 50 e3                                      cmp r0, #0
00353274  00 00 00 0a                                      beq #0x35327c
00353278  c1 28 ff eb                                      bl #0x31d584
0035327c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00353280  00 00 50 e3                                      cmp r0, #0
00353284  00 00 00 0a                                      beq #0x35328c
00353288  bd 28 ff eb                                      bl #0x31d584
0035328c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00353290  00 00 53 e3                                      cmp r3, #0
00353294  14 00 00 0a                                      beq #0x3532ec
00353298  d4 12 9f e5                                      ldr r1, [pc, #0x2d4]
0035329c  06 00 a0 e1                                      mov r0, r6
003532a0  03 20 a0 e3                                      mov r2, #3
003532a4  01 10 8f e0                                      add r1, pc, r1
003532a8  73 ee fe eb                                      bl #0x30ec7c
003532ac  00 00 50 e3                                      cmp r0, #0
003532b0  4e 30 a0 03                                      moveq r3, #0x4e
003532b4  07 30 c6 05                                      strbeq r3, [r6, #7]
003532b8  06 00 00 0a                                      beq #0x3532d8
003532bc  06 00 a0 e1                                      mov r0, r6
003532c0  e3 ea fe eb                                      bl #0x30de54
003532c4  05 00 50 e3                                      cmp r0, #5
003532c8  02 00 00 9a                                      bls #0x3532d8
003532cc  d0 30 d6 e1                                      ldrsb r3, [r6]
003532d0  44 00 53 e3                                      cmp r3, #0x44
003532d4  78 00 00 0a                                      beq #0x3534bc
003532d8  00 00 97 e5                                      ldr r0, [r7]
003532dc  08 10 a0 e1                                      mov r1, r8
003532e0  09 30 a0 e1                                      mov r3, sb
003532e4  00 20 a0 e3                                      mov r2, #0
003532e8  0d e8 09 eb                                      bl #0x5cd324
003532ec  48 00 9d e5                                      ldr r0, [sp, #0x48]
003532f0  0a 00 50 e1                                      cmp r0, sl
003532f4  02 00 00 0a                                      beq #0x353304
003532f8  00 00 50 e3                                      cmp r0, #0
003532fc  00 00 00 0a                                      beq #0x353304
00353300  52 f4 fe eb                                      bl #0x310450
00353304  60 00 9d e5                                      ldr r0, [sp, #0x60]
00353308  14 10 9d e5                                      ldr r1, [sp, #0x14]
0035330c  01 00 50 e1                                      cmp r0, r1
00353310  02 00 00 0a                                      beq #0x353320
00353314  00 00 50 e3                                      cmp r0, #0
00353318  00 00 00 0a                                      beq #0x353320
0035331c  4b f4 fe eb                                      bl #0x310450
00353320  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00353324  00 00 50 e3                                      cmp r0, #0
00353328  00 00 00 0a                                      beq #0x353330
0035332c  94 28 ff eb                                      bl #0x31d584
00353330  30 00 9d e5                                      ldr r0, [sp, #0x30]
00353334  00 00 50 e3                                      cmp r0, #0
00353338  32 ff ff 0a                                      beq #0x353008
0035333c  90 28 ff eb                                      bl #0x31d584
00353340  30 ff ff ea                                      b #0x353008
00353344  2c 22 9f e5                                      ldr r2, [pc, #0x22c]
00353348  24 30 9d e5                                      ldr r3, [sp, #0x24]
0035334c  02 20 8f e0                                      add r2, pc, r2
00353350  00 00 53 e3                                      cmp r3, #0
00353354  1c 20 8d e5                                      str r2, [sp, #0x1c]
00353358  1c 00 00 0a                                      beq #0x3533d0
0035335c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00353360  0b 00 82 e2                                      add r0, r2, #0xb
00353364  00 00 5e e1                                      cmp lr, r0
00353368  00 30 a0 33                                      movlo r3, #0
0035336c  01 30 a0 23                                      movhs r3, #1
00353370  02 00 5b e1                                      cmp fp, r2
00353374  01 30 83 93                                      orrls r3, r3, #1
00353378  00 00 53 e3                                      cmp r3, #0
0035337c  13 00 00 1a                                      bne #0x3533d0
00353380  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00353384  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00353388  01 00 5e e1                                      cmp lr, r1
0035338c  4f 00 00 8a                                      bhi #0x3534d0
00353390  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00353394  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00353398  00 00 5c e3                                      cmp ip, #0
0035339c  0e c0 8c e0                                      add ip, ip, lr
003533a0  62 00 00 1a                                      bne #0x353530
003533a4  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
003533a8  0c 20 a0 e1                                      mov r2, ip
003533ac  0b 10 a0 e1                                      mov r1, fp
003533b0  03 30 8f e0                                      add r3, pc, r3
003533b4  01 c0 a0 e3                                      mov ip, #1
003533b8  0b 30 83 e2                                      add r3, r3, #0xb
003533bc  0a 00 a0 e1                                      mov r0, sl
003533c0  00 c0 8d e5                                      str ip, [sp]
003533c4  ff ef ff eb                                      bl #0x34f3c8
003533c8  48 20 9d e5                                      ldr r2, [sp, #0x48]
003533cc  98 ff ff ea                                      b #0x353234
003533d0  a8 11 9f e5                                      ldr r1, [pc, #0x1a8]
003533d4  20 30 9d e5                                      ldr r3, [sp, #0x20]
003533d8  01 10 8f e0                                      add r1, pc, r1
003533dc  01 c0 83 e0                                      add ip, r3, r1
003533e0  02 20 5c e0                                      subs r2, ip, r2
003533e4  03 00 00 0a                                      beq #0x3533f8
003533e8  18 00 9d e5                                      ldr r0, [sp, #0x18]
003533ec  0c c0 8d e5                                      str ip, [sp, #0xc]
003533f0  1c ed fe eb                                      bl #0x30e868
003533f4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
003533f8  84 31 9f e5                                      ldr r3, [pc, #0x184]
003533fc  0b 10 a0 e1                                      mov r1, fp
00353400  24 b0 9d e5                                      ldr fp, [sp, #0x24]
00353404  03 30 8f e0                                      add r3, pc, r3
00353408  0c 20 a0 e1                                      mov r2, ip
0035340c  0b 30 83 e2                                      add r3, r3, #0xb
00353410  0a 00 a0 e1                                      mov r0, sl
00353414  00 b0 8d e5                                      str fp, [sp]
00353418  ea ef ff eb                                      bl #0x34f3c8
0035341c  48 20 9d e5                                      ldr r2, [sp, #0x48]
00353420  83 ff ff ea                                      b #0x353234
00353424  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
00353428  18 00 9d e5                                      ldr r0, [sp, #0x18]
0035342c  0b 20 a0 e3                                      mov r2, #0xb
00353430  01 10 8f e0                                      add r1, pc, r1
00353434  0b ed fe eb                                      bl #0x30e868
00353438  6b ff ff ea                                      b #0x3531ec
0035343c  48 01 9f e5                                      ldr r0, [pc, #0x148]
00353440  08 30 8d e5                                      str r3, [sp, #8]
00353444  00 00 8f e0                                      add r0, pc, r0
00353448  7c d6 0e eb                                      bl #0x708e40
0035344c  08 30 9d e5                                      ldr r3, [sp, #8]
00353450  43 ff ff ea                                      b #0x353164
00353454  34 01 9f e5                                      ldr r0, [pc, #0x134]
00353458  10 20 8d e5                                      str r2, [sp, #0x10]
0035345c  08 30 8d e5                                      str r3, [sp, #8]
00353460  00 00 8f e0                                      add r0, pc, r0
00353464  0c c0 8d e5                                      str ip, [sp, #0xc]
00353468  90 d6 0e eb                                      bl #0x708eb0
0035346c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00353470  08 30 9d e5                                      ldr r3, [sp, #8]
00353474  10 20 9d e5                                      ldr r2, [sp, #0x10]
00353478  30 ff ff ea                                      b #0x353140
0035347c  10 11 9f e5                                      ldr r1, [pc, #0x110]
00353480  0a 00 a0 e1                                      mov r0, sl
00353484  01 10 8f e0                                      add r1, pc, r1
00353488  a5 fe ff eb                                      bl #0x352f24
0035348c  00 30 50 e2                                      subs r3, r0, #0
00353490  08 c0 a0 a3                                      movge ip, #8
00353494  24 ff ff aa                                      bge #0x35312c
00353498  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
0035349c  04 c0 a0 e3                                      mov ip, #4
003534a0  0a 00 a0 e1                                      mov r0, sl
003534a4  01 10 8f e0                                      add r1, pc, r1
003534a8  0c c0 8d e5                                      str ip, [sp, #0xc]
003534ac  9c fe ff eb                                      bl #0x352f24
003534b0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
003534b4  00 30 a0 e1                                      mov r3, r0
003534b8  1b ff ff ea                                      b #0x35312c
003534bc  d1 30 d6 e1                                      ldrsb r3, [r6, #1]
003534c0  56 00 53 e3                                      cmp r3, #0x56
003534c4  4e 30 a0 03                                      moveq r3, #0x4e
003534c8  04 30 c6 05                                      strbeq r3, [r6, #4]
003534cc  81 ff ff ea                                      b #0x3532d8
003534d0  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
003534d4  0b 10 a0 e1                                      mov r1, fp
003534d8  20 b0 9d e5                                      ldr fp, [sp, #0x20]
003534dc  00 30 a0 e1                                      mov r3, r0
003534e0  0a 00 a0 e1                                      mov r0, sl
003534e4  0e 20 8b e0                                      add r2, fp, lr
003534e8  01 e0 a0 e3                                      mov lr, #1
003534ec  0c c0 8d e5                                      str ip, [sp, #0xc]
003534f0  00 e0 8d e5                                      str lr, [sp]
003534f4  b3 ef ff eb                                      bl #0x34f3c8
003534f8  00 00 5b e3                                      cmp fp, #0
003534fc  48 20 9d e5                                      ldr r2, [sp, #0x48]
00353500  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00353504  4a ff ff 0a                                      beq #0x353234
00353508  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0035350c  18 b0 9d e5                                      ldr fp, [sp, #0x18]
00353510  03 10 6c e0                                      rsb r1, ip, r3
00353514  0b 00 6c e0                                      rsb r0, ip, fp
00353518  01 10 82 e0                                      add r1, r2, r1
0035351c  00 00 82 e0                                      add r0, r2, r0
00353520  20 20 9d e5                                      ldr r2, [sp, #0x20]
00353524  83 ea fe eb                                      bl #0x30df38
00353528  48 20 9d e5                                      ldr r2, [sp, #0x48]
0035352c  40 ff ff ea                                      b #0x353234
00353530  18 00 9d e5                                      ldr r0, [sp, #0x18]
00353534  0e 10 a0 e1                                      mov r1, lr
00353538  20 20 9d e5                                      ldr r2, [sp, #0x20]
0035353c  0c c0 8d e5                                      str ip, [sp, #0xc]
00353540  c8 ec fe eb                                      bl #0x30e868
00353544  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00353548  95 ff ff ea                                      b #0x3533a4
0035354c  6f eb fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00353550  d8 1a 64 00 ac 40 00 00 84 d8 56 00 98 d7 56 00  .byte 0xd8, 0x1a, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0xd8, 0x56, 0x00, 0x98, 0xd7, 0x56, 0x00
00353560  74 6d 58 00 78 d7 56 00 40 d7 56 00 e4 d6 56 00  .byte 0x74, 0x6d, 0x58, 0x00, 0x78, 0xd7, 0x56, 0x00, 0x40, 0xd7, 0x56, 0x00, 0xe4, 0xd6, 0x56, 0x00
00353570  f4 37 00 00 bc d5 56 00 64 d5 56 00 00 d5 56 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xbc, 0xd5, 0x56, 0x00, 0x64, 0xd5, 0x56, 0x00, 0x00, 0xd5, 0x56, 0x00
00353580  d8 d4 56 00 ac d4 56 00 80 d4 56 00 14 b0 56 00  .byte 0xd8, 0xd4, 0x56, 0x00, 0xac, 0xd4, 0x56, 0x00, 0x80, 0xd4, 0x56, 0x00, 0x14, 0xb0, 0x56, 0x00
00353590  f8 af 56 00 1c d4 56 00 94 4c 57 00              .byte 0xf8, 0xaf, 0x56, 0x00, 0x1c, 0xd4, 0x56, 0x00, 0x94, 0x4c, 0x57, 0x00

; FUNCTION 0x003535d0, declared_size=124, range_size=124, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12SearchByTypeEPN6glitch5scene10ISceneNodeEPFvS3_ENS1_17E_SCENE_NODE_TYPEE
; demangled: SceneManager::SearchByType(glitch::scene::ISceneNode*, void (*)(glitch::scene::ISceneNode*), glitch::scene::E_SCENE_NODE_TYPE)
; decoder-mode: arm
003535d0  70 40 2d e9                                      push {r4, r5, r6, lr}
003535d4  02 40 a0 e1                                      mov r4, r2
003535d8  00 00 54 e3                                      cmp r4, #0
003535dc  00 00 51 13                                      cmpne r1, #0
003535e0  10 d0 4d e2                                      sub sp, sp, #0x10
003535e4  01 20 a0 e1                                      mov r2, r1
003535e8  15 00 00 0a                                      beq #0x353644
003535ec  00 c0 a0 e3                                      mov ip, #0
003535f0  0c c0 8d e5                                      str ip, [sp, #0xc]
003535f4  04 c0 8d e5                                      str ip, [sp, #4]
003535f8  08 c0 8d e5                                      str ip, [sp, #8]
003535fc  03 10 a0 e1                                      mov r1, r3
00353600  00 c0 90 e5                                      ldr ip, [r0]
00353604  02 30 a0 e1                                      mov r3, r2
00353608  04 20 8d e2                                      add r2, sp, #4
0035360c  0f e0 a0 e1                                      mov lr, pc
00353610  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00353614  60 00 9d e9                                      ldmib sp, {r5, r6}
00353618  06 00 55 e1                                      cmp r5, r6
0035361c  04 00 00 0a                                      beq #0x353634
00353620  04 00 95 e4                                      ldr r0, [r5], #4
00353624  34 ff 2f e1                                      blx r4
00353628  05 00 56 e1                                      cmp r6, r5
0035362c  fb ff ff 1a                                      bne #0x353620
00353630  04 60 9d e5                                      ldr r6, [sp, #4]
00353634  00 00 56 e3                                      cmp r6, #0
00353638  01 00 00 0a                                      beq #0x353644
0035363c  06 00 a0 e1                                      mov r0, r6
00353640  82 f3 fe eb                                      bl #0x310450
00353644  10 d0 8d e2                                      add sp, sp, #0x10
00353648  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00353afc, declared_size=176, range_size=176, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager19registerSkinnedMeshEP22SkinnedMeshSceneNodeEx
; demangled: SceneManager::registerSkinnedMesh(SkinnedMeshSceneNodeEx*)
; decoder-mode: arm
00353afc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00353b00  80 84 90 e5                                      ldr r8, [r0, #0x480]
00353b04  84 34 90 e5                                      ldr r3, [r0, #0x484]
00353b08  00 40 a0 e1                                      mov r4, r0
00353b0c  01 50 a0 e1                                      mov r5, r1
00353b10  03 00 58 e1                                      cmp r8, r3
00353b14  04 00 00 0a                                      beq #0x353b2c
00353b18  00 10 88 e5                                      str r1, [r8]
00353b1c  80 34 90 e5                                      ldr r3, [r0, #0x480]
00353b20  04 30 83 e2                                      add r3, r3, #4
00353b24  80 34 80 e5                                      str r3, [r0, #0x480]
00353b28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00353b2c  7c 34 90 e5                                      ldr r3, [r0, #0x47c]
00353b30  08 30 63 e0                                      rsb r3, r3, r8
00353b34  43 31 a0 e1                                      asr r3, r3, #2
00353b38  01 00 53 e3                                      cmp r3, #1
00353b3c  03 70 83 20                                      addhs r7, r3, r3
00353b40  01 70 83 32                                      addlo r7, r3, #1
00353b44  07 01 77 e3                                      cmn r7, #0xc0000001
00353b48  15 00 00 8a                                      bhi #0x353ba4
00353b4c  07 00 53 e1                                      cmp r3, r7
00353b50  07 71 a0 91                                      lslls r7, r7, #2
00353b54  12 00 00 8a                                      bhi #0x353ba4
00353b58  00 10 a0 e3                                      mov r1, #0
00353b5c  07 00 a0 e1                                      mov r0, r7
00353b60  80 f2 fe eb                                      bl #0x310568
00353b64  7c 14 94 e5                                      ldr r1, [r4, #0x47c]
00353b68  00 60 a0 e1                                      mov r6, r0
00353b6c  01 80 58 e0                                      subs r8, r8, r1
00353b70  00 80 a0 01                                      moveq r8, r0
00353b74  02 00 00 0a                                      beq #0x353b84
00353b78  08 20 a0 e1                                      mov r2, r8
00353b7c  ed e8 fe eb                                      bl #0x30df38
00353b80  08 80 80 e0                                      add r8, r0, r8
00353b84  04 50 88 e4                                      str r5, [r8], #4
00353b88  7c 04 94 e5                                      ldr r0, [r4, #0x47c]
00353b8c  07 70 86 e0                                      add r7, r6, r7
00353b90  2e f2 fe eb                                      bl #0x310450
00353b94  84 74 84 e5                                      str r7, [r4, #0x484]
00353b98  80 84 84 e5                                      str r8, [r4, #0x480]
00353b9c  7c 64 84 e5                                      str r6, [r4, #0x47c]
00353ba0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00353ba4  03 70 e0 e3                                      mvn r7, #3
00353ba8  ea ff ff ea                                      b #0x353b58

; FUNCTION 0x00353bac, declared_size=208, range_size=208, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager25_RegisterAutomacticLightsEv
; demangled: SceneManager::_RegisterAutomacticLights()
; decoder-mode: arm
00353bac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00353bb0  48 30 90 e5                                      ldr r3, [r0, #0x48]
00353bb4  4c 20 90 e5                                      ldr r2, [r0, #0x4c]
00353bb8  28 64 90 e5                                      ldr r6, [r0, #0x428]
00353bbc  24 d0 4d e2                                      sub sp, sp, #0x24
00353bc0  02 00 53 e1                                      cmp r3, r2
00353bc4  4c 30 80 15                                      strne r3, [r0, #0x4c]
00353bc8  24 34 90 e5                                      ldr r3, [r0, #0x424]
00353bcc  00 40 a0 e1                                      mov r4, r0
00353bd0  06 60 63 e0                                      rsb r6, r3, r6
00353bd4  46 61 a0 e1                                      asr r6, r6, #2
00353bd8  00 00 56 e3                                      cmp r6, #0
00353bdc  24 00 00 da                                      ble #0x353c74
00353be0  00 50 a0 e3                                      mov r5, #0
00353be4  48 90 80 e2                                      add sb, r0, #0x48
00353be8  08 80 8d e2                                      add r8, sp, #8
00353bec  05 70 a0 e1                                      mov r7, r5
00353bf0  1c b0 8d e2                                      add fp, sp, #0x1c
00353bf4  01 a0 a0 e3                                      mov sl, #1
00353bf8  08 00 00 ea                                      b #0x353c20
00353bfc  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00353c00  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00353c04  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00353c08  01 50 85 e2                                      add r5, r5, #1
00353c0c  06 00 55 e1                                      cmp r5, r6
00353c10  10 30 83 e2                                      add r3, r3, #0x10
00353c14  4c 30 84 e5                                      str r3, [r4, #0x4c]
00353c18  15 00 00 0a                                      beq #0x353c74
00353c1c  24 34 94 e5                                      ldr r3, [r4, #0x424]
00353c20  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00353c24  05 00 a0 e1                                      mov r0, r5
00353c28  20 31 93 e5                                      ldr r3, [r3, #0x120]
00353c2c  0c 70 8d e5                                      str r7, [sp, #0xc]
00353c30  08 30 8d e5                                      str r3, [sp, #8]
00353c34  3d ec fe eb                                      bl #0x30ed30
00353c38  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
00353c3c  50 30 94 e5                                      ldr r3, [r4, #0x50]
00353c40  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
00353c44  03 00 5c e1                                      cmp ip, r3
00353c48  eb ff ff 1a                                      bne #0x353bfc
00353c4c  0c 10 a0 e1                                      mov r1, ip
00353c50  09 00 a0 e1                                      mov r0, sb
00353c54  08 20 a0 e1                                      mov r2, r8
00353c58  0b 30 a0 e1                                      mov r3, fp
00353c5c  01 50 85 e2                                      add r5, r5, #1
00353c60  00 a0 8d e5                                      str sl, [sp]
00353c64  04 a0 8d e5                                      str sl, [sp, #4]
00353c68  2c f7 ff eb                                      bl #0x351920
00353c6c  06 00 55 e1                                      cmp r5, r6
00353c70  e9 ff ff 1a                                      bne #0x353c1c
00353c74  24 d0 8d e2                                      add sp, sp, #0x24
00353c78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00354468, declared_size=288, range_size=288, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager5clearEv
; demangled: SceneManager::clear()
; decoder-mode: arm
00354468  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0035446c  50 24 90 e5                                      ldr r2, [r0, #0x450]
00354470  4c 34 90 e5                                      ldr r3, [r0, #0x44c]
00354474  04 51 9f e5                                      ldr r5, [pc, #0x104]
00354478  6b df 4d e2                                      sub sp, sp, #0x1ac
0035447c  02 70 63 e0                                      rsb r7, r3, r2
00354480  47 71 b0 e1                                      asrs r7, r7, #2
00354484  00 40 a0 e1                                      mov r4, r0
00354488  05 50 8f e0                                      add r5, pc, r5
0035448c  0c 00 00 0a                                      beq #0x3544c4
00354490  00 60 a0 e3                                      mov r6, #0
00354494  00 00 00 ea                                      b #0x35449c
00354498  4c 34 94 e5                                      ldr r3, [r4, #0x44c]
0035449c  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
003544a0  01 60 86 e2                                      add r6, r6, #1
003544a4  00 20 93 e5                                      ldr r2, [r3]
003544a8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
003544ac  00 00 83 e0                                      add r0, r3, r0
003544b0  33 24 ff eb                                      bl #0x31d584
003544b4  07 00 56 e1                                      cmp r6, r7
003544b8  f6 ff ff 1a                                      bne #0x354498
003544bc  4c 34 94 e5                                      ldr r3, [r4, #0x44c]
003544c0  50 24 94 e5                                      ldr r2, [r4, #0x450]
003544c4  02 00 53 e1                                      cmp r3, r2
003544c8  50 34 84 15                                      strne r3, [r4, #0x450]
003544cc  04 60 8d e2                                      add r6, sp, #4
003544d0  04 00 a0 e1                                      mov r0, r4
003544d4  eb d4 08 eb                                      bl #0x589888
003544d8  06 00 a0 e1                                      mov r0, r6
003544dc  bc e4 02 eb                                      bl #0x40d7d4
003544e0  06 10 a0 e1                                      mov r1, r6
003544e4  a5 0f 84 e2                                      add r0, r4, #0x294
003544e8  39 ff ff eb                                      bl #0x3541d4
003544ec  06 00 a0 e1                                      mov r0, r6
003544f0  f6 e1 02 eb                                      bl #0x40ccd0
003544f4  88 30 9f e5                                      ldr r3, [pc, #0x88]
003544f8  14 60 94 e5                                      ldr r6, [r4, #0x14]
003544fc  03 30 95 e7                                      ldr r3, [r5, r3]
00354500  00 00 93 e5                                      ldr r0, [r3]
00354504  cc 15 0c eb                                      bl #0x659c3c
00354508  dc 50 96 e5                                      ldr r5, [r6, #0xdc]
0035450c  05 00 a0 e1                                      mov r0, r5
00354510  5f 16 0a eb                                      bl #0x5d9e94
00354514  00 10 a0 e3                                      mov r1, #0
00354518  05 00 a0 e1                                      mov r0, r5
0035451c  d7 16 0a eb                                      bl #0x5da080
00354520  e0 50 96 e5                                      ldr r5, [r6, #0xe0]
00354524  05 00 a0 e1                                      mov r0, r5
00354528  57 4f 0a eb                                      bl #0x5e828c
0035452c  00 10 a0 e3                                      mov r1, #0
00354530  05 00 a0 e1                                      mov r0, r5
00354534  8f 56 0a eb                                      bl #0x5e9f78
00354538  d8 30 96 e5                                      ldr r3, [r6, #0xd8]
0035453c  03 00 a0 e1                                      mov r0, r3
00354540  00 30 93 e5                                      ldr r3, [r3]
00354544  0f e0 a0 e1                                      mov lr, pc
00354548  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0035454c  38 34 94 e5                                      ldr r3, [r4, #0x438]
00354550  00 00 53 e3                                      cmp r3, #0
00354554  05 00 00 0a                                      beq #0x354570
00354558  00 20 93 e5                                      ldr r2, [r3]
0035455c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00354560  00 00 83 e0                                      add r0, r3, r0
00354564  06 24 ff eb                                      bl #0x31d584
00354568  00 30 a0 e3                                      mov r3, #0
0035456c  38 34 84 e5                                      str r3, [r4, #0x438]
00354570  00 30 a0 e3                                      mov r3, #0
00354574  8c 32 84 e5                                      str r3, [r4, #0x28c]
00354578  6b df 8d e2                                      add sp, sp, #0x1ac
0035457c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00354580  08 06 64 00 48 44 00 00                          .byte 0x08, 0x06, 0x64, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x00354588, declared_size=500, range_size=500, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager13DBG_WireFrameEbPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::DBG_WireFrame(bool, glitch::scene::ISceneNode*)
; decoder-mode: arm
00354588  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035458c  00 50 52 e2                                      subs r5, r2, #0
00354590  04 50 90 05                                      ldreq r5, [r0, #4]
00354594  44 d0 4d e2                                      sub sp, sp, #0x44
00354598  2c 70 8d e2                                      add r7, sp, #0x2c
0035459c  64 31 06 e3                                      movw r3, #0x6164
003545a0  00 40 a0 e3                                      mov r4, #0
003545a4  65 3d 46 e3                                      movt r3, #0x6d65
003545a8  07 20 a0 e1                                      mov r2, r7
003545ac  01 80 a0 e1                                      mov r8, r1
003545b0  05 10 a0 e1                                      mov r1, r5
003545b4  00 60 a0 e1                                      mov r6, r0
003545b8  2c 40 8d e5                                      str r4, [sp, #0x2c]
003545bc  30 40 8d e5                                      str r4, [sp, #0x30]
003545c0  34 40 8d e5                                      str r4, [sp, #0x34]
003545c4  24 f2 ff eb                                      bl #0x350e5c
003545c8  64 31 06 e3                                      movw r3, #0x6164
003545cc  06 00 a0 e1                                      mov r0, r6
003545d0  05 10 a0 e1                                      mov r1, r5
003545d4  07 20 a0 e1                                      mov r2, r7
003545d8  65 33 47 e3                                      movt r3, #0x7365
003545dc  1e f2 ff eb                                      bl #0x350e5c
003545e0  64 31 06 e3                                      movw r3, #0x6164
003545e4  06 00 a0 e1                                      mov r0, r6
003545e8  07 20 a0 e1                                      mov r2, r7
003545ec  65 3d 44 e3                                      movt r3, #0x4d65
003545f0  05 10 a0 e1                                      mov r1, r5
003545f4  18 f2 ff eb                                      bl #0x350e5c
003545f8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003545fc  30 20 9d e5                                      ldr r2, [sp, #0x30]
00354600  03 00 a0 e1                                      mov r0, r3
00354604  02 20 63 e0                                      rsb r2, r3, r2
00354608  42 21 b0 e1                                      asrs r2, r2, #2
0035460c  04 20 8d e5                                      str r2, [sp, #4]
00354610  54 00 00 0a                                      beq #0x354768
00354614  00 40 8d e5                                      str r4, [sp]
00354618  3c 90 8d e2                                      add sb, sp, #0x3c
0035461c  0c 40 8d e2                                      add r4, sp, #0xc
00354620  38 b0 8d e2                                      add fp, sp, #0x38
00354624  00 20 9d e5                                      ldr r2, [sp]
00354628  02 61 93 e7                                      ldr r6, [r3, r2, lsl #2]
0035462c  00 30 96 e5                                      ldr r3, [r6]
00354630  06 00 a0 e1                                      mov r0, r6
00354634  0f e0 a0 e1                                      mov lr, pc
00354638  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0035463c  00 a0 50 e2                                      subs sl, r0, #0
00354640  40 00 00 0a                                      beq #0x354748
00354644  00 50 a0 e3                                      mov r5, #0
00354648  1e 00 00 ea                                      b #0x3546c8
0035464c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00354650  03 3a c3 e3                                      bic r3, r3, #0x3000
00354654  01 3a 83 e3                                      orr r3, r3, #0x1000
00354658  03 39 c3 e3                                      bic r3, r3, #0xc000
0035465c  07 30 83 e1                                      orr r3, r3, r7
00354660  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00354664  38 70 9d e5                                      ldr r7, [sp, #0x38]
00354668  10 30 8d e5                                      str r3, [sp, #0x10]
0035466c  b0 c5 09 eb                                      bl #0x5c5d34
00354670  00 20 a0 e3                                      mov r2, #0
00354674  00 10 a0 e1                                      mov r1, r0
00354678  04 30 a0 e1                                      mov r3, r4
0035467c  07 00 a0 e1                                      mov r0, r7
00354680  6b fa 09 eb                                      bl #0x5d3034
00354684  0b 00 a0 e1                                      mov r0, fp
00354688  0a f7 ff eb                                      bl #0x3522b8
0035468c  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
00354690  01 50 85 e2                                      add r5, r5, #1
00354694  00 00 57 e3                                      cmp r7, #0
00354698  08 00 00 0a                                      beq #0x3546c0
0035469c  00 30 97 e5                                      ldr r3, [r7]
003546a0  01 30 43 e2                                      sub r3, r3, #1
003546a4  00 00 53 e3                                      cmp r3, #0
003546a8  00 30 87 e5                                      str r3, [r7]
003546ac  03 00 00 1a                                      bne #0x3546c0
003546b0  07 00 a0 e1                                      mov r0, r7
003546b4  2f de 09 eb                                      bl #0x5cbf78
003546b8  07 00 a0 e1                                      mov r0, r7
003546bc  5f ef fe eb                                      bl #0x310440
003546c0  0a 00 55 e1                                      cmp r5, sl
003546c4  1f 00 00 0a                                      beq #0x354748
003546c8  00 30 96 e5                                      ldr r3, [r6]
003546cc  05 20 a0 e1                                      mov r2, r5
003546d0  06 10 a0 e1                                      mov r1, r6
003546d4  09 00 a0 e1                                      mov r0, sb
003546d8  0f e0 a0 e1                                      mov lr, pc
003546dc  84 f0 93 e5                                      ldr pc, [r3, #0x84]
003546e0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
003546e4  04 70 90 e5                                      ldr r7, [r0, #4]
003546e8  00 00 57 e3                                      cmp r7, #0
003546ec  38 70 8d e5                                      str r7, [sp, #0x38]
003546f0  00 30 97 15                                      ldrne r3, [r7]
003546f4  01 30 83 12                                      addne r3, r3, #1
003546f8  00 30 87 15                                      strne r3, [r7]
003546fc  3c 00 9d 15                                      ldrne r0, [sp, #0x3c]
00354700  38 70 9d 15                                      ldrne r7, [sp, #0x38]
00354704  8a c5 09 eb                                      bl #0x5c5d34
00354708  18 30 97 e5                                      ldr r3, [r7, #0x18]
0035470c  0c 20 a0 e3                                      mov r2, #0xc
00354710  04 c0 a0 e1                                      mov ip, r4
00354714  92 30 23 e0                                      mla r3, r2, r0, r3
00354718  00 00 58 e3                                      cmp r8, #0
0035471c  08 e0 93 e5                                      ldr lr, [r3, #8]
00354720  01 79 a0 e3                                      mov r7, #0x4000
00354724  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00354728  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0035472c  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00354730  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00354734  c4 ff ff 1a                                      bne #0x35464c
00354738  10 30 9d e5                                      ldr r3, [sp, #0x10]
0035473c  08 70 a0 e1                                      mov r7, r8
00354740  03 3a c3 e3                                      bic r3, r3, #0x3000
00354744  c3 ff ff ea                                      b #0x354658
00354748  00 30 9d e5                                      ldr r3, [sp]
0035474c  04 20 9d e5                                      ldr r2, [sp, #4]
00354750  01 30 83 e2                                      add r3, r3, #1
00354754  02 00 53 e1                                      cmp r3, r2
00354758  00 30 8d e5                                      str r3, [sp]
0035475c  2c 30 9d 15                                      ldrne r3, [sp, #0x2c]
00354760  af ff ff 1a                                      bne #0x354624
00354764  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00354768  00 00 50 e3                                      cmp r0, #0
0035476c  00 00 00 0a                                      beq #0x354774
00354770  36 ef fe eb                                      bl #0x310450
00354774  44 d0 8d e2                                      add sp, sp, #0x44
00354778  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0035477c, declared_size=548, range_size=548, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager11SetMaskXrayEPN6glitch5scene10ISceneNodeEb
; demangled: SceneManager::SetMaskXray(glitch::scene::ISceneNode*, bool)
; decoder-mode: arm
0035477c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00354780  00 40 51 e2                                      subs r4, r1, #0
00354784  04 40 90 05                                      ldreq r4, [r0, #4]
00354788  24 d0 4d e2                                      sub sp, sp, #0x24
0035478c  0c 60 8d e2                                      add r6, sp, #0xc
00354790  64 31 06 e3                                      movw r3, #0x6164
00354794  00 b0 a0 e3                                      mov fp, #0
00354798  65 3d 46 e3                                      movt r3, #0x6d65
0035479c  04 10 a0 e1                                      mov r1, r4
003547a0  06 20 a0 e1                                      mov r2, r6
003547a4  00 50 a0 e1                                      mov r5, r0
003547a8  0c b0 8d e5                                      str fp, [sp, #0xc]
003547ac  10 b0 8d e5                                      str fp, [sp, #0x10]
003547b0  14 b0 8d e5                                      str fp, [sp, #0x14]
003547b4  a8 f1 ff eb                                      bl #0x350e5c
003547b8  64 31 06 e3                                      movw r3, #0x6164
003547bc  05 00 a0 e1                                      mov r0, r5
003547c0  04 10 a0 e1                                      mov r1, r4
003547c4  06 20 a0 e1                                      mov r2, r6
003547c8  65 33 47 e3                                      movt r3, #0x7365
003547cc  a2 f1 ff eb                                      bl #0x350e5c
003547d0  64 31 06 e3                                      movw r3, #0x6164
003547d4  05 00 a0 e1                                      mov r0, r5
003547d8  06 20 a0 e1                                      mov r2, r6
003547dc  65 3d 44 e3                                      movt r3, #0x4d65
003547e0  04 10 a0 e1                                      mov r1, r4
003547e4  9c f1 ff eb                                      bl #0x350e5c
003547e8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003547ec  10 20 9d e5                                      ldr r2, [sp, #0x10]
003547f0  03 00 a0 e1                                      mov r0, r3
003547f4  02 20 63 e0                                      rsb r2, r3, r2
003547f8  42 21 b0 e1                                      asrs r2, r2, #2
003547fc  04 20 8d e5                                      str r2, [sp, #4]
00354800  61 00 00 0a                                      beq #0x35498c
00354804  1c a0 8d e2                                      add sl, sp, #0x1c
00354808  18 90 8d e2                                      add sb, sp, #0x18
0035480c  0c 50 a0 e3                                      mov r5, #0xc
00354810  01 70 a0 e3                                      mov r7, #1
00354814  0b 61 93 e7                                      ldr r6, [r3, fp, lsl #2]
00354818  00 30 96 e5                                      ldr r3, [r6]
0035481c  06 00 a0 e1                                      mov r0, r6
00354820  0f e0 a0 e1                                      mov lr, pc
00354824  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00354828  00 80 50 e2                                      subs r8, r0, #0
0035482c  50 00 00 da                                      ble #0x354974
00354830  00 40 a0 e3                                      mov r4, #0
00354834  00 30 96 e5                                      ldr r3, [r6]
00354838  0a 00 a0 e1                                      mov r0, sl
0035483c  06 10 a0 e1                                      mov r1, r6
00354840  04 20 a0 e1                                      mov r2, r4
00354844  0f e0 a0 e1                                      mov lr, pc
00354848  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0035484c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00354850  09 00 a0 e1                                      mov r0, sb
00354854  04 30 92 e5                                      ldr r3, [r2, #4]
00354858  18 30 8d e5                                      str r3, [sp, #0x18]
0035485c  00 00 53 e3                                      cmp r3, #0
00354860  00 20 93 15                                      ldrne r2, [r3]
00354864  01 20 82 12                                      addne r2, r2, #1
00354868  00 20 83 15                                      strne r2, [r3]
0035486c  18 30 9d 15                                      ldrne r3, [sp, #0x18]
00354870  1c 20 9d 15                                      ldrne r2, [sp, #0x1c]
00354874  18 30 93 e5                                      ldr r3, [r3, #0x18]
00354878  08 20 d2 e5                                      ldrb r2, [r2, #8]
0035487c  95 32 23 e0                                      mla r3, r5, r2, r3
00354880  08 30 93 e5                                      ldr r3, [r3, #8]
00354884  04 20 93 e5                                      ldr r2, [r3, #4]
00354888  02 03 12 e3                                      tst r2, #0x8000000
0035488c  02 23 82 e3                                      orr r2, r2, #0x8000000
00354890  04 20 83 e5                                      str r2, [r3, #4]
00354894  30 70 c3 05                                      strbeq r7, [r3, #0x30]
00354898  18 30 9d e5                                      ldr r3, [sp, #0x18]
0035489c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003548a0  18 30 93 e5                                      ldr r3, [r3, #0x18]
003548a4  08 20 d2 e5                                      ldrb r2, [r2, #8]
003548a8  95 32 23 e0                                      mla r3, r5, r2, r3
003548ac  08 30 93 e5                                      ldr r3, [r3, #8]
003548b0  04 20 93 e5                                      ldr r2, [r3, #4]
003548b4  07 10 02 e2                                      and r1, r2, #7
003548b8  07 00 51 e3                                      cmp r1, #7
003548bc  07 20 82 e3                                      orr r2, r2, #7
003548c0  30 70 c3 15                                      strbne r7, [r3, #0x30]
003548c4  04 20 83 e5                                      str r2, [r3, #4]
003548c8  18 30 9d e5                                      ldr r3, [sp, #0x18]
003548cc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003548d0  18 30 93 e5                                      ldr r3, [r3, #0x18]
003548d4  08 20 d2 e5                                      ldrb r2, [r2, #8]
003548d8  95 32 23 e0                                      mla r3, r5, r2, r3
003548dc  08 30 93 e5                                      ldr r3, [r3, #8]
003548e0  00 20 93 e5                                      ldr r2, [r3]
003548e4  52 14 e7 e7                                      ubfx r1, r2, #8, #8
003548e8  ff 00 51 e3                                      cmp r1, #0xff
003548ec  ff 2c 82 e3                                      orr r2, r2, #0xff00
003548f0  30 70 c3 15                                      strbne r7, [r3, #0x30]
003548f4  00 20 83 e5                                      str r2, [r3]
003548f8  18 30 9d e5                                      ldr r3, [sp, #0x18]
003548fc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00354900  18 30 93 e5                                      ldr r3, [r3, #0x18]
00354904  08 20 d2 e5                                      ldrb r2, [r2, #8]
00354908  95 32 23 e0                                      mla r3, r5, r2, r3
0035490c  08 30 93 e5                                      ldr r3, [r3, #8]
00354910  04 20 93 e5                                      ldr r2, [r3, #4]
00354914  d2 14 e2 e7                                      ubfx r1, r2, #9, #3
00354918  0e 2c c2 e3                                      bic r2, r2, #0xe00
0035491c  02 00 51 e3                                      cmp r1, #2
00354920  01 2b 82 e3                                      orr r2, r2, #0x400
00354924  04 20 83 e5                                      str r2, [r3, #4]
00354928  30 70 c3 15                                      strbne r7, [r3, #0x30]
0035492c  61 f6 ff eb                                      bl #0x3522b8
00354930  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00354934  00 00 53 e3                                      cmp r3, #0
00354938  0a 00 00 0a                                      beq #0x354968
0035493c  00 20 93 e5                                      ldr r2, [r3]
00354940  01 20 42 e2                                      sub r2, r2, #1
00354944  00 00 52 e3                                      cmp r2, #0
00354948  00 20 83 e5                                      str r2, [r3]
0035494c  05 00 00 1a                                      bne #0x354968
00354950  03 00 a0 e1                                      mov r0, r3
00354954  00 30 8d e5                                      str r3, [sp]
00354958  86 dd 09 eb                                      bl #0x5cbf78
0035495c  00 30 9d e5                                      ldr r3, [sp]
00354960  03 00 a0 e1                                      mov r0, r3
00354964  b5 ee fe eb                                      bl #0x310440
00354968  01 40 84 e2                                      add r4, r4, #1
0035496c  04 00 58 e1                                      cmp r8, r4
00354970  af ff ff 1a                                      bne #0x354834
00354974  04 30 9d e5                                      ldr r3, [sp, #4]
00354978  01 b0 8b e2                                      add fp, fp, #1
0035497c  03 00 5b e1                                      cmp fp, r3
00354980  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
00354984  a2 ff ff 1a                                      bne #0x354814
00354988  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0035498c  00 00 50 e3                                      cmp r0, #0
00354990  00 00 00 0a                                      beq #0x354998
00354994  ad ee fe eb                                      bl #0x310450
00354998  24 d0 8d e2                                      add sp, sp, #0x24
0035499c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x003549a0, declared_size=396, range_size=396, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager14UpdateLightSetEiRSt6vectorIbSaIbEEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::UpdateLightSet(int, std::vector<bool, std::allocator<bool> >&, glitch::scene::ISceneNode*)
; decoder-mode: arm
003549a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003549a4  00 50 53 e2                                      subs r5, r3, #0
003549a8  04 50 90 05                                      ldreq r5, [r0, #4]
003549ac  2c d0 4d e2                                      sub sp, sp, #0x2c
003549b0  14 60 8d e2                                      add r6, sp, #0x14
003549b4  64 31 06 e3                                      movw r3, #0x6164
003549b8  00 40 a0 e3                                      mov r4, #0
003549bc  65 3d 46 e3                                      movt r3, #0x6d65
003549c0  01 a0 a0 e1                                      mov sl, r1
003549c4  02 80 a0 e1                                      mov r8, r2
003549c8  05 10 a0 e1                                      mov r1, r5
003549cc  06 20 a0 e1                                      mov r2, r6
003549d0  00 90 a0 e1                                      mov sb, r0
003549d4  14 40 8d e5                                      str r4, [sp, #0x14]
003549d8  18 40 8d e5                                      str r4, [sp, #0x18]
003549dc  1c 40 8d e5                                      str r4, [sp, #0x1c]
003549e0  1d f1 ff eb                                      bl #0x350e5c
003549e4  64 31 06 e3                                      movw r3, #0x6164
003549e8  09 00 a0 e1                                      mov r0, sb
003549ec  05 10 a0 e1                                      mov r1, r5
003549f0  06 20 a0 e1                                      mov r2, r6
003549f4  65 33 47 e3                                      movt r3, #0x7365
003549f8  17 f1 ff eb                                      bl #0x350e5c
003549fc  64 31 06 e3                                      movw r3, #0x6164
00354a00  09 00 a0 e1                                      mov r0, sb
00354a04  06 20 a0 e1                                      mov r2, r6
00354a08  65 3d 44 e3                                      movt r3, #0x4d65
00354a0c  05 10 a0 e1                                      mov r1, r5
00354a10  11 f1 ff eb                                      bl #0x350e5c
00354a14  14 30 9d e5                                      ldr r3, [sp, #0x14]
00354a18  18 20 9d e5                                      ldr r2, [sp, #0x18]
00354a1c  03 00 a0 e1                                      mov r0, r3
00354a20  02 20 63 e0                                      rsb r2, r3, r2
00354a24  42 21 b0 e1                                      asrs r2, r2, #2
00354a28  0c 20 8d e5                                      str r2, [sp, #0xc]
00354a2c  39 00 00 0a                                      beq #0x354b18
00354a30  a5 9f 89 e2                                      add sb, sb, #0x294
00354a34  08 40 8d e5                                      str r4, [sp, #8]
00354a38  24 60 8d e2                                      add r6, sp, #0x24
00354a3c  20 b0 8d e2                                      add fp, sp, #0x20
00354a40  08 20 9d e5                                      ldr r2, [sp, #8]
00354a44  02 51 93 e7                                      ldr r5, [r3, r2, lsl #2]
00354a48  00 30 95 e5                                      ldr r3, [r5]
00354a4c  05 00 a0 e1                                      mov r0, r5
00354a50  0f e0 a0 e1                                      mov lr, pc
00354a54  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00354a58  00 70 50 e2                                      subs r7, r0, #0
00354a5c  25 00 00 da                                      ble #0x354af8
00354a60  00 40 a0 e3                                      mov r4, #0
00354a64  04 20 a0 e1                                      mov r2, r4
00354a68  06 00 a0 e1                                      mov r0, r6
00354a6c  05 10 a0 e1                                      mov r1, r5
00354a70  00 30 95 e5                                      ldr r3, [r5]
00354a74  0f e0 a0 e1                                      mov lr, pc
00354a78  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00354a7c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00354a80  08 30 a0 e1                                      mov r3, r8
00354a84  0a 10 a0 e1                                      mov r1, sl
00354a88  04 c0 9c e5                                      ldr ip, [ip, #4]
00354a8c  06 20 a0 e1                                      mov r2, r6
00354a90  09 00 a0 e1                                      mov r0, sb
00354a94  00 00 5c e3                                      cmp ip, #0
00354a98  20 c0 8d e5                                      str ip, [sp, #0x20]
00354a9c  00 e0 9c 15                                      ldrne lr, [ip]
00354aa0  01 40 84 e2                                      add r4, r4, #1
00354aa4  01 e0 8e 12                                      addne lr, lr, #1
00354aa8  00 e0 8c 15                                      strne lr, [ip]
00354aac  bd df 02 eb                                      bl #0x40c9a8
00354ab0  0b 00 a0 e1                                      mov r0, fp
00354ab4  ff f5 ff eb                                      bl #0x3522b8
00354ab8  24 30 9d e5                                      ldr r3, [sp, #0x24]
00354abc  00 00 53 e3                                      cmp r3, #0
00354ac0  0a 00 00 0a                                      beq #0x354af0
00354ac4  00 20 93 e5                                      ldr r2, [r3]
00354ac8  01 20 42 e2                                      sub r2, r2, #1
00354acc  00 00 52 e3                                      cmp r2, #0
00354ad0  00 20 83 e5                                      str r2, [r3]
00354ad4  05 00 00 1a                                      bne #0x354af0
00354ad8  03 00 a0 e1                                      mov r0, r3
00354adc  04 30 8d e5                                      str r3, [sp, #4]
00354ae0  24 dd 09 eb                                      bl #0x5cbf78
00354ae4  04 30 9d e5                                      ldr r3, [sp, #4]
00354ae8  03 00 a0 e1                                      mov r0, r3
00354aec  53 ee fe eb                                      bl #0x310440
00354af0  04 00 57 e1                                      cmp r7, r4
00354af4  da ff ff 1a                                      bne #0x354a64
00354af8  08 30 9d e5                                      ldr r3, [sp, #8]
00354afc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00354b00  01 30 83 e2                                      add r3, r3, #1
00354b04  02 00 53 e1                                      cmp r3, r2
00354b08  08 30 8d e5                                      str r3, [sp, #8]
00354b0c  14 30 9d 15                                      ldrne r3, [sp, #0x14]
00354b10  ca ff ff 1a                                      bne #0x354a40
00354b14  14 00 9d e5                                      ldr r0, [sp, #0x14]
00354b18  00 00 50 e3                                      cmp r0, #0
00354b1c  00 00 00 0a                                      beq #0x354b24
00354b20  4a ee fe eb                                      bl #0x310450
00354b24  2c d0 8d e2                                      add sp, sp, #0x2c
00354b28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00354b2c, declared_size=396, range_size=396, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager17AutoLoadNormalMapEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::AutoLoadNormalMap(glitch::scene::ISceneNode*)
; decoder-mode: arm
00354b2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00354b30  00 40 51 e2                                      subs r4, r1, #0
00354b34  04 40 90 05                                      ldreq r4, [r0, #4]
00354b38  24 d0 4d e2                                      sub sp, sp, #0x24
00354b3c  0c 50 8d e2                                      add r5, sp, #0xc
00354b40  64 31 06 e3                                      movw r3, #0x6164
00354b44  00 90 a0 e3                                      mov sb, #0
00354b48  65 3d 46 e3                                      movt r3, #0x6d65
00354b4c  04 10 a0 e1                                      mov r1, r4
00354b50  05 20 a0 e1                                      mov r2, r5
00354b54  00 a0 a0 e1                                      mov sl, r0
00354b58  0c 90 8d e5                                      str sb, [sp, #0xc]
00354b5c  10 90 8d e5                                      str sb, [sp, #0x10]
00354b60  14 90 8d e5                                      str sb, [sp, #0x14]
00354b64  bc f0 ff eb                                      bl #0x350e5c
00354b68  64 31 06 e3                                      movw r3, #0x6164
00354b6c  0a 00 a0 e1                                      mov r0, sl
00354b70  04 10 a0 e1                                      mov r1, r4
00354b74  05 20 a0 e1                                      mov r2, r5
00354b78  65 33 47 e3                                      movt r3, #0x7365
00354b7c  b6 f0 ff eb                                      bl #0x350e5c
00354b80  64 31 06 e3                                      movw r3, #0x6164
00354b84  0a 00 a0 e1                                      mov r0, sl
00354b88  65 3d 44 e3                                      movt r3, #0x4d65
00354b8c  04 10 a0 e1                                      mov r1, r4
00354b90  05 20 a0 e1                                      mov r2, r5
00354b94  b0 f0 ff eb                                      bl #0x350e5c
00354b98  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00354b9c  10 b0 9d e5                                      ldr fp, [sp, #0x10]
00354ba0  03 00 a0 e1                                      mov r0, r3
00354ba4  0b b0 63 e0                                      rsb fp, r3, fp
00354ba8  4b b1 b0 e1                                      asrs fp, fp, #2
00354bac  3c 00 00 0a                                      beq #0x354ca4
00354bb0  1c 80 8d e2                                      add r8, sp, #0x1c
00354bb4  18 70 8d e2                                      add r7, sp, #0x18
00354bb8  09 51 93 e7                                      ldr r5, [r3, sb, lsl #2]
00354bbc  00 30 95 e5                                      ldr r3, [r5]
00354bc0  05 00 a0 e1                                      mov r0, r5
00354bc4  0f e0 a0 e1                                      mov lr, pc
00354bc8  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00354bcc  00 60 50 e2                                      subs r6, r0, #0
00354bd0  2e 00 00 da                                      ble #0x354c90
00354bd4  00 40 a0 e3                                      mov r4, #0
00354bd8  04 20 a0 e1                                      mov r2, r4
00354bdc  08 00 a0 e1                                      mov r0, r8
00354be0  05 10 a0 e1                                      mov r1, r5
00354be4  00 30 95 e5                                      ldr r3, [r5]
00354be8  0f e0 a0 e1                                      mov lr, pc
00354bec  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00354bf0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00354bf4  07 10 a0 e1                                      mov r1, r7
00354bf8  0a 00 a0 e1                                      mov r0, sl
00354bfc  00 00 53 e3                                      cmp r3, #0
00354c00  18 30 8d e5                                      str r3, [sp, #0x18]
00354c04  00 20 93 15                                      ldrne r2, [r3]
00354c08  01 40 84 e2                                      add r4, r4, #1
00354c0c  01 20 82 12                                      addne r2, r2, #1
00354c10  00 20 83 15                                      strne r2, [r3]
00354c14  e3 f8 ff eb                                      bl #0x352fa8
00354c18  18 30 9d e5                                      ldr r3, [sp, #0x18]
00354c1c  00 00 53 e3                                      cmp r3, #0
00354c20  0a 00 00 0a                                      beq #0x354c50
00354c24  00 20 93 e5                                      ldr r2, [r3]
00354c28  01 20 42 e2                                      sub r2, r2, #1
00354c2c  00 00 52 e3                                      cmp r2, #0
00354c30  00 20 83 e5                                      str r2, [r3]
00354c34  05 00 00 1a                                      bne #0x354c50
00354c38  03 00 a0 e1                                      mov r0, r3
00354c3c  04 30 8d e5                                      str r3, [sp, #4]
00354c40  cc dc 09 eb                                      bl #0x5cbf78
00354c44  04 30 9d e5                                      ldr r3, [sp, #4]
00354c48  03 00 a0 e1                                      mov r0, r3
00354c4c  fb ed fe eb                                      bl #0x310440
00354c50  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00354c54  00 00 53 e3                                      cmp r3, #0
00354c58  0a 00 00 0a                                      beq #0x354c88
00354c5c  00 20 93 e5                                      ldr r2, [r3]
00354c60  01 20 42 e2                                      sub r2, r2, #1
00354c64  00 00 52 e3                                      cmp r2, #0
00354c68  00 20 83 e5                                      str r2, [r3]
00354c6c  05 00 00 1a                                      bne #0x354c88
00354c70  03 00 a0 e1                                      mov r0, r3
00354c74  04 30 8d e5                                      str r3, [sp, #4]
00354c78  be dc 09 eb                                      bl #0x5cbf78
00354c7c  04 30 9d e5                                      ldr r3, [sp, #4]
00354c80  03 00 a0 e1                                      mov r0, r3
00354c84  ed ed fe eb                                      bl #0x310440
00354c88  04 00 56 e1                                      cmp r6, r4
00354c8c  d1 ff ff 1a                                      bne #0x354bd8
00354c90  01 90 89 e2                                      add sb, sb, #1
00354c94  0b 00 59 e1                                      cmp sb, fp
00354c98  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
00354c9c  c5 ff ff 1a                                      bne #0x354bb8
00354ca0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00354ca4  00 00 50 e3                                      cmp r0, #0
00354ca8  00 00 00 0a                                      beq #0x354cb0
00354cac  e7 ed fe eb                                      bl #0x310450
00354cb0  24 d0 8d e2                                      add sp, sp, #0x24
00354cb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00354cb8, declared_size=468, range_size=468, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager18SetMaterialEffectsEPN6glitch5scene10ISceneNodeENS0_4core8vector3dIfEEff
; demangled: SceneManager::SetMaterialEffects(glitch::scene::ISceneNode*, glitch::core::vector3d<float>, float, float)
; decoder-mode: arm
00354cb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00354cbc  00 60 51 e2                                      subs r6, r1, #0
00354cc0  04 60 90 05                                      ldreq r6, [r0, #4]
00354cc4  3c d0 4d e2                                      sub sp, sp, #0x3c
00354cc8  24 70 8d e2                                      add r7, sp, #0x24
00354ccc  03 90 a0 e1                                      mov sb, r3
00354cd0  64 31 06 e3                                      movw r3, #0x6164
00354cd4  00 40 a0 e3                                      mov r4, #0
00354cd8  65 3d 46 e3                                      movt r3, #0x6d65
00354cdc  06 10 a0 e1                                      mov r1, r6
00354ce0  02 50 a0 e1                                      mov r5, r2
00354ce4  07 20 a0 e1                                      mov r2, r7
00354ce8  00 a0 a0 e1                                      mov sl, r0
00354cec  24 40 8d e5                                      str r4, [sp, #0x24]
00354cf0  28 40 8d e5                                      str r4, [sp, #0x28]
00354cf4  2c 40 8d e5                                      str r4, [sp, #0x2c]
00354cf8  57 f0 ff eb                                      bl #0x350e5c
00354cfc  64 31 06 e3                                      movw r3, #0x6164
00354d00  0a 00 a0 e1                                      mov r0, sl
00354d04  06 10 a0 e1                                      mov r1, r6
00354d08  07 20 a0 e1                                      mov r2, r7
00354d0c  65 33 47 e3                                      movt r3, #0x7365
00354d10  51 f0 ff eb                                      bl #0x350e5c
00354d14  64 31 06 e3                                      movw r3, #0x6164
00354d18  0a 00 a0 e1                                      mov r0, sl
00354d1c  07 20 a0 e1                                      mov r2, r7
00354d20  65 3d 44 e3                                      movt r3, #0x4d65
00354d24  06 10 a0 e1                                      mov r1, r6
00354d28  4b f0 ff eb                                      bl #0x350e5c
00354d2c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00354d30  28 20 9d e5                                      ldr r2, [sp, #0x28]
00354d34  03 00 a0 e1                                      mov r0, r3
00354d38  02 20 63 e0                                      rsb r2, r3, r2
00354d3c  42 21 b0 e1                                      asrs r2, r2, #2
00354d40  14 20 8d e5                                      str r2, [sp, #0x14]
00354d44  4b 00 00 0a                                      beq #0x354e78
00354d48  30 20 8d e2                                      add r2, sp, #0x30
00354d4c  18 c0 8d e2                                      add ip, sp, #0x18
00354d50  10 40 8d e5                                      str r4, [sp, #0x10]
00354d54  34 b0 8d e2                                      add fp, sp, #0x34
00354d58  08 20 8d e5                                      str r2, [sp, #8]
00354d5c  0c c0 8d e5                                      str ip, [sp, #0xc]
00354d60  10 20 9d e5                                      ldr r2, [sp, #0x10]
00354d64  02 61 93 e7                                      ldr r6, [r3, r2, lsl #2]
00354d68  00 30 96 e5                                      ldr r3, [r6]
00354d6c  06 00 a0 e1                                      mov r0, r6
00354d70  0f e0 a0 e1                                      mov lr, pc
00354d74  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00354d78  00 70 50 e2                                      subs r7, r0, #0
00354d7c  35 00 00 da                                      ble #0x354e58
00354d80  00 40 a0 e3                                      mov r4, #0
00354d84  07 80 a0 e1                                      mov r8, r7
00354d88  04 20 a0 e1                                      mov r2, r4
00354d8c  0b 00 a0 e1                                      mov r0, fp
00354d90  06 10 a0 e1                                      mov r1, r6
00354d94  00 30 96 e5                                      ldr r3, [r6]
00354d98  0f e0 a0 e1                                      mov lr, pc
00354d9c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00354da0  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00354da4  08 10 9d e5                                      ldr r1, [sp, #8]
00354da8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00354dac  00 00 5c e3                                      cmp ip, #0
00354db0  30 c0 8d e5                                      str ip, [sp, #0x30]
00354db4  00 e0 9c 15                                      ldrne lr, [ip]
00354db8  09 30 a0 e1                                      mov r3, sb
00354dbc  0a 00 a0 e1                                      mov r0, sl
00354dc0  01 e0 8e 12                                      addne lr, lr, #1
00354dc4  00 e0 8c 15                                      strne lr, [ip]
00354dc8  08 c0 95 e5                                      ldr ip, [r5, #8]
00354dcc  00 70 95 e5                                      ldr r7, [r5]
00354dd0  04 e0 95 e5                                      ldr lr, [r5, #4]
00354dd4  20 c0 8d e5                                      str ip, [sp, #0x20]
00354dd8  60 c0 9d e5                                      ldr ip, [sp, #0x60]
00354ddc  18 70 8d e5                                      str r7, [sp, #0x18]
00354de0  1c e0 8d e5                                      str lr, [sp, #0x1c]
00354de4  00 c0 8d e5                                      str ip, [sp]
00354de8  83 f6 ff eb                                      bl #0x3527fc
00354dec  30 70 9d e5                                      ldr r7, [sp, #0x30]
00354df0  01 40 84 e2                                      add r4, r4, #1
00354df4  00 00 57 e3                                      cmp r7, #0
00354df8  08 00 00 0a                                      beq #0x354e20
00354dfc  00 30 97 e5                                      ldr r3, [r7]
00354e00  01 30 43 e2                                      sub r3, r3, #1
00354e04  00 00 53 e3                                      cmp r3, #0
00354e08  00 30 87 e5                                      str r3, [r7]
00354e0c  03 00 00 1a                                      bne #0x354e20
00354e10  07 00 a0 e1                                      mov r0, r7
00354e14  57 dc 09 eb                                      bl #0x5cbf78
00354e18  07 00 a0 e1                                      mov r0, r7
00354e1c  87 ed fe eb                                      bl #0x310440
00354e20  34 70 9d e5                                      ldr r7, [sp, #0x34]
00354e24  00 00 57 e3                                      cmp r7, #0
00354e28  08 00 00 0a                                      beq #0x354e50
00354e2c  00 30 97 e5                                      ldr r3, [r7]
00354e30  01 30 43 e2                                      sub r3, r3, #1
00354e34  00 00 53 e3                                      cmp r3, #0
00354e38  00 30 87 e5                                      str r3, [r7]
00354e3c  03 00 00 1a                                      bne #0x354e50
00354e40  07 00 a0 e1                                      mov r0, r7
00354e44  4b dc 09 eb                                      bl #0x5cbf78
00354e48  07 00 a0 e1                                      mov r0, r7
00354e4c  7b ed fe eb                                      bl #0x310440
00354e50  04 00 58 e1                                      cmp r8, r4
00354e54  cb ff ff 1a                                      bne #0x354d88
00354e58  10 20 9d e5                                      ldr r2, [sp, #0x10]
00354e5c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00354e60  01 20 82 e2                                      add r2, r2, #1
00354e64  03 00 52 e1                                      cmp r2, r3
00354e68  10 20 8d e5                                      str r2, [sp, #0x10]
00354e6c  24 30 9d 15                                      ldrne r3, [sp, #0x24]
00354e70  ba ff ff 1a                                      bne #0x354d60
00354e74  24 00 9d e5                                      ldr r0, [sp, #0x24]
00354e78  00 00 50 e3                                      cmp r0, #0
00354e7c  00 00 00 0a                                      beq #0x354e84
00354e80  72 ed fe eb                                      bl #0x310450
00354e84  3c d0 8d e2                                      add sp, sp, #0x3c
00354e88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00355000, declared_size=484, range_size=484, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager11GetMaterialEPN6glitch5scene10ISceneNodeERKSsb
; demangled: SceneManager::GetMaterial(glitch::scene::ISceneNode*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, bool)
; decoder-mode: arm
00355000  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00355004  00 60 52 e2                                      subs r6, r2, #0
00355008  1c d0 4d e2                                      sub sp, sp, #0x1c
0035500c  00 00 8d e5                                      str r0, [sp]
00355010  01 50 a0 e1                                      mov r5, r1
00355014  03 40 a0 e1                                      mov r4, r3
00355018  40 90 dd e5                                      ldrb sb, [sp, #0x40]
0035501c  6c 00 00 0a                                      beq #0x3551d4
00355020  08 70 8d e2                                      add r7, sp, #8
00355024  64 31 06 e3                                      movw r3, #0x6164
00355028  00 b0 a0 e3                                      mov fp, #0
0035502c  01 00 a0 e1                                      mov r0, r1
00355030  65 3d 46 e3                                      movt r3, #0x6d65
00355034  06 10 a0 e1                                      mov r1, r6
00355038  07 20 a0 e1                                      mov r2, r7
0035503c  08 b0 8d e5                                      str fp, [sp, #8]
00355040  0c b0 8d e5                                      str fp, [sp, #0xc]
00355044  10 b0 8d e5                                      str fp, [sp, #0x10]
00355048  83 ef ff eb                                      bl #0x350e5c
0035504c  64 31 06 e3                                      movw r3, #0x6164
00355050  05 00 a0 e1                                      mov r0, r5
00355054  06 10 a0 e1                                      mov r1, r6
00355058  07 20 a0 e1                                      mov r2, r7
0035505c  65 33 47 e3                                      movt r3, #0x7365
00355060  7d ef ff eb                                      bl #0x350e5c
00355064  64 31 06 e3                                      movw r3, #0x6164
00355068  05 00 a0 e1                                      mov r0, r5
0035506c  07 20 a0 e1                                      mov r2, r7
00355070  65 3d 44 e3                                      movt r3, #0x4d65
00355074  06 10 a0 e1                                      mov r1, r6
00355078  77 ef ff eb                                      bl #0x350e5c
0035507c  08 30 9d e5                                      ldr r3, [sp, #8]
00355080  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00355084  03 00 a0 e1                                      mov r0, r3
00355088  02 20 63 e0                                      rsb r2, r3, r2
0035508c  42 21 b0 e1                                      asrs r2, r2, #2
00355090  04 20 8d e5                                      str r2, [sp, #4]
00355094  4b 00 00 0a                                      beq #0x3551c8
00355098  14 80 8d e2                                      add r8, sp, #0x14
0035509c  0b 71 93 e7                                      ldr r7, [r3, fp, lsl #2]
003550a0  00 30 97 e5                                      ldr r3, [r7]
003550a4  07 00 a0 e1                                      mov r0, r7
003550a8  0f e0 a0 e1                                      mov lr, pc
003550ac  88 f0 93 e5                                      ldr pc, [r3, #0x88]
003550b0  00 a0 50 e2                                      subs sl, r0, #0
003550b4  36 00 00 da                                      ble #0x355194
003550b8  00 60 a0 e3                                      mov r6, #0
003550bc  15 00 00 ea                                      b #0x355118
003550c0  14 50 9d e5                                      ldr r5, [sp, #0x14]
003550c4  14 10 94 e5                                      ldr r1, [r4, #0x14]
003550c8  10 20 94 e5                                      ldr r2, [r4, #0x10]
003550cc  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
003550d0  02 20 61 e0                                      rsb r2, r1, r2
003550d4  00 00 50 e3                                      cmp r0, #0
003550d8  04 00 80 12                                      addne r0, r0, #4
003550dc  e6 e6 fe eb                                      bl #0x30ec7c
003550e0  00 00 50 e3                                      cmp r0, #0
003550e4  30 00 00 0a                                      beq #0x3551ac
003550e8  00 30 95 e5                                      ldr r3, [r5]
003550ec  01 30 43 e2                                      sub r3, r3, #1
003550f0  00 00 53 e3                                      cmp r3, #0
003550f4  00 30 85 e5                                      str r3, [r5]
003550f8  03 00 00 1a                                      bne #0x35510c
003550fc  05 00 a0 e1                                      mov r0, r5
00355100  9c db 09 eb                                      bl #0x5cbf78
00355104  05 00 a0 e1                                      mov r0, r5
00355108  cc ec fe eb                                      bl #0x310440
0035510c  01 60 86 e2                                      add r6, r6, #1
00355110  06 00 5a e1                                      cmp sl, r6
00355114  1e 00 00 0a                                      beq #0x355194
00355118  00 30 97 e5                                      ldr r3, [r7]
0035511c  08 00 a0 e1                                      mov r0, r8
00355120  07 10 a0 e1                                      mov r1, r7
00355124  06 20 a0 e1                                      mov r2, r6
00355128  0f e0 a0 e1                                      mov lr, pc
0035512c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00355130  00 00 59 e3                                      cmp sb, #0
00355134  e1 ff ff 1a                                      bne #0x3550c0
00355138  14 50 9d e5                                      ldr r5, [sp, #0x14]
0035513c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00355140  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00355144  00 00 50 e3                                      cmp r0, #0
00355148  09 00 a0 01                                      moveq r0, sb
0035514c  04 00 80 12                                      addne r0, r0, #4
00355150  71 e4 fe eb                                      bl #0x30e31c
00355154  00 00 50 e3                                      cmp r0, #0
00355158  e2 ff ff 1a                                      bne #0x3550e8
0035515c  00 30 9d e5                                      ldr r3, [sp]
00355160  00 50 83 e5                                      str r5, [r3]
00355164  00 30 95 e5                                      ldr r3, [r5]
00355168  01 30 83 e2                                      add r3, r3, #1
0035516c  00 30 85 e5                                      str r3, [r5]
00355170  08 00 a0 e1                                      mov r0, r8
00355174  9b ee fe eb                                      bl #0x310be8
00355178  08 00 9d e5                                      ldr r0, [sp, #8]
0035517c  00 00 50 e3                                      cmp r0, #0
00355180  00 00 00 0a                                      beq #0x355188
00355184  b1 ec fe eb                                      bl #0x310450
00355188  00 00 9d e5                                      ldr r0, [sp]
0035518c  1c d0 8d e2                                      add sp, sp, #0x1c
00355190  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00355194  04 20 9d e5                                      ldr r2, [sp, #4]
00355198  01 b0 8b e2                                      add fp, fp, #1
0035519c  02 00 5b e1                                      cmp fp, r2
003551a0  07 00 00 0a                                      beq #0x3551c4
003551a4  08 30 9d e5                                      ldr r3, [sp, #8]
003551a8  bb ff ff ea                                      b #0x35509c
003551ac  00 20 9d e5                                      ldr r2, [sp]
003551b0  00 50 82 e5                                      str r5, [r2]
003551b4  00 30 95 e5                                      ldr r3, [r5]
003551b8  01 30 83 e2                                      add r3, r3, #1
003551bc  00 30 85 e5                                      str r3, [r5]
003551c0  ea ff ff ea                                      b #0x355170
003551c4  08 00 9d e5                                      ldr r0, [sp, #8]
003551c8  00 00 50 e3                                      cmp r0, #0
003551cc  00 00 00 0a                                      beq #0x3551d4
003551d0  9e ec fe eb                                      bl #0x310450
003551d4  00 20 9d e5                                      ldr r2, [sp]
003551d8  00 30 a0 e3                                      mov r3, #0
003551dc  00 30 82 e5                                      str r3, [r2]
003551e0  e8 ff ff ea                                      b #0x355188

; FUNCTION 0x003551e4, declared_size=672, range_size=672, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager21ChangeCommonTechniqueEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEEbbb
; demangled: SceneManager::ChangeCommonTechnique(boost::intrusive_ptr<glitch::video::CMaterial>, bool, bool, bool)
; decoder-mode: arm
003551e4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003551e8  00 20 91 e5                                      ldr r2, [r1]
003551ec  24 d0 4d e2                                      sub sp, sp, #0x24
003551f0  03 70 a0 e1                                      mov r7, r3
003551f4  04 60 92 e5                                      ldr r6, [r2, #4]
003551f8  00 50 a0 e1                                      mov r5, r0
003551fc  01 40 a0 e1                                      mov r4, r1
00355200  00 00 56 e3                                      cmp r6, #0
00355204  1c 60 8d e5                                      str r6, [sp, #0x1c]
00355208  00 30 96 15                                      ldrne r3, [r6]
0035520c  01 30 83 12                                      addne r3, r3, #1
00355210  00 30 86 15                                      strne r3, [r6]
00355214  00 20 91 15                                      ldrne r2, [r1]
00355218  1c 60 9d 15                                      ldrne r6, [sp, #0x1c]
0035521c  02 00 a0 e1                                      mov r0, r2
00355220  c3 c2 09 eb                                      bl #0x5c5d34
00355224  0c 30 a0 e3                                      mov r3, #0xc
00355228  93 00 03 e0                                      mul r3, r3, r0
0035522c  18 20 96 e5                                      ldr r2, [r6, #0x18]
00355230  03 60 92 e7                                      ldr r6, [r2, r3]
00355234  00 00 56 e3                                      cmp r6, #0
00355238  04 60 86 12                                      addne r6, r6, #4
0035523c  00 00 57 e3                                      cmp r7, #0
00355240  17 00 00 0a                                      beq #0x3552a4
00355244  32 34 d5 e5                                      ldrb r3, [r5, #0x432]
00355248  00 00 53 e3                                      cmp r3, #0
0035524c  14 00 00 0a                                      beq #0x3552a4
00355250  fc 11 9f e5                                      ldr r1, [pc, #0x1fc]
00355254  06 00 a0 e1                                      mov r0, r6
00355258  01 10 8f e0                                      add r1, pc, r1
0035525c  2e e4 fe eb                                      bl #0x30e31c
00355260  00 00 50 e3                                      cmp r0, #0
00355264  41 00 00 1a                                      bne #0x355370
00355268  00 30 94 e5                                      ldr r3, [r4]
0035526c  18 40 8d e2                                      add r4, sp, #0x18
00355270  05 00 a0 e1                                      mov r0, r5
00355274  00 00 53 e3                                      cmp r3, #0
00355278  18 30 8d e5                                      str r3, [sp, #0x18]
0035527c  00 20 93 15                                      ldrne r2, [r3]
00355280  04 10 a0 e1                                      mov r1, r4
00355284  01 20 82 12                                      addne r2, r2, #1
00355288  00 20 83 15                                      strne r2, [r3]
0035528c  c4 21 9f e5                                      ldr r2, [pc, #0x1c4]
00355290  02 20 8f e0                                      add r2, pc, r2
00355294  e4 f5 ff eb                                      bl #0x352a2c
00355298  04 00 a0 e1                                      mov r0, r4
0035529c  51 ee fe eb                                      bl #0x310be8
003552a0  13 00 00 ea                                      b #0x3552f4
003552a4  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
003552a8  06 00 a0 e1                                      mov r0, r6
003552ac  01 10 8f e0                                      add r1, pc, r1
003552b0  19 e4 fe eb                                      bl #0x30e31c
003552b4  00 00 50 e3                                      cmp r0, #0
003552b8  11 00 00 1a                                      bne #0x355304
003552bc  00 30 94 e5                                      ldr r3, [r4]
003552c0  0c 40 8d e2                                      add r4, sp, #0xc
003552c4  05 00 a0 e1                                      mov r0, r5
003552c8  00 00 53 e3                                      cmp r3, #0
003552cc  0c 30 8d e5                                      str r3, [sp, #0xc]
003552d0  00 20 93 15                                      ldrne r2, [r3]
003552d4  04 10 a0 e1                                      mov r1, r4
003552d8  01 20 82 12                                      addne r2, r2, #1
003552dc  00 20 83 15                                      strne r2, [r3]
003552e0  78 21 9f e5                                      ldr r2, [pc, #0x178]
003552e4  02 20 8f e0                                      add r2, pc, r2
003552e8  cf f5 ff eb                                      bl #0x352a2c
003552ec  04 00 a0 e1                                      mov r0, r4
003552f0  3c ee fe eb                                      bl #0x310be8
003552f4  1c 00 8d e2                                      add r0, sp, #0x1c
003552f8  ee f3 ff eb                                      bl #0x3522b8
003552fc  24 d0 8d e2                                      add sp, sp, #0x24
00355300  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00355304  58 11 9f e5                                      ldr r1, [pc, #0x158]
00355308  06 00 a0 e1                                      mov r0, r6
0035530c  01 10 8f e0                                      add r1, pc, r1
00355310  01 e4 fe eb                                      bl #0x30e31c
00355314  00 00 50 e3                                      cmp r0, #0
00355318  3e 00 00 0a                                      beq #0x355418
0035531c  44 11 9f e5                                      ldr r1, [pc, #0x144]
00355320  06 00 a0 e1                                      mov r0, r6
00355324  01 10 8f e0                                      add r1, pc, r1
00355328  fb e3 fe eb                                      bl #0x30e31c
0035532c  00 00 50 e3                                      cmp r0, #0
00355330  ef ff ff 1a                                      bne #0x3552f4
00355334  00 30 94 e5                                      ldr r3, [r4]
00355338  04 40 8d e2                                      add r4, sp, #4
0035533c  05 00 a0 e1                                      mov r0, r5
00355340  00 00 53 e3                                      cmp r3, #0
00355344  04 30 8d e5                                      str r3, [sp, #4]
00355348  00 20 93 15                                      ldrne r2, [r3]
0035534c  04 10 a0 e1                                      mov r1, r4
00355350  01 20 82 12                                      addne r2, r2, #1
00355354  00 20 83 15                                      strne r2, [r3]
00355358  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
0035535c  02 20 8f e0                                      add r2, pc, r2
00355360  b1 f5 ff eb                                      bl #0x352a2c
00355364  04 00 a0 e1                                      mov r0, r4
00355368  1e ee fe eb                                      bl #0x310be8
0035536c  e0 ff ff ea                                      b #0x3552f4
00355370  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
00355374  06 00 a0 e1                                      mov r0, r6
00355378  01 10 8f e0                                      add r1, pc, r1
0035537c  e6 e3 fe eb                                      bl #0x30e31c
00355380  00 00 50 e3                                      cmp r0, #0
00355384  14 00 00 0a                                      beq #0x3553dc
00355388  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0035538c  06 00 a0 e1                                      mov r0, r6
00355390  01 10 8f e0                                      add r1, pc, r1
00355394  e0 e3 fe eb                                      bl #0x30e31c
00355398  00 00 50 e3                                      cmp r0, #0
0035539c  d4 ff ff 1a                                      bne #0x3552f4
003553a0  00 30 94 e5                                      ldr r3, [r4]
003553a4  10 40 8d e2                                      add r4, sp, #0x10
003553a8  05 00 a0 e1                                      mov r0, r5
003553ac  00 00 53 e3                                      cmp r3, #0
003553b0  10 30 8d e5                                      str r3, [sp, #0x10]
003553b4  00 20 93 15                                      ldrne r2, [r3]
003553b8  04 10 a0 e1                                      mov r1, r4
003553bc  01 20 82 12                                      addne r2, r2, #1
003553c0  00 20 83 15                                      strne r2, [r3]
003553c4  ac 20 9f e5                                      ldr r2, [pc, #0xac]
003553c8  02 20 8f e0                                      add r2, pc, r2
003553cc  96 f5 ff eb                                      bl #0x352a2c
003553d0  04 00 a0 e1                                      mov r0, r4
003553d4  03 ee fe eb                                      bl #0x310be8
003553d8  c5 ff ff ea                                      b #0x3552f4
003553dc  00 30 94 e5                                      ldr r3, [r4]
003553e0  14 40 8d e2                                      add r4, sp, #0x14
003553e4  05 00 a0 e1                                      mov r0, r5
003553e8  00 00 53 e3                                      cmp r3, #0
003553ec  14 30 8d e5                                      str r3, [sp, #0x14]
003553f0  00 20 93 15                                      ldrne r2, [r3]
003553f4  04 10 a0 e1                                      mov r1, r4
003553f8  01 20 82 12                                      addne r2, r2, #1
003553fc  00 20 83 15                                      strne r2, [r3]
00355400  74 20 9f e5                                      ldr r2, [pc, #0x74]
00355404  02 20 8f e0                                      add r2, pc, r2
00355408  87 f5 ff eb                                      bl #0x352a2c
0035540c  04 00 a0 e1                                      mov r0, r4
00355410  f4 ed fe eb                                      bl #0x310be8
00355414  b6 ff ff ea                                      b #0x3552f4
00355418  00 30 94 e5                                      ldr r3, [r4]
0035541c  08 40 8d e2                                      add r4, sp, #8
00355420  05 00 a0 e1                                      mov r0, r5
00355424  00 00 53 e3                                      cmp r3, #0
00355428  08 30 8d e5                                      str r3, [sp, #8]
0035542c  00 20 93 15                                      ldrne r2, [r3]
00355430  04 10 a0 e1                                      mov r1, r4
00355434  01 20 82 12                                      addne r2, r2, #1
00355438  00 20 83 15                                      strne r2, [r3]
0035543c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00355440  02 20 8f e0                                      add r2, pc, r2
00355444  78 f5 ff eb                                      bl #0x352a2c
00355448  04 00 a0 e1                                      mov r0, r4
0035544c  e5 ed fe eb                                      bl #0x310be8
00355450  a7 ff ff ea                                      b #0x3552f4
; mapping-symbol data/literal pool
00355454  68 b6 56 00 58 7c 59 00 3c 7c 59 00 dc b5 56 00  .byte 0x68, 0xb6, 0x56, 0x00, 0x58, 0x7c, 0x59, 0x00, 0x3c, 0x7c, 0x59, 0x00, 0xdc, 0xb5, 0x56, 0x00
00355464  bc b5 56 00 cc b5 56 00 7c b5 56 00 e8 7a 59 00  .byte 0xbc, 0xb5, 0x56, 0x00, 0xcc, 0xb5, 0x56, 0x00, 0x7c, 0xb5, 0x56, 0x00, 0xe8, 0x7a, 0x59, 0x00
00355474  48 b5 56 00 28 b5 56 00 c4 b4 56 00 88 b4 56 00  .byte 0x48, 0xb5, 0x56, 0x00, 0x28, 0xb5, 0x56, 0x00, 0xc4, 0xb4, 0x56, 0x00, 0x88, 0xb4, 0x56, 0x00

; FUNCTION 0x00355484, declared_size=640, range_size=640, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager29ResetCommonTechniqueToDefaultEPN6glitch5scene10ISceneNodeEbbb
; demangled: SceneManager::ResetCommonTechniqueToDefault(glitch::scene::ISceneNode*, bool, bool, bool)
; decoder-mode: arm
00355484  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00355488  4c d0 4d e2                                      sub sp, sp, #0x4c
0035548c  10 20 8d e5                                      str r2, [sp, #0x10]
00355490  70 20 dd e5                                      ldrb r2, [sp, #0x70]
00355494  00 50 51 e2                                      subs r5, r1, #0
00355498  0c 00 8d e5                                      str r0, [sp, #0xc]
0035549c  14 30 8d e5                                      str r3, [sp, #0x14]
003554a0  18 20 8d e5                                      str r2, [sp, #0x18]
003554a4  04 50 90 05                                      ldreq r5, [r0, #4]
003554a8  30 60 8d e2                                      add r6, sp, #0x30
003554ac  64 31 06 e3                                      movw r3, #0x6164
003554b0  00 40 a0 e3                                      mov r4, #0
003554b4  65 3d 46 e3                                      movt r3, #0x6d65
003554b8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003554bc  05 10 a0 e1                                      mov r1, r5
003554c0  06 20 a0 e1                                      mov r2, r6
003554c4  30 40 8d e5                                      str r4, [sp, #0x30]
003554c8  34 40 8d e5                                      str r4, [sp, #0x34]
003554cc  38 40 8d e5                                      str r4, [sp, #0x38]
003554d0  61 ee ff eb                                      bl #0x350e5c
003554d4  64 31 06 e3                                      movw r3, #0x6164
003554d8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003554dc  05 10 a0 e1                                      mov r1, r5
003554e0  06 20 a0 e1                                      mov r2, r6
003554e4  65 33 47 e3                                      movt r3, #0x7365
003554e8  5b ee ff eb                                      bl #0x350e5c
003554ec  64 31 06 e3                                      movw r3, #0x6164
003554f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003554f4  06 20 a0 e1                                      mov r2, r6
003554f8  65 3d 44 e3                                      movt r3, #0x4d65
003554fc  05 10 a0 e1                                      mov r1, r5
00355500  55 ee ff eb                                      bl #0x350e5c
00355504  30 30 9d e5                                      ldr r3, [sp, #0x30]
00355508  34 20 9d e5                                      ldr r2, [sp, #0x34]
0035550c  03 00 a0 e1                                      mov r0, r3
00355510  02 20 63 e0                                      rsb r2, r3, r2
00355514  42 21 b0 e1                                      asrs r2, r2, #2
00355518  2c 20 8d e5                                      str r2, [sp, #0x2c]
0035551c  6f 00 00 0a                                      beq #0x3556e0
00355520  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
00355524  cc 91 9f e5                                      ldr sb, [pc, #0x1cc]
00355528  20 40 8d e5                                      str r4, [sp, #0x20]
0035552c  02 20 8f e0                                      add r2, pc, r2
00355530  1c 20 8d e5                                      str r2, [sp, #0x1c]
00355534  c0 21 9f e5                                      ldr r2, [pc, #0x1c0]
00355538  09 90 8f e0                                      add sb, pc, sb
0035553c  02 20 8f e0                                      add r2, pc, r2
00355540  24 20 8d e5                                      str r2, [sp, #0x24]
00355544  b4 21 9f e5                                      ldr r2, [pc, #0x1b4]
00355548  02 20 8f e0                                      add r2, pc, r2
0035554c  28 20 8d e5                                      str r2, [sp, #0x28]
00355550  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00355554  0c 51 93 e7                                      ldr r5, [r3, ip, lsl #2]
00355558  00 30 95 e5                                      ldr r3, [r5]
0035555c  05 00 a0 e1                                      mov r0, r5
00355560  0f e0 a0 e1                                      mov lr, pc
00355564  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00355568  00 60 50 e2                                      subs r6, r0, #0
0035556c  53 00 00 da                                      ble #0x3556c0
00355570  00 40 a0 e3                                      mov r4, #0
00355574  44 70 8d e2                                      add r7, sp, #0x44
00355578  40 80 8d e2                                      add r8, sp, #0x40
0035557c  3c b0 8d e2                                      add fp, sp, #0x3c
00355580  06 a0 a0 e1                                      mov sl, r6
00355584  04 20 a0 e1                                      mov r2, r4
00355588  00 30 95 e5                                      ldr r3, [r5]
0035558c  07 00 a0 e1                                      mov r0, r7
00355590  05 10 a0 e1                                      mov r1, r5
00355594  0f e0 a0 e1                                      mov lr, pc
00355598  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0035559c  44 30 9d e5                                      ldr r3, [sp, #0x44]
003555a0  09 10 a0 e1                                      mov r1, sb
003555a4  04 30 93 e5                                      ldr r3, [r3, #4]
003555a8  00 00 53 e3                                      cmp r3, #0
003555ac  40 30 8d e5                                      str r3, [sp, #0x40]
003555b0  00 20 93 15                                      ldrne r2, [r3]
003555b4  01 20 82 12                                      addne r2, r2, #1
003555b8  00 20 83 15                                      strne r2, [r3]
003555bc  40 30 9d 15                                      ldrne r3, [sp, #0x40]
003555c0  0a 20 a0 e3                                      mov r2, #0xa
003555c4  08 60 93 e5                                      ldr r6, [r3, #8]
003555c8  06 00 a0 e1                                      mov r0, r6
003555cc  aa e5 fe eb                                      bl #0x30ec7c
003555d0  00 00 50 e3                                      cmp r0, #0
003555d4  28 00 00 0a                                      beq #0x35567c
003555d8  06 00 a0 e1                                      mov r0, r6
003555dc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003555e0  0c 20 a0 e3                                      mov r2, #0xc
003555e4  a4 e5 fe eb                                      bl #0x30ec7c
003555e8  00 00 50 e3                                      cmp r0, #0
003555ec  22 00 00 0a                                      beq #0x35567c
003555f0  06 00 a0 e1                                      mov r0, r6
003555f4  24 10 9d e5                                      ldr r1, [sp, #0x24]
003555f8  0f 20 a0 e3                                      mov r2, #0xf
003555fc  9e e5 fe eb                                      bl #0x30ec7c
00355600  00 00 50 e3                                      cmp r0, #0
00355604  1c 00 00 0a                                      beq #0x35567c
00355608  06 00 a0 e1                                      mov r0, r6
0035560c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00355610  08 20 a0 e3                                      mov r2, #8
00355614  98 e5 fe eb                                      bl #0x30ec7c
00355618  00 00 50 e3                                      cmp r0, #0
0035561c  16 00 00 0a                                      beq #0x35567c
00355620  44 30 9d e5                                      ldr r3, [sp, #0x44]
00355624  0b 10 a0 e1                                      mov r1, fp
00355628  00 00 53 e3                                      cmp r3, #0
0035562c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00355630  00 20 93 15                                      ldrne r2, [r3]
00355634  01 20 82 12                                      addne r2, r2, #1
00355638  00 20 83 15                                      strne r2, [r3]
0035563c  0c 00 8d e2                                      add r0, sp, #0xc
00355640  0d 10 90 e8                                      ldm r0, {r0, r2, r3, ip}
00355644  00 c0 8d e5                                      str ip, [sp]
00355648  e5 fe ff eb                                      bl #0x3551e4
0035564c  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
00355650  00 00 56 e3                                      cmp r6, #0
00355654  08 00 00 0a                                      beq #0x35567c
00355658  00 30 96 e5                                      ldr r3, [r6]
0035565c  01 30 43 e2                                      sub r3, r3, #1
00355660  00 00 53 e3                                      cmp r3, #0
00355664  00 30 86 e5                                      str r3, [r6]
00355668  03 00 00 1a                                      bne #0x35567c
0035566c  06 00 a0 e1                                      mov r0, r6
00355670  40 da 09 eb                                      bl #0x5cbf78
00355674  06 00 a0 e1                                      mov r0, r6
00355678  70 eb fe eb                                      bl #0x310440
0035567c  08 00 a0 e1                                      mov r0, r8
00355680  0c f3 ff eb                                      bl #0x3522b8
00355684  44 60 9d e5                                      ldr r6, [sp, #0x44]
00355688  00 00 56 e3                                      cmp r6, #0
0035568c  08 00 00 0a                                      beq #0x3556b4
00355690  00 30 96 e5                                      ldr r3, [r6]
00355694  01 30 43 e2                                      sub r3, r3, #1
00355698  00 00 53 e3                                      cmp r3, #0
0035569c  00 30 86 e5                                      str r3, [r6]
003556a0  03 00 00 1a                                      bne #0x3556b4
003556a4  06 00 a0 e1                                      mov r0, r6
003556a8  32 da 09 eb                                      bl #0x5cbf78
003556ac  06 00 a0 e1                                      mov r0, r6
003556b0  62 eb fe eb                                      bl #0x310440
003556b4  01 40 84 e2                                      add r4, r4, #1
003556b8  04 00 5a e1                                      cmp sl, r4
003556bc  b0 ff ff 1a                                      bne #0x355584
003556c0  20 20 9d e5                                      ldr r2, [sp, #0x20]
003556c4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003556c8  01 20 82 e2                                      add r2, r2, #1
003556cc  03 00 52 e1                                      cmp r2, r3
003556d0  20 20 8d e5                                      str r2, [sp, #0x20]
003556d4  30 30 9d 15                                      ldrne r3, [sp, #0x30]
003556d8  9c ff ff 1a                                      bne #0x355550
003556dc  30 00 9d e5                                      ldr r0, [sp, #0x30]
003556e0  00 00 50 e3                                      cmp r0, #0
003556e4  00 00 00 0a                                      beq #0x3556ec
003556e8  58 eb fe eb                                      bl #0x310450
003556ec  4c d0 8d e2                                      add sp, sp, #0x4c
003556f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003556f4  dc b3 56 00 00 b3 56 00 0c b3 56 00 d0 b3 56 00  .byte 0xdc, 0xb3, 0x56, 0x00, 0x00, 0xb3, 0x56, 0x00, 0x0c, 0xb3, 0x56, 0x00, 0xd0, 0xb3, 0x56, 0x00

; FUNCTION 0x00355704, declared_size=396, range_size=396, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager25ChangeCustomXrayTechniqueEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEEbbb
; demangled: SceneManager::ChangeCustomXrayTechnique(boost::intrusive_ptr<glitch::video::CMaterial>, bool, bool, bool)
; decoder-mode: arm
00355704  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00355708  68 51 9f e5                                      ldr r5, [pc, #0x168]
0035570c  68 71 9f e5                                      ldr r7, [pc, #0x168]
00355710  01 60 a0 e1                                      mov r6, r1
00355714  05 50 8f e0                                      add r5, pc, r5
00355718  07 10 95 e7                                      ldr r1, [r5, r7]
0035571c  00 40 96 e5                                      ldr r4, [r6]
00355720  94 d0 4d e2                                      sub sp, sp, #0x94
00355724  00 10 91 e5                                      ldr r1, [r1]
00355728  03 90 a0 e1                                      mov sb, r3
0035572c  02 b0 a0 e1                                      mov fp, r2
00355730  8c 10 8d e5                                      str r1, [sp, #0x8c]
00355734  04 30 94 e5                                      ldr r3, [r4, #4]
00355738  40 11 9f e5                                      ldr r1, [pc, #0x140]
0035573c  00 80 a0 e1                                      mov r8, r0
00355740  00 00 53 e3                                      cmp r3, #0
00355744  08 30 8d e5                                      str r3, [sp, #8]
00355748  00 20 93 15                                      ldrne r2, [r3]
0035574c  01 10 8f e0                                      add r1, pc, r1
00355750  01 20 82 12                                      addne r2, r2, #1
00355754  00 20 83 15                                      strne r2, [r3]
00355758  00 40 96 15                                      ldrne r4, [r6]
0035575c  03 20 a0 e3                                      mov r2, #3
00355760  1c a0 94 e5                                      ldr sl, [r4, #0x1c]
00355764  00 00 5a e3                                      cmp sl, #0
00355768  04 a0 8a 12                                      addne sl, sl, #4
0035576c  0a 00 a0 e1                                      mov r0, sl
00355770  41 e5 fe eb                                      bl #0x30ec7c
00355774  00 30 50 e2                                      subs r3, r0, #0
00355778  31 00 00 1a                                      bne #0x355844
0035577c  00 11 9f e5                                      ldr r1, [pc, #0x100]
00355780  0a 00 a0 e1                                      mov r0, sl
00355784  07 20 a0 e3                                      mov r2, #7
00355788  01 10 8f e0                                      add r1, pc, r1
0035578c  0c 30 cd e5                                      strb r3, [sp, #0xc]
00355790  39 e5 fe eb                                      bl #0x30ec7c
00355794  00 00 50 e3                                      cmp r0, #0
00355798  0c a0 8d 12                                      addne sl, sp, #0xc
0035579c  14 00 00 0a                                      beq #0x3557f4
003557a0  00 00 54 e3                                      cmp r4, #0
003557a4  04 40 8d e5                                      str r4, [sp, #4]
003557a8  00 30 94 15                                      ldrne r3, [r4]
003557ac  0a 20 a0 e1                                      mov r2, sl
003557b0  08 00 a0 e1                                      mov r0, r8
003557b4  01 30 83 12                                      addne r3, r3, #1
003557b8  00 30 84 15                                      strne r3, [r4]
003557bc  04 40 8d e2                                      add r4, sp, #4
003557c0  04 10 a0 e1                                      mov r1, r4
003557c4  98 f4 ff eb                                      bl #0x352a2c
003557c8  04 00 a0 e1                                      mov r0, r4
003557cc  05 ed fe eb                                      bl #0x310be8
003557d0  08 00 8d e2                                      add r0, sp, #8
003557d4  b7 f2 ff eb                                      bl #0x3522b8
003557d8  07 30 95 e7                                      ldr r3, [r5, r7]
003557dc  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
003557e0  00 30 93 e5                                      ldr r3, [r3]
003557e4  03 00 52 e1                                      cmp r2, r3
003557e8  21 00 00 1a                                      bne #0x355874
003557ec  94 d0 8d e2                                      add sp, sp, #0x94
003557f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003557f4  00 00 59 e3                                      cmp sb, #0
003557f8  6c 00 cd e5                                      strb r0, [sp, #0x6c]
003557fc  4c 00 cd e5                                      strb r0, [sp, #0x4c]
00355800  05 00 00 0a                                      beq #0x35581c
00355804  32 34 d8 e5                                      ldrb r3, [r8, #0x432]
00355808  00 00 53 e3                                      cmp r3, #0
0035580c  5f 36 06 13                                      movwne r3, #0x665f
00355810  6f 37 46 13                                      movtne r3, #0x676f
00355814  6c 30 8d 15                                      strne r3, [sp, #0x6c]
00355818  70 00 cd 15                                      strbne r0, [sp, #0x70]
0035581c  00 00 5b e3                                      cmp fp, #0
00355820  0a 00 00 0a                                      beq #0x355850
00355824  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00355828  0c a0 8d e2                                      add sl, sp, #0xc
0035582c  0a 00 a0 e1                                      mov r0, sl
00355830  01 10 8f e0                                      add r1, pc, r1
00355834  4c 20 8d e2                                      add r2, sp, #0x4c
00355838  a9 e4 fe eb                                      bl #0x30eae4
0035583c  00 40 96 e5                                      ldr r4, [r6]
00355840  d6 ff ff ea                                      b #0x3557a0
00355844  08 00 8d e2                                      add r0, sp, #8
00355848  9a f2 ff eb                                      bl #0x3522b8
0035584c  e1 ff ff ea                                      b #0x3557d8
00355850  34 10 9f e5                                      ldr r1, [pc, #0x34]
00355854  0c a0 8d e2                                      add sl, sp, #0xc
00355858  0a 00 a0 e1                                      mov r0, sl
0035585c  01 10 8f e0                                      add r1, pc, r1
00355860  4c 20 8d e2                                      add r2, sp, #0x4c
00355864  6c 30 8d e2                                      add r3, sp, #0x6c
00355868  9d e4 fe eb                                      bl #0x30eae4
0035586c  00 40 96 e5                                      ldr r4, [r6]
00355870  ca ff ff ea                                      b #0x3557a0
00355874  a5 e2 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00355878  7c f3 63 00 ac 40 00 00 24 b1 56 00 a0 b1 56 00  .byte 0x7c, 0xf3, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x24, 0xb1, 0x56, 0x00, 0xa0, 0xb1, 0x56, 0x00
00355888  00 b1 56 00 ec b0 56 00                          .byte 0x00, 0xb1, 0x56, 0x00, 0xec, 0xb0, 0x56, 0x00

; FUNCTION 0x00355890, declared_size=344, range_size=344, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager37ChangeCustomShadowProjectionTechniqueEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEEbb
; demangled: SceneManager::ChangeCustomShadowProjectionTechnique(boost::intrusive_ptr<glitch::video::CMaterial>, bool, bool)
; decoder-mode: arm
00355890  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00355894  38 41 9f e5                                      ldr r4, [pc, #0x138]
00355898  38 61 9f e5                                      ldr r6, [pc, #0x138]
0035589c  00 a0 91 e5                                      ldr sl, [r1]
003558a0  04 40 8f e0                                      add r4, pc, r4
003558a4  06 30 94 e7                                      ldr r3, [r4, r6]
003558a8  90 d0 4d e2                                      sub sp, sp, #0x90
003558ac  02 90 a0 e1                                      mov sb, r2
003558b0  00 30 93 e5                                      ldr r3, [r3]
003558b4  01 50 a0 e1                                      mov r5, r1
003558b8  00 70 a0 e1                                      mov r7, r0
003558bc  8c 30 8d e5                                      str r3, [sp, #0x8c]
003558c0  04 30 9a e5                                      ldr r3, [sl, #4]
003558c4  00 00 53 e3                                      cmp r3, #0
003558c8  08 30 8d e5                                      str r3, [sp, #8]
003558cc  00 20 93 15                                      ldrne r2, [r3]
003558d0  01 20 82 12                                      addne r2, r2, #1
003558d4  00 20 83 15                                      strne r2, [r3]
003558d8  00 a0 91 15                                      ldrne sl, [r1]
003558dc  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
003558e0  03 20 a0 e3                                      mov r2, #3
003558e4  1c 80 9a e5                                      ldr r8, [sl, #0x1c]
003558e8  01 10 8f e0                                      add r1, pc, r1
003558ec  00 00 58 e3                                      cmp r8, #0
003558f0  04 80 88 12                                      addne r8, r8, #4
003558f4  08 00 a0 e1                                      mov r0, r8
003558f8  df e4 fe eb                                      bl #0x30ec7c
003558fc  00 30 50 e2                                      subs r3, r0, #0
00355900  2f 00 00 1a                                      bne #0x3559c4
00355904  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
00355908  08 00 a0 e1                                      mov r0, r8
0035590c  09 20 a0 e3                                      mov r2, #9
00355910  01 10 8f e0                                      add r1, pc, r1
00355914  0c 30 cd e5                                      strb r3, [sp, #0xc]
00355918  d7 e4 fe eb                                      bl #0x30ec7c
0035591c  00 00 50 e3                                      cmp r0, #0
00355920  0c 80 8d 12                                      addne r8, sp, #0xc
00355924  14 00 00 0a                                      beq #0x35597c
00355928  00 00 5a e3                                      cmp sl, #0
0035592c  04 a0 8d e5                                      str sl, [sp, #4]
00355930  00 30 9a 15                                      ldrne r3, [sl]
00355934  04 50 8d e2                                      add r5, sp, #4
00355938  08 20 a0 e1                                      mov r2, r8
0035593c  01 30 83 12                                      addne r3, r3, #1
00355940  00 30 8a 15                                      strne r3, [sl]
00355944  05 10 a0 e1                                      mov r1, r5
00355948  07 00 a0 e1                                      mov r0, r7
0035594c  36 f4 ff eb                                      bl #0x352a2c
00355950  05 00 a0 e1                                      mov r0, r5
00355954  a3 ec fe eb                                      bl #0x310be8
00355958  08 00 8d e2                                      add r0, sp, #8
0035595c  55 f2 ff eb                                      bl #0x3522b8
00355960  06 30 94 e7                                      ldr r3, [r4, r6]
00355964  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
00355968  00 30 93 e5                                      ldr r3, [r3]
0035596c  03 00 52 e1                                      cmp r2, r3
00355970  16 00 00 1a                                      bne #0x3559d0
00355974  90 d0 8d e2                                      add sp, sp, #0x90
00355978  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0035597c  00 00 59 e3                                      cmp sb, #0
00355980  4c 00 cd e5                                      strb r0, [sp, #0x4c]
00355984  6c 00 cd e5                                      strb r0, [sp, #0x6c]
00355988  04 00 00 0a                                      beq #0x3559a0
0035598c  32 34 d7 e5                                      ldrb r3, [r7, #0x432]
00355990  00 00 53 e3                                      cmp r3, #0
00355994  5f 36 04 13                                      movwne r3, #0x465f
00355998  67 30 40 13                                      movtne r3, #0x67
0035599c  6c 30 8d 15                                      strne r3, [sp, #0x6c]
003559a0  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003559a4  0c 80 8d e2                                      add r8, sp, #0xc
003559a8  08 00 a0 e1                                      mov r0, r8
003559ac  01 10 8f e0                                      add r1, pc, r1
003559b0  4c 20 8d e2                                      add r2, sp, #0x4c
003559b4  6c 30 8d e2                                      add r3, sp, #0x6c
003559b8  49 e4 fe eb                                      bl #0x30eae4
003559bc  00 a0 95 e5                                      ldr sl, [r5]
003559c0  d8 ff ff ea                                      b #0x355928
003559c4  08 00 8d e2                                      add r0, sp, #8
003559c8  3a f2 ff eb                                      bl #0x3522b8
003559cc  e3 ff ff ea                                      b #0x355960
003559d0  4e e2 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003559d4  f0 f1 63 00 ac 40 00 00 18 af 56 00 50 b0 56 00  .byte 0xf0, 0xf1, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x18, 0xaf, 0x56, 0x00, 0x50, 0xb0, 0x56, 0x00
003559e4  c4 af 56 00                                      .byte 0xc4, 0xaf, 0x56, 0x00

; FUNCTION 0x003559e8, declared_size=520, range_size=520, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager45ResetCustomShadowProjectionTechniqueToDefaultEPN6glitch5scene10ISceneNodeEbb
; demangled: SceneManager::ResetCustomShadowProjectionTechniqueToDefault(glitch::scene::ISceneNode*, bool, bool)
; decoder-mode: arm
003559e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003559ec  34 d0 4d e2                                      sub sp, sp, #0x34
003559f0  00 50 51 e2                                      subs r5, r1, #0
003559f4  08 20 8d e5                                      str r2, [sp, #8]
003559f8  04 50 90 05                                      ldreq r5, [r0, #4]
003559fc  18 60 8d e2                                      add r6, sp, #0x18
00355a00  03 b0 a0 e1                                      mov fp, r3
00355a04  64 31 06 e3                                      movw r3, #0x6164
00355a08  00 40 a0 e3                                      mov r4, #0
00355a0c  65 3d 46 e3                                      movt r3, #0x6d65
00355a10  05 10 a0 e1                                      mov r1, r5
00355a14  06 20 a0 e1                                      mov r2, r6
00355a18  00 90 a0 e1                                      mov sb, r0
00355a1c  18 40 8d e5                                      str r4, [sp, #0x18]
00355a20  1c 40 8d e5                                      str r4, [sp, #0x1c]
00355a24  20 40 8d e5                                      str r4, [sp, #0x20]
00355a28  0b ed ff eb                                      bl #0x350e5c
00355a2c  64 31 06 e3                                      movw r3, #0x6164
00355a30  09 00 a0 e1                                      mov r0, sb
00355a34  05 10 a0 e1                                      mov r1, r5
00355a38  06 20 a0 e1                                      mov r2, r6
00355a3c  65 33 47 e3                                      movt r3, #0x7365
00355a40  05 ed ff eb                                      bl #0x350e5c
00355a44  64 31 06 e3                                      movw r3, #0x6164
00355a48  09 00 a0 e1                                      mov r0, sb
00355a4c  06 20 a0 e1                                      mov r2, r6
00355a50  65 3d 44 e3                                      movt r3, #0x4d65
00355a54  05 10 a0 e1                                      mov r1, r5
00355a58  ff ec ff eb                                      bl #0x350e5c
00355a5c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00355a60  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00355a64  03 00 a0 e1                                      mov r0, r3
00355a68  02 20 63 e0                                      rsb r2, r3, r2
00355a6c  42 21 b0 e1                                      asrs r2, r2, #2
00355a70  14 20 8d e5                                      str r2, [sp, #0x14]
00355a74  57 00 00 0a                                      beq #0x355bd8
00355a78  6c 81 9f e5                                      ldr r8, [pc, #0x16c]
00355a7c  24 20 8d e2                                      add r2, sp, #0x24
00355a80  10 40 8d e5                                      str r4, [sp, #0x10]
00355a84  2c 70 8d e2                                      add r7, sp, #0x2c
00355a88  08 80 8f e0                                      add r8, pc, r8
00355a8c  28 a0 8d e2                                      add sl, sp, #0x28
00355a90  0c 20 8d e5                                      str r2, [sp, #0xc]
00355a94  10 20 9d e5                                      ldr r2, [sp, #0x10]
00355a98  02 51 93 e7                                      ldr r5, [r3, r2, lsl #2]
00355a9c  00 30 95 e5                                      ldr r3, [r5]
00355aa0  05 00 a0 e1                                      mov r0, r5
00355aa4  0f e0 a0 e1                                      mov lr, pc
00355aa8  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00355aac  00 60 50 e2                                      subs r6, r0, #0
00355ab0  40 00 00 da                                      ble #0x355bb8
00355ab4  00 40 a0 e3                                      mov r4, #0
00355ab8  04 20 a0 e1                                      mov r2, r4
00355abc  00 30 95 e5                                      ldr r3, [r5]
00355ac0  07 00 a0 e1                                      mov r0, r7
00355ac4  05 10 a0 e1                                      mov r1, r5
00355ac8  0f e0 a0 e1                                      mov lr, pc
00355acc  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00355ad0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00355ad4  08 10 a0 e1                                      mov r1, r8
00355ad8  04 30 93 e5                                      ldr r3, [r3, #4]
00355adc  00 00 53 e3                                      cmp r3, #0
00355ae0  28 30 8d e5                                      str r3, [sp, #0x28]
00355ae4  00 20 93 15                                      ldrne r2, [r3]
00355ae8  01 20 82 12                                      addne r2, r2, #1
00355aec  00 20 83 15                                      strne r2, [r3]
00355af0  28 30 9d 15                                      ldrne r3, [sp, #0x28]
00355af4  13 20 a0 e3                                      mov r2, #0x13
00355af8  08 00 93 e5                                      ldr r0, [r3, #8]
00355afc  5e e4 fe eb                                      bl #0x30ec7c
00355b00  00 00 50 e3                                      cmp r0, #0
00355b04  18 00 00 0a                                      beq #0x355b6c
00355b08  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00355b0c  09 00 a0 e1                                      mov r0, sb
00355b10  00 00 53 e3                                      cmp r3, #0
00355b14  24 30 8d e5                                      str r3, [sp, #0x24]
00355b18  00 20 93 15                                      ldrne r2, [r3]
00355b1c  01 20 82 12                                      addne r2, r2, #1
00355b20  00 20 83 15                                      strne r2, [r3]
00355b24  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00355b28  0b 30 a0 e1                                      mov r3, fp
00355b2c  08 20 9d e5                                      ldr r2, [sp, #8]
00355b30  56 ff ff eb                                      bl #0x355890
00355b34  24 30 9d e5                                      ldr r3, [sp, #0x24]
00355b38  00 00 53 e3                                      cmp r3, #0
00355b3c  0a 00 00 0a                                      beq #0x355b6c
00355b40  00 20 93 e5                                      ldr r2, [r3]
00355b44  01 20 42 e2                                      sub r2, r2, #1
00355b48  00 00 52 e3                                      cmp r2, #0
00355b4c  00 20 83 e5                                      str r2, [r3]
00355b50  05 00 00 1a                                      bne #0x355b6c
00355b54  03 00 a0 e1                                      mov r0, r3
00355b58  04 30 8d e5                                      str r3, [sp, #4]
00355b5c  05 d9 09 eb                                      bl #0x5cbf78
00355b60  04 30 9d e5                                      ldr r3, [sp, #4]
00355b64  03 00 a0 e1                                      mov r0, r3
00355b68  34 ea fe eb                                      bl #0x310440
00355b6c  0a 00 a0 e1                                      mov r0, sl
00355b70  d0 f1 ff eb                                      bl #0x3522b8
00355b74  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00355b78  00 00 53 e3                                      cmp r3, #0
00355b7c  0a 00 00 0a                                      beq #0x355bac
00355b80  00 20 93 e5                                      ldr r2, [r3]
00355b84  01 20 42 e2                                      sub r2, r2, #1
00355b88  00 00 52 e3                                      cmp r2, #0
00355b8c  00 20 83 e5                                      str r2, [r3]
00355b90  05 00 00 1a                                      bne #0x355bac
00355b94  03 00 a0 e1                                      mov r0, r3
00355b98  04 30 8d e5                                      str r3, [sp, #4]
00355b9c  f5 d8 09 eb                                      bl #0x5cbf78
00355ba0  04 30 9d e5                                      ldr r3, [sp, #4]
00355ba4  03 00 a0 e1                                      mov r0, r3
00355ba8  24 ea fe eb                                      bl #0x310440
00355bac  01 40 84 e2                                      add r4, r4, #1
00355bb0  04 00 56 e1                                      cmp r6, r4
00355bb4  bf ff ff 1a                                      bne #0x355ab8
00355bb8  10 30 9d e5                                      ldr r3, [sp, #0x10]
00355bbc  14 20 9d e5                                      ldr r2, [sp, #0x14]
00355bc0  01 30 83 e2                                      add r3, r3, #1
00355bc4  02 00 53 e1                                      cmp r3, r2
00355bc8  10 30 8d e5                                      str r3, [sp, #0x10]
00355bcc  18 30 9d 15                                      ldrne r3, [sp, #0x18]
00355bd0  af ff ff 1a                                      bne #0x355a94
00355bd4  18 00 9d e5                                      ldr r0, [sp, #0x18]
00355bd8  00 00 50 e3                                      cmp r0, #0
00355bdc  00 00 00 0a                                      beq #0x355be4
00355be0  1a ea fe eb                                      bl #0x310450
00355be4  34 d0 8d e2                                      add sp, sp, #0x34
00355be8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00355bec  60 ad 56 00                                      .byte 0x60, 0xad, 0x56, 0x00

; FUNCTION 0x00355bf0, declared_size=2116, range_size=2116, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager21ChangeCustomTechniqueEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEEbbNS_10EForceBoolEbbb
; demangled: SceneManager::ChangeCustomTechnique(boost::intrusive_ptr<glitch::video::CMaterial>, bool, bool, SceneManager::EForceBool, bool, bool, bool)
; decoder-mode: arm
00355bf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00355bf4  c4 47 9f e5                                      ldr r4, [pc, #0x7c4]
00355bf8  c4 67 9f e5                                      ldr r6, [pc, #0x7c4]
00355bfc  01 70 a0 e1                                      mov r7, r1
00355c00  04 40 8f e0                                      add r4, pc, r4
00355c04  06 10 94 e7                                      ldr r1, [r4, r6]
00355c08  00 50 97 e5                                      ldr r5, [r7]
00355c0c  57 df 4d e2                                      sub sp, sp, #0x15c
00355c10  00 10 91 e5                                      ldr r1, [r1]
00355c14  18 20 8d e5                                      str r2, [sp, #0x18]
00355c18  20 30 8d e5                                      str r3, [sp, #0x20]
00355c1c  54 11 8d e5                                      str r1, [sp, #0x154]
00355c20  04 30 95 e5                                      ldr r3, [r5, #4]
00355c24  84 21 dd e5                                      ldrb r2, [sp, #0x184]
00355c28  88 b1 dd e5                                      ldrb fp, [sp, #0x188]
00355c2c  00 00 53 e3                                      cmp r3, #0
00355c30  1c 20 8d e5                                      str r2, [sp, #0x1c]
00355c34  30 30 8d e5                                      str r3, [sp, #0x30]
00355c38  00 20 93 15                                      ldrne r2, [r3]
00355c3c  00 90 a0 e1                                      mov sb, r0
00355c40  01 20 82 12                                      addne r2, r2, #1
00355c44  00 20 83 15                                      strne r2, [r3]
00355c48  00 50 97 15                                      ldrne r5, [r7]
00355c4c  1c 80 95 e5                                      ldr r8, [r5, #0x1c]
00355c50  00 00 58 e3                                      cmp r8, #0
00355c54  04 80 88 12                                      addne r8, r8, #4
00355c58  08 00 a0 e1                                      mov r0, r8
00355c5c  7c e0 fe eb                                      bl #0x30de54
00355c60  02 00 50 e3                                      cmp r0, #2
00355c64  00 a0 a0 e1                                      mov sl, r0
00355c68  5e 00 00 da                                      ble #0x355de8
00355c6c  54 17 9f e5                                      ldr r1, [pc, #0x754]
00355c70  00 30 a0 e3                                      mov r3, #0
00355c74  08 00 a0 e1                                      mov r0, r8
00355c78  01 10 8f e0                                      add r1, pc, r1
00355c7c  03 20 a0 e3                                      mov r2, #3
00355c80  34 30 cd e5                                      strb r3, [sp, #0x34]
00355c84  fc e3 fe eb                                      bl #0x30ec7c
00355c88  00 00 50 e3                                      cmp r0, #0
00355c8c  26 00 00 1a                                      bne #0x355d2c
00355c90  00 00 5b e3                                      cmp fp, #0
00355c94  34 01 cd e5                                      strb r0, [sp, #0x134]
00355c98  55 00 00 1a                                      bne #0x355df4
00355c9c  28 17 9f e5                                      ldr r1, [pc, #0x728]
00355ca0  08 00 a0 e1                                      mov r0, r8
00355ca4  09 20 a0 e3                                      mov r2, #9
00355ca8  01 10 8f e0                                      add r1, pc, r1
00355cac  f2 e3 fe eb                                      bl #0x30ec7c
00355cb0  00 00 50 e3                                      cmp r0, #0
00355cb4  5d 00 00 0a                                      beq #0x355e30
00355cb8  10 17 9f e5                                      ldr r1, [pc, #0x710]
00355cbc  08 00 a0 e1                                      mov r0, r8
00355cc0  07 20 a0 e3                                      mov r2, #7
00355cc4  01 10 8f e0                                      add r1, pc, r1
00355cc8  eb e3 fe eb                                      bl #0x30ec7c
00355ccc  00 00 50 e3                                      cmp r0, #0
00355cd0  4e 00 00 0a                                      beq #0x355e10
00355cd4  34 80 8d e2                                      add r8, sp, #0x34
00355cd8  00 00 55 e3                                      cmp r5, #0
00355cdc  2c 50 8d e5                                      str r5, [sp, #0x2c]
00355ce0  00 30 95 15                                      ldrne r3, [r5]
00355ce4  08 20 a0 e1                                      mov r2, r8
00355ce8  09 00 a0 e1                                      mov r0, sb
00355cec  01 30 83 12                                      addne r3, r3, #1
00355cf0  00 30 85 15                                      strne r3, [r5]
00355cf4  2c 50 8d e2                                      add r5, sp, #0x2c
00355cf8  05 10 a0 e1                                      mov r1, r5
00355cfc  4a f3 ff eb                                      bl #0x352a2c
00355d00  05 00 a0 e1                                      mov r0, r5
00355d04  b7 eb fe eb                                      bl #0x310be8
00355d08  30 00 8d e2                                      add r0, sp, #0x30
00355d0c  69 f1 ff eb                                      bl #0x3522b8
00355d10  06 30 94 e7                                      ldr r3, [r4, r6]
00355d14  54 21 9d e5                                      ldr r2, [sp, #0x154]
00355d18  00 30 93 e5                                      ldr r3, [r3]
00355d1c  03 00 52 e1                                      cmp r2, r3
00355d20  7a 01 00 1a                                      bne #0x356310
00355d24  57 df 8d e2                                      add sp, sp, #0x15c
00355d28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00355d2c  a0 16 9f e5                                      ldr r1, [pc, #0x6a0]
00355d30  08 00 a0 e1                                      mov r0, r8
00355d34  03 20 a0 e3                                      mov r2, #3
00355d38  01 10 8f e0                                      add r1, pc, r1
00355d3c  ce e3 fe eb                                      bl #0x30ec7c
00355d40  00 00 50 e3                                      cmp r0, #0
00355d44  1e 00 00 1a                                      bne #0x355dc4
00355d48  00 00 5b e3                                      cmp fp, #0
00355d4c  34 01 cd e5                                      strb r0, [sp, #0x134]
00355d50  05 00 00 0a                                      beq #0x355d6c
00355d54  32 34 d9 e5                                      ldrb r3, [sb, #0x432]
00355d58  00 00 53 e3                                      cmp r3, #0
00355d5c  5f 36 06 13                                      movwne r3, #0x665f
00355d60  6f 37 46 13                                      movtne r3, #0x676f
00355d64  34 31 8d 15                                      strne r3, [sp, #0x134]
00355d68  38 01 cd 15                                      strbne r0, [sp, #0x138]
00355d6c  64 16 9f e5                                      ldr r1, [pc, #0x664]
00355d70  08 00 a0 e1                                      mov r0, r8
00355d74  09 20 a0 e3                                      mov r2, #9
00355d78  01 10 8f e0                                      add r1, pc, r1
00355d7c  be e3 fe eb                                      bl #0x30ec7c
00355d80  00 00 50 e3                                      cmp r0, #0
00355d84  a4 00 00 0a                                      beq #0x35601c
00355d88  4c 16 9f e5                                      ldr r1, [pc, #0x64c]
00355d8c  08 00 a0 e1                                      mov r0, r8
00355d90  07 20 a0 e3                                      mov r2, #7
00355d94  01 10 8f e0                                      add r1, pc, r1
00355d98  b7 e3 fe eb                                      bl #0x30ec7c
00355d9c  00 00 50 e3                                      cmp r0, #0
00355da0  cb ff ff 1a                                      bne #0x355cd4
00355da4  34 16 9f e5                                      ldr r1, [pc, #0x634]
00355da8  34 80 8d e2                                      add r8, sp, #0x34
00355dac  08 00 a0 e1                                      mov r0, r8
00355db0  01 10 8f e0                                      add r1, pc, r1
00355db4  4d 2f 8d e2                                      add r2, sp, #0x134
00355db8  49 e3 fe eb                                      bl #0x30eae4
00355dbc  00 50 97 e5                                      ldr r5, [r7]
00355dc0  c4 ff ff ea                                      b #0x355cd8
00355dc4  18 16 9f e5                                      ldr r1, [pc, #0x618]
00355dc8  08 00 a0 e1                                      mov r0, r8
00355dcc  03 20 a0 e3                                      mov r2, #3
00355dd0  01 10 8f e0                                      add r1, pc, r1
00355dd4  a8 e3 fe eb                                      bl #0x30ec7c
00355dd8  00 00 50 e3                                      cmp r0, #0
00355ddc  1b 00 00 1a                                      bne #0x355e50
00355de0  07 00 5a e3                                      cmp sl, #7
00355de4  9c 00 00 ca                                      bgt #0x35605c
00355de8  30 00 8d e2                                      add r0, sp, #0x30
00355dec  31 f1 ff eb                                      bl #0x3522b8
00355df0  c6 ff ff ea                                      b #0x355d10
00355df4  32 34 d9 e5                                      ldrb r3, [sb, #0x432]
00355df8  00 00 53 e3                                      cmp r3, #0
00355dfc  5f 36 06 13                                      movwne r3, #0x665f
00355e00  6f 37 46 13                                      movtne r3, #0x676f
00355e04  34 31 8d 15                                      strne r3, [sp, #0x134]
00355e08  38 01 cd 15                                      strbne r0, [sp, #0x138]
00355e0c  a2 ff ff ea                                      b #0x355c9c
00355e10  d0 15 9f e5                                      ldr r1, [pc, #0x5d0]
00355e14  34 80 8d e2                                      add r8, sp, #0x34
00355e18  08 00 a0 e1                                      mov r0, r8
00355e1c  01 10 8f e0                                      add r1, pc, r1
00355e20  4d 2f 8d e2                                      add r2, sp, #0x134
00355e24  2e e3 fe eb                                      bl #0x30eae4
00355e28  00 50 97 e5                                      ldr r5, [r7]
00355e2c  a9 ff ff ea                                      b #0x355cd8
00355e30  b4 15 9f e5                                      ldr r1, [pc, #0x5b4]
00355e34  34 80 8d e2                                      add r8, sp, #0x34
00355e38  08 00 a0 e1                                      mov r0, r8
00355e3c  01 10 8f e0                                      add r1, pc, r1
00355e40  4d 2f 8d e2                                      add r2, sp, #0x134
00355e44  26 e3 fe eb                                      bl #0x30eae4
00355e48  00 50 97 e5                                      ldr r5, [r7]
00355e4c  a1 ff ff ea                                      b #0x355cd8
00355e50  98 15 9f e5                                      ldr r1, [pc, #0x598]
00355e54  08 00 a0 e1                                      mov r0, r8
00355e58  08 20 a0 e3                                      mov r2, #8
00355e5c  01 10 8f e0                                      add r1, pc, r1
00355e60  85 e3 fe eb                                      bl #0x30ec7c
00355e64  00 00 50 e3                                      cmp r0, #0
00355e68  3f 00 00 0a                                      beq #0x355f6c
00355e6c  80 15 9f e5                                      ldr r1, [pc, #0x580]
00355e70  08 00 a0 e1                                      mov r0, r8
00355e74  08 20 a0 e3                                      mov r2, #8
00355e78  01 10 8f e0                                      add r1, pc, r1
00355e7c  7e e3 fe eb                                      bl #0x30ec7c
00355e80  00 00 50 e3                                      cmp r0, #0
00355e84  38 00 00 0a                                      beq #0x355f6c
00355e88  08 00 a0 e1                                      mov r0, r8
00355e8c  f0 df fe eb                                      bl #0x30de54
00355e90  05 00 50 e3                                      cmp r0, #5
00355e94  8e ff ff 9a                                      bls #0x355cd4
00355e98  00 20 a0 e3                                      mov r2, #0
00355e9c  74 20 cd e5                                      strb r2, [sp, #0x74]
00355ea0  f4 20 cd e5                                      strb r2, [sp, #0xf4]
00355ea4  d4 20 cd e5                                      strb r2, [sp, #0xd4]
00355ea8  b4 20 cd e5                                      strb r2, [sp, #0xb4]
00355eac  94 20 cd e5                                      strb r2, [sp, #0x94]
00355eb0  d0 30 d8 e1                                      ldrsb r3, [r8]
00355eb4  44 00 53 e3                                      cmp r3, #0x44
00355eb8  ca ff ff 1a                                      bne #0x355de8
00355ebc  d1 30 d8 e1                                      ldrsb r3, [r8, #1]
00355ec0  56 00 53 e3                                      cmp r3, #0x56
00355ec4  c7 ff ff 1a                                      bne #0x355de8
00355ec8  d2 30 d8 e1                                      ldrsb r3, [r8, #2]
00355ecc  41 00 53 e3                                      cmp r3, #0x41
00355ed0  2c 01 00 0a                                      beq #0x356388
00355ed4  d3 30 d8 e1                                      ldrsb r3, [r8, #3]
00355ed8  53 00 53 e3                                      cmp r3, #0x53
00355edc  1e 01 00 0a                                      beq #0x35635c
00355ee0  d4 30 d8 e1                                      ldrsb r3, [r8, #4]
00355ee4  4e 00 53 e3                                      cmp r3, #0x4e
00355ee8  5f 3e 04 03                                      movweq r3, #0x4e5f
00355eec  4d 30 40 03                                      movteq r3, #0x4d
00355ef0  b4 30 8d 05                                      streq r3, [sp, #0xb4]
00355ef4  00 00 5b e3                                      cmp fp, #0
00355ef8  06 00 00 0a                                      beq #0x355f18
00355efc  32 34 d9 e5                                      ldrb r3, [sb, #0x432]
00355f00  00 00 53 e3                                      cmp r3, #0
00355f04  5f 36 04 13                                      movwne r3, #0x465f
00355f08  6f 37 46 13                                      movtne r3, #0x676f
00355f0c  94 30 8d 15                                      strne r3, [sp, #0x94]
00355f10  00 30 a0 13                                      movne r3, #0
00355f14  98 30 cd 15                                      strbne r3, [sp, #0x98]
00355f18  18 20 9d e5                                      ldr r2, [sp, #0x18]
00355f1c  00 00 52 e3                                      cmp r2, #0
00355f20  fb 00 00 0a                                      beq #0x356314
00355f24  30 34 d9 e5                                      ldrb r3, [sb, #0x430]
00355f28  00 00 53 e3                                      cmp r3, #0
00355f2c  f8 00 00 0a                                      beq #0x356314
00355f30  c0 14 9f e5                                      ldr r1, [pc, #0x4c0]
00355f34  b4 c0 8d e2                                      add ip, sp, #0xb4
00355f38  00 c0 8d e5                                      str ip, [sp]
00355f3c  34 80 8d e2                                      add r8, sp, #0x34
00355f40  94 c0 8d e2                                      add ip, sp, #0x94
00355f44  04 c0 8d e5                                      str ip, [sp, #4]
00355f48  01 10 8f e0                                      add r1, pc, r1
00355f4c  74 c0 8d e2                                      add ip, sp, #0x74
00355f50  08 00 a0 e1                                      mov r0, r8
00355f54  f4 20 8d e2                                      add r2, sp, #0xf4
00355f58  d4 30 8d e2                                      add r3, sp, #0xd4
00355f5c  08 c0 8d e5                                      str ip, [sp, #8]
00355f60  df e2 fe eb                                      bl #0x30eae4
00355f64  00 50 97 e5                                      ldr r5, [r7]
00355f68  5a ff ff ea                                      b #0x355cd8
00355f6c  88 14 9f e5                                      ldr r1, [pc, #0x488]
00355f70  00 30 a0 e3                                      mov r3, #0
00355f74  08 00 a0 e1                                      mov r0, r8
00355f78  01 10 8f e0                                      add r1, pc, r1
00355f7c  08 20 a0 e3                                      mov r2, #8
00355f80  d4 30 cd e5                                      strb r3, [sp, #0xd4]
00355f84  3c e3 fe eb                                      bl #0x30ec7c
00355f88  00 00 50 e3                                      cmp r0, #0
00355f8c  09 00 00 1a                                      bne #0x355fb8
00355f90  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00355f94  00 00 53 e3                                      cmp r3, #0
00355f98  06 00 00 0a                                      beq #0x355fb8
00355f9c  31 34 d9 e5                                      ldrb r3, [sb, #0x431]
00355fa0  00 00 53 e3                                      cmp r3, #0
00355fa4  5f 33 05 13                                      movwne r3, #0x535f
00355fa8  70 35 46 13                                      movtne r3, #0x6570
00355fac  63 20 a0 13                                      movne r2, #0x63
00355fb0  d4 30 8d 15                                      strne r3, [sp, #0xd4]
00355fb4  b8 2d cd 11                                      strhne r2, [sp, #0xd8]
00355fb8  00 30 a0 e3                                      mov r3, #0
00355fbc  00 00 5b e3                                      cmp fp, #0
00355fc0  f4 30 cd e5                                      strb r3, [sp, #0xf4]
00355fc4  05 00 00 0a                                      beq #0x355fe0
00355fc8  32 24 d9 e5                                      ldrb r2, [sb, #0x432]
00355fcc  03 00 52 e1                                      cmp r2, r3
00355fd0  5f 26 04 13                                      movwne r2, #0x465f
00355fd4  6f 27 46 13                                      movtne r2, #0x676f
00355fd8  f4 20 8d 15                                      strne r2, [sp, #0xf4]
00355fdc  f8 30 cd 15                                      strbne r3, [sp, #0xf8]
00355fe0  18 30 9d e5                                      ldr r3, [sp, #0x18]
00355fe4  00 00 53 e3                                      cmp r3, #0
00355fe8  13 00 00 0a                                      beq #0x35603c
00355fec  30 34 d9 e5                                      ldrb r3, [sb, #0x430]
00355ff0  00 00 53 e3                                      cmp r3, #0
00355ff4  10 00 00 0a                                      beq #0x35603c
00355ff8  00 14 9f e5                                      ldr r1, [pc, #0x400]
00355ffc  34 80 8d e2                                      add r8, sp, #0x34
00356000  08 00 a0 e1                                      mov r0, r8
00356004  01 10 8f e0                                      add r1, pc, r1
00356008  d4 20 8d e2                                      add r2, sp, #0xd4
0035600c  f4 30 8d e2                                      add r3, sp, #0xf4
00356010  b3 e2 fe eb                                      bl #0x30eae4
00356014  00 50 97 e5                                      ldr r5, [r7]
00356018  2e ff ff ea                                      b #0x355cd8
0035601c  e0 13 9f e5                                      ldr r1, [pc, #0x3e0]
00356020  34 80 8d e2                                      add r8, sp, #0x34
00356024  08 00 a0 e1                                      mov r0, r8
00356028  01 10 8f e0                                      add r1, pc, r1
0035602c  4d 2f 8d e2                                      add r2, sp, #0x134
00356030  ab e2 fe eb                                      bl #0x30eae4
00356034  00 50 97 e5                                      ldr r5, [r7]
00356038  26 ff ff ea                                      b #0x355cd8
0035603c  c4 13 9f e5                                      ldr r1, [pc, #0x3c4]
00356040  34 80 8d e2                                      add r8, sp, #0x34
00356044  08 00 a0 e1                                      mov r0, r8
00356048  01 10 8f e0                                      add r1, pc, r1
0035604c  f4 20 8d e2                                      add r2, sp, #0xf4
00356050  a3 e2 fe eb                                      bl #0x30eae4
00356054  00 50 97 e5                                      ldr r5, [r7]
00356058  1e ff ff ea                                      b #0x355cd8
0035605c  2d 3d 02 e3                                      movw r3, #0x2d2d
00356060  03 38 83 e1                                      orr r3, r3, r3, lsl #16
00356064  d4 30 8d e5                                      str r3, [sp, #0xd4]
00356068  34 31 8d e5                                      str r3, [sp, #0x134]
0035606c  14 31 8d e5                                      str r3, [sp, #0x114]
00356070  74 30 8d e5                                      str r3, [sp, #0x74]
00356074  94 30 8d e5                                      str r3, [sp, #0x94]
00356078  b4 30 8d e5                                      str r3, [sp, #0xb4]
0035607c  f4 30 8d e5                                      str r3, [sp, #0xf4]
00356080  30 30 9d e5                                      ldr r3, [sp, #0x30]
00356084  d8 00 cd e5                                      strb r0, [sp, #0xd8]
00356088  38 01 cd e5                                      strb r0, [sp, #0x138]
0035608c  18 01 cd e5                                      strb r0, [sp, #0x118]
00356090  78 00 cd e5                                      strb r0, [sp, #0x78]
00356094  98 00 cd e5                                      strb r0, [sp, #0x98]
00356098  b8 00 cd e5                                      strb r0, [sp, #0xb8]
0035609c  f8 00 cd e5                                      strb r0, [sp, #0xf8]
003560a0  08 50 93 e5                                      ldr r5, [r3, #8]
003560a4  60 13 9f e5                                      ldr r1, [pc, #0x360]
003560a8  10 20 a0 e3                                      mov r2, #0x10
003560ac  05 00 a0 e1                                      mov r0, r5
003560b0  01 10 8f e0                                      add r1, pc, r1
003560b4  f0 e2 fe eb                                      bl #0x30ec7c
003560b8  45 2f 8d e2                                      add r2, sp, #0x114
003560bc  00 00 50 e3                                      cmp r0, #0
003560c0  4d af 8d e2                                      add sl, sp, #0x134
003560c4  24 20 8d e5                                      str r2, [sp, #0x24]
003560c8  61 00 00 0a                                      beq #0x356254
003560cc  3c 13 9f e5                                      ldr r1, [pc, #0x33c]
003560d0  05 00 a0 e1                                      mov r0, r5
003560d4  10 20 a0 e3                                      mov r2, #0x10
003560d8  01 10 8f e0                                      add r1, pc, r1
003560dc  e6 e2 fe eb                                      bl #0x30ec7c
003560e0  00 00 50 e3                                      cmp r0, #0
003560e4  6c 00 00 0a                                      beq #0x35629c
003560e8  24 13 9f e5                                      ldr r1, [pc, #0x324]
003560ec  05 00 a0 e1                                      mov r0, r5
003560f0  0d 20 a0 e3                                      mov r2, #0xd
003560f4  01 10 8f e0                                      add r1, pc, r1
003560f8  df e2 fe eb                                      bl #0x30ec7c
003560fc  00 00 50 e3                                      cmp r0, #0
00356100  4c 34 03 03                                      movweq r3, #0x344c
00356104  b0 30 ca 01                                      strheq r3, [sl]
00356108  02 00 ca 05                                      strbeq r0, [sl, #2]
0035610c  09 00 00 0a                                      beq #0x356138
00356110  00 13 9f e5                                      ldr r1, [pc, #0x300]
00356114  05 00 a0 e1                                      mov r0, r5
00356118  0d 20 a0 e3                                      mov r2, #0xd
0035611c  01 10 8f e0                                      add r1, pc, r1
00356120  d5 e2 fe eb                                      bl #0x30ec7c
00356124  00 00 50 e3                                      cmp r0, #0
00356128  2e ff ff 1a                                      bne #0x355de8
0035612c  4c 31 03 e3                                      movw r3, #0x314c
00356130  b0 30 ca e1                                      strh r3, [sl]
00356134  02 00 ca e5                                      strb r0, [sl, #2]
00356138  d5 30 d8 e1                                      ldrsb r3, [r8, #5]
0035613c  80 21 9d e5                                      ldr r2, [sp, #0x180]
00356140  41 00 53 e3                                      cmp r3, #0x41
00356144  00 00 52 03                                      cmpeq r2, #0
00356148  3e 00 00 1a                                      bne #0x356248
0035614c  41 3c 06 e3                                      movw r3, #0x6c41
00356150  b4 37 cd e1                                      strh r3, [sp, #0x74]
00356154  00 30 a0 e3                                      mov r3, #0
00356158  76 30 cd e5                                      strb r3, [sp, #0x76]
0035615c  d6 30 d8 e1                                      ldrsb r3, [r8, #6]
00356160  53 00 53 e3                                      cmp r3, #0x53
00356164  42 00 00 0a                                      beq #0x356274
00356168  d7 30 d8 e1                                      ldrsb r3, [r8, #7]
0035616c  4e 00 53 e3                                      cmp r3, #0x4e
00356170  4e 3d 06 03                                      movweq r3, #0x6d4e
00356174  b4 3b cd 01                                      strheq r3, [sp, #0xb4]
00356178  00 30 a0 03                                      moveq r3, #0
0035617c  b6 30 cd 05                                      strbeq r3, [sp, #0xb6]
00356180  00 00 5b e3                                      cmp fp, #0
00356184  05 00 00 0a                                      beq #0x3561a0
00356188  32 34 d9 e5                                      ldrb r3, [sb, #0x432]
0035618c  00 00 53 e3                                      cmp r3, #0
00356190  46 37 06 13                                      movwne r3, #0x6746
00356194  b4 3f cd 11                                      strhne r3, [sp, #0xf4]
00356198  00 30 a0 13                                      movne r3, #0
0035619c  f6 30 cd 15                                      strbne r3, [sp, #0xf6]
003561a0  18 20 9d e5                                      ldr r2, [sp, #0x18]
003561a4  00 00 52 e3                                      cmp r2, #0
003561a8  18 00 00 0a                                      beq #0x356210
003561ac  30 34 d9 e5                                      ldrb r3, [sb, #0x430]
003561b0  00 00 53 e3                                      cmp r3, #0
003561b4  15 00 00 0a                                      beq #0x356210
003561b8  d3 30 d8 e1                                      ldrsb r3, [r8, #3]
003561bc  55 00 53 e3                                      cmp r3, #0x55
003561c0  41 00 00 0a                                      beq #0x3562cc
003561c4  74 c0 8d e2                                      add ip, sp, #0x74
003561c8  00 c0 8d e5                                      str ip, [sp]
003561cc  48 12 9f e5                                      ldr r1, [pc, #0x248]
003561d0  94 c0 8d e2                                      add ip, sp, #0x94
003561d4  04 c0 8d e5                                      str ip, [sp, #4]
003561d8  b4 c0 8d e2                                      add ip, sp, #0xb4
003561dc  08 c0 8d e5                                      str ip, [sp, #8]
003561e0  34 80 8d e2                                      add r8, sp, #0x34
003561e4  d4 c0 8d e2                                      add ip, sp, #0xd4
003561e8  0c c0 8d e5                                      str ip, [sp, #0xc]
003561ec  0a 20 a0 e1                                      mov r2, sl
003561f0  f4 c0 8d e2                                      add ip, sp, #0xf4
003561f4  01 10 8f e0                                      add r1, pc, r1
003561f8  24 30 9d e5                                      ldr r3, [sp, #0x24]
003561fc  08 00 a0 e1                                      mov r0, r8
00356200  10 c0 8d e5                                      str ip, [sp, #0x10]
00356204  36 e2 fe eb                                      bl #0x30eae4
00356208  00 50 97 e5                                      ldr r5, [r7]
0035620c  b1 fe ff ea                                      b #0x355cd8
00356210  20 30 9d e5                                      ldr r3, [sp, #0x20]
00356214  00 00 53 e3                                      cmp r3, #0
00356218  27 00 00 0a                                      beq #0x3562bc
0035621c  fc 11 9f e5                                      ldr r1, [pc, #0x1fc]
00356220  34 80 8d e2                                      add r8, sp, #0x34
00356224  01 10 8f e0                                      add r1, pc, r1
00356228  d4 c0 8d e2                                      add ip, sp, #0xd4
0035622c  08 00 a0 e1                                      mov r0, r8
00356230  74 20 8d e2                                      add r2, sp, #0x74
00356234  f4 30 8d e2                                      add r3, sp, #0xf4
00356238  00 c0 8d e5                                      str ip, [sp]
0035623c  28 e2 fe eb                                      bl #0x30eae4
00356240  00 50 97 e5                                      ldr r5, [r7]
00356244  a3 fe ff ea                                      b #0x355cd8
00356248  02 00 52 e3                                      cmp r2, #2
0035624c  c2 ff ff 1a                                      bne #0x35615c
00356250  bd ff ff ea                                      b #0x35614c
00356254  4c 34 03 e3                                      movw r3, #0x344c
00356258  01 2c 8d e2                                      add r2, sp, #0x100
0035625c  b4 33 c2 e1                                      strh r3, [r2, #0x34]
00356260  56 33 06 e3                                      movw r3, #0x6356
00356264  b4 31 c2 e1                                      strh r3, [r2, #0x14]
00356268  16 01 cd e5                                      strb r0, [sp, #0x116]
0035626c  36 01 cd e5                                      strb r0, [sp, #0x136]
00356270  b0 ff ff ea                                      b #0x356138
00356274  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00356278  00 00 53 e3                                      cmp r3, #0
0035627c  b9 ff ff 0a                                      beq #0x356168
00356280  31 34 d9 e5                                      ldrb r3, [sb, #0x431]
00356284  00 00 53 e3                                      cmp r3, #0
00356288  53 30 07 13                                      movwne r3, #0x7053
0035628c  b4 39 cd 11                                      strhne r3, [sp, #0x94]
00356290  00 30 a0 13                                      movne r3, #0
00356294  96 30 cd 15                                      strbne r3, [sp, #0x96]
00356298  b2 ff ff ea                                      b #0x356168
0035629c  24 20 9d e5                                      ldr r2, [sp, #0x24]
003562a0  4c 31 03 e3                                      movw r3, #0x314c
003562a4  b0 30 ca e1                                      strh r3, [sl]
003562a8  56 33 06 e3                                      movw r3, #0x6356
003562ac  b0 30 c2 e1                                      strh r3, [r2]
003562b0  02 00 c2 e5                                      strb r0, [r2, #2]
003562b4  02 00 ca e5                                      strb r0, [sl, #2]
003562b8  9e ff ff ea                                      b #0x356138
003562bc  60 11 9f e5                                      ldr r1, [pc, #0x160]
003562c0  34 80 8d e2                                      add r8, sp, #0x34
003562c4  01 10 8f e0                                      add r1, pc, r1
003562c8  d6 ff ff ea                                      b #0x356228
003562cc  94 c0 8d e2                                      add ip, sp, #0x94
003562d0  50 11 9f e5                                      ldr r1, [pc, #0x150]
003562d4  00 c0 8d e5                                      str ip, [sp]
003562d8  b4 c0 8d e2                                      add ip, sp, #0xb4
003562dc  04 c0 8d e5                                      str ip, [sp, #4]
003562e0  34 80 8d e2                                      add r8, sp, #0x34
003562e4  d4 c0 8d e2                                      add ip, sp, #0xd4
003562e8  08 c0 8d e5                                      str ip, [sp, #8]
003562ec  24 20 9d e5                                      ldr r2, [sp, #0x24]
003562f0  f4 c0 8d e2                                      add ip, sp, #0xf4
003562f4  01 10 8f e0                                      add r1, pc, r1
003562f8  08 00 a0 e1                                      mov r0, r8
003562fc  74 30 8d e2                                      add r3, sp, #0x74
00356300  0c c0 8d e5                                      str ip, [sp, #0xc]
00356304  f6 e1 fe eb                                      bl #0x30eae4
00356308  00 50 97 e5                                      ldr r5, [r7]
0035630c  71 fe ff ea                                      b #0x355cd8
00356310  fe df fe eb                                      bl #0x30e310
00356314  20 20 9d e5                                      ldr r2, [sp, #0x20]
00356318  00 00 52 e3                                      cmp r2, #0
0035631c  0a 00 00 0a                                      beq #0x35634c
00356320  04 11 9f e5                                      ldr r1, [pc, #0x104]
00356324  34 80 8d e2                                      add r8, sp, #0x34
00356328  01 10 8f e0                                      add r1, pc, r1
0035632c  74 c0 8d e2                                      add ip, sp, #0x74
00356330  08 00 a0 e1                                      mov r0, r8
00356334  d4 20 8d e2                                      add r2, sp, #0xd4
00356338  94 30 8d e2                                      add r3, sp, #0x94
0035633c  00 c0 8d e5                                      str ip, [sp]
00356340  e7 e1 fe eb                                      bl #0x30eae4
00356344  00 50 97 e5                                      ldr r5, [r7]
00356348  62 fe ff ea                                      b #0x355cd8
0035634c  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00356350  34 80 8d e2                                      add r8, sp, #0x34
00356354  01 10 8f e0                                      add r1, pc, r1
00356358  f3 ff ff ea                                      b #0x35632c
0035635c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00356360  00 00 52 e3                                      cmp r2, #0
00356364  dd fe ff 0a                                      beq #0x355ee0
00356368  31 34 d9 e5                                      ldrb r3, [sb, #0x431]
0035636c  00 00 53 e3                                      cmp r3, #0
00356370  5f 33 05 13                                      movwne r3, #0x535f
00356374  70 35 46 13                                      movtne r3, #0x6570
00356378  b4 30 8d 15                                      strne r3, [sp, #0xb4]
0035637c  63 30 a0 13                                      movne r3, #0x63
00356380  b8 3b cd 11                                      strhne r3, [sp, #0xb8]
00356384  d5 fe ff ea                                      b #0x355ee0
00356388  80 31 9d e5                                      ldr r3, [sp, #0x180]
0035638c  00 00 53 e3                                      cmp r3, #0
00356390  02 00 53 13                                      cmpne r3, #2
00356394  ce fe ff 1a                                      bne #0x355ed4
00356398  01 00 53 e3                                      cmp r3, #1
0035639c  cc fe ff 0a                                      beq #0x355ed4
003563a0  5f 31 04 e3                                      movw r3, #0x415f
003563a4  6c 30 47 e3                                      movt r3, #0x706c
003563a8  d4 30 8d e5                                      str r3, [sp, #0xd4]
003563ac  68 31 06 e3                                      movw r3, #0x6168
003563b0  b8 3d cd e1                                      strh r3, [sp, #0xd8]
003563b4  00 30 a0 e3                                      mov r3, #0
003563b8  da 30 cd e5                                      strb r3, [sp, #0xda]
003563bc  c4 fe ff ea                                      b #0x355ed4
; mapping-symbol data/literal pool
003563c0  90 ee 63 00 ac 40 00 00 f0 ab 56 00 e0 ac 56 00  .byte 0x90, 0xee, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0xab, 0x56, 0x00, 0xe0, 0xac, 0x56, 0x00
003563d0  e4 ac 56 00 98 ac 56 00 60 ac 56 00 64 ac 56 00  .byte 0xe4, 0xac, 0x56, 0x00, 0x98, 0xac, 0x56, 0x00, 0x60, 0xac, 0x56, 0x00, 0x64, 0xac, 0x56, 0x00
003563e0  58 ac 56 00 90 aa 56 00 94 ab 56 00 5c ab 56 00  .byte 0x58, 0xac, 0x56, 0x00, 0x90, 0xaa, 0x56, 0x00, 0x94, 0xab, 0x56, 0x00, 0x5c, 0xab, 0x56, 0x00
003563f0  6c ac 56 00 60 ac 56 00 b0 ab 56 00 60 ab 56 00  .byte 0x6c, 0xac, 0x56, 0x00, 0x60, 0xac, 0x56, 0x00, 0xb0, 0xab, 0x56, 0x00, 0x60, 0xab, 0x56, 0x00
00356400  e4 aa 56 00 c0 a9 56 00 f8 aa 56 00 68 a9 56 00  .byte 0xe4, 0xaa, 0x56, 0x00, 0xc0, 0xa9, 0x56, 0x00, 0xf8, 0xaa, 0x56, 0x00, 0x68, 0xa9, 0x56, 0x00
00356410  58 a9 56 00 54 a9 56 00 3c a9 56 00 8c a8 56 00  .byte 0x58, 0xa9, 0x56, 0x00, 0x54, 0xa9, 0x56, 0x00, 0x3c, 0xa9, 0x56, 0x00, 0x8c, 0xa8, 0x56, 0x00
00356420  74 a8 56 00 ec a7 56 00 74 a7 56 00 e8 a7 56 00  .byte 0x74, 0xa8, 0x56, 0x00, 0xec, 0xa7, 0x56, 0x00, 0x74, 0xa7, 0x56, 0x00, 0xe8, 0xa7, 0x56, 0x00
00356430  d4 a7 56 00                                      .byte 0xd4, 0xa7, 0x56, 0x00

; FUNCTION 0x00356434, declared_size=696, range_size=696, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager29ResetCustomTechniqueToDefaultEPN6glitch5scene10ISceneNodeEbbNS_10EForceBoolEbbb
; demangled: SceneManager::ResetCustomTechniqueToDefault(glitch::scene::ISceneNode*, bool, bool, SceneManager::EForceBool, bool, bool, bool)
; decoder-mode: arm
00356434  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00356438  5c d0 4d e2                                      sub sp, sp, #0x5c
0035643c  8c c0 dd e5                                      ldrb ip, [sp, #0x8c]
00356440  18 20 8d e5                                      str r2, [sp, #0x18]
00356444  1c 30 8d e5                                      str r3, [sp, #0x1c]
00356448  84 20 dd e5                                      ldrb r2, [sp, #0x84]
0035644c  88 30 dd e5                                      ldrb r3, [sp, #0x88]
00356450  00 50 51 e2                                      subs r5, r1, #0
00356454  28 c0 8d e5                                      str ip, [sp, #0x28]
00356458  14 00 8d e5                                      str r0, [sp, #0x14]
0035645c  20 20 8d e5                                      str r2, [sp, #0x20]
00356460  24 30 8d e5                                      str r3, [sp, #0x24]
00356464  04 50 90 05                                      ldreq r5, [r0, #4]
00356468  40 60 8d e2                                      add r6, sp, #0x40
0035646c  64 31 06 e3                                      movw r3, #0x6164
00356470  00 40 a0 e3                                      mov r4, #0
00356474  65 3d 46 e3                                      movt r3, #0x6d65
00356478  14 00 9d e5                                      ldr r0, [sp, #0x14]
0035647c  05 10 a0 e1                                      mov r1, r5
00356480  06 20 a0 e1                                      mov r2, r6
00356484  40 40 8d e5                                      str r4, [sp, #0x40]
00356488  44 40 8d e5                                      str r4, [sp, #0x44]
0035648c  48 40 8d e5                                      str r4, [sp, #0x48]
00356490  71 ea ff eb                                      bl #0x350e5c
00356494  64 31 06 e3                                      movw r3, #0x6164
00356498  14 00 9d e5                                      ldr r0, [sp, #0x14]
0035649c  05 10 a0 e1                                      mov r1, r5
003564a0  06 20 a0 e1                                      mov r2, r6
003564a4  65 33 47 e3                                      movt r3, #0x7365
003564a8  6b ea ff eb                                      bl #0x350e5c
003564ac  64 31 06 e3                                      movw r3, #0x6164
003564b0  14 00 9d e5                                      ldr r0, [sp, #0x14]
003564b4  06 20 a0 e1                                      mov r2, r6
003564b8  65 3d 44 e3                                      movt r3, #0x4d65
003564bc  05 10 a0 e1                                      mov r1, r5
003564c0  65 ea ff eb                                      bl #0x350e5c
003564c4  40 30 9d e5                                      ldr r3, [sp, #0x40]
003564c8  44 20 9d e5                                      ldr r2, [sp, #0x44]
003564cc  03 00 a0 e1                                      mov r0, r3
003564d0  02 20 63 e0                                      rsb r2, r3, r2
003564d4  42 21 b0 e1                                      asrs r2, r2, #2
003564d8  3c 20 8d e5                                      str r2, [sp, #0x3c]
003564dc  79 00 00 0a                                      beq #0x3566c8
003564e0  f4 21 9f e5                                      ldr r2, [pc, #0x1f4]
003564e4  f4 91 9f e5                                      ldr sb, [pc, #0x1f4]
003564e8  30 40 8d e5                                      str r4, [sp, #0x30]
003564ec  02 20 8f e0                                      add r2, pc, r2
003564f0  2c 20 8d e5                                      str r2, [sp, #0x2c]
003564f4  e8 21 9f e5                                      ldr r2, [pc, #0x1e8]
003564f8  09 90 8f e0                                      add sb, pc, sb
003564fc  02 20 8f e0                                      add r2, pc, r2
00356500  34 20 8d e5                                      str r2, [sp, #0x34]
00356504  dc 21 9f e5                                      ldr r2, [pc, #0x1dc]
00356508  02 20 8f e0                                      add r2, pc, r2
0035650c  38 20 8d e5                                      str r2, [sp, #0x38]
00356510  30 20 9d e5                                      ldr r2, [sp, #0x30]
00356514  02 51 93 e7                                      ldr r5, [r3, r2, lsl #2]
00356518  00 30 95 e5                                      ldr r3, [r5]
0035651c  05 00 a0 e1                                      mov r0, r5
00356520  0f e0 a0 e1                                      mov lr, pc
00356524  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00356528  00 60 50 e2                                      subs r6, r0, #0
0035652c  5d 00 00 da                                      ble #0x3566a8
00356530  00 40 a0 e3                                      mov r4, #0
00356534  54 70 8d e2                                      add r7, sp, #0x54
00356538  50 80 8d e2                                      add r8, sp, #0x50
0035653c  4c b0 8d e2                                      add fp, sp, #0x4c
00356540  06 a0 a0 e1                                      mov sl, r6
00356544  2f 00 00 ea                                      b #0x356608
00356548  54 30 9d e5                                      ldr r3, [sp, #0x54]
0035654c  0b 10 a0 e1                                      mov r1, fp
00356550  00 00 53 e3                                      cmp r3, #0
00356554  4c 30 8d e5                                      str r3, [sp, #0x4c]
00356558  00 20 93 15                                      ldrne r2, [r3]
0035655c  01 20 82 12                                      addne r2, r2, #1
00356560  00 20 83 15                                      strne r2, [r3]
00356564  80 c0 9d e5                                      ldr ip, [sp, #0x80]
00356568  14 00 9d e5                                      ldr r0, [sp, #0x14]
0035656c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00356570  00 c0 8d e5                                      str ip, [sp]
00356574  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00356578  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0035657c  04 c0 8d e5                                      str ip, [sp, #4]
00356580  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00356584  08 c0 8d e5                                      str ip, [sp, #8]
00356588  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0035658c  0c c0 8d e5                                      str ip, [sp, #0xc]
00356590  96 fd ff eb                                      bl #0x355bf0
00356594  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
00356598  00 00 56 e3                                      cmp r6, #0
0035659c  08 00 00 0a                                      beq #0x3565c4
003565a0  00 30 96 e5                                      ldr r3, [r6]
003565a4  01 30 43 e2                                      sub r3, r3, #1
003565a8  00 00 53 e3                                      cmp r3, #0
003565ac  00 30 86 e5                                      str r3, [r6]
003565b0  03 00 00 1a                                      bne #0x3565c4
003565b4  06 00 a0 e1                                      mov r0, r6
003565b8  6e d6 09 eb                                      bl #0x5cbf78
003565bc  06 00 a0 e1                                      mov r0, r6
003565c0  9e e7 fe eb                                      bl #0x310440
003565c4  08 00 a0 e1                                      mov r0, r8
003565c8  3a ef ff eb                                      bl #0x3522b8
003565cc  54 60 9d e5                                      ldr r6, [sp, #0x54]
003565d0  00 00 56 e3                                      cmp r6, #0
003565d4  08 00 00 0a                                      beq #0x3565fc
003565d8  00 30 96 e5                                      ldr r3, [r6]
003565dc  01 30 43 e2                                      sub r3, r3, #1
003565e0  00 00 53 e3                                      cmp r3, #0
003565e4  00 30 86 e5                                      str r3, [r6]
003565e8  03 00 00 1a                                      bne #0x3565fc
003565ec  06 00 a0 e1                                      mov r0, r6
003565f0  60 d6 09 eb                                      bl #0x5cbf78
003565f4  06 00 a0 e1                                      mov r0, r6
003565f8  90 e7 fe eb                                      bl #0x310440
003565fc  01 40 84 e2                                      add r4, r4, #1
00356600  04 00 5a e1                                      cmp sl, r4
00356604  27 00 00 0a                                      beq #0x3566a8
00356608  04 20 a0 e1                                      mov r2, r4
0035660c  00 30 95 e5                                      ldr r3, [r5]
00356610  07 00 a0 e1                                      mov r0, r7
00356614  05 10 a0 e1                                      mov r1, r5
00356618  0f e0 a0 e1                                      mov lr, pc
0035661c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00356620  54 30 9d e5                                      ldr r3, [sp, #0x54]
00356624  09 10 a0 e1                                      mov r1, sb
00356628  04 30 93 e5                                      ldr r3, [r3, #4]
0035662c  00 00 53 e3                                      cmp r3, #0
00356630  50 30 8d e5                                      str r3, [sp, #0x50]
00356634  00 20 93 15                                      ldrne r2, [r3]
00356638  01 20 82 12                                      addne r2, r2, #1
0035663c  00 20 83 15                                      strne r2, [r3]
00356640  50 30 9d 15                                      ldrne r3, [sp, #0x50]
00356644  0a 20 a0 e3                                      mov r2, #0xa
00356648  08 60 93 e5                                      ldr r6, [r3, #8]
0035664c  06 00 a0 e1                                      mov r0, r6
00356650  89 e1 fe eb                                      bl #0x30ec7c
00356654  00 00 50 e3                                      cmp r0, #0
00356658  ba ff ff 0a                                      beq #0x356548
0035665c  06 00 a0 e1                                      mov r0, r6
00356660  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00356664  0c 20 a0 e3                                      mov r2, #0xc
00356668  83 e1 fe eb                                      bl #0x30ec7c
0035666c  00 00 50 e3                                      cmp r0, #0
00356670  b4 ff ff 0a                                      beq #0x356548
00356674  06 00 a0 e1                                      mov r0, r6
00356678  34 10 9d e5                                      ldr r1, [sp, #0x34]
0035667c  0f 20 a0 e3                                      mov r2, #0xf
00356680  7d e1 fe eb                                      bl #0x30ec7c
00356684  00 00 50 e3                                      cmp r0, #0
00356688  ae ff ff 0a                                      beq #0x356548
0035668c  06 00 a0 e1                                      mov r0, r6
00356690  38 10 9d e5                                      ldr r1, [sp, #0x38]
00356694  08 20 a0 e3                                      mov r2, #8
00356698  77 e1 fe eb                                      bl #0x30ec7c
0035669c  00 00 50 e3                                      cmp r0, #0
003566a0  c7 ff ff 1a                                      bne #0x3565c4
003566a4  a7 ff ff ea                                      b #0x356548
003566a8  30 20 9d e5                                      ldr r2, [sp, #0x30]
003566ac  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
003566b0  01 20 82 e2                                      add r2, r2, #1
003566b4  03 00 52 e1                                      cmp r2, r3
003566b8  30 20 8d e5                                      str r2, [sp, #0x30]
003566bc  40 30 9d 15                                      ldrne r3, [sp, #0x40]
003566c0  92 ff ff 1a                                      bne #0x356510
003566c4  40 00 9d e5                                      ldr r0, [sp, #0x40]
003566c8  00 00 50 e3                                      cmp r0, #0
003566cc  00 00 00 0a                                      beq #0x3566d4
003566d0  5e e7 fe eb                                      bl #0x310450
003566d4  5c d0 8d e2                                      add sp, sp, #0x5c
003566d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003566dc  1c a4 56 00 40 a3 56 00 4c a3 56 00 10 a4 56 00  .byte 0x1c, 0xa4, 0x56, 0x00, 0x40, 0xa3, 0x56, 0x00, 0x4c, 0xa3, 0x56, 0x00, 0x10, 0xa4, 0x56, 0x00

; FUNCTION 0x003566ec, declared_size=396, range_size=396, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager15ChangeTechniqueEPN6glitch5scene10ISceneNodeEPKcS5_i
; demangled: SceneManager::ChangeTechnique(glitch::scene::ISceneNode*, char const*, char const*, int)
; decoder-mode: arm
003566ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003566f0  68 41 9f e5                                      ldr r4, [pc, #0x168]
003566f4  10 d0 4d e2                                      sub sp, sp, #0x10
003566f8  00 50 51 e2                                      subs r5, r1, #0
003566fc  04 40 8f e0                                      add r4, pc, r4
00356700  02 70 a0 e1                                      mov r7, r2
00356704  03 60 a0 e1                                      mov r6, r3
00356708  28 80 9d e5                                      ldr r8, [sp, #0x28]
0035670c  05 00 00 0a                                      beq #0x356728
00356710  00 30 95 e5                                      ldr r3, [r5]
00356714  05 00 a0 e1                                      mov r0, r5
00356718  0f e0 a0 e1                                      mov lr, pc
0035671c  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00356720  00 00 50 e3                                      cmp r0, #0
00356724  03 00 00 1a                                      bne #0x356738
00356728  00 50 a0 e3                                      mov r5, #0
0035672c  05 00 a0 e1                                      mov r0, r5
00356730  10 d0 8d e2                                      add sp, sp, #0x10
00356734  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00356738  00 30 95 e5                                      ldr r3, [r5]
0035673c  05 00 a0 e1                                      mov r0, r5
00356740  0f e0 a0 e1                                      mov lr, pc
00356744  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00356748  00 00 58 e1                                      cmp r8, r0
0035674c  08 00 00 3a                                      blo #0x356774
00356750  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
00356754  03 30 94 e7                                      ldr r3, [r4, r3]
00356758  00 30 93 e5                                      ldr r3, [r3]
0035675c  02 00 53 e3                                      cmp r3, #2
00356760  00 30 a0 03                                      moveq r3, #0
00356764  00 30 83 05                                      streq r3, [r3]
00356768  01 00 00 0a                                      beq #0x356774
0035676c  01 00 53 e3                                      cmp r3, #1
00356770  2d 00 00 0a                                      beq #0x35682c
00356774  0c 40 8d e2                                      add r4, sp, #0xc
00356778  08 20 a0 e1                                      mov r2, r8
0035677c  00 30 95 e5                                      ldr r3, [r5]
00356780  05 10 a0 e1                                      mov r1, r5
00356784  04 00 a0 e1                                      mov r0, r4
00356788  0f e0 a0 e1                                      mov lr, pc
0035678c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00356790  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00356794  04 30 93 e5                                      ldr r3, [r3, #4]
00356798  00 00 53 e3                                      cmp r3, #0
0035679c  08 30 8d e5                                      str r3, [sp, #8]
003567a0  00 20 93 15                                      ldrne r2, [r3]
003567a4  01 20 82 12                                      addne r2, r2, #1
003567a8  00 20 83 15                                      strne r2, [r3]
003567ac  00 00 56 e3                                      cmp r6, #0
003567b0  0c 00 00 0a                                      beq #0x3567e8
003567b4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003567b8  08 50 9d e5                                      ldr r5, [sp, #8]
003567bc  5c bd 09 eb                                      bl #0x5c5d34
003567c0  0c 30 a0 e3                                      mov r3, #0xc
003567c4  93 00 03 e0                                      mul r3, r3, r0
003567c8  18 20 95 e5                                      ldr r2, [r5, #0x18]
003567cc  06 10 a0 e1                                      mov r1, r6
003567d0  03 00 92 e7                                      ldr r0, [r2, r3]
003567d4  00 00 50 e3                                      cmp r0, #0
003567d8  04 00 80 12                                      addne r0, r0, #4
003567dc  ce de fe eb                                      bl #0x30e31c
003567e0  00 00 50 e3                                      cmp r0, #0
003567e4  0a 00 00 1a                                      bne #0x356814
003567e8  00 00 57 e3                                      cmp r7, #0
003567ec  08 00 00 0a                                      beq #0x356814
003567f0  07 10 a0 e1                                      mov r1, r7
003567f4  08 00 9d e5                                      ldr r0, [sp, #8]
003567f8  c5 f7 09 eb                                      bl #0x5d4714
003567fc  ff 00 50 e3                                      cmp r0, #0xff
00356800  03 00 00 0a                                      beq #0x356814
00356804  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00356808  01 50 a0 e3                                      mov r5, #1
0035680c  08 00 c3 e5                                      strb r0, [r3, #8]
00356810  00 00 00 ea                                      b #0x356818
00356814  00 50 a0 e3                                      mov r5, #0
00356818  08 00 8d e2                                      add r0, sp, #8
0035681c  a5 ee ff eb                                      bl #0x3522b8
00356820  04 00 a0 e1                                      mov r0, r4
00356824  ef e8 fe eb                                      bl #0x310be8
00356828  bf ff ff ea                                      b #0x35672c
0035682c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00356830  34 10 9f e5                                      ldr r1, [pc, #0x34]
00356834  34 20 9f e5                                      ldr r2, [pc, #0x34]
00356838  00 00 94 e7                                      ldr r0, [r4, r0]
0035683c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00356840  d4 c0 a0 e3                                      mov ip, #0xd4
00356844  01 10 8f e0                                      add r1, pc, r1
00356848  02 20 8f e0                                      add r2, pc, r2
0035684c  03 30 8f e0                                      add r3, pc, r3
00356850  a8 00 80 e2                                      add r0, r0, #0xa8
00356854  00 c0 8d e5                                      str ip, [sp]
00356858  e9 dd fe eb                                      bl #0x30e004
0035685c  c4 ff ff ea                                      b #0x356774
; mapping-symbol data/literal pool
00356860  94 e3 63 00 c0 39 00 00 c0 19 00 00 94 7b 56 00  .byte 0x94, 0xe3, 0x63, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x94, 0x7b, 0x56, 0x00
00356870  08 a3 56 00 2c a3 56 00                          .byte 0x08, 0xa3, 0x56, 0x00, 0x2c, 0xa3, 0x56, 0x00

; FUNCTION 0x00356878, declared_size=164, range_size=164, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManagerD2Ev
; demangled: SceneManager::~SceneManager()
; decoder-mode: arm
00356878  70 40 2d e9                                      push {r4, r5, r6, lr}
0035687c  00 30 91 e5                                      ldr r3, [r1]
00356880  00 40 a0 e1                                      mov r4, r0
00356884  01 50 a0 e1                                      mov r5, r1
00356888  00 30 80 e5                                      str r3, [r0]
0035688c  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00356890  10 20 91 e5                                      ldr r2, [r1, #0x10]
00356894  03 20 80 e7                                      str r2, [r0, r3]
00356898  00 30 90 e5                                      ldr r3, [r0]
0035689c  14 20 91 e5                                      ldr r2, [r1, #0x14]
003568a0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003568a4  03 20 80 e7                                      str r2, [r0, r3]
003568a8  7c 04 90 e5                                      ldr r0, [r0, #0x47c]
003568ac  00 00 50 e3                                      cmp r0, #0
003568b0  00 00 00 0a                                      beq #0x3568b8
003568b4  e5 e6 fe eb                                      bl #0x310450
003568b8  47 0e 84 e2                                      add r0, r4, #0x470
003568bc  04 ee ff eb                                      bl #0x3520d4
003568c0  46 0e 84 e2                                      add r0, r4, #0x460
003568c4  04 00 80 e2                                      add r0, r0, #4
003568c8  01 ee ff eb                                      bl #0x3520d4
003568cc  4c 04 94 e5                                      ldr r0, [r4, #0x44c]
003568d0  11 3d 84 e2                                      add r3, r4, #0x440
003568d4  0c 30 83 e2                                      add r3, r3, #0xc
003568d8  00 00 50 e3                                      cmp r0, #0
003568dc  05 00 00 0a                                      beq #0x3568f8
003568e0  08 10 93 e5                                      ldr r1, [r3, #8]
003568e4  01 10 60 e0                                      rsb r1, r0, r1
003568e8  03 10 c1 e3                                      bic r1, r1, #3
003568ec  80 00 51 e3                                      cmp r1, #0x80
003568f0  07 00 00 8a                                      bhi #0x356914
003568f4  81 c9 0e eb                                      bl #0x708f00
003568f8  a5 0f 84 e2                                      add r0, r4, #0x294
003568fc  f3 d8 02 eb                                      bl #0x40ccd0
00356900  04 00 a0 e1                                      mov r0, r4
00356904  04 10 85 e2                                      add r1, r5, #4
00356908  83 e1 08 eb                                      bl #0x58ef1c
0035690c  04 00 a0 e1                                      mov r0, r4
00356910  70 80 bd e8                                      pop {r4, r5, r6, pc}
00356914  c9 e6 fe eb                                      bl #0x310440
00356918  f6 ff ff ea                                      b #0x3568f8

; FUNCTION 0x00356bec, declared_size=176, range_size=176, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManagerD1Ev
; demangled: SceneManager::~SceneManager()
; decoder-mode: arm
00356bec  70 40 2d e9                                      push {r4, r5, r6, lr}
00356bf0  98 50 9f e5                                      ldr r5, [pc, #0x98]
00356bf4  98 30 9f e5                                      ldr r3, [pc, #0x98]
00356bf8  00 40 a0 e1                                      mov r4, r0
00356bfc  05 50 8f e0                                      add r5, pc, r5
00356c00  7c 04 90 e5                                      ldr r0, [r0, #0x47c]
00356c04  03 30 95 e7                                      ldr r3, [r5, r3]
00356c08  00 00 50 e3                                      cmp r0, #0
00356c0c  c0 20 83 e2                                      add r2, r3, #0xc0
00356c10  1c 30 83 e2                                      add r3, r3, #0x1c
00356c14  00 30 84 e5                                      str r3, [r4]
00356c18  8c 24 84 e5                                      str r2, [r4, #0x48c]
00356c1c  00 00 00 0a                                      beq #0x356c24
00356c20  0a e6 fe eb                                      bl #0x310450
00356c24  47 0e 84 e2                                      add r0, r4, #0x470
00356c28  29 ed ff eb                                      bl #0x3520d4
00356c2c  46 0e 84 e2                                      add r0, r4, #0x460
00356c30  04 00 80 e2                                      add r0, r0, #4
00356c34  26 ed ff eb                                      bl #0x3520d4
00356c38  4c 04 94 e5                                      ldr r0, [r4, #0x44c]
00356c3c  11 3d 84 e2                                      add r3, r4, #0x440
00356c40  0c 30 83 e2                                      add r3, r3, #0xc
00356c44  00 00 50 e3                                      cmp r0, #0
00356c48  05 00 00 0a                                      beq #0x356c64
00356c4c  08 10 93 e5                                      ldr r1, [r3, #8]
00356c50  01 10 60 e0                                      rsb r1, r0, r1
00356c54  03 10 c1 e3                                      bic r1, r1, #3
00356c58  80 00 51 e3                                      cmp r1, #0x80
00356c5c  09 00 00 8a                                      bhi #0x356c88
00356c60  a6 c8 0e eb                                      bl #0x708f00
00356c64  a5 0f 84 e2                                      add r0, r4, #0x294
00356c68  18 d8 02 eb                                      bl #0x40ccd0
00356c6c  24 10 9f e5                                      ldr r1, [pc, #0x24]
00356c70  04 00 a0 e1                                      mov r0, r4
00356c74  01 10 95 e7                                      ldr r1, [r5, r1]
00356c78  04 10 81 e2                                      add r1, r1, #4
00356c7c  a6 e0 08 eb                                      bl #0x58ef1c
00356c80  04 00 a0 e1                                      mov r0, r4
00356c84  70 80 bd e8                                      pop {r4, r5, r6, pc}
00356c88  ec e5 fe eb                                      bl #0x310440
00356c8c  f4 ff ff ea                                      b #0x356c64
; mapping-symbol data/literal pool
00356c90  94 de 63 00 00 42 00 00 40 31 00 00              .byte 0x94, 0xde, 0x63, 0x00, 0x00, 0x42, 0x00, 0x00, 0x40, 0x31, 0x00, 0x00

; FUNCTION 0x00356c9c, declared_size=28, range_size=28, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManagerD0Ev
; demangled: SceneManager::~SceneManager()
; decoder-mode: arm
00356c9c  10 40 2d e9                                      push {r4, lr}
00356ca0  00 40 a0 e1                                      mov r4, r0
00356ca4  d0 ff ff eb                                      bl #0x356bec
00356ca8  04 00 a0 e1                                      mov r0, r4
00356cac  e3 e5 fe eb                                      bl #0x310440
00356cb0  04 00 a0 e1                                      mov r0, r4
00356cb4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00357dc0, declared_size=228, range_size=228, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager16clearRenderListsEv
; demangled: SceneManager::clearRenderLists()
; decoder-mode: arm
00357dc0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00357dc4  5c d0 4d e2                                      sub sp, sp, #0x5c
00357dc8  00 40 a0 e3                                      mov r4, #0
00357dcc  00 50 a0 e1                                      mov r5, r0
00357dd0  50 10 8d e2                                      add r1, sp, #0x50
00357dd4  3c 00 80 e2                                      add r0, r0, #0x3c
00357dd8  50 40 8d e5                                      str r4, [sp, #0x50]
00357ddc  54 40 8d e5                                      str r4, [sp, #0x54]
00357de0  00 60 a0 e3                                      mov r6, #0
00357de4  41 ec ff eb                                      bl #0x352ef0
00357de8  00 70 a0 e3                                      mov r7, #0
00357dec  28 20 8d e2                                      add r2, sp, #0x28
00357df0  48 00 85 e2                                      add r0, r5, #0x48
00357df4  04 10 a0 e1                                      mov r1, r4
00357df8  f0 63 cd e1                                      strd r6, r7, [sp, #0x30]
00357dfc  28 40 8d e5                                      str r4, [sp, #0x28]
00357e00  18 60 8d e2                                      add r6, sp, #0x18
00357e04  2c 40 8d e5                                      str r4, [sp, #0x2c]
00357e08  2a e7 ff eb                                      bl #0x351ab8
00357e0c  6c 00 85 e2                                      add r0, r5, #0x6c
00357e10  48 10 8d e2                                      add r1, sp, #0x48
00357e14  48 40 8d e5                                      str r4, [sp, #0x48]
00357e18  4c 40 8d e5                                      str r4, [sp, #0x4c]
00357e1c  33 ec ff eb                                      bl #0x352ef0
00357e20  06 10 a0 e1                                      mov r1, r6
00357e24  78 00 85 e2                                      add r0, r5, #0x78
00357e28  18 40 8d e5                                      str r4, [sp, #0x18]
00357e2c  1c 40 8d e5                                      str r4, [sp, #0x1c]
00357e30  20 40 8d e5                                      str r4, [sp, #0x20]
00357e34  24 40 8d e5                                      str r4, [sp, #0x24]
00357e38  3d fe ff eb                                      bl #0x357734
00357e3c  08 00 86 e2                                      add r0, r6, #8
00357e40  fd e7 ff eb                                      bl #0x351e3c
00357e44  54 00 85 e2                                      add r0, r5, #0x54
00357e48  40 10 8d e2                                      add r1, sp, #0x40
00357e4c  04 60 8d e2                                      add r6, sp, #4
00357e50  40 40 8d e5                                      str r4, [sp, #0x40]
00357e54  44 40 8d e5                                      str r4, [sp, #0x44]
00357e58  cf ed ff eb                                      bl #0x35359c
00357e5c  60 00 85 e2                                      add r0, r5, #0x60
00357e60  38 10 8d e2                                      add r1, sp, #0x38
00357e64  38 40 8d e5                                      str r4, [sp, #0x38]
00357e68  3c 40 8d e5                                      str r4, [sp, #0x3c]
00357e6c  ca ed ff eb                                      bl #0x35359c
00357e70  84 00 85 e2                                      add r0, r5, #0x84
00357e74  00 30 a0 e3                                      mov r3, #0
00357e78  06 10 a0 e1                                      mov r1, r6
00357e7c  10 40 8d e5                                      str r4, [sp, #0x10]
00357e80  14 30 8d e5                                      str r3, [sp, #0x14]
00357e84  04 40 8d e5                                      str r4, [sp, #4]
00357e88  08 40 8d e5                                      str r4, [sp, #8]
00357e8c  0c 40 8d e5                                      str r4, [sp, #0xc]
00357e90  b2 ff ff eb                                      bl #0x357d60
00357e94  08 00 86 e2                                      add r0, r6, #8
00357e98  e7 e7 ff eb                                      bl #0x351e3c
00357e9c  5c d0 8d e2                                      add sp, sp, #0x5c
00357ea0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00357ea4, declared_size=356, range_size=356, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager19_registerSceneNodesEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::_registerSceneNodes(glitch::scene::ISceneNode*)
; decoder-mode: arm
00357ea4  70 40 2d e9                                      push {r4, r5, r6, lr}
00357ea8  00 40 a0 e1                                      mov r4, r0
00357eac  40 04 90 e5                                      ldr r0, [r0, #0x440]
00357eb0  3c 21 9f e5                                      ldr r2, [pc, #0x13c]
00357eb4  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
00357eb8  01 00 80 e2                                      add r0, r0, #1
00357ebc  40 04 84 e5                                      str r0, [r4, #0x440]
00357ec0  02 20 8f e0                                      add r2, pc, r2
00357ec4  0c 20 d2 e5                                      ldrb r2, [r2, #0xc]
00357ec8  03 30 8f e0                                      add r3, pc, r3
00357ecc  01 60 a0 e1                                      mov r6, r1
00357ed0  00 00 52 e3                                      cmp r2, #0
00357ed4  3f 00 00 0a                                      beq #0x357fd8
00357ed8  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
00357edc  02 20 93 e7                                      ldr r2, [r3, r2]
00357ee0  00 10 a0 e3                                      mov r1, #0
00357ee4  40 14 84 e5                                      str r1, [r4, #0x440]
00357ee8  30 20 d2 e5                                      ldrb r2, [r2, #0x30]
00357eec  01 00 52 e1                                      cmp r2, r1
00357ef0  01 10 a0 13                                      movne r1, #1
00357ef4  3c 00 00 0a                                      beq #0x357fec
00357ef8  00 21 9f e5                                      ldr r2, [pc, #0x100]
00357efc  02 20 8f e0                                      add r2, pc, r2
00357f00  0c 10 c2 e5                                      strb r1, [r2, #0xc]
00357f04  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00357f08  02 00 93 e7                                      ldr r0, [r3, r2]
00357f0c  a0 1d ff eb                                      bl #0x31f594
00357f10  89 32 d4 e5                                      ldrb r3, [r4, #0x289]
00357f14  00 50 a0 e1                                      mov r5, r0
00357f18  00 00 53 e3                                      cmp r3, #0
00357f1c  1f 00 00 1a                                      bne #0x357fa0
00357f20  40 04 94 e5                                      ldr r0, [r4, #0x440]
00357f24  44 14 94 e5                                      ldr r1, [r4, #0x444]
00357f28  75 da fe eb                                      bl #0x30e904
00357f2c  00 00 51 e3                                      cmp r1, #0
00357f30  1a 00 00 0a                                      beq #0x357fa0
00357f34  00 00 55 e3                                      cmp r5, #0
00357f38  06 00 00 0a                                      beq #0x357f58
00357f3c  58 31 95 e5                                      ldr r3, [r5, #0x158]
00357f40  00 00 53 e3                                      cmp r3, #0
00357f44  03 00 00 0a                                      beq #0x357f58
00357f48  34 00 93 e5                                      ldr r0, [r3, #0x34]
00357f4c  00 00 50 e3                                      cmp r0, #0
00357f50  00 00 00 0a                                      beq #0x357f58
00357f54  f0 d5 06 eb                                      bl #0x50d71c
00357f58  7c 34 94 e5                                      ldr r3, [r4, #0x47c]
00357f5c  80 64 94 e5                                      ldr r6, [r4, #0x480]
00357f60  06 60 63 e0                                      rsb r6, r3, r6
00357f64  46 61 a0 e1                                      asr r6, r6, #2
00357f68  00 00 56 e3                                      cmp r6, #0
00357f6c  0a 00 00 da                                      ble #0x357f9c
00357f70  00 50 a0 e3                                      mov r5, #0
00357f74  00 00 00 ea                                      b #0x357f7c
00357f78  7c 34 94 e5                                      ldr r3, [r4, #0x47c]
00357f7c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00357f80  01 50 85 e2                                      add r5, r5, #1
00357f84  03 00 a0 e1                                      mov r0, r3
00357f88  00 30 93 e5                                      ldr r3, [r3]
00357f8c  0f e0 a0 e1                                      mov lr, pc
00357f90  00 f0 93 e5                                      ldr pc, [r3]
00357f94  06 00 55 e1                                      cmp r5, r6
00357f98  f6 ff ff 1a                                      bne #0x357f78
00357f9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00357fa0  04 00 a0 e1                                      mov r0, r4
00357fa4  85 ff ff eb                                      bl #0x357dc0
00357fa8  7c 34 94 e5                                      ldr r3, [r4, #0x47c]
00357fac  80 24 94 e5                                      ldr r2, [r4, #0x480]
00357fb0  06 10 a0 e1                                      mov r1, r6
00357fb4  04 00 a0 e1                                      mov r0, r4
00357fb8  02 00 53 e1                                      cmp r3, r2
00357fbc  80 34 84 15                                      strne r3, [r4, #0x480]
00357fc0  31 ce 08 eb                                      bl #0x58b88c
00357fc4  00 30 a0 e3                                      mov r3, #0
00357fc8  48 34 c4 e5                                      strb r3, [r4, #0x448]
00357fcc  40 34 84 e5                                      str r3, [r4, #0x440]
00357fd0  89 32 c4 e5                                      strb r3, [r4, #0x289]
00357fd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00357fd8  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00357fdc  02 10 93 e7                                      ldr r1, [r3, r2]
00357fe0  30 10 d1 e5                                      ldrb r1, [r1, #0x30]
00357fe4  00 00 51 e3                                      cmp r1, #0
00357fe8  bb ff ff 1a                                      bne #0x357edc
00357fec  48 14 d4 e5                                      ldrb r1, [r4, #0x448]
00357ff0  c0 ff ff ea                                      b #0x357ef8
; mapping-symbol data/literal pool
00357ff4  28 a0 64 00 c8 cb 63 00 20 1a 00 00 ec 9f 64 00  .byte 0x28, 0xa0, 0x64, 0x00, 0xc8, 0xcb, 0x63, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xec, 0x9f, 0x64, 0x00
00358004  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00358008, declared_size=1556, range_size=1556, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager17renderCustomListsEPN6glitch5video12IVideoDriverE
; demangled: SceneManager::renderCustomLists(glitch::video::IVideoDriver*)
; decoder-mode: arm
00358008  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035800c  3c 20 80 e2                                      add r2, r0, #0x3c
00358010  84 d0 4d e2                                      sub sp, sp, #0x84
00358014  01 70 a0 e1                                      mov r7, r1
00358018  00 10 a0 e3                                      mov r1, #0
0035801c  00 40 a0 e1                                      mov r4, r0
00358020  71 ef ff eb                                      bl #0x353dec
00358024  07 00 a0 e1                                      mov r0, r7
00358028  95 4a 09 eb                                      bl #0x5aaa84
0035802c  48 00 94 e5                                      ldr r0, [r4, #0x48]
00358030  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00358034  03 10 60 e0                                      rsb r1, r0, r3
00358038  41 12 a0 e1                                      asr r1, r1, #4
0035803c  01 00 51 e3                                      cmp r1, #1
00358040  02 00 00 9a                                      bls #0x358050
00358044  dd e3 ff eb                                      bl #0x350fc0
00358048  48 00 94 e5                                      ldr r0, [r4, #0x48]
0035804c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00358050  bc 23 d7 e1                                      ldrh r2, [r7, #0x3c]
00358054  03 00 60 e0                                      rsb r0, r0, r3
00358058  40 12 a0 e1                                      asr r1, r0, #4
0035805c  48 50 84 e2                                      add r5, r4, #0x48
00358060  00 80 a0 e3                                      mov r8, #0
00358064  02 00 51 e1                                      cmp r1, r2
00358068  02 10 a0 21                                      movhs r1, r2
0035806c  00 a0 a0 e3                                      mov sl, #0
00358070  00 b0 a0 e3                                      mov fp, #0
00358074  05 00 a0 e1                                      mov r0, r5
00358078  50 20 8d e2                                      add r2, sp, #0x50
0035807c  50 80 8d e5                                      str r8, [sp, #0x50]
00358080  54 80 8d e5                                      str r8, [sp, #0x54]
00358084  f8 a5 cd e1                                      strd sl, fp, [sp, #0x58]
00358088  8a e6 ff eb                                      bl #0x351ab8
0035808c  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
00358090  48 60 94 e5                                      ldr r6, [r4, #0x48]
00358094  50 30 94 e5                                      ldr r3, [r4, #0x50]
00358098  01 e0 a0 e3                                      mov lr, #1
0035809c  0c 60 66 e0                                      rsb r6, r6, ip
003580a0  03 00 5c e1                                      cmp ip, r3
003580a4  44 80 8d e5                                      str r8, [sp, #0x44]
003580a8  f8 a4 cd e1                                      strd sl, fp, [sp, #0x48]
003580ac  46 62 a0 e1                                      asr r6, r6, #4
003580b0  88 e4 84 e5                                      str lr, [r4, #0x488]
003580b4  74 e1 84 e5                                      str lr, [r4, #0x174]
003580b8  40 80 8d e5                                      str r8, [sp, #0x40]
003580bc  3b 01 00 0a                                      beq #0x3585b0
003580c0  40 30 8d e2                                      add r3, sp, #0x40
003580c4  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
003580c8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003580cc  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
003580d0  10 30 83 e2                                      add r3, r3, #0x10
003580d4  4c 30 84 e5                                      str r3, [r4, #0x4c]
003580d8  48 30 94 e5                                      ldr r3, [r4, #0x48]
003580dc  a8 c0 94 e5                                      ldr ip, [r4, #0xa8]
003580e0  ac 00 94 e5                                      ldr r0, [r4, #0xac]
003580e4  04 10 93 e5                                      ldr r1, [r3, #4]
003580e8  00 20 93 e5                                      ldr r2, [r3]
003580ec  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
003580f0  00 80 a0 e3                                      mov r8, #0
003580f4  00 00 56 e3                                      cmp r6, #0
003580f8  9c c0 84 e5                                      str ip, [r4, #0x9c]
003580fc  a0 00 84 e5                                      str r0, [r4, #0xa0]
00358100  a4 30 84 e5                                      str r3, [r4, #0xa4]
00358104  ac 10 84 e5                                      str r1, [r4, #0xac]
00358108  a8 20 84 e5                                      str r2, [r4, #0xa8]
0035810c  b0 80 84 e5                                      str r8, [r4, #0xb0]
00358110  16 00 00 0a                                      beq #0x358170
00358114  08 a0 a0 e1                                      mov sl, r8
00358118  00 00 00 ea                                      b #0x358120
0035811c  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
00358120  00 30 95 e5                                      ldr r3, [r5]
00358124  01 80 88 e2                                      add r8, r8, #1
00358128  ac 10 94 e5                                      ldr r1, [r4, #0xac]
0035812c  08 02 83 e0                                      add r0, r3, r8, lsl #4
00358130  08 c2 93 e7                                      ldr ip, [r3, r8, lsl #4]
00358134  04 00 90 e5                                      ldr r0, [r0, #4]
00358138  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
0035813c  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00358140  ac 00 84 e5                                      str r0, [r4, #0xac]
00358144  a4 30 84 e5                                      str r3, [r4, #0xa4]
00358148  9c 20 84 e5                                      str r2, [r4, #0x9c]
0035814c  a0 10 84 e5                                      str r1, [r4, #0xa0]
00358150  b0 a0 84 e5                                      str sl, [r4, #0xb0]
00358154  02 00 a0 e1                                      mov r0, r2
00358158  00 30 92 e5                                      ldr r3, [r2]
0035815c  0f e0 a0 e1                                      mov lr, pc
00358160  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00358164  08 00 56 e1                                      cmp r6, r8
00358168  eb ff ff 1a                                      bne #0x35811c
0035816c  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
00358170  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00358174  ac e0 94 e5                                      ldr lr, [r4, #0xac]
00358178  b0 c0 94 e5                                      ldr ip, [r4, #0xb0]
0035817c  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
00358180  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00358184  00 30 a0 e3                                      mov r3, #0
00358188  9c 20 84 e5                                      str r2, [r4, #0x9c]
0035818c  a0 e0 84 e5                                      str lr, [r4, #0xa0]
00358190  a4 c0 84 e5                                      str ip, [r4, #0xa4]
00358194  a8 00 84 e5                                      str r0, [r4, #0xa8]
00358198  ac 10 84 e5                                      str r1, [r4, #0xac]
0035819c  b0 30 84 e5                                      str r3, [r4, #0xb0]
003581a0  03 10 a0 e1                                      mov r1, r3
003581a4  05 00 a0 e1                                      mov r0, r5
003581a8  30 20 8d e2                                      add r2, sp, #0x30
003581ac  00 80 a0 e3                                      mov r8, #0
003581b0  00 90 a0 e3                                      mov sb, #0
003581b4  30 30 8d e5                                      str r3, [sp, #0x30]
003581b8  34 30 8d e5                                      str r3, [sp, #0x34]
003581bc  f8 83 cd e1                                      strd r8, sb, [sp, #0x38]
003581c0  3c e6 ff eb                                      bl #0x351ab8
003581c4  04 00 a0 e1                                      mov r0, r4
003581c8  02 10 a0 e3                                      mov r1, #2
003581cc  6c 20 84 e2                                      add r2, r4, #0x6c
003581d0  05 ef ff eb                                      bl #0x353dec
003581d4  78 00 94 e5                                      ldr r0, [r4, #0x78]
003581d8  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
003581dc  01 10 60 e0                                      rsb r1, r0, r1
003581e0  41 12 a0 e1                                      asr r1, r1, #4
003581e4  01 00 51 e3                                      cmp r1, #1
003581e8  00 00 00 9a                                      bls #0x3581f0
003581ec  2e fc ff eb                                      bl #0x3572ac
003581f0  04 00 a0 e1                                      mov r0, r4
003581f4  04 10 a0 e3                                      mov r1, #4
003581f8  78 20 84 e2                                      add r2, r4, #0x78
003581fc  5f fd ff eb                                      bl #0x357780
00358200  60 00 94 e5                                      ldr r0, [r4, #0x60]
00358204  64 30 94 e5                                      ldr r3, [r4, #0x64]
00358208  03 10 60 e0                                      rsb r1, r0, r3
0035820c  c1 11 a0 e1                                      asr r1, r1, #3
00358210  71 20 ef e6                                      uxtb r2, r1
00358214  01 00 52 e3                                      cmp r2, #1
00358218  02 00 00 9a                                      bls #0x358228
0035821c  b3 e3 ff eb                                      bl #0x3510f0
00358220  60 00 94 e5                                      ldr r0, [r4, #0x60]
00358224  64 30 94 e5                                      ldr r3, [r4, #0x64]
00358228  68 20 94 e5                                      ldr r2, [r4, #0x68]
0035822c  06 10 a0 e3                                      mov r1, #6
00358230  03 60 60 e0                                      rsb r6, r0, r3
00358234  02 00 53 e1                                      cmp r3, r2
00358238  00 20 a0 e3                                      mov r2, #0
0035823c  74 11 84 e5                                      str r1, [r4, #0x174]
00358240  88 14 84 e5                                      str r1, [r4, #0x488]
00358244  c6 61 a0 e1                                      asr r6, r6, #3
00358248  6c 20 8d e5                                      str r2, [sp, #0x6c]
0035824c  70 20 8d e5                                      str r2, [sp, #0x70]
00358250  60 50 84 e2                                      add r5, r4, #0x60
00358254  dd 00 00 0a                                      beq #0x3585d0
00358258  00 20 83 e5                                      str r2, [r3]
0035825c  70 20 9d e5                                      ldr r2, [sp, #0x70]
00358260  04 20 83 e5                                      str r2, [r3, #4]
00358264  64 30 94 e5                                      ldr r3, [r4, #0x64]
00358268  08 30 83 e2                                      add r3, r3, #8
0035826c  64 30 84 e5                                      str r3, [r4, #0x64]
00358270  60 30 94 e5                                      ldr r3, [r4, #0x60]
00358274  a8 c0 94 e5                                      ldr ip, [r4, #0xa8]
00358278  ac 00 94 e5                                      ldr r0, [r4, #0xac]
0035827c  04 20 93 e5                                      ldr r2, [r3, #4]
00358280  b0 10 94 e5                                      ldr r1, [r4, #0xb0]
00358284  00 30 93 e5                                      ldr r3, [r3]
00358288  00 80 a0 e3                                      mov r8, #0
0035828c  00 00 56 e3                                      cmp r6, #0
00358290  9c c0 84 e5                                      str ip, [r4, #0x9c]
00358294  a0 00 84 e5                                      str r0, [r4, #0xa0]
00358298  a4 10 84 e5                                      str r1, [r4, #0xa4]
0035829c  ac 20 84 e5                                      str r2, [r4, #0xac]
003582a0  a8 30 84 e5                                      str r3, [r4, #0xa8]
003582a4  b0 80 84 e5                                      str r8, [r4, #0xb0]
003582a8  16 00 00 0a                                      beq #0x358308
003582ac  08 a0 a0 e1                                      mov sl, r8
003582b0  00 00 00 ea                                      b #0x3582b8
003582b4  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
003582b8  00 20 95 e5                                      ldr r2, [r5]
003582bc  01 80 88 e2                                      add r8, r8, #1
003582c0  ac 10 94 e5                                      ldr r1, [r4, #0xac]
003582c4  88 01 82 e0                                      add r0, r2, r8, lsl #3
003582c8  88 c1 92 e7                                      ldr ip, [r2, r8, lsl #3]
003582cc  04 00 90 e5                                      ldr r0, [r0, #4]
003582d0  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
003582d4  a8 c0 84 e5                                      str ip, [r4, #0xa8]
003582d8  ac 00 84 e5                                      str r0, [r4, #0xac]
003582dc  a4 20 84 e5                                      str r2, [r4, #0xa4]
003582e0  9c 30 84 e5                                      str r3, [r4, #0x9c]
003582e4  a0 10 84 e5                                      str r1, [r4, #0xa0]
003582e8  b0 a0 84 e5                                      str sl, [r4, #0xb0]
003582ec  03 00 a0 e1                                      mov r0, r3
003582f0  00 30 93 e5                                      ldr r3, [r3]
003582f4  0f e0 a0 e1                                      mov lr, pc
003582f8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003582fc  08 00 56 e1                                      cmp r6, r8
00358300  eb ff ff 1a                                      bne #0x3582b4
00358304  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00358308  64 20 94 e5                                      ldr r2, [r4, #0x64]
0035830c  ac e0 94 e5                                      ldr lr, [r4, #0xac]
00358310  b0 c0 94 e5                                      ldr ip, [r4, #0xb0]
00358314  03 00 12 e9                                      ldmdb r2, {r0, r1}
00358318  00 20 a0 e3                                      mov r2, #0
0035831c  9c 30 84 e5                                      str r3, [r4, #0x9c]
00358320  a8 00 84 e5                                      str r0, [r4, #0xa8]
00358324  ac 10 84 e5                                      str r1, [r4, #0xac]
00358328  b0 20 84 e5                                      str r2, [r4, #0xb0]
0035832c  a0 e0 84 e5                                      str lr, [r4, #0xa0]
00358330  a4 c0 84 e5                                      str ip, [r4, #0xa4]
00358334  05 00 a0 e1                                      mov r0, r5
00358338  64 10 8d e2                                      add r1, sp, #0x64
0035833c  68 20 8d e5                                      str r2, [sp, #0x68]
00358340  64 20 8d e5                                      str r2, [sp, #0x64]
00358344  94 ec ff eb                                      bl #0x35359c
00358348  84 00 94 e5                                      ldr r0, [r4, #0x84]
0035834c  88 30 94 e5                                      ldr r3, [r4, #0x88]
00358350  03 20 60 e0                                      rsb r2, r0, r3
00358354  42 21 a0 e1                                      asr r2, r2, #2
00358358  82 10 82 e0                                      add r1, r2, r2, lsl #1
0035835c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00358360  01 14 81 e0                                      add r1, r1, r1, lsl #8
00358364  01 18 81 e0                                      add r1, r1, r1, lsl #16
00358368  01 11 82 e0                                      add r1, r2, r1, lsl #2
0035836c  01 00 51 e3                                      cmp r1, #1
00358370  02 00 00 9a                                      bls #0x358380
00358374  e3 fa ff eb                                      bl #0x356f08
00358378  84 00 94 e5                                      ldr r0, [r4, #0x84]
0035837c  88 30 94 e5                                      ldr r3, [r4, #0x88]
00358380  03 00 60 e0                                      rsb r0, r0, r3
00358384  40 01 a0 e1                                      asr r0, r0, #2
00358388  8c 20 94 e5                                      ldr r2, [r4, #0x8c]
0035838c  80 60 80 e0                                      add r6, r0, r0, lsl #1
00358390  07 10 a0 e3                                      mov r1, #7
00358394  06 62 86 e0                                      add r6, r6, r6, lsl #4
00358398  02 00 53 e1                                      cmp r3, r2
0035839c  06 64 86 e0                                      add r6, r6, r6, lsl #8
003583a0  00 20 a0 e3                                      mov r2, #0
003583a4  06 68 86 e0                                      add r6, r6, r6, lsl #16
003583a8  74 11 84 e5                                      str r1, [r4, #0x174]
003583ac  06 61 80 e0                                      add r6, r0, r6, lsl #2
003583b0  00 00 a0 e3                                      mov r0, #0
003583b4  2c 00 8d e5                                      str r0, [sp, #0x2c]
003583b8  84 50 84 e2                                      add r5, r4, #0x84
003583bc  88 14 84 e5                                      str r1, [r4, #0x488]
003583c0  1c 20 8d e5                                      str r2, [sp, #0x1c]
003583c4  20 20 8d e5                                      str r2, [sp, #0x20]
003583c8  24 20 8d e5                                      str r2, [sp, #0x24]
003583cc  28 20 8d e5                                      str r2, [sp, #0x28]
003583d0  87 00 00 0a                                      beq #0x3585f4
003583d4  00 20 83 e5                                      str r2, [r3]
003583d8  20 20 9d e5                                      ldr r2, [sp, #0x20]
003583dc  1c 80 8d e2                                      add r8, sp, #0x1c
003583e0  04 20 83 e5                                      str r2, [r3, #4]
003583e4  24 20 9d e5                                      ldr r2, [sp, #0x24]
003583e8  08 20 83 e5                                      str r2, [r3, #8]
003583ec  00 00 52 e3                                      cmp r2, #0
003583f0  00 10 92 15                                      ldrne r1, [r2]
003583f4  01 10 81 12                                      addne r1, r1, #1
003583f8  00 10 82 15                                      strne r1, [r2]
003583fc  28 20 9d e5                                      ldr r2, [sp, #0x28]
00358400  0c 20 83 e5                                      str r2, [r3, #0xc]
00358404  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00358408  10 20 83 e5                                      str r2, [r3, #0x10]
0035840c  88 30 94 e5                                      ldr r3, [r4, #0x88]
00358410  14 30 83 e2                                      add r3, r3, #0x14
00358414  88 30 84 e5                                      str r3, [r4, #0x88]
00358418  08 00 88 e2                                      add r0, r8, #8
0035841c  86 e6 ff eb                                      bl #0x351e3c
00358420  84 20 94 e5                                      ldr r2, [r4, #0x84]
00358424  a8 e0 94 e5                                      ldr lr, [r4, #0xa8]
00358428  ac c0 94 e5                                      ldr ip, [r4, #0xac]
0035842c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00358430  00 30 92 e5                                      ldr r3, [r2]
00358434  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00358438  04 20 92 e5                                      ldr r2, [r2, #4]
0035843c  00 00 56 e3                                      cmp r6, #0
00358440  9c e0 84 e5                                      str lr, [r4, #0x9c]
00358444  a0 c0 84 e5                                      str ip, [r4, #0xa0]
00358448  a4 00 84 e5                                      str r0, [r4, #0xa4]
0035844c  ac 20 84 e5                                      str r2, [r4, #0xac]
00358450  b0 10 84 e5                                      str r1, [r4, #0xb0]
00358454  a8 30 84 e5                                      str r3, [r4, #0xa8]
00358458  19 00 00 0a                                      beq #0x3584c4
0035845c  14 80 a0 e3                                      mov r8, #0x14
00358460  00 a0 a0 e3                                      mov sl, #0
00358464  00 00 00 ea                                      b #0x35846c
00358468  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0035846c  00 00 95 e5                                      ldr r0, [r5]
00358470  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00358474  b0 e0 94 e5                                      ldr lr, [r4, #0xb0]
00358478  08 20 80 e0                                      add r2, r0, r8
0035847c  08 c0 90 e7                                      ldr ip, [r0, r8]
00358480  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00358484  04 20 92 e5                                      ldr r2, [r2, #4]
00358488  a4 e0 84 e5                                      str lr, [r4, #0xa4]
0035848c  b0 00 84 e5                                      str r0, [r4, #0xb0]
00358490  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00358494  ac 20 84 e5                                      str r2, [r4, #0xac]
00358498  9c 30 84 e5                                      str r3, [r4, #0x9c]
0035849c  a0 10 84 e5                                      str r1, [r4, #0xa0]
003584a0  03 00 a0 e1                                      mov r0, r3
003584a4  01 a0 8a e2                                      add sl, sl, #1
003584a8  00 30 93 e5                                      ldr r3, [r3]
003584ac  0f e0 a0 e1                                      mov lr, pc
003584b0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003584b4  0a 00 56 e1                                      cmp r6, sl
003584b8  14 80 88 e2                                      add r8, r8, #0x14
003584bc  e9 ff ff 1a                                      bne #0x358468
003584c0  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
003584c4  88 10 94 e5                                      ldr r1, [r4, #0x88]
003584c8  ac e0 94 e5                                      ldr lr, [r4, #0xac]
003584cc  b0 c0 94 e5                                      ldr ip, [r4, #0xb0]
003584d0  14 20 41 e2                                      sub r2, r1, #0x14
003584d4  14 00 11 e5                                      ldr r0, [r1, #-0x14]
003584d8  0c 10 92 e5                                      ldr r1, [r2, #0xc]
003584dc  04 20 92 e5                                      ldr r2, [r2, #4]
003584e0  08 60 8d e2                                      add r6, sp, #8
003584e4  9c 30 84 e5                                      str r3, [r4, #0x9c]
003584e8  a0 e0 84 e5                                      str lr, [r4, #0xa0]
003584ec  a4 c0 84 e5                                      str ip, [r4, #0xa4]
003584f0  a8 00 84 e5                                      str r0, [r4, #0xa8]
003584f4  ac 20 84 e5                                      str r2, [r4, #0xac]
003584f8  b0 10 84 e5                                      str r1, [r4, #0xb0]
003584fc  00 30 a0 e3                                      mov r3, #0
00358500  06 10 a0 e1                                      mov r1, r6
00358504  00 20 a0 e3                                      mov r2, #0
00358508  05 00 a0 e1                                      mov r0, r5
0035850c  14 30 8d e5                                      str r3, [sp, #0x14]
00358510  08 30 8d e5                                      str r3, [sp, #8]
00358514  0c 30 8d e5                                      str r3, [sp, #0xc]
00358518  10 30 8d e5                                      str r3, [sp, #0x10]
0035851c  18 20 8d e5                                      str r2, [sp, #0x18]
00358520  0e fe ff eb                                      bl #0x357d60
00358524  08 00 86 e2                                      add r0, r6, #8
00358528  43 e6 ff eb                                      bl #0x351e3c
0035852c  74 14 94 e5                                      ldr r1, [r4, #0x474]
00358530  70 34 94 e5                                      ldr r3, [r4, #0x470]
00358534  01 10 63 e0                                      rsb r1, r3, r1
00358538  41 12 a0 e1                                      asr r1, r1, #4
0035853c  01 00 51 e3                                      cmp r1, #1
00358540  01 00 00 9a                                      bls #0x35854c
00358544  64 04 94 e5                                      ldr r0, [r4, #0x464]
00358548  57 fb ff eb                                      bl #0x3572ac
0035854c  04 00 a0 e1                                      mov r0, r4
00358550  0a 10 a0 e3                                      mov r1, #0xa
00358554  47 2e 84 e2                                      add r2, r4, #0x470
00358558  88 fc ff eb                                      bl #0x357780
0035855c  07 00 a0 e1                                      mov r0, r7
00358560  02 10 a0 e3                                      mov r1, #2
00358564  00 30 97 e5                                      ldr r3, [r7]
00358568  0f e0 a0 e1                                      mov lr, pc
0035856c  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
00358570  64 04 94 e5                                      ldr r0, [r4, #0x464]
00358574  68 14 94 e5                                      ldr r1, [r4, #0x468]
00358578  01 10 60 e0                                      rsb r1, r0, r1
0035857c  41 12 a0 e1                                      asr r1, r1, #4
00358580  01 00 51 e3                                      cmp r1, #1
00358584  00 00 00 9a                                      bls #0x35858c
00358588  47 fb ff eb                                      bl #0x3572ac
0035858c  46 2e 84 e2                                      add r2, r4, #0x460
00358590  04 00 a0 e1                                      mov r0, r4
00358594  04 20 82 e2                                      add r2, r2, #4
00358598  09 10 a0 e3                                      mov r1, #9
0035859c  77 fc ff eb                                      bl #0x357780
003585a0  04 00 a0 e1                                      mov r0, r4
003585a4  69 cb 08 eb                                      bl #0x58b350
003585a8  84 d0 8d e2                                      add sp, sp, #0x84
003585ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003585b0  0c 10 a0 e1                                      mov r1, ip
003585b4  05 00 a0 e1                                      mov r0, r5
003585b8  40 20 8d e2                                      add r2, sp, #0x40
003585bc  7c 30 8d e2                                      add r3, sp, #0x7c
003585c0  04 e0 8d e5                                      str lr, [sp, #4]
003585c4  00 e0 8d e5                                      str lr, [sp]
003585c8  d4 e4 ff eb                                      bl #0x351920
003585cc  c1 fe ff ea                                      b #0x3580d8
003585d0  01 c0 a0 e3                                      mov ip, #1
003585d4  03 10 a0 e1                                      mov r1, r3
003585d8  05 00 a0 e1                                      mov r0, r5
003585dc  6c 20 8d e2                                      add r2, sp, #0x6c
003585e0  78 30 8d e2                                      add r3, sp, #0x78
003585e4  04 c0 8d e5                                      str ip, [sp, #4]
003585e8  00 c0 8d e5                                      str ip, [sp]
003585ec  aa e5 ff eb                                      bl #0x351c9c
003585f0  1e ff ff ea                                      b #0x358270
003585f4  1c 80 8d e2                                      add r8, sp, #0x1c
003585f8  01 c0 a0 e3                                      mov ip, #1
003585fc  03 10 a0 e1                                      mov r1, r3
00358600  05 00 a0 e1                                      mov r0, r5
00358604  08 20 a0 e1                                      mov r2, r8
00358608  74 30 8d e2                                      add r3, sp, #0x74
0035860c  04 c0 8d e5                                      str ip, [sp, #4]
00358610  00 c0 8d e5                                      str ip, [sp]
00358614  c0 f8 ff eb                                      bl #0x35691c
00358618  7e ff ff ea                                      b #0x358418

; FUNCTION 0x003586ac, declared_size=244, range_size=244, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeERSt6vectorIS3_NS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEERKSsb
; demangled: SceneManager::SearchByName(glitch::scene::ISceneNode*, std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, bool)
; decoder-mode: arm
003586ac  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003586b0  00 c0 51 e2                                      subs ip, r1, #0
003586b4  14 d0 4d e2                                      sub sp, sp, #0x14
003586b8  00 a0 a0 e1                                      mov sl, r0
003586bc  0c 10 8d e5                                      str r1, [sp, #0xc]
003586c0  02 60 a0 e1                                      mov r6, r2
003586c4  03 70 a0 e1                                      mov r7, r3
003586c8  30 80 dd e5                                      ldrb r8, [sp, #0x30]
003586cc  22 00 00 0a                                      beq #0x35875c
003586d0  00 00 58 e3                                      cmp r8, #0
003586d4  22 00 00 1a                                      bne #0x358764
003586d8  0c 00 a0 e1                                      mov r0, ip
003586dc  00 30 9c e5                                      ldr r3, [ip]
003586e0  0f e0 a0 e1                                      mov lr, pc
003586e4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003586e8  14 10 97 e5                                      ldr r1, [r7, #0x14]
003586ec  0a d7 fe eb                                      bl #0x30e31c
003586f0  00 00 50 e3                                      cmp r0, #0
003586f4  07 00 00 1a                                      bne #0x358718
003586f8  0a 00 96 e9                                      ldmib r6, {r1, r3}
003586fc  03 00 51 e1                                      cmp r1, r3
00358700  22 00 00 0a                                      beq #0x358790
00358704  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00358708  00 30 81 e5                                      str r3, [r1]
0035870c  04 30 96 e5                                      ldr r3, [r6, #4]
00358710  04 30 83 e2                                      add r3, r3, #4
00358714  04 30 86 e5                                      str r3, [r6, #4]
00358718  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0035871c  a9 fa 08 eb                                      bl #0x5971c8
00358720  00 50 a0 e1                                      mov r5, r0
00358724  04 40 b5 e5                                      ldr r4, [r5, #4]!
00358728  05 00 54 e1                                      cmp r4, r5
0035872c  0a 00 00 0a                                      beq #0x35875c
00358730  00 00 54 e3                                      cmp r4, #0
00358734  04 10 a0 01                                      moveq r1, r4
00358738  04 10 44 12                                      subne r1, r4, #4
0035873c  0a 00 a0 e1                                      mov r0, sl
00358740  06 20 a0 e1                                      mov r2, r6
00358744  07 30 a0 e1                                      mov r3, r7
00358748  00 80 8d e5                                      str r8, [sp]
0035874c  d6 ff ff eb                                      bl #0x3586ac
00358750  00 40 94 e5                                      ldr r4, [r4]
00358754  04 00 55 e1                                      cmp r5, r4
00358758  f4 ff ff 1a                                      bne #0x358730
0035875c  14 d0 8d e2                                      add sp, sp, #0x14
00358760  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00358764  0c 00 a0 e1                                      mov r0, ip
00358768  00 30 9c e5                                      ldr r3, [ip]
0035876c  0f e0 a0 e1                                      mov lr, pc
00358770  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00358774  14 10 97 e5                                      ldr r1, [r7, #0x14]
00358778  10 20 97 e5                                      ldr r2, [r7, #0x10]
0035877c  02 20 61 e0                                      rsb r2, r1, r2
00358780  3d d9 fe eb                                      bl #0x30ec7c
00358784  00 00 50 e3                                      cmp r0, #0
00358788  e2 ff ff 1a                                      bne #0x358718
0035878c  d9 ff ff ea                                      b #0x3586f8
00358790  06 00 a0 e1                                      mov r0, r6
00358794  0c 20 8d e2                                      add r2, sp, #0xc
00358798  9f ff ff eb                                      bl #0x35861c
0035879c  dd ff ff ea                                      b #0x358718

; FUNCTION 0x003587a0, declared_size=2832, range_size=2832, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12_renderListsEPN6glitch5video12IVideoDriverE
; demangled: SceneManager::_renderLists(glitch::video::IVideoDriver*)
; decoder-mode: arm
003587a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003587a4  40 34 90 e5                                      ldr r3, [r0, #0x440]
003587a8  c4 d0 4d e2                                      sub sp, sp, #0xc4
003587ac  00 40 a0 e1                                      mov r4, r0
003587b0  00 00 53 e3                                      cmp r3, #0
003587b4  1c 10 8d e5                                      str r1, [sp, #0x1c]
003587b8  48 50 80 12                                      addne r5, r0, #0x48
003587bc  3b 00 00 1a                                      bne #0x3588b0
003587c0  48 00 90 e5                                      ldr r0, [r0, #0x48]
003587c4  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
003587c8  03 10 60 e0                                      rsb r1, r0, r3
003587cc  41 12 a0 e1                                      asr r1, r1, #4
003587d0  01 00 51 e3                                      cmp r1, #1
003587d4  02 00 00 9a                                      bls #0x3587e4
003587d8  f8 e1 ff eb                                      bl #0x350fc0
003587dc  48 00 94 e5                                      ldr r0, [r4, #0x48]
003587e0  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
003587e4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003587e8  03 30 60 e0                                      rsb r3, r0, r3
003587ec  48 50 84 e2                                      add r5, r4, #0x48
003587f0  bc 23 d1 e1                                      ldrh r2, [r1, #0x3c]
003587f4  43 12 a0 e1                                      asr r1, r3, #4
003587f8  05 00 a0 e1                                      mov r0, r5
003587fc  02 00 51 e1                                      cmp r1, r2
00358800  02 10 a0 21                                      movhs r1, r2
00358804  00 30 a0 e3                                      mov r3, #0
00358808  90 20 8d e2                                      add r2, sp, #0x90
0035880c  00 60 a0 e3                                      mov r6, #0
00358810  00 70 a0 e3                                      mov r7, #0
00358814  94 30 8d e5                                      str r3, [sp, #0x94]
00358818  f8 69 cd e1                                      strd r6, r7, [sp, #0x98]
0035881c  90 30 8d e5                                      str r3, [sp, #0x90]
00358820  a4 e4 ff eb                                      bl #0x351ab8
00358824  78 00 94 e5                                      ldr r0, [r4, #0x78]
00358828  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0035882c  01 10 60 e0                                      rsb r1, r0, r1
00358830  41 12 a0 e1                                      asr r1, r1, #4
00358834  01 00 51 e3                                      cmp r1, #1
00358838  00 00 00 9a                                      bls #0x358840
0035883c  9a fa ff eb                                      bl #0x3572ac
00358840  54 00 94 e5                                      ldr r0, [r4, #0x54]
00358844  58 10 94 e5                                      ldr r1, [r4, #0x58]
00358848  01 10 60 e0                                      rsb r1, r0, r1
0035884c  c1 11 a0 e1                                      asr r1, r1, #3
00358850  71 30 ef e6                                      uxtb r3, r1
00358854  01 00 53 e3                                      cmp r3, #1
00358858  00 00 00 9a                                      bls #0x358860
0035885c  23 e2 ff eb                                      bl #0x3510f0
00358860  60 00 94 e5                                      ldr r0, [r4, #0x60]
00358864  64 10 94 e5                                      ldr r1, [r4, #0x64]
00358868  01 10 60 e0                                      rsb r1, r0, r1
0035886c  c1 11 a0 e1                                      asr r1, r1, #3
00358870  71 30 ef e6                                      uxtb r3, r1
00358874  01 00 53 e3                                      cmp r3, #1
00358878  00 00 00 9a                                      bls #0x358880
0035887c  1b e2 ff eb                                      bl #0x3510f0
00358880  84 00 94 e5                                      ldr r0, [r4, #0x84]
00358884  88 30 94 e5                                      ldr r3, [r4, #0x88]
00358888  03 30 60 e0                                      rsb r3, r0, r3
0035888c  43 31 a0 e1                                      asr r3, r3, #2
00358890  83 10 83 e0                                      add r1, r3, r3, lsl #1
00358894  01 12 81 e0                                      add r1, r1, r1, lsl #4
00358898  01 14 81 e0                                      add r1, r1, r1, lsl #8
0035889c  01 18 81 e0                                      add r1, r1, r1, lsl #16
003588a0  01 11 83 e0                                      add r1, r3, r1, lsl #2
003588a4  01 00 51 e3                                      cmp r1, #1
003588a8  00 00 00 9a                                      bls #0x3588b0
003588ac  95 f9 ff eb                                      bl #0x356f08
003588b0  3c 34 d4 e5                                      ldrb r3, [r4, #0x43c]
003588b4  00 10 a0 e3                                      mov r1, #0
003588b8  3c 20 84 e2                                      add r2, r4, #0x3c
003588bc  04 00 a0 e1                                      mov r0, r4
003588c0  20 30 8d e5                                      str r3, [sp, #0x20]
003588c4  a1 ed ff eb                                      bl #0x353f50
003588c8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003588cc  6c 48 09 eb                                      bl #0x5aaa84
003588d0  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
003588d4  48 60 94 e5                                      ldr r6, [r4, #0x48]
003588d8  50 20 94 e5                                      ldr r2, [r4, #0x50]
003588dc  00 30 a0 e3                                      mov r3, #0
003588e0  0c 60 66 e0                                      rsb r6, r6, ip
003588e4  01 e0 a0 e3                                      mov lr, #1
003588e8  00 00 a0 e3                                      mov r0, #0
003588ec  00 10 a0 e3                                      mov r1, #0
003588f0  02 00 5c e1                                      cmp ip, r2
003588f4  84 30 8d e5                                      str r3, [sp, #0x84]
003588f8  f8 08 cd e1                                      strd r0, r1, [sp, #0x88]
003588fc  46 62 a0 e1                                      asr r6, r6, #4
00358900  74 e1 84 e5                                      str lr, [r4, #0x174]
00358904  80 30 8d e5                                      str r3, [sp, #0x80]
00358908  4f 02 00 0a                                      beq #0x35924c
0035890c  80 30 8d e2                                      add r3, sp, #0x80
00358910  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00358914  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00358918  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0035891c  10 30 83 e2                                      add r3, r3, #0x10
00358920  4c 30 84 e5                                      str r3, [r4, #0x4c]
00358924  48 30 94 e5                                      ldr r3, [r4, #0x48]
00358928  b0 70 94 e5                                      ldr r7, [r4, #0xb0]
0035892c  ac 20 94 e5                                      ldr r2, [r4, #0xac]
00358930  04 00 93 e5                                      ldr r0, [r3, #4]
00358934  00 10 93 e5                                      ldr r1, [r3]
00358938  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
0035893c  a4 70 84 e5                                      str r7, [r4, #0xa4]
00358940  00 00 56 e3                                      cmp r6, #0
00358944  00 70 a0 e3                                      mov r7, #0
00358948  a0 20 84 e5                                      str r2, [r4, #0xa0]
0035894c  9c 30 84 e5                                      str r3, [r4, #0x9c]
00358950  00 20 a0 e1                                      mov r2, r0
00358954  a8 10 84 e5                                      str r1, [r4, #0xa8]
00358958  ac 00 84 e5                                      str r0, [r4, #0xac]
0035895c  b0 70 84 e5                                      str r7, [r4, #0xb0]
00358960  16 00 00 0a                                      beq #0x3589c0
00358964  07 80 a0 e1                                      mov r8, r7
00358968  00 20 95 e5                                      ldr r2, [r5]
0035896c  01 70 87 e2                                      add r7, r7, #1
00358970  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00358974  07 12 82 e0                                      add r1, r2, r7, lsl #4
00358978  04 00 91 e5                                      ldr r0, [r1, #4]
0035897c  07 c2 92 e7                                      ldr ip, [r2, r7, lsl #4]
00358980  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00358984  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
00358988  ac 00 84 e5                                      str r0, [r4, #0xac]
0035898c  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00358990  a4 20 84 e5                                      str r2, [r4, #0xa4]
00358994  9c 30 84 e5                                      str r3, [r4, #0x9c]
00358998  a0 10 84 e5                                      str r1, [r4, #0xa0]
0035899c  b0 80 84 e5                                      str r8, [r4, #0xb0]
003589a0  03 00 a0 e1                                      mov r0, r3
003589a4  00 30 93 e5                                      ldr r3, [r3]
003589a8  0f e0 a0 e1                                      mov lr, pc
003589ac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003589b0  07 00 56 e1                                      cmp r6, r7
003589b4  eb ff ff 1a                                      bne #0x358968
003589b8  a8 10 84 e2                                      add r1, r4, #0xa8
003589bc  86 00 91 e8                                      ldm r1, {r1, r2, r7}
003589c0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
003589c4  20 80 9d e5                                      ldr r8, [sp, #0x20]
003589c8  00 30 a0 e3                                      mov r3, #0
003589cc  10 c0 40 e2                                      sub ip, r0, #0x10
003589d0  10 e0 10 e5                                      ldr lr, [r0, #-0x10]
003589d4  04 00 9c e5                                      ldr r0, [ip, #4]
003589d8  00 00 58 e3                                      cmp r8, #0
003589dc  9c 10 84 e5                                      str r1, [r4, #0x9c]
003589e0  a0 20 84 e5                                      str r2, [r4, #0xa0]
003589e4  a4 70 84 e5                                      str r7, [r4, #0xa4]
003589e8  a8 e0 84 e5                                      str lr, [r4, #0xa8]
003589ec  ac 00 84 e5                                      str r0, [r4, #0xac]
003589f0  b0 30 84 e5                                      str r3, [r4, #0xb0]
003589f4  4c c0 84 05                                      streq ip, [r4, #0x4c]
003589f8  08 00 00 0a                                      beq #0x358a20
003589fc  00 60 a0 e3                                      mov r6, #0
00358a00  00 70 a0 e3                                      mov r7, #0
00358a04  05 00 a0 e1                                      mov r0, r5
00358a08  03 10 a0 e1                                      mov r1, r3
00358a0c  70 20 8d e2                                      add r2, sp, #0x70
00358a10  f8 67 cd e1                                      strd r6, r7, [sp, #0x78]
00358a14  70 30 8d e5                                      str r3, [sp, #0x70]
00358a18  74 30 8d e5                                      str r3, [sp, #0x74]
00358a1c  25 e4 ff eb                                      bl #0x351ab8
00358a20  02 10 a0 e3                                      mov r1, #2
00358a24  20 30 9d e5                                      ldr r3, [sp, #0x20]
00358a28  04 00 a0 e1                                      mov r0, r4
00358a2c  6c 20 84 e2                                      add r2, r4, #0x6c
00358a30  46 ed ff eb                                      bl #0x353f50
00358a34  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00358a38  78 30 94 e5                                      ldr r3, [r4, #0x78]
00358a3c  01 30 63 e0                                      rsb r3, r3, r1
00358a40  43 32 b0 e1                                      asrs r3, r3, #4
00358a44  10 30 8d e5                                      str r3, [sp, #0x10]
00358a48  c4 00 00 0a                                      beq #0x358d60
00358a4c  80 20 94 e5                                      ldr r2, [r4, #0x80]
00358a50  00 30 a0 e3                                      mov r3, #0
00358a54  78 50 84 e2                                      add r5, r4, #0x78
00358a58  02 00 51 e1                                      cmp r1, r2
00358a5c  04 20 a0 e3                                      mov r2, #4
00358a60  74 21 84 e5                                      str r2, [r4, #0x174]
00358a64  60 30 8d e5                                      str r3, [sp, #0x60]
00358a68  64 30 8d e5                                      str r3, [sp, #0x64]
00358a6c  68 30 8d e5                                      str r3, [sp, #0x68]
00358a70  6c 30 8d e5                                      str r3, [sp, #0x6c]
00358a74  fc 01 00 0a                                      beq #0x35926c
00358a78  00 30 81 e5                                      str r3, [r1]
00358a7c  64 30 9d e5                                      ldr r3, [sp, #0x64]
00358a80  60 60 8d e2                                      add r6, sp, #0x60
00358a84  04 30 81 e5                                      str r3, [r1, #4]
00358a88  68 30 9d e5                                      ldr r3, [sp, #0x68]
00358a8c  08 30 81 e5                                      str r3, [r1, #8]
00358a90  00 00 53 e3                                      cmp r3, #0
00358a94  00 20 93 15                                      ldrne r2, [r3]
00358a98  01 20 82 12                                      addne r2, r2, #1
00358a9c  00 20 83 15                                      strne r2, [r3]
00358aa0  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
00358aa4  0c 30 81 e5                                      str r3, [r1, #0xc]
00358aa8  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
00358aac  10 30 83 e2                                      add r3, r3, #0x10
00358ab0  7c 30 84 e5                                      str r3, [r4, #0x7c]
00358ab4  08 00 86 e2                                      add r0, r6, #8
00358ab8  df e4 ff eb                                      bl #0x351e3c
00358abc  78 30 94 e5                                      ldr r3, [r4, #0x78]
00358ac0  a8 e0 94 e5                                      ldr lr, [r4, #0xa8]
00358ac4  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00358ac8  00 10 93 e5                                      ldr r1, [r3]
00358acc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00358ad0  ac c0 94 e5                                      ldr ip, [r4, #0xac]
00358ad4  04 30 93 e5                                      ldr r3, [r3, #4]
00358ad8  00 70 a0 e3                                      mov r7, #0
00358adc  9c e0 84 e5                                      str lr, [r4, #0x9c]
00358ae0  a4 00 84 e5                                      str r0, [r4, #0xa4]
00358ae4  a8 10 84 e5                                      str r1, [r4, #0xa8]
00358ae8  ac e0 8d e2                                      add lr, sp, #0xac
00358aec  a8 00 8d e2                                      add r0, sp, #0xa8
00358af0  b0 10 8d e2                                      add r1, sp, #0xb0
00358af4  a0 c0 84 e5                                      str ip, [r4, #0xa0]
00358af8  ac 30 84 e5                                      str r3, [r4, #0xac]
00358afc  b0 20 84 e5                                      str r2, [r4, #0xb0]
00358b00  01 90 a0 e3                                      mov sb, #1
00358b04  07 60 a0 e1                                      mov r6, r7
00358b08  18 e0 8d e5                                      str lr, [sp, #0x18]
00358b0c  14 00 8d e5                                      str r0, [sp, #0x14]
00358b10  24 10 8d e5                                      str r1, [sp, #0x24]
00358b14  00 20 95 e5                                      ldr r2, [r5]
00358b18  14 00 94 e5                                      ldr r0, [r4, #0x14]
00358b1c  01 70 87 e2                                      add r7, r7, #1
00358b20  06 10 82 e0                                      add r1, r2, r6
00358b24  08 30 91 e5                                      ldr r3, [r1, #8]
00358b28  06 80 92 e7                                      ldr r8, [r2, r6]
00358b2c  88 a0 90 e5                                      ldr sl, [r0, #0x88]
00358b30  00 00 53 e3                                      cmp r3, #0
00358b34  04 10 91 e5                                      ldr r1, [r1, #4]
00358b38  a8 30 8d e5                                      str r3, [sp, #0xa8]
00358b3c  00 20 93 15                                      ldrne r2, [r3]
00358b40  07 62 a0 e1                                      lsl r6, r7, #4
00358b44  00 00 a0 e3                                      mov r0, #0
00358b48  01 20 82 12                                      addne r2, r2, #1
00358b4c  00 20 83 15                                      strne r2, [r3]
00358b50  00 20 95 15                                      ldrne r2, [r5]
00358b54  04 30 95 e5                                      ldr r3, [r5, #4]
00358b58  5a a4 e0 e7                                      ubfx sl, sl, #8, #1
00358b5c  03 30 62 e0                                      rsb r3, r2, r3
00358b60  43 02 57 e1                                      cmp r7, r3, asr #4
00358b64  06 30 82 e0                                      add r3, r2, r6
00358b68  04 e0 93 e5                                      ldr lr, [r3, #4]
00358b6c  00 b0 a0 21                                      movhs fp, r0
00358b70  ac 00 8d e5                                      str r0, [sp, #0xac]
00358b74  0c e0 8d e5                                      str lr, [sp, #0xc]
00358b78  10 00 00 2a                                      bhs #0x358bc0
00358b7c  08 30 93 e5                                      ldr r3, [r3, #8]
00358b80  07 b2 92 e7                                      ldr fp, [r2, r7, lsl #4]
00358b84  00 00 53 e3                                      cmp r3, #0
00358b88  b0 30 8d e5                                      str r3, [sp, #0xb0]
00358b8c  00 20 93 15                                      ldrne r2, [r3]
00358b90  00 20 a0 03                                      moveq r2, #0
00358b94  02 30 a0 01                                      moveq r3, r2
00358b98  01 20 82 12                                      addne r2, r2, #1
00358b9c  00 20 83 15                                      strne r2, [r3]
00358ba0  b0 30 9d 15                                      ldrne r3, [sp, #0xb0]
00358ba4  ac 20 9d 15                                      ldrne r2, [sp, #0xac]
00358ba8  24 00 9d e5                                      ldr r0, [sp, #0x24]
00358bac  08 10 8d e5                                      str r1, [sp, #8]
00358bb0  b0 20 8d e5                                      str r2, [sp, #0xb0]
00358bb4  ac 30 8d e5                                      str r3, [sp, #0xac]
00358bb8  9f e4 ff eb                                      bl #0x351e3c
00358bbc  08 10 9d e5                                      ldr r1, [sp, #8]
00358bc0  00 30 98 e5                                      ldr r3, [r8]
00358bc4  08 00 a0 e1                                      mov r0, r8
00358bc8  0f e0 a0 e1                                      mov lr, pc
00358bcc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00358bd0  14 30 94 e5                                      ldr r3, [r4, #0x14]
00358bd4  0c 31 93 e5                                      ldr r3, [r3, #0x10c]
00358bd8  03 00 50 e1                                      cmp r0, r3
00358bdc  00 80 a0 c3                                      movgt r8, #0
00358be0  01 30 a0 c3                                      movgt r3, #1
00358be4  1a 00 00 ca                                      bgt #0x358c54
00358be8  00 00 5b e3                                      cmp fp, #0
00358bec  16 00 00 0a                                      beq #0x358c4c
00358bf0  00 30 9b e5                                      ldr r3, [fp]
00358bf4  0b 00 a0 e1                                      mov r0, fp
00358bf8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00358bfc  0f e0 a0 e1                                      mov lr, pc
00358c00  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00358c04  14 30 94 e5                                      ldr r3, [r4, #0x14]
00358c08  0c 31 93 e5                                      ldr r3, [r3, #0x10c]
00358c0c  03 00 50 e1                                      cmp r0, r3
00358c10  0d 00 00 ca                                      bgt #0x358c4c
00358c14  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00358c18  00 00 50 e3                                      cmp r0, #0
00358c1c  0a 00 00 0a                                      beq #0x358c4c
00358c20  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00358c24  00 00 53 e3                                      cmp r3, #0
00358c28  07 00 00 0a                                      beq #0x358c4c
00358c2c  03 00 50 e1                                      cmp r0, r3
00358c30  82 01 00 0a                                      beq #0x359240
00358c34  84 ea ff eb                                      bl #0x35364c
00358c38  00 80 a0 e1                                      mov r8, r0
00358c3c  ac 00 9d e5                                      ldr r0, [sp, #0xac]
00358c40  81 ea ff eb                                      bl #0x35364c
00358c44  00 00 58 e1                                      cmp r8, r0
00358c48  7c 01 00 0a                                      beq #0x359240
00358c4c  00 80 a0 e3                                      mov r8, #0
00358c50  08 30 a0 e1                                      mov r3, r8
00358c54  00 00 5a e3                                      cmp sl, #0
00358c58  22 00 00 0a                                      beq #0x358ce8
00358c5c  00 00 53 e3                                      cmp r3, #0
00358c60  41 01 00 1a                                      bne #0x35916c
00358c64  00 00 59 e3                                      cmp sb, #0
00358c68  03 00 00 0a                                      beq #0x358c7c
00358c6c  00 00 5a e3                                      cmp sl, #0
00358c70  01 00 00 0a                                      beq #0x358c7c
00358c74  00 00 58 e3                                      cmp r8, #0
00358c78  5d 01 00 0a                                      beq #0x3591f4
00358c7c  00 20 95 e5                                      ldr r2, [r5]
00358c80  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00358c84  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00358c88  06 00 82 e0                                      add r0, r2, r6
00358c8c  06 e0 92 e7                                      ldr lr, [r2, r6]
00358c90  04 c0 90 e5                                      ldr ip, [r0, #4]
00358c94  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00358c98  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00358c9c  a0 10 84 e5                                      str r1, [r4, #0xa0]
00358ca0  a8 e0 84 e5                                      str lr, [r4, #0xa8]
00358ca4  ac c0 84 e5                                      str ip, [r4, #0xac]
00358ca8  b0 20 84 e5                                      str r2, [r4, #0xb0]
00358cac  a4 00 84 e5                                      str r0, [r4, #0xa4]
00358cb0  9c 30 84 e5                                      str r3, [r4, #0x9c]
00358cb4  03 00 a0 e1                                      mov r0, r3
00358cb8  00 30 93 e5                                      ldr r3, [r3]
00358cbc  0f e0 a0 e1                                      mov lr, pc
00358cc0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00358cc4  18 00 9d e5                                      ldr r0, [sp, #0x18]
00358cc8  5b e4 ff eb                                      bl #0x351e3c
00358ccc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00358cd0  59 e4 ff eb                                      bl #0x351e3c
00358cd4  10 10 9d e5                                      ldr r1, [sp, #0x10]
00358cd8  07 00 51 e1                                      cmp r1, r7
00358cdc  0b 00 00 0a                                      beq #0x358d10
00358ce0  01 90 28 e2                                      eor sb, r8, #1
00358ce4  8a ff ff ea                                      b #0x358b14
00358ce8  00 00 58 e3                                      cmp r8, #0
00358cec  dc ff ff 0a                                      beq #0x358c64
00358cf0  14 30 94 e5                                      ldr r3, [r4, #0x14]
00358cf4  01 1c a0 e3                                      mov r1, #0x100
00358cf8  01 20 a0 e3                                      mov r2, #1
00358cfc  03 00 a0 e1                                      mov r0, r3
00358d00  00 30 93 e5                                      ldr r3, [r3]
00358d04  0f e0 a0 e1                                      mov lr, pc
00358d08  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00358d0c  da ff ff ea                                      b #0x358c7c
00358d10  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
00358d14  20 80 9d e5                                      ldr r8, [sp, #0x20]
00358d18  a8 70 94 e5                                      ldr r7, [r4, #0xa8]
00358d1c  10 30 40 e2                                      sub r3, r0, #0x10
00358d20  10 c0 10 e5                                      ldr ip, [r0, #-0x10]
00358d24  04 10 93 e5                                      ldr r1, [r3, #4]
00358d28  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00358d2c  ac 60 94 e5                                      ldr r6, [r4, #0xac]
00358d30  b0 e0 94 e5                                      ldr lr, [r4, #0xb0]
00358d34  00 00 58 e3                                      cmp r8, #0
00358d38  9c 70 84 e5                                      str r7, [r4, #0x9c]
00358d3c  a0 60 84 e5                                      str r6, [r4, #0xa0]
00358d40  a4 e0 84 e5                                      str lr, [r4, #0xa4]
00358d44  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00358d48  ac 10 84 e5                                      str r1, [r4, #0xac]
00358d4c  b0 20 84 e5                                      str r2, [r4, #0xb0]
00358d50  0d 01 00 1a                                      bne #0x35918c
00358d54  7c 30 84 e5                                      str r3, [r4, #0x7c]
00358d58  08 00 40 e2                                      sub r0, r0, #8
00358d5c  36 e4 ff eb                                      bl #0x351e3c
00358d60  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00358d64  00 60 a0 e3                                      mov r6, #0
00358d68  00 60 8d e5                                      str r6, [sp]
00358d6c  00 c0 9e e5                                      ldr ip, [lr]
00358d70  0e 00 a0 e1                                      mov r0, lr
00358d74  06 10 a0 e1                                      mov r1, r6
00358d78  06 20 a0 e1                                      mov r2, r6
00358d7c  06 30 a0 e1                                      mov r3, r6
00358d80  0f e0 a0 e1                                      mov lr, pc
00358d84  d4 f0 9c e5                                      ldr pc, [ip, #0xd4]
00358d88  04 00 a0 e1                                      mov r0, r4
00358d8c  05 10 a0 e3                                      mov r1, #5
00358d90  54 20 84 e2                                      add r2, r4, #0x54
00358d94  20 30 9d e5                                      ldr r3, [sp, #0x20]
00358d98  b7 eb ff eb                                      bl #0x353c7c
00358d9c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00358da0  01 70 a0 e3                                      mov r7, #1
00358da4  00 70 8d e5                                      str r7, [sp]
00358da8  00 c0 90 e5                                      ldr ip, [r0]
00358dac  07 10 a0 e1                                      mov r1, r7
00358db0  07 20 a0 e1                                      mov r2, r7
00358db4  07 30 a0 e1                                      mov r3, r7
00358db8  0f e0 a0 e1                                      mov lr, pc
00358dbc  d4 f0 9c e5                                      ldr pc, [ip, #0xd4]
00358dc0  06 10 a0 e3                                      mov r1, #6
00358dc4  60 20 84 e2                                      add r2, r4, #0x60
00358dc8  20 30 9d e5                                      ldr r3, [sp, #0x20]
00358dcc  04 00 a0 e1                                      mov r0, r4
00358dd0  a9 eb ff eb                                      bl #0x353c7c
00358dd4  88 10 94 e5                                      ldr r1, [r4, #0x88]
00358dd8  84 30 94 e5                                      ldr r3, [r4, #0x84]
00358ddc  01 30 63 e0                                      rsb r3, r3, r1
00358de0  43 31 a0 e1                                      asr r3, r3, #2
00358de4  83 20 83 e0                                      add r2, r3, r3, lsl #1
00358de8  02 22 82 e0                                      add r2, r2, r2, lsl #4
00358dec  02 24 82 e0                                      add r2, r2, r2, lsl #8
00358df0  02 28 82 e0                                      add r2, r2, r2, lsl #16
00358df4  02 21 93 e0                                      adds r2, r3, r2, lsl #2
00358df8  10 20 8d e5                                      str r2, [sp, #0x10]
00358dfc  ce 00 00 0a                                      beq #0x35913c
00358e00  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
00358e04  84 50 84 e2                                      add r5, r4, #0x84
00358e08  03 00 51 e1                                      cmp r1, r3
00358e0c  08 30 a0 e3                                      mov r3, #8
00358e10  74 31 84 e5                                      str r3, [r4, #0x174]
00358e14  00 30 a0 e3                                      mov r3, #0
00358e18  4c 30 8d e5                                      str r3, [sp, #0x4c]
00358e1c  3c 60 8d e5                                      str r6, [sp, #0x3c]
00358e20  40 60 8d e5                                      str r6, [sp, #0x40]
00358e24  44 60 8d e5                                      str r6, [sp, #0x44]
00358e28  48 60 8d e5                                      str r6, [sp, #0x48]
00358e2c  17 01 00 0a                                      beq #0x359290
00358e30  00 60 81 e5                                      str r6, [r1]
00358e34  40 30 9d e5                                      ldr r3, [sp, #0x40]
00358e38  04 30 81 e5                                      str r3, [r1, #4]
00358e3c  44 30 9d e5                                      ldr r3, [sp, #0x44]
00358e40  08 30 81 e5                                      str r3, [r1, #8]
00358e44  06 00 53 e1                                      cmp r3, r6
00358e48  00 20 93 15                                      ldrne r2, [r3]
00358e4c  3c 60 8d e2                                      add r6, sp, #0x3c
00358e50  07 20 82 10                                      addne r2, r2, r7
00358e54  00 20 83 15                                      strne r2, [r3]
00358e58  48 30 9d e5                                      ldr r3, [sp, #0x48]
00358e5c  0c 30 81 e5                                      str r3, [r1, #0xc]
00358e60  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00358e64  10 30 81 e5                                      str r3, [r1, #0x10]
00358e68  88 30 94 e5                                      ldr r3, [r4, #0x88]
00358e6c  14 30 83 e2                                      add r3, r3, #0x14
00358e70  88 30 84 e5                                      str r3, [r4, #0x88]
00358e74  08 00 86 e2                                      add r0, r6, #8
00358e78  ef e3 ff eb                                      bl #0x351e3c
00358e7c  84 30 94 e5                                      ldr r3, [r4, #0x84]
00358e80  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00358e84  a8 e0 94 e5                                      ldr lr, [r4, #0xa8]
00358e88  00 10 93 e5                                      ldr r1, [r3]
00358e8c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00358e90  04 30 93 e5                                      ldr r3, [r3, #4]
00358e94  ac c0 94 e5                                      ldr ip, [r4, #0xac]
00358e98  a4 00 84 e5                                      str r0, [r4, #0xa4]
00358e9c  a8 10 84 e5                                      str r1, [r4, #0xa8]
00358ea0  ac 30 84 e5                                      str r3, [r4, #0xac]
00358ea4  00 60 a0 e3                                      mov r6, #0
00358ea8  ac 00 8d e2                                      add r0, sp, #0xac
00358eac  a8 10 8d e2                                      add r1, sp, #0xa8
00358eb0  a4 30 8d e2                                      add r3, sp, #0xa4
00358eb4  9c e0 84 e5                                      str lr, [r4, #0x9c]
00358eb8  a0 c0 84 e5                                      str ip, [r4, #0xa0]
00358ebc  b0 20 84 e5                                      str r2, [r4, #0xb0]
00358ec0  01 90 a0 e3                                      mov sb, #1
00358ec4  06 70 a0 e1                                      mov r7, r6
00358ec8  18 00 8d e5                                      str r0, [sp, #0x18]
00358ecc  14 10 8d e5                                      str r1, [sp, #0x14]
00358ed0  1c 30 8d e5                                      str r3, [sp, #0x1c]
00358ed4  00 30 95 e5                                      ldr r3, [r5]
00358ed8  14 00 94 e5                                      ldr r0, [r4, #0x14]
00358edc  01 70 87 e2                                      add r7, r7, #1
00358ee0  06 10 83 e0                                      add r1, r3, r6
00358ee4  08 20 91 e5                                      ldr r2, [r1, #8]
00358ee8  06 80 93 e7                                      ldr r8, [r3, r6]
00358eec  88 a0 90 e5                                      ldr sl, [r0, #0x88]
00358ef0  00 00 52 e3                                      cmp r2, #0
00358ef4  04 10 91 e5                                      ldr r1, [r1, #4]
00358ef8  ac 20 8d e5                                      str r2, [sp, #0xac]
00358efc  00 30 92 15                                      ldrne r3, [r2]
00358f00  14 60 86 e2                                      add r6, r6, #0x14
00358f04  5a a4 e0 e7                                      ubfx sl, sl, #8, #1
00358f08  01 30 83 12                                      addne r3, r3, #1
00358f0c  00 30 82 15                                      strne r3, [r2]
00358f10  00 30 95 15                                      ldrne r3, [r5]
00358f14  04 20 95 e5                                      ldr r2, [r5, #4]
00358f18  06 c0 83 e0                                      add ip, r3, r6
00358f1c  02 20 63 e0                                      rsb r2, r3, r2
00358f20  42 21 a0 e1                                      asr r2, r2, #2
00358f24  04 e0 9c e5                                      ldr lr, [ip, #4]
00358f28  82 00 82 e0                                      add r0, r2, r2, lsl #1
00358f2c  00 02 80 e0                                      add r0, r0, r0, lsl #4
00358f30  0c e0 8d e5                                      str lr, [sp, #0xc]
00358f34  00 04 80 e0                                      add r0, r0, r0, lsl #8
00358f38  00 e0 a0 e3                                      mov lr, #0
00358f3c  00 08 80 e0                                      add r0, r0, r0, lsl #16
00358f40  a8 e0 8d e5                                      str lr, [sp, #0xa8]
00358f44  00 01 82 e0                                      add r0, r2, r0, lsl #2
00358f48  00 00 57 e1                                      cmp r7, r0
00358f4c  0e b0 a0 21                                      movhs fp, lr
00358f50  0f 00 00 2a                                      bhs #0x358f94
00358f54  08 20 9c e5                                      ldr r2, [ip, #8]
00358f58  06 b0 93 e7                                      ldr fp, [r3, r6]
00358f5c  00 00 52 e3                                      cmp r2, #0
00358f60  a4 20 8d e5                                      str r2, [sp, #0xa4]
00358f64  00 30 92 15                                      ldrne r3, [r2]
00358f68  02 30 a0 01                                      moveq r3, r2
00358f6c  01 30 83 12                                      addne r3, r3, #1
00358f70  00 30 82 15                                      strne r3, [r2]
00358f74  a4 30 9d 15                                      ldrne r3, [sp, #0xa4]
00358f78  a8 20 9d 15                                      ldrne r2, [sp, #0xa8]
00358f7c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00358f80  08 10 8d e5                                      str r1, [sp, #8]
00358f84  a4 20 8d e5                                      str r2, [sp, #0xa4]
00358f88  a8 30 8d e5                                      str r3, [sp, #0xa8]
00358f8c  aa e3 ff eb                                      bl #0x351e3c
00358f90  08 10 9d e5                                      ldr r1, [sp, #8]
00358f94  00 30 98 e5                                      ldr r3, [r8]
00358f98  08 00 a0 e1                                      mov r0, r8
00358f9c  0f e0 a0 e1                                      mov lr, pc
00358fa0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00358fa4  14 30 94 e5                                      ldr r3, [r4, #0x14]
00358fa8  0c 31 93 e5                                      ldr r3, [r3, #0x10c]
00358fac  03 00 50 e1                                      cmp r0, r3
00358fb0  01 80 a0 c3                                      movgt r8, #1
00358fb4  00 20 a0 c3                                      movgt r2, #0
00358fb8  08 30 a0 c1                                      movgt r3, r8
00358fbc  1b 00 00 ca                                      bgt #0x359030
00358fc0  00 00 5b e3                                      cmp fp, #0
00358fc4  16 00 00 0a                                      beq #0x359024
00358fc8  00 30 9b e5                                      ldr r3, [fp]
00358fcc  0b 00 a0 e1                                      mov r0, fp
00358fd0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00358fd4  0f e0 a0 e1                                      mov lr, pc
00358fd8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00358fdc  14 30 94 e5                                      ldr r3, [r4, #0x14]
00358fe0  0c 31 93 e5                                      ldr r3, [r3, #0x10c]
00358fe4  03 00 50 e1                                      cmp r0, r3
00358fe8  0d 00 00 ca                                      bgt #0x359024
00358fec  ac 00 9d e5                                      ldr r0, [sp, #0xac]
00358ff0  00 00 50 e3                                      cmp r0, #0
00358ff4  0a 00 00 0a                                      beq #0x359024
00358ff8  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00358ffc  00 00 53 e3                                      cmp r3, #0
00359000  07 00 00 0a                                      beq #0x359024
00359004  03 00 50 e1                                      cmp r0, r3
00359008  88 00 00 0a                                      beq #0x359230
0035900c  8e e9 ff eb                                      bl #0x35364c
00359010  00 80 a0 e1                                      mov r8, r0
00359014  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00359018  8b e9 ff eb                                      bl #0x35364c
0035901c  00 00 58 e1                                      cmp r8, r0
00359020  82 00 00 0a                                      beq #0x359230
00359024  00 20 a0 e3                                      mov r2, #0
00359028  01 80 a0 e3                                      mov r8, #1
0035902c  02 30 a0 e1                                      mov r3, r2
00359030  00 00 5a e3                                      cmp sl, #0
00359034  22 00 00 0a                                      beq #0x3590c4
00359038  00 00 53 e3                                      cmp r3, #0
0035903c  42 00 00 1a                                      bne #0x35914c
00359040  00 00 59 e3                                      cmp sb, #0
00359044  03 00 00 0a                                      beq #0x359058
00359048  00 00 5a e3                                      cmp sl, #0
0035904c  01 00 00 0a                                      beq #0x359058
00359050  00 00 52 e3                                      cmp r2, #0
00359054  6e 00 00 0a                                      beq #0x359214
00359058  00 20 95 e5                                      ldr r2, [r5]
0035905c  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00359060  ac 10 94 e5                                      ldr r1, [r4, #0xac]
00359064  06 00 82 e0                                      add r0, r2, r6
00359068  06 e0 92 e7                                      ldr lr, [r2, r6]
0035906c  04 c0 90 e5                                      ldr ip, [r0, #4]
00359070  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00359074  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
00359078  a8 e0 84 e5                                      str lr, [r4, #0xa8]
0035907c  ac c0 84 e5                                      str ip, [r4, #0xac]
00359080  b0 20 84 e5                                      str r2, [r4, #0xb0]
00359084  a0 10 84 e5                                      str r1, [r4, #0xa0]
00359088  a4 00 84 e5                                      str r0, [r4, #0xa4]
0035908c  9c 30 84 e5                                      str r3, [r4, #0x9c]
00359090  03 00 a0 e1                                      mov r0, r3
00359094  00 30 93 e5                                      ldr r3, [r3]
00359098  0f e0 a0 e1                                      mov lr, pc
0035909c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003590a0  14 00 9d e5                                      ldr r0, [sp, #0x14]
003590a4  64 e3 ff eb                                      bl #0x351e3c
003590a8  18 00 9d e5                                      ldr r0, [sp, #0x18]
003590ac  62 e3 ff eb                                      bl #0x351e3c
003590b0  10 00 9d e5                                      ldr r0, [sp, #0x10]
003590b4  07 00 50 e1                                      cmp r0, r7
003590b8  0b 00 00 0a                                      beq #0x3590ec
003590bc  08 90 a0 e1                                      mov sb, r8
003590c0  83 ff ff ea                                      b #0x358ed4
003590c4  00 00 52 e3                                      cmp r2, #0
003590c8  dc ff ff 0a                                      beq #0x359040
003590cc  14 30 94 e5                                      ldr r3, [r4, #0x14]
003590d0  01 1c a0 e3                                      mov r1, #0x100
003590d4  01 20 a0 e3                                      mov r2, #1
003590d8  03 00 a0 e1                                      mov r0, r3
003590dc  00 30 93 e5                                      ldr r3, [r3]
003590e0  0f e0 a0 e1                                      mov lr, pc
003590e4  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
003590e8  da ff ff ea                                      b #0x359058
003590ec  88 00 94 e5                                      ldr r0, [r4, #0x88]
003590f0  20 80 9d e5                                      ldr r8, [sp, #0x20]
003590f4  a8 70 94 e5                                      ldr r7, [r4, #0xa8]
003590f8  14 30 40 e2                                      sub r3, r0, #0x14
003590fc  14 c0 10 e5                                      ldr ip, [r0, #-0x14]
00359100  04 10 93 e5                                      ldr r1, [r3, #4]
00359104  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00359108  ac 60 94 e5                                      ldr r6, [r4, #0xac]
0035910c  b0 e0 94 e5                                      ldr lr, [r4, #0xb0]
00359110  00 00 58 e3                                      cmp r8, #0
00359114  9c 70 84 e5                                      str r7, [r4, #0x9c]
00359118  a0 60 84 e5                                      str r6, [r4, #0xa0]
0035911c  a4 e0 84 e5                                      str lr, [r4, #0xa4]
00359120  a8 c0 84 e5                                      str ip, [r4, #0xa8]
00359124  ac 10 84 e5                                      str r1, [r4, #0xac]
00359128  b0 20 84 e5                                      str r2, [r4, #0xb0]
0035912c  22 00 00 1a                                      bne #0x3591bc
00359130  88 30 84 e5                                      str r3, [r4, #0x88]
00359134  0c 00 40 e2                                      sub r0, r0, #0xc
00359138  3f e3 ff eb                                      bl #0x351e3c
0035913c  04 00 a0 e1                                      mov r0, r4
00359140  82 c8 08 eb                                      bl #0x58b350
00359144  c4 d0 8d e2                                      add sp, sp, #0xc4
00359148  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035914c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00359150  01 1c a0 e3                                      mov r1, #0x100
00359154  00 20 a0 e3                                      mov r2, #0
00359158  03 00 a0 e1                                      mov r0, r3
0035915c  00 30 93 e5                                      ldr r3, [r3]
00359160  0f e0 a0 e1                                      mov lr, pc
00359164  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00359168  ba ff ff ea                                      b #0x359058
0035916c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00359170  01 1c a0 e3                                      mov r1, #0x100
00359174  00 20 a0 e3                                      mov r2, #0
00359178  03 00 a0 e1                                      mov r0, r3
0035917c  00 30 93 e5                                      ldr r3, [r3]
00359180  0f e0 a0 e1                                      mov lr, pc
00359184  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00359188  bb fe ff ea                                      b #0x358c7c
0035918c  50 60 8d e2                                      add r6, sp, #0x50
00359190  00 30 a0 e3                                      mov r3, #0
00359194  05 00 a0 e1                                      mov r0, r5
00359198  06 10 a0 e1                                      mov r1, r6
0035919c  5c 30 8d e5                                      str r3, [sp, #0x5c]
003591a0  50 30 8d e5                                      str r3, [sp, #0x50]
003591a4  54 30 8d e5                                      str r3, [sp, #0x54]
003591a8  58 30 8d e5                                      str r3, [sp, #0x58]
003591ac  60 f9 ff eb                                      bl #0x357734
003591b0  08 00 86 e2                                      add r0, r6, #8
003591b4  20 e3 ff eb                                      bl #0x351e3c
003591b8  e8 fe ff ea                                      b #0x358d60
003591bc  28 60 8d e2                                      add r6, sp, #0x28
003591c0  00 30 a0 e3                                      mov r3, #0
003591c4  05 00 a0 e1                                      mov r0, r5
003591c8  00 20 a0 e3                                      mov r2, #0
003591cc  06 10 a0 e1                                      mov r1, r6
003591d0  34 30 8d e5                                      str r3, [sp, #0x34]
003591d4  38 20 8d e5                                      str r2, [sp, #0x38]
003591d8  28 30 8d e5                                      str r3, [sp, #0x28]
003591dc  2c 30 8d e5                                      str r3, [sp, #0x2c]
003591e0  30 30 8d e5                                      str r3, [sp, #0x30]
003591e4  dd fa ff eb                                      bl #0x357d60
003591e8  08 00 86 e2                                      add r0, r6, #8
003591ec  12 e3 ff eb                                      bl #0x351e3c
003591f0  d1 ff ff ea                                      b #0x35913c
003591f4  14 30 94 e5                                      ldr r3, [r4, #0x14]
003591f8  01 1c a0 e3                                      mov r1, #0x100
003591fc  08 20 a0 e1                                      mov r2, r8
00359200  03 00 a0 e1                                      mov r0, r3
00359204  00 30 93 e5                                      ldr r3, [r3]
00359208  0f e0 a0 e1                                      mov lr, pc
0035920c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00359210  99 fe ff ea                                      b #0x358c7c
00359214  14 30 94 e5                                      ldr r3, [r4, #0x14]
00359218  01 1c a0 e3                                      mov r1, #0x100
0035921c  03 00 a0 e1                                      mov r0, r3
00359220  00 30 93 e5                                      ldr r3, [r3]
00359224  0f e0 a0 e1                                      mov lr, pc
00359228  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0035922c  89 ff ff ea                                      b #0x359058
00359230  00 80 a0 e3                                      mov r8, #0
00359234  01 20 a0 e3                                      mov r2, #1
00359238  08 30 a0 e1                                      mov r3, r8
0035923c  7b ff ff ea                                      b #0x359030
00359240  01 80 a0 e3                                      mov r8, #1
00359244  00 30 a0 e3                                      mov r3, #0
00359248  81 fe ff ea                                      b #0x358c54
0035924c  0c 10 a0 e1                                      mov r1, ip
00359250  05 00 a0 e1                                      mov r0, r5
00359254  80 20 8d e2                                      add r2, sp, #0x80
00359258  bc 30 8d e2                                      add r3, sp, #0xbc
0035925c  04 e0 8d e5                                      str lr, [sp, #4]
00359260  00 e0 8d e5                                      str lr, [sp]
00359264  ad e1 ff eb                                      bl #0x351920
00359268  ad fd ff ea                                      b #0x358924
0035926c  60 60 8d e2                                      add r6, sp, #0x60
00359270  01 c0 a0 e3                                      mov ip, #1
00359274  05 00 a0 e1                                      mov r0, r5
00359278  06 20 a0 e1                                      mov r2, r6
0035927c  b8 30 8d e2                                      add r3, sp, #0xb8
00359280  04 c0 8d e5                                      str ip, [sp, #4]
00359284  00 c0 8d e5                                      str ip, [sp]
00359288  fd e2 ff eb                                      bl #0x351e84
0035928c  08 fe ff ea                                      b #0x358ab4
00359290  3c 60 8d e2                                      add r6, sp, #0x3c
00359294  05 00 a0 e1                                      mov r0, r5
00359298  06 20 a0 e1                                      mov r2, r6
0035929c  b4 30 8d e2                                      add r3, sp, #0xb4
003592a0  04 70 8d e5                                      str r7, [sp, #4]
003592a4  00 70 8d e5                                      str r7, [sp]
003592a8  9b f5 ff eb                                      bl #0x35691c
003592ac  f0 fe ff ea                                      b #0x358e74

; FUNCTION 0x003592b0, declared_size=136, range_size=136, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager8_drawAllEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::_drawAll(glitch::scene::ISceneNode*)
; decoder-mode: arm
003592b0  70 40 2d e9                                      push {r4, r5, r6, lr}
003592b4  01 50 a0 e1                                      mov r5, r1
003592b8  00 30 90 e5                                      ldr r3, [r0]
003592bc  18 10 90 e5                                      ldr r1, [r0, #0x18]
003592c0  00 40 a0 e1                                      mov r4, r0
003592c4  0f e0 a0 e1                                      mov lr, pc
003592c8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003592cc  00 00 55 e3                                      cmp r5, #0
003592d0  12 00 00 0a                                      beq #0x359320
003592d4  00 30 94 e5                                      ldr r3, [r4]
003592d8  04 00 a0 e1                                      mov r0, r4
003592dc  0f e0 a0 e1                                      mov lr, pc
003592e0  44 f0 93 e5                                      ldr pc, [r3, #0x44]
003592e4  05 10 a0 e1                                      mov r1, r5
003592e8  04 00 a0 e1                                      mov r0, r4
003592ec  ec fa ff eb                                      bl #0x357ea4
003592f0  04 00 a0 e1                                      mov r0, r4
003592f4  2c ea ff eb                                      bl #0x353bac
003592f8  00 30 94 e5                                      ldr r3, [r4]
003592fc  04 00 a0 e1                                      mov r0, r4
00359300  0f e0 a0 e1                                      mov lr, pc
00359304  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00359308  04 00 a0 e1                                      mov r0, r4
0035930c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00359310  22 fd ff eb                                      bl #0x3587a0
00359314  09 30 a0 e3                                      mov r3, #9
00359318  74 31 84 e5                                      str r3, [r4, #0x174]
0035931c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00359320  88 32 d4 e5                                      ldrb r3, [r4, #0x288]
00359324  00 00 53 e3                                      cmp r3, #0
00359328  e9 ff ff 0a                                      beq #0x3592d4
0035932c  04 00 a0 e1                                      mov r0, r4
00359330  1d c9 08 eb                                      bl #0x58b7ac
00359334  e6 ff ff ea                                      b #0x3592d4

; FUNCTION 0x00359338, declared_size=364, range_size=364, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager7drawAllEPN6glitch5scene10ISceneNodeE
; demangled: SceneManager::drawAll(glitch::scene::ISceneNode*)
; decoder-mode: arm
00359338  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035933c  4c 41 9f e5                                      ldr r4, [pc, #0x14c]
00359340  4c 51 9f e5                                      ldr r5, [pc, #0x14c]
00359344  8c d0 4d e2                                      sub sp, sp, #0x8c
00359348  04 40 8f e0                                      add r4, pc, r4
0035934c  05 30 94 e7                                      ldr r3, [r4, r5]
00359350  00 60 a0 e1                                      mov r6, r0
00359354  01 70 a0 e1                                      mov r7, r1
00359358  00 30 93 e5                                      ldr r3, [r3]
0035935c  a5 0f 80 e2                                      add r0, r0, #0x294
00359360  84 30 8d e5                                      str r3, [sp, #0x84]
00359364  8d d0 02 eb                                      bl #0x40d5a0
00359368  06 00 a0 e1                                      mov r0, r6
0035936c  07 10 a0 e1                                      mov r1, r7
00359370  ce ff ff eb                                      bl #0x3592b0
00359374  90 32 d6 e5                                      ldrb r3, [r6, #0x290]
00359378  00 00 53 e3                                      cmp r3, #0
0035937c  06 00 00 1a                                      bne #0x35939c
00359380  05 30 94 e7                                      ldr r3, [r4, r5]
00359384  84 20 9d e5                                      ldr r2, [sp, #0x84]
00359388  00 30 93 e5                                      ldr r3, [r3]
0035938c  03 00 52 e1                                      cmp r2, r3
00359390  3d 00 00 1a                                      bne #0x35948c
00359394  8c d0 8d e2                                      add sp, sp, #0x8c
00359398  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0035939c  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
003593a0  00 80 a0 e3                                      mov r8, #0
003593a4  90 82 c6 e5                                      strb r8, [r6, #0x290]
003593a8  03 a0 94 e7                                      ldr sl, [r4, r3]
003593ac  6c 70 8d e2                                      add r7, sp, #0x6c
003593b0  0a 00 a0 e1                                      mov r0, sl
003593b4  33 79 ff eb                                      bl #0x337888
003593b8  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
003593bc  04 20 8d e2                                      add r2, sp, #4
003593c0  07 00 a0 e1                                      mov r0, r7
003593c4  01 10 8f e0                                      add r1, pc, r1
003593c8  47 eb fe eb                                      bl #0x3140ec
003593cc  0a 00 a0 e1                                      mov r0, sl
003593d0  07 10 a0 e1                                      mov r1, r7
003593d4  ab 79 ff eb                                      bl #0x337a88
003593d8  00 a0 a0 e1                                      mov sl, r0
003593dc  07 00 a0 e1                                      mov r0, r7
003593e0  9b fb fe eb                                      bl #0x318254
003593e4  08 00 5a e1                                      cmp sl, r8
003593e8  e4 ff ff 0a                                      beq #0x359380
003593ec  08 00 a0 e1                                      mov r0, r8
003593f0  62 d4 fe eb                                      bl #0x30e580
003593f4  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
003593f8  08 70 8d e2                                      add r7, sp, #8
003593fc  00 20 a0 e1                                      mov r2, r0
00359400  01 10 8f e0                                      add r1, pc, r1
00359404  07 00 a0 e1                                      mov r0, r7
00359408  b5 d5 fe eb                                      bl #0x30eae4
0035940c  14 30 96 e5                                      ldr r3, [r6, #0x14]
00359410  0d 00 a0 e1                                      mov r0, sp
00359414  0d a0 a0 e1                                      mov sl, sp
00359418  03 10 a0 e1                                      mov r1, r3
0035941c  00 30 93 e5                                      ldr r3, [r3]
00359420  0f e0 a0 e1                                      mov lr, pc
00359424  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00359428  07 00 a0 e1                                      mov r0, r7
0035942c  08 10 a0 e1                                      mov r1, r8
00359430  ef 5d 08 eb                                      bl #0x570bf4
00359434  08 10 a0 e1                                      mov r1, r8
00359438  00 70 a0 e1                                      mov r7, r0
0035943c  08 00 a0 e3                                      mov r0, #8
00359440  59 6b 07 eb                                      bl #0x5341ac
00359444  00 60 a0 e1                                      mov r6, r0
00359448  af b7 0a eb                                      bl #0x60730c
0035944c  0d 20 a0 e1                                      mov r2, sp
00359450  08 30 a0 e1                                      mov r3, r8
00359454  07 10 a0 e1                                      mov r1, r7
00359458  00 c0 96 e5                                      ldr ip, [r6]
0035945c  06 00 a0 e1                                      mov r0, r6
00359460  0f e0 a0 e1                                      mov lr, pc
00359464  10 f0 9c e5                                      ldr pc, [ip, #0x10]
00359468  06 00 a0 e1                                      mov r0, r6
0035946c  44 10 ff eb                                      bl #0x31d584
00359470  07 00 a0 e1                                      mov r0, r7
00359474  42 10 ff eb                                      bl #0x31d584
00359478  00 00 9d e5                                      ldr r0, [sp]
0035947c  08 00 50 e1                                      cmp r0, r8
00359480  be ff ff 0a                                      beq #0x359380
00359484  3e 10 ff eb                                      bl #0x31d584
00359488  bc ff ff ea                                      b #0x359380
0035948c  9f d3 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00359490  48 b7 63 00 ac 40 00 00 84 08 00 00 0c 67 56 00  .byte 0x48, 0xb7, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x0c, 0x67, 0x56, 0x00
003594a0  c0 77 56 00                                      .byte 0xc0, 0x77, 0x56, 0x00

; FUNCTION 0x003594a4, declared_size=596, range_size=596, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager9LoadFXLibEPKcS1_
; demangled: SceneManager::LoadFXLib(char const*, char const*)
; decoder-mode: arm
003594a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003594a8  24 42 9f e5                                      ldr r4, [pc, #0x224]
003594ac  24 82 9f e5                                      ldr r8, [pc, #0x224]
003594b0  00 a0 52 e2                                      subs sl, r2, #0
003594b4  04 40 8f e0                                      add r4, pc, r4
003594b8  08 20 94 e7                                      ldr r2, [r4, r8]
003594bc  54 d0 4d e2                                      sub sp, sp, #0x54
003594c0  00 50 a0 e1                                      mov r5, r0
003594c4  00 20 92 e5                                      ldr r2, [r2]
003594c8  01 b0 a0 e1                                      mov fp, r1
003594cc  03 60 a0 e1                                      mov r6, r3
003594d0  4c 20 8d e5                                      str r2, [sp, #0x4c]
003594d4  2f 00 00 0a                                      beq #0x359598
003594d8  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
003594dc  10 70 8d e2                                      add r7, sp, #0x10
003594e0  0a 10 a0 e1                                      mov r1, sl
003594e4  03 20 94 e7                                      ldr r2, [r4, r3]
003594e8  07 00 a0 e1                                      mov r0, r7
003594ec  5a d7 0a eb                                      bl #0x60f25c
003594f0  00 90 a0 e3                                      mov sb, #0
003594f4  00 00 56 e3                                      cmp r6, #0
003594f8  00 90 85 e5                                      str sb, [r5]
003594fc  3a 00 00 0a                                      beq #0x3595ec
00359500  d8 a1 9f e5                                      ldr sl, [pc, #0x1d8]
00359504  06 00 a0 e1                                      mov r0, r6
00359508  0a a0 8f e0                                      add sl, pc, sl
0035950c  0a 10 a0 e1                                      mov r1, sl
00359510  3b f9 fe eb                                      bl #0x317a04
00359514  00 c0 50 e2                                      subs ip, r0, #0
00359518  49 00 00 0a                                      beq #0x359644
0035951c  28 a0 8d e2                                      add sl, sp, #0x28
00359520  14 20 9b e5                                      ldr r2, [fp, #0x14]
00359524  06 30 a0 e1                                      mov r3, r6
00359528  0a 00 a0 e1                                      mov r0, sl
0035952c  07 10 a0 e1                                      mov r1, r7
00359530  00 90 8d e5                                      str sb, [sp]
00359534  f4 06 0b eb                                      bl #0x61b10c
00359538  28 30 9d e5                                      ldr r3, [sp, #0x28]
0035953c  50 00 8d e2                                      add r0, sp, #0x50
00359540  1c 30 8d e5                                      str r3, [sp, #0x1c]
00359544  00 00 53 e3                                      cmp r3, #0
00359548  00 20 93 15                                      ldrne r2, [r3]
0035954c  01 20 82 12                                      addne r2, r2, #1
00359550  00 20 83 15                                      strne r2, [r3]
00359554  1c 30 9d 15                                      ldrne r3, [sp, #0x1c]
00359558  00 20 95 e5                                      ldr r2, [r5]
0035955c  00 30 85 e5                                      str r3, [r5]
00359560  34 20 20 e5                                      str r2, [r0, #-0x34]!
00359564  53 e3 ff eb                                      bl #0x3522b8
00359568  0a 00 a0 e1                                      mov r0, sl
0035956c  51 e3 ff eb                                      bl #0x3522b8
00359570  07 00 a0 e1                                      mov r0, r7
00359574  be ff 0a eb                                      bl #0x619474
00359578  08 30 94 e7                                      ldr r3, [r4, r8]
0035957c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00359580  05 00 a0 e1                                      mov r0, r5
00359584  00 30 93 e5                                      ldr r3, [r3]
00359588  03 00 52 e1                                      cmp r2, r3
0035958c  4f 00 00 1a                                      bne #0x3596d0
00359590  54 d0 8d e2                                      add sp, sp, #0x54
00359594  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00359598  44 31 9f e5                                      ldr r3, [pc, #0x144]
0035959c  03 30 94 e7                                      ldr r3, [r4, r3]
003595a0  00 30 93 e5                                      ldr r3, [r3]
003595a4  02 00 53 e3                                      cmp r3, #2
003595a8  00 a0 8a 05                                      streq sl, [sl]
003595ac  c9 ff ff 0a                                      beq #0x3594d8
003595b0  01 00 53 e3                                      cmp r3, #1
003595b4  c7 ff ff 1a                                      bne #0x3594d8
003595b8  28 01 9f e5                                      ldr r0, [pc, #0x128]
003595bc  28 11 9f e5                                      ldr r1, [pc, #0x128]
003595c0  28 21 9f e5                                      ldr r2, [pc, #0x128]
003595c4  00 00 94 e7                                      ldr r0, [r4, r0]
003595c8  24 31 9f e5                                      ldr r3, [pc, #0x124]
003595cc  12 c5 00 e3                                      movw ip, #0x512
003595d0  01 10 8f e0                                      add r1, pc, r1
003595d4  02 20 8f e0                                      add r2, pc, r2
003595d8  03 30 8f e0                                      add r3, pc, r3
003595dc  a8 00 80 e2                                      add r0, r0, #0xa8
003595e0  00 c0 8d e5                                      str ip, [sp]
003595e4  86 d2 fe eb                                      bl #0x30e004
003595e8  ba ff ff ea                                      b #0x3594d8
003595ec  2c a0 8d e2                                      add sl, sp, #0x2c
003595f0  14 20 9b e5                                      ldr r2, [fp, #0x14]
003595f4  06 30 a0 e1                                      mov r3, r6
003595f8  0a 00 a0 e1                                      mov r0, sl
003595fc  07 10 a0 e1                                      mov r1, r7
00359600  00 60 8d e5                                      str r6, [sp]
00359604  f6 d3 0a eb                                      bl #0x60e5e4
00359608  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0035960c  50 00 8d e2                                      add r0, sp, #0x50
00359610  20 30 8d e5                                      str r3, [sp, #0x20]
00359614  09 00 53 e1                                      cmp r3, sb
00359618  00 20 93 15                                      ldrne r2, [r3]
0035961c  01 20 82 12                                      addne r2, r2, #1
00359620  00 20 83 15                                      strne r2, [r3]
00359624  20 60 9d 15                                      ldrne r6, [sp, #0x20]
00359628  00 30 95 e5                                      ldr r3, [r5]
0035962c  00 60 85 e5                                      str r6, [r5]
00359630  30 30 20 e5                                      str r3, [r0, #-0x30]!
00359634  1f e3 ff eb                                      bl #0x3522b8
00359638  0a 00 a0 e1                                      mov r0, sl
0035963c  1d e3 ff eb                                      bl #0x3522b8
00359640  ca ff ff ea                                      b #0x359570
00359644  34 90 8d e2                                      add sb, sp, #0x34
00359648  06 10 a0 e1                                      mov r1, r6
0035964c  30 20 8d e2                                      add r2, sp, #0x30
00359650  09 00 a0 e1                                      mov r0, sb
00359654  0c c0 8d e5                                      str ip, [sp, #0xc]
00359658  a3 ea fe eb                                      bl #0x3140ec
0035965c  0a 10 a0 e1                                      mov r1, sl
00359660  03 20 8a e2                                      add r2, sl, #3
00359664  09 00 a0 e1                                      mov r0, sb
00359668  65 dc fe eb                                      bl #0x310804
0035966c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00359670  24 60 8d e2                                      add r6, sp, #0x24
00359674  14 20 9b e5                                      ldr r2, [fp, #0x14]
00359678  07 10 a0 e1                                      mov r1, r7
0035967c  48 30 9d e5                                      ldr r3, [sp, #0x48]
00359680  06 00 a0 e1                                      mov r0, r6
00359684  00 c0 8d e5                                      str ip, [sp]
00359688  9f 06 0b eb                                      bl #0x61b10c
0035968c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00359690  50 00 8d e2                                      add r0, sp, #0x50
00359694  18 30 8d e5                                      str r3, [sp, #0x18]
00359698  00 00 53 e3                                      cmp r3, #0
0035969c  00 20 93 15                                      ldrne r2, [r3]
003596a0  01 20 82 12                                      addne r2, r2, #1
003596a4  00 20 83 15                                      strne r2, [r3]
003596a8  18 30 9d 15                                      ldrne r3, [sp, #0x18]
003596ac  00 20 95 e5                                      ldr r2, [r5]
003596b0  00 30 85 e5                                      str r3, [r5]
003596b4  38 20 20 e5                                      str r2, [r0, #-0x38]!
003596b8  fe e2 ff eb                                      bl #0x3522b8
003596bc  06 00 a0 e1                                      mov r0, r6
003596c0  fc e2 ff eb                                      bl #0x3522b8
003596c4  09 00 a0 e1                                      mov r0, sb
003596c8  e1 fa fe eb                                      bl #0x318254
003596cc  a7 ff ff ea                                      b #0x359570
003596d0  0e d3 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003596d4  dc b5 63 00 ac 40 00 00 2c 0d 00 00 e0 76 56 00  .byte 0xdc, 0xb5, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x0d, 0x00, 0x00, 0xe0, 0x76, 0x56, 0x00
003596e4  c0 39 00 00 c0 19 00 00 08 4e 56 00 04 76 56 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x08, 0x4e, 0x56, 0x00, 0x04, 0x76, 0x56, 0x00
003596f4  a0 75 56 00                                      .byte 0xa0, 0x75, 0x56, 0x00

; FUNCTION 0x003596f8, declared_size=832, range_size=832, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager9LoadSceneEPKcS1_bb
; demangled: SceneManager::LoadScene(char const*, char const*, bool, bool)
; decoder-mode: arm
003596f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003596fc  08 43 9f e5                                      ldr r4, [pc, #0x308]
00359700  08 73 9f e5                                      ldr r7, [pc, #0x308]
00359704  00 50 52 e2                                      subs r5, r2, #0
00359708  04 40 8f e0                                      add r4, pc, r4
0035970c  07 20 94 e7                                      ldr r2, [r4, r7]
00359710  3c d0 4d e2                                      sub sp, sp, #0x3c
00359714  08 00 8d e5                                      str r0, [sp, #8]
00359718  00 20 92 e5                                      ldr r2, [r2]
0035971c  01 60 a0 e1                                      mov r6, r1
00359720  03 b0 a0 e1                                      mov fp, r3
00359724  60 90 dd e5                                      ldrb sb, [sp, #0x60]
00359728  34 20 8d e5                                      str r2, [sp, #0x34]
0035972c  02 00 00 0a                                      beq #0x35973c
00359730  d0 30 d5 e1                                      ldrsb r3, [r5]
00359734  00 00 53 e3                                      cmp r3, #0
00359738  94 00 00 1a                                      bne #0x359990
0035973c  d0 32 9f e5                                      ldr r3, [pc, #0x2d0]
00359740  d0 82 9f e5                                      ldr r8, [pc, #0x2d0]
00359744  06 10 a0 e1                                      mov r1, r6
00359748  03 00 94 e7                                      ldr r0, [r4, r3]
0035974c  01 20 a0 e3                                      mov r2, #1
00359750  08 30 94 e7                                      ldr r3, [r4, r8]
00359754  10 00 90 e5                                      ldr r0, [r0, #0x10]
00359758  10 00 90 e5                                      ldr r0, [r0, #0x10]
0035975c  1c 09 0b eb                                      bl #0x61bbd4
00359760  00 a0 a0 e1                                      mov sl, r0
00359764  00 00 5a e3                                      cmp sl, #0
00359768  10 00 00 0a                                      beq #0x3597b0
0035976c  06 00 a0 e1                                      mov r0, r6
00359770  b7 d1 fe eb                                      bl #0x30de54
00359774  06 10 a0 e1                                      mov r1, r6
00359778  00 20 86 e0                                      add r2, r6, r0
0035977c  6f 0f 8a e2                                      add r0, sl, #0x1bc
00359780  96 dc fe eb                                      bl #0x3109e0
00359784  00 00 55 e3                                      cmp r5, #0
00359788  75 3f 8a e2                                      add r3, sl, #0x1d4
0035978c  99 00 00 0a                                      beq #0x3599f8
00359790  05 00 a0 e1                                      mov r0, r5
00359794  04 30 8d e5                                      str r3, [sp, #4]
00359798  ad d1 fe eb                                      bl #0x30de54
0035979c  04 30 9d e5                                      ldr r3, [sp, #4]
003597a0  00 20 85 e0                                      add r2, r5, r0
003597a4  05 10 a0 e1                                      mov r1, r5
003597a8  03 00 a0 e1                                      mov r0, r3
003597ac  8b dc fe eb                                      bl #0x3109e0
003597b0  00 00 59 e3                                      cmp sb, #0
003597b4  03 00 00 0a                                      beq #0x3597c8
003597b8  00 00 5a e3                                      cmp sl, #0
003597bc  01 00 00 0a                                      beq #0x3597c8
003597c0  0a 00 a0 e1                                      mov r0, sl
003597c4  10 0d 00 eb                                      bl #0x35cc0c
003597c8  00 90 55 e2                                      subs sb, r5, #0
003597cc  01 90 a0 13                                      movne sb, #1
003597d0  00 00 5a e3                                      cmp sl, #0
003597d4  00 00 55 13                                      cmpne r5, #0
003597d8  5d 00 00 1a                                      bne #0x359954
003597dc  00 00 5a e3                                      cmp sl, #0
003597e0  2e 00 00 0a                                      beq #0x3598a0
003597e4  0a 00 a0 e1                                      mov r0, sl
003597e8  02 10 a0 e3                                      mov r1, #2
003597ec  6a f6 08 eb                                      bl #0x59719c
003597f0  00 00 59 e3                                      cmp sb, #0
003597f4  27 00 00 0a                                      beq #0x359898
003597f8  f4 80 9a e5                                      ldr r8, [sl, #0xf4]
003597fc  00 00 58 e3                                      cmp r8, #0
00359800  04 80 48 12                                      subne r8, r8, #4
00359804  00 30 98 e5                                      ldr r3, [r8]
00359808  08 00 a0 e1                                      mov r0, r8
0035980c  0f e0 a0 e1                                      mov lr, pc
00359810  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00359814  00 12 9f e5                                      ldr r1, [pc, #0x200]
00359818  01 10 8f e0                                      add r1, pc, r1
0035981c  ec d4 fe eb                                      bl #0x30ebd4
00359820  00 00 50 e3                                      cmp r0, #0
00359824  1b 00 00 0a                                      beq #0x359898
00359828  f4 50 b8 e5                                      ldr r5, [r8, #0xf4]!
0035982c  08 00 55 e1                                      cmp r5, r8
00359830  18 00 00 0a                                      beq #0x359898
00359834  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
00359838  e4 91 9f e5                                      ldr sb, [pc, #0x1e4]
0035983c  03 30 8f e0                                      add r3, pc, r3
00359840  0c 30 8d e5                                      str r3, [sp, #0xc]
00359844  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
00359848  09 90 8f e0                                      add sb, pc, sb
0035984c  03 30 8f e0                                      add r3, pc, r3
00359850  10 30 8d e5                                      str r3, [sp, #0x10]
00359854  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
00359858  03 30 8f e0                                      add r3, pc, r3
0035985c  14 30 8d e5                                      str r3, [sp, #0x14]
00359860  00 00 55 e3                                      cmp r5, #0
00359864  05 60 a0 01                                      moveq r6, r5
00359868  04 60 45 12                                      subne r6, r5, #4
0035986c  00 30 96 e5                                      ldr r3, [r6]
00359870  06 00 a0 e1                                      mov r0, r6
00359874  00 50 95 e5                                      ldr r5, [r5]
00359878  0f e0 a0 e1                                      mov lr, pc
0035987c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00359880  09 10 a0 e1                                      mov r1, sb
00359884  d2 d4 fe eb                                      bl #0x30ebd4
00359888  00 00 50 e3                                      cmp r0, #0
0035988c  13 00 00 0a                                      beq #0x3598e0
00359890  05 00 58 e1                                      cmp r8, r5
00359894  f1 ff ff 1a                                      bne #0x359860
00359898  00 00 5b e3                                      cmp fp, #0
0035989c  07 00 00 1a                                      bne #0x3598c0
003598a0  07 30 94 e7                                      ldr r3, [r4, r7]
003598a4  34 20 9d e5                                      ldr r2, [sp, #0x34]
003598a8  0a 00 a0 e1                                      mov r0, sl
003598ac  00 30 93 e5                                      ldr r3, [r3]
003598b0  03 00 52 e1                                      cmp r2, r3
003598b4  53 00 00 1a                                      bne #0x359a08
003598b8  3c d0 8d e2                                      add sp, sp, #0x3c
003598bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003598c0  08 20 9d e5                                      ldr r2, [sp, #8]
003598c4  0a 10 a0 e1                                      mov r1, sl
003598c8  04 30 92 e5                                      ldr r3, [r2, #4]
003598cc  03 00 a0 e1                                      mov r0, r3
003598d0  00 30 93 e5                                      ldr r3, [r3]
003598d4  0f e0 a0 e1                                      mov lr, pc
003598d8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
003598dc  ef ff ff ea                                      b #0x3598a0
003598e0  00 30 96 e5                                      ldr r3, [r6]
003598e4  06 00 a0 e1                                      mov r0, r6
003598e8  0f e0 a0 e1                                      mov lr, pc
003598ec  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003598f0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003598f4  b6 d4 fe eb                                      bl #0x30ebd4
003598f8  00 00 50 e3                                      cmp r0, #0
003598fc  e3 ff ff 1a                                      bne #0x359890
00359900  00 30 96 e5                                      ldr r3, [r6]
00359904  06 00 a0 e1                                      mov r0, r6
00359908  0f e0 a0 e1                                      mov lr, pc
0035990c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00359910  10 10 9d e5                                      ldr r1, [sp, #0x10]
00359914  ae d4 fe eb                                      bl #0x30ebd4
00359918  00 00 50 e3                                      cmp r0, #0
0035991c  db ff ff 1a                                      bne #0x359890
00359920  00 30 96 e5                                      ldr r3, [r6]
00359924  06 00 a0 e1                                      mov r0, r6
00359928  0f e0 a0 e1                                      mov lr, pc
0035992c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00359930  14 10 9d e5                                      ldr r1, [sp, #0x14]
00359934  a6 d4 fe eb                                      bl #0x30ebd4
00359938  00 00 50 e3                                      cmp r0, #0
0035993c  d3 ff ff 1a                                      bne #0x359890
00359940  06 00 a0 e1                                      mov r0, r6
00359944  00 30 96 e5                                      ldr r3, [r6]
00359948  0f e0 a0 e1                                      mov lr, pc
0035994c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00359950  ce ff ff ea                                      b #0x359890
00359954  06 00 a0 e1                                      mov r0, r6
00359958  08 10 94 e7                                      ldr r1, [r4, r8]
0035995c  46 ff 0a eb                                      bl #0x61967c
00359960  00 50 50 e2                                      subs r5, r0, #0
00359964  9c ff ff 0a                                      beq #0x3597dc
00359968  0a 00 a0 e1                                      mov r0, sl
0035996c  00 30 9a e5                                      ldr r3, [sl]
00359970  05 10 a0 e1                                      mov r1, r5
00359974  0f e0 a0 e1                                      mov lr, pc
00359978  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0035997c  00 30 95 e5                                      ldr r3, [r5]
00359980  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00359984  00 00 85 e0                                      add r0, r5, r0
00359988  fd 0e ff eb                                      bl #0x31d584
0035998c  92 ff ff ea                                      b #0x3597dc
00359990  1c c0 8d e2                                      add ip, sp, #0x1c
00359994  05 10 a0 e1                                      mov r1, r5
00359998  18 20 8d e2                                      add r2, sp, #0x18
0035999c  0c 00 a0 e1                                      mov r0, ip
003599a0  04 c0 8d e5                                      str ip, [sp, #4]
003599a4  d0 e9 fe eb                                      bl #0x3140ec
003599a8  80 10 9f e5                                      ldr r1, [pc, #0x80]
003599ac  04 c0 9d e5                                      ldr ip, [sp, #4]
003599b0  60 80 9f e5                                      ldr r8, [pc, #0x60]
003599b4  01 10 8f e0                                      add r1, pc, r1
003599b8  0c 00 a0 e1                                      mov r0, ip
003599bc  05 20 81 e2                                      add r2, r1, #5
003599c0  8f db fe eb                                      bl #0x310804
003599c4  48 30 9f e5                                      ldr r3, [pc, #0x48]
003599c8  06 10 a0 e1                                      mov r1, r6
003599cc  30 20 9d e5                                      ldr r2, [sp, #0x30]
003599d0  03 00 94 e7                                      ldr r0, [r4, r3]
003599d4  08 30 94 e7                                      ldr r3, [r4, r8]
003599d8  10 00 90 e5                                      ldr r0, [r0, #0x10]
003599dc  10 00 90 e5                                      ldr r0, [r0, #0x10]
003599e0  a4 0b 0b eb                                      bl #0x61c878
003599e4  04 c0 9d e5                                      ldr ip, [sp, #4]
003599e8  00 a0 a0 e1                                      mov sl, r0
003599ec  0c 00 a0 e1                                      mov r0, ip
003599f0  17 fa fe eb                                      bl #0x318254
003599f4  5a ff ff ea                                      b #0x359764
003599f8  34 20 9f e5                                      ldr r2, [pc, #0x34]
003599fc  02 20 8f e0                                      add r2, pc, r2
00359a00  02 10 a0 e1                                      mov r1, r2
00359a04  67 ff ff ea                                      b #0x3597a8
00359a08  40 d2 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00359a0c  88 b3 63 00 ac 40 00 00 f4 37 00 00 2c 0d 00 00  .byte 0x88, 0xb3, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x2c, 0x0d, 0x00, 0x00
00359a1c  e0 73 56 00 d4 73 56 00 b8 73 56 00 cc 73 56 00  .byte 0xe0, 0x73, 0x56, 0x00, 0xd4, 0x73, 0x56, 0x00, 0xb8, 0x73, 0x56, 0x00, 0xcc, 0x73, 0x56, 0x00
00359a2c  c8 73 56 00 3c 72 56 00 0c 1e 57 00              .byte 0xc8, 0x73, 0x56, 0x00, 0x3c, 0x72, 0x56, 0x00, 0x0c, 0x1e, 0x57, 0x00

; FUNCTION 0x00359a38, declared_size=304, range_size=304, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager18AddSkyBoxSceneNodeEPKcS1_
; demangled: SceneManager::AddSkyBoxSceneNode(char const*, char const*)
; decoder-mode: arm
00359a38  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00359a3c  00 30 d1 e5                                      ldrb r3, [r1]
00359a40  14 d0 4d e2                                      sub sp, sp, #0x14
00359a44  00 40 a0 e1                                      mov r4, r0
00359a48  00 00 53 e3                                      cmp r3, #0
00359a4c  01 00 00 1a                                      bne #0x359a58
00359a50  14 d0 8d e2                                      add sp, sp, #0x14
00359a54  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00359a58  01 c0 a0 e3                                      mov ip, #1
00359a5c  00 30 a0 e3                                      mov r3, #0
00359a60  00 c0 8d e5                                      str ip, [sp]
00359a64  23 ff ff eb                                      bl #0x3596f8
00359a68  00 50 50 e2                                      subs r5, r0, #0
00359a6c  f7 ff ff 0a                                      beq #0x359a50
00359a70  64 11 06 e3                                      movw r1, #0x6164
00359a74  65 1d 46 e3                                      movt r1, #0x6d65
00359a78  00 30 94 e5                                      ldr r3, [r4]
00359a7c  04 00 a0 e1                                      mov r0, r4
00359a80  05 20 a0 e1                                      mov r2, r5
00359a84  0f e0 a0 e1                                      mov lr, pc
00359a88  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00359a8c  00 70 50 e2                                      subs r7, r0, #0
00359a90  ee ff ff 0a                                      beq #0x359a50
00359a94  38 34 94 e5                                      ldr r3, [r4, #0x438]
00359a98  00 00 53 e3                                      cmp r3, #0
00359a9c  0a 00 00 0a                                      beq #0x359acc
00359aa0  03 00 a0 e1                                      mov r0, r3
00359aa4  00 30 93 e5                                      ldr r3, [r3]
00359aa8  0f e0 a0 e1                                      mov lr, pc
00359aac  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00359ab0  38 34 94 e5                                      ldr r3, [r4, #0x438]
00359ab4  00 20 93 e5                                      ldr r2, [r3]
00359ab8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00359abc  00 00 83 e0                                      add r0, r3, r0
00359ac0  af 0e ff eb                                      bl #0x31d584
00359ac4  00 30 a0 e3                                      mov r3, #0
00359ac8  38 34 84 e5                                      str r3, [r4, #0x438]
00359acc  08 00 8d e2                                      add r0, sp, #8
00359ad0  00 30 97 e5                                      ldr r3, [r7]
00359ad4  07 10 a0 e1                                      mov r1, r7
00359ad8  0f e0 a0 e1                                      mov lr, pc
00359adc  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
00359ae0  08 00 9d e5                                      ldr r0, [sp, #8]
00359ae4  00 00 50 e3                                      cmp r0, #0
00359ae8  0c 00 8d e5                                      str r0, [sp, #0xc]
00359aec  06 00 00 0a                                      beq #0x359b0c
00359af0  04 30 90 e5                                      ldr r3, [r0, #4]
00359af4  01 30 83 e2                                      add r3, r3, #1
00359af8  04 30 80 e5                                      str r3, [r0, #4]
00359afc  08 00 9d e5                                      ldr r0, [sp, #8]
00359b00  00 00 50 e3                                      cmp r0, #0
00359b04  00 00 00 0a                                      beq #0x359b0c
00359b08  9d 0e ff eb                                      bl #0x31d584
00359b0c  00 10 a0 e3                                      mov r1, #0
00359b10  52 0f a0 e3                                      mov r0, #0x148
00359b14  a4 69 07 eb                                      bl #0x5341ac
00359b18  07 20 a0 e1                                      mov r2, r7
00359b1c  0c 10 8d e2                                      add r1, sp, #0xc
00359b20  00 60 a0 e1                                      mov r6, r0
00359b24  39 23 00 eb                                      bl #0x362810
00359b28  04 30 94 e5                                      ldr r3, [r4, #4]
00359b2c  38 64 84 e5                                      str r6, [r4, #0x438]
00359b30  06 10 a0 e1                                      mov r1, r6
00359b34  03 00 a0 e1                                      mov r0, r3
00359b38  00 30 93 e5                                      ldr r3, [r3]
00359b3c  0f e0 a0 e1                                      mov lr, pc
00359b40  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00359b44  00 30 95 e5                                      ldr r3, [r5]
00359b48  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00359b4c  00 00 85 e0                                      add r0, r5, r0
00359b50  8b 0e ff eb                                      bl #0x31d584
00359b54  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00359b58  00 00 50 e3                                      cmp r0, #0
00359b5c  bb ff ff 0a                                      beq #0x359a50
00359b60  87 0e ff eb                                      bl #0x31d584
00359b64  b9 ff ff ea                                      b #0x359a50

; FUNCTION 0x00359b68, declared_size=248, range_size=248, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12PreloadSceneEPKcS1_
; demangled: SceneManager::PreloadScene(char const*, char const*)
; decoder-mode: arm
00359b68  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00359b6c  00 c0 a0 e3                                      mov ip, #0
00359b70  14 d0 4d e2                                      sub sp, sp, #0x14
00359b74  0c 30 a0 e1                                      mov r3, ip
00359b78  00 c0 8d e5                                      str ip, [sp]
00359b7c  00 40 a0 e1                                      mov r4, r0
00359b80  dc fe ff eb                                      bl #0x3596f8
00359b84  00 60 50 e2                                      subs r6, r0, #0
00359b88  07 00 00 0a                                      beq #0x359bac
00359b8c  50 54 94 e5                                      ldr r5, [r4, #0x450]
00359b90  54 34 94 e5                                      ldr r3, [r4, #0x454]
00359b94  03 00 55 e1                                      cmp r5, r3
00359b98  05 00 00 0a                                      beq #0x359bb4
00359b9c  00 60 85 e5                                      str r6, [r5]
00359ba0  50 34 94 e5                                      ldr r3, [r4, #0x450]
00359ba4  04 30 83 e2                                      add r3, r3, #4
00359ba8  50 34 84 e5                                      str r3, [r4, #0x450]
00359bac  14 d0 8d e2                                      add sp, sp, #0x14
00359bb0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00359bb4  4c 34 94 e5                                      ldr r3, [r4, #0x44c]
00359bb8  05 30 63 e0                                      rsb r3, r3, r5
00359bbc  43 31 a0 e1                                      asr r3, r3, #2
00359bc0  01 00 53 e3                                      cmp r3, #1
00359bc4  03 10 83 20                                      addhs r1, r3, r3
00359bc8  01 10 83 32                                      addlo r1, r3, #1
00359bcc  07 01 71 e3                                      cmn r1, #0xc0000001
00359bd0  1d 00 00 9a                                      bls #0x359c4c
00359bd4  03 11 e0 e3                                      mvn r1, #0xc0000000
00359bd8  10 20 8d e2                                      add r2, sp, #0x10
00359bdc  45 0e 84 e2                                      add r0, r4, #0x450
00359be0  04 10 22 e5                                      str r1, [r2, #-4]!
00359be4  04 00 80 e2                                      add r0, r0, #4
00359be8  c2 5f ff eb                                      bl #0x331af8
00359bec  4c 14 94 e5                                      ldr r1, [r4, #0x44c]
00359bf0  00 70 a0 e1                                      mov r7, r0
00359bf4  01 50 55 e0                                      subs r5, r5, r1
00359bf8  00 50 a0 01                                      moveq r5, r0
00359bfc  02 00 00 0a                                      beq #0x359c0c
00359c00  05 20 a0 e1                                      mov r2, r5
00359c04  cb d0 fe eb                                      bl #0x30df38
00359c08  05 50 80 e0                                      add r5, r0, r5
00359c0c  04 60 85 e4                                      str r6, [r5], #4
00359c10  4c 04 94 e5                                      ldr r0, [r4, #0x44c]
00359c14  54 14 94 e5                                      ldr r1, [r4, #0x454]
00359c18  00 00 50 e3                                      cmp r0, #0
00359c1c  04 00 00 0a                                      beq #0x359c34
00359c20  01 10 60 e0                                      rsb r1, r0, r1
00359c24  03 10 c1 e3                                      bic r1, r1, #3
00359c28  80 00 51 e3                                      cmp r1, #0x80
00359c2c  09 00 00 8a                                      bhi #0x359c58
00359c30  b2 bc 0e eb                                      bl #0x708f00
00359c34  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00359c38  4c 74 84 e5                                      str r7, [r4, #0x44c]
00359c3c  50 54 84 e5                                      str r5, [r4, #0x450]
00359c40  03 71 87 e0                                      add r7, r7, r3, lsl #2
00359c44  54 74 84 e5                                      str r7, [r4, #0x454]
00359c48  d7 ff ff ea                                      b #0x359bac
00359c4c  01 00 53 e1                                      cmp r3, r1
00359c50  e0 ff ff 9a                                      bls #0x359bd8
00359c54  de ff ff ea                                      b #0x359bd4
00359c58  f8 d9 fe eb                                      bl #0x310440
00359c5c  f4 ff ff ea                                      b #0x359c34

; FUNCTION 0x00359c60, declared_size=168, range_size=168, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager11GetMaterialEPN6glitch5scene10ISceneNodeEPKcb
; demangled: SceneManager::GetMaterial(glitch::scene::ISceneNode*, char const*, bool)
; decoder-mode: arm
00359c60  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00359c64  94 40 9f e5                                      ldr r4, [pc, #0x94]
00359c68  94 60 9f e5                                      ldr r6, [pc, #0x94]
00359c6c  00 00 53 e3                                      cmp r3, #0
00359c70  00 00 52 13                                      cmpne r2, #0
00359c74  04 40 8f e0                                      add r4, pc, r4
00359c78  06 c0 94 e7                                      ldr ip, [r4, r6]
00359c7c  28 d0 4d e2                                      sub sp, sp, #0x28
00359c80  02 80 a0 e1                                      mov r8, r2
00359c84  00 c0 9c e5                                      ldr ip, [ip]
00359c88  00 20 a0 03                                      moveq r2, #0
00359c8c  01 20 a0 13                                      movne r2, #1
00359c90  48 90 dd e5                                      ldrb sb, [sp, #0x48]
00359c94  24 c0 8d e5                                      str ip, [sp, #0x24]
00359c98  00 50 a0 e1                                      mov r5, r0
00359c9c  01 a0 a0 e1                                      mov sl, r1
00359ca0  00 20 80 05                                      streq r2, [r0]
00359ca4  0c 00 00 0a                                      beq #0x359cdc
00359ca8  0c 70 8d e2                                      add r7, sp, #0xc
00359cac  03 10 a0 e1                                      mov r1, r3
00359cb0  08 20 8d e2                                      add r2, sp, #8
00359cb4  07 00 a0 e1                                      mov r0, r7
00359cb8  0b e9 fe eb                                      bl #0x3140ec
00359cbc  05 00 a0 e1                                      mov r0, r5
00359cc0  0a 10 a0 e1                                      mov r1, sl
00359cc4  08 20 a0 e1                                      mov r2, r8
00359cc8  07 30 a0 e1                                      mov r3, r7
00359ccc  00 90 8d e5                                      str sb, [sp]
00359cd0  ca ec ff eb                                      bl #0x355000
00359cd4  07 00 a0 e1                                      mov r0, r7
00359cd8  5d f9 fe eb                                      bl #0x318254
00359cdc  06 30 94 e7                                      ldr r3, [r4, r6]
00359ce0  24 20 9d e5                                      ldr r2, [sp, #0x24]
00359ce4  05 00 a0 e1                                      mov r0, r5
00359ce8  00 30 93 e5                                      ldr r3, [r3]
00359cec  03 00 52 e1                                      cmp r2, r3
00359cf0  01 00 00 1a                                      bne #0x359cfc
00359cf4  28 d0 8d e2                                      add sp, sp, #0x28
00359cf8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00359cfc  83 d1 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00359d00  1c ae 63 00 ac 40 00 00                          .byte 0x1c, 0xae, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00359d08, declared_size=676, range_size=676, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager26SetMaterialRimLightEffectsEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEEfSs
; demangled: SceneManager::SetMaterialRimLightEffects(boost::intrusive_ptr<glitch::video::CMaterial>, float, std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
00359d08  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00359d0c  6c 42 9f e5                                      ldr r4, [pc, #0x26c]
00359d10  6c 52 9f e5                                      ldr r5, [pc, #0x26c]
00359d14  38 d0 4d e2                                      sub sp, sp, #0x38
00359d18  04 40 8f e0                                      add r4, pc, r4
00359d1c  05 00 94 e7                                      ldr r0, [r4, r5]
00359d20  01 60 a0 e1                                      mov r6, r1
00359d24  00 10 91 e5                                      ldr r1, [r1]
00359d28  04 20 8d e5                                      str r2, [sp, #4]
00359d2c  00 20 90 e5                                      ldr r2, [r0]
00359d30  03 70 a0 e1                                      mov r7, r3
00359d34  34 20 8d e5                                      str r2, [sp, #0x34]
00359d38  04 30 91 e5                                      ldr r3, [r1, #4]
00359d3c  44 12 9f e5                                      ldr r1, [pc, #0x244]
00359d40  00 00 53 e3                                      cmp r3, #0
00359d44  14 30 8d e5                                      str r3, [sp, #0x14]
00359d48  00 20 93 15                                      ldrne r2, [r3]
00359d4c  01 10 8f e0                                      add r1, pc, r1
00359d50  01 20 82 12                                      addne r2, r2, #1
00359d54  00 20 83 15                                      strne r2, [r3]
00359d58  14 30 9d 15                                      ldrne r3, [sp, #0x14]
00359d5c  0a 20 a0 e3                                      mov r2, #0xa
00359d60  08 80 93 e5                                      ldr r8, [r3, #8]
00359d64  08 00 a0 e1                                      mov r0, r8
00359d68  c3 d3 fe eb                                      bl #0x30ec7c
00359d6c  00 00 50 e3                                      cmp r0, #0
00359d70  0f 00 00 0a                                      beq #0x359db4
00359d74  10 12 9f e5                                      ldr r1, [pc, #0x210]
00359d78  08 00 a0 e1                                      mov r0, r8
00359d7c  07 20 a0 e3                                      mov r2, #7
00359d80  01 10 8f e0                                      add r1, pc, r1
00359d84  bc d3 fe eb                                      bl #0x30ec7c
00359d88  00 00 50 e3                                      cmp r0, #0
00359d8c  08 00 00 0a                                      beq #0x359db4
00359d90  14 00 8d e2                                      add r0, sp, #0x14
00359d94  47 e1 ff eb                                      bl #0x3522b8
00359d98  05 30 94 e7                                      ldr r3, [r4, r5]
00359d9c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00359da0  00 30 93 e5                                      ldr r3, [r3]
00359da4  03 00 52 e1                                      cmp r2, r3
00359da8  73 00 00 1a                                      bne #0x359f7c
00359dac  38 d0 8d e2                                      add sp, sp, #0x38
00359db0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00359db4  00 a0 96 e5                                      ldr sl, [r6]
00359db8  1c 80 9a e5                                      ldr r8, [sl, #0x1c]
00359dbc  00 00 58 e3                                      cmp r8, #0
00359dc0  04 80 88 12                                      addne r8, r8, #4
00359dc4  08 00 a0 e1                                      mov r0, r8
00359dc8  21 d0 fe eb                                      bl #0x30de54
00359dcc  02 00 50 e3                                      cmp r0, #2
00359dd0  ee ff ff da                                      ble #0x359d90
00359dd4  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
00359dd8  08 00 a0 e1                                      mov r0, r8
00359ddc  03 20 a0 e3                                      mov r2, #3
00359de0  01 10 8f e0                                      add r1, pc, r1
00359de4  a4 d3 fe eb                                      bl #0x30ec7c
00359de8  00 00 50 e3                                      cmp r0, #0
00359dec  06 00 00 0a                                      beq #0x359e0c
00359df0  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
00359df4  08 00 a0 e1                                      mov r0, r8
00359df8  03 20 a0 e3                                      mov r2, #3
00359dfc  01 10 8f e0                                      add r1, pc, r1
00359e00  9d d3 fe eb                                      bl #0x30ec7c
00359e04  00 00 50 e3                                      cmp r0, #0
00359e08  e0 ff ff 1a                                      bne #0x359d90
00359e0c  84 11 9f e5                                      ldr r1, [pc, #0x184]
00359e10  04 00 9a e5                                      ldr r0, [sl, #4]
00359e14  00 20 a0 e3                                      mov r2, #0
00359e18  01 10 8f e0                                      add r1, pc, r1
00359e1c  9a e4 09 eb                                      bl #0x5d308c
00359e20  00 30 96 e5                                      ldr r3, [r6]
00359e24  70 11 9f e5                                      ldr r1, [pc, #0x170]
00359e28  00 a0 a0 e1                                      mov sl, r0
00359e2c  00 20 a0 e3                                      mov r2, #0
00359e30  04 00 93 e5                                      ldr r0, [r3, #4]
00359e34  01 10 8f e0                                      add r1, pc, r1
00359e38  93 e4 09 eb                                      bl #0x5d308c
00359e3c  ff 3f 0f e3                                      movw r3, #0xffff
00359e40  03 00 5a e1                                      cmp sl, r3
00359e44  00 80 a0 e1                                      mov r8, r0
00359e48  04 00 00 0a                                      beq #0x359e60
00359e4c  04 00 9d e5                                      ldr r0, [sp, #4]
00359e50  bf 14 a0 e3                                      mov r1, #0xbf000000
00359e54  27 d1 fe eb                                      bl #0x30e2f8
00359e58  00 00 50 e3                                      cmp r0, #0
00359e5c  32 00 00 1a                                      bne #0x359f2c
00359e60  ff 3f 0f e3                                      movw r3, #0xffff
00359e64  03 00 58 e1                                      cmp r8, r3
00359e68  c8 ff ff 0a                                      beq #0x359d90
00359e6c  14 30 97 e5                                      ldr r3, [r7, #0x14]
00359e70  d0 30 d3 e1                                      ldrsb r3, [r3]
00359e74  00 00 53 e3                                      cmp r3, #0
00359e78  c4 ff ff 0a                                      beq #0x359d90
00359e7c  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
00359e80  1c a0 8d e2                                      add sl, sp, #0x1c
00359e84  18 20 8d e2                                      add r2, sp, #0x18
00359e88  01 10 8f e0                                      add r1, pc, r1
00359e8c  0a 00 a0 e1                                      mov r0, sl
00359e90  95 e8 fe eb                                      bl #0x3140ec
00359e94  10 20 97 e5                                      ldr r2, [r7, #0x10]
00359e98  14 10 97 e5                                      ldr r1, [r7, #0x14]
00359e9c  0a 00 a0 e1                                      mov r0, sl
00359ea0  57 da fe eb                                      bl #0x310804
00359ea4  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00359ea8  10 70 8d e2                                      add r7, sp, #0x10
00359eac  07 00 a0 e1                                      mov r0, r7
00359eb0  03 10 94 e7                                      ldr r1, [r4, r3]
00359eb4  30 20 9d e5                                      ldr r2, [sp, #0x30]
00359eb8  00 30 a0 e3                                      mov r3, #0
00359ebc  10 10 91 e5                                      ldr r1, [r1, #0x10]
00359ec0  10 10 91 e5                                      ldr r1, [r1, #0x10]
00359ec4  e0 10 91 e5                                      ldr r1, [r1, #0xe0]
00359ec8  d0 4c 0a eb                                      bl #0x5ed210
00359ecc  00 20 a0 e3                                      mov r2, #0
00359ed0  38 30 8d e2                                      add r3, sp, #0x38
00359ed4  2c 20 23 e5                                      str r2, [r3, #-0x2c]!
00359ed8  00 00 96 e5                                      ldr r0, [r6]
00359edc  08 10 a0 e1                                      mov r1, r8
00359ee0  f5 ce 09 eb                                      bl #0x5cdabc
00359ee4  0c 90 9d e5                                      ldr sb, [sp, #0xc]
00359ee8  00 00 59 e3                                      cmp sb, #0
00359eec  14 00 00 0a                                      beq #0x359f44
00359ef0  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
00359ef4  1c 00 99 e5                                      ldr r0, [sb, #0x1c]
00359ef8  01 10 8f e0                                      add r1, pc, r1
00359efc  34 d3 fe eb                                      bl #0x30ebd4
00359f00  00 20 50 e2                                      subs r2, r0, #0
00359f04  17 00 00 0a                                      beq #0x359f68
00359f08  09 00 a0 e1                                      mov r0, sb
00359f0c  9c 0d ff eb                                      bl #0x31d584
00359f10  10 00 9d e5                                      ldr r0, [sp, #0x10]
00359f14  00 00 50 e3                                      cmp r0, #0
00359f18  00 00 00 0a                                      beq #0x359f20
00359f1c  98 0d ff eb                                      bl #0x31d584
00359f20  0a 00 a0 e1                                      mov r0, sl
00359f24  ca f8 fe eb                                      bl #0x318254
00359f28  98 ff ff ea                                      b #0x359d90
00359f2c  0a 10 a0 e1                                      mov r1, sl
00359f30  00 00 96 e5                                      ldr r0, [r6]
00359f34  00 20 a0 e3                                      mov r2, #0
00359f38  04 30 8d e2                                      add r3, sp, #4
00359f3c  64 b1 09 eb                                      bl #0x5c64d4
00359f40  c6 ff ff ea                                      b #0x359e60
00359f44  00 00 96 e5                                      ldr r0, [r6]
00359f48  08 10 a0 e1                                      mov r1, r8
00359f4c  09 20 a0 e1                                      mov r2, sb
00359f50  07 30 a0 e1                                      mov r3, r7
00359f54  f2 cc 09 eb                                      bl #0x5cd324
00359f58  0c 90 9d e5                                      ldr sb, [sp, #0xc]
00359f5c  00 00 59 e3                                      cmp sb, #0
00359f60  ea ff ff 0a                                      beq #0x359f10
00359f64  e7 ff ff ea                                      b #0x359f08
00359f68  00 00 96 e5                                      ldr r0, [r6]
00359f6c  08 10 a0 e1                                      mov r1, r8
00359f70  07 30 a0 e1                                      mov r3, r7
00359f74  ea cc 09 eb                                      bl #0x5cd324
00359f78  f6 ff ff ea                                      b #0x359f58
00359f7c  e3 d0 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00359f80  78 ad 63 00 ac 40 00 00 ec 6a 56 00 d8 6a 56 00  .byte 0x78, 0xad, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0xec, 0x6a, 0x56, 0x00, 0xd8, 0x6a, 0x56, 0x00
00359f90  80 6a 56 00 74 6a 56 00 10 6e 56 00 04 6e 56 00  .byte 0x80, 0x6a, 0x56, 0x00, 0x74, 0x6a, 0x56, 0x00, 0x10, 0x6e, 0x56, 0x00, 0x04, 0x6e, 0x56, 0x00
00359fa0  c0 6d 56 00 f4 37 00 00 68 6d 56 00              .byte 0xc0, 0x6d, 0x56, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x68, 0x6d, 0x56, 0x00

; FUNCTION 0x00359fac, declared_size=152, range_size=152, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeERSt6vectorIS3_NS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEPKcb
; demangled: SceneManager::SearchByName(glitch::scene::ISceneNode*, std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >&, char const*, bool)
; decoder-mode: arm
00359fac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00359fb0  84 40 9f e5                                      ldr r4, [pc, #0x84]
00359fb4  84 50 9f e5                                      ldr r5, [pc, #0x84]
00359fb8  01 70 a0 e1                                      mov r7, r1
00359fbc  04 40 8f e0                                      add r4, pc, r4
00359fc0  05 c0 94 e7                                      ldr ip, [r4, r5]
00359fc4  00 00 53 e3                                      cmp r3, #0
00359fc8  00 00 51 13                                      cmpne r1, #0
00359fcc  28 d0 4d e2                                      sub sp, sp, #0x28
00359fd0  00 10 9c e5                                      ldr r1, [ip]
00359fd4  00 80 a0 e1                                      mov r8, r0
00359fd8  02 a0 a0 e1                                      mov sl, r2
00359fdc  24 10 8d e5                                      str r1, [sp, #0x24]
00359fe0  48 90 dd e5                                      ldrb sb, [sp, #0x48]
00359fe4  0c 00 00 0a                                      beq #0x35a01c
00359fe8  0c 60 8d e2                                      add r6, sp, #0xc
00359fec  03 10 a0 e1                                      mov r1, r3
00359ff0  08 20 8d e2                                      add r2, sp, #8
00359ff4  06 00 a0 e1                                      mov r0, r6
00359ff8  3b e8 fe eb                                      bl #0x3140ec
00359ffc  08 00 a0 e1                                      mov r0, r8
0035a000  07 10 a0 e1                                      mov r1, r7
0035a004  0a 20 a0 e1                                      mov r2, sl
0035a008  06 30 a0 e1                                      mov r3, r6
0035a00c  00 90 8d e5                                      str sb, [sp]
0035a010  a5 f9 ff eb                                      bl #0x3586ac
0035a014  06 00 a0 e1                                      mov r0, r6
0035a018  8d f8 fe eb                                      bl #0x318254
0035a01c  05 30 94 e7                                      ldr r3, [r4, r5]
0035a020  24 20 9d e5                                      ldr r2, [sp, #0x24]
0035a024  00 30 93 e5                                      ldr r3, [r3]
0035a028  03 00 52 e1                                      cmp r2, r3
0035a02c  01 00 00 1a                                      bne #0x35a038
0035a030  28 d0 8d e2                                      add sp, sp, #0x28
0035a034  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0035a038  b4 d0 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0035a03c  d4 aa 63 00 ac 40 00 00                          .byte 0xd4, 0xaa, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0035a044, declared_size=160, range_size=160, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeEPFvS3_EPKcb
; demangled: SceneManager::SearchByName(glitch::scene::ISceneNode*, void (*)(glitch::scene::ISceneNode*), char const*, bool)
; decoder-mode: arm
0035a044  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0035a048  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
0035a04c  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
0035a050  02 80 a0 e1                                      mov r8, r2
0035a054  04 40 8f e0                                      add r4, pc, r4
0035a058  05 20 94 e7                                      ldr r2, [r4, r5]
0035a05c  28 d0 4d e2                                      sub sp, sp, #0x28
0035a060  00 00 58 e3                                      cmp r8, #0
0035a064  00 00 51 13                                      cmpne r1, #0
0035a068  00 20 92 e5                                      ldr r2, [r2]
0035a06c  01 60 a0 e1                                      mov r6, r1
0035a070  00 a0 a0 e1                                      mov sl, r0
0035a074  24 20 8d e5                                      str r2, [sp, #0x24]
0035a078  48 90 dd e5                                      ldrb sb, [sp, #0x48]
0035a07c  0e 00 00 0a                                      beq #0x35a0bc
0035a080  00 00 53 e3                                      cmp r3, #0
0035a084  0c 00 00 0a                                      beq #0x35a0bc
0035a088  0c 70 8d e2                                      add r7, sp, #0xc
0035a08c  03 10 a0 e1                                      mov r1, r3
0035a090  08 20 8d e2                                      add r2, sp, #8
0035a094  07 00 a0 e1                                      mov r0, r7
0035a098  13 e8 fe eb                                      bl #0x3140ec
0035a09c  0a 00 a0 e1                                      mov r0, sl
0035a0a0  06 10 a0 e1                                      mov r1, r6
0035a0a4  08 20 a0 e1                                      mov r2, r8
0035a0a8  07 30 a0 e1                                      mov r3, r7
0035a0ac  00 90 8d e5                                      str sb, [sp]
0035a0b0  7b e2 ff eb                                      bl #0x352aa4
0035a0b4  07 00 a0 e1                                      mov r0, r7
0035a0b8  65 f8 fe eb                                      bl #0x318254
0035a0bc  05 30 94 e7                                      ldr r3, [r4, r5]
0035a0c0  24 20 9d e5                                      ldr r2, [sp, #0x24]
0035a0c4  00 30 93 e5                                      ldr r3, [r3]
0035a0c8  03 00 52 e1                                      cmp r2, r3
0035a0cc  01 00 00 1a                                      bne #0x35a0d8
0035a0d0  28 d0 8d e2                                      add sp, sp, #0x28
0035a0d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0035a0d8  8c d0 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0035a0dc  3c aa 63 00 ac 40 00 00                          .byte 0x3c, 0xaa, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0035a0e4, declared_size=164, range_size=164, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeEPKcb
; demangled: SceneManager::SearchByName(glitch::scene::ISceneNode*, char const*, bool)
; decoder-mode: arm
0035a0e4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035a0e8  90 40 9f e5                                      ldr r4, [pc, #0x90]
0035a0ec  90 60 9f e5                                      ldr r6, [pc, #0x90]
0035a0f0  00 00 52 e3                                      cmp r2, #0
0035a0f4  00 00 51 13                                      cmpne r1, #0
0035a0f8  04 40 8f e0                                      add r4, pc, r4
0035a0fc  06 c0 94 e7                                      ldr ip, [r4, r6]
0035a100  01 50 a0 e1                                      mov r5, r1
0035a104  24 d0 4d e2                                      sub sp, sp, #0x24
0035a108  00 c0 9c e5                                      ldr ip, [ip]
0035a10c  00 10 a0 03                                      moveq r1, #0
0035a110  01 10 a0 13                                      movne r1, #1
0035a114  00 a0 a0 e1                                      mov sl, r0
0035a118  03 80 a0 e1                                      mov r8, r3
0035a11c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0035a120  01 50 a0 01                                      moveq r5, r1
0035a124  0c 00 00 0a                                      beq #0x35a15c
0035a128  04 70 8d e2                                      add r7, sp, #4
0035a12c  02 10 a0 e1                                      mov r1, r2
0035a130  07 00 a0 e1                                      mov r0, r7
0035a134  0d 20 a0 e1                                      mov r2, sp
0035a138  eb e7 fe eb                                      bl #0x3140ec
0035a13c  05 10 a0 e1                                      mov r1, r5
0035a140  0a 00 a0 e1                                      mov r0, sl
0035a144  07 20 a0 e1                                      mov r2, r7
0035a148  08 30 a0 e1                                      mov r3, r8
0035a14c  88 e2 ff eb                                      bl #0x352b74
0035a150  00 50 a0 e1                                      mov r5, r0
0035a154  07 00 a0 e1                                      mov r0, r7
0035a158  3d f8 fe eb                                      bl #0x318254
0035a15c  06 30 94 e7                                      ldr r3, [r4, r6]
0035a160  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0035a164  05 00 a0 e1                                      mov r0, r5
0035a168  00 30 93 e5                                      ldr r3, [r3]
0035a16c  03 00 52 e1                                      cmp r2, r3
0035a170  01 00 00 1a                                      bne #0x35a17c
0035a174  24 d0 8d e2                                      add sp, sp, #0x24
0035a178  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0035a17c  63 d0 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0035a180  98 a9 63 00 ac 40 00 00                          .byte 0x98, 0xa9, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0035a188, declared_size=592, range_size=592, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager26SetMaterialRimLightEffectsEPN6glitch5scene10ISceneNodeEfSs
; demangled: SceneManager::SetMaterialRimLightEffects(glitch::scene::ISceneNode*, float, std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
0035a188  40 c2 9f e5                                      ldr ip, [pc, #0x240]
0035a18c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035a190  3c e2 9f e5                                      ldr lr, [pc, #0x23c]
0035a194  0c c0 8f e0                                      add ip, pc, ip
0035a198  00 50 51 e2                                      subs r5, r1, #0
0035a19c  0e 10 9c e7                                      ldr r1, [ip, lr]
0035a1a0  02 90 a0 e1                                      mov sb, r2
0035a1a4  4c d0 4d e2                                      sub sp, sp, #0x4c
0035a1a8  00 20 91 e5                                      ldr r2, [r1]
0035a1ac  10 c0 8d e5                                      str ip, [sp, #0x10]
0035a1b0  14 e0 8d e5                                      str lr, [sp, #0x14]
0035a1b4  44 20 8d e5                                      str r2, [sp, #0x44]
0035a1b8  04 50 90 05                                      ldreq r5, [r0, #4]
0035a1bc  18 60 8d e2                                      add r6, sp, #0x18
0035a1c0  03 70 a0 e1                                      mov r7, r3
0035a1c4  64 31 06 e3                                      movw r3, #0x6164
0035a1c8  00 40 a0 e3                                      mov r4, #0
0035a1cc  65 3d 46 e3                                      movt r3, #0x6d65
0035a1d0  05 10 a0 e1                                      mov r1, r5
0035a1d4  06 20 a0 e1                                      mov r2, r6
0035a1d8  00 a0 a0 e1                                      mov sl, r0
0035a1dc  18 40 8d e5                                      str r4, [sp, #0x18]
0035a1e0  1c 40 8d e5                                      str r4, [sp, #0x1c]
0035a1e4  20 40 8d e5                                      str r4, [sp, #0x20]
0035a1e8  1b db ff eb                                      bl #0x350e5c
0035a1ec  64 31 06 e3                                      movw r3, #0x6164
0035a1f0  0a 00 a0 e1                                      mov r0, sl
0035a1f4  05 10 a0 e1                                      mov r1, r5
0035a1f8  06 20 a0 e1                                      mov r2, r6
0035a1fc  65 33 47 e3                                      movt r3, #0x7365
0035a200  15 db ff eb                                      bl #0x350e5c
0035a204  64 31 06 e3                                      movw r3, #0x6164
0035a208  0a 00 a0 e1                                      mov r0, sl
0035a20c  06 20 a0 e1                                      mov r2, r6
0035a210  65 3d 44 e3                                      movt r3, #0x4d65
0035a214  05 10 a0 e1                                      mov r1, r5
0035a218  0f db ff eb                                      bl #0x350e5c
0035a21c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0035a220  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0035a224  03 00 a0 e1                                      mov r0, r3
0035a228  02 20 63 e0                                      rsb r2, r3, r2
0035a22c  42 21 b0 e1                                      asrs r2, r2, #2
0035a230  0c 20 8d e5                                      str r2, [sp, #0xc]
0035a234  58 00 00 0a                                      beq #0x35a39c
0035a238  24 10 8d e2                                      add r1, sp, #0x24
0035a23c  08 40 8d e5                                      str r4, [sp, #8]
0035a240  28 b0 8d e2                                      add fp, sp, #0x28
0035a244  2c 40 8d e2                                      add r4, sp, #0x2c
0035a248  04 10 8d e5                                      str r1, [sp, #4]
0035a24c  08 20 9d e5                                      ldr r2, [sp, #8]
0035a250  02 61 93 e7                                      ldr r6, [r3, r2, lsl #2]
0035a254  00 30 96 e5                                      ldr r3, [r6]
0035a258  06 00 a0 e1                                      mov r0, r6
0035a25c  0f e0 a0 e1                                      mov lr, pc
0035a260  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0035a264  00 80 50 e2                                      subs r8, r0, #0
0035a268  43 00 00 da                                      ble #0x35a37c
0035a26c  00 50 a0 e3                                      mov r5, #0
0035a270  1f 00 00 ea                                      b #0x35a2f4
0035a274  21 bb 0e eb                                      bl #0x708f00
0035a278  24 30 9d e5                                      ldr r3, [sp, #0x24]
0035a27c  00 00 53 e3                                      cmp r3, #0
0035a280  0a 00 00 0a                                      beq #0x35a2b0
0035a284  00 20 93 e5                                      ldr r2, [r3]
0035a288  01 20 42 e2                                      sub r2, r2, #1
0035a28c  00 00 52 e3                                      cmp r2, #0
0035a290  00 20 83 e5                                      str r2, [r3]
0035a294  05 00 00 1a                                      bne #0x35a2b0
0035a298  03 00 a0 e1                                      mov r0, r3
0035a29c  00 30 8d e5                                      str r3, [sp]
0035a2a0  34 c7 09 eb                                      bl #0x5cbf78
0035a2a4  00 30 9d e5                                      ldr r3, [sp]
0035a2a8  03 00 a0 e1                                      mov r0, r3
0035a2ac  63 d8 fe eb                                      bl #0x310440
0035a2b0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0035a2b4  00 00 53 e3                                      cmp r3, #0
0035a2b8  0a 00 00 0a                                      beq #0x35a2e8
0035a2bc  00 20 93 e5                                      ldr r2, [r3]
0035a2c0  01 20 42 e2                                      sub r2, r2, #1
0035a2c4  00 00 52 e3                                      cmp r2, #0
0035a2c8  00 20 83 e5                                      str r2, [r3]
0035a2cc  05 00 00 1a                                      bne #0x35a2e8
0035a2d0  03 00 a0 e1                                      mov r0, r3
0035a2d4  00 30 8d e5                                      str r3, [sp]
0035a2d8  26 c7 09 eb                                      bl #0x5cbf78
0035a2dc  00 30 9d e5                                      ldr r3, [sp]
0035a2e0  03 00 a0 e1                                      mov r0, r3
0035a2e4  55 d8 fe eb                                      bl #0x310440
0035a2e8  01 50 85 e2                                      add r5, r5, #1
0035a2ec  05 00 58 e1                                      cmp r8, r5
0035a2f0  21 00 00 0a                                      beq #0x35a37c
0035a2f4  05 20 a0 e1                                      mov r2, r5
0035a2f8  00 30 96 e5                                      ldr r3, [r6]
0035a2fc  0b 00 a0 e1                                      mov r0, fp
0035a300  06 10 a0 e1                                      mov r1, r6
0035a304  0f e0 a0 e1                                      mov lr, pc
0035a308  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0035a30c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0035a310  04 00 a0 e1                                      mov r0, r4
0035a314  00 00 53 e3                                      cmp r3, #0
0035a318  24 30 8d e5                                      str r3, [sp, #0x24]
0035a31c  00 20 93 15                                      ldrne r2, [r3]
0035a320  01 20 82 12                                      addne r2, r2, #1
0035a324  00 20 83 15                                      strne r2, [r3]
0035a328  14 10 97 e5                                      ldr r1, [r7, #0x14]
0035a32c  10 20 97 e5                                      ldr r2, [r7, #0x10]
0035a330  3c 40 8d e5                                      str r4, [sp, #0x3c]
0035a334  40 40 8d e5                                      str r4, [sp, #0x40]
0035a338  ea dc fe eb                                      bl #0x3116e8
0035a33c  0a 00 a0 e1                                      mov r0, sl
0035a340  04 10 9d e5                                      ldr r1, [sp, #4]
0035a344  09 20 a0 e1                                      mov r2, sb
0035a348  04 30 a0 e1                                      mov r3, r4
0035a34c  6d fe ff eb                                      bl #0x359d08
0035a350  40 00 9d e5                                      ldr r0, [sp, #0x40]
0035a354  04 00 50 e1                                      cmp r0, r4
0035a358  c6 ff ff 0a                                      beq #0x35a278
0035a35c  00 00 50 e3                                      cmp r0, #0
0035a360  c4 ff ff 0a                                      beq #0x35a278
0035a364  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0035a368  01 10 60 e0                                      rsb r1, r0, r1
0035a36c  80 00 51 e3                                      cmp r1, #0x80
0035a370  bf ff ff 9a                                      bls #0x35a274
0035a374  31 d8 fe eb                                      bl #0x310440
0035a378  be ff ff ea                                      b #0x35a278
0035a37c  08 30 9d e5                                      ldr r3, [sp, #8]
0035a380  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0035a384  01 30 83 e2                                      add r3, r3, #1
0035a388  0c 00 53 e1                                      cmp r3, ip
0035a38c  08 30 8d e5                                      str r3, [sp, #8]
0035a390  18 30 9d 15                                      ldrne r3, [sp, #0x18]
0035a394  ac ff ff 1a                                      bne #0x35a24c
0035a398  18 00 9d e5                                      ldr r0, [sp, #0x18]
0035a39c  00 00 50 e3                                      cmp r0, #0
0035a3a0  00 00 00 0a                                      beq #0x35a3a8
0035a3a4  29 d8 fe eb                                      bl #0x310450
0035a3a8  10 20 9d e5                                      ldr r2, [sp, #0x10]
0035a3ac  14 10 9d e5                                      ldr r1, [sp, #0x14]
0035a3b0  01 30 92 e7                                      ldr r3, [r2, r1]
0035a3b4  44 20 9d e5                                      ldr r2, [sp, #0x44]
0035a3b8  00 30 93 e5                                      ldr r3, [r3]
0035a3bc  03 00 52 e1                                      cmp r2, r3
0035a3c0  01 00 00 1a                                      bne #0x35a3cc
0035a3c4  4c d0 8d e2                                      add sp, sp, #0x4c
0035a3c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035a3cc  cf cf fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0035a3d0  fc a8 63 00 ac 40 00 00                          .byte 0xfc, 0xa8, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0035a3d8, declared_size=1224, range_size=1224, mode=arm
; class-group: SceneManager
; alias: _ZN12SceneManager30registerNodeForCustomRenderingEPN6glitch5scene10ISceneNodeERKN5boost13intrusive_ptrINS0_5video9CMaterialEEEPv31E_SCENE_NODE_CUSTOM_RENDER_PASSPKNS0_4core8vector3dIfEEi
; demangled: SceneManager::registerNodeForCustomRendering(glitch::scene::ISceneNode*, boost::intrusive_ptr<glitch::video::CMaterial> const&, void*, E_SCENE_NODE_CUSTOM_RENDER_PASS, glitch::core::vector3d<float> const*, int)
; decoder-mode: arm
0035a3d8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035a3dc  f4 d0 4d e2                                      sub sp, sp, #0xf4
0035a3e0  10 c1 9d e5                                      ldr ip, [sp, #0x110]
0035a3e4  00 40 a0 e1                                      mov r4, r0
0035a3e8  03 50 a0 e1                                      mov r5, r3
0035a3ec  14 a1 9d e5                                      ldr sl, [sp, #0x114]
0035a3f0  18 81 9d e5                                      ldr r8, [sp, #0x118]
0035a3f4  0a 00 5c e3                                      cmp ip, #0xa
0035a3f8  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
0035a3fc  0a 00 00 ea                                      b #0x35a42c
0035a400  0c 00 00 ea                                      b #0x35a438
0035a404  28 00 00 ea                                      b #0x35a4ac
0035a408  36 00 00 ea                                      b #0x35a4e8
0035a40c  43 00 00 ea                                      b #0x35a520
0035a410  61 00 00 ea                                      b #0x35a59c
0035a414  77 00 00 ea                                      b #0x35a5f8
0035a418  84 00 00 ea                                      b #0x35a630
0035a41c  91 00 00 ea                                      b #0x35a668
0035a420  01 00 00 ea                                      b #0x35a42c
0035a424  aa 00 00 ea                                      b #0x35a6d4
0035a428  c1 00 00 ea                                      b #0x35a734
0035a42c  00 00 a0 e3                                      mov r0, #0
0035a430  f4 d0 8d e2                                      add sp, sp, #0xf4
0035a434  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0035a438  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
0035a43c  40 30 90 e5                                      ldr r3, [r0, #0x40]
0035a440  03 60 6c e0                                      rsb r6, ip, r3
0035a444  c6 61 b0 e1                                      asrs r6, r6, #3
0035a448  0a 00 00 0a                                      beq #0x35a478
0035a44c  00 20 9c e5                                      ldr r2, [ip]
0035a450  01 00 52 e1                                      cmp r2, r1
0035a454  00 20 a0 13                                      movne r2, #0
0035a458  03 00 00 1a                                      bne #0x35a46c
0035a45c  f2 ff ff ea                                      b #0x35a42c
0035a460  82 01 9c e7                                      ldr r0, [ip, r2, lsl #3]
0035a464  01 00 50 e1                                      cmp r0, r1
0035a468  ef ff ff 0a                                      beq #0x35a42c
0035a46c  01 20 82 e2                                      add r2, r2, #1
0035a470  06 00 52 e1                                      cmp r2, r6
0035a474  f9 ff ff 1a                                      bne #0x35a460
0035a478  44 20 94 e5                                      ldr r2, [r4, #0x44]
0035a47c  bc 50 8d e5                                      str r5, [sp, #0xbc]
0035a480  b8 10 8d e5                                      str r1, [sp, #0xb8]
0035a484  02 00 53 e1                                      cmp r3, r2
0035a488  fa 00 00 0a                                      beq #0x35a878
0035a48c  00 10 83 e5                                      str r1, [r3]
0035a490  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
0035a494  01 00 a0 e3                                      mov r0, #1
0035a498  04 20 83 e5                                      str r2, [r3, #4]
0035a49c  40 30 94 e5                                      ldr r3, [r4, #0x40]
0035a4a0  08 30 83 e2                                      add r3, r3, #8
0035a4a4  40 30 84 e5                                      str r3, [r4, #0x40]
0035a4a8  e0 ff ff ea                                      b #0x35a430
0035a4ac  90 60 8d e2                                      add r6, sp, #0x90
0035a4b0  06 00 a0 e1                                      mov r0, r6
0035a4b4  e8 20 84 e2                                      add r2, r4, #0xe8
0035a4b8  0d da ff eb                                      bl #0x350cf4
0035a4bc  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
0035a4c0  50 30 94 e5                                      ldr r3, [r4, #0x50]
0035a4c4  03 00 5c e1                                      cmp ip, r3
0035a4c8  e0 00 00 0a                                      beq #0x35a850
0035a4cc  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
0035a4d0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0035a4d4  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0035a4d8  01 00 a0 e3                                      mov r0, #1
0035a4dc  10 30 83 e2                                      add r3, r3, #0x10
0035a4e0  4c 30 84 e5                                      str r3, [r4, #0x4c]
0035a4e4  d1 ff ff ea                                      b #0x35a430
0035a4e8  70 30 90 e5                                      ldr r3, [r0, #0x70]
0035a4ec  74 20 90 e5                                      ldr r2, [r0, #0x74]
0035a4f0  b4 50 8d e5                                      str r5, [sp, #0xb4]
0035a4f4  b0 10 8d e5                                      str r1, [sp, #0xb0]
0035a4f8  02 00 53 e1                                      cmp r3, r2
0035a4fc  b5 00 00 0a                                      beq #0x35a7d8
0035a500  00 10 83 e5                                      str r1, [r3]
0035a504  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
0035a508  01 00 a0 e3                                      mov r0, #1
0035a50c  04 20 83 e5                                      str r2, [r3, #4]
0035a510  70 30 94 e5                                      ldr r3, [r4, #0x70]
0035a514  08 30 83 e2                                      add r3, r3, #8
0035a518  70 30 84 e5                                      str r3, [r4, #0x70]
0035a51c  c3 ff ff ea                                      b #0x35a430
0035a520  00 60 92 e5                                      ldr r6, [r2]
0035a524  00 00 56 e3                                      cmp r6, #0
0035a528  a7 00 00 0a                                      beq #0x35a7cc
0035a52c  06 00 a0 e1                                      mov r0, r6
0035a530  14 10 8d e5                                      str r1, [sp, #0x14]
0035a534  10 20 8d e5                                      str r2, [sp, #0x10]
0035a538  fd ad 09 eb                                      bl #0x5c5d34
0035a53c  04 30 96 e5                                      ldr r3, [r6, #4]
0035a540  0c c0 a0 e3                                      mov ip, #0xc
0035a544  14 10 9d e5                                      ldr r1, [sp, #0x14]
0035a548  18 30 93 e5                                      ldr r3, [r3, #0x18]
0035a54c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0035a550  9c 30 23 e0                                      mla r3, ip, r0, r3
0035a554  08 30 93 e5                                      ldr r3, [r3, #8]
0035a558  04 30 93 e5                                      ldr r3, [r3, #4]
0035a55c  01 08 13 e3                                      tst r3, #0x10000
0035a560  7d 00 00 0a                                      beq #0x35a75c
0035a564  8a 32 d4 e5                                      ldrb r3, [r4, #0x28a]
0035a568  00 00 53 e3                                      cmp r3, #0
0035a56c  7a 00 00 1a                                      bne #0x35a75c
0035a570  00 30 92 e5                                      ldr r3, [r2]
0035a574  84 70 84 e2                                      add r7, r4, #0x84
0035a578  e8 20 84 e2                                      add r2, r4, #0xe8
0035a57c  00 00 53 e3                                      cmp r3, #0
0035a580  cc 30 8d e5                                      str r3, [sp, #0xcc]
0035a584  00 00 93 15                                      ldrne r0, [r3]
0035a588  18 60 8d e2                                      add r6, sp, #0x18
0035a58c  cc 40 8d e2                                      add r4, sp, #0xcc
0035a590  01 00 80 12                                      addne r0, r0, #1
0035a594  00 00 83 15                                      strne r0, [r3]
0035a598  3f 00 00 ea                                      b #0x35a69c
0035a59c  00 30 92 e5                                      ldr r3, [r2]
0035a5a0  78 70 80 e2                                      add r7, r0, #0x78
0035a5a4  80 40 8d e2                                      add r4, sp, #0x80
0035a5a8  00 00 53 e3                                      cmp r3, #0
0035a5ac  d8 30 8d e5                                      str r3, [sp, #0xd8]
0035a5b0  00 20 93 15                                      ldrne r2, [r3]
0035a5b4  d8 60 8d e2                                      add r6, sp, #0xd8
0035a5b8  01 20 82 12                                      addne r2, r2, #1
0035a5bc  00 20 83 15                                      strne r2, [r3]
0035a5c0  05 30 a0 e1                                      mov r3, r5
0035a5c4  06 20 a0 e1                                      mov r2, r6
0035a5c8  04 00 a0 e1                                      mov r0, r4
0035a5cc  00 80 8d e5                                      str r8, [sp]
0035a5d0  b0 d9 ff eb                                      bl #0x350c98
0035a5d4  04 10 a0 e1                                      mov r1, r4
0035a5d8  07 00 a0 e1                                      mov r0, r7
0035a5dc  9d de ff eb                                      bl #0x352058
0035a5e0  08 00 84 e2                                      add r0, r4, #8
0035a5e4  14 de ff eb                                      bl #0x351e3c
0035a5e8  06 00 a0 e1                                      mov r0, r6
0035a5ec  7d d9 fe eb                                      bl #0x310be8
0035a5f0  01 00 a0 e3                                      mov r0, #1
0035a5f4  8d ff ff ea                                      b #0x35a430
0035a5f8  58 30 90 e5                                      ldr r3, [r0, #0x58]
0035a5fc  5c 20 90 e5                                      ldr r2, [r0, #0x5c]
0035a600  ac 50 8d e5                                      str r5, [sp, #0xac]
0035a604  a8 10 8d e5                                      str r1, [sp, #0xa8]
0035a608  02 00 53 e1                                      cmp r3, r2
0035a60c  7b 00 00 0a                                      beq #0x35a800
0035a610  00 10 83 e5                                      str r1, [r3]
0035a614  ac 20 9d e5                                      ldr r2, [sp, #0xac]
0035a618  01 00 a0 e3                                      mov r0, #1
0035a61c  04 20 83 e5                                      str r2, [r3, #4]
0035a620  58 30 94 e5                                      ldr r3, [r4, #0x58]
0035a624  08 30 83 e2                                      add r3, r3, #8
0035a628  58 30 84 e5                                      str r3, [r4, #0x58]
0035a62c  7f ff ff ea                                      b #0x35a430
0035a630  64 30 90 e5                                      ldr r3, [r0, #0x64]
0035a634  68 20 90 e5                                      ldr r2, [r0, #0x68]
0035a638  a4 50 8d e5                                      str r5, [sp, #0xa4]
0035a63c  a0 10 8d e5                                      str r1, [sp, #0xa0]
0035a640  02 00 53 e1                                      cmp r3, r2
0035a644  77 00 00 0a                                      beq #0x35a828
0035a648  00 10 83 e5                                      str r1, [r3]
0035a64c  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
0035a650  01 00 a0 e3                                      mov r0, #1
0035a654  04 20 83 e5                                      str r2, [r3, #4]
0035a658  64 30 94 e5                                      ldr r3, [r4, #0x64]
0035a65c  08 30 83 e2                                      add r3, r3, #8
0035a660  64 30 84 e5                                      str r3, [r4, #0x64]
0035a664  71 ff ff ea                                      b #0x35a430
0035a668  8a 32 d0 e5                                      ldrb r3, [r0, #0x28a]
0035a66c  00 00 53 e3                                      cmp r3, #0
0035a670  43 00 00 1a                                      bne #0x35a784
0035a674  00 30 92 e5                                      ldr r3, [r2]
0035a678  84 70 80 e2                                      add r7, r0, #0x84
0035a67c  e8 20 80 e2                                      add r2, r0, #0xe8
0035a680  00 00 53 e3                                      cmp r3, #0
0035a684  d0 30 8d e5                                      str r3, [sp, #0xd0]
0035a688  00 00 93 15                                      ldrne r0, [r3]
0035a68c  2c 60 8d e2                                      add r6, sp, #0x2c
0035a690  d0 40 8d e2                                      add r4, sp, #0xd0
0035a694  01 00 80 12                                      addne r0, r0, #1
0035a698  00 00 83 15                                      strne r0, [r3]
0035a69c  04 30 a0 e1                                      mov r3, r4
0035a6a0  06 00 a0 e1                                      mov r0, r6
0035a6a4  20 04 8d e8                                      stm sp, {r5, sl}
0035a6a8  08 80 8d e5                                      str r8, [sp, #8]
0035a6ac  f6 e9 ff eb                                      bl #0x354e8c
0035a6b0  07 00 a0 e1                                      mov r0, r7
0035a6b4  06 10 a0 e1                                      mov r1, r6
0035a6b8  2a f1 ff eb                                      bl #0x356b68
0035a6bc  08 00 86 e2                                      add r0, r6, #8
0035a6c0  dd dd ff eb                                      bl #0x351e3c
0035a6c4  04 00 a0 e1                                      mov r0, r4
0035a6c8  46 d9 fe eb                                      bl #0x310be8
0035a6cc  01 00 a0 e3                                      mov r0, #1
0035a6d0  56 ff ff ea                                      b #0x35a430
0035a6d4  00 30 92 e5                                      ldr r3, [r2]
0035a6d8  50 60 8d e2                                      add r6, sp, #0x50
0035a6dc  46 4e 80 e2                                      add r4, r0, #0x460
0035a6e0  00 00 53 e3                                      cmp r3, #0
0035a6e4  c4 30 8d e5                                      str r3, [sp, #0xc4]
0035a6e8  00 20 93 15                                      ldrne r2, [r3]
0035a6ec  c4 70 8d e2                                      add r7, sp, #0xc4
0035a6f0  04 40 84 e2                                      add r4, r4, #4
0035a6f4  01 20 82 12                                      addne r2, r2, #1
0035a6f8  00 20 83 15                                      strne r2, [r3]
0035a6fc  06 00 a0 e1                                      mov r0, r6
0035a700  05 30 a0 e1                                      mov r3, r5
0035a704  07 20 a0 e1                                      mov r2, r7
0035a708  00 80 8d e5                                      str r8, [sp]
0035a70c  61 d9 ff eb                                      bl #0x350c98
0035a710  06 10 a0 e1                                      mov r1, r6
0035a714  04 00 a0 e1                                      mov r0, r4
0035a718  4e de ff eb                                      bl #0x352058
0035a71c  08 00 86 e2                                      add r0, r6, #8
0035a720  c5 dd ff eb                                      bl #0x351e3c
0035a724  07 00 a0 e1                                      mov r0, r7
0035a728  2e d9 fe eb                                      bl #0x310be8
0035a72c  01 00 a0 e3                                      mov r0, #1
0035a730  3e ff ff ea                                      b #0x35a430
0035a734  00 30 92 e5                                      ldr r3, [r2]
0035a738  47 7e 80 e2                                      add r7, r0, #0x470
0035a73c  40 40 8d e2                                      add r4, sp, #0x40
0035a740  00 00 53 e3                                      cmp r3, #0
0035a744  c0 30 8d e5                                      str r3, [sp, #0xc0]
0035a748  00 20 93 15                                      ldrne r2, [r3]
0035a74c  c0 60 8d e2                                      add r6, sp, #0xc0
0035a750  01 20 82 12                                      addne r2, r2, #1
0035a754  00 20 83 15                                      strne r2, [r3]
0035a758  98 ff ff ea                                      b #0x35a5c0
0035a75c  00 30 92 e5                                      ldr r3, [r2]
0035a760  78 70 84 e2                                      add r7, r4, #0x78
0035a764  00 00 53 e3                                      cmp r3, #0
0035a768  c8 30 8d e5                                      str r3, [sp, #0xc8]
0035a76c  00 20 93 15                                      ldrne r2, [r3]
0035a770  01 20 82 12                                      addne r2, r2, #1
0035a774  00 20 83 15                                      strne r2, [r3]
0035a778  60 40 8d e2                                      add r4, sp, #0x60
0035a77c  c8 60 8d e2                                      add r6, sp, #0xc8
0035a780  8e ff ff ea                                      b #0x35a5c0
0035a784  00 30 92 e5                                      ldr r3, [r2]
0035a788  70 60 8d e2                                      add r6, sp, #0x70
0035a78c  d4 40 8d e2                                      add r4, sp, #0xd4
0035a790  00 00 53 e3                                      cmp r3, #0
0035a794  d4 30 8d e5                                      str r3, [sp, #0xd4]
0035a798  00 20 93 15                                      ldrne r2, [r3]
0035a79c  78 70 80 e2                                      add r7, r0, #0x78
0035a7a0  06 00 a0 e1                                      mov r0, r6
0035a7a4  01 20 82 12                                      addne r2, r2, #1
0035a7a8  00 20 83 15                                      strne r2, [r3]
0035a7ac  05 30 a0 e1                                      mov r3, r5
0035a7b0  04 20 a0 e1                                      mov r2, r4
0035a7b4  00 80 8d e5                                      str r8, [sp]
0035a7b8  36 d9 ff eb                                      bl #0x350c98
0035a7bc  07 00 a0 e1                                      mov r0, r7
0035a7c0  06 10 a0 e1                                      mov r1, r6
0035a7c4  23 de ff eb                                      bl #0x352058
0035a7c8  bb ff ff ea                                      b #0x35a6bc
0035a7cc  c8 60 8d e5                                      str r6, [sp, #0xc8]
0035a7d0  78 70 80 e2                                      add r7, r0, #0x78
0035a7d4  e7 ff ff ea                                      b #0x35a778
0035a7d8  01 40 a0 e3                                      mov r4, #1
0035a7dc  6c 00 80 e2                                      add r0, r0, #0x6c
0035a7e0  03 10 a0 e1                                      mov r1, r3
0035a7e4  b0 20 8d e2                                      add r2, sp, #0xb0
0035a7e8  e4 30 8d e2                                      add r3, sp, #0xe4
0035a7ec  00 40 8d e5                                      str r4, [sp]
0035a7f0  04 40 8d e5                                      str r4, [sp, #4]
0035a7f4  c0 dc ff eb                                      bl #0x351afc
0035a7f8  04 00 a0 e1                                      mov r0, r4
0035a7fc  0b ff ff ea                                      b #0x35a430
0035a800  01 40 a0 e3                                      mov r4, #1
0035a804  54 00 80 e2                                      add r0, r0, #0x54
0035a808  03 10 a0 e1                                      mov r1, r3
0035a80c  a8 20 8d e2                                      add r2, sp, #0xa8
0035a810  e0 30 8d e2                                      add r3, sp, #0xe0
0035a814  00 40 8d e5                                      str r4, [sp]
0035a818  04 40 8d e5                                      str r4, [sp, #4]
0035a81c  1e dd ff eb                                      bl #0x351c9c
0035a820  04 00 a0 e1                                      mov r0, r4
0035a824  01 ff ff ea                                      b #0x35a430
0035a828  01 40 a0 e3                                      mov r4, #1
0035a82c  60 00 80 e2                                      add r0, r0, #0x60
0035a830  03 10 a0 e1                                      mov r1, r3
0035a834  a0 20 8d e2                                      add r2, sp, #0xa0
0035a838  dc 30 8d e2                                      add r3, sp, #0xdc
0035a83c  00 40 8d e5                                      str r4, [sp]
0035a840  04 40 8d e5                                      str r4, [sp, #4]
0035a844  14 dd ff eb                                      bl #0x351c9c
0035a848  04 00 a0 e1                                      mov r0, r4
0035a84c  f7 fe ff ea                                      b #0x35a430
0035a850  48 00 84 e2                                      add r0, r4, #0x48
0035a854  0c 10 a0 e1                                      mov r1, ip
0035a858  01 40 a0 e3                                      mov r4, #1
0035a85c  06 20 a0 e1                                      mov r2, r6
0035a860  e8 30 8d e2                                      add r3, sp, #0xe8
0035a864  00 40 8d e5                                      str r4, [sp]
0035a868  04 40 8d e5                                      str r4, [sp, #4]
0035a86c  2b dc ff eb                                      bl #0x351920
0035a870  04 00 a0 e1                                      mov r0, r4
0035a874  ed fe ff ea                                      b #0x35a430
0035a878  3c 00 84 e2                                      add r0, r4, #0x3c
0035a87c  03 10 a0 e1                                      mov r1, r3
0035a880  01 40 a0 e3                                      mov r4, #1
0035a884  b8 20 8d e2                                      add r2, sp, #0xb8
0035a888  ec 30 8d e2                                      add r3, sp, #0xec
0035a88c  00 40 8d e5                                      str r4, [sp]
0035a890  04 40 8d e5                                      str r4, [sp, #4]
0035a894  98 dc ff eb                                      bl #0x351afc
0035a898  04 00 a0 e1                                      mov r0, r4
0035a89c  e3 fe ff ea                                      b #0x35a430

; FUNCTION 0x0035a8a0, declared_size=16, range_size=16, mode=arm
; class-group: SceneManager
; alias: _ZTv0_n24_N12SceneManagerD0Ev
; demangled: virtual thunk to SceneManager::~SceneManager()
; decoder-mode: arm
0035a8a0  00 30 90 e5                                      ldr r3, [r0]
0035a8a4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035a8a8  03 00 80 e0                                      add r0, r0, r3
0035a8ac  fa f0 ff ea                                      b #0x356c9c

; FUNCTION 0x0035a8b0, declared_size=16, range_size=16, mode=arm
; class-group: SceneManager
; alias: _ZTv0_n12_N12SceneManagerD0Ev
; demangled: virtual thunk to SceneManager::~SceneManager()
; decoder-mode: arm
0035a8b0  00 30 90 e5                                      ldr r3, [r0]
0035a8b4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035a8b8  03 00 80 e0                                      add r0, r0, r3
0035a8bc  f6 f0 ff ea                                      b #0x356c9c

; FUNCTION 0x0035a8c0, declared_size=16, range_size=16, mode=arm
; class-group: SceneManager
; alias: _ZTv0_n24_N12SceneManagerD1Ev
; demangled: virtual thunk to SceneManager::~SceneManager()
; decoder-mode: arm
0035a8c0  00 30 90 e5                                      ldr r3, [r0]
0035a8c4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035a8c8  03 00 80 e0                                      add r0, r0, r3
0035a8cc  c6 f0 ff ea                                      b #0x356bec

; FUNCTION 0x0035a8d0, declared_size=16, range_size=16, mode=arm
; class-group: SceneManager
; alias: _ZTv0_n12_N12SceneManagerD1Ev
; demangled: virtual thunk to SceneManager::~SceneManager()
; decoder-mode: arm
0035a8d0  00 30 90 e5                                      ldr r3, [r0]
0035a8d4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035a8d8  03 00 80 e0                                      add r0, r0, r3
0035a8dc  c2 f0 ff ea                                      b #0x356bec
