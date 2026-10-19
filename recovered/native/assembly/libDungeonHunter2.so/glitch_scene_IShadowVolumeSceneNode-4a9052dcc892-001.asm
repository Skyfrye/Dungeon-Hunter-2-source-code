; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00599a24, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZN6glitch5scene22IShadowVolumeSceneNode16unSetupMaterialsEv
; demangled: glitch::scene::IShadowVolumeSceneNode::unSetupMaterials()
; decoder-mode: arm
00599a24  48 30 9f e5                                      ldr r3, [pc, #0x48]
00599a28  48 20 9f e5                                      ldr r2, [pc, #0x48]
00599a2c  04 e0 2d e5                                      str lr, [sp, #-4]!
00599a30  03 30 8f e0                                      add r3, pc, r3
00599a34  02 10 93 e7                                      ldr r1, [r3, r2]
00599a38  0c d0 4d e2                                      sub sp, sp, #0xc
00599a3c  00 20 91 e5                                      ldr r2, [r1]
00599a40  01 20 42 e2                                      sub r2, r2, #1
00599a44  00 00 52 e3                                      cmp r2, #0
00599a48  00 20 81 e5                                      str r2, [r1]
00599a4c  06 00 00 1a                                      bne #0x599a6c
00599a50  24 10 9f e5                                      ldr r1, [pc, #0x24]
00599a54  08 00 8d e2                                      add r0, sp, #8
00599a58  01 30 93 e7                                      ldr r3, [r3, r1]
00599a5c  00 10 93 e5                                      ldr r1, [r3]
00599a60  00 20 83 e5                                      str r2, [r3]
00599a64  04 10 20 e5                                      str r1, [r0, #-4]!
00599a68  5e dc f5 eb                                      bl #0x310be8
00599a6c  0c d0 8d e2                                      add sp, sp, #0xc
00599a70  00 80 bd e8                                      ldm sp!, {pc}
; mapping-symbol data/literal pool
00599a74  60 b0 3f 00 14 2a 00 00 04 24 00 00              .byte 0x60, 0xb0, 0x3f, 0x00, 0x14, 0x2a, 0x00, 0x00, 0x04, 0x24, 0x00, 0x00

; FUNCTION 0x00599a80, declared_size=552, range_size=552, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZN6glitch5scene22IShadowVolumeSceneNode14setupMaterialsEPNS_5video12IVideoDriverE
; demangled: glitch::scene::IShadowVolumeSceneNode::setupMaterials(glitch::video::IVideoDriver*)
; decoder-mode: arm
00599a80  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00599a84  e4 41 9f e5                                      ldr r4, [pc, #0x1e4]
00599a88  e4 61 9f e5                                      ldr r6, [pc, #0x1e4]
00599a8c  24 d0 4d e2                                      sub sp, sp, #0x24
00599a90  04 40 8f e0                                      add r4, pc, r4
00599a94  06 30 94 e7                                      ldr r3, [r4, r6]
00599a98  01 70 a0 e1                                      mov r7, r1
00599a9c  00 50 93 e5                                      ldr r5, [r3]
00599aa0  00 00 55 e3                                      cmp r5, #0
00599aa4  06 00 00 0a                                      beq #0x599ac4
00599aa8  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
00599aac  03 30 94 e7                                      ldr r3, [r4, r3]
00599ab0  00 20 93 e5                                      ldr r2, [r3]
00599ab4  01 20 82 e2                                      add r2, r2, #1
00599ab8  00 20 83 e5                                      str r2, [r3]
00599abc  24 d0 8d e2                                      add sp, sp, #0x24
00599ac0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00599ac4  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
00599ac8  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
00599acc  0c a0 8d e2                                      add sl, sp, #0xc
00599ad0  03 20 94 e7                                      ldr r2, [r4, r3]
00599ad4  01 10 8f e0                                      add r1, pc, r1
00599ad8  0a 00 a0 e1                                      mov r0, sl
00599adc  de d5 01 eb                                      bl #0x60f25c
00599ae0  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
00599ae4  1c 80 8d e2                                      add r8, sp, #0x1c
00599ae8  08 00 a0 e1                                      mov r0, r8
00599aec  03 30 8f e0                                      add r3, pc, r3
00599af0  0a 10 a0 e1                                      mov r1, sl
00599af4  07 20 a0 e1                                      mov r2, r7
00599af8  00 50 8d e5                                      str r5, [sp]
00599afc  82 05 02 eb                                      bl #0x61b10c
00599b00  05 20 a0 e1                                      mov r2, r5
00599b04  18 50 8d e2                                      add r5, sp, #0x18
00599b08  02 30 a0 e1                                      mov r3, r2
00599b0c  05 00 a0 e1                                      mov r0, r5
00599b10  08 10 a0 e1                                      mov r1, r8
00599b14  61 c9 00 eb                                      bl #0x5cc0a0
00599b18  18 30 9d e5                                      ldr r3, [sp, #0x18]
00599b1c  20 00 8d e2                                      add r0, sp, #0x20
00599b20  00 00 53 e3                                      cmp r3, #0
00599b24  14 30 8d e5                                      str r3, [sp, #0x14]
00599b28  00 20 93 15                                      ldrne r2, [r3]
00599b2c  01 20 82 12                                      addne r2, r2, #1
00599b30  00 20 83 15                                      strne r2, [r3]
00599b34  06 20 94 e7                                      ldr r2, [r4, r6]
00599b38  14 30 9d 15                                      ldrne r3, [sp, #0x14]
00599b3c  00 10 92 e5                                      ldr r1, [r2]
00599b40  00 30 82 e5                                      str r3, [r2]
00599b44  0c 10 20 e5                                      str r1, [r0, #-0xc]!
00599b48  26 dc f5 eb                                      bl #0x310be8
00599b4c  05 00 a0 e1                                      mov r0, r5
00599b50  24 dc f5 eb                                      bl #0x310be8
00599b54  35 31 d7 e5                                      ldrb r3, [r7, #0x135]
00599b58  08 00 53 e3                                      cmp r3, #8
00599b5c  1f 00 00 0a                                      beq #0x599be0
00599b60  00 00 53 e3                                      cmp r3, #0
00599b64  1d 00 00 0a                                      beq #0x599be0
00599b68  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00599b6c  10 20 d0 e5                                      ldrb r2, [r0, #0x10]
00599b70  00 00 52 e3                                      cmp r2, #0
00599b74  1a 00 00 0a                                      beq #0x599be4
00599b78  01 c0 43 e2                                      sub ip, r3, #1
00599b7c  01 60 a0 e3                                      mov r6, #1
00599b80  16 cc a0 e1                                      lsl ip, r6, ip
00599b84  01 c0 4c e2                                      sub ip, ip, #1
00599b88  01 20 42 e2                                      sub r2, r2, #1
00599b8c  7c c0 ef e6                                      uxtb ip, ip
00599b90  72 20 ef e6                                      uxtb r2, r2
00599b94  0c 50 a0 e3                                      mov r5, #0xc
00599b98  92 55 25 e0                                      mla r5, r2, r5, r5
00599b9c  0c e4 a0 e1                                      lsl lr, ip, #8
00599ba0  00 30 a0 e3                                      mov r3, #0
00599ba4  00 00 00 ea                                      b #0x599bac
00599ba8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00599bac  18 20 90 e5                                      ldr r2, [r0, #0x18]
00599bb0  03 20 82 e0                                      add r2, r2, r3
00599bb4  08 20 92 e5                                      ldr r2, [r2, #8]
00599bb8  0c 30 83 e2                                      add r3, r3, #0xc
00599bbc  00 10 92 e5                                      ldr r1, [r2]
00599bc0  51 04 e7 e7                                      ubfx r0, r1, #8, #8
00599bc4  00 00 5c e1                                      cmp ip, r0
00599bc8  ff 1c c1 e3                                      bic r1, r1, #0xff00
00599bcc  01 10 8e e1                                      orr r1, lr, r1
00599bd0  30 60 c2 15                                      strbne r6, [r2, #0x30]
00599bd4  05 00 53 e1                                      cmp r3, r5
00599bd8  00 10 82 e5                                      str r1, [r2]
00599bdc  f1 ff ff 1a                                      bne #0x599ba8
00599be0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00599be4  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00599be8  01 10 8f e0                                      add r1, pc, r1
00599bec  c8 ea 00 eb                                      bl #0x5d4714
00599bf0  94 30 9f e5                                      ldr r3, [pc, #0x94]
00599bf4  94 10 9f e5                                      ldr r1, [pc, #0x94]
00599bf8  03 50 94 e7                                      ldr r5, [r4, r3]
00599bfc  01 10 8f e0                                      add r1, pc, r1
00599c00  00 00 c5 e5                                      strb r0, [r5]
00599c04  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00599c08  c1 ea 00 eb                                      bl #0x5d4714
00599c0c  80 10 9f e5                                      ldr r1, [pc, #0x80]
00599c10  01 00 c5 e5                                      strb r0, [r5, #1]
00599c14  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00599c18  01 10 8f e0                                      add r1, pc, r1
00599c1c  bc ea 00 eb                                      bl #0x5d4714
00599c20  70 30 9f e5                                      ldr r3, [pc, #0x70]
00599c24  70 10 9f e5                                      ldr r1, [pc, #0x70]
00599c28  03 50 94 e7                                      ldr r5, [r4, r3]
00599c2c  01 10 8f e0                                      add r1, pc, r1
00599c30  00 00 c5 e5                                      strb r0, [r5]
00599c34  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00599c38  b5 ea 00 eb                                      bl #0x5d4714
00599c3c  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00599c40  01 00 c5 e5                                      strb r0, [r5, #1]
00599c44  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00599c48  01 10 8f e0                                      add r1, pc, r1
00599c4c  b0 ea 00 eb                                      bl #0x5d4714
00599c50  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00599c54  03 30 94 e7                                      ldr r3, [r4, r3]
00599c58  00 00 c3 e5                                      strb r0, [r3]
00599c5c  08 00 a0 e1                                      mov r0, r8
00599c60  94 e1 f6 eb                                      bl #0x3522b8
00599c64  0a 00 a0 e1                                      mov r0, sl
00599c68  01 fe 01 eb                                      bl #0x619474
00599c6c  8d ff ff ea                                      b #0x599aa8
; mapping-symbol data/literal pool
00599c70  00 b0 3f 00 04 24 00 00 14 2a 00 00 10 47 00 00  .byte 0x00, 0xb0, 0x3f, 0x00, 0x04, 0x24, 0x00, 0x00, 0x14, 0x2a, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00
00599c80  14 5c 34 00 14 5c 34 00 28 5b 34 00 d8 3d 00 00  .byte 0x14, 0x5c, 0x34, 0x00, 0x14, 0x5c, 0x34, 0x00, 0x28, 0x5b, 0x34, 0x00, 0xd8, 0x3d, 0x00, 0x00
00599c90  2c 5b 34 00 28 5b 34 00 6c 09 00 00 2c 5b 34 00  .byte 0x2c, 0x5b, 0x34, 0x00, 0x28, 0x5b, 0x34, 0x00, 0x6c, 0x09, 0x00, 0x00, 0x2c, 0x5b, 0x34, 0x00
00599ca0  28 5b 34 00 4c 16 00 00                          .byte 0x28, 0x5b, 0x34, 0x00, 0x4c, 0x16, 0x00, 0x00

; FUNCTION 0x00599ca8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZN6glitch5scene22IShadowVolumeSceneNodeD1Ev
; demangled: glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode()
; decoder-mode: arm
00599ca8  38 30 9f e5                                      ldr r3, [pc, #0x38]
00599cac  38 20 9f e5                                      ldr r2, [pc, #0x38]
00599cb0  38 10 9f e5                                      ldr r1, [pc, #0x38]
00599cb4  03 30 8f e0                                      add r3, pc, r3
00599cb8  02 20 93 e7                                      ldr r2, [r3, r2]
00599cbc  01 10 93 e7                                      ldr r1, [r3, r1]
00599cc0  10 40 2d e9                                      push {r4, lr}
00599cc4  13 ce 82 e2                                      add ip, r2, #0x130
00599cc8  1c 20 82 e2                                      add r2, r2, #0x1c
00599ccc  00 40 a0 e1                                      mov r4, r0
00599cd0  00 20 80 e5                                      str r2, [r0]
00599cd4  34 c1 80 e5                                      str ip, [r0, #0x134]
00599cd8  04 10 81 e2                                      add r1, r1, #4
00599cdc  f6 fb ff eb                                      bl #0x598cbc
00599ce0  04 00 a0 e1                                      mov r0, r4
00599ce4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00599ce8  dc ad 3f 00 5c 1b 00 00 20 09 00 00              .byte 0xdc, 0xad, 0x3f, 0x00, 0x5c, 0x1b, 0x00, 0x00, 0x20, 0x09, 0x00, 0x00

; FUNCTION 0x00599cf4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZN6glitch5scene22IShadowVolumeSceneNodeD0Ev
; demangled: glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode()
; decoder-mode: arm
00599cf4  10 40 2d e9                                      push {r4, lr}
00599cf8  00 40 a0 e1                                      mov r4, r0
00599cfc  e9 ff ff eb                                      bl #0x599ca8
00599d00  04 00 a0 e1                                      mov r0, r4
00599d04  69 d1 f5 eb                                      bl #0x30e2b0
00599d08  04 00 a0 e1                                      mov r0, r4
00599d0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00599d10, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZN6glitch5scene22IShadowVolumeSceneNodeD2Ev
; demangled: glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode()
; decoder-mode: arm
00599d10  10 40 2d e9                                      push {r4, lr}
00599d14  00 20 91 e5                                      ldr r2, [r1]
00599d18  01 30 a0 e1                                      mov r3, r1
00599d1c  00 40 a0 e1                                      mov r4, r0
00599d20  00 20 80 e5                                      str r2, [r0]
00599d24  10 c0 93 e5                                      ldr ip, [r3, #0x10]
00599d28  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00599d2c  04 10 81 e2                                      add r1, r1, #4
00599d30  02 c0 80 e7                                      str ip, [r0, r2]
00599d34  00 c0 90 e5                                      ldr ip, [r0]
00599d38  14 20 93 e5                                      ldr r2, [r3, #0x14]
00599d3c  0c 30 1c e5                                      ldr r3, [ip, #-0xc]
00599d40  03 20 80 e7                                      str r2, [r0, r3]
00599d44  dc fb ff eb                                      bl #0x598cbc
00599d48  04 00 a0 e1                                      mov r0, r4
00599d4c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00599d50, declared_size=212, range_size=212, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZN6glitch5scene22IShadowVolumeSceneNodeC1Ei
; demangled: glitch::scene::IShadowVolumeSceneNode::IShadowVolumeSceneNode(int)
; decoder-mode: arm
00599d50  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00599d54  b8 50 9f e5                                      ldr r5, [pc, #0xb8]
00599d58  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00599d5c  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
00599d60  05 50 8f e0                                      add r5, pc, r5
00599d64  03 30 95 e7                                      ldr r3, [r5, r3]
00599d68  02 20 95 e7                                      ldr r2, [r5, r2]
00599d6c  01 e0 a0 e3                                      mov lr, #1
00599d70  18 c0 93 e5                                      ldr ip, [r3, #0x18]
00599d74  08 20 82 e2                                      add r2, r2, #8
00599d78  38 e1 80 e5                                      str lr, [r0, #0x138]
00599d7c  34 21 80 e5                                      str r2, [r0, #0x134]
00599d80  00 c0 80 e5                                      str ip, [r0]
00599d84  0c 60 1c e5                                      ldr r6, [ip, #-0xc]
00599d88  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
00599d8c  34 d0 4d e2                                      sub sp, sp, #0x34
00599d90  00 c0 a0 e3                                      mov ip, #0
00599d94  06 70 80 e7                                      str r7, [r0, r6]
00599d98  08 60 8d e2                                      add r6, sp, #8
00599d9c  fe e5 a0 e3                                      mov lr, #0x3f800000
00599da0  01 20 a0 e1                                      mov r2, r1
00599da4  00 60 8d e5                                      str r6, [sp]
00599da8  04 10 83 e2                                      add r1, r3, #4
00599dac  18 60 8d e2                                      add r6, sp, #0x18
00599db0  24 30 8d e2                                      add r3, sp, #0x24
00599db4  00 40 a0 e1                                      mov r4, r0
00599db8  10 c0 8d e5                                      str ip, [sp, #0x10]
00599dbc  20 e0 8d e5                                      str lr, [sp, #0x20]
00599dc0  04 60 8d e5                                      str r6, [sp, #4]
00599dc4  24 c0 8d e5                                      str ip, [sp, #0x24]
00599dc8  28 c0 8d e5                                      str ip, [sp, #0x28]
00599dcc  2c c0 8d e5                                      str ip, [sp, #0x2c]
00599dd0  08 c0 8d e5                                      str ip, [sp, #8]
00599dd4  0c c0 8d e5                                      str ip, [sp, #0xc]
00599dd8  14 e0 8d e5                                      str lr, [sp, #0x14]
00599ddc  18 e0 8d e5                                      str lr, [sp, #0x18]
00599de0  1c e0 8d e5                                      str lr, [sp, #0x1c]
00599de4  b5 fc ff eb                                      bl #0x5990c0
00599de8  30 30 9f e5                                      ldr r3, [pc, #0x30]
00599dec  00 20 a0 e3                                      mov r2, #0
00599df0  30 21 c4 e5                                      strb r2, [r4, #0x130]
00599df4  03 30 95 e7                                      ldr r3, [r5, r3]
00599df8  04 00 a0 e1                                      mov r0, r4
00599dfc  13 2e 83 e2                                      add r2, r3, #0x130
00599e00  1c 30 83 e2                                      add r3, r3, #0x1c
00599e04  00 30 84 e5                                      str r3, [r4]
00599e08  34 21 84 e5                                      str r2, [r4, #0x134]
00599e0c  34 d0 8d e2                                      add sp, sp, #0x34
00599e10  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00599e14  30 ad 3f 00 20 09 00 00 44 2b 00 00 5c 1b 00 00  .byte 0x30, 0xad, 0x3f, 0x00, 0x20, 0x09, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x5c, 0x1b, 0x00, 0x00

; FUNCTION 0x00599e24, declared_size=148, range_size=148, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZN6glitch5scene22IShadowVolumeSceneNodeC2Ei
; demangled: glitch::scene::IShadowVolumeSceneNode::IShadowVolumeSceneNode(int)
; decoder-mode: arm
00599e24  30 40 2d e9                                      push {r4, r5, lr}
00599e28  34 d0 4d e2                                      sub sp, sp, #0x34
00599e2c  08 40 8d e2                                      add r4, sp, #8
00599e30  00 c0 a0 e3                                      mov ip, #0
00599e34  fe e5 a0 e3                                      mov lr, #0x3f800000
00599e38  01 50 a0 e1                                      mov r5, r1
00599e3c  24 30 8d e2                                      add r3, sp, #0x24
00599e40  00 40 8d e5                                      str r4, [sp]
00599e44  04 10 81 e2                                      add r1, r1, #4
00599e48  18 40 8d e2                                      add r4, sp, #0x18
00599e4c  04 40 8d e5                                      str r4, [sp, #4]
00599e50  10 c0 8d e5                                      str ip, [sp, #0x10]
00599e54  00 40 a0 e1                                      mov r4, r0
00599e58  20 e0 8d e5                                      str lr, [sp, #0x20]
00599e5c  24 c0 8d e5                                      str ip, [sp, #0x24]
00599e60  28 c0 8d e5                                      str ip, [sp, #0x28]
00599e64  2c c0 8d e5                                      str ip, [sp, #0x2c]
00599e68  08 c0 8d e5                                      str ip, [sp, #8]
00599e6c  0c c0 8d e5                                      str ip, [sp, #0xc]
00599e70  14 e0 8d e5                                      str lr, [sp, #0x14]
00599e74  18 e0 8d e5                                      str lr, [sp, #0x18]
00599e78  1c e0 8d e5                                      str lr, [sp, #0x1c]
00599e7c  8f fc ff eb                                      bl #0x5990c0
00599e80  00 30 95 e5                                      ldr r3, [r5]
00599e84  04 00 a0 e1                                      mov r0, r4
00599e88  00 30 84 e5                                      str r3, [r4]
00599e8c  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00599e90  10 20 95 e5                                      ldr r2, [r5, #0x10]
00599e94  03 20 84 e7                                      str r2, [r4, r3]
00599e98  00 30 94 e5                                      ldr r3, [r4]
00599e9c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00599ea0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00599ea4  03 20 84 e7                                      str r2, [r4, r3]
00599ea8  00 30 a0 e3                                      mov r3, #0
00599eac  30 31 c4 e5                                      strb r3, [r4, #0x130]
00599eb0  34 d0 8d e2                                      add sp, sp, #0x34
00599eb4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00599eb8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZTv0_n24_N6glitch5scene22IShadowVolumeSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode()
; decoder-mode: arm
00599eb8  00 30 90 e5                                      ldr r3, [r0]
00599ebc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00599ec0  03 00 80 e0                                      add r0, r0, r3
00599ec4  8a ff ff ea                                      b #0x599cf4

; FUNCTION 0x00599ec8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZTv0_n12_N6glitch5scene22IShadowVolumeSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode()
; decoder-mode: arm
00599ec8  00 30 90 e5                                      ldr r3, [r0]
00599ecc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00599ed0  03 00 80 e0                                      add r0, r0, r3
00599ed4  86 ff ff ea                                      b #0x599cf4

; FUNCTION 0x00599ed8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZTv0_n24_N6glitch5scene22IShadowVolumeSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode()
; decoder-mode: arm
00599ed8  00 30 90 e5                                      ldr r3, [r0]
00599edc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00599ee0  03 00 80 e0                                      add r0, r0, r3
00599ee4  6f ff ff ea                                      b #0x599ca8

; FUNCTION 0x00599ee8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IShadowVolumeSceneNode
; alias: _ZTv0_n12_N6glitch5scene22IShadowVolumeSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IShadowVolumeSceneNode::~IShadowVolumeSceneNode()
; decoder-mode: arm
00599ee8  00 30 90 e5                                      ldr r3, [r0]
00599eec  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00599ef0  03 00 80 e0                                      add r0, r0, r3
00599ef4  6b ff ff ea                                      b #0x599ca8
