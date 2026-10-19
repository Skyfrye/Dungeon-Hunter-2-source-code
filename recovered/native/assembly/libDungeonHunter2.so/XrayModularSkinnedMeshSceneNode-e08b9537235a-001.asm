; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00362b28, declared_size=28, range_size=28, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZNK31XrayModularSkinnedMeshSceneNode14getBoundingBoxEv
; demangled: XrayModularSkinnedMeshSceneNode::getBoundingBox() const
; decoder-mode: arm
00362b28  10 40 2d e9                                      push {r4, lr}
00362b2c  c8 31 90 e5                                      ldr r3, [r0, #0x1c8]
00362b30  03 00 a0 e1                                      mov r0, r3
00362b34  00 30 93 e5                                      ldr r3, [r3]
00362b38  0f e0 a0 e1                                      mov lr, pc
00362b3c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00362b40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00362b44, declared_size=28, range_size=28, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZNK31XrayModularSkinnedMeshSceneNode25getTransformedBoundingBoxEv
; demangled: XrayModularSkinnedMeshSceneNode::getTransformedBoundingBox() const
; decoder-mode: arm
00362b44  10 40 2d e9                                      push {r4, lr}
00362b48  c8 31 90 e5                                      ldr r3, [r0, #0x1c8]
00362b4c  03 00 a0 e1                                      mov r0, r3
00362b50  00 30 93 e5                                      ldr r3, [r3]
00362b54  0f e0 a0 e1                                      mov lr, pc
00362b58  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00362b5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00362bc8, declared_size=112, range_size=112, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNode10UpdateXrayEv
; demangled: XrayModularSkinnedMeshSceneNode::UpdateXray()
; decoder-mode: arm
00362bc8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00362bcc  48 d0 4d e2                                      sub sp, sp, #0x48
00362bd0  04 50 8d e2                                      add r5, sp, #4
00362bd4  00 80 a0 e3                                      mov r8, #0
00362bd8  40 70 a0 e3                                      mov r7, #0x40
00362bdc  00 60 a0 e1                                      mov r6, r0
00362be0  08 10 a0 e1                                      mov r1, r8
00362be4  07 20 a0 e1                                      mov r2, r7
00362be8  05 00 a0 e1                                      mov r0, r5
00362bec  1b ae fe eb                                      bl #0x30e460
00362bf0  08 10 a0 e1                                      mov r1, r8
00362bf4  07 20 a0 e1                                      mov r2, r7
00362bf8  05 00 a0 e1                                      mov r0, r5
00362bfc  17 ae fe eb                                      bl #0x30e460
00362c00  fe 45 a0 e3                                      mov r4, #0x3f800000
00362c04  01 30 a0 e3                                      mov r3, #1
00362c08  40 40 8d e5                                      str r4, [sp, #0x40]
00362c0c  44 30 cd e5                                      strb r3, [sp, #0x44]
00362c10  04 40 8d e5                                      str r4, [sp, #4]
00362c14  18 40 8d e5                                      str r4, [sp, #0x18]
00362c18  2c 40 8d e5                                      str r4, [sp, #0x2c]
00362c1c  06 00 a0 e1                                      mov r0, r6
00362c20  05 10 a0 e1                                      mov r1, r5
00362c24  00 30 96 e5                                      ldr r3, [r6]
00362c28  0f e0 a0 e1                                      mov lr, pc
00362c2c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00362c30  48 d0 8d e2                                      add sp, sp, #0x48
00362c34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00362c38, declared_size=184, range_size=184, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNode18updateXrayMaterialEv
; demangled: XrayModularSkinnedMeshSceneNode::updateXrayMaterial()
; decoder-mode: arm
00362c38  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00362c3c  9c 81 90 e5                                      ldr r8, [r0, #0x19c]
00362c40  98 21 90 e5                                      ldr r2, [r0, #0x198]
00362c44  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00362c48  0c d0 4d e2                                      sub sp, sp, #0xc
00362c4c  08 80 62 e0                                      rsb r8, r2, r8
00362c50  48 81 b0 e1                                      asrs r8, r8, #2
00362c54  00 50 a0 e1                                      mov r5, r0
00362c58  03 30 8f e0                                      add r3, pc, r3
00362c5c  1f 00 00 0a                                      beq #0x362ce0
00362c60  84 20 9f e5                                      ldr r2, [pc, #0x84]
00362c64  00 40 a0 e3                                      mov r4, #0
00362c68  04 70 8d e2                                      add r7, sp, #4
00362c6c  02 a0 93 e7                                      ldr sl, [r3, r2]
00362c70  0d 60 a0 e1                                      mov r6, sp
00362c74  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
00362c78  10 00 9a e5                                      ldr r0, [sl, #0x10]
00362c7c  07 10 a0 e1                                      mov r1, r7
00362c80  04 c1 93 e7                                      ldr ip, [r3, r4, lsl #2]
00362c84  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00362c88  04 31 a0 e1                                      lsl r3, r4, #2
00362c8c  04 c0 8d e5                                      str ip, [sp, #4]
00362c90  00 00 5c e3                                      cmp ip, #0
00362c94  00 e0 9c 15                                      ldrne lr, [ip]
00362c98  0d 20 a0 e1                                      mov r2, sp
00362c9c  01 40 84 e2                                      add r4, r4, #1
00362ca0  01 e0 8e 12                                      addne lr, lr, #1
00362ca4  00 e0 8c 15                                      strne lr, [ip]
00362ca8  98 c1 95 e5                                      ldr ip, [r5, #0x198]
00362cac  03 30 9c e7                                      ldr r3, [ip, r3]
00362cb0  00 00 53 e3                                      cmp r3, #0
00362cb4  00 30 8d e5                                      str r3, [sp]
00362cb8  00 c0 93 15                                      ldrne ip, [r3]
00362cbc  01 c0 8c 12                                      addne ip, ip, #1
00362cc0  00 c0 83 15                                      strne ip, [r3]
00362cc4  3a be ff eb                                      bl #0x3525b4
00362cc8  0d 00 a0 e1                                      mov r0, sp
00362ccc  c5 b7 fe eb                                      bl #0x310be8
00362cd0  07 00 a0 e1                                      mov r0, r7
00362cd4  c3 b7 fe eb                                      bl #0x310be8
00362cd8  08 00 54 e1                                      cmp r4, r8
00362cdc  e4 ff ff 1a                                      bne #0x362c74
00362ce0  0c d0 8d e2                                      add sp, sp, #0xc
00362ce4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00362ce8  38 1e 63 00 f4 37 00 00                          .byte 0x38, 0x1e, 0x63, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00362e1c, declared_size=236, range_size=236, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNodeD2Ev
; demangled: XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode()
; decoder-mode: arm
00362e1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00362e20  00 30 91 e5                                      ldr r3, [r1]
00362e24  00 40 a0 e1                                      mov r4, r0
00362e28  6f 0f 80 e2                                      add r0, r0, #0x1bc
00362e2c  00 30 84 e5                                      str r3, [r4]
00362e30  4c 20 91 e5                                      ldr r2, [r1, #0x4c]
00362e34  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00362e38  01 50 a0 e1                                      mov r5, r1
00362e3c  03 20 84 e7                                      str r2, [r4, r3]
00362e40  00 30 94 e5                                      ldr r3, [r4]
00362e44  50 20 91 e5                                      ldr r2, [r1, #0x50]
00362e48  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00362e4c  03 20 84 e7                                      str r2, [r4, r3]
00362e50  de f2 ff eb                                      bl #0x35f9d0
00362e54  1b 0e 84 e2                                      add r0, r4, #0x1b0
00362e58  ff f2 ff eb                                      bl #0x35fa5c
00362e5c  69 0f 84 e2                                      add r0, r4, #0x1a4
00362e60  da f2 ff eb                                      bl #0x35f9d0
00362e64  66 0f 84 e2                                      add r0, r4, #0x198
00362e68  fb f2 ff eb                                      bl #0x35fa5c
00362e6c  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
00362e70  63 3f 84 e2                                      add r3, r4, #0x18c
00362e74  00 00 50 e3                                      cmp r0, #0
00362e78  05 00 00 0a                                      beq #0x362e94
00362e7c  08 10 93 e5                                      ldr r1, [r3, #8]
00362e80  01 10 60 e0                                      rsb r1, r0, r1
00362e84  03 10 c1 e3                                      bic r1, r1, #3
00362e88  80 00 51 e3                                      cmp r1, #0x80
00362e8c  19 00 00 8a                                      bhi #0x362ef8
00362e90  1a 98 0e eb                                      bl #0x708f00
00362e94  80 01 94 e5                                      ldr r0, [r4, #0x180]
00362e98  06 3d 84 e2                                      add r3, r4, #0x180
00362e9c  00 00 50 e3                                      cmp r0, #0
00362ea0  05 00 00 0a                                      beq #0x362ebc
00362ea4  08 10 93 e5                                      ldr r1, [r3, #8]
00362ea8  01 10 60 e0                                      rsb r1, r0, r1
00362eac  03 10 c1 e3                                      bic r1, r1, #3
00362eb0  80 00 51 e3                                      cmp r1, #0x80
00362eb4  11 00 00 8a                                      bhi #0x362f00
00362eb8  10 98 0e eb                                      bl #0x708f00
00362ebc  04 30 95 e5                                      ldr r3, [r5, #4]
00362ec0  04 50 85 e2                                      add r5, r5, #4
00362ec4  04 10 85 e2                                      add r1, r5, #4
00362ec8  00 30 84 e5                                      str r3, [r4]
00362ecc  40 20 95 e5                                      ldr r2, [r5, #0x40]
00362ed0  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00362ed4  04 00 a0 e1                                      mov r0, r4
00362ed8  03 20 84 e7                                      str r2, [r4, r3]
00362edc  00 30 94 e5                                      ldr r3, [r4]
00362ee0  44 20 95 e5                                      ldr r2, [r5, #0x44]
00362ee4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00362ee8  03 20 84 e7                                      str r2, [r4, r3]
00362eec  1b ff ff eb                                      bl #0x362b60
00362ef0  04 00 a0 e1                                      mov r0, r4
00362ef4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00362ef8  50 b5 fe eb                                      bl #0x310440
00362efc  e4 ff ff ea                                      b #0x362e94
00362f00  4e b5 fe eb                                      bl #0x310440
00362f04  ec ff ff ea                                      b #0x362ebc

; FUNCTION 0x00362f08, declared_size=560, range_size=560, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNode10renderMeshEPvb
; demangled: XrayModularSkinnedMeshSceneNode::renderMesh(void*, bool)
; decoder-mode: arm
00362f08  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00362f0c  34 31 90 e5                                      ldr r3, [r0, #0x134]
00362f10  18 62 9f e5                                      ldr r6, [pc, #0x218]
00362f14  10 21 90 e5                                      ldr r2, [r0, #0x110]
00362f18  00 00 53 e3                                      cmp r3, #0
00362f1c  06 60 8f e0                                      add r6, pc, r6
00362f20  1c d0 4d e2                                      sub sp, sp, #0x1c
00362f24  00 40 a0 e1                                      mov r4, r0
00362f28  14 50 92 e5                                      ldr r5, [r2, #0x14]
00362f2c  5f 00 00 0a                                      beq #0x3630b0
00362f30  00 00 55 e3                                      cmp r5, #0
00362f34  5d 00 00 0a                                      beq #0x3630b0
00362f38  00 00 51 e3                                      cmp r1, #0
00362f3c  5b 00 00 0a                                      beq #0x3630b0
00362f40  01 70 41 e2                                      sub r7, r1, #1
00362f44  14 00 8d e2                                      add r0, sp, #0x14
00362f48  03 10 a0 e1                                      mov r1, r3
00362f4c  07 20 a0 e1                                      mov r2, r7
00362f50  00 30 93 e5                                      ldr r3, [r3]
00362f54  0f e0 a0 e1                                      mov lr, pc
00362f58  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00362f5c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00362f60  00 00 53 e3                                      cmp r3, #0
00362f64  51 00 00 0a                                      beq #0x3630b0
00362f68  34 31 94 e5                                      ldr r3, [r4, #0x134]
00362f6c  1f 00 07 e2                                      and r0, r7, #0x1f
00362f70  01 10 a0 e3                                      mov r1, #1
00362f74  14 20 93 e5                                      ldr r2, [r3, #0x14]
00362f78  11 20 12 e0                                      ands r2, r2, r1, lsl r0
00362f7c  00 a0 a0 13                                      movne sl, #0
00362f80  59 00 00 0a                                      beq #0x3630ec
00362f84  80 21 94 e5                                      ldr r2, [r4, #0x180]
00362f88  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00362f8c  05 00 a0 e1                                      mov r0, r5
00362f90  07 11 92 e7                                      ldr r1, [r2, r7, lsl #2]
00362f94  10 80 8d e2                                      add r8, sp, #0x10
00362f98  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00362f9c  01 10 a0 e3                                      mov r1, #1
00362fa0  10 30 8d e5                                      str r3, [sp, #0x10]
00362fa4  00 00 53 e3                                      cmp r3, #0
00362fa8  00 20 93 15                                      ldrne r2, [r3]
00362fac  01 20 82 12                                      addne r2, r2, #1
00362fb0  00 20 83 15                                      strne r2, [r3]
00362fb4  80 21 94 15                                      ldrne r2, [r4, #0x180]
00362fb8  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
00362fbc  07 21 92 e7                                      ldr r2, [r2, r7, lsl #2]
00362fc0  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00362fc4  00 00 53 e3                                      cmp r3, #0
00362fc8  0c 30 8d e5                                      str r3, [sp, #0xc]
00362fcc  00 20 93 15                                      ldrne r2, [r3]
00362fd0  01 20 82 12                                      addne r2, r2, #1
00362fd4  00 20 83 15                                      strne r2, [r3]
00362fd8  00 30 95 e5                                      ldr r3, [r5]
00362fdc  24 20 84 e2                                      add r2, r4, #0x24
00362fe0  0f e0 a0 e1                                      mov lr, pc
00362fe4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00362fe8  05 00 a0 e1                                      mov r0, r5
00362fec  08 10 a0 e1                                      mov r1, r8
00362ff0  0c 20 8d e2                                      add r2, sp, #0xc
00362ff4  c5 ee ff eb                                      bl #0x35eb10
00362ff8  34 31 9f e5                                      ldr r3, [pc, #0x134]
00362ffc  03 30 96 e7                                      ldr r3, [r6, r3]
00363000  10 30 93 e5                                      ldr r3, [r3, #0x10]
00363004  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00363008  88 34 93 e5                                      ldr r3, [r3, #0x488]
0036300c  0a 00 53 e3                                      cmp r3, #0xa
00363010  3d 00 00 0a                                      beq #0x36310c
00363014  00 30 a0 e3                                      mov r3, #0
00363018  e8 30 85 e5                                      str r3, [r5, #0xe8]
0036301c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00363020  05 00 a0 e1                                      mov r0, r5
00363024  08 10 8d e2                                      add r1, sp, #8
00363028  00 00 53 e3                                      cmp r3, #0
0036302c  08 30 8d e5                                      str r3, [sp, #8]
00363030  04 20 93 15                                      ldrne r2, [r3, #4]
00363034  01 20 82 12                                      addne r2, r2, #1
00363038  04 20 83 15                                      strne r2, [r3, #4]
0036303c  e3 ee ff eb                                      bl #0x35ebd0
00363040  08 00 9d e5                                      ldr r0, [sp, #8]
00363044  00 00 50 e3                                      cmp r0, #0
00363048  00 00 00 0a                                      beq #0x363050
0036304c  4c e9 fe eb                                      bl #0x31d584
00363050  00 00 5a e3                                      cmp sl, #0
00363054  1c 00 00 1a                                      bne #0x3630cc
00363058  01 30 a0 e3                                      mov r3, #1
0036305c  00 c0 95 e5                                      ldr ip, [r5]
00363060  03 10 a0 e1                                      mov r1, r3
00363064  05 00 a0 e1                                      mov r0, r5
00363068  00 30 8d e5                                      str r3, [sp]
0036306c  03 20 a0 e1                                      mov r2, r3
00363070  0f e0 a0 e1                                      mov lr, pc
00363074  d4 f0 9c e5                                      ldr pc, [ip, #0xd4]
00363078  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0036307c  00 00 54 e3                                      cmp r4, #0
00363080  04 00 00 0a                                      beq #0x363098
00363084  00 30 94 e5                                      ldr r3, [r4]
00363088  01 30 43 e2                                      sub r3, r3, #1
0036308c  00 00 53 e3                                      cmp r3, #0
00363090  00 30 84 e5                                      str r3, [r4]
00363094  07 00 00 0a                                      beq #0x3630b8
00363098  08 00 a0 e1                                      mov r0, r8
0036309c  d1 b6 fe eb                                      bl #0x310be8
003630a0  14 00 9d e5                                      ldr r0, [sp, #0x14]
003630a4  00 00 50 e3                                      cmp r0, #0
003630a8  00 00 00 0a                                      beq #0x3630b0
003630ac  34 e9 fe eb                                      bl #0x31d584
003630b0  1c d0 8d e2                                      add sp, sp, #0x1c
003630b4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003630b8  04 00 a0 e1                                      mov r0, r4
003630bc  a4 f1 09 eb                                      bl #0x5df754
003630c0  04 00 a0 e1                                      mov r0, r4
003630c4  dd b4 fe eb                                      bl #0x310440
003630c8  f2 ff ff ea                                      b #0x363098
003630cc  34 31 94 e5                                      ldr r3, [r4, #0x134]
003630d0  07 20 a0 e1                                      mov r2, r7
003630d4  05 10 a0 e1                                      mov r1, r5
003630d8  03 00 a0 e1                                      mov r0, r3
003630dc  00 30 93 e5                                      ldr r3, [r3]
003630e0  0f e0 a0 e1                                      mov lr, pc
003630e4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
003630e8  da ff ff ea                                      b #0x363058
003630ec  03 00 a0 e1                                      mov r0, r3
003630f0  00 c0 93 e5                                      ldr ip, [r3]
003630f4  05 20 a0 e1                                      mov r2, r5
003630f8  07 30 a0 e1                                      mov r3, r7
003630fc  0f e0 a0 e1                                      mov lr, pc
00363100  38 f0 9c e5                                      ldr pc, [ip, #0x38]
00363104  04 a0 00 e2                                      and sl, r0, #4
00363108  9d ff ff ea                                      b #0x362f84
0036310c  00 30 a0 e3                                      mov r3, #0
00363110  00 c0 95 e5                                      ldr ip, [r5]
00363114  03 10 a0 e1                                      mov r1, r3
00363118  00 30 8d e5                                      str r3, [sp]
0036311c  05 00 a0 e1                                      mov r0, r5
00363120  03 20 a0 e1                                      mov r2, r3
00363124  0f e0 a0 e1                                      mov lr, pc
00363128  d4 f0 9c e5                                      ldr pc, [ip, #0xd4]
0036312c  b8 ff ff ea                                      b #0x363014
; mapping-symbol data/literal pool
00363130  74 1b 63 00 f4 37 00 00                          .byte 0x74, 0x1b, 0x63, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00363138, declared_size=1084, range_size=1084, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNode6renderEPv
; demangled: XrayModularSkinnedMeshSceneNode::render(void*)
; decoder-mode: arm
00363138  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036313c  1c a4 9f e5                                      ldr sl, [pc, #0x41c]
00363140  1c 24 9f e5                                      ldr r2, [pc, #0x41c]
00363144  64 d0 4d e2                                      sub sp, sp, #0x64
00363148  0a a0 8f e0                                      add sl, pc, sl
0036314c  02 30 9a e7                                      ldr r3, [sl, r2]
00363150  08 20 8d e5                                      str r2, [sp, #8]
00363154  0c 24 9f e5                                      ldr r2, [pc, #0x40c]
00363158  00 30 93 e5                                      ldr r3, [r3]
0036315c  00 40 a0 e1                                      mov r4, r0
00363160  02 60 9a e7                                      ldr r6, [sl, r2]
00363164  5c 30 8d e5                                      str r3, [sp, #0x5c]
00363168  0c 10 8d e5                                      str r1, [sp, #0xc]
0036316c  06 00 a0 e1                                      mov r0, r6
00363170  c4 51 ff eb                                      bl #0x337888
00363174  f0 13 9f e5                                      ldr r1, [pc, #0x3f0]
00363178  44 50 8d e2                                      add r5, sp, #0x44
0036317c  05 00 a0 e1                                      mov r0, r5
00363180  01 10 8f e0                                      add r1, pc, r1
00363184  14 10 81 e2                                      add r1, r1, #0x14
00363188  54 50 8d e5                                      str r5, [sp, #0x54]
0036318c  58 50 8d e5                                      str r5, [sp, #0x58]
00363190  0d ff ff eb                                      bl #0x362dcc
00363194  06 00 a0 e1                                      mov r0, r6
00363198  05 10 a0 e1                                      mov r1, r5
0036319c  39 52 ff eb                                      bl #0x337a88
003631a0  00 60 a0 e1                                      mov r6, r0
003631a4  58 00 9d e5                                      ldr r0, [sp, #0x58]
003631a8  05 00 50 e1                                      cmp r0, r5
003631ac  06 00 00 0a                                      beq #0x3631cc
003631b0  00 00 50 e3                                      cmp r0, #0
003631b4  04 00 00 0a                                      beq #0x3631cc
003631b8  44 10 9d e5                                      ldr r1, [sp, #0x44]
003631bc  01 10 60 e0                                      rsb r1, r0, r1
003631c0  80 00 51 e3                                      cmp r1, #0x80
003631c4  ac 00 00 8a                                      bhi #0x36347c
003631c8  4c 97 0e eb                                      bl #0x708f00
003631cc  00 00 56 e3                                      cmp r6, #0
003631d0  07 00 00 1a                                      bne #0x3631f4
003631d4  08 20 9d e5                                      ldr r2, [sp, #8]
003631d8  02 30 9a e7                                      ldr r3, [sl, r2]
003631dc  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
003631e0  00 30 93 e5                                      ldr r3, [r3]
003631e4  03 00 52 e1                                      cmp r2, r3
003631e8  db 00 00 1a                                      bne #0x36355c
003631ec  64 d0 8d e2                                      add sp, sp, #0x64
003631f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003631f4  74 83 9f e5                                      ldr r8, [pc, #0x374]
003631f8  04 00 a0 e1                                      mov r0, r4
003631fc  71 fe ff eb                                      bl #0x362bc8
00363200  08 30 9a e7                                      ldr r3, [sl, r8]
00363204  10 30 93 e5                                      ldr r3, [r3, #0x10]
00363208  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0036320c  88 34 90 e5                                      ldr r3, [r0, #0x488]
00363210  0a 00 53 e3                                      cmp r3, #0xa
00363214  9a 00 00 0a                                      beq #0x363484
00363218  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
0036321c  b4 91 94 e5                                      ldr sb, [r4, #0x1b4]
00363220  09 90 63 e0                                      rsb sb, r3, sb
00363224  49 91 b0 e1                                      asrs sb, sb, #2
00363228  17 00 00 0a                                      beq #0x36328c
0036322c  00 50 a0 e3                                      mov r5, #0
00363230  34 70 8d e2                                      add r7, sp, #0x34
00363234  01 60 a0 e3                                      mov r6, #1
00363238  03 00 00 ea                                      b #0x36324c
0036323c  08 20 9a e7                                      ldr r2, [sl, r8]
00363240  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00363244  10 20 92 e5                                      ldr r2, [r2, #0x10]
00363248  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
0036324c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
00363250  07 10 a0 e1                                      mov r1, r7
00363254  01 50 85 e2                                      add r5, r5, #1
00363258  00 00 53 e3                                      cmp r3, #0
0036325c  34 30 8d e5                                      str r3, [sp, #0x34]
00363260  00 20 93 15                                      ldrne r2, [r3]
00363264  01 20 82 12                                      addne r2, r2, #1
00363268  00 20 83 15                                      strne r2, [r3]
0036326c  00 20 a0 e3                                      mov r2, #0
00363270  06 30 a0 e1                                      mov r3, r6
00363274  00 60 8d e5                                      str r6, [sp]
00363278  21 c9 ff eb                                      bl #0x355704
0036327c  07 00 a0 e1                                      mov r0, r7
00363280  58 b6 fe eb                                      bl #0x310be8
00363284  09 00 55 e1                                      cmp r5, sb
00363288  eb ff ff 1a                                      bne #0x36323c
0036328c  34 31 94 e5                                      ldr r3, [r4, #0x134]
00363290  03 00 a0 e1                                      mov r0, r3
00363294  00 30 93 e5                                      ldr r3, [r3]
00363298  0f e0 a0 e1                                      mov lr, pc
0036329c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003632a0  00 60 50 e2                                      subs r6, r0, #0
003632a4  10 00 00 0a                                      beq #0x3632ec
003632a8  00 50 a0 e3                                      mov r5, #0
003632ac  80 31 94 e5                                      ldr r3, [r4, #0x180]
003632b0  34 c1 94 e5                                      ldr ip, [r4, #0x134]
003632b4  b0 11 94 e5                                      ldr r1, [r4, #0x1b0]
003632b8  05 21 93 e7                                      ldr r2, [r3, r5, lsl #2]
003632bc  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
003632c0  0c 00 a0 e1                                      mov r0, ip
003632c4  02 21 a0 e1                                      lsl r2, r2, #2
003632c8  02 30 83 e0                                      add r3, r3, r2
003632cc  00 c0 9c e5                                      ldr ip, [ip]
003632d0  02 20 81 e0                                      add r2, r1, r2
003632d4  05 10 a0 e1                                      mov r1, r5
003632d8  01 50 85 e2                                      add r5, r5, #1
003632dc  0f e0 a0 e1                                      mov lr, pc
003632e0  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003632e4  06 00 55 e1                                      cmp r5, r6
003632e8  ef ff ff 1a                                      bne #0x3632ac
003632ec  34 61 94 e5                                      ldr r6, [r4, #0x134]
003632f0  00 70 a0 e3                                      mov r7, #0
003632f4  28 70 8d e5                                      str r7, [sp, #0x28]
003632f8  2c 70 8d e5                                      str r7, [sp, #0x2c]
003632fc  30 70 8d e5                                      str r7, [sp, #0x30]
00363300  1c 70 8d e5                                      str r7, [sp, #0x1c]
00363304  20 70 8d e5                                      str r7, [sp, #0x20]
00363308  24 70 8d e5                                      str r7, [sp, #0x24]
0036330c  24 30 96 e5                                      ldr r3, [r6, #0x24]
00363310  28 80 96 e5                                      ldr r8, [r6, #0x28]
00363314  08 80 63 e0                                      rsb r8, r3, r8
00363318  c8 81 b0 e1                                      asrs r8, r8, #3
0036331c  01 00 00 1a                                      bne #0x363328
00363320  18 00 00 ea                                      b #0x363388
00363324  24 30 96 e5                                      ldr r3, [r6, #0x24]
00363328  87 31 83 e0                                      add r3, r3, r7, lsl #3
0036332c  04 50 93 e5                                      ldr r5, [r3, #4]
00363330  00 00 55 e3                                      cmp r5, #0
00363334  10 00 00 0a                                      beq #0x36337c
00363338  04 30 95 e5                                      ldr r3, [r5, #4]
0036333c  05 00 a0 e1                                      mov r0, r5
00363340  00 c0 95 e5                                      ldr ip, [r5]
00363344  01 30 83 e2                                      add r3, r3, #1
00363348  04 30 85 e5                                      str r3, [r5, #4]
0036334c  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00363350  b0 e1 94 e5                                      ldr lr, [r4, #0x1b0]
00363354  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
00363358  07 21 92 e7                                      ldr r2, [r2, r7, lsl #2]
0036335c  00 10 a0 e3                                      mov r1, #0
00363360  02 21 a0 e1                                      lsl r2, r2, #2
00363364  02 30 83 e0                                      add r3, r3, r2
00363368  02 20 8e e0                                      add r2, lr, r2
0036336c  0f e0 a0 e1                                      mov lr, pc
00363370  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00363374  05 00 a0 e1                                      mov r0, r5
00363378  81 e8 fe eb                                      bl #0x31d584
0036337c  01 70 87 e2                                      add r7, r7, #1
00363380  08 00 57 e1                                      cmp r7, r8
00363384  e6 ff ff 1a                                      bne #0x363324
00363388  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0036338c  04 00 a0 e1                                      mov r0, r4
00363390  00 20 a0 e3                                      mov r2, #0
00363394  db fe ff eb                                      bl #0x362f08
00363398  34 31 94 e5                                      ldr r3, [r4, #0x134]
0036339c  03 00 a0 e1                                      mov r0, r3
003633a0  00 30 93 e5                                      ldr r3, [r3]
003633a4  0f e0 a0 e1                                      mov lr, pc
003633a8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003633ac  00 70 50 e2                                      subs r7, r0, #0
003633b0  10 00 00 0a                                      beq #0x3633f8
003633b4  00 50 a0 e3                                      mov r5, #0
003633b8  80 31 94 e5                                      ldr r3, [r4, #0x180]
003633bc  34 c1 94 e5                                      ldr ip, [r4, #0x134]
003633c0  98 11 94 e5                                      ldr r1, [r4, #0x198]
003633c4  05 21 93 e7                                      ldr r2, [r3, r5, lsl #2]
003633c8  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
003633cc  0c 00 a0 e1                                      mov r0, ip
003633d0  02 21 a0 e1                                      lsl r2, r2, #2
003633d4  02 30 83 e0                                      add r3, r3, r2
003633d8  00 c0 9c e5                                      ldr ip, [ip]
003633dc  02 20 81 e0                                      add r2, r1, r2
003633e0  05 10 a0 e1                                      mov r1, r5
003633e4  01 50 85 e2                                      add r5, r5, #1
003633e8  0f e0 a0 e1                                      mov lr, pc
003633ec  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003633f0  07 00 55 e1                                      cmp r5, r7
003633f4  ef ff ff 1a                                      bne #0x3633b8
003633f8  00 00 58 e3                                      cmp r8, #0
003633fc  19 00 00 0a                                      beq #0x363468
00363400  00 70 a0 e3                                      mov r7, #0
00363404  24 30 96 e5                                      ldr r3, [r6, #0x24]
00363408  87 31 83 e0                                      add r3, r3, r7, lsl #3
0036340c  04 50 93 e5                                      ldr r5, [r3, #4]
00363410  00 00 55 e3                                      cmp r5, #0
00363414  10 00 00 0a                                      beq #0x36345c
00363418  04 30 95 e5                                      ldr r3, [r5, #4]
0036341c  05 00 a0 e1                                      mov r0, r5
00363420  00 c0 95 e5                                      ldr ip, [r5]
00363424  01 30 83 e2                                      add r3, r3, #1
00363428  04 30 85 e5                                      str r3, [r5, #4]
0036342c  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00363430  98 e1 94 e5                                      ldr lr, [r4, #0x198]
00363434  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00363438  07 21 92 e7                                      ldr r2, [r2, r7, lsl #2]
0036343c  00 10 a0 e3                                      mov r1, #0
00363440  02 21 a0 e1                                      lsl r2, r2, #2
00363444  02 30 83 e0                                      add r3, r3, r2
00363448  02 20 8e e0                                      add r2, lr, r2
0036344c  0f e0 a0 e1                                      mov lr, pc
00363450  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00363454  05 00 a0 e1                                      mov r0, r5
00363458  49 e8 fe eb                                      bl #0x31d584
0036345c  01 70 87 e2                                      add r7, r7, #1
00363460  08 00 57 e1                                      cmp r7, r8
00363464  e6 ff ff 1a                                      bne #0x363404
00363468  1c 00 8d e2                                      add r0, sp, #0x1c
0036346c  57 f1 ff eb                                      bl #0x35f9d0
00363470  28 00 8d e2                                      add r0, sp, #0x28
00363474  78 f1 ff eb                                      bl #0x35fa5c
00363478  55 ff ff ea                                      b #0x3631d4
0036347c  ef b3 fe eb                                      bl #0x310440
00363480  51 ff ff ea                                      b #0x3631cc
00363484  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00363488  b4 b1 94 e5                                      ldr fp, [r4, #0x1b4]
0036348c  0b b0 63 e0                                      rsb fp, r3, fp
00363490  4b b1 b0 e1                                      asrs fp, fp, #2
00363494  7c ff ff 0a                                      beq #0x36328c
00363498  38 20 8d e2                                      add r2, sp, #0x38
0036349c  10 20 8d e5                                      str r2, [sp, #0x10]
003634a0  3c 20 8d e2                                      add r2, sp, #0x3c
003634a4  00 50 a0 e3                                      mov r5, #0
003634a8  40 70 8d e2                                      add r7, sp, #0x40
003634ac  14 20 8d e5                                      str r2, [sp, #0x14]
003634b0  01 60 a0 e3                                      mov r6, #1
003634b4  08 90 a0 e1                                      mov sb, r8
003634b8  03 00 00 ea                                      b #0x3634cc
003634bc  09 20 9a e7                                      ldr r2, [sl, sb]
003634c0  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
003634c4  10 20 92 e5                                      ldr r2, [r2, #0x10]
003634c8  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
003634cc  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
003634d0  07 10 a0 e1                                      mov r1, r7
003634d4  05 81 a0 e1                                      lsl r8, r5, #2
003634d8  00 00 53 e3                                      cmp r3, #0
003634dc  40 30 8d e5                                      str r3, [sp, #0x40]
003634e0  00 20 93 15                                      ldrne r2, [r3]
003634e4  01 50 85 e2                                      add r5, r5, #1
003634e8  01 20 82 12                                      addne r2, r2, #1
003634ec  00 20 83 15                                      strne r2, [r3]
003634f0  06 20 a0 e1                                      mov r2, r6
003634f4  06 30 a0 e1                                      mov r3, r6
003634f8  00 60 8d e5                                      str r6, [sp]
003634fc  80 c8 ff eb                                      bl #0x355704
00363500  07 00 a0 e1                                      mov r0, r7
00363504  b7 b5 fe eb                                      bl #0x310be8
00363508  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
0036350c  08 30 93 e7                                      ldr r3, [r3, r8]
00363510  3c 30 8d e5                                      str r3, [sp, #0x3c]
00363514  00 00 53 e3                                      cmp r3, #0
00363518  00 20 93 15                                      ldrne r2, [r3]
0036351c  01 20 82 12                                      addne r2, r2, #1
00363520  00 20 83 15                                      strne r2, [r3]
00363524  3c 30 9d 15                                      ldrne r3, [sp, #0x3c]
00363528  04 30 93 e5                                      ldr r3, [r3, #4]
0036352c  00 00 53 e3                                      cmp r3, #0
00363530  38 30 8d e5                                      str r3, [sp, #0x38]
00363534  00 20 93 15                                      ldrne r2, [r3]
00363538  01 20 82 12                                      addne r2, r2, #1
0036353c  00 20 83 15                                      strne r2, [r3]
00363540  10 00 9d e5                                      ldr r0, [sp, #0x10]
00363544  5b bb ff eb                                      bl #0x3522b8
00363548  14 00 9d e5                                      ldr r0, [sp, #0x14]
0036354c  a5 b5 fe eb                                      bl #0x310be8
00363550  0b 00 55 e1                                      cmp r5, fp
00363554  d8 ff ff 1a                                      bne #0x3634bc
00363558  4b ff ff ea                                      b #0x36328c
0036355c  6b ab fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00363560  48 19 63 00 ac 40 00 00 84 08 00 00 f8 c8 55 00  .byte 0x48, 0x19, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xf8, 0xc8, 0x55, 0x00
00363570  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00363574, declared_size=724, range_size=724, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNode19onRegisterSceneNodeEv
; demangled: XrayModularSkinnedMeshSceneNode::onRegisterSceneNode()
; decoder-mode: arm
00363574  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00363578  b0 62 9f e5                                      ldr r6, [pc, #0x2b0]
0036357c  b0 82 9f e5                                      ldr r8, [pc, #0x2b0]
00363580  b0 a2 9f e5                                      ldr sl, [pc, #0x2b0]
00363584  06 60 8f e0                                      add r6, pc, r6
00363588  08 30 96 e7                                      ldr r3, [r6, r8]
0036358c  0a 70 96 e7                                      ldr r7, [r6, sl]
00363590  64 d0 4d e2                                      sub sp, sp, #0x64
00363594  00 30 93 e5                                      ldr r3, [r3]
00363598  00 40 a0 e1                                      mov r4, r0
0036359c  07 00 a0 e1                                      mov r0, r7
003635a0  5c 30 8d e5                                      str r3, [sp, #0x5c]
003635a4  b7 50 ff eb                                      bl #0x337888
003635a8  8c 12 9f e5                                      ldr r1, [pc, #0x28c]
003635ac  44 50 8d e2                                      add r5, sp, #0x44
003635b0  05 00 a0 e1                                      mov r0, r5
003635b4  01 10 8f e0                                      add r1, pc, r1
003635b8  14 10 81 e2                                      add r1, r1, #0x14
003635bc  54 50 8d e5                                      str r5, [sp, #0x54]
003635c0  58 50 8d e5                                      str r5, [sp, #0x58]
003635c4  00 fe ff eb                                      bl #0x362dcc
003635c8  07 00 a0 e1                                      mov r0, r7
003635cc  05 10 a0 e1                                      mov r1, r5
003635d0  2c 51 ff eb                                      bl #0x337a88
003635d4  00 70 a0 e1                                      mov r7, r0
003635d8  58 00 9d e5                                      ldr r0, [sp, #0x58]
003635dc  05 00 50 e1                                      cmp r0, r5
003635e0  06 00 00 0a                                      beq #0x363600
003635e4  00 00 50 e3                                      cmp r0, #0
003635e8  04 00 00 0a                                      beq #0x363600
003635ec  44 10 9d e5                                      ldr r1, [sp, #0x44]
003635f0  01 10 60 e0                                      rsb r1, r0, r1
003635f4  80 00 51 e3                                      cmp r1, #0x80
003635f8  80 00 00 8a                                      bhi #0x363800
003635fc  3f 96 0e eb                                      bl #0x708f00
00363600  00 00 57 e3                                      cmp r7, #0
00363604  07 00 00 1a                                      bne #0x363628
00363608  08 30 96 e7                                      ldr r3, [r6, r8]
0036360c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00363610  01 00 a0 e3                                      mov r0, #1
00363614  00 30 93 e5                                      ldr r3, [r3]
00363618  03 00 52 e1                                      cmp r2, r3
0036361c  82 00 00 1a                                      bne #0x36382c
00363620  64 d0 8d e2                                      add sp, sp, #0x64
00363624  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00363628  04 00 a0 e1                                      mov r0, r4
0036362c  65 fd ff eb                                      bl #0x362bc8
00363630  34 31 94 e5                                      ldr r3, [r4, #0x134]
00363634  00 00 53 e3                                      cmp r3, #0
00363638  f2 ff ff 0a                                      beq #0x363608
0036363c  0a 70 96 e7                                      ldr r7, [r6, sl]
00363640  2c 50 8d e2                                      add r5, sp, #0x2c
00363644  07 00 a0 e1                                      mov r0, r7
00363648  8e 50 ff eb                                      bl #0x337888
0036364c  ec 11 9f e5                                      ldr r1, [pc, #0x1ec]
00363650  05 00 a0 e1                                      mov r0, r5
00363654  3c 50 8d e5                                      str r5, [sp, #0x3c]
00363658  01 10 8f e0                                      add r1, pc, r1
0036365c  14 10 81 e2                                      add r1, r1, #0x14
00363660  40 50 8d e5                                      str r5, [sp, #0x40]
00363664  d8 fd ff eb                                      bl #0x362dcc
00363668  07 00 a0 e1                                      mov r0, r7
0036366c  05 10 a0 e1                                      mov r1, r5
00363670  04 51 ff eb                                      bl #0x337a88
00363674  00 70 a0 e1                                      mov r7, r0
00363678  05 00 a0 e1                                      mov r0, r5
0036367c  f4 d2 fe eb                                      bl #0x318254
00363680  00 00 57 e3                                      cmp r7, #0
00363684  df ff ff 0a                                      beq #0x363608
00363688  10 31 94 e5                                      ldr r3, [r4, #0x110]
0036368c  14 b0 93 e5                                      ldr fp, [r3, #0x14]
00363690  00 00 5b e3                                      cmp fp, #0
00363694  db ff ff 0a                                      beq #0x363608
00363698  34 31 94 e5                                      ldr r3, [r4, #0x134]
0036369c  03 00 a0 e1                                      mov r0, r3
003636a0  00 30 93 e5                                      ldr r3, [r3]
003636a4  0f e0 a0 e1                                      mov lr, pc
003636a8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003636ac  00 90 50 e2                                      subs sb, r0, #0
003636b0  d4 ff ff 0a                                      beq #0x363608
003636b4  88 21 9f e5                                      ldr r2, [pc, #0x188]
003636b8  28 30 8d e2                                      add r3, sp, #0x28
003636bc  1c 80 8d e5                                      str r8, [sp, #0x1c]
003636c0  18 20 8d e5                                      str r2, [sp, #0x18]
003636c4  00 50 a0 e3                                      mov r5, #0
003636c8  01 70 a0 e3                                      mov r7, #1
003636cc  24 a0 8d e2                                      add sl, sp, #0x24
003636d0  14 60 8d e5                                      str r6, [sp, #0x14]
003636d4  03 80 a0 e1                                      mov r8, r3
003636d8  07 00 00 ea                                      b #0x3636fc
003636dc  05 00 50 e3                                      cmp r0, #5
003636e0  4b 00 00 0a                                      beq #0x363814
003636e4  0a 00 a0 e1                                      mov r0, sl
003636e8  3e b5 fe eb                                      bl #0x310be8
003636ec  07 00 59 e1                                      cmp sb, r7
003636f0  01 50 85 e2                                      add r5, r5, #1
003636f4  01 70 87 e2                                      add r7, r7, #1
003636f8  42 00 00 9a                                      bls #0x363808
003636fc  34 31 94 e5                                      ldr r3, [r4, #0x134]
00363700  08 00 a0 e1                                      mov r0, r8
00363704  05 20 a0 e1                                      mov r2, r5
00363708  03 10 a0 e1                                      mov r1, r3
0036370c  00 30 93 e5                                      ldr r3, [r3]
00363710  0f e0 a0 e1                                      mov lr, pc
00363714  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00363718  28 00 9d e5                                      ldr r0, [sp, #0x28]
0036371c  00 00 50 e3                                      cmp r0, #0
00363720  f1 ff ff 0a                                      beq #0x3636ec
00363724  96 e7 fe eb                                      bl #0x31d584
00363728  80 21 94 e5                                      ldr r2, [r4, #0x180]
0036372c  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00363730  00 10 a0 e3                                      mov r1, #0
00363734  05 21 92 e7                                      ldr r2, [r2, r5, lsl #2]
00363738  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0036373c  00 00 53 e3                                      cmp r3, #0
00363740  24 30 8d e5                                      str r3, [sp, #0x24]
00363744  00 20 93 15                                      ldrne r2, [r3]
00363748  01 20 82 12                                      addne r2, r2, #1
0036374c  00 20 83 15                                      strne r2, [r3]
00363750  34 31 94 e5                                      ldr r3, [r4, #0x134]
00363754  0b 20 a0 e1                                      mov r2, fp
00363758  03 00 a0 e1                                      mov r0, r3
0036375c  00 c0 93 e5                                      ldr ip, [r3]
00363760  05 30 a0 e1                                      mov r3, r5
00363764  0f e0 a0 e1                                      mov lr, pc
00363768  38 f0 9c e5                                      ldr pc, [ip, #0x38]
0036376c  04 00 50 e3                                      cmp r0, #4
00363770  10 00 50 13                                      cmpne r0, #0x10
00363774  d8 ff ff 1a                                      bne #0x3636dc
00363778  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0036377c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00363780  04 10 a0 e1                                      mov r1, r4
00363784  0a 20 a0 e1                                      mov r2, sl
00363788  03 60 9e e7                                      ldr r6, [lr, r3]
0036378c  09 e0 a0 e3                                      mov lr, #9
00363790  07 30 a0 e1                                      mov r3, r7
00363794  10 00 96 e5                                      ldr r0, [r6, #0x10]
00363798  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
0036379c  0c 00 a0 e1                                      mov r0, ip
003637a0  00 c0 9c e5                                      ldr ip, [ip]
003637a4  00 e0 8d e5                                      str lr, [sp]
003637a8  00 e0 a0 e3                                      mov lr, #0
003637ac  04 e0 8d e5                                      str lr, [sp, #4]
003637b0  02 e1 e0 e3                                      mvn lr, #0x80000000
003637b4  08 e0 8d e5                                      str lr, [sp, #8]
003637b8  0f e0 a0 e1                                      mov lr, pc
003637bc  8c f0 9c e5                                      ldr pc, [ip, #0x8c]
003637c0  10 30 96 e5                                      ldr r3, [r6, #0x10]
003637c4  0a e0 a0 e3                                      mov lr, #0xa
003637c8  04 10 a0 e1                                      mov r1, r4
003637cc  1c c0 93 e5                                      ldr ip, [r3, #0x1c]
003637d0  0a 20 a0 e1                                      mov r2, sl
003637d4  07 30 a0 e1                                      mov r3, r7
003637d8  0c 00 a0 e1                                      mov r0, ip
003637dc  00 c0 9c e5                                      ldr ip, [ip]
003637e0  00 e0 8d e5                                      str lr, [sp]
003637e4  00 e0 a0 e3                                      mov lr, #0
003637e8  04 e0 8d e5                                      str lr, [sp, #4]
003637ec  02 e1 e0 e3                                      mvn lr, #0x80000000
003637f0  08 e0 8d e5                                      str lr, [sp, #8]
003637f4  0f e0 a0 e1                                      mov lr, pc
003637f8  8c f0 9c e5                                      ldr pc, [ip, #0x8c]
003637fc  b8 ff ff ea                                      b #0x3636e4
00363800  0e b3 fe eb                                      bl #0x310440
00363804  7d ff ff ea                                      b #0x363600
00363808  14 60 9d e5                                      ldr r6, [sp, #0x14]
0036380c  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
00363810  7c ff ff ea                                      b #0x363608
00363814  34 31 94 e5                                      ldr r3, [r4, #0x134]
00363818  03 00 a0 e1                                      mov r0, r3
0036381c  00 30 93 e5                                      ldr r3, [r3]
00363820  0f e0 a0 e1                                      mov lr, pc
00363824  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00363828  ad ff ff ea                                      b #0x3636e4
0036382c  b7 aa fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00363830  0c 15 63 00 ac 40 00 00 84 08 00 00 c4 c4 55 00  .byte 0x0c, 0x15, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0xc4, 0x55, 0x00
00363840  20 c4 55 00 f4 37 00 00                          .byte 0x20, 0xc4, 0x55, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00363848, declared_size=244, range_size=244, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNodeD1Ev
; demangled: XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode()
; decoder-mode: arm
00363848  70 40 2d e9                                      push {r4, r5, r6, lr}
0036384c  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
00363850  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
00363854  00 40 a0 e1                                      mov r4, r0
00363858  05 50 8f e0                                      add r5, pc, r5
0036385c  03 30 95 e7                                      ldr r3, [r5, r3]
00363860  6f 0f 80 e2                                      add r0, r0, #0x1bc
00363864  4a 2f 83 e2                                      add r2, r3, #0x128
00363868  1c 30 83 e2                                      add r3, r3, #0x1c
0036386c  00 30 84 e5                                      str r3, [r4]
00363870  cc 21 84 e5                                      str r2, [r4, #0x1cc]
00363874  55 f0 ff eb                                      bl #0x35f9d0
00363878  1b 0e 84 e2                                      add r0, r4, #0x1b0
0036387c  76 f0 ff eb                                      bl #0x35fa5c
00363880  69 0f 84 e2                                      add r0, r4, #0x1a4
00363884  51 f0 ff eb                                      bl #0x35f9d0
00363888  66 0f 84 e2                                      add r0, r4, #0x198
0036388c  72 f0 ff eb                                      bl #0x35fa5c
00363890  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
00363894  63 3f 84 e2                                      add r3, r4, #0x18c
00363898  00 00 50 e3                                      cmp r0, #0
0036389c  05 00 00 0a                                      beq #0x3638b8
003638a0  08 10 93 e5                                      ldr r1, [r3, #8]
003638a4  01 10 60 e0                                      rsb r1, r0, r1
003638a8  03 10 c1 e3                                      bic r1, r1, #3
003638ac  80 00 51 e3                                      cmp r1, #0x80
003638b0  1a 00 00 8a                                      bhi #0x363920
003638b4  91 95 0e eb                                      bl #0x708f00
003638b8  80 01 94 e5                                      ldr r0, [r4, #0x180]
003638bc  06 3d 84 e2                                      add r3, r4, #0x180
003638c0  00 00 50 e3                                      cmp r0, #0
003638c4  05 00 00 0a                                      beq #0x3638e0
003638c8  08 10 93 e5                                      ldr r1, [r3, #8]
003638cc  01 10 60 e0                                      rsb r1, r0, r1
003638d0  03 10 c1 e3                                      bic r1, r1, #3
003638d4  80 00 51 e3                                      cmp r1, #0x80
003638d8  12 00 00 8a                                      bhi #0x363928
003638dc  87 95 0e eb                                      bl #0x708f00
003638e0  50 30 9f e5                                      ldr r3, [pc, #0x50]
003638e4  04 00 a0 e1                                      mov r0, r4
003638e8  03 10 95 e7                                      ldr r1, [r5, r3]
003638ec  04 30 91 e5                                      ldr r3, [r1, #4]
003638f0  44 c0 91 e5                                      ldr ip, [r1, #0x44]
003638f4  48 20 91 e5                                      ldr r2, [r1, #0x48]
003638f8  00 30 84 e5                                      str r3, [r4]
003638fc  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00363900  08 10 81 e2                                      add r1, r1, #8
00363904  03 c0 84 e7                                      str ip, [r4, r3]
00363908  00 30 94 e5                                      ldr r3, [r4]
0036390c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00363910  03 20 84 e7                                      str r2, [r4, r3]
00363914  91 fc ff eb                                      bl #0x362b60
00363918  04 00 a0 e1                                      mov r0, r4
0036391c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00363920  c6 b2 fe eb                                      bl #0x310440
00363924  e3 ff ff ea                                      b #0x3638b8
00363928  c4 b2 fe eb                                      bl #0x310440
0036392c  eb ff ff ea                                      b #0x3638e0
; mapping-symbol data/literal pool
00363930  38 12 63 00 ac 1c 00 00 e8 4a 00 00              .byte 0x38, 0x12, 0x63, 0x00, 0xac, 0x1c, 0x00, 0x00, 0xe8, 0x4a, 0x00, 0x00

; FUNCTION 0x0036393c, declared_size=28, range_size=28, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNodeD0Ev
; demangled: XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode()
; decoder-mode: arm
0036393c  10 40 2d e9                                      push {r4, lr}
00363940  00 40 a0 e1                                      mov r4, r0
00363944  bf ff ff eb                                      bl #0x363848
00363948  04 00 a0 e1                                      mov r0, r4
0036394c  bb b2 fe eb                                      bl #0x310440
00363950  04 00 a0 e1                                      mov r0, r4
00363954  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00363958, declared_size=2076, range_size=2076, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNode22regenerateXrayMaterialEv
; demangled: XrayModularSkinnedMeshSceneNode::regenerateXrayMaterial()
; decoder-mode: arm
00363958  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036395c  00 40 a0 e1                                      mov r4, r0
00363960  98 11 90 e5                                      ldr r1, [r0, #0x198]
00363964  9c 21 90 e5                                      ldr r2, [r0, #0x19c]
00363968  ec 07 9f e5                                      ldr r0, [pc, #0x7ec]
0036396c  b4 d0 4d e2                                      sub sp, sp, #0xb4
00363970  66 3f 84 e2                                      add r3, r4, #0x198
00363974  02 00 51 e1                                      cmp r1, r2
00363978  00 00 8f e0                                      add r0, pc, r0
0036397c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00363980  28 00 8d e5                                      str r0, [sp, #0x28]
00363984  02 00 00 0a                                      beq #0x363994
00363988  03 00 a0 e1                                      mov r0, r3
0036398c  ac 30 8d e2                                      add r3, sp, #0xac
00363990  43 ed ff eb                                      bl #0x35eea4
00363994  a4 11 94 e5                                      ldr r1, [r4, #0x1a4]
00363998  a8 21 94 e5                                      ldr r2, [r4, #0x1a8]
0036399c  69 7f 84 e2                                      add r7, r4, #0x1a4
003639a0  02 00 51 e1                                      cmp r1, r2
003639a4  02 00 00 0a                                      beq #0x3639b4
003639a8  07 00 a0 e1                                      mov r0, r7
003639ac  a8 30 8d e2                                      add r3, sp, #0xa8
003639b0  e9 f4 ff eb                                      bl #0x360d5c
003639b4  84 21 94 e5                                      ldr r2, [r4, #0x184]
003639b8  80 31 94 e5                                      ldr r3, [r4, #0x180]
003639bc  b0 11 94 e5                                      ldr r1, [r4, #0x1b0]
003639c0  1b 0e 84 e2                                      add r0, r4, #0x1b0
003639c4  02 00 53 e1                                      cmp r3, r2
003639c8  b4 21 94 e5                                      ldr r2, [r4, #0x1b4]
003639cc  84 31 84 15                                      strne r3, [r4, #0x184]
003639d0  44 00 8d e5                                      str r0, [sp, #0x44]
003639d4  02 00 51 e1                                      cmp r1, r2
003639d8  01 00 00 0a                                      beq #0x3639e4
003639dc  a4 30 8d e2                                      add r3, sp, #0xa4
003639e0  2f ed ff eb                                      bl #0x35eea4
003639e4  bc 11 94 e5                                      ldr r1, [r4, #0x1bc]
003639e8  c0 21 94 e5                                      ldr r2, [r4, #0x1c0]
003639ec  6f 3f 84 e2                                      add r3, r4, #0x1bc
003639f0  40 30 8d e5                                      str r3, [sp, #0x40]
003639f4  02 00 51 e1                                      cmp r1, r2
003639f8  02 00 00 0a                                      beq #0x363a08
003639fc  03 00 a0 e1                                      mov r0, r3
00363a00  a0 30 8d e2                                      add r3, sp, #0xa0
00363a04  d4 f4 ff eb                                      bl #0x360d5c
00363a08  50 07 9f e5                                      ldr r0, [pc, #0x750]
00363a0c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00363a10  4c 20 8d e2                                      add r2, sp, #0x4c
00363a14  38 20 8d e5                                      str r2, [sp, #0x38]
00363a18  00 30 91 e7                                      ldr r3, [r1, r0]
00363a1c  30 00 8d e5                                      str r0, [sp, #0x30]
00363a20  3c 17 9f e5                                      ldr r1, [pc, #0x73c]
00363a24  28 00 9d e5                                      ldr r0, [sp, #0x28]
00363a28  38 27 9f e5                                      ldr r2, [pc, #0x738]
00363a2c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00363a30  01 10 8f e0                                      add r1, pc, r1
00363a34  02 20 90 e7                                      ldr r2, [r0, r2]
00363a38  38 00 9d e5                                      ldr r0, [sp, #0x38]
00363a3c  10 50 93 e5                                      ldr r5, [r3, #0x10]
00363a40  05 ae 0a eb                                      bl #0x60f25c
00363a44  20 37 9f e5                                      ldr r3, [pc, #0x720]
00363a48  9c 10 8d e2                                      add r1, sp, #0x9c
00363a4c  2c 10 8d e5                                      str r1, [sp, #0x2c]
00363a50  05 20 a0 e1                                      mov r2, r5
00363a54  38 10 9d e5                                      ldr r1, [sp, #0x38]
00363a58  00 50 a0 e3                                      mov r5, #0
00363a5c  03 30 8f e0                                      add r3, pc, r3
00363a60  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00363a64  00 50 8d e5                                      str r5, [sp]
00363a68  a7 dd 0a eb                                      bl #0x61b10c
00363a6c  34 21 94 e5                                      ldr r2, [r4, #0x134]
00363a70  b0 60 8d e2                                      add r6, sp, #0xb0
00363a74  34 20 8d e5                                      str r2, [sp, #0x34]
00363a78  00 30 92 e5                                      ldr r3, [r2]
00363a7c  02 00 a0 e1                                      mov r0, r2
00363a80  0f e0 a0 e1                                      mov lr, pc
00363a84  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00363a88  34 30 9d e5                                      ldr r3, [sp, #0x34]
00363a8c  14 00 8d e5                                      str r0, [sp, #0x14]
00363a90  28 20 93 e5                                      ldr r2, [r3, #0x28]
00363a94  24 30 93 e5                                      ldr r3, [r3, #0x24]
00363a98  18 50 26 e5                                      str r5, [r6, #-0x18]!
00363a9c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00363aa0  02 30 63 e0                                      rsb r3, r3, r2
00363aa4  c3 31 a0 e1                                      asr r3, r3, #3
00363aa8  06 20 a0 e1                                      mov r2, r6
00363aac  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00363ab0  1c 30 8d e5                                      str r3, [sp, #0x1c]
00363ab4  78 f0 ff eb                                      bl #0x35fc9c
00363ab8  06 00 a0 e1                                      mov r0, r6
00363abc  49 b4 fe eb                                      bl #0x310be8
00363ac0  b0 20 8d e2                                      add r2, sp, #0xb0
00363ac4  1c 50 22 e5                                      str r5, [r2, #-0x1c]!
00363ac8  07 00 a0 e1                                      mov r0, r7
00363acc  14 10 9d e5                                      ldr r1, [sp, #0x14]
00363ad0  dc f5 ff eb                                      bl #0x361248
00363ad4  94 50 9d e5                                      ldr r5, [sp, #0x94]
00363ad8  00 00 55 e3                                      cmp r5, #0
00363adc  04 00 00 0a                                      beq #0x363af4
00363ae0  00 30 95 e5                                      ldr r3, [r5]
00363ae4  01 30 43 e2                                      sub r3, r3, #1
00363ae8  00 00 53 e3                                      cmp r3, #0
00363aec  00 30 85 e5                                      str r3, [r5]
00363af0  94 01 00 0a                                      beq #0x364148
00363af4  b0 20 8d e2                                      add r2, sp, #0xb0
00363af8  00 50 a0 e3                                      mov r5, #0
00363afc  20 50 22 e5                                      str r5, [r2, #-0x20]!
00363b00  14 10 9d e5                                      ldr r1, [sp, #0x14]
00363b04  06 0d 84 e2                                      add r0, r4, #0x180
00363b08  f6 f0 ff eb                                      bl #0x35fee8
00363b0c  98 21 94 e5                                      ldr r2, [r4, #0x198]
00363b10  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00363b14  02 30 a0 e1                                      mov r3, r2
00363b18  01 70 62 e0                                      rsb r7, r2, r1
00363b1c  47 71 b0 e1                                      asrs r7, r7, #2
00363b20  1c 00 00 0a                                      beq #0x363b98
00363b24  60 a0 8d e2                                      add sl, sp, #0x60
00363b28  05 80 a0 e1                                      mov r8, r5
00363b2c  00 00 00 ea                                      b #0x363b34
00363b30  98 21 94 e5                                      ldr r2, [r4, #0x198]
00363b34  60 80 8d e5                                      str r8, [sp, #0x60]
00363b38  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
00363b3c  0a 00 a0 e1                                      mov r0, sl
00363b40  60 30 8d e5                                      str r3, [sp, #0x60]
00363b44  05 81 82 e7                                      str r8, [r2, r5, lsl #2]
00363b48  26 b4 fe eb                                      bl #0x310be8
00363b4c  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
00363b50  05 61 93 e7                                      ldr r6, [r3, r5, lsl #2]
00363b54  05 81 83 e7                                      str r8, [r3, r5, lsl #2]
00363b58  01 50 85 e2                                      add r5, r5, #1
00363b5c  00 00 56 e3                                      cmp r6, #0
00363b60  08 00 00 0a                                      beq #0x363b88
00363b64  00 30 96 e5                                      ldr r3, [r6]
00363b68  01 30 43 e2                                      sub r3, r3, #1
00363b6c  00 00 53 e3                                      cmp r3, #0
00363b70  00 30 86 e5                                      str r3, [r6]
00363b74  03 00 00 1a                                      bne #0x363b88
00363b78  06 00 a0 e1                                      mov r0, r6
00363b7c  f4 ee 09 eb                                      bl #0x5df754
00363b80  06 00 a0 e1                                      mov r0, r6
00363b84  2d b2 fe eb                                      bl #0x310440
00363b88  07 00 55 e1                                      cmp r5, r7
00363b8c  e7 ff ff 1a                                      bne #0x363b30
00363b90  98 31 94 e5                                      ldr r3, [r4, #0x198]
00363b94  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00363b98  14 00 9d e5                                      ldr r0, [sp, #0x14]
00363b9c  01 90 63 e0                                      rsb sb, r3, r1
00363ba0  49 91 a0 e1                                      asr sb, sb, #2
00363ba4  00 00 50 e3                                      cmp r0, #0
00363ba8  03 a0 a0 e1                                      mov sl, r3
00363bac  85 00 00 0a                                      beq #0x363dc8
00363bb0  00 b0 a0 e3                                      mov fp, #0
00363bb4  8c 20 8d e2                                      add r2, sp, #0x8c
00363bb8  58 00 8d e2                                      add r0, sp, #0x58
00363bbc  88 10 8d e2                                      add r1, sp, #0x88
00363bc0  0b 80 a0 e1                                      mov r8, fp
00363bc4  84 70 8d e2                                      add r7, sp, #0x84
00363bc8  18 20 8d e5                                      str r2, [sp, #0x18]
00363bcc  20 00 8d e5                                      str r0, [sp, #0x20]
00363bd0  24 10 8d e5                                      str r1, [sp, #0x24]
00363bd4  00 00 59 e3                                      cmp sb, #0
00363bd8  00 60 a0 13                                      movne r6, #0
00363bdc  06 50 a0 11                                      movne r5, r6
00363be0  13 00 00 1a                                      bne #0x363c34
00363be4  5c 00 00 ea                                      b #0x363d5c
00363be8  34 31 94 e5                                      ldr r3, [r4, #0x134]
00363bec  07 00 a0 e1                                      mov r0, r7
00363bf0  08 20 a0 e1                                      mov r2, r8
00363bf4  03 10 a0 e1                                      mov r1, r3
00363bf8  00 30 93 e5                                      ldr r3, [r3]
00363bfc  0f e0 a0 e1                                      mov lr, pc
00363c00  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00363c04  98 31 94 e5                                      ldr r3, [r4, #0x198]
00363c08  84 a0 9d e5                                      ldr sl, [sp, #0x84]
00363c0c  07 00 a0 e1                                      mov r0, r7
00363c10  06 60 93 e7                                      ldr r6, [r3, r6]
00363c14  f3 b3 fe eb                                      bl #0x310be8
00363c18  06 00 5a e1                                      cmp sl, r6
00363c1c  4a 00 00 0a                                      beq #0x363d4c
00363c20  01 50 85 e2                                      add r5, r5, #1
00363c24  09 00 55 e1                                      cmp r5, sb
00363c28  05 60 a0 e1                                      mov r6, r5
00363c2c  51 00 00 0a                                      beq #0x363d78
00363c30  98 a1 94 e5                                      ldr sl, [r4, #0x198]
00363c34  06 31 9a e7                                      ldr r3, [sl, r6, lsl #2]
00363c38  06 61 a0 e1                                      lsl r6, r6, #2
00363c3c  06 a0 8a e0                                      add sl, sl, r6
00363c40  00 00 53 e3                                      cmp r3, #0
00363c44  e7 ff ff 1a                                      bne #0x363be8
00363c48  34 31 94 e5                                      ldr r3, [r4, #0x134]
00363c4c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00363c50  08 20 a0 e1                                      mov r2, r8
00363c54  03 10 a0 e1                                      mov r1, r3
00363c58  00 30 93 e5                                      ldr r3, [r3]
00363c5c  0f e0 a0 e1                                      mov lr, pc
00363c60  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00363c64  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
00363c68  00 00 52 e3                                      cmp r2, #0
00363c6c  58 20 8d e5                                      str r2, [sp, #0x58]
00363c70  00 30 92 15                                      ldrne r3, [r2]
00363c74  01 30 83 12                                      addne r3, r3, #1
00363c78  00 30 82 15                                      strne r3, [r2]
00363c7c  58 20 9d 15                                      ldrne r2, [sp, #0x58]
00363c80  00 30 9a e5                                      ldr r3, [sl]
00363c84  20 00 9d e5                                      ldr r0, [sp, #0x20]
00363c88  58 30 8d e5                                      str r3, [sp, #0x58]
00363c8c  00 20 8a e5                                      str r2, [sl]
00363c90  d4 b3 fe eb                                      bl #0x310be8
00363c94  18 00 9d e5                                      ldr r0, [sp, #0x18]
00363c98  d2 b3 fe eb                                      bl #0x310be8
00363c9c  34 31 94 e5                                      ldr r3, [r4, #0x134]
00363ca0  08 20 a0 e1                                      mov r2, r8
00363ca4  24 00 9d e5                                      ldr r0, [sp, #0x24]
00363ca8  03 10 a0 e1                                      mov r1, r3
00363cac  00 30 93 e5                                      ldr r3, [r3]
00363cb0  a4 a1 94 e5                                      ldr sl, [r4, #0x1a4]
00363cb4  0f e0 a0 e1                                      mov lr, pc
00363cb8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00363cbc  88 20 9d e5                                      ldr r2, [sp, #0x88]
00363cc0  0b a0 8a e0                                      add sl, sl, fp
00363cc4  00 00 52 e3                                      cmp r2, #0
00363cc8  00 30 92 15                                      ldrne r3, [r2]
00363ccc  01 30 83 12                                      addne r3, r3, #1
00363cd0  00 30 82 15                                      strne r3, [r2]
00363cd4  00 30 9a e5                                      ldr r3, [sl]
00363cd8  00 20 8a e5                                      str r2, [sl]
00363cdc  00 00 53 e3                                      cmp r3, #0
00363ce0  0a 00 00 0a                                      beq #0x363d10
00363ce4  00 20 93 e5                                      ldr r2, [r3]
00363ce8  01 20 42 e2                                      sub r2, r2, #1
00363cec  00 00 52 e3                                      cmp r2, #0
00363cf0  00 20 83 e5                                      str r2, [r3]
00363cf4  05 00 00 1a                                      bne #0x363d10
00363cf8  03 00 a0 e1                                      mov r0, r3
00363cfc  0c 30 8d e5                                      str r3, [sp, #0xc]
00363d00  93 ee 09 eb                                      bl #0x5df754
00363d04  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00363d08  03 00 a0 e1                                      mov r0, r3
00363d0c  cb b1 fe eb                                      bl #0x310440
00363d10  88 a0 9d e5                                      ldr sl, [sp, #0x88]
00363d14  00 00 5a e3                                      cmp sl, #0
00363d18  08 00 00 0a                                      beq #0x363d40
00363d1c  00 30 9a e5                                      ldr r3, [sl]
00363d20  01 30 43 e2                                      sub r3, r3, #1
00363d24  00 00 53 e3                                      cmp r3, #0
00363d28  00 30 8a e5                                      str r3, [sl]
00363d2c  03 00 00 1a                                      bne #0x363d40
00363d30  0a 00 a0 e1                                      mov r0, sl
00363d34  86 ee 09 eb                                      bl #0x5df754
00363d38  0a 00 a0 e1                                      mov r0, sl
00363d3c  bf b1 fe eb                                      bl #0x310440
00363d40  80 31 94 e5                                      ldr r3, [r4, #0x180]
00363d44  0b 50 83 e7                                      str r5, [r3, fp]
00363d48  a6 ff ff ea                                      b #0x363be8
00363d4c  80 31 94 e5                                      ldr r3, [r4, #0x180]
00363d50  0b 50 83 e7                                      str r5, [r3, fp]
00363d54  98 31 94 e5                                      ldr r3, [r4, #0x198]
00363d58  03 a0 a0 e1                                      mov sl, r3
00363d5c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00363d60  01 80 88 e2                                      add r8, r8, #1
00363d64  04 b0 8b e2                                      add fp, fp, #4
00363d68  01 00 58 e1                                      cmp r8, r1
00363d6c  08 00 00 0a                                      beq #0x363d94
00363d70  03 a0 a0 e1                                      mov sl, r3
00363d74  96 ff ff ea                                      b #0x363bd4
00363d78  14 10 9d e5                                      ldr r1, [sp, #0x14]
00363d7c  98 31 94 e5                                      ldr r3, [r4, #0x198]
00363d80  01 80 88 e2                                      add r8, r8, #1
00363d84  01 00 58 e1                                      cmp r8, r1
00363d88  03 a0 a0 e1                                      mov sl, r3
00363d8c  04 b0 8b e2                                      add fp, fp, #4
00363d90  f6 ff ff 1a                                      bne #0x363d70
00363d94  00 10 93 e5                                      ldr r1, [r3]
00363d98  00 00 51 e3                                      cmp r1, #0
00363d9c  d9 00 00 0a                                      beq #0x364108
00363da0  00 10 a0 e3                                      mov r1, #0
00363da4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00363da8  02 00 00 ea                                      b #0x363db8
00363dac  01 21 93 e7                                      ldr r2, [r3, r1, lsl #2]
00363db0  00 00 52 e3                                      cmp r2, #0
00363db4  d3 00 00 0a                                      beq #0x364108
00363db8  01 10 81 e2                                      add r1, r1, #1
00363dbc  00 00 51 e1                                      cmp r1, r0
00363dc0  f9 ff ff 1a                                      bne #0x363dac
00363dc4  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00363dc8  b0 60 8d e2                                      add r6, sp, #0xb0
00363dcc  00 70 a0 e3                                      mov r7, #0
00363dd0  01 10 6a e0                                      rsb r1, sl, r1
00363dd4  34 70 26 e5                                      str r7, [r6, #-0x34]!
00363dd8  41 51 a0 e1                                      asr r5, r1, #2
00363ddc  06 20 a0 e1                                      mov r2, r6
00363de0  05 10 a0 e1                                      mov r1, r5
00363de4  44 00 9d e5                                      ldr r0, [sp, #0x44]
00363de8  ab ef ff eb                                      bl #0x35fc9c
00363dec  06 00 a0 e1                                      mov r0, r6
00363df0  7c b3 fe eb                                      bl #0x310be8
00363df4  b0 20 8d e2                                      add r2, sp, #0xb0
00363df8  38 70 22 e5                                      str r7, [r2, #-0x38]!
00363dfc  40 00 9d e5                                      ldr r0, [sp, #0x40]
00363e00  05 10 a0 e1                                      mov r1, r5
00363e04  0f f5 ff eb                                      bl #0x361248
00363e08  78 60 9d e5                                      ldr r6, [sp, #0x78]
00363e0c  07 00 56 e1                                      cmp r6, r7
00363e10  04 00 00 0a                                      beq #0x363e28
00363e14  00 30 96 e5                                      ldr r3, [r6]
00363e18  01 30 43 e2                                      sub r3, r3, #1
00363e1c  07 00 53 e1                                      cmp r3, r7
00363e20  00 30 86 e5                                      str r3, [r6]
00363e24  c2 00 00 0a                                      beq #0x364134
00363e28  b0 20 8d e2                                      add r2, sp, #0xb0
00363e2c  00 a0 a0 e3                                      mov sl, #0
00363e30  3c a0 22 e5                                      str sl, [r2, #-0x3c]!
00363e34  63 0f 84 e2                                      add r0, r4, #0x18c
00363e38  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00363e3c  29 f0 ff eb                                      bl #0x35fee8
00363e40  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00363e44  0a 00 52 e1                                      cmp r2, sl
00363e48  28 00 00 0a                                      beq #0x363ef0
00363e4c  34 b0 9d e5                                      ldr fp, [sp, #0x34]
00363e50  70 80 8d e2                                      add r8, sp, #0x70
00363e54  24 30 9b e5                                      ldr r3, [fp, #0x24]
00363e58  8a 31 83 e0                                      add r3, r3, sl, lsl #3
00363e5c  04 70 93 e5                                      ldr r7, [r3, #4]
00363e60  00 00 57 e3                                      cmp r7, #0
00363e64  1d 00 00 0a                                      beq #0x363ee0
00363e68  04 30 97 e5                                      ldr r3, [r7, #4]
00363e6c  00 00 55 e3                                      cmp r5, #0
00363e70  01 30 83 e2                                      add r3, r3, #1
00363e74  04 30 87 e5                                      str r3, [r7, #4]
00363e78  16 00 00 0a                                      beq #0x363ed8
00363e7c  0a 91 a0 e1                                      lsl sb, sl, #2
00363e80  00 60 a0 e3                                      mov r6, #0
00363e84  08 00 a0 e1                                      mov r0, r8
00363e88  07 10 a0 e1                                      mov r1, r7
00363e8c  00 20 a0 e3                                      mov r2, #0
00363e90  00 30 97 e5                                      ldr r3, [r7]
00363e94  0f e0 a0 e1                                      mov lr, pc
00363e98  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00363e9c  98 31 94 e5                                      ldr r3, [r4, #0x198]
00363ea0  70 20 9d e5                                      ldr r2, [sp, #0x70]
00363ea4  08 00 a0 e1                                      mov r0, r8
00363ea8  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
00363eac  10 20 8d e5                                      str r2, [sp, #0x10]
00363eb0  0c 30 8d e5                                      str r3, [sp, #0xc]
00363eb4  4b b3 fe eb                                      bl #0x310be8
00363eb8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00363ebc  10 20 9d e5                                      ldr r2, [sp, #0x10]
00363ec0  03 00 52 e1                                      cmp r2, r3
00363ec4  8c 31 94 05                                      ldreq r3, [r4, #0x18c]
00363ec8  09 60 83 07                                      streq r6, [r3, sb]
00363ecc  01 60 86 e2                                      add r6, r6, #1
00363ed0  05 00 56 e1                                      cmp r6, r5
00363ed4  ea ff ff 1a                                      bne #0x363e84
00363ed8  07 00 a0 e1                                      mov r0, r7
00363edc  a8 e5 fe eb                                      bl #0x31d584
00363ee0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00363ee4  01 a0 8a e2                                      add sl, sl, #1
00363ee8  03 00 5a e1                                      cmp sl, r3
00363eec  d8 ff ff 1a                                      bne #0x363e54
00363ef0  00 00 55 e3                                      cmp r5, #0
00363ef4  7d 00 00 0a                                      beq #0x3640f0
00363ef8  70 32 9f e5                                      ldr r3, [pc, #0x270]
00363efc  00 60 a0 e3                                      mov r6, #0
00363f00  5c 00 8d e2                                      add r0, sp, #0x5c
00363f04  03 30 8f e0                                      add r3, pc, r3
00363f08  54 10 8d e2                                      add r1, sp, #0x54
00363f0c  64 20 8d e2                                      add r2, sp, #0x64
00363f10  14 00 8d e5                                      str r0, [sp, #0x14]
00363f14  1c 30 8d e5                                      str r3, [sp, #0x1c]
00363f18  06 80 a0 e1                                      mov r8, r6
00363f1c  6c b0 8d e2                                      add fp, sp, #0x6c
00363f20  20 10 8d e5                                      str r1, [sp, #0x20]
00363f24  68 a0 8d e2                                      add sl, sp, #0x68
00363f28  01 90 a0 e3                                      mov sb, #1
00363f2c  24 20 8d e5                                      str r2, [sp, #0x24]
00363f30  18 50 8d e5                                      str r5, [sp, #0x18]
00363f34  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00363f38  5c 80 8d e5                                      str r8, [sp, #0x5c]
00363f3c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00363f40  06 21 93 e7                                      ldr r2, [r3, r6, lsl #2]
00363f44  06 51 a0 e1                                      lsl r5, r6, #2
00363f48  5c 20 8d e5                                      str r2, [sp, #0x5c]
00363f4c  06 81 83 e7                                      str r8, [r3, r6, lsl #2]
00363f50  24 b3 fe eb                                      bl #0x310be8
00363f54  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
00363f58  06 71 93 e7                                      ldr r7, [r3, r6, lsl #2]
00363f5c  06 81 83 e7                                      str r8, [r3, r6, lsl #2]
00363f60  00 00 57 e3                                      cmp r7, #0
00363f64  08 00 00 0a                                      beq #0x363f8c
00363f68  00 30 97 e5                                      ldr r3, [r7]
00363f6c  01 30 43 e2                                      sub r3, r3, #1
00363f70  00 00 53 e3                                      cmp r3, #0
00363f74  00 30 87 e5                                      str r3, [r7]
00363f78  03 00 00 1a                                      bne #0x363f8c
00363f7c  07 00 a0 e1                                      mov r0, r7
00363f80  f3 ed 09 eb                                      bl #0x5df754
00363f84  07 00 a0 e1                                      mov r0, r7
00363f88  2c b1 fe eb                                      bl #0x310440
00363f8c  98 31 94 e5                                      ldr r3, [r4, #0x198]
00363f90  05 30 93 e7                                      ldr r3, [r3, r5]
00363f94  00 00 53 e3                                      cmp r3, #0
00363f98  50 00 00 0a                                      beq #0x3640e0
00363f9c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00363fa0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00363fa4  0b 00 a0 e1                                      mov r0, fp
00363fa8  00 30 a0 e3                                      mov r3, #0
00363fac  b0 71 94 e5                                      ldr r7, [r4, #0x1b0]
00363fb0  3a a0 09 eb                                      bl #0x5cc0a0
00363fb4  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
00363fb8  54 30 8d e5                                      str r3, [sp, #0x54]
00363fbc  00 00 53 e3                                      cmp r3, #0
00363fc0  00 20 93 15                                      ldrne r2, [r3]
00363fc4  01 20 82 12                                      addne r2, r2, #1
00363fc8  00 20 83 15                                      strne r2, [r3]
00363fcc  54 30 9d 15                                      ldrne r3, [sp, #0x54]
00363fd0  05 20 97 e7                                      ldr r2, [r7, r5]
00363fd4  20 00 9d e5                                      ldr r0, [sp, #0x20]
00363fd8  54 20 8d e5                                      str r2, [sp, #0x54]
00363fdc  05 30 87 e7                                      str r3, [r7, r5]
00363fe0  00 b3 fe eb                                      bl #0x310be8
00363fe4  0b 00 a0 e1                                      mov r0, fp
00363fe8  fe b2 fe eb                                      bl #0x310be8
00363fec  28 10 9d e5                                      ldr r1, [sp, #0x28]
00363ff0  30 00 9d e5                                      ldr r0, [sp, #0x30]
00363ff4  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
00363ff8  00 20 91 e7                                      ldr r2, [r1, r0]
00363ffc  05 30 93 e7                                      ldr r3, [r3, r5]
00364000  0a 10 a0 e1                                      mov r1, sl
00364004  10 20 92 e5                                      ldr r2, [r2, #0x10]
00364008  00 00 53 e3                                      cmp r3, #0
0036400c  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
00364010  68 30 8d e5                                      str r3, [sp, #0x68]
00364014  00 20 93 15                                      ldrne r2, [r3]
00364018  01 20 82 12                                      addne r2, r2, #1
0036401c  00 20 83 15                                      strne r2, [r3]
00364020  09 30 a0 e1                                      mov r3, sb
00364024  09 20 a0 e1                                      mov r2, sb
00364028  00 90 8d e5                                      str sb, [sp]
0036402c  b4 c5 ff eb                                      bl #0x355704
00364030  0a 00 a0 e1                                      mov r0, sl
00364034  eb b2 fe eb                                      bl #0x310be8
00364038  a4 31 94 e5                                      ldr r3, [r4, #0x1a4]
0036403c  05 30 93 e7                                      ldr r3, [r3, r5]
00364040  00 00 53 e3                                      cmp r3, #0
00364044  25 00 00 0a                                      beq #0x3640e0
00364048  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
0036404c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00364050  bc 71 94 e5                                      ldr r7, [r4, #0x1bc]
00364054  05 10 93 e7                                      ldr r1, [r3, r5]
00364058  04 10 81 e2                                      add r1, r1, #4
0036405c  b6 ec 09 eb                                      bl #0x5df33c
00364060  64 20 9d e5                                      ldr r2, [sp, #0x64]
00364064  00 00 52 e3                                      cmp r2, #0
00364068  00 30 92 15                                      ldrne r3, [r2]
0036406c  01 30 83 12                                      addne r3, r3, #1
00364070  00 30 82 15                                      strne r3, [r2]
00364074  05 30 97 e7                                      ldr r3, [r7, r5]
00364078  05 20 87 e7                                      str r2, [r7, r5]
0036407c  00 00 53 e3                                      cmp r3, #0
00364080  0a 00 00 0a                                      beq #0x3640b0
00364084  00 20 93 e5                                      ldr r2, [r3]
00364088  01 20 42 e2                                      sub r2, r2, #1
0036408c  00 00 52 e3                                      cmp r2, #0
00364090  00 20 83 e5                                      str r2, [r3]
00364094  05 00 00 1a                                      bne #0x3640b0
00364098  03 00 a0 e1                                      mov r0, r3
0036409c  0c 30 8d e5                                      str r3, [sp, #0xc]
003640a0  ab ed 09 eb                                      bl #0x5df754
003640a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003640a8  03 00 a0 e1                                      mov r0, r3
003640ac  e3 b0 fe eb                                      bl #0x310440
003640b0  64 50 9d e5                                      ldr r5, [sp, #0x64]
003640b4  00 00 55 e3                                      cmp r5, #0
003640b8  08 00 00 0a                                      beq #0x3640e0
003640bc  00 30 95 e5                                      ldr r3, [r5]
003640c0  01 30 43 e2                                      sub r3, r3, #1
003640c4  00 00 53 e3                                      cmp r3, #0
003640c8  00 30 85 e5                                      str r3, [r5]
003640cc  03 00 00 1a                                      bne #0x3640e0
003640d0  05 00 a0 e1                                      mov r0, r5
003640d4  9e ed 09 eb                                      bl #0x5df754
003640d8  05 00 a0 e1                                      mov r0, r5
003640dc  d7 b0 fe eb                                      bl #0x310440
003640e0  18 20 9d e5                                      ldr r2, [sp, #0x18]
003640e4  01 60 86 e2                                      add r6, r6, #1
003640e8  02 00 56 e1                                      cmp r6, r2
003640ec  90 ff ff 1a                                      bne #0x363f34
003640f0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
003640f4  6f b8 ff eb                                      bl #0x3522b8
003640f8  38 00 9d e5                                      ldr r0, [sp, #0x38]
003640fc  dc d4 0a eb                                      bl #0x619474
00364100  b4 d0 8d e2                                      add sp, sp, #0xb4
00364104  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00364108  b0 50 8d e2                                      add r5, sp, #0xb0
0036410c  00 30 a0 e3                                      mov r3, #0
00364110  30 30 25 e5                                      str r3, [r5, #-0x30]!
00364114  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00364118  05 20 a0 e1                                      mov r2, r5
0036411c  de ee ff eb                                      bl #0x35fc9c
00364120  05 00 a0 e1                                      mov r0, r5
00364124  af b2 fe eb                                      bl #0x310be8
00364128  98 a1 94 e5                                      ldr sl, [r4, #0x198]
0036412c  9c 11 94 e5                                      ldr r1, [r4, #0x19c]
00364130  24 ff ff ea                                      b #0x363dc8
00364134  06 00 a0 e1                                      mov r0, r6
00364138  85 ed 09 eb                                      bl #0x5df754
0036413c  06 00 a0 e1                                      mov r0, r6
00364140  be b0 fe eb                                      bl #0x310440
00364144  37 ff ff ea                                      b #0x363e28
00364148  05 00 a0 e1                                      mov r0, r5
0036414c  80 ed 09 eb                                      bl #0x5df754
00364150  05 00 a0 e1                                      mov r0, r5
00364154  b9 b0 fe eb                                      bl #0x310440
00364158  65 fe ff ea                                      b #0x363af4
; mapping-symbol data/literal pool
0036415c  18 11 63 00 f4 37 00 00 58 d3 55 00 10 47 00 00  .byte 0x18, 0x11, 0x63, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x58, 0xd3, 0x55, 0x00, 0x10, 0x47, 0x00, 0x00
0036416c  3c d3 55 00 a4 ce 55 00                          .byte 0x3c, 0xd3, 0x55, 0x00, 0xa4, 0xce, 0x55, 0x00

; FUNCTION 0x00364174, declared_size=224, range_size=224, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNodeC1EN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPKNS2_5scene10ISceneNodeE
; demangled: XrayModularSkinnedMeshSceneNode::XrayModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>, glitch::scene::ISceneNode const*)
; decoder-mode: arm
00364174  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00364178  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
0036417c  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00364180  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
00364184  05 50 8f e0                                      add r5, pc, r5
00364188  03 30 95 e7                                      ldr r3, [r5, r3]
0036418c  0c c0 95 e7                                      ldr ip, [r5, ip]
00364190  01 60 a0 e3                                      mov r6, #1
00364194  54 e0 93 e5                                      ldr lr, [r3, #0x54]
00364198  08 c0 8c e2                                      add ip, ip, #8
0036419c  d0 61 80 e5                                      str r6, [r0, #0x1d0]
003641a0  cc c1 80 e5                                      str ip, [r0, #0x1cc]
003641a4  00 e0 80 e5                                      str lr, [r0]
003641a8  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
003641ac  58 70 93 e5                                      ldr r7, [r3, #0x58]
003641b0  01 c0 a0 e1                                      mov ip, r1
003641b4  02 60 a0 e1                                      mov r6, r2
003641b8  0e 70 80 e7                                      str r7, [r0, lr]
003641bc  0c 20 a0 e1                                      mov r2, ip
003641c0  04 10 83 e2                                      add r1, r3, #4
003641c4  00 40 a0 e1                                      mov r4, r0
003641c8  23 db ff eb                                      bl #0x35ae5c
003641cc  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
003641d0  00 30 a0 e3                                      mov r3, #0
003641d4  04 00 a0 e1                                      mov r0, r4
003641d8  02 20 95 e7                                      ldr r2, [r5, r2]
003641dc  c4 31 84 e5                                      str r3, [r4, #0x1c4]
003641e0  c8 61 84 e5                                      str r6, [r4, #0x1c8]
003641e4  4a 1f 82 e2                                      add r1, r2, #0x128
003641e8  1c 20 82 e2                                      add r2, r2, #0x1c
003641ec  80 31 84 e5                                      str r3, [r4, #0x180]
003641f0  00 20 84 e5                                      str r2, [r4]
003641f4  cc 11 84 e5                                      str r1, [r4, #0x1cc]
003641f8  84 31 84 e5                                      str r3, [r4, #0x184]
003641fc  88 31 84 e5                                      str r3, [r4, #0x188]
00364200  8c 31 84 e5                                      str r3, [r4, #0x18c]
00364204  90 31 84 e5                                      str r3, [r4, #0x190]
00364208  94 31 84 e5                                      str r3, [r4, #0x194]
0036420c  98 31 84 e5                                      str r3, [r4, #0x198]
00364210  9c 31 84 e5                                      str r3, [r4, #0x19c]
00364214  a0 31 84 e5                                      str r3, [r4, #0x1a0]
00364218  a4 31 84 e5                                      str r3, [r4, #0x1a4]
0036421c  a8 31 84 e5                                      str r3, [r4, #0x1a8]
00364220  ac 31 84 e5                                      str r3, [r4, #0x1ac]
00364224  b0 31 84 e5                                      str r3, [r4, #0x1b0]
00364228  b4 31 84 e5                                      str r3, [r4, #0x1b4]
0036422c  b8 31 84 e5                                      str r3, [r4, #0x1b8]
00364230  bc 31 84 e5                                      str r3, [r4, #0x1bc]
00364234  c0 31 84 e5                                      str r3, [r4, #0x1c0]
00364238  c6 fd ff eb                                      bl #0x363958
0036423c  04 00 a0 e1                                      mov r0, r4
00364240  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00364244  0c 09 63 00 e8 4a 00 00 44 2b 00 00 ac 1c 00 00  .byte 0x0c, 0x09, 0x63, 0x00, 0xe8, 0x4a, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xac, 0x1c, 0x00, 0x00

; FUNCTION 0x00364254, declared_size=156, range_size=156, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZN31XrayModularSkinnedMeshSceneNodeC2EN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPKNS2_5scene10ISceneNodeE
; demangled: XrayModularSkinnedMeshSceneNode::XrayModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>, glitch::scene::ISceneNode const*)
; decoder-mode: arm
00364254  70 40 2d e9                                      push {r4, r5, r6, lr}
00364258  01 40 a0 e1                                      mov r4, r1
0036425c  04 10 81 e2                                      add r1, r1, #4
00364260  00 50 a0 e1                                      mov r5, r0
00364264  03 60 a0 e1                                      mov r6, r3
00364268  fb da ff eb                                      bl #0x35ae5c
0036426c  00 20 94 e5                                      ldr r2, [r4]
00364270  00 30 a0 e3                                      mov r3, #0
00364274  05 00 a0 e1                                      mov r0, r5
00364278  00 20 85 e5                                      str r2, [r5]
0036427c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00364280  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00364284  02 10 85 e7                                      str r1, [r5, r2]
00364288  00 20 95 e5                                      ldr r2, [r5]
0036428c  50 10 94 e5                                      ldr r1, [r4, #0x50]
00364290  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00364294  02 10 85 e7                                      str r1, [r5, r2]
00364298  c4 31 85 e5                                      str r3, [r5, #0x1c4]
0036429c  c8 61 85 e5                                      str r6, [r5, #0x1c8]
003642a0  80 31 85 e5                                      str r3, [r5, #0x180]
003642a4  84 31 85 e5                                      str r3, [r5, #0x184]
003642a8  88 31 85 e5                                      str r3, [r5, #0x188]
003642ac  8c 31 85 e5                                      str r3, [r5, #0x18c]
003642b0  90 31 85 e5                                      str r3, [r5, #0x190]
003642b4  94 31 85 e5                                      str r3, [r5, #0x194]
003642b8  98 31 85 e5                                      str r3, [r5, #0x198]
003642bc  9c 31 85 e5                                      str r3, [r5, #0x19c]
003642c0  a0 31 85 e5                                      str r3, [r5, #0x1a0]
003642c4  a4 31 85 e5                                      str r3, [r5, #0x1a4]
003642c8  a8 31 85 e5                                      str r3, [r5, #0x1a8]
003642cc  ac 31 85 e5                                      str r3, [r5, #0x1ac]
003642d0  b0 31 85 e5                                      str r3, [r5, #0x1b0]
003642d4  b4 31 85 e5                                      str r3, [r5, #0x1b4]
003642d8  b8 31 85 e5                                      str r3, [r5, #0x1b8]
003642dc  bc 31 85 e5                                      str r3, [r5, #0x1bc]
003642e0  c0 31 85 e5                                      str r3, [r5, #0x1c0]
003642e4  9b fd ff eb                                      bl #0x363958
003642e8  05 00 a0 e1                                      mov r0, r5
003642ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003642f0, declared_size=16, range_size=16, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZTv0_n24_N31XrayModularSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode()
; decoder-mode: arm
003642f0  00 30 90 e5                                      ldr r3, [r0]
003642f4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
003642f8  03 00 80 e0                                      add r0, r0, r3
003642fc  8e fd ff ea                                      b #0x36393c

; FUNCTION 0x00364300, declared_size=16, range_size=16, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZTv0_n12_N31XrayModularSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode()
; decoder-mode: arm
00364300  00 30 90 e5                                      ldr r3, [r0]
00364304  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00364308  03 00 80 e0                                      add r0, r0, r3
0036430c  8a fd ff ea                                      b #0x36393c

; FUNCTION 0x00364310, declared_size=16, range_size=16, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZTv0_n24_N31XrayModularSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode()
; decoder-mode: arm
00364310  00 30 90 e5                                      ldr r3, [r0]
00364314  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00364318  03 00 80 e0                                      add r0, r0, r3
0036431c  49 fd ff ea                                      b #0x363848

; FUNCTION 0x00364320, declared_size=16, range_size=16, mode=arm
; class-group: XrayModularSkinnedMeshSceneNode
; alias: _ZTv0_n12_N31XrayModularSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode()
; decoder-mode: arm
00364320  00 30 90 e5                                      ldr r3, [r0]
00364324  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00364328  03 00 80 e0                                      add r0, r0, r3
0036432c  45 fd ff ea                                      b #0x363848
