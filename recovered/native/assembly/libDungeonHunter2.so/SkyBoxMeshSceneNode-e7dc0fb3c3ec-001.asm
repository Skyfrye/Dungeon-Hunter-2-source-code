; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036233c, declared_size=12, range_size=12, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZNK19SkyBoxMeshSceneNode7getTypeEv
; demangled: SkyBoxMeshSceneNode::getType() const
; decoder-mode: arm
0036233c  73 0b 06 e3                                      movw r0, #0x6b73
00362340  79 0f 45 e3                                      movt r0, #0x5f79
00362344  1e ff 2f e1                                      bx lr

; FUNCTION 0x00362398, declared_size=568, range_size=568, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZN19SkyBoxMeshSceneNode6renderEPv
; demangled: SkyBoxMeshSceneNode::render(void*)
; decoder-mode: arm
00362398  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0036239c  38 31 d0 e5                                      ldrb r3, [r0, #0x138]
003623a0  20 d0 4d e2                                      sub sp, sp, #0x20
003623a4  00 40 a0 e1                                      mov r4, r0
003623a8  00 00 53 e3                                      cmp r3, #0
003623ac  01 60 a0 e1                                      mov r6, r1
003623b0  73 00 00 0a                                      beq #0x362584
003623b4  34 21 90 e5                                      ldr r2, [r0, #0x134]
003623b8  10 31 90 e5                                      ldr r3, [r0, #0x110]
003623bc  00 00 52 e3                                      cmp r2, #0
003623c0  e4 80 93 e5                                      ldr r8, [r3, #0xe4]
003623c4  14 50 93 e5                                      ldr r5, [r3, #0x14]
003623c8  6d 00 00 0a                                      beq #0x362584
003623cc  00 00 55 e3                                      cmp r5, #0
003623d0  00 00 58 13                                      cmpne r8, #0
003623d4  00 70 a0 13                                      movne r7, #0
003623d8  01 70 a0 03                                      moveq r7, #1
003623dc  68 00 00 0a                                      beq #0x362584
003623e0  0d 00 a0 e1                                      mov r0, sp
003623e4  08 10 a0 e1                                      mov r1, r8
003623e8  64 d3 08 eb                                      bl #0x597180
003623ec  04 20 9d e5                                      ldr r2, [sp, #4]
003623f0  08 30 9d e5                                      ldr r3, [sp, #8]
003623f4  00 10 9d e5                                      ldr r1, [sp]
003623f8  58 20 84 e5                                      str r2, [r4, #0x58]
003623fc  5c 30 84 e5                                      str r3, [r4, #0x5c]
00362400  54 10 84 e5                                      str r1, [r4, #0x54]
00362404  64 70 c4 e5                                      strb r7, [r4, #0x64]
00362408  00 30 98 e5                                      ldr r3, [r8]
0036240c  08 00 a0 e1                                      mov r0, r8
00362410  0f e0 a0 e1                                      mov lr, pc
00362414  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
00362418  00 10 a0 e1                                      mov r1, r0
0036241c  e0 b1 fe eb                                      bl #0x30eba4
00362420  34 31 94 e5                                      ldr r3, [r4, #0x134]
00362424  4c 00 84 e5                                      str r0, [r4, #0x4c]
00362428  24 00 84 e5                                      str r0, [r4, #0x24]
0036242c  38 00 84 e5                                      str r0, [r4, #0x38]
00362430  64 70 c4 e5                                      strb r7, [r4, #0x64]
00362434  03 00 a0 e1                                      mov r0, r3
00362438  05 10 a0 e1                                      mov r1, r5
0036243c  00 30 93 e5                                      ldr r3, [r3]
00362440  24 20 84 e2                                      add r2, r4, #0x24
00362444  0f e0 a0 e1                                      mov lr, pc
00362448  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0036244c  00 00 56 e3                                      cmp r6, #0
00362450  4b 00 00 0a                                      beq #0x362584
00362454  34 31 94 e5                                      ldr r3, [r4, #0x134]
00362458  01 60 46 e2                                      sub r6, r6, #1
0036245c  1c 00 8d e2                                      add r0, sp, #0x1c
00362460  03 10 a0 e1                                      mov r1, r3
00362464  06 20 a0 e1                                      mov r2, r6
00362468  00 30 93 e5                                      ldr r3, [r3]
0036246c  0f e0 a0 e1                                      mov lr, pc
00362470  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00362474  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00362478  00 00 53 e3                                      cmp r3, #0
0036247c  40 00 00 0a                                      beq #0x362584
00362480  34 31 94 e5                                      ldr r3, [r4, #0x134]
00362484  1f 00 06 e2                                      and r0, r6, #0x1f
00362488  01 10 a0 e3                                      mov r1, #1
0036248c  14 20 93 e5                                      ldr r2, [r3, #0x14]
00362490  11 20 12 e0                                      ands r2, r2, r1, lsl r0
00362494  3c 00 00 0a                                      beq #0x36258c
00362498  18 80 8d e2                                      add r8, sp, #0x18
0036249c  03 10 a0 e1                                      mov r1, r3
003624a0  08 00 a0 e1                                      mov r0, r8
003624a4  06 20 a0 e1                                      mov r2, r6
003624a8  00 30 93 e5                                      ldr r3, [r3]
003624ac  0f e0 a0 e1                                      mov lr, pc
003624b0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
003624b4  34 31 94 e5                                      ldr r3, [r4, #0x134]
003624b8  10 00 8d e2                                      add r0, sp, #0x10
003624bc  06 20 a0 e1                                      mov r2, r6
003624c0  03 10 a0 e1                                      mov r1, r3
003624c4  00 30 93 e5                                      ldr r3, [r3]
003624c8  0f e0 a0 e1                                      mov lr, pc
003624cc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003624d0  10 30 9d e5                                      ldr r3, [sp, #0x10]
003624d4  00 00 53 e3                                      cmp r3, #0
003624d8  14 30 8d e5                                      str r3, [sp, #0x14]
003624dc  06 00 00 0a                                      beq #0x3624fc
003624e0  00 20 93 e5                                      ldr r2, [r3]
003624e4  01 20 82 e2                                      add r2, r2, #1
003624e8  00 20 83 e5                                      str r2, [r3]
003624ec  10 00 9d e5                                      ldr r0, [sp, #0x10]
003624f0  00 00 50 e3                                      cmp r0, #0
003624f4  00 00 00 0a                                      beq #0x3624fc
003624f8  9a ff ff eb                                      bl #0x362368
003624fc  14 20 8d e2                                      add r2, sp, #0x14
00362500  05 00 a0 e1                                      mov r0, r5
00362504  08 10 a0 e1                                      mov r1, r8
00362508  80 f1 ff eb                                      bl #0x35eb10
0036250c  00 30 95 e5                                      ldr r3, [r5]
00362510  05 00 a0 e1                                      mov r0, r5
00362514  00 10 a0 e3                                      mov r1, #0
00362518  0f e0 a0 e1                                      mov lr, pc
0036251c  0c f1 93 e5                                      ldr pc, [r3, #0x10c]
00362520  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00362524  05 00 a0 e1                                      mov r0, r5
00362528  0c 10 8d e2                                      add r1, sp, #0xc
0036252c  00 00 53 e3                                      cmp r3, #0
00362530  0c 30 8d e5                                      str r3, [sp, #0xc]
00362534  04 20 93 15                                      ldrne r2, [r3, #4]
00362538  01 20 82 12                                      addne r2, r2, #1
0036253c  04 20 83 15                                      strne r2, [r3, #4]
00362540  a2 f1 ff eb                                      bl #0x35ebd0
00362544  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00362548  00 00 50 e3                                      cmp r0, #0
0036254c  00 00 00 0a                                      beq #0x362554
00362550  0b ec fe eb                                      bl #0x31d584
00362554  00 00 57 e3                                      cmp r7, #0
00362558  14 00 00 1a                                      bne #0x3625b0
0036255c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00362560  00 00 50 e3                                      cmp r0, #0
00362564  00 00 00 0a                                      beq #0x36256c
00362568  7e ff ff eb                                      bl #0x362368
0036256c  08 00 a0 e1                                      mov r0, r8
00362570  9c b9 fe eb                                      bl #0x310be8
00362574  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00362578  00 00 50 e3                                      cmp r0, #0
0036257c  00 00 00 0a                                      beq #0x362584
00362580  ff eb fe eb                                      bl #0x31d584
00362584  20 d0 8d e2                                      add sp, sp, #0x20
00362588  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0036258c  03 00 a0 e1                                      mov r0, r3
00362590  00 c0 93 e5                                      ldr ip, [r3]
00362594  05 20 a0 e1                                      mov r2, r5
00362598  06 30 a0 e1                                      mov r3, r6
0036259c  0f e0 a0 e1                                      mov lr, pc
003625a0  38 f0 9c e5                                      ldr pc, [ip, #0x38]
003625a4  34 31 94 e5                                      ldr r3, [r4, #0x134]
003625a8  04 70 00 e2                                      and r7, r0, #4
003625ac  b9 ff ff ea                                      b #0x362498
003625b0  34 31 94 e5                                      ldr r3, [r4, #0x134]
003625b4  05 10 a0 e1                                      mov r1, r5
003625b8  06 20 a0 e1                                      mov r2, r6
003625bc  03 00 a0 e1                                      mov r0, r3
003625c0  00 30 93 e5                                      ldr r3, [r3]
003625c4  0f e0 a0 e1                                      mov lr, pc
003625c8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
003625cc  e2 ff ff ea                                      b #0x36255c

; FUNCTION 0x003625d0, declared_size=328, range_size=328, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZN19SkyBoxMeshSceneNode19onRegisterSceneNodeEv
; demangled: SkyBoxMeshSceneNode::onRegisterSceneNode()
; decoder-mode: arm
003625d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003625d4  34 31 90 e5                                      ldr r3, [r0, #0x134]
003625d8  1c d0 4d e2                                      sub sp, sp, #0x1c
003625dc  00 50 a0 e1                                      mov r5, r0
003625e0  00 00 53 e3                                      cmp r3, #0
003625e4  42 00 00 0a                                      beq #0x3626f4
003625e8  10 21 90 e5                                      ldr r2, [r0, #0x110]
003625ec  14 90 92 e5                                      ldr sb, [r2, #0x14]
003625f0  00 00 59 e3                                      cmp sb, #0
003625f4  3e 00 00 0a                                      beq #0x3626f4
003625f8  03 00 a0 e1                                      mov r0, r3
003625fc  00 30 93 e5                                      ldr r3, [r3]
00362600  0f e0 a0 e1                                      mov lr, pc
00362604  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00362608  00 70 50 e2                                      subs r7, r0, #0
0036260c  38 00 00 0a                                      beq #0x3626f4
00362610  01 40 a0 e3                                      mov r4, #1
00362614  14 a0 8d e2                                      add sl, sp, #0x14
00362618  10 60 8d e2                                      add r6, sp, #0x10
0036261c  00 b0 a0 e3                                      mov fp, #0
00362620  07 80 a0 e1                                      mov r8, r7
00362624  06 00 00 ea                                      b #0x362644
00362628  05 00 50 e3                                      cmp r0, #5
0036262c  33 00 00 0a                                      beq #0x362700
00362630  06 00 a0 e1                                      mov r0, r6
00362634  6b b9 fe eb                                      bl #0x310be8
00362638  04 00 58 e1                                      cmp r8, r4
0036263c  01 40 84 e2                                      add r4, r4, #1
00362640  2b 00 00 9a                                      bls #0x3626f4
00362644  34 31 95 e5                                      ldr r3, [r5, #0x134]
00362648  01 70 44 e2                                      sub r7, r4, #1
0036264c  0a 00 a0 e1                                      mov r0, sl
00362650  03 10 a0 e1                                      mov r1, r3
00362654  07 20 a0 e1                                      mov r2, r7
00362658  00 30 93 e5                                      ldr r3, [r3]
0036265c  0f e0 a0 e1                                      mov lr, pc
00362660  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00362664  14 30 9d e5                                      ldr r3, [sp, #0x14]
00362668  00 00 53 e2                                      subs r0, r3, #0
0036266c  f1 ff ff 0a                                      beq #0x362638
00362670  c3 eb fe eb                                      bl #0x31d584
00362674  34 31 95 e5                                      ldr r3, [r5, #0x134]
00362678  06 00 a0 e1                                      mov r0, r6
0036267c  07 20 a0 e1                                      mov r2, r7
00362680  03 10 a0 e1                                      mov r1, r3
00362684  00 30 93 e5                                      ldr r3, [r3]
00362688  0f e0 a0 e1                                      mov lr, pc
0036268c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00362690  34 c1 95 e5                                      ldr ip, [r5, #0x134]
00362694  07 30 a0 e1                                      mov r3, r7
00362698  09 20 a0 e1                                      mov r2, sb
0036269c  0c 00 a0 e1                                      mov r0, ip
003626a0  00 10 a0 e3                                      mov r1, #0
003626a4  00 c0 9c e5                                      ldr ip, [ip]
003626a8  0f e0 a0 e1                                      mov lr, pc
003626ac  38 f0 9c e5                                      ldr pc, [ip, #0x38]
003626b0  04 00 50 e3                                      cmp r0, #4
003626b4  10 00 50 13                                      cmpne r0, #0x10
003626b8  da ff ff 1a                                      bne #0x362628
003626bc  10 31 95 e5                                      ldr r3, [r5, #0x110]
003626c0  05 10 a0 e1                                      mov r1, r5
003626c4  06 20 a0 e1                                      mov r2, r6
003626c8  00 c0 93 e5                                      ldr ip, [r3]
003626cc  03 00 a0 e1                                      mov r0, r3
003626d0  02 30 a0 e3                                      mov r3, #2
003626d4  00 30 8d e5                                      str r3, [sp]
003626d8  02 31 e0 e3                                      mvn r3, #0x80000000
003626dc  08 30 8d e5                                      str r3, [sp, #8]
003626e0  04 b0 8d e5                                      str fp, [sp, #4]
003626e4  04 30 a0 e1                                      mov r3, r4
003626e8  0f e0 a0 e1                                      mov lr, pc
003626ec  24 f0 9c e5                                      ldr pc, [ip, #0x24]
003626f0  ce ff ff ea                                      b #0x362630
003626f4  01 00 a0 e3                                      mov r0, #1
003626f8  1c d0 8d e2                                      add sp, sp, #0x1c
003626fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00362700  34 31 95 e5                                      ldr r3, [r5, #0x134]
00362704  03 00 a0 e1                                      mov r0, r3
00362708  00 30 93 e5                                      ldr r3, [r3]
0036270c  0f e0 a0 e1                                      mov lr, pc
00362710  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00362714  c5 ff ff ea                                      b #0x362630

; FUNCTION 0x00362718, declared_size=116, range_size=116, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZN19SkyBoxMeshSceneNodeD1Ev
; demangled: SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode()
; decoder-mode: arm
00362718  70 40 2d e9                                      push {r4, r5, r6, lr}
0036271c  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00362720  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00362724  3c 21 90 e5                                      ldr r2, [r0, #0x13c]
00362728  05 50 8f e0                                      add r5, pc, r5
0036272c  03 30 95 e7                                      ldr r3, [r5, r3]
00362730  00 00 52 e3                                      cmp r2, #0
00362734  00 40 a0 e1                                      mov r4, r0
00362738  4a 1f 83 e2                                      add r1, r3, #0x128
0036273c  1c 30 83 e2                                      add r3, r3, #0x1c
00362740  00 30 80 e5                                      str r3, [r0]
00362744  40 11 80 e5                                      str r1, [r0, #0x140]
00362748  05 00 00 0a                                      beq #0x362764
0036274c  00 30 92 e5                                      ldr r3, [r2]
00362750  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00362754  00 00 82 e0                                      add r0, r2, r0
00362758  89 eb fe eb                                      bl #0x31d584
0036275c  00 30 a0 e3                                      mov r3, #0
00362760  3c 31 84 e5                                      str r3, [r4, #0x13c]
00362764  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00362768  04 00 a0 e1                                      mov r0, r4
0036276c  01 10 95 e7                                      ldr r1, [r5, r1]
00362770  04 10 81 e2                                      add r1, r1, #4
00362774  d9 8e 0b eb                                      bl #0x6462e0
00362778  04 00 a0 e1                                      mov r0, r4
0036277c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00362780  68 23 63 00 dc 24 00 00 8c 0a 00 00              .byte 0x68, 0x23, 0x63, 0x00, 0xdc, 0x24, 0x00, 0x00, 0x8c, 0x0a, 0x00, 0x00

; FUNCTION 0x0036278c, declared_size=28, range_size=28, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZN19SkyBoxMeshSceneNodeD0Ev
; demangled: SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode()
; decoder-mode: arm
0036278c  10 40 2d e9                                      push {r4, lr}
00362790  00 40 a0 e1                                      mov r4, r0
00362794  df ff ff eb                                      bl #0x362718
00362798  04 00 a0 e1                                      mov r0, r4
0036279c  27 b7 fe eb                                      bl #0x310440
003627a0  04 00 a0 e1                                      mov r0, r4
003627a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003627a8, declared_size=104, range_size=104, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZN19SkyBoxMeshSceneNodeD2Ev
; demangled: SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode()
; decoder-mode: arm
003627a8  70 40 2d e9                                      push {r4, r5, r6, lr}
003627ac  00 30 91 e5                                      ldr r3, [r1]
003627b0  01 50 a0 e1                                      mov r5, r1
003627b4  00 40 a0 e1                                      mov r4, r0
003627b8  00 30 80 e5                                      str r3, [r0]
003627bc  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
003627c0  28 20 91 e5                                      ldr r2, [r1, #0x28]
003627c4  03 20 80 e7                                      str r2, [r0, r3]
003627c8  00 30 90 e5                                      ldr r3, [r0]
003627cc  2c 20 91 e5                                      ldr r2, [r1, #0x2c]
003627d0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003627d4  03 20 80 e7                                      str r2, [r0, r3]
003627d8  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
003627dc  00 00 53 e3                                      cmp r3, #0
003627e0  05 00 00 0a                                      beq #0x3627fc
003627e4  00 20 93 e5                                      ldr r2, [r3]
003627e8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
003627ec  00 00 83 e0                                      add r0, r3, r0
003627f0  63 eb fe eb                                      bl #0x31d584
003627f4  00 30 a0 e3                                      mov r3, #0
003627f8  3c 31 84 e5                                      str r3, [r4, #0x13c]
003627fc  04 10 85 e2                                      add r1, r5, #4
00362800  04 00 a0 e1                                      mov r0, r4
00362804  b5 8e 0b eb                                      bl #0x6462e0
00362808  04 00 a0 e1                                      mov r0, r4
0036280c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00362810, declared_size=396, range_size=396, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZN19SkyBoxMeshSceneNodeC1ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPNS2_5scene14IMeshSceneNodeE
; demangled: SkyBoxMeshSceneNode::SkyBoxMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&, glitch::scene::IMeshSceneNode*)
; decoder-mode: arm
00362810  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00362814  70 51 9f e5                                      ldr r5, [pc, #0x170]
00362818  70 31 9f e5                                      ldr r3, [pc, #0x170]
0036281c  70 c1 9f e5                                      ldr ip, [pc, #0x170]
00362820  05 50 8f e0                                      add r5, pc, r5
00362824  03 30 95 e7                                      ldr r3, [r5, r3]
00362828  0c c0 95 e7                                      ldr ip, [r5, ip]
0036282c  01 60 a0 e3                                      mov r6, #1
00362830  30 e0 93 e5                                      ldr lr, [r3, #0x30]
00362834  08 c0 8c e2                                      add ip, ip, #8
00362838  40 c1 80 e5                                      str ip, [r0, #0x140]
0036283c  00 e0 80 e5                                      str lr, [r0]
00362840  44 61 80 e5                                      str r6, [r0, #0x144]
00362844  0c 80 1e e5                                      ldr r8, [lr, #-0xc]
00362848  34 a0 93 e5                                      ldr sl, [r3, #0x34]
0036284c  01 70 a0 e1                                      mov r7, r1
00362850  44 d0 4d e2                                      sub sp, sp, #0x44
00362854  08 a0 80 e7                                      str sl, [r0, r8]
00362858  02 80 a0 e1                                      mov r8, r2
0036285c  07 20 a0 e1                                      mov r2, r7
00362860  00 70 e0 e3                                      mvn r7, #0
00362864  00 70 8d e5                                      str r7, [sp]
00362868  2c 70 8d e2                                      add r7, sp, #0x2c
0036286c  04 70 8d e5                                      str r7, [sp, #4]
00362870  10 70 8d e2                                      add r7, sp, #0x10
00362874  00 c0 a0 e3                                      mov ip, #0
00362878  fe e5 a0 e3                                      mov lr, #0x3f800000
0036287c  04 10 83 e2                                      add r1, r3, #4
00362880  08 70 8d e5                                      str r7, [sp, #8]
00362884  00 30 a0 e3                                      mov r3, #0
00362888  20 70 8d e2                                      add r7, sp, #0x20
0036288c  00 40 a0 e1                                      mov r4, r0
00362890  18 c0 8d e5                                      str ip, [sp, #0x18]
00362894  28 e0 8d e5                                      str lr, [sp, #0x28]
00362898  2c c0 8d e5                                      str ip, [sp, #0x2c]
0036289c  30 c0 8d e5                                      str ip, [sp, #0x30]
003628a0  34 c0 8d e5                                      str ip, [sp, #0x34]
003628a4  10 c0 8d e5                                      str ip, [sp, #0x10]
003628a8  14 c0 8d e5                                      str ip, [sp, #0x14]
003628ac  1c e0 8d e5                                      str lr, [sp, #0x1c]
003628b0  20 e0 8d e5                                      str lr, [sp, #0x20]
003628b4  24 e0 8d e5                                      str lr, [sp, #0x24]
003628b8  0c 70 8d e5                                      str r7, [sp, #0xc]
003628bc  6d 8f 0b eb                                      bl #0x646678
003628c0  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
003628c4  38 61 c4 e5                                      strb r6, [r4, #0x138]
003628c8  3c 81 84 e5                                      str r8, [r4, #0x13c]
003628cc  03 30 95 e7                                      ldr r3, [r5, r3]
003628d0  04 00 a0 e1                                      mov r0, r4
003628d4  00 10 a0 e3                                      mov r1, #0
003628d8  4a 2f 83 e2                                      add r2, r3, #0x128
003628dc  1c 30 83 e2                                      add r3, r3, #0x1c
003628e0  00 30 84 e5                                      str r3, [r4]
003628e4  40 21 84 e5                                      str r2, [r4, #0x140]
003628e8  2b d2 08 eb                                      bl #0x59719c
003628ec  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
003628f0  00 00 53 e3                                      cmp r3, #0
003628f4  05 00 00 0a                                      beq #0x362910
003628f8  00 20 93 e5                                      ldr r2, [r3]
003628fc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00362900  02 30 83 e0                                      add r3, r3, r2
00362904  04 20 93 e5                                      ldr r2, [r3, #4]
00362908  06 20 82 e0                                      add r2, r2, r6
0036290c  04 20 83 e5                                      str r2, [r3, #4]
00362910  34 31 94 e5                                      ldr r3, [r4, #0x134]
00362914  3c 50 8d e2                                      add r5, sp, #0x3c
00362918  00 20 a0 e3                                      mov r2, #0
0036291c  03 10 a0 e1                                      mov r1, r3
00362920  05 00 a0 e1                                      mov r0, r5
00362924  00 30 93 e5                                      ldr r3, [r3]
00362928  0f e0 a0 e1                                      mov lr, pc
0036292c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00362930  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00362934  05 00 a0 e1                                      mov r0, r5
00362938  04 30 93 e5                                      ldr r3, [r3, #4]
0036293c  00 00 53 e3                                      cmp r3, #0
00362940  38 30 8d e5                                      str r3, [sp, #0x38]
00362944  00 20 93 15                                      ldrne r2, [r3]
00362948  01 20 82 12                                      addne r2, r2, #1
0036294c  00 20 83 15                                      strne r2, [r3]
00362950  a4 b8 fe eb                                      bl #0x310be8
00362954  38 30 9d e5                                      ldr r3, [sp, #0x38]
00362958  38 00 8d e2                                      add r0, sp, #0x38
0036295c  18 30 93 e5                                      ldr r3, [r3, #0x18]
00362960  08 30 93 e5                                      ldr r3, [r3, #8]
00362964  04 20 93 e5                                      ldr r2, [r3, #4]
00362968  01 06 12 e3                                      tst r2, #0x100000
0036296c  01 26 c2 e3                                      bic r2, r2, #0x100000
00362970  04 20 83 e5                                      str r2, [r3, #4]
00362974  01 20 a0 13                                      movne r2, #1
00362978  30 20 c3 15                                      strbne r2, [r3, #0x30]
0036297c  4d be ff eb                                      bl #0x3522b8
00362980  04 00 a0 e1                                      mov r0, r4
00362984  44 d0 8d e2                                      add sp, sp, #0x44
00362988  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0036298c  70 22 63 00 8c 0a 00 00 44 2b 00 00 dc 24 00 00  .byte 0x70, 0x22, 0x63, 0x00, 0x8c, 0x0a, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xdc, 0x24, 0x00, 0x00

; FUNCTION 0x0036299c, declared_size=332, range_size=332, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZN19SkyBoxMeshSceneNodeC2ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPNS2_5scene14IMeshSceneNodeE
; demangled: SkyBoxMeshSceneNode::SkyBoxMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&, glitch::scene::IMeshSceneNode*)
; decoder-mode: arm
0036299c  70 40 2d e9                                      push {r4, r5, r6, lr}
003629a0  00 40 e0 e3                                      mvn r4, #0
003629a4  40 d0 4d e2                                      sub sp, sp, #0x40
003629a8  00 40 8d e5                                      str r4, [sp]
003629ac  2c 40 8d e2                                      add r4, sp, #0x2c
003629b0  04 40 8d e5                                      str r4, [sp, #4]
003629b4  10 40 8d e2                                      add r4, sp, #0x10
003629b8  00 c0 a0 e3                                      mov ip, #0
003629bc  fe e5 a0 e3                                      mov lr, #0x3f800000
003629c0  01 50 a0 e1                                      mov r5, r1
003629c4  03 60 a0 e1                                      mov r6, r3
003629c8  04 10 81 e2                                      add r1, r1, #4
003629cc  00 30 a0 e3                                      mov r3, #0
003629d0  08 40 8d e5                                      str r4, [sp, #8]
003629d4  20 40 8d e2                                      add r4, sp, #0x20
003629d8  18 c0 8d e5                                      str ip, [sp, #0x18]
003629dc  28 e0 8d e5                                      str lr, [sp, #0x28]
003629e0  0c 40 8d e5                                      str r4, [sp, #0xc]
003629e4  2c c0 8d e5                                      str ip, [sp, #0x2c]
003629e8  00 40 a0 e1                                      mov r4, r0
003629ec  30 c0 8d e5                                      str ip, [sp, #0x30]
003629f0  34 c0 8d e5                                      str ip, [sp, #0x34]
003629f4  10 c0 8d e5                                      str ip, [sp, #0x10]
003629f8  14 c0 8d e5                                      str ip, [sp, #0x14]
003629fc  1c e0 8d e5                                      str lr, [sp, #0x1c]
00362a00  20 e0 8d e5                                      str lr, [sp, #0x20]
00362a04  24 e0 8d e5                                      str lr, [sp, #0x24]
00362a08  1a 8f 0b eb                                      bl #0x646678
00362a0c  00 30 95 e5                                      ldr r3, [r5]
00362a10  04 00 a0 e1                                      mov r0, r4
00362a14  00 10 a0 e3                                      mov r1, #0
00362a18  00 30 84 e5                                      str r3, [r4]
00362a1c  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00362a20  28 20 95 e5                                      ldr r2, [r5, #0x28]
00362a24  03 20 84 e7                                      str r2, [r4, r3]
00362a28  00 30 94 e5                                      ldr r3, [r4]
00362a2c  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
00362a30  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00362a34  03 20 84 e7                                      str r2, [r4, r3]
00362a38  01 30 a0 e3                                      mov r3, #1
00362a3c  38 31 c4 e5                                      strb r3, [r4, #0x138]
00362a40  3c 61 84 e5                                      str r6, [r4, #0x13c]
00362a44  d4 d1 08 eb                                      bl #0x59719c
00362a48  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00362a4c  00 00 53 e3                                      cmp r3, #0
00362a50  05 00 00 0a                                      beq #0x362a6c
00362a54  00 20 93 e5                                      ldr r2, [r3]
00362a58  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00362a5c  02 30 83 e0                                      add r3, r3, r2
00362a60  04 20 93 e5                                      ldr r2, [r3, #4]
00362a64  01 20 82 e2                                      add r2, r2, #1
00362a68  04 20 83 e5                                      str r2, [r3, #4]
00362a6c  34 31 94 e5                                      ldr r3, [r4, #0x134]
00362a70  3c 50 8d e2                                      add r5, sp, #0x3c
00362a74  00 20 a0 e3                                      mov r2, #0
00362a78  03 10 a0 e1                                      mov r1, r3
00362a7c  05 00 a0 e1                                      mov r0, r5
00362a80  00 30 93 e5                                      ldr r3, [r3]
00362a84  0f e0 a0 e1                                      mov lr, pc
00362a88  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00362a8c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00362a90  05 00 a0 e1                                      mov r0, r5
00362a94  04 30 93 e5                                      ldr r3, [r3, #4]
00362a98  00 00 53 e3                                      cmp r3, #0
00362a9c  38 30 8d e5                                      str r3, [sp, #0x38]
00362aa0  00 20 93 15                                      ldrne r2, [r3]
00362aa4  01 20 82 12                                      addne r2, r2, #1
00362aa8  00 20 83 15                                      strne r2, [r3]
00362aac  4d b8 fe eb                                      bl #0x310be8
00362ab0  38 30 9d e5                                      ldr r3, [sp, #0x38]
00362ab4  38 00 8d e2                                      add r0, sp, #0x38
00362ab8  18 30 93 e5                                      ldr r3, [r3, #0x18]
00362abc  08 30 93 e5                                      ldr r3, [r3, #8]
00362ac0  04 20 93 e5                                      ldr r2, [r3, #4]
00362ac4  01 06 12 e3                                      tst r2, #0x100000
00362ac8  01 26 c2 e3                                      bic r2, r2, #0x100000
00362acc  04 20 83 e5                                      str r2, [r3, #4]
00362ad0  01 20 a0 13                                      movne r2, #1
00362ad4  30 20 c3 15                                      strbne r2, [r3, #0x30]
00362ad8  f6 bd ff eb                                      bl #0x3522b8
00362adc  04 00 a0 e1                                      mov r0, r4
00362ae0  40 d0 8d e2                                      add sp, sp, #0x40
00362ae4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00362ae8, declared_size=16, range_size=16, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZTv0_n24_N19SkyBoxMeshSceneNodeD0Ev
; demangled: virtual thunk to SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode()
; decoder-mode: arm
00362ae8  00 30 90 e5                                      ldr r3, [r0]
00362aec  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00362af0  03 00 80 e0                                      add r0, r0, r3
00362af4  24 ff ff ea                                      b #0x36278c

; FUNCTION 0x00362af8, declared_size=16, range_size=16, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZTv0_n12_N19SkyBoxMeshSceneNodeD0Ev
; demangled: virtual thunk to SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode()
; decoder-mode: arm
00362af8  00 30 90 e5                                      ldr r3, [r0]
00362afc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00362b00  03 00 80 e0                                      add r0, r0, r3
00362b04  20 ff ff ea                                      b #0x36278c

; FUNCTION 0x00362b08, declared_size=16, range_size=16, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZTv0_n24_N19SkyBoxMeshSceneNodeD1Ev
; demangled: virtual thunk to SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode()
; decoder-mode: arm
00362b08  00 30 90 e5                                      ldr r3, [r0]
00362b0c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00362b10  03 00 80 e0                                      add r0, r0, r3
00362b14  ff fe ff ea                                      b #0x362718

; FUNCTION 0x00362b18, declared_size=16, range_size=16, mode=arm
; class-group: SkyBoxMeshSceneNode
; alias: _ZTv0_n12_N19SkyBoxMeshSceneNodeD1Ev
; demangled: virtual thunk to SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode()
; decoder-mode: arm
00362b18  00 30 90 e5                                      ldr r3, [r0]
00362b1c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00362b20  03 00 80 e0                                      add r0, r0, r3
00362b24  fb fe ff ea                                      b #0x362718
