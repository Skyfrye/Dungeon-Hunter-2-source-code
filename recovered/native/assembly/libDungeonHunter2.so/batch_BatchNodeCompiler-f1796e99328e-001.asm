; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003f1868, declared_size=112, range_size=112, mode=arm
; class-group: batch::BatchNodeCompiler
; alias: _ZN5batch17BatchNodeCompiler4FreeEv
; demangled: batch::BatchNodeCompiler::Free()
; decoder-mode: arm
003f1868  70 40 2d e9                                      push {r4, r5, r6, lr}
003f186c  34 30 90 e5                                      ldr r3, [r0, #0x34]
003f1870  00 40 a0 e1                                      mov r4, r0
003f1874  00 00 53 e3                                      cmp r3, #0
003f1878  03 00 00 0a                                      beq #0x3f188c
003f187c  00 20 93 e5                                      ldr r2, [r3]
003f1880  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
003f1884  00 00 83 e0                                      add r0, r3, r0
003f1888  3d af fc eb                                      bl #0x31d584
003f188c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003f1890  14 20 94 e5                                      ldr r2, [r4, #0x14]
003f1894  00 10 a0 e3                                      mov r1, #0
003f1898  34 10 84 e5                                      str r1, [r4, #0x34]
003f189c  02 00 53 e1                                      cmp r3, r2
003f18a0  14 30 84 15                                      strne r3, [r4, #0x14]
003f18a4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
003f18a8  00 00 53 e3                                      cmp r3, #0
003f18ac  08 00 00 0a                                      beq #0x3f18d4
003f18b0  1c 50 84 e2                                      add r5, r4, #0x1c
003f18b4  05 00 a0 e1                                      mov r0, r5
003f18b8  20 10 94 e5                                      ldr r1, [r4, #0x20]
003f18bc  db ff ff eb                                      bl #0x3f1830
003f18c0  00 30 a0 e3                                      mov r3, #0
003f18c4  2c 30 84 e5                                      str r3, [r4, #0x2c]
003f18c8  28 50 84 e5                                      str r5, [r4, #0x28]
003f18cc  24 50 84 e5                                      str r5, [r4, #0x24]
003f18d0  20 30 84 e5                                      str r3, [r4, #0x20]
003f18d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003f1a48, declared_size=172, range_size=172, mode=arm
; class-group: batch::BatchNodeCompiler
; alias: _ZN5batch17BatchNodeCompilerD1Ev
; demangled: batch::BatchNodeCompiler::~BatchNodeCompiler()
; decoder-mode: arm
003f1a48  70 40 2d e9                                      push {r4, r5, r6, lr}
003f1a4c  00 40 a0 e1                                      mov r4, r0
003f1a50  84 ff ff eb                                      bl #0x3f1868
003f1a54  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
003f1a58  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
003f1a5c  00 00 53 e3                                      cmp r3, #0
003f1a60  05 50 8f e0                                      add r5, pc, r5
003f1a64  0f 00 00 1a                                      bne #0x3f1aa8
003f1a68  10 00 94 e5                                      ldr r0, [r4, #0x10]
003f1a6c  10 30 84 e2                                      add r3, r4, #0x10
003f1a70  00 00 50 e3                                      cmp r0, #0
003f1a74  05 00 00 0a                                      beq #0x3f1a90
003f1a78  08 10 93 e5                                      ldr r1, [r3, #8]
003f1a7c  01 10 60 e0                                      rsb r1, r0, r1
003f1a80  03 10 c1 e3                                      bic r1, r1, #3
003f1a84  80 00 51 e3                                      cmp r1, #0x80
003f1a88  10 00 00 8a                                      bhi #0x3f1ad0
003f1a8c  1b 5d 0c eb                                      bl #0x708f00
003f1a90  58 30 9f e5                                      ldr r3, [pc, #0x58]
003f1a94  04 00 a0 e1                                      mov r0, r4
003f1a98  03 30 95 e7                                      ldr r3, [r5, r3]
003f1a9c  08 30 83 e2                                      add r3, r3, #8
003f1aa0  04 30 84 e5                                      str r3, [r4, #4]
003f1aa4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003f1aa8  1c 60 84 e2                                      add r6, r4, #0x1c
003f1aac  06 00 a0 e1                                      mov r0, r6
003f1ab0  20 10 94 e5                                      ldr r1, [r4, #0x20]
003f1ab4  5d ff ff eb                                      bl #0x3f1830
003f1ab8  00 30 a0 e3                                      mov r3, #0
003f1abc  28 60 84 e5                                      str r6, [r4, #0x28]
003f1ac0  2c 30 84 e5                                      str r3, [r4, #0x2c]
003f1ac4  24 60 84 e5                                      str r6, [r4, #0x24]
003f1ac8  20 30 84 e5                                      str r3, [r4, #0x20]
003f1acc  e5 ff ff ea                                      b #0x3f1a68
003f1ad0  5a 7a fc eb                                      bl #0x310440
003f1ad4  14 30 9f e5                                      ldr r3, [pc, #0x14]
003f1ad8  04 00 a0 e1                                      mov r0, r4
003f1adc  03 30 95 e7                                      ldr r3, [r5, r3]
003f1ae0  08 30 83 e2                                      add r3, r3, #8
003f1ae4  04 30 84 e5                                      str r3, [r4, #4]
003f1ae8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003f1aec  30 30 5a 00 a0 1c 00 00                          .byte 0x30, 0x30, 0x5a, 0x00, 0xa0, 0x1c, 0x00, 0x00

; FUNCTION 0x003f5dcc, declared_size=212, range_size=212, mode=arm
; class-group: batch::BatchNodeCompiler
; alias: _ZN5batch17BatchNodeCompiler12_MapMeshNodeEP10GameObjectPN6glitch5scene10ISceneNodeE
; demangled: batch::BatchNodeCompiler::_MapMeshNode(GameObject*, glitch::scene::ISceneNode*)
; decoder-mode: arm
003f5dcc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003f5dd0  00 40 52 e2                                      subs r4, r2, #0
003f5dd4  14 d0 4d e2                                      sub sp, sp, #0x14
003f5dd8  00 50 a0 e1                                      mov r5, r0
003f5ddc  01 60 a0 e1                                      mov r6, r1
003f5de0  22 00 00 0a                                      beq #0x3f5e70
003f5de4  20 c0 90 e5                                      ldr ip, [r0, #0x20]
003f5de8  1c 10 80 e2                                      add r1, r0, #0x1c
003f5dec  00 00 5c e3                                      cmp ip, #0
003f5df0  01 c0 a0 01                                      moveq ip, r1
003f5df4  0a 00 00 0a                                      beq #0x3f5e24
003f5df8  01 20 a0 e1                                      mov r2, r1
003f5dfc  00 00 00 ea                                      b #0x3f5e04
003f5e00  03 c0 a0 e1                                      mov ip, r3
003f5e04  10 30 9c e5                                      ldr r3, [ip, #0x10]
003f5e08  04 00 53 e1                                      cmp r3, r4
003f5e0c  0c 30 9c 35                                      ldrlo r3, [ip, #0xc]
003f5e10  08 30 9c 25                                      ldrhs r3, [ip, #8]
003f5e14  02 c0 a0 31                                      movlo ip, r2
003f5e18  0c 20 a0 e1                                      mov r2, ip
003f5e1c  00 00 53 e3                                      cmp r3, #0
003f5e20  f6 ff ff 1a                                      bne #0x3f5e00
003f5e24  0c 00 51 e1                                      cmp r1, ip
003f5e28  12 00 00 0a                                      beq #0x3f5e78
003f5e2c  10 20 9c e5                                      ldr r2, [ip, #0x10]
003f5e30  0c 30 a0 e1                                      mov r3, ip
003f5e34  04 00 52 e1                                      cmp r2, r4
003f5e38  0e 00 00 8a                                      bhi #0x3f5e78
003f5e3c  14 60 83 e5                                      str r6, [r3, #0x14]
003f5e40  f4 70 b4 e5                                      ldr r7, [r4, #0xf4]!
003f5e44  04 00 57 e1                                      cmp r7, r4
003f5e48  08 00 00 0a                                      beq #0x3f5e70
003f5e4c  00 00 57 e3                                      cmp r7, #0
003f5e50  07 20 a0 01                                      moveq r2, r7
003f5e54  04 20 47 12                                      subne r2, r7, #4
003f5e58  05 00 a0 e1                                      mov r0, r5
003f5e5c  06 10 a0 e1                                      mov r1, r6
003f5e60  d9 ff ff eb                                      bl #0x3f5dcc
003f5e64  00 70 97 e5                                      ldr r7, [r7]
003f5e68  07 00 54 e1                                      cmp r4, r7
003f5e6c  f6 ff ff 1a                                      bne #0x3f5e4c
003f5e70  14 d0 8d e2                                      add sp, sp, #0x14
003f5e74  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003f5e78  0d 30 a0 e1                                      mov r3, sp
003f5e7c  00 e0 a0 e3                                      mov lr, #0
003f5e80  08 00 8d e2                                      add r0, sp, #8
003f5e84  0c 20 8d e2                                      add r2, sp, #0xc
003f5e88  04 e0 8d e5                                      str lr, [sp, #4]
003f5e8c  0c c0 8d e5                                      str ip, [sp, #0xc]
003f5e90  00 40 8d e5                                      str r4, [sp]
003f5e94  ef fe ff eb                                      bl #0x3f5a58
003f5e98  08 30 9d e5                                      ldr r3, [sp, #8]
003f5e9c  e6 ff ff ea                                      b #0x3f5e3c

; FUNCTION 0x0050cfa8, declared_size=136, range_size=136, mode=arm
; class-group: batch::BatchNodeCompiler
; alias: _ZN5batch17BatchNodeCompiler18MakeNoBatchVisibleEPN6glitch5scene10ISceneNodeEb
; demangled: batch::BatchNodeCompiler::MakeNoBatchVisible(glitch::scene::ISceneNode*, bool)
; decoder-mode: arm
0050cfa8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0050cfac  00 80 a0 e1                                      mov r8, r0
0050cfb0  00 30 91 e5                                      ldr r3, [r1]
0050cfb4  01 00 a0 e1                                      mov r0, r1
0050cfb8  01 60 a0 e1                                      mov r6, r1
0050cfbc  02 70 a0 e1                                      mov r7, r2
0050cfc0  0f e0 a0 e1                                      mov lr, pc
0050cfc4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0050cfc8  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0050cfcc  01 10 8f e0                                      add r1, pc, r1
0050cfd0  ff 06 f8 eb                                      bl #0x30ebd4
0050cfd4  00 50 50 e2                                      subs r5, r0, #0
0050cfd8  03 00 00 0a                                      beq #0x50cfec
0050cfdc  06 00 a0 e1                                      mov r0, r6
0050cfe0  07 10 a0 e1                                      mov r1, r7
0050cfe4  0c 05 00 eb                                      bl #0x50e41c
0050cfe8  01 50 a0 e3                                      mov r5, #1
0050cfec  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
0050cff0  06 00 54 e1                                      cmp r4, r6
0050cff4  0a 00 00 0a                                      beq #0x50d024
0050cff8  00 00 54 e3                                      cmp r4, #0
0050cffc  04 10 a0 01                                      moveq r1, r4
0050d000  04 10 44 12                                      subne r1, r4, #4
0050d004  08 00 a0 e1                                      mov r0, r8
0050d008  07 20 a0 e1                                      mov r2, r7
0050d00c  e5 ff ff eb                                      bl #0x50cfa8
0050d010  00 40 94 e5                                      ldr r4, [r4]
0050d014  05 50 80 e1                                      orr r5, r0, r5
0050d018  75 50 ef e6                                      uxtb r5, r5
0050d01c  04 00 56 e1                                      cmp r6, r4
0050d020  f4 ff ff 1a                                      bne #0x50cff8
0050d024  05 00 a0 e1                                      mov r0, r5
0050d028  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0050d02c  9c ee 3c 00                                      .byte 0x9c, 0xee, 0x3c, 0x00

; FUNCTION 0x0050dbbc, declared_size=200, range_size=200, mode=arm
; class-group: batch::BatchNodeCompiler
; alias: _ZN5batch17BatchNodeCompiler4TrimEv
; demangled: batch::BatchNodeCompiler::Trim()
; decoder-mode: arm
0050dbbc  30 40 2d e9                                      push {r4, r5, lr}
0050dbc0  10 20 90 e5                                      ldr r2, [r0, #0x10]
0050dbc4  14 10 90 e5                                      ldr r1, [r0, #0x14]
0050dbc8  14 d0 4d e2                                      sub sp, sp, #0x14
0050dbcc  00 40 a0 e1                                      mov r4, r0
0050dbd0  01 00 52 e1                                      cmp r2, r1
0050dbd4  14 20 80 15                                      strne r2, [r0, #0x14]
0050dbd8  00 c0 a0 e3                                      mov ip, #0
0050dbdc  02 10 a0 11                                      movne r1, r2
0050dbe0  0d 00 a0 e1                                      mov r0, sp
0050dbe4  0c 30 8d e2                                      add r3, sp, #0xc
0050dbe8  08 c0 8d e5                                      str ip, [sp, #8]
0050dbec  00 c0 8d e5                                      str ip, [sp]
0050dbf0  04 c0 8d e5                                      str ip, [sp, #4]
0050dbf4  d7 ff ff eb                                      bl #0x50db58
0050dbf8  10 00 94 e5                                      ldr r0, [r4, #0x10]
0050dbfc  04 20 9d e5                                      ldr r2, [sp, #4]
0050dc00  14 c0 94 e5                                      ldr ip, [r4, #0x14]
0050dc04  08 30 9d e5                                      ldr r3, [sp, #8]
0050dc08  18 10 94 e5                                      ldr r1, [r4, #0x18]
0050dc0c  00 50 9d e5                                      ldr r5, [sp]
0050dc10  00 00 50 e3                                      cmp r0, #0
0050dc14  10 50 84 e5                                      str r5, [r4, #0x10]
0050dc18  04 c0 8d e5                                      str ip, [sp, #4]
0050dc1c  14 20 84 e5                                      str r2, [r4, #0x14]
0050dc20  18 30 84 e5                                      str r3, [r4, #0x18]
0050dc24  00 00 8d e5                                      str r0, [sp]
0050dc28  08 10 8d e5                                      str r1, [sp, #8]
0050dc2c  04 00 00 0a                                      beq #0x50dc44
0050dc30  01 10 60 e0                                      rsb r1, r0, r1
0050dc34  03 10 c1 e3                                      bic r1, r1, #3
0050dc38  80 00 51 e3                                      cmp r1, #0x80
0050dc3c  0e 00 00 8a                                      bhi #0x50dc7c
0050dc40  ae ec 07 eb                                      bl #0x708f00
0050dc44  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0050dc48  00 00 53 e3                                      cmp r3, #0
0050dc4c  08 00 00 0a                                      beq #0x50dc74
0050dc50  1c 50 84 e2                                      add r5, r4, #0x1c
0050dc54  05 00 a0 e1                                      mov r0, r5
0050dc58  20 10 94 e5                                      ldr r1, [r4, #0x20]
0050dc5c  f3 8e fb eb                                      bl #0x3f1830
0050dc60  00 30 a0 e3                                      mov r3, #0
0050dc64  2c 30 84 e5                                      str r3, [r4, #0x2c]
0050dc68  28 50 84 e5                                      str r5, [r4, #0x28]
0050dc6c  24 50 84 e5                                      str r5, [r4, #0x24]
0050dc70  20 30 84 e5                                      str r3, [r4, #0x20]
0050dc74  14 d0 8d e2                                      add sp, sp, #0x14
0050dc78  30 80 bd e8                                      pop {r4, r5, pc}
0050dc7c  ef 09 f8 eb                                      bl #0x310440
0050dc80  ef ff ff ea                                      b #0x50dc44

; FUNCTION 0x0050dc84, declared_size=1444, range_size=1444, mode=arm
; class-group: batch::BatchNodeCompiler
; alias: _ZN5batch17BatchNodeCompiler7CompileEb
; demangled: batch::BatchNodeCompiler::Compile(bool)
; decoder-mode: arm
0050dc84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050dc88  68 95 9f e5                                      ldr sb, [pc, #0x568]
0050dc8c  68 25 9f e5                                      ldr r2, [pc, #0x568]
0050dc90  68 35 9f e5                                      ldr r3, [pc, #0x568]
0050dc94  84 d0 4d e2                                      sub sp, sp, #0x84
0050dc98  09 90 8f e0                                      add sb, pc, sb
0050dc9c  20 20 8d e5                                      str r2, [sp, #0x20]
0050dca0  02 20 99 e7                                      ldr r2, [sb, r2]
0050dca4  24 30 8d e5                                      str r3, [sp, #0x24]
0050dca8  03 30 99 e7                                      ldr r3, [sb, r3]
0050dcac  00 20 92 e5                                      ldr r2, [r2]
0050dcb0  34 60 90 e5                                      ldr r6, [r0, #0x34]
0050dcb4  10 30 93 e5                                      ldr r3, [r3, #0x10]
0050dcb8  7c 20 8d e5                                      str r2, [sp, #0x7c]
0050dcbc  00 00 56 e3                                      cmp r6, #0
0050dcc0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0050dcc4  28 10 8d e5                                      str r1, [sp, #0x28]
0050dcc8  00 40 a0 e1                                      mov r4, r0
0050dccc  14 30 8d e5                                      str r3, [sp, #0x14]
0050dcd0  04 50 93 e5                                      ldr r5, [r3, #4]
0050dcd4  07 01 00 0a                                      beq #0x50e0f8
0050dcd8  10 60 94 e5                                      ldr r6, [r4, #0x10]
0050dcdc  14 80 94 e5                                      ldr r8, [r4, #0x14]
0050dce0  00 30 a0 e3                                      mov r3, #0
0050dce4  44 30 8d e5                                      str r3, [sp, #0x44]
0050dce8  08 00 56 e1                                      cmp r6, r8
0050dcec  3c 30 8d e5                                      str r3, [sp, #0x3c]
0050dcf0  40 30 8d e5                                      str r3, [sp, #0x40]
0050dcf4  87 00 00 0a                                      beq #0x50df18
0050dcf8  04 35 9f e5                                      ldr r3, [pc, #0x504]
0050dcfc  04 c5 9f e5                                      ldr ip, [pc, #0x504]
0050dd00  04 60 86 e2                                      add r6, r6, #4
0050dd04  03 30 8f e0                                      add r3, pc, r3
0050dd08  19 30 83 e2                                      add r3, r3, #0x19
0050dd0c  18 c0 8d e5                                      str ip, [sp, #0x18]
0050dd10  1c 30 8d e5                                      str r3, [sp, #0x1c]
0050dd14  64 b0 8d e2                                      add fp, sp, #0x64
0050dd18  04 a0 a0 e1                                      mov sl, r4
0050dd1c  0a 00 00 ea                                      b #0x50dd4c
0050dd20  40 70 9d e5                                      ldr r7, [sp, #0x40]
0050dd24  44 30 9d e5                                      ldr r3, [sp, #0x44]
0050dd28  03 00 57 e1                                      cmp r7, r3
0050dd2c  32 00 00 0a                                      beq #0x50ddfc
0050dd30  00 40 87 e5                                      str r4, [r7]
0050dd34  40 30 9d e5                                      ldr r3, [sp, #0x40]
0050dd38  04 30 83 e2                                      add r3, r3, #4
0050dd3c  40 30 8d e5                                      str r3, [sp, #0x40]
0050dd40  06 00 58 e1                                      cmp r8, r6
0050dd44  04 60 86 e2                                      add r6, r6, #4
0050dd48  4c 00 00 0a                                      beq #0x50de80
0050dd4c  04 30 16 e5                                      ldr r3, [r6, #-4]
0050dd50  d8 32 93 e5                                      ldr r3, [r3, #0x2d8]
0050dd54  00 00 53 e3                                      cmp r3, #0
0050dd58  f8 ff ff 0a                                      beq #0x50dd40
0050dd5c  08 40 93 e5                                      ldr r4, [r3, #8]
0050dd60  00 00 54 e3                                      cmp r4, #0
0050dd64  f5 ff ff 0a                                      beq #0x50dd40
0050dd68  00 30 95 e5                                      ldr r3, [r5]
0050dd6c  05 00 a0 e1                                      mov r0, r5
0050dd70  04 10 a0 e1                                      mov r1, r4
0050dd74  0f e0 a0 e1                                      mov lr, pc
0050dd78  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0050dd7c  0a 00 a0 e1                                      mov r0, sl
0050dd80  04 10 a0 e1                                      mov r1, r4
0050dd84  00 20 a0 e3                                      mov r2, #0
0050dd88  86 fc ff eb                                      bl #0x50cfa8
0050dd8c  00 00 50 e3                                      cmp r0, #0
0050dd90  e2 ff ff 0a                                      beq #0x50dd20
0050dd94  18 00 9d e5                                      ldr r0, [sp, #0x18]
0050dd98  00 70 99 e7                                      ldr r7, [sb, r0]
0050dd9c  07 00 a0 e1                                      mov r0, r7
0050dda0  b8 a6 f8 eb                                      bl #0x337888
0050dda4  0b 00 a0 e1                                      mov r0, fp
0050dda8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0050ddac  74 b0 8d e5                                      str fp, [sp, #0x74]
0050ddb0  78 b0 8d e5                                      str fp, [sp, #0x78]
0050ddb4  d4 fc ff eb                                      bl #0x50d10c
0050ddb8  07 00 a0 e1                                      mov r0, r7
0050ddbc  0b 10 a0 e1                                      mov r1, fp
0050ddc0  30 a7 f8 eb                                      bl #0x337a88
0050ddc4  78 00 9d e5                                      ldr r0, [sp, #0x78]
0050ddc8  0b 00 50 e1                                      cmp r0, fp
0050ddcc  d3 ff ff 0a                                      beq #0x50dd20
0050ddd0  00 00 50 e3                                      cmp r0, #0
0050ddd4  d1 ff ff 0a                                      beq #0x50dd20
0050ddd8  64 10 9d e5                                      ldr r1, [sp, #0x64]
0050dddc  01 10 60 e0                                      rsb r1, r0, r1
0050dde0  80 00 51 e3                                      cmp r1, #0x80
0050dde4  c1 00 00 8a                                      bhi #0x50e0f0
0050dde8  44 ec 07 eb                                      bl #0x708f00
0050ddec  40 70 9d e5                                      ldr r7, [sp, #0x40]
0050ddf0  44 30 9d e5                                      ldr r3, [sp, #0x44]
0050ddf4  03 00 57 e1                                      cmp r7, r3
0050ddf8  cc ff ff 1a                                      bne #0x50dd30
0050ddfc  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0050de00  07 30 63 e0                                      rsb r3, r3, r7
0050de04  43 31 a0 e1                                      asr r3, r3, #2
0050de08  01 00 53 e3                                      cmp r3, #1
0050de0c  03 20 83 20                                      addhs r2, r3, r3
0050de10  01 20 83 32                                      addlo r2, r3, #1
0050de14  07 01 72 e3                                      cmn r2, #0xc0000001
0050de18  90 00 00 8a                                      bhi #0x50e060
0050de1c  02 00 53 e1                                      cmp r3, r2
0050de20  02 21 a0 91                                      lslls r2, r2, #2
0050de24  2c 20 8d 95                                      strls r2, [sp, #0x2c]
0050de28  8c 00 00 8a                                      bhi #0x50e060
0050de2c  00 10 a0 e3                                      mov r1, #0
0050de30  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0050de34  cb 09 f8 eb                                      bl #0x310568
0050de38  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0050de3c  00 30 a0 e1                                      mov r3, r0
0050de40  01 70 57 e0                                      subs r7, r7, r1
0050de44  00 70 a0 01                                      moveq r7, r0
0050de48  8e 00 00 1a                                      bne #0x50e088
0050de4c  04 40 87 e4                                      str r4, [r7], #4
0050de50  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0050de54  10 30 8d e5                                      str r3, [sp, #0x10]
0050de58  7c 09 f8 eb                                      bl #0x310450
0050de5c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0050de60  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0050de64  06 00 58 e1                                      cmp r8, r6
0050de68  40 70 8d e5                                      str r7, [sp, #0x40]
0050de6c  0c 20 83 e0                                      add r2, r3, ip
0050de70  44 20 8d e5                                      str r2, [sp, #0x44]
0050de74  3c 30 8d e5                                      str r3, [sp, #0x3c]
0050de78  04 60 86 e2                                      add r6, r6, #4
0050de7c  b2 ff ff 1a                                      bne #0x50dd4c
0050de80  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0050de84  40 20 9d e5                                      ldr r2, [sp, #0x40]
0050de88  0a 40 a0 e1                                      mov r4, sl
0050de8c  03 00 52 e1                                      cmp r2, r3
0050de90  d4 00 00 0a                                      beq #0x50e1e8
0050de94  14 00 9d e5                                      ldr r0, [sp, #0x14]
0050de98  34 20 9a e5                                      ldr r2, [sl, #0x34]
0050de9c  00 30 a0 e3                                      mov r3, #0
0050dea0  08 00 8a e5                                      str r0, [sl, #8]
0050dea4  14 10 9d e5                                      ldr r1, [sp, #0x14]
0050dea8  00 50 a0 e3                                      mov r5, #0
0050deac  00 00 91 e5                                      ldr r0, [r1]
0050deb0  04 10 8a e2                                      add r1, sl, #4
0050deb4  50 c0 90 e5                                      ldr ip, [r0, #0x50]
0050deb8  00 10 8d e5                                      str r1, [sp]
0050debc  30 10 8d e2                                      add r1, sp, #0x30
0050dec0  38 30 8d e5                                      str r3, [sp, #0x38]
0050dec4  08 10 8d e5                                      str r1, [sp, #8]
0050dec8  30 30 8d e5                                      str r3, [sp, #0x30]
0050decc  34 30 8d e5                                      str r3, [sp, #0x34]
0050ded0  04 50 8d e5                                      str r5, [sp, #4]
0050ded4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0050ded8  3c 10 8d e2                                      add r1, sp, #0x3c
0050dedc  05 30 a0 e1                                      mov r3, r5
0050dee0  3c ff 2f e1                                      blx ip
0050dee4  28 20 9d e5                                      ldr r2, [sp, #0x28]
0050dee8  05 00 52 e1                                      cmp r2, r5
0050deec  6d 00 00 1a                                      bne #0x50e0a8
0050def0  34 30 94 e5                                      ldr r3, [r4, #0x34]
0050def4  00 20 a0 e3                                      mov r2, #0
0050def8  01 10 a0 e3                                      mov r1, #1
0050defc  30 01 93 e5                                      ldr r0, [r3, #0x130]
0050df00  02 30 a0 e1                                      mov r3, r2
0050df04  db 07 00 eb                                      bl #0x50fe78
0050df08  10 60 94 e5                                      ldr r6, [r4, #0x10]
0050df0c  14 80 94 e5                                      ldr r8, [r4, #0x14]
0050df10  01 30 a0 e3                                      mov r3, #1
0050df14  00 30 c4 e5                                      strb r3, [r4]
0050df18  08 00 56 e1                                      cmp r6, r8
0050df1c  2a 00 00 0a                                      beq #0x50dfcc
0050df20  e4 32 9f e5                                      ldr r3, [pc, #0x2e4]
0050df24  e4 22 9f e5                                      ldr r2, [pc, #0x2e4]
0050df28  d8 12 9f e5                                      ldr r1, [pc, #0x2d8]
0050df2c  e0 a2 9f e5                                      ldr sl, [pc, #0x2e0]
0050df30  03 30 8f e0                                      add r3, pc, r3
0050df34  02 20 8f e0                                      add r2, pc, r2
0050df38  19 30 83 e2                                      add r3, r3, #0x19
0050df3c  18 10 8d e5                                      str r1, [sp, #0x18]
0050df40  0a a0 8f e0                                      add sl, pc, sl
0050df44  14 20 8d e5                                      str r2, [sp, #0x14]
0050df48  1c 30 8d e5                                      str r3, [sp, #0x1c]
0050df4c  4c 70 8d e2                                      add r7, sp, #0x4c
0050df50  05 00 00 ea                                      b #0x50df6c
0050df54  05 00 a0 e1                                      mov r0, r5
0050df58  00 10 a0 e3                                      mov r1, #0
0050df5c  f5 18 fa eb                                      bl #0x394338
0050df60  04 60 86 e2                                      add r6, r6, #4
0050df64  08 00 56 e1                                      cmp r6, r8
0050df68  17 00 00 0a                                      beq #0x50dfcc
0050df6c  00 50 96 e5                                      ldr r5, [r6]
0050df70  d8 32 95 e5                                      ldr r3, [r5, #0x2d8]
0050df74  00 00 53 e3                                      cmp r3, #0
0050df78  f8 ff ff 0a                                      beq #0x50df60
0050df7c  08 10 93 e5                                      ldr r1, [r3, #8]
0050df80  04 00 a0 e1                                      mov r0, r4
0050df84  01 20 a0 e3                                      mov r2, #1
0050df88  06 fc ff eb                                      bl #0x50cfa8
0050df8c  00 00 50 e3                                      cmp r0, #0
0050df90  1b 00 00 1a                                      bne #0x50e004
0050df94  5c b0 95 e5                                      ldr fp, [r5, #0x5c]
0050df98  0a 10 a0 e1                                      mov r1, sl
0050df9c  0b 00 a0 e1                                      mov r0, fp
0050dfa0  dd 00 f8 eb                                      bl #0x30e31c
0050dfa4  00 00 50 e3                                      cmp r0, #0
0050dfa8  e9 ff ff 0a                                      beq #0x50df54
0050dfac  0b 00 a0 e1                                      mov r0, fp
0050dfb0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0050dfb4  d8 00 f8 eb                                      bl #0x30e31c
0050dfb8  00 00 50 e3                                      cmp r0, #0
0050dfbc  e4 ff ff 0a                                      beq #0x50df54
0050dfc0  04 60 86 e2                                      add r6, r6, #4
0050dfc4  08 00 56 e1                                      cmp r6, r8
0050dfc8  e7 ff ff 1a                                      bne #0x50df6c
0050dfcc  04 00 a0 e1                                      mov r0, r4
0050dfd0  f9 fe ff eb                                      bl #0x50dbbc
0050dfd4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0050dfd8  00 00 50 e3                                      cmp r0, #0
0050dfdc  00 00 00 0a                                      beq #0x50dfe4
0050dfe0  1a 09 f8 eb                                      bl #0x310450
0050dfe4  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0050dfe8  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0050dfec  0c 30 99 e7                                      ldr r3, [sb, ip]
0050dff0  00 30 93 e5                                      ldr r3, [r3]
0050dff4  03 00 52 e1                                      cmp r2, r3
0050dff8  7d 00 00 1a                                      bne #0x50e1f4
0050dffc  84 d0 8d e2                                      add sp, sp, #0x84
0050e000  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050e004  18 20 9d e5                                      ldr r2, [sp, #0x18]
0050e008  02 50 99 e7                                      ldr r5, [sb, r2]
0050e00c  05 00 a0 e1                                      mov r0, r5
0050e010  1c a6 f8 eb                                      bl #0x337888
0050e014  07 00 a0 e1                                      mov r0, r7
0050e018  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0050e01c  5c 70 8d e5                                      str r7, [sp, #0x5c]
0050e020  60 70 8d e5                                      str r7, [sp, #0x60]
0050e024  38 fc ff eb                                      bl #0x50d10c
0050e028  05 00 a0 e1                                      mov r0, r5
0050e02c  07 10 a0 e1                                      mov r1, r7
0050e030  94 a6 f8 eb                                      bl #0x337a88
0050e034  60 00 9d e5                                      ldr r0, [sp, #0x60]
0050e038  07 00 50 e1                                      cmp r0, r7
0050e03c  c7 ff ff 0a                                      beq #0x50df60
0050e040  00 00 50 e3                                      cmp r0, #0
0050e044  c5 ff ff 0a                                      beq #0x50df60
0050e048  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0050e04c  01 10 60 e0                                      rsb r1, r0, r1
0050e050  80 00 51 e3                                      cmp r1, #0x80
0050e054  11 00 00 8a                                      bhi #0x50e0a0
0050e058  a8 eb 07 eb                                      bl #0x708f00
0050e05c  bf ff ff ea                                      b #0x50df60
0050e060  03 10 e0 e3                                      mvn r1, #3
0050e064  2c 10 8d e5                                      str r1, [sp, #0x2c]
0050e068  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0050e06c  00 10 a0 e3                                      mov r1, #0
0050e070  3c 09 f8 eb                                      bl #0x310568
0050e074  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0050e078  00 30 a0 e1                                      mov r3, r0
0050e07c  01 70 57 e0                                      subs r7, r7, r1
0050e080  00 70 a0 01                                      moveq r7, r0
0050e084  70 ff ff 0a                                      beq #0x50de4c
0050e088  07 20 a0 e1                                      mov r2, r7
0050e08c  10 00 8d e5                                      str r0, [sp, #0x10]
0050e090  a8 ff f7 eb                                      bl #0x30df38
0050e094  10 30 9d e5                                      ldr r3, [sp, #0x10]
0050e098  07 70 80 e0                                      add r7, r0, r7
0050e09c  6a ff ff ea                                      b #0x50de4c
0050e0a0  e6 08 f8 eb                                      bl #0x310440
0050e0a4  ad ff ff ea                                      b #0x50df60
0050e0a8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0050e0ac  0c 30 99 e7                                      ldr r3, [sb, ip]
0050e0b0  10 30 93 e5                                      ldr r3, [r3, #0x10]
0050e0b4  10 30 93 e5                                      ldr r3, [r3, #0x10]
0050e0b8  03 00 a0 e1                                      mov r0, r3
0050e0bc  00 30 93 e5                                      ldr r3, [r3]
0050e0c0  0f e0 a0 e1                                      mov lr, pc
0050e0c4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0050e0c8  07 00 10 e3                                      tst r0, #7
0050e0cc  87 ff ff 0a                                      beq #0x50def0
0050e0d0  34 20 9a e5                                      ldr r2, [sl, #0x34]
0050e0d4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0050e0d8  05 10 a0 e1                                      mov r1, r5
0050e0dc  14 30 90 e5                                      ldr r3, [r0, #0x14]
0050e0e0  30 01 92 e5                                      ldr r0, [r2, #0x130]
0050e0e4  01 20 a0 e3                                      mov r2, #1
0050e0e8  1f b6 01 eb                                      bl #0x57b96c
0050e0ec  7f ff ff ea                                      b #0x50def0
0050e0f0  d2 08 f8 eb                                      bl #0x310440
0050e0f4  09 ff ff ea                                      b #0x50dd20
0050e0f8  06 10 a0 e1                                      mov r1, r6
0050e0fc  7c 00 a0 e3                                      mov r0, #0x7c
0050e100  29 98 00 eb                                      bl #0x5341ac
0050e104  30 10 a0 e3                                      mov r1, #0x30
0050e108  00 70 a0 e1                                      mov r7, r0
0050e10c  64 aa 01 eb                                      bl #0x578aa4
0050e110  00 31 9f e5                                      ldr r3, [pc, #0x100]
0050e114  80 80 8d e2                                      add r8, sp, #0x80
0050e118  01 a0 a0 e3                                      mov sl, #1
0050e11c  03 30 99 e7                                      ldr r3, [sb, r3]
0050e120  06 10 a0 e1                                      mov r1, r6
0050e124  5a 0f a0 e3                                      mov r0, #0x168
0050e128  08 30 83 e2                                      add r3, r3, #8
0050e12c  00 30 87 e5                                      str r3, [r7]
0050e130  38 70 28 e5                                      str r7, [r8, #-0x38]!
0050e134  04 30 97 e5                                      ldr r3, [r7, #4]
0050e138  0a 30 83 e0                                      add r3, r3, sl
0050e13c  04 30 87 e5                                      str r3, [r7, #4]
0050e140  0c 40 84 e5                                      str r4, [r4, #0xc]
0050e144  18 98 00 eb                                      bl #0x5341ac
0050e148  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0050e14c  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
0050e150  64 a1 80 e5                                      str sl, [r0, #0x164]
0050e154  03 10 99 e7                                      ldr r1, [sb, r3]
0050e158  02 20 99 e7                                      ldr r2, [sb, r2]
0050e15c  08 30 a0 e1                                      mov r3, r8
0050e160  30 c0 91 e5                                      ldr ip, [r1, #0x30]
0050e164  08 20 82 e2                                      add r2, r2, #8
0050e168  60 21 80 e5                                      str r2, [r0, #0x160]
0050e16c  00 c0 80 e5                                      str ip, [r0]
0050e170  34 e0 91 e5                                      ldr lr, [r1, #0x34]
0050e174  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0050e178  04 10 81 e2                                      add r1, r1, #4
0050e17c  00 20 e0 e3                                      mvn r2, #0
0050e180  0c e0 80 e7                                      str lr, [r0, ip]
0050e184  00 70 a0 e1                                      mov r7, r0
0050e188  5a c6 01 eb                                      bl #0x57faf8
0050e18c  90 30 9f e5                                      ldr r3, [pc, #0x90]
0050e190  07 00 a0 e1                                      mov r0, r7
0050e194  0a 10 a0 e1                                      mov r1, sl
0050e198  03 30 99 e7                                      ldr r3, [sb, r3]
0050e19c  4f 2f 83 e2                                      add r2, r3, #0x13c
0050e1a0  1c 30 83 e2                                      add r3, r3, #0x1c
0050e1a4  60 21 87 e5                                      str r2, [r7, #0x160]
0050e1a8  00 30 87 e5                                      str r3, [r7]
0050e1ac  34 70 84 e5                                      str r7, [r4, #0x34]
0050e1b0  00 30 97 e5                                      ldr r3, [r7]
0050e1b4  0f e0 a0 e1                                      mov lr, pc
0050e1b8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0050e1bc  34 00 94 e5                                      ldr r0, [r4, #0x34]
0050e1c0  06 10 a0 e1                                      mov r1, r6
0050e1c4  f4 23 02 eb                                      bl #0x59719c
0050e1c8  34 30 94 e5                                      ldr r3, [r4, #0x34]
0050e1cc  02 20 a0 e3                                      mov r2, #2
0050e1d0  38 21 83 e5                                      str r2, [r3, #0x138]
0050e1d4  48 00 9d e5                                      ldr r0, [sp, #0x48]
0050e1d8  00 00 50 e3                                      cmp r0, #0
0050e1dc  bd fe ff 0a                                      beq #0x50dcd8
0050e1e0  e7 3c f8 eb                                      bl #0x31d584
0050e1e4  bb fe ff ea                                      b #0x50dcd8
0050e1e8  10 60 9a e5                                      ldr r6, [sl, #0x10]
0050e1ec  14 80 9a e5                                      ldr r8, [sl, #0x14]
0050e1f0  48 ff ff ea                                      b #0x50df18
0050e1f4  45 00 f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0050e1f8  f8 6d 48 00 ac 40 00 00 f4 37 00 00 c4 89 3b 00  .byte 0xf8, 0x6d, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc4, 0x89, 0x3b, 0x00
0050e208  84 08 00 00 98 87 3b 00 fc 24 3b 00 48 25 3b 00  .byte 0x84, 0x08, 0x00, 0x00, 0x98, 0x87, 0x3b, 0x00, 0xfc, 0x24, 0x3b, 0x00, 0x48, 0x25, 0x3b, 0x00
0050e218  c4 3d 00 00 08 12 00 00 44 2b 00 00 d8 19 00 00  .byte 0xc4, 0x3d, 0x00, 0x00, 0x08, 0x12, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xd8, 0x19, 0x00, 0x00
