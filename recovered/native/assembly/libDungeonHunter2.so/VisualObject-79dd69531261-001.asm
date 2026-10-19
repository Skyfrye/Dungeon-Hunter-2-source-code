; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038ba74, declared_size=32, range_size=32, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject4SyncEv
; demangled: VisualObject::Sync()
; decoder-mode: arm
0038ba74  10 40 2d e9                                      push {r4, lr}
0038ba78  00 40 a0 e1                                      mov r4, r0
0038ba7c  8d 94 03 eb                                      bl #0x470cb8
0038ba80  04 00 a0 e1                                      mov r0, r4
0038ba84  af 9b 03 eb                                      bl #0x472948
0038ba88  04 00 a0 e1                                      mov r0, r4
0038ba8c  10 40 bd e8                                      pop {r4, lr}
0038ba90  72 9b 03 ea                                      b #0x472860

; FUNCTION 0x004709dc, declared_size=60, range_size=60, mode=arm
; class-group: VisualObject
; alias: _ZNK12VisualObject15GetSpecificNodeEi
; demangled: VisualObject::GetSpecificNode(int) const
; decoder-mode: arm
004709dc  10 40 2d e9                                      push {r4, lr}
004709e0  28 30 9f e5                                      ldr r3, [pc, #0x28]
004709e4  08 20 90 e5                                      ldr r2, [r0, #8]
004709e8  24 00 9f e5                                      ldr r0, [pc, #0x24]
004709ec  03 30 8f e0                                      add r3, pc, r3
004709f0  00 00 93 e7                                      ldr r0, [r3, r0]
004709f4  10 30 90 e5                                      ldr r3, [r0, #0x10]
004709f8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
004709fc  03 00 a0 e1                                      mov r0, r3
00470a00  00 30 93 e5                                      ldr r3, [r3]
00470a04  0f e0 a0 e1                                      mov lr, pc
00470a08  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00470a0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00470a10  a4 40 52 00 f4 37 00 00                          .byte 0xa4, 0x40, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00470a18, declared_size=60, range_size=60, mode=arm
; class-group: VisualObject
; alias: _ZNK12VisualObject15GetSpecificNodeEPKc
; demangled: VisualObject::GetSpecificNode(char const*) const
; decoder-mode: arm
00470a18  10 40 2d e9                                      push {r4, lr}
00470a1c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00470a20  08 20 90 e5                                      ldr r2, [r0, #8]
00470a24  24 00 9f e5                                      ldr r0, [pc, #0x24]
00470a28  03 30 8f e0                                      add r3, pc, r3
00470a2c  00 00 93 e7                                      ldr r0, [r3, r0]
00470a30  10 30 90 e5                                      ldr r3, [r0, #0x10]
00470a34  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00470a38  03 00 a0 e1                                      mov r0, r3
00470a3c  00 30 93 e5                                      ldr r3, [r3]
00470a40  0f e0 a0 e1                                      mov lr, pc
00470a44  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00470a48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00470a4c  68 40 52 00 f4 37 00 00                          .byte 0x68, 0x40, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00470a54, declared_size=48, range_size=48, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject12ApplyMeshBoxEv
; demangled: VisualObject::ApplyMeshBox()
; decoder-mode: arm
00470a54  10 40 2d e9                                      push {r4, lr}
00470a58  04 30 90 e5                                      ldr r3, [r0, #4]
00470a5c  00 10 a0 e1                                      mov r1, r0
00470a60  00 00 53 e3                                      cmp r3, #0
00470a64  05 00 00 0a                                      beq #0x470a80
00470a68  03 00 a0 e1                                      mov r0, r3
00470a6c  28 20 d1 e5                                      ldrb r2, [r1, #0x28]
00470a70  00 30 93 e5                                      ldr r3, [r3]
00470a74  10 10 81 e2                                      add r1, r1, #0x10
00470a78  0f e0 a0 e1                                      mov lr, pc
00470a7c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00470a80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00470a84, declared_size=64, range_size=64, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject17SetAnimControllerEP14AnimController
; demangled: VisualObject::SetAnimController(AnimController*)
; decoder-mode: arm
00470a84  70 40 2d e9                                      push {r4, r5, r6, lr}
00470a88  38 30 90 e5                                      ldr r3, [r0, #0x38]
00470a8c  00 40 a0 e1                                      mov r4, r0
00470a90  01 50 a0 e1                                      mov r5, r1
00470a94  01 00 53 e1                                      cmp r3, r1
00470a98  08 00 00 0a                                      beq #0x470ac0
00470a9c  00 00 53 e3                                      cmp r3, #0
00470aa0  05 00 00 0a                                      beq #0x470abc
00470aa4  03 00 a0 e1                                      mov r0, r3
00470aa8  00 30 93 e5                                      ldr r3, [r3]
00470aac  0f e0 a0 e1                                      mov lr, pc
00470ab0  04 f0 93 e5                                      ldr pc, [r3, #4]
00470ab4  00 30 a0 e3                                      mov r3, #0
00470ab8  38 30 84 e5                                      str r3, [r4, #0x38]
00470abc  38 50 84 e5                                      str r5, [r4, #0x38]
00470ac0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00470ac4, declared_size=20, range_size=20, mode=arm
; class-group: VisualObject
; alias: _ZNK12VisualObject9IsVisibleEv
; demangled: VisualObject::IsVisible() const
; decoder-mode: arm
00470ac4  08 00 90 e5                                      ldr r0, [r0, #8]
00470ac8  00 00 50 e3                                      cmp r0, #0
00470acc  1c 01 90 15                                      ldrne r0, [r0, #0x11c]
00470ad0  01 00 00 12                                      andne r0, r0, #1
00470ad4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470ad8, declared_size=160, range_size=160, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject27SetShadowSkinnedMeshVisibleEb
; demangled: VisualObject::SetShadowSkinnedMeshVisible(bool)
; decoder-mode: arm
00470ad8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00470adc  80 30 90 e5                                      ldr r3, [r0, #0x80]
00470ae0  84 70 90 e5                                      ldr r7, [r0, #0x84]
00470ae4  00 50 a0 e1                                      mov r5, r0
00470ae8  01 60 a0 e1                                      mov r6, r1
00470aec  07 70 63 e0                                      rsb r7, r3, r7
00470af0  47 71 a0 e1                                      asr r7, r7, #2
00470af4  00 00 57 e3                                      cmp r7, #0
00470af8  0b 00 00 da                                      ble #0x470b2c
00470afc  00 40 a0 e3                                      mov r4, #0
00470b00  00 00 00 ea                                      b #0x470b08
00470b04  80 30 95 e5                                      ldr r3, [r5, #0x80]
00470b08  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00470b0c  06 10 a0 e1                                      mov r1, r6
00470b10  01 40 84 e2                                      add r4, r4, #1
00470b14  03 00 a0 e1                                      mov r0, r3
00470b18  00 30 93 e5                                      ldr r3, [r3]
00470b1c  0f e0 a0 e1                                      mov lr, pc
00470b20  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00470b24  07 00 54 e1                                      cmp r4, r7
00470b28  f5 ff ff 1a                                      bne #0x470b04
00470b2c  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
00470b30  90 70 95 e5                                      ldr r7, [r5, #0x90]
00470b34  07 70 63 e0                                      rsb r7, r3, r7
00470b38  47 71 a0 e1                                      asr r7, r7, #2
00470b3c  00 00 57 e3                                      cmp r7, #0
00470b40  0b 00 00 da                                      ble #0x470b74
00470b44  00 40 a0 e3                                      mov r4, #0
00470b48  00 00 00 ea                                      b #0x470b50
00470b4c  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
00470b50  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00470b54  06 10 a0 e1                                      mov r1, r6
00470b58  01 40 84 e2                                      add r4, r4, #1
00470b5c  03 00 a0 e1                                      mov r0, r3
00470b60  00 30 93 e5                                      ldr r3, [r3]
00470b64  0f e0 a0 e1                                      mov lr, pc
00470b68  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00470b6c  07 00 54 e1                                      cmp r4, r7
00470b70  f5 ff ff 1a                                      bne #0x470b4c
00470b74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00470b78, declared_size=88, range_size=88, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject25SetXraySkinnedMeshVisibleEb
; demangled: VisualObject::SetXraySkinnedMeshVisible(bool)
; decoder-mode: arm
00470b78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00470b7c  9c 30 90 e5                                      ldr r3, [r0, #0x9c]
00470b80  a0 60 90 e5                                      ldr r6, [r0, #0xa0]
00470b84  00 50 a0 e1                                      mov r5, r0
00470b88  01 70 a0 e1                                      mov r7, r1
00470b8c  06 60 63 e0                                      rsb r6, r3, r6
00470b90  46 61 a0 e1                                      asr r6, r6, #2
00470b94  00 00 56 e3                                      cmp r6, #0
00470b98  0b 00 00 da                                      ble #0x470bcc
00470b9c  00 40 a0 e3                                      mov r4, #0
00470ba0  00 00 00 ea                                      b #0x470ba8
00470ba4  9c 30 95 e5                                      ldr r3, [r5, #0x9c]
00470ba8  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00470bac  07 10 a0 e1                                      mov r1, r7
00470bb0  01 40 84 e2                                      add r4, r4, #1
00470bb4  03 00 a0 e1                                      mov r0, r3
00470bb8  00 30 93 e5                                      ldr r3, [r3]
00470bbc  0f e0 a0 e1                                      mov lr, pc
00470bc0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00470bc4  06 00 54 e1                                      cmp r4, r6
00470bc8  f5 ff ff 1a                                      bne #0x470ba4
00470bcc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00470bd0, declared_size=20, range_size=20, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject19ForceUpdatePositionEv
; demangled: VisualObject::ForceUpdatePosition()
; decoder-mode: arm
00470bd0  08 30 90 e5                                      ldr r3, [r0, #8]
00470bd4  00 00 53 e3                                      cmp r3, #0
00470bd8  01 20 a0 13                                      movne r2, #1
00470bdc  08 22 c3 15                                      strbne r2, [r3, #0x208]
00470be0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470be4, declared_size=64, range_size=64, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject11GetPositionER7Point3DIfE
; demangled: VisualObject::GetPosition(Point3D<float>&)
; decoder-mode: arm
00470be4  10 40 2d e9                                      push {r4, lr}
00470be8  08 30 90 e5                                      ldr r3, [r0, #8]
00470bec  01 40 a0 e1                                      mov r4, r1
00470bf0  00 00 53 e3                                      cmp r3, #0
00470bf4  09 00 00 0a                                      beq #0x470c20
00470bf8  03 00 a0 e1                                      mov r0, r3
00470bfc  00 30 93 e5                                      ldr r3, [r3]
00470c00  0f e0 a0 e1                                      mov lr, pc
00470c04  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00470c08  00 30 90 e5                                      ldr r3, [r0]
00470c0c  00 30 84 e5                                      str r3, [r4]
00470c10  04 30 90 e5                                      ldr r3, [r0, #4]
00470c14  04 30 84 e5                                      str r3, [r4, #4]
00470c18  08 30 90 e5                                      ldr r3, [r0, #8]
00470c1c  08 30 84 e5                                      str r3, [r4, #8]
00470c20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00470c24, declared_size=96, range_size=96, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject11SetPositionERK7Point3DIfE
; demangled: VisualObject::SetPosition(Point3D<float> const&)
; decoder-mode: arm
00470c24  10 40 2d e9                                      push {r4, lr}
00470c28  00 40 a0 e1                                      mov r4, r0
00470c2c  08 00 90 e5                                      ldr r0, [r0, #8]
00470c30  10 d0 4d e2                                      sub sp, sp, #0x10
00470c34  00 00 50 e3                                      cmp r0, #0
00470c38  0f 00 00 0a                                      beq #0x470c7c
00470c3c  00 30 90 e5                                      ldr r3, [r0]
00470c40  00 e0 91 e5                                      ldr lr, [r1]
00470c44  04 c0 91 e5                                      ldr ip, [r1, #4]
00470c48  08 20 91 e5                                      ldr r2, [r1, #8]
00470c4c  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
00470c50  04 10 8d e2                                      add r1, sp, #4
00470c54  04 e0 8d e5                                      str lr, [sp, #4]
00470c58  08 c0 8d e5                                      str ip, [sp, #8]
00470c5c  0c 20 8d e5                                      str r2, [sp, #0xc]
00470c60  33 ff 2f e1                                      blx r3
00470c64  08 30 94 e5                                      ldr r3, [r4, #8]
00470c68  00 10 a0 e3                                      mov r1, #0
00470c6c  03 00 a0 e1                                      mov r0, r3
00470c70  00 30 93 e5                                      ldr r3, [r3]
00470c74  0f e0 a0 e1                                      mov lr, pc
00470c78  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
00470c7c  10 d0 8d e2                                      add sp, sp, #0x10
00470c80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00470c84, declared_size=52, range_size=52, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject11GetRotationER7Point3DIfE
; demangled: VisualObject::GetRotation(Point3D<float>&)
; decoder-mode: arm
00470c84  08 30 90 e5                                      ldr r3, [r0, #8]
00470c88  00 00 53 e3                                      cmp r3, #0
00470c8c  1e ff 2f 01                                      bxeq lr
00470c90  04 30 90 e5                                      ldr r3, [r0, #4]
00470c94  00 00 53 e3                                      cmp r3, #0
00470c98  1e ff 2f 01                                      bxeq lr
00470c9c  6c 21 93 e5                                      ldr r2, [r3, #0x16c]
00470ca0  00 20 81 e5                                      str r2, [r1]
00470ca4  70 21 93 e5                                      ldr r2, [r3, #0x170]
00470ca8  04 20 81 e5                                      str r2, [r1, #4]
00470cac  74 31 93 e5                                      ldr r3, [r3, #0x174]
00470cb0  08 30 81 e5                                      str r3, [r1, #8]
00470cb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470cb8, declared_size=20, range_size=20, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject12SyncPositionEv
; demangled: VisualObject::SyncPosition()
; decoder-mode: arm
00470cb8  04 10 90 e5                                      ldr r1, [r0, #4]
00470cbc  00 00 51 e3                                      cmp r1, #0
00470cc0  1e ff 2f 01                                      bxeq lr
00470cc4  16 1e 81 e2                                      add r1, r1, #0x160
00470cc8  d5 ff ff ea                                      b #0x470c24

; FUNCTION 0x00470ccc, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject13ApplyRotationEv
; demangled: VisualObject::ApplyRotation()
; decoder-mode: arm
00470ccc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470cd0, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject12ApplyScalingEv
; demangled: VisualObject::ApplyScaling()
; decoder-mode: arm
00470cd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470cd4, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject13ApplyMaterialEv
; demangled: VisualObject::ApplyMaterial()
; decoder-mode: arm
00470cd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470cd8, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject12StartFadeOutEf
; demangled: VisualObject::StartFadeOut(float)
; decoder-mode: arm
00470cd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470cdc, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject11StopFadeOutEv
; demangled: VisualObject::StopFadeOut()
; decoder-mode: arm
00470cdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470ce0, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject13UpdateFadeOutEv
; demangled: VisualObject::UpdateFadeOut()
; decoder-mode: arm
00470ce0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470ce4, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject11StartFadeInEf
; demangled: VisualObject::StartFadeIn(float)
; decoder-mode: arm
00470ce4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470ce8, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject10StopFadeInEv
; demangled: VisualObject::StopFadeIn()
; decoder-mode: arm
00470ce8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470cec, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject12UpdateFadeInEv
; demangled: VisualObject::UpdateFadeIn()
; decoder-mode: arm
00470cec  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470cf0, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject6UpdateEv
; demangled: VisualObject::Update()
; decoder-mode: arm
00470cf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470cf4, declared_size=4, range_size=4, mode=arm
; class-group: VisualObject
; alias: _ZNK12VisualObject4DrawEv
; demangled: VisualObject::Draw() const
; decoder-mode: arm
00470cf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470e18, declared_size=68, range_size=68, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject14SetModularSkinEii
; demangled: VisualObject::SetModularSkin(int, int)
; decoder-mode: arm
00470e18  10 40 2d e9                                      push {r4, lr}
00470e1c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00470e20  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
00470e24  00 00 50 e3                                      cmp r0, #0
00470e28  01 00 71 13                                      cmnne r1, #1
00470e2c  04 40 8f e0                                      add r4, pc, r4
00470e30  00 00 00 1a                                      bne #0x470e38
00470e34  10 80 bd e8                                      pop {r4, pc}
00470e38  7c 61 07 eb                                      bl #0x649430
00470e3c  14 30 9f e5                                      ldr r3, [pc, #0x14]
00470e40  03 30 94 e7                                      ldr r3, [r4, r3]
00470e44  10 30 93 e5                                      ldr r3, [r3, #0x10]
00470e48  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00470e4c  10 40 bd e8                                      pop {r4, lr}
00470e50  94 60 04 ea                                      b #0x5890a8
; mapping-symbol data/literal pool
00470e54  64 3c 52 00 f4 37 00 00                          .byte 0x64, 0x3c, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00470e5c, declared_size=24, range_size=24, mode=arm
; class-group: VisualObject
; alias: _ZNK12VisualObject20GetModularCategoryIdEPKc
; demangled: VisualObject::GetModularCategoryId(char const*) const
; decoder-mode: arm
00470e5c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00470e60  00 00 50 e3                                      cmp r0, #0
00470e64  00 00 00 0a                                      beq #0x470e6c
00470e68  9c 61 07 ea                                      b #0x6494e0
00470e6c  00 00 e0 e3                                      mvn r0, #0
00470e70  1e ff 2f e1                                      bx lr

; FUNCTION 0x00470e74, declared_size=32, range_size=32, mode=arm
; class-group: VisualObject
; alias: _ZNK12VisualObject20GetModularModuleNameEii
; demangled: VisualObject::GetModularModuleName(int, int) const
; decoder-mode: arm
00470e74  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00470e78  00 00 50 e3                                      cmp r0, #0
00470e7c  00 00 00 0a                                      beq #0x470e84
00470e80  71 61 07 ea                                      b #0x64944c
00470e84  04 00 9f e5                                      ldr r0, [pc, #4]
00470e88  00 00 8f e0                                      add r0, pc, r0
00470e8c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00470e90  b0 c7 45 00                                      .byte 0xb0, 0xc7, 0x45, 0x00

; FUNCTION 0x00470e94, declared_size=16, range_size=16, mode=arm
; class-group: VisualObject
; alias: _ZNK12VisualObject21GetModularModuleCountEi
; demangled: VisualObject::GetModularModuleCount(int) const
; decoder-mode: arm
00470e94  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00470e98  00 00 50 e3                                      cmp r0, #0
00470e9c  1e ff 2f 01                                      bxeq lr
00470ea0  65 61 07 ea                                      b #0x64943c

; FUNCTION 0x00470ea4, declared_size=16, range_size=16, mode=arm
; class-group: VisualObject
; alias: _ZNK12VisualObject23GetModularCategoryCountEv
; demangled: VisualObject::GetModularCategoryCount() const
; decoder-mode: arm
00470ea4  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00470ea8  00 00 50 e3                                      cmp r0, #0
00470eac  1e ff 2f 01                                      bxeq lr
00470eb0  63 61 07 ea                                      b #0x649444

; FUNCTION 0x00470eb4, declared_size=572, range_size=572, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject35ApplyShadowProjectionMaterialEffectEN6glitch4core8vector3dIfEEff
; demangled: VisualObject::ApplyShadowProjectionMaterialEffect(glitch::core::vector3d<float>, float, float)
; decoder-mode: arm
00470eb4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00470eb8  4c d0 4d e2                                      sub sp, sp, #0x4c
00470ebc  01 50 a0 e1                                      mov r5, r1
00470ec0  18 00 8d e5                                      str r0, [sp, #0x18]
00470ec4  00 00 95 e5                                      ldr r0, [r5]
00470ec8  bf 14 a0 e3                                      mov r1, #0xbf000000
00470ecc  02 b0 a0 e1                                      mov fp, r2
00470ed0  0c 30 8d e5                                      str r3, [sp, #0xc]
00470ed4  07 75 fa eb                                      bl #0x30e2f8
00470ed8  08 12 9f e5                                      ldr r1, [pc, #0x208]
00470edc  00 00 50 e3                                      cmp r0, #0
00470ee0  01 10 8f e0                                      add r1, pc, r1
00470ee4  1c 10 8d e5                                      str r1, [sp, #0x1c]
00470ee8  09 00 00 1a                                      bne #0x470f14
00470eec  0b 00 a0 e1                                      mov r0, fp
00470ef0  bf 14 a0 e3                                      mov r1, #0xbf000000
00470ef4  ff 74 fa eb                                      bl #0x30e2f8
00470ef8  00 00 50 e3                                      cmp r0, #0
00470efc  04 00 00 1a                                      bne #0x470f14
00470f00  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00470f04  bf 14 a0 e3                                      mov r1, #0xbf000000
00470f08  fa 74 fa eb                                      bl #0x30e2f8
00470f0c  00 00 50 e3                                      cmp r0, #0
00470f10  72 00 00 0a                                      beq #0x4710e0
00470f14  18 20 9d e5                                      ldr r2, [sp, #0x18]
00470f18  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
00470f1c  00 00 53 e3                                      cmp r3, #0
00470f20  6e 00 00 0a                                      beq #0x4710e0
00470f24  80 30 92 e5                                      ldr r3, [r2, #0x80]
00470f28  84 a0 92 e5                                      ldr sl, [r2, #0x84]
00470f2c  0a a0 63 e0                                      rsb sl, r3, sl
00470f30  4a a1 a0 e1                                      asr sl, sl, #2
00470f34  00 00 5a e3                                      cmp sl, #0
00470f38  27 00 00 0a                                      beq #0x470fdc
00470f3c  26 00 00 da                                      ble #0x470fdc
00470f40  a4 21 9f e5                                      ldr r2, [pc, #0x1a4]
00470f44  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00470f48  00 40 a0 e3                                      mov r4, #0
00470f4c  44 60 8d e2                                      add r6, sp, #0x44
00470f50  02 70 9c e7                                      ldr r7, [ip, r2]
00470f54  34 90 8d e2                                      add sb, sp, #0x34
00470f58  01 00 00 ea                                      b #0x470f64
00470f5c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00470f60  80 30 91 e5                                      ldr r3, [r1, #0x80]
00470f64  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00470f68  10 00 97 e5                                      ldr r0, [r7, #0x10]
00470f6c  06 10 a0 e1                                      mov r1, r6
00470f70  98 c1 93 e5                                      ldr ip, [r3, #0x198]
00470f74  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00470f78  09 20 a0 e1                                      mov r2, sb
00470f7c  00 00 5c e3                                      cmp ip, #0
00470f80  44 c0 8d e5                                      str ip, [sp, #0x44]
00470f84  00 e0 9c 15                                      ldrne lr, [ip]
00470f88  0b 30 a0 e1                                      mov r3, fp
00470f8c  01 40 84 e2                                      add r4, r4, #1
00470f90  01 e0 8e 12                                      addne lr, lr, #1
00470f94  00 e0 8c 15                                      strne lr, [ip]
00470f98  08 c0 95 e5                                      ldr ip, [r5, #8]
00470f9c  04 e0 95 e5                                      ldr lr, [r5, #4]
00470fa0  00 80 95 e5                                      ldr r8, [r5]
00470fa4  3c c0 8d e5                                      str ip, [sp, #0x3c]
00470fa8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00470fac  38 e0 8d e5                                      str lr, [sp, #0x38]
00470fb0  34 80 8d e5                                      str r8, [sp, #0x34]
00470fb4  00 c0 8d e5                                      str ip, [sp]
00470fb8  aa 85 fb eb                                      bl #0x352668
00470fbc  06 00 a0 e1                                      mov r0, r6
00470fc0  08 7f fa eb                                      bl #0x310be8
00470fc4  0a 00 54 e1                                      cmp r4, sl
00470fc8  e3 ff ff 1a                                      bne #0x470f5c
00470fcc  18 20 9d e5                                      ldr r2, [sp, #0x18]
00470fd0  98 30 d2 e5                                      ldrb r3, [r2, #0x98]
00470fd4  00 00 53 e3                                      cmp r3, #0
00470fd8  40 00 00 0a                                      beq #0x4710e0
00470fdc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00470fe0  8c 30 9c e5                                      ldr r3, [ip, #0x8c]
00470fe4  90 20 9c e5                                      ldr r2, [ip, #0x90]
00470fe8  02 20 63 e0                                      rsb r2, r3, r2
00470fec  42 21 a0 e1                                      asr r2, r2, #2
00470ff0  00 00 52 e3                                      cmp r2, #0
00470ff4  20 20 8d e5                                      str r2, [sp, #0x20]
00470ff8  38 00 00 0a                                      beq #0x4710e0
00470ffc  37 00 00 da                                      ble #0x4710e0
00471000  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
00471004  00 20 a0 e3                                      mov r2, #0
00471008  28 c0 8d e2                                      add ip, sp, #0x28
0047100c  24 10 8d e5                                      str r1, [sp, #0x24]
00471010  14 20 8d e5                                      str r2, [sp, #0x14]
00471014  40 60 8d e2                                      add r6, sp, #0x40
00471018  10 c0 8d e5                                      str ip, [sp, #0x10]
0047101c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00471020  01 81 93 e7                                      ldr r8, [r3, r1, lsl #2]
00471024  b0 31 98 e5                                      ldr r3, [r8, #0x1b0]
00471028  b4 91 98 e5                                      ldr sb, [r8, #0x1b4]
0047102c  09 90 63 e0                                      rsb sb, r3, sb
00471030  49 91 a0 e1                                      asr sb, sb, #2
00471034  00 00 59 e3                                      cmp sb, #0
00471038  1f 00 00 da                                      ble #0x4710bc
0047103c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00471040  24 20 9d e5                                      ldr r2, [sp, #0x24]
00471044  00 40 a0 e3                                      mov r4, #0
00471048  08 a0 a0 e1                                      mov sl, r8
0047104c  02 70 9c e7                                      ldr r7, [ip, r2]
00471050  00 00 00 ea                                      b #0x471058
00471054  b0 31 9a e5                                      ldr r3, [sl, #0x1b0]
00471058  04 c1 93 e7                                      ldr ip, [r3, r4, lsl #2]
0047105c  10 00 97 e5                                      ldr r0, [r7, #0x10]
00471060  10 20 9d e5                                      ldr r2, [sp, #0x10]
00471064  00 00 5c e3                                      cmp ip, #0
00471068  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0047106c  40 c0 8d e5                                      str ip, [sp, #0x40]
00471070  00 e0 9c 15                                      ldrne lr, [ip]
00471074  06 10 a0 e1                                      mov r1, r6
00471078  0b 30 a0 e1                                      mov r3, fp
0047107c  01 e0 8e 12                                      addne lr, lr, #1
00471080  00 e0 8c 15                                      strne lr, [ip]
00471084  08 c0 95 e5                                      ldr ip, [r5, #8]
00471088  04 e0 95 e5                                      ldr lr, [r5, #4]
0047108c  00 80 95 e5                                      ldr r8, [r5]
00471090  30 c0 8d e5                                      str ip, [sp, #0x30]
00471094  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00471098  2c e0 8d e5                                      str lr, [sp, #0x2c]
0047109c  01 40 84 e2                                      add r4, r4, #1
004710a0  00 c0 8d e5                                      str ip, [sp]
004710a4  28 80 8d e5                                      str r8, [sp, #0x28]
004710a8  6e 85 fb eb                                      bl #0x352668
004710ac  06 00 a0 e1                                      mov r0, r6
004710b0  cc 7e fa eb                                      bl #0x310be8
004710b4  09 00 54 e1                                      cmp r4, sb
004710b8  e5 ff ff 1a                                      bne #0x471054
004710bc  14 10 9d e5                                      ldr r1, [sp, #0x14]
004710c0  20 20 9d e5                                      ldr r2, [sp, #0x20]
004710c4  01 10 81 e2                                      add r1, r1, #1
004710c8  02 00 51 e1                                      cmp r1, r2
004710cc  14 10 8d e5                                      str r1, [sp, #0x14]
004710d0  02 00 00 0a                                      beq #0x4710e0
004710d4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
004710d8  8c 30 9c e5                                      ldr r3, [ip, #0x8c]
004710dc  ce ff ff ea                                      b #0x47101c
004710e0  4c d0 8d e2                                      add sp, sp, #0x4c
004710e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
004710e8  b0 3b 52 00 f4 37 00 00                          .byte 0xb0, 0x3b, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004710f0, declared_size=292, range_size=292, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject19ApplyShadowMaterialEv
; demangled: VisualObject::ApplyShadowMaterial()
; decoder-mode: arm
004710f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004710f4  10 11 9f e5                                      ldr r1, [pc, #0x110]
004710f8  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
004710fc  1c d0 4d e2                                      sub sp, sp, #0x1c
00471100  01 10 8f e0                                      add r1, pc, r1
00471104  00 00 53 e3                                      cmp r3, #0
00471108  00 10 8d e5                                      str r1, [sp]
0047110c  00 b0 a0 e1                                      mov fp, r0
00471110  3b 00 00 0a                                      beq #0x471204
00471114  8c 30 90 e5                                      ldr r3, [r0, #0x8c]
00471118  90 20 90 e5                                      ldr r2, [r0, #0x90]
0047111c  02 20 63 e0                                      rsb r2, r3, r2
00471120  42 21 a0 e1                                      asr r2, r2, #2
00471124  00 00 52 e3                                      cmp r2, #0
00471128  04 20 8d e5                                      str r2, [sp, #4]
0047112c  34 00 00 0a                                      beq #0x471204
00471130  33 00 00 da                                      ble #0x471204
00471134  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
00471138  64 11 06 e3                                      movw r1, #0x6164
0047113c  65 1d 44 e3                                      movt r1, #0x4d65
00471140  0c 20 8d e5                                      str r2, [sp, #0xc]
00471144  08 10 8d e5                                      str r1, [sp, #8]
00471148  00 90 a0 e3                                      mov sb, #0
0047114c  14 50 8d e2                                      add r5, sp, #0x14
00471150  09 61 93 e7                                      ldr r6, [r3, sb, lsl #2]
00471154  06 00 a0 e1                                      mov r0, r6
00471158  4e c0 fb eb                                      bl #0x361298
0047115c  00 30 96 e5                                      ldr r3, [r6]
00471160  06 00 a0 e1                                      mov r0, r6
00471164  0f e0 a0 e1                                      mov lr, pc
00471168  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0047116c  b0 31 96 e5                                      ldr r3, [r6, #0x1b0]
00471170  b4 81 96 e5                                      ldr r8, [r6, #0x1b4]
00471174  08 20 9d e5                                      ldr r2, [sp, #8]
00471178  08 80 63 e0                                      rsb r8, r3, r8
0047117c  48 81 a0 e1                                      asr r8, r8, #2
00471180  02 00 50 e1                                      cmp r0, r2
00471184  00 a0 a0 13                                      movne sl, #0
00471188  01 a0 a0 03                                      moveq sl, #1
0047118c  00 00 58 e3                                      cmp r8, #0
00471190  16 00 00 da                                      ble #0x4711f0
00471194  00 20 9d e5                                      ldr r2, [sp]
00471198  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0047119c  00 40 a0 e3                                      mov r4, #0
004711a0  01 70 92 e7                                      ldr r7, [r2, r1]
004711a4  00 00 00 ea                                      b #0x4711ac
004711a8  b0 31 96 e5                                      ldr r3, [r6, #0x1b0]
004711ac  04 c1 93 e7                                      ldr ip, [r3, r4, lsl #2]
004711b0  10 00 97 e5                                      ldr r0, [r7, #0x10]
004711b4  01 20 a0 e3                                      mov r2, #1
004711b8  00 00 5c e3                                      cmp ip, #0
004711bc  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
004711c0  14 c0 8d e5                                      str ip, [sp, #0x14]
004711c4  00 e0 9c 15                                      ldrne lr, [ip]
004711c8  05 10 a0 e1                                      mov r1, r5
004711cc  0a 30 a0 e1                                      mov r3, sl
004711d0  02 e0 8e 10                                      addne lr, lr, r2
004711d4  00 e0 8c 15                                      strne lr, [ip]
004711d8  02 40 84 e0                                      add r4, r4, r2
004711dc  ab 91 fb eb                                      bl #0x355890
004711e0  05 00 a0 e1                                      mov r0, r5
004711e4  7f 7e fa eb                                      bl #0x310be8
004711e8  08 00 54 e1                                      cmp r4, r8
004711ec  ed ff ff 1a                                      bne #0x4711a8
004711f0  04 30 9d e5                                      ldr r3, [sp, #4]
004711f4  01 90 89 e2                                      add sb, sb, #1
004711f8  03 00 59 e1                                      cmp sb, r3
004711fc  8c 30 9b 15                                      ldrne r3, [fp, #0x8c]
00471200  d2 ff ff 1a                                      bne #0x471150
00471204  1c d0 8d e2                                      add sp, sp, #0x1c
00471208  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0047120c  90 39 52 00 f4 37 00 00                          .byte 0x90, 0x39, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00471214, declared_size=56, range_size=56, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject13ApplyLightSetEv
; demangled: VisualObject::ApplyLightSet()
; decoder-mode: arm
00471214  28 c0 9f e5                                      ldr ip, [pc, #0x28]
00471218  28 30 9f e5                                      ldr r3, [pc, #0x28]
0047121c  04 40 2d e5                                      str r4, [sp, #-4]!
00471220  0c c0 8f e0                                      add ip, pc, ip
00471224  03 20 9c e7                                      ldr r2, [ip, r3]
00471228  40 10 90 e5                                      ldr r1, [r0, #0x40]
0047122c  08 30 90 e5                                      ldr r3, [r0, #8]
00471230  10 40 92 e5                                      ldr r4, [r2, #0x10]
00471234  44 20 80 e2                                      add r2, r0, #0x44
00471238  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0047123c  10 00 bd e8                                      ldm sp!, {r4}
00471240  d6 8d fb ea                                      b #0x3549a0
; mapping-symbol data/literal pool
00471244  70 38 52 00 f4 37 00 00                          .byte 0x70, 0x38, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047124c, declared_size=76, range_size=76, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject13ApplyPositionEv
; demangled: VisualObject::ApplyPosition()
; decoder-mode: arm
0047124c  30 40 2d e9                                      push {r4, r5, lr}
00471250  04 30 90 e5                                      ldr r3, [r0, #4]
00471254  14 d0 4d e2                                      sub sp, sp, #0x14
00471258  00 40 a0 e1                                      mov r4, r0
0047125c  00 00 53 e3                                      cmp r3, #0
00471260  0a 00 00 0a                                      beq #0x471290
00471264  04 50 8d e2                                      add r5, sp, #4
00471268  00 30 a0 e3                                      mov r3, #0
0047126c  05 10 a0 e1                                      mov r1, r5
00471270  0c 30 8d e5                                      str r3, [sp, #0xc]
00471274  04 30 8d e5                                      str r3, [sp, #4]
00471278  08 30 8d e5                                      str r3, [sp, #8]
0047127c  58 fe ff eb                                      bl #0x470be4
00471280  04 00 94 e5                                      ldr r0, [r4, #4]
00471284  05 10 a0 e1                                      mov r1, r5
00471288  00 20 a0 e3                                      mov r2, #0
0047128c  c8 8a fc eb                                      bl #0x393db4
00471290  14 d0 8d e2                                      add sp, sp, #0x14
00471294  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00471298, declared_size=208, range_size=208, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject16ExternalNodeSyncEP13RootSceneNode
; demangled: VisualObject::ExternalNodeSync(RootSceneNode*)
; decoder-mode: arm
00471298  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0047129c  04 30 90 e5                                      ldr r3, [r0, #4]
004712a0  2c d0 4d e2                                      sub sp, sp, #0x2c
004712a4  00 50 a0 e1                                      mov r5, r0
004712a8  00 00 51 e3                                      cmp r1, #0
004712ac  00 00 53 13                                      cmpne r3, #0
004712b0  01 40 a0 e1                                      mov r4, r1
004712b4  29 00 00 0a                                      beq #0x471360
004712b8  00 c0 91 e5                                      ldr ip, [r1]
004712bc  68 21 93 e5                                      ldr r2, [r3, #0x168]
004712c0  60 01 93 e5                                      ldr r0, [r3, #0x160]
004712c4  64 11 93 e5                                      ldr r1, [r3, #0x164]
004712c8  a4 30 9c e5                                      ldr r3, [ip, #0xa4]
004712cc  24 20 8d e5                                      str r2, [sp, #0x24]
004712d0  1c 00 8d e5                                      str r0, [sp, #0x1c]
004712d4  20 10 8d e5                                      str r1, [sp, #0x20]
004712d8  04 00 a0 e1                                      mov r0, r4
004712dc  1c 10 8d e2                                      add r1, sp, #0x1c
004712e0  33 ff 2f e1                                      blx r3
004712e4  04 00 a0 e1                                      mov r0, r4
004712e8  00 10 a0 e3                                      mov r1, #0
004712ec  00 30 94 e5                                      ldr r3, [r4]
004712f0  0f e0 a0 e1                                      mov lr, pc
004712f4  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
004712f8  04 10 95 e5                                      ldr r1, [r5, #4]
004712fc  00 c0 94 e5                                      ldr ip, [r4]
00471300  0d 00 a0 e1                                      mov r0, sp
00471304  6c 21 91 e5                                      ldr r2, [r1, #0x16c]
00471308  74 31 91 e5                                      ldr r3, [r1, #0x174]
0047130c  70 11 91 e5                                      ldr r1, [r1, #0x170]
00471310  02 21 82 e2                                      add r2, r2, #0x80000000
00471314  02 31 83 e2                                      add r3, r3, #0x80000000
00471318  9c 70 9c e5                                      ldr r7, [ip, #0x9c]
0047131c  ad ad fb eb                                      bl #0x35c9d8
00471320  04 00 a0 e1                                      mov r0, r4
00471324  0d 10 a0 e1                                      mov r1, sp
00471328  37 ff 2f e1                                      blx r7
0047132c  04 30 95 e5                                      ldr r3, [r5, #4]
00471330  00 e0 94 e5                                      ldr lr, [r4]
00471334  04 00 a0 e1                                      mov r0, r4
00471338  24 11 93 e5                                      ldr r1, [r3, #0x124]
0047133c  20 c1 93 e5                                      ldr ip, [r3, #0x120]
00471340  28 21 93 e5                                      ldr r2, [r3, #0x128]
00471344  94 30 9e e5                                      ldr r3, [lr, #0x94]
00471348  14 10 8d e5                                      str r1, [sp, #0x14]
0047134c  10 c0 8d e5                                      str ip, [sp, #0x10]
00471350  18 20 8d e5                                      str r2, [sp, #0x18]
00471354  10 10 8d e2                                      add r1, sp, #0x10
00471358  0d 60 a0 e1                                      mov r6, sp
0047135c  33 ff 2f e1                                      blx r3
00471360  2c d0 8d e2                                      add sp, sp, #0x2c
00471364  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00471368, declared_size=104, range_size=104, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject10SetVisibleEb
; demangled: VisualObject::SetVisible(bool)
; decoder-mode: arm
00471368  70 40 2d e9                                      push {r4, r5, r6, lr}
0047136c  08 30 90 e5                                      ldr r3, [r0, #8]
00471370  50 20 9f e5                                      ldr r2, [pc, #0x50]
00471374  00 40 a0 e1                                      mov r4, r0
00471378  00 00 53 e3                                      cmp r3, #0
0047137c  01 50 a0 e1                                      mov r5, r1
00471380  02 20 8f e0                                      add r2, pc, r2
00471384  0e 00 00 0a                                      beq #0x4713c4
00471388  1c 11 93 e5                                      ldr r1, [r3, #0x11c]
0047138c  01 10 01 e2                                      and r1, r1, #1
00471390  01 00 55 e1                                      cmp r5, r1
00471394  05 00 00 0a                                      beq #0x4713b0
00471398  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0047139c  03 30 92 e7                                      ldr r3, [r2, r3]
004713a0  10 30 93 e5                                      ldr r3, [r3, #0x10]
004713a4  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
004713a8  cc 7e fb eb                                      bl #0x350ee0
004713ac  08 30 94 e5                                      ldr r3, [r4, #8]
004713b0  03 00 a0 e1                                      mov r0, r3
004713b4  05 10 a0 e1                                      mov r1, r5
004713b8  00 30 93 e5                                      ldr r3, [r3]
004713bc  0f e0 a0 e1                                      mov lr, pc
004713c0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004713c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004713c8  10 37 52 00 f4 37 00 00                          .byte 0x10, 0x37, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004713d0, declared_size=108, range_size=108, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject14SyncVisibilityEv
; demangled: VisualObject::SyncVisibility()
; decoder-mode: arm
004713d0  70 40 2d e9                                      push {r4, r5, r6, lr}
004713d4  04 40 90 e5                                      ldr r4, [r0, #4]
004713d8  00 50 a0 e1                                      mov r5, r0
004713dc  00 00 54 e3                                      cmp r4, #0
004713e0  14 00 00 0a                                      beq #0x471438
004713e4  80 30 d4 e5                                      ldrb r3, [r4, #0x80]
004713e8  00 00 53 e3                                      cmp r3, #0
004713ec  03 00 00 1a                                      bne #0x471400
004713f0  00 10 a0 e3                                      mov r1, #0
004713f4  05 00 a0 e1                                      mov r0, r5
004713f8  70 40 bd e8                                      pop {r4, r5, r6, lr}
004713fc  d9 ff ff ea                                      b #0x471368
00471400  00 30 94 e5                                      ldr r3, [r4]
00471404  04 00 a0 e1                                      mov r0, r4
00471408  0f e0 a0 e1                                      mov lr, pc
0047140c  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
00471410  00 00 50 e3                                      cmp r0, #0
00471414  05 00 00 0a                                      beq #0x471430
00471418  ee 32 d4 e5                                      ldrb r3, [r4, #0x2ee]
0047141c  00 00 53 e3                                      cmp r3, #0
00471420  02 00 00 0a                                      beq #0x471430
00471424  f0 32 d4 e5                                      ldrb r3, [r4, #0x2f0]
00471428  00 00 53 e3                                      cmp r3, #0
0047142c  ef ff ff 0a                                      beq #0x4713f0
00471430  01 10 a0 e3                                      mov r1, #1
00471434  ee ff ff ea                                      b #0x4713f4
00471438  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004718f0, declared_size=284, range_size=284, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject27_FindModularSkinnedMeshNodeEv
; demangled: VisualObject::_FindModularSkinnedMeshNode()
; decoder-mode: arm
004718f0  70 40 2d e9                                      push {r4, r5, r6, lr}
004718f4  08 30 90 e5                                      ldr r3, [r0, #8]
004718f8  f0 50 9f e5                                      ldr r5, [pc, #0xf0]
004718fc  18 d0 4d e2                                      sub sp, sp, #0x18
00471900  00 00 53 e3                                      cmp r3, #0
00471904  00 40 a0 e1                                      mov r4, r0
00471908  05 50 8f e0                                      add r5, pc, r5
0047190c  1f 00 00 0a                                      beq #0x471990
00471910  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
00471914  00 60 a0 e3                                      mov r6, #0
00471918  0c 60 8d e5                                      str r6, [sp, #0xc]
0047191c  02 20 95 e7                                      ldr r2, [r5, r2]
00471920  10 60 8d e5                                      str r6, [sp, #0x10]
00471924  14 60 8d e5                                      str r6, [sp, #0x14]
00471928  10 20 92 e5                                      ldr r2, [r2, #0x10]
0047192c  64 11 06 e3                                      movw r1, #0x6164
00471930  65 1d 44 e3                                      movt r1, #0x4d65
00471934  1c c0 92 e5                                      ldr ip, [r2, #0x1c]
00471938  0c 20 8d e2                                      add r2, sp, #0xc
0047193c  0c 00 a0 e1                                      mov r0, ip
00471940  00 c0 9c e5                                      ldr ip, [ip]
00471944  0f e0 a0 e1                                      mov lr, pc
00471948  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0047194c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00471950  10 10 9d e5                                      ldr r1, [sp, #0x10]
00471954  01 10 60 e0                                      rsb r1, r0, r1
00471958  41 11 b0 e1                                      asrs r1, r1, #2
0047195c  06 00 00 0a                                      beq #0x47197c
00471960  01 20 a0 e3                                      mov r2, #1
00471964  06 31 90 e7                                      ldr r3, [r0, r6, lsl #2]
00471968  01 60 86 e2                                      add r6, r6, #1
0047196c  01 00 56 e1                                      cmp r6, r1
00471970  2c 30 84 e5                                      str r3, [r4, #0x2c]
00471974  7f 20 c4 e5                                      strb r2, [r4, #0x7f]
00471978  f9 ff ff 3a                                      blo #0x471964
0047197c  00 00 50 e3                                      cmp r0, #0
00471980  00 00 00 0a                                      beq #0x471988
00471984  b1 7a fa eb                                      bl #0x310450
00471988  18 d0 8d e2                                      add sp, sp, #0x18
0047198c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00471990  60 20 9f e5                                      ldr r2, [pc, #0x60]
00471994  02 20 95 e7                                      ldr r2, [r5, r2]
00471998  00 20 92 e5                                      ldr r2, [r2]
0047199c  02 00 52 e3                                      cmp r2, #2
004719a0  0f 00 00 0a                                      beq #0x4719e4
004719a4  01 00 52 e3                                      cmp r2, #1
004719a8  d8 ff ff 1a                                      bne #0x471910
004719ac  48 00 9f e5                                      ldr r0, [pc, #0x48]
004719b0  48 10 9f e5                                      ldr r1, [pc, #0x48]
004719b4  48 20 9f e5                                      ldr r2, [pc, #0x48]
004719b8  00 00 95 e7                                      ldr r0, [r5, r0]
004719bc  44 30 9f e5                                      ldr r3, [pc, #0x44]
004719c0  ff c3 00 e3                                      movw ip, #0x3ff
004719c4  01 10 8f e0                                      add r1, pc, r1
004719c8  03 30 8f e0                                      add r3, pc, r3
004719cc  a8 00 80 e2                                      add r0, r0, #0xa8
004719d0  02 20 8f e0                                      add r2, pc, r2
004719d4  00 c0 8d e5                                      str ip, [sp]
004719d8  89 71 fa eb                                      bl #0x30e004
004719dc  08 30 94 e5                                      ldr r3, [r4, #8]
004719e0  ca ff ff ea                                      b #0x471910
004719e4  00 30 83 e5                                      str r3, [r3]
004719e8  08 30 90 e5                                      ldr r3, [r0, #8]
004719ec  c7 ff ff ea                                      b #0x471910
; mapping-symbol data/literal pool
004719f0  88 31 52 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x88, 0x31, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00471a00  14 ca 44 00 70 bc 45 00 80 bc 45 00              .byte 0x14, 0xca, 0x44, 0x00, 0x70, 0xbc, 0x45, 0x00, 0x80, 0xbc, 0x45, 0x00

; FUNCTION 0x00471a0c, declared_size=368, range_size=368, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject13ResetSkinningEv
; demangled: VisualObject::ResetSkinning()
; decoder-mode: arm
00471a0c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00471a10  08 30 90 e5                                      ldr r3, [r0, #8]
00471a14  44 51 9f e5                                      ldr r5, [pc, #0x144]
00471a18  1c d0 4d e2                                      sub sp, sp, #0x1c
00471a1c  00 00 53 e3                                      cmp r3, #0
00471a20  00 40 a0 e1                                      mov r4, r0
00471a24  05 50 8f e0                                      add r5, pc, r5
00471a28  35 00 00 0a                                      beq #0x471b04
00471a2c  30 21 9f e5                                      ldr r2, [pc, #0x130]
00471a30  00 60 a0 e3                                      mov r6, #0
00471a34  0c 60 8d e5                                      str r6, [sp, #0xc]
00471a38  02 20 95 e7                                      ldr r2, [r5, r2]
00471a3c  10 60 8d e5                                      str r6, [sp, #0x10]
00471a40  14 60 8d e5                                      str r6, [sp, #0x14]
00471a44  10 20 92 e5                                      ldr r2, [r2, #0x10]
00471a48  64 11 06 e3                                      movw r1, #0x6164
00471a4c  65 1d 44 e3                                      movt r1, #0x4d65
00471a50  1c c0 92 e5                                      ldr ip, [r2, #0x1c]
00471a54  0c 20 8d e2                                      add r2, sp, #0xc
00471a58  0c 00 a0 e1                                      mov r0, ip
00471a5c  00 c0 9c e5                                      ldr ip, [ip]
00471a60  0f e0 a0 e1                                      mov lr, pc
00471a64  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00471a68  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00471a6c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00471a70  02 20 63 e0                                      rsb r2, r3, r2
00471a74  22 21 b0 e1                                      lsrs r2, r2, #2
00471a78  1b 00 00 0a                                      beq #0x471aec
00471a7c  04 00 a0 e1                                      mov r0, r4
00471a80  06 a1 93 e7                                      ldr sl, [r3, r6, lsl #2]
00471a84  06 fd ff eb                                      bl #0x470ea4
00471a88  00 80 50 e2                                      subs r8, r0, #0
00471a8c  10 00 00 da                                      ble #0x471ad4
00471a90  00 50 a0 e3                                      mov r5, #0
00471a94  05 10 a0 e1                                      mov r1, r5
00471a98  0a 00 a0 e1                                      mov r0, sl
00471a9c  6e 5e 07 eb                                      bl #0x64945c
00471aa0  05 10 a0 e1                                      mov r1, r5
00471aa4  01 20 70 e2                                      rsbs r2, r0, #1
00471aa8  00 20 a0 33                                      movlo r2, #0
00471aac  00 70 a0 e1                                      mov r7, r0
00471ab0  04 00 a0 e1                                      mov r0, r4
00471ab4  d7 fc ff eb                                      bl #0x470e18
00471ab8  05 10 a0 e1                                      mov r1, r5
00471abc  04 00 a0 e1                                      mov r0, r4
00471ac0  07 20 a0 e1                                      mov r2, r7
00471ac4  01 50 85 e2                                      add r5, r5, #1
00471ac8  d2 fc ff eb                                      bl #0x470e18
00471acc  08 00 55 e1                                      cmp r5, r8
00471ad0  ef ff ff 1a                                      bne #0x471a94
00471ad4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00471ad8  10 20 9d e5                                      ldr r2, [sp, #0x10]
00471adc  01 60 86 e2                                      add r6, r6, #1
00471ae0  02 20 63 e0                                      rsb r2, r3, r2
00471ae4  42 01 56 e1                                      cmp r6, r2, asr #2
00471ae8  e3 ff ff 3a                                      blo #0x471a7c
00471aec  00 00 53 e3                                      cmp r3, #0
00471af0  01 00 00 0a                                      beq #0x471afc
00471af4  03 00 a0 e1                                      mov r0, r3
00471af8  54 7a fa eb                                      bl #0x310450
00471afc  1c d0 8d e2                                      add sp, sp, #0x1c
00471b00  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00471b04  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00471b08  02 20 95 e7                                      ldr r2, [r5, r2]
00471b0c  00 20 92 e5                                      ldr r2, [r2]
00471b10  02 00 52 e3                                      cmp r2, #2
00471b14  00 30 83 05                                      streq r3, [r3]
00471b18  08 30 90 05                                      ldreq r3, [r0, #8]
00471b1c  c2 ff ff 0a                                      beq #0x471a2c
00471b20  01 00 52 e3                                      cmp r2, #1
00471b24  c0 ff ff 1a                                      bne #0x471a2c
00471b28  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00471b2c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00471b30  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00471b34  00 00 95 e7                                      ldr r0, [r5, r0]
00471b38  38 30 9f e5                                      ldr r3, [pc, #0x38]
00471b3c  e5 c3 00 e3                                      movw ip, #0x3e5
00471b40  01 10 8f e0                                      add r1, pc, r1
00471b44  03 30 8f e0                                      add r3, pc, r3
00471b48  a8 00 80 e2                                      add r0, r0, #0xa8
00471b4c  02 20 8f e0                                      add r2, pc, r2
00471b50  00 c0 8d e5                                      str ip, [sp]
00471b54  2a 71 fa eb                                      bl #0x30e004
00471b58  08 30 94 e5                                      ldr r3, [r4, #8]
00471b5c  b2 ff ff ea                                      b #0x471a2c
; mapping-symbol data/literal pool
00471b60  6c 30 52 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x6c, 0x30, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00471b70  98 c8 44 00 f4 ba 45 00 04 bb 45 00              .byte 0x98, 0xc8, 0x44, 0x00, 0xf4, 0xba, 0x45, 0x00, 0x04, 0xbb, 0x45, 0x00

; FUNCTION 0x00471b7c, declared_size=584, range_size=584, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject19ApplyMaterialEffectEN6glitch4core8vector3dIfEEff
; demangled: VisualObject::ApplyMaterialEffect(glitch::core::vector3d<float>, float, float)
; decoder-mode: arm
00471b7c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00471b80  00 40 91 e5                                      ldr r4, [r1]
00471b84  3c d0 4d e2                                      sub sp, sp, #0x3c
00471b88  01 50 a0 e1                                      mov r5, r1
00471b8c  00 80 a0 e1                                      mov r8, r0
00471b90  58 10 90 e5                                      ldr r1, [r0, #0x58]
00471b94  04 00 a0 e1                                      mov r0, r4
00471b98  02 a0 a0 e1                                      mov sl, r2
00471b9c  03 60 a0 e1                                      mov r6, r3
00471ba0  f9 70 fa eb                                      bl #0x30df8c
00471ba4  10 72 9f e5                                      ldr r7, [pc, #0x210]
00471ba8  00 00 50 e3                                      cmp r0, #0
00471bac  07 70 8f e0                                      add r7, pc, r7
00471bb0  04 00 00 0a                                      beq #0x471bc8
00471bb4  04 00 95 e5                                      ldr r0, [r5, #4]
00471bb8  5c 10 98 e5                                      ldr r1, [r8, #0x5c]
00471bbc  f2 70 fa eb                                      bl #0x30df8c
00471bc0  00 00 50 e3                                      cmp r0, #0
00471bc4  75 00 00 1a                                      bne #0x471da0
00471bc8  04 00 a0 e1                                      mov r0, r4
00471bcc  bf 14 a0 e3                                      mov r1, #0xbf000000
00471bd0  c8 71 fa eb                                      bl #0x30e2f8
00471bd4  00 00 50 e3                                      cmp r0, #0
00471bd8  00 90 a0 e3                                      mov sb, #0
00471bdc  01 90 a0 13                                      movne sb, #1
00471be0  79 90 ef e6                                      uxtb sb, sb
00471be4  68 00 98 e5                                      ldr r0, [r8, #0x68]
00471be8  0a 10 a0 e1                                      mov r1, sl
00471bec  e6 70 fa eb                                      bl #0x30df8c
00471bf0  00 00 50 e3                                      cmp r0, #0
00471bf4  00 b0 a0 13                                      movne fp, #0
00471bf8  06 00 00 1a                                      bne #0x471c18
00471bfc  0a 00 a0 e1                                      mov r0, sl
00471c00  bf 14 a0 e3                                      mov r1, #0xbf000000
00471c04  bb 71 fa eb                                      bl #0x30e2f8
00471c08  00 00 50 e3                                      cmp r0, #0
00471c0c  00 b0 a0 e3                                      mov fp, #0
00471c10  01 b0 a0 13                                      movne fp, #1
00471c14  7b b0 ef e6                                      uxtb fp, fp
00471c18  64 00 98 e5                                      ldr r0, [r8, #0x64]
00471c1c  06 10 a0 e1                                      mov r1, r6
00471c20  d9 70 fa eb                                      bl #0x30df8c
00471c24  00 00 50 e3                                      cmp r0, #0
00471c28  00 20 a0 13                                      movne r2, #0
00471c2c  06 00 00 1a                                      bne #0x471c4c
00471c30  06 00 a0 e1                                      mov r0, r6
00471c34  bf 14 a0 e3                                      mov r1, #0xbf000000
00471c38  ae 71 fa eb                                      bl #0x30e2f8
00471c3c  00 00 50 e3                                      cmp r0, #0
00471c40  00 30 a0 e3                                      mov r3, #0
00471c44  01 30 a0 13                                      movne r3, #1
00471c48  73 20 ef e6                                      uxtb r2, r3
00471c4c  58 40 88 e5                                      str r4, [r8, #0x58]
00471c50  04 30 95 e5                                      ldr r3, [r5, #4]
00471c54  00 00 59 e3                                      cmp sb, #0
00471c58  5c 30 88 e5                                      str r3, [r8, #0x5c]
00471c5c  08 30 95 e5                                      ldr r3, [r5, #8]
00471c60  68 a0 88 e5                                      str sl, [r8, #0x68]
00471c64  64 60 88 e5                                      str r6, [r8, #0x64]
00471c68  60 30 88 e5                                      str r3, [r8, #0x60]
00471c6c  01 00 00 1a                                      bne #0x471c78
00471c70  00 00 5b e3                                      cmp fp, #0
00471c74  46 00 00 0a                                      beq #0x471d94
00471c78  40 31 9f e5                                      ldr r3, [pc, #0x140]
00471c7c  00 40 a0 e3                                      mov r4, #0
00471c80  2c 40 8d e5                                      str r4, [sp, #0x2c]
00471c84  03 70 97 e7                                      ldr r7, [r7, r3]
00471c88  30 40 8d e5                                      str r4, [sp, #0x30]
00471c8c  34 40 8d e5                                      str r4, [sp, #0x34]
00471c90  10 20 97 e5                                      ldr r2, [r7, #0x10]
00471c94  2c 90 8d e2                                      add sb, sp, #0x2c
00471c98  64 31 06 e3                                      movw r3, #0x6164
00471c9c  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
00471ca0  65 3d 46 e3                                      movt r3, #0x6d65
00471ca4  08 10 98 e5                                      ldr r1, [r8, #8]
00471ca8  09 20 a0 e1                                      mov r2, sb
00471cac  6a 7c fb eb                                      bl #0x350e5c
00471cb0  10 20 97 e5                                      ldr r2, [r7, #0x10]
00471cb4  64 31 06 e3                                      movw r3, #0x6164
00471cb8  65 33 47 e3                                      movt r3, #0x7365
00471cbc  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
00471cc0  08 10 98 e5                                      ldr r1, [r8, #8]
00471cc4  09 20 a0 e1                                      mov r2, sb
00471cc8  63 7c fb eb                                      bl #0x350e5c
00471ccc  10 10 97 e5                                      ldr r1, [r7, #0x10]
00471cd0  64 31 06 e3                                      movw r3, #0x6164
00471cd4  09 20 a0 e1                                      mov r2, sb
00471cd8  1c 00 91 e5                                      ldr r0, [r1, #0x1c]
00471cdc  65 3d 44 e3                                      movt r3, #0x4d65
00471ce0  08 10 98 e5                                      ldr r1, [r8, #8]
00471ce4  5c 7c fb eb                                      bl #0x350e5c
00471ce8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00471cec  30 20 9d e5                                      ldr r2, [sp, #0x30]
00471cf0  02 20 63 e0                                      rsb r2, r3, r2
00471cf4  42 21 b0 e1                                      asrs r2, r2, #2
00471cf8  15 00 00 0a                                      beq #0x471d54
00471cfc  20 90 8d e2                                      add sb, sp, #0x20
00471d00  02 b0 a0 e1                                      mov fp, r2
00471d04  0c 80 8d e5                                      str r8, [sp, #0xc]
00471d08  00 00 00 ea                                      b #0x471d10
00471d0c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00471d10  10 20 97 e5                                      ldr r2, [r7, #0x10]
00471d14  00 80 95 e5                                      ldr r8, [r5]
00471d18  04 e0 95 e5                                      ldr lr, [r5, #4]
00471d1c  08 c0 95 e5                                      ldr ip, [r5, #8]
00471d20  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00471d24  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
00471d28  01 40 84 e2                                      add r4, r4, #1
00471d2c  09 20 a0 e1                                      mov r2, sb
00471d30  0a 30 a0 e1                                      mov r3, sl
00471d34  20 80 8d e5                                      str r8, [sp, #0x20]
00471d38  24 e0 8d e5                                      str lr, [sp, #0x24]
00471d3c  28 c0 8d e5                                      str ip, [sp, #0x28]
00471d40  00 60 8d e5                                      str r6, [sp]
00471d44  db 8b fb eb                                      bl #0x354cb8
00471d48  0b 00 54 e1                                      cmp r4, fp
00471d4c  ee ff ff 1a                                      bne #0x471d0c
00471d50  0c 80 9d e5                                      ldr r8, [sp, #0xc]
00471d54  bf c4 a0 e3                                      mov ip, #0xbf000000
00471d58  02 c5 8c e2                                      add ip, ip, #0x800000
00471d5c  08 00 a0 e1                                      mov r0, r8
00471d60  06 20 a0 e1                                      mov r2, r6
00471d64  0c 30 a0 e1                                      mov r3, ip
00471d68  14 10 8d e2                                      add r1, sp, #0x14
00471d6c  14 c0 8d e5                                      str ip, [sp, #0x14]
00471d70  18 c0 8d e5                                      str ip, [sp, #0x18]
00471d74  1c c0 8d e5                                      str ip, [sp, #0x1c]
00471d78  4d fc ff eb                                      bl #0x470eb4
00471d7c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00471d80  00 00 50 e3                                      cmp r0, #0
00471d84  00 00 00 0a                                      beq #0x471d8c
00471d88  b0 79 fa eb                                      bl #0x310450
00471d8c  3c d0 8d e2                                      add sp, sp, #0x3c
00471d90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00471d94  00 00 52 e3                                      cmp r2, #0
00471d98  b6 ff ff 1a                                      bne #0x471c78
00471d9c  fa ff ff ea                                      b #0x471d8c
00471da0  08 00 95 e5                                      ldr r0, [r5, #8]
00471da4  60 10 98 e5                                      ldr r1, [r8, #0x60]
00471da8  77 70 fa eb                                      bl #0x30df8c
00471dac  00 00 50 e3                                      cmp r0, #0
00471db0  00 90 a0 13                                      movne sb, #0
00471db4  8a ff ff 1a                                      bne #0x471be4
00471db8  82 ff ff ea                                      b #0x471bc8
; mapping-symbol data/literal pool
00471dbc  e4 2e 52 00 f4 37 00 00                          .byte 0xe4, 0x2e, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00471dc4, declared_size=344, range_size=344, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject23ApplyUnlitColorMaterialEv
; demangled: VisualObject::ApplyUnlitColorMaterial()
; decoder-mode: arm
00471dc4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00471dc8  40 81 9f e5                                      ldr r8, [pc, #0x140]
00471dcc  40 21 9f e5                                      ldr r2, [pc, #0x140]
00471dd0  2c d0 4d e2                                      sub sp, sp, #0x2c
00471dd4  08 80 8f e0                                      add r8, pc, r8
00471dd8  02 30 98 e7                                      ldr r3, [r8, r2]
00471ddc  14 20 8d e5                                      str r2, [sp, #0x14]
00471de0  00 40 a0 e3                                      mov r4, #0
00471de4  10 20 93 e5                                      ldr r2, [r3, #0x10]
00471de8  10 00 8d e5                                      str r0, [sp, #0x10]
00471dec  1c 40 8d e5                                      str r4, [sp, #0x1c]
00471df0  20 40 8d e5                                      str r4, [sp, #0x20]
00471df4  24 40 8d e5                                      str r4, [sp, #0x24]
00471df8  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
00471dfc  10 20 9d e5                                      ldr r2, [sp, #0x10]
00471e00  64 31 06 e3                                      movw r3, #0x6164
00471e04  65 33 47 e3                                      movt r3, #0x7365
00471e08  08 10 92 e5                                      ldr r1, [r2, #8]
00471e0c  1c 20 8d e2                                      add r2, sp, #0x1c
00471e10  11 7c fb eb                                      bl #0x350e5c
00471e14  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00471e18  20 50 9d e5                                      ldr r5, [sp, #0x20]
00471e1c  05 50 60 e0                                      rsb r5, r0, r5
00471e20  45 51 b0 e1                                      asrs r5, r5, #2
00471e24  2c 00 00 0a                                      beq #0x471edc
00471e28  e8 60 9f e5                                      ldr r6, [pc, #0xe8]
00471e2c  64 b1 06 e3                                      movw fp, #0x6164
00471e30  65 b3 47 e3                                      movt fp, #0x7365
00471e34  06 60 8f e0                                      add r6, pc, r6
00471e38  01 90 a0 e3                                      mov sb, #1
00471e3c  04 70 a0 e1                                      mov r7, r4
00471e40  03 00 00 ea                                      b #0x471e54
00471e44  01 40 84 e2                                      add r4, r4, #1
00471e48  05 00 54 e1                                      cmp r4, r5
00471e4c  21 00 00 0a                                      beq #0x471ed8
00471e50  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00471e54  04 a1 90 e7                                      ldr sl, [r0, r4, lsl #2]
00471e58  0a 00 a0 e1                                      mov r0, sl
00471e5c  0b 95 04 eb                                      bl #0x597290
00471e60  00 30 90 e5                                      ldr r3, [r0]
00471e64  0f e0 a0 e1                                      mov lr, pc
00471e68  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00471e6c  06 10 a0 e1                                      mov r1, r6
00471e70  09 20 a0 e3                                      mov r2, #9
00471e74  80 73 fa eb                                      bl #0x30ec7c
00471e78  00 00 50 e3                                      cmp r0, #0
00471e7c  f0 ff ff 0a                                      beq #0x471e44
00471e80  0a 00 a0 e1                                      mov r0, sl
00471e84  00 30 9a e5                                      ldr r3, [sl]
00471e88  0f e0 a0 e1                                      mov lr, pc
00471e8c  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00471e90  0b 00 50 e1                                      cmp r0, fp
00471e94  15 00 00 0a                                      beq #0x471ef0
00471e98  14 20 9d e5                                      ldr r2, [sp, #0x14]
00471e9c  00 c0 a0 e3                                      mov ip, #0
00471ea0  02 30 98 e7                                      ldr r3, [r8, r2]
00471ea4  10 20 9d e5                                      ldr r2, [sp, #0x10]
00471ea8  10 30 93 e5                                      ldr r3, [r3, #0x10]
00471eac  08 10 92 e5                                      ldr r1, [r2, #8]
00471eb0  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00471eb4  07 20 a0 e1                                      mov r2, r7
00471eb8  07 30 a0 e1                                      mov r3, r7
00471ebc  01 40 84 e2                                      add r4, r4, #1
00471ec0  0c c0 8d e5                                      str ip, [sp, #0xc]
00471ec4  80 02 8d e8                                      stm sp, {r7, sb}
00471ec8  08 90 8d e5                                      str sb, [sp, #8]
00471ecc  58 91 fb eb                                      bl #0x356434
00471ed0  05 00 54 e1                                      cmp r4, r5
00471ed4  dd ff ff 1a                                      bne #0x471e50
00471ed8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00471edc  00 00 50 e3                                      cmp r0, #0
00471ee0  00 00 00 0a                                      beq #0x471ee8
00471ee4  59 79 fa eb                                      bl #0x310450
00471ee8  2c d0 8d e2                                      add sp, sp, #0x2c
00471eec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00471ef0  14 20 9d e5                                      ldr r2, [sp, #0x14]
00471ef4  01 c0 a0 e3                                      mov ip, #1
00471ef8  02 30 98 e7                                      ldr r3, [r8, r2]
00471efc  10 20 9d e5                                      ldr r2, [sp, #0x10]
00471f00  10 30 93 e5                                      ldr r3, [r3, #0x10]
00471f04  08 10 92 e5                                      ldr r1, [r2, #8]
00471f08  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00471f0c  e8 ff ff ea                                      b #0x471eb4
; mapping-symbol data/literal pool
00471f10  bc 2c 52 00 f4 37 00 00 64 b8 45 00              .byte 0xbc, 0x2c, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x64, 0xb8, 0x45, 0x00

; FUNCTION 0x00471f1c, declared_size=512, range_size=512, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject14SetMeshVisibleEb
; demangled: VisualObject::SetMeshVisible(bool)
; decoder-mode: arm
00471f1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00471f20  00 50 a0 e1                                      mov r5, r0
00471f24  08 00 90 e5                                      ldr r0, [r0, #8]
00471f28  10 d0 4d e2                                      sub sp, sp, #0x10
00471f2c  01 40 a0 e1                                      mov r4, r1
00471f30  00 00 50 e3                                      cmp r0, #0
00471f34  76 00 00 0a                                      beq #0x472114
00471f38  04 60 8d e2                                      add r6, sp, #4
00471f3c  64 11 06 e3                                      movw r1, #0x6164
00471f40  00 30 a0 e3                                      mov r3, #0
00471f44  65 1d 46 e3                                      movt r1, #0x6d65
00471f48  06 20 a0 e1                                      mov r2, r6
00471f4c  0c 30 8d e5                                      str r3, [sp, #0xc]
00471f50  04 30 8d e5                                      str r3, [sp, #4]
00471f54  08 30 8d e5                                      str r3, [sp, #8]
00471f58  9d 9b 04 eb                                      bl #0x598dd4
00471f5c  80 01 9d e9                                      ldmib sp, {r7, r8}
00471f60  08 00 57 e1                                      cmp r7, r8
00471f64  07 00 00 0a                                      beq #0x471f88
00471f68  04 30 97 e4                                      ldr r3, [r7], #4
00471f6c  04 10 a0 e1                                      mov r1, r4
00471f70  03 00 a0 e1                                      mov r0, r3
00471f74  00 30 93 e5                                      ldr r3, [r3]
00471f78  0f e0 a0 e1                                      mov lr, pc
00471f7c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00471f80  08 00 57 e1                                      cmp r7, r8
00471f84  f7 ff ff 1a                                      bne #0x471f68
00471f88  64 11 06 e3                                      movw r1, #0x6164
00471f8c  65 13 47 e3                                      movt r1, #0x7365
00471f90  08 00 95 e5                                      ldr r0, [r5, #8]
00471f94  06 20 a0 e1                                      mov r2, r6
00471f98  8d 9b 04 eb                                      bl #0x598dd4
00471f9c  80 01 9d e9                                      ldmib sp, {r7, r8}
00471fa0  08 00 57 e1                                      cmp r7, r8
00471fa4  07 00 00 0a                                      beq #0x471fc8
00471fa8  04 30 97 e4                                      ldr r3, [r7], #4
00471fac  04 10 a0 e1                                      mov r1, r4
00471fb0  03 00 a0 e1                                      mov r0, r3
00471fb4  00 30 93 e5                                      ldr r3, [r3]
00471fb8  0f e0 a0 e1                                      mov lr, pc
00471fbc  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00471fc0  08 00 57 e1                                      cmp r7, r8
00471fc4  f7 ff ff 1a                                      bne #0x471fa8
00471fc8  64 11 06 e3                                      movw r1, #0x6164
00471fcc  06 20 a0 e1                                      mov r2, r6
00471fd0  65 1d 44 e3                                      movt r1, #0x4d65
00471fd4  08 00 95 e5                                      ldr r0, [r5, #8]
00471fd8  7d 9b 04 eb                                      bl #0x598dd4
00471fdc  c0 00 9d e9                                      ldmib sp, {r6, r7}
00471fe0  07 00 56 e1                                      cmp r6, r7
00471fe4  07 00 00 0a                                      beq #0x472008
00471fe8  04 30 96 e4                                      ldr r3, [r6], #4
00471fec  04 10 a0 e1                                      mov r1, r4
00471ff0  03 00 a0 e1                                      mov r0, r3
00471ff4  00 30 93 e5                                      ldr r3, [r3]
00471ff8  0f e0 a0 e1                                      mov lr, pc
00471ffc  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00472000  07 00 56 e1                                      cmp r6, r7
00472004  f7 ff ff 1a                                      bne #0x471fe8
00472008  98 30 d5 e5                                      ldrb r3, [r5, #0x98]
0047200c  00 00 53 e3                                      cmp r3, #0
00472010  25 00 00 0a                                      beq #0x4720ac
00472014  80 30 95 e5                                      ldr r3, [r5, #0x80]
00472018  84 70 95 e5                                      ldr r7, [r5, #0x84]
0047201c  07 70 63 e0                                      rsb r7, r3, r7
00472020  47 71 a0 e1                                      asr r7, r7, #2
00472024  00 00 57 e3                                      cmp r7, #0
00472028  0c 00 00 0a                                      beq #0x472060
0047202c  0b 00 00 da                                      ble #0x472060
00472030  00 60 a0 e3                                      mov r6, #0
00472034  00 00 00 ea                                      b #0x47203c
00472038  80 30 95 e5                                      ldr r3, [r5, #0x80]
0047203c  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
00472040  04 10 a0 e1                                      mov r1, r4
00472044  01 60 86 e2                                      add r6, r6, #1
00472048  03 00 a0 e1                                      mov r0, r3
0047204c  00 30 93 e5                                      ldr r3, [r3]
00472050  0f e0 a0 e1                                      mov lr, pc
00472054  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00472058  07 00 56 e1                                      cmp r6, r7
0047205c  f5 ff ff 1a                                      bne #0x472038
00472060  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
00472064  90 70 95 e5                                      ldr r7, [r5, #0x90]
00472068  07 70 63 e0                                      rsb r7, r3, r7
0047206c  47 71 a0 e1                                      asr r7, r7, #2
00472070  00 00 57 e3                                      cmp r7, #0
00472074  0c 00 00 0a                                      beq #0x4720ac
00472078  0b 00 00 da                                      ble #0x4720ac
0047207c  00 60 a0 e3                                      mov r6, #0
00472080  00 00 00 ea                                      b #0x472088
00472084  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
00472088  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0047208c  04 10 a0 e1                                      mov r1, r4
00472090  01 60 86 e2                                      add r6, r6, #1
00472094  03 00 a0 e1                                      mov r0, r3
00472098  00 30 93 e5                                      ldr r3, [r3]
0047209c  0f e0 a0 e1                                      mov lr, pc
004720a0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004720a4  07 00 56 e1                                      cmp r6, r7
004720a8  f5 ff ff 1a                                      bne #0x472084
004720ac  a8 30 d5 e5                                      ldrb r3, [r5, #0xa8]
004720b0  00 00 53 e3                                      cmp r3, #0
004720b4  12 00 00 0a                                      beq #0x472104
004720b8  9c 30 95 e5                                      ldr r3, [r5, #0x9c]
004720bc  a0 70 95 e5                                      ldr r7, [r5, #0xa0]
004720c0  07 70 63 e0                                      rsb r7, r3, r7
004720c4  47 71 a0 e1                                      asr r7, r7, #2
004720c8  00 00 57 e3                                      cmp r7, #0
004720cc  0c 00 00 0a                                      beq #0x472104
004720d0  0b 00 00 da                                      ble #0x472104
004720d4  00 60 a0 e3                                      mov r6, #0
004720d8  00 00 00 ea                                      b #0x4720e0
004720dc  9c 30 95 e5                                      ldr r3, [r5, #0x9c]
004720e0  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
004720e4  04 10 a0 e1                                      mov r1, r4
004720e8  01 60 86 e2                                      add r6, r6, #1
004720ec  03 00 a0 e1                                      mov r0, r3
004720f0  00 30 93 e5                                      ldr r3, [r3]
004720f4  0f e0 a0 e1                                      mov lr, pc
004720f8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004720fc  07 00 56 e1                                      cmp r6, r7
00472100  f5 ff ff 1a                                      bne #0x4720dc
00472104  04 00 9d e5                                      ldr r0, [sp, #4]
00472108  00 00 50 e3                                      cmp r0, #0
0047210c  00 00 00 0a                                      beq #0x472114
00472110  ce 78 fa eb                                      bl #0x310450
00472114  10 d0 8d e2                                      add sp, sp, #0x10
00472118  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047211c, declared_size=1516, range_size=1516, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject11CalcMeshBoxEv
; demangled: VisualObject::CalcMeshBox()
; decoder-mode: arm
0047211c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00472120  d4 25 9f e5                                      ldr r2, [pc, #0x5d4]
00472124  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00472128  64 d0 4d e2                                      sub sp, sp, #0x64
0047212c  02 20 8f e0                                      add r2, pc, r2
00472130  00 00 53 e3                                      cmp r3, #0
00472134  08 20 8d e5                                      str r2, [sp, #8]
00472138  00 40 a0 e1                                      mov r4, r0
0047213c  b1 00 00 0a                                      beq #0x472408
00472140  03 00 a0 e1                                      mov r0, r3
00472144  00 30 93 e5                                      ldr r3, [r3]
00472148  0f e0 a0 e1                                      mov lr, pc
0047214c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00472150  00 10 90 e5                                      ldr r1, [r0]
00472154  00 30 a0 e1                                      mov r3, r0
00472158  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0047215c  10 10 84 e5                                      str r1, [r4, #0x10]
00472160  04 10 90 e5                                      ldr r1, [r0, #4]
00472164  02 00 a0 e1                                      mov r0, r2
00472168  14 10 84 e5                                      str r1, [r4, #0x14]
0047216c  08 30 93 e5                                      ldr r3, [r3, #8]
00472170  18 30 84 e5                                      str r3, [r4, #0x18]
00472174  00 30 92 e5                                      ldr r3, [r2]
00472178  0f e0 a0 e1                                      mov lr, pc
0047217c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00472180  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00472184  00 30 a0 e1                                      mov r3, r0
00472188  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0047218c  1c 20 84 e5                                      str r2, [r4, #0x1c]
00472190  10 20 93 e5                                      ldr r2, [r3, #0x10]
00472194  20 20 84 e5                                      str r2, [r4, #0x20]
00472198  14 30 93 e5                                      ldr r3, [r3, #0x14]
0047219c  24 30 84 e5                                      str r3, [r4, #0x24]
004721a0  3a 94 04 eb                                      bl #0x597290
004721a4  00 30 90 e5                                      ldr r3, [r0]
004721a8  0f e0 a0 e1                                      mov lr, pc
004721ac  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004721b0  00 30 a0 e1                                      mov r3, r0
004721b4  00 10 90 e5                                      ldr r1, [r0]
004721b8  10 00 94 e5                                      ldr r0, [r4, #0x10]
004721bc  04 60 93 e5                                      ldr r6, [r3, #4]
004721c0  08 50 93 e5                                      ldr r5, [r3, #8]
004721c4  e8 72 fa eb                                      bl #0x30ed6c
004721c8  06 10 a0 e1                                      mov r1, r6
004721cc  10 00 84 e5                                      str r0, [r4, #0x10]
004721d0  14 00 94 e5                                      ldr r0, [r4, #0x14]
004721d4  e4 72 fa eb                                      bl #0x30ed6c
004721d8  05 10 a0 e1                                      mov r1, r5
004721dc  14 00 84 e5                                      str r0, [r4, #0x14]
004721e0  18 00 94 e5                                      ldr r0, [r4, #0x18]
004721e4  e0 72 fa eb                                      bl #0x30ed6c
004721e8  18 00 84 e5                                      str r0, [r4, #0x18]
004721ec  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004721f0  26 94 04 eb                                      bl #0x597290
004721f4  00 30 90 e5                                      ldr r3, [r0]
004721f8  0f e0 a0 e1                                      mov lr, pc
004721fc  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00472200  00 30 a0 e1                                      mov r3, r0
00472204  00 10 90 e5                                      ldr r1, [r0]
00472208  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0047220c  04 60 93 e5                                      ldr r6, [r3, #4]
00472210  08 50 93 e5                                      ldr r5, [r3, #8]
00472214  d4 72 fa eb                                      bl #0x30ed6c
00472218  06 10 a0 e1                                      mov r1, r6
0047221c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00472220  20 00 94 e5                                      ldr r0, [r4, #0x20]
00472224  d0 72 fa eb                                      bl #0x30ed6c
00472228  05 10 a0 e1                                      mov r1, r5
0047222c  20 00 84 e5                                      str r0, [r4, #0x20]
00472230  24 00 94 e5                                      ldr r0, [r4, #0x24]
00472234  cc 72 fa eb                                      bl #0x30ed6c
00472238  24 00 84 e5                                      str r0, [r4, #0x24]
0047223c  08 30 94 e5                                      ldr r3, [r4, #8]
00472240  10 50 8d e2                                      add r5, sp, #0x10
00472244  00 60 a0 e3                                      mov r6, #0
00472248  03 00 a0 e1                                      mov r0, r3
0047224c  00 30 93 e5                                      ldr r3, [r3]
00472250  0f e0 a0 e1                                      mov lr, pc
00472254  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00472258  41 20 a0 e3                                      mov r2, #0x41
0047225c  00 10 a0 e1                                      mov r1, r0
00472260  05 00 a0 e1                                      mov r0, r5
00472264  50 60 cd e5                                      strb r6, [sp, #0x50]
00472268  7e 71 fa eb                                      bl #0x30e868
0047226c  00 30 a0 e3                                      mov r3, #0
00472270  05 10 a0 e1                                      mov r1, r5
00472274  10 00 84 e2                                      add r0, r4, #0x10
00472278  48 30 8d e5                                      str r3, [sp, #0x48]
0047227c  40 30 8d e5                                      str r3, [sp, #0x40]
00472280  44 30 8d e5                                      str r3, [sp, #0x44]
00472284  50 60 cd e5                                      strb r6, [sp, #0x50]
00472288  c6 82 fa eb                                      bl #0x312da8
0047228c  05 10 a0 e1                                      mov r1, r5
00472290  1c 00 84 e2                                      add r0, r4, #0x1c
00472294  c3 82 fa eb                                      bl #0x312da8
00472298  1c 70 94 e5                                      ldr r7, [r4, #0x1c]
0047229c  10 50 94 e5                                      ldr r5, [r4, #0x10]
004722a0  07 00 a0 e1                                      mov r0, r7
004722a4  05 10 a0 e1                                      mov r1, r5
004722a8  17 71 fa eb                                      bl #0x30e70c
004722ac  05 10 a0 e1                                      mov r1, r5
004722b0  06 00 50 e1                                      cmp r0, r6
004722b4  07 00 a0 e1                                      mov r0, r7
004722b8  07 b0 a0 11                                      movne fp, r7
004722bc  05 b0 a0 01                                      moveq fp, r5
004722c0  0c 70 fa eb                                      bl #0x30e2f8
004722c4  00 00 50 e3                                      cmp r0, #0
004722c8  20 60 94 e5                                      ldr r6, [r4, #0x20]
004722cc  05 70 a0 01                                      moveq r7, r5
004722d0  14 50 94 e5                                      ldr r5, [r4, #0x14]
004722d4  06 00 a0 e1                                      mov r0, r6
004722d8  1c 70 84 e5                                      str r7, [r4, #0x1c]
004722dc  05 10 a0 e1                                      mov r1, r5
004722e0  10 b0 84 e5                                      str fp, [r4, #0x10]
004722e4  08 71 fa eb                                      bl #0x30e70c
004722e8  05 10 a0 e1                                      mov r1, r5
004722ec  00 00 50 e3                                      cmp r0, #0
004722f0  06 00 a0 e1                                      mov r0, r6
004722f4  06 90 a0 11                                      movne sb, r6
004722f8  05 90 a0 01                                      moveq sb, r5
004722fc  fd 6f fa eb                                      bl #0x30e2f8
00472300  00 00 50 e3                                      cmp r0, #0
00472304  18 80 94 e5                                      ldr r8, [r4, #0x18]
00472308  05 60 a0 01                                      moveq r6, r5
0047230c  24 50 94 e5                                      ldr r5, [r4, #0x24]
00472310  08 10 a0 e1                                      mov r1, r8
00472314  20 60 84 e5                                      str r6, [r4, #0x20]
00472318  05 00 a0 e1                                      mov r0, r5
0047231c  14 90 84 e5                                      str sb, [r4, #0x14]
00472320  f9 70 fa eb                                      bl #0x30e70c
00472324  08 10 a0 e1                                      mov r1, r8
00472328  00 00 50 e3                                      cmp r0, #0
0047232c  05 00 a0 e1                                      mov r0, r5
00472330  05 a0 a0 11                                      movne sl, r5
00472334  08 a0 a0 01                                      moveq sl, r8
00472338  ee 6f fa eb                                      bl #0x30e2f8
0047233c  00 00 50 e3                                      cmp r0, #0
00472340  08 50 a0 01                                      moveq r5, r8
00472344  0b 10 a0 e1                                      mov r1, fp
00472348  24 50 84 e5                                      str r5, [r4, #0x24]
0047234c  07 00 a0 e1                                      mov r0, r7
00472350  18 a0 84 e5                                      str sl, [r4, #0x18]
00472354  14 70 fa eb                                      bl #0x30e3ac
00472358  3f 14 a0 e3                                      mov r1, #0x3f000000
0047235c  82 72 fa eb                                      bl #0x30ed6c
00472360  09 10 a0 e1                                      mov r1, sb
00472364  00 70 a0 e1                                      mov r7, r0
00472368  06 00 a0 e1                                      mov r0, r6
0047236c  0e 70 fa eb                                      bl #0x30e3ac
00472370  3f 14 a0 e3                                      mov r1, #0x3f000000
00472374  7c 72 fa eb                                      bl #0x30ed6c
00472378  0a 10 a0 e1                                      mov r1, sl
0047237c  00 80 a0 e1                                      mov r8, r0
00472380  05 00 a0 e1                                      mov r0, r5
00472384  08 70 fa eb                                      bl #0x30e3ac
00472388  3f 14 a0 e3                                      mov r1, #0x3f000000
0047238c  76 72 fa eb                                      bl #0x30ed6c
00472390  08 c0 9d e5                                      ldr ip, [sp, #8]
00472394  64 33 9f e5                                      ldr r3, [pc, #0x364]
00472398  00 60 a0 e1                                      mov r6, r0
0047239c  07 10 a0 e1                                      mov r1, r7
004723a0  03 50 9c e7                                      ldr r5, [ip, r3]
004723a4  00 00 95 e5                                      ldr r0, [r5]
004723a8  ff 6f fa eb                                      bl #0x30e3ac
004723ac  10 00 84 e5                                      str r0, [r4, #0x10]
004723b0  00 10 95 e5                                      ldr r1, [r5]
004723b4  07 00 a0 e1                                      mov r0, r7
004723b8  f9 71 fa eb                                      bl #0x30eba4
004723bc  1c 00 84 e5                                      str r0, [r4, #0x1c]
004723c0  04 00 95 e5                                      ldr r0, [r5, #4]
004723c4  08 10 a0 e1                                      mov r1, r8
004723c8  f7 6f fa eb                                      bl #0x30e3ac
004723cc  14 00 84 e5                                      str r0, [r4, #0x14]
004723d0  04 10 95 e5                                      ldr r1, [r5, #4]
004723d4  08 00 a0 e1                                      mov r0, r8
004723d8  f1 71 fa eb                                      bl #0x30eba4
004723dc  20 00 84 e5                                      str r0, [r4, #0x20]
004723e0  08 00 95 e5                                      ldr r0, [r5, #8]
004723e4  06 10 a0 e1                                      mov r1, r6
004723e8  ef 6f fa eb                                      bl #0x30e3ac
004723ec  18 00 84 e5                                      str r0, [r4, #0x18]
004723f0  08 10 95 e5                                      ldr r1, [r5, #8]
004723f4  06 00 a0 e1                                      mov r0, r6
004723f8  e9 71 fa eb                                      bl #0x30eba4
004723fc  24 00 84 e5                                      str r0, [r4, #0x24]
00472400  64 d0 8d e2                                      add sp, sp, #0x64
00472404  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00472408  08 c0 9d e5                                      ldr ip, [sp, #8]
0047240c  f0 02 9f e5                                      ldr r0, [pc, #0x2f0]
00472410  02 11 e0 e3                                      mvn r1, #0x80000000
00472414  02 15 41 e2                                      sub r1, r1, #0x800000
00472418  00 50 9c e7                                      ldr r5, [ip, r0]
0047241c  02 25 e0 e3                                      mvn r2, #0x800000
00472420  18 10 84 e5                                      str r1, [r4, #0x18]
00472424  10 10 84 e5                                      str r1, [r4, #0x10]
00472428  14 10 84 e5                                      str r1, [r4, #0x14]
0047242c  24 20 84 e5                                      str r2, [r4, #0x24]
00472430  1c 20 84 e5                                      str r2, [r4, #0x1c]
00472434  20 20 84 e5                                      str r2, [r4, #0x20]
00472438  10 20 95 e5                                      ldr r2, [r5, #0x10]
0047243c  5c 30 8d e5                                      str r3, [sp, #0x5c]
00472440  54 30 8d e5                                      str r3, [sp, #0x54]
00472444  58 30 8d e5                                      str r3, [sp, #0x58]
00472448  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
0047244c  54 60 8d e2                                      add r6, sp, #0x54
00472450  64 11 06 e3                                      movw r1, #0x6164
00472454  03 00 a0 e1                                      mov r0, r3
00472458  00 c0 93 e5                                      ldr ip, [r3]
0047245c  65 13 47 e3                                      movt r1, #0x7365
00472460  08 30 94 e5                                      ldr r3, [r4, #8]
00472464  06 20 a0 e1                                      mov r2, r6
00472468  0f e0 a0 e1                                      mov lr, pc
0047246c  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00472470  54 00 9d e5                                      ldr r0, [sp, #0x54]
00472474  58 30 9d e5                                      ldr r3, [sp, #0x58]
00472478  03 30 60 e0                                      rsb r3, r0, r3
0047247c  43 31 b0 e1                                      asrs r3, r3, #2
00472480  0c 30 8d e5                                      str r3, [sp, #0xc]
00472484  81 00 00 0a                                      beq #0x472690
00472488  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0047248c  00 00 52 e3                                      cmp r2, #0
00472490  7a 00 00 0a                                      beq #0x472680
00472494  00 50 a0 e3                                      mov r5, #0
00472498  00 00 00 ea                                      b #0x4724a0
0047249c  54 00 9d e5                                      ldr r0, [sp, #0x54]
004724a0  05 31 90 e7                                      ldr r3, [r0, r5, lsl #2]
004724a4  03 00 a0 e1                                      mov r0, r3
004724a8  00 30 93 e5                                      ldr r3, [r3]
004724ac  0f e0 a0 e1                                      mov lr, pc
004724b0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
004724b4  54 30 9d e5                                      ldr r3, [sp, #0x54]
004724b8  08 a0 90 e5                                      ldr sl, [r0, #8]
004724bc  00 b0 90 e5                                      ldr fp, [r0]
004724c0  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
004724c4  04 90 90 e5                                      ldr sb, [r0, #4]
004724c8  03 00 a0 e1                                      mov r0, r3
004724cc  00 30 93 e5                                      ldr r3, [r3]
004724d0  0f e0 a0 e1                                      mov lr, pc
004724d4  30 f0 93 e5                                      ldr pc, [r3, #0x30]
004724d8  54 20 9d e5                                      ldr r2, [sp, #0x54]
004724dc  00 30 a0 e1                                      mov r3, r0
004724e0  14 60 90 e5                                      ldr r6, [r0, #0x14]
004724e4  0c 80 90 e5                                      ldr r8, [r0, #0xc]
004724e8  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
004724ec  10 70 93 e5                                      ldr r7, [r3, #0x10]
004724f0  66 93 04 eb                                      bl #0x597290
004724f4  00 00 50 e3                                      cmp r0, #0
004724f8  2f 00 00 0a                                      beq #0x4725bc
004724fc  54 30 9d e5                                      ldr r3, [sp, #0x54]
00472500  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00472504  61 93 04 eb                                      bl #0x597290
00472508  00 30 90 e5                                      ldr r3, [r0]
0047250c  0f e0 a0 e1                                      mov lr, pc
00472510  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00472514  00 20 a0 e1                                      mov r2, r0
00472518  04 30 92 e5                                      ldr r3, [r2, #4]
0047251c  08 20 92 e5                                      ldr r2, [r2, #8]
00472520  00 10 90 e5                                      ldr r1, [r0]
00472524  0b 00 a0 e1                                      mov r0, fp
00472528  0c 00 8d e8                                      stm sp, {r2, r3}
0047252c  0e 72 fa eb                                      bl #0x30ed6c
00472530  04 30 9d e5                                      ldr r3, [sp, #4]
00472534  00 b0 a0 e1                                      mov fp, r0
00472538  09 00 a0 e1                                      mov r0, sb
0047253c  03 10 a0 e1                                      mov r1, r3
00472540  09 72 fa eb                                      bl #0x30ed6c
00472544  00 20 9d e5                                      ldr r2, [sp]
00472548  00 90 a0 e1                                      mov sb, r0
0047254c  0a 00 a0 e1                                      mov r0, sl
00472550  02 10 a0 e1                                      mov r1, r2
00472554  04 72 fa eb                                      bl #0x30ed6c
00472558  54 30 9d e5                                      ldr r3, [sp, #0x54]
0047255c  00 a0 a0 e1                                      mov sl, r0
00472560  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00472564  49 93 04 eb                                      bl #0x597290
00472568  00 30 90 e5                                      ldr r3, [r0]
0047256c  0f e0 a0 e1                                      mov lr, pc
00472570  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00472574  00 20 a0 e1                                      mov r2, r0
00472578  04 30 92 e5                                      ldr r3, [r2, #4]
0047257c  08 20 92 e5                                      ldr r2, [r2, #8]
00472580  00 10 90 e5                                      ldr r1, [r0]
00472584  08 00 a0 e1                                      mov r0, r8
00472588  0c 00 8d e8                                      stm sp, {r2, r3}
0047258c  f6 71 fa eb                                      bl #0x30ed6c
00472590  04 30 9d e5                                      ldr r3, [sp, #4]
00472594  00 80 a0 e1                                      mov r8, r0
00472598  07 00 a0 e1                                      mov r0, r7
0047259c  03 10 a0 e1                                      mov r1, r3
004725a0  f1 71 fa eb                                      bl #0x30ed6c
004725a4  00 20 9d e5                                      ldr r2, [sp]
004725a8  00 70 a0 e1                                      mov r7, r0
004725ac  06 00 a0 e1                                      mov r0, r6
004725b0  02 10 a0 e1                                      mov r1, r2
004725b4  ec 71 fa eb                                      bl #0x30ed6c
004725b8  00 60 a0 e1                                      mov r6, r0
004725bc  10 30 94 e5                                      ldr r3, [r4, #0x10]
004725c0  0b 10 a0 e1                                      mov r1, fp
004725c4  01 50 85 e2                                      add r5, r5, #1
004725c8  03 00 a0 e1                                      mov r0, r3
004725cc  04 30 8d e5                                      str r3, [sp, #4]
004725d0  48 6f fa eb                                      bl #0x30e2f8
004725d4  00 00 50 e3                                      cmp r0, #0
004725d8  04 30 9d e5                                      ldr r3, [sp, #4]
004725dc  0b 30 a0 11                                      movne r3, fp
004725e0  14 b0 94 e5                                      ldr fp, [r4, #0x14]
004725e4  10 30 84 e5                                      str r3, [r4, #0x10]
004725e8  09 10 a0 e1                                      mov r1, sb
004725ec  0b 00 a0 e1                                      mov r0, fp
004725f0  40 6f fa eb                                      bl #0x30e2f8
004725f4  00 00 50 e3                                      cmp r0, #0
004725f8  09 b0 a0 11                                      movne fp, sb
004725fc  18 90 94 e5                                      ldr sb, [r4, #0x18]
00472600  0a 10 a0 e1                                      mov r1, sl
00472604  14 b0 84 e5                                      str fp, [r4, #0x14]
00472608  09 00 a0 e1                                      mov r0, sb
0047260c  39 6f fa eb                                      bl #0x30e2f8
00472610  00 00 50 e3                                      cmp r0, #0
00472614  0a 90 a0 11                                      movne sb, sl
00472618  1c a0 94 e5                                      ldr sl, [r4, #0x1c]
0047261c  08 10 a0 e1                                      mov r1, r8
00472620  18 90 84 e5                                      str sb, [r4, #0x18]
00472624  0a 00 a0 e1                                      mov r0, sl
00472628  37 70 fa eb                                      bl #0x30e70c
0047262c  00 00 50 e3                                      cmp r0, #0
00472630  08 a0 a0 11                                      movne sl, r8
00472634  20 80 94 e5                                      ldr r8, [r4, #0x20]
00472638  07 10 a0 e1                                      mov r1, r7
0047263c  1c a0 84 e5                                      str sl, [r4, #0x1c]
00472640  08 00 a0 e1                                      mov r0, r8
00472644  30 70 fa eb                                      bl #0x30e70c
00472648  00 00 50 e3                                      cmp r0, #0
0047264c  07 80 a0 11                                      movne r8, r7
00472650  24 70 94 e5                                      ldr r7, [r4, #0x24]
00472654  20 80 84 e5                                      str r8, [r4, #0x20]
00472658  06 10 a0 e1                                      mov r1, r6
0047265c  07 00 a0 e1                                      mov r0, r7
00472660  29 70 fa eb                                      bl #0x30e70c
00472664  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00472668  00 00 50 e3                                      cmp r0, #0
0047266c  06 70 a0 11                                      movne r7, r6
00472670  03 00 55 e1                                      cmp r5, r3
00472674  24 70 84 e5                                      str r7, [r4, #0x24]
00472678  87 ff ff 1a                                      bne #0x47249c
0047267c  54 00 9d e5                                      ldr r0, [sp, #0x54]
00472680  00 00 50 e3                                      cmp r0, #0
00472684  ec fe ff 0a                                      beq #0x47223c
00472688  70 77 fa eb                                      bl #0x310450
0047268c  ea fe ff ea                                      b #0x47223c
00472690  10 30 95 e5                                      ldr r3, [r5, #0x10]
00472694  64 11 06 e3                                      movw r1, #0x6164
00472698  65 1d 46 e3                                      movt r1, #0x6d65
0047269c  1c c0 93 e5                                      ldr ip, [r3, #0x1c]
004726a0  06 20 a0 e1                                      mov r2, r6
004726a4  08 30 94 e5                                      ldr r3, [r4, #8]
004726a8  0c 00 a0 e1                                      mov r0, ip
004726ac  00 c0 9c e5                                      ldr ip, [ip]
004726b0  0f e0 a0 e1                                      mov lr, pc
004726b4  20 f0 9c e5                                      ldr pc, [ip, #0x20]
004726b8  54 00 9d e5                                      ldr r0, [sp, #0x54]
004726bc  58 30 9d e5                                      ldr r3, [sp, #0x58]
004726c0  03 30 60 e0                                      rsb r3, r0, r3
004726c4  43 31 b0 e1                                      asrs r3, r3, #2
004726c8  0c 30 8d e5                                      str r3, [sp, #0xc]
004726cc  6d ff ff 1a                                      bne #0x472488
004726d0  00 30 a0 e3                                      mov r3, #0
004726d4  00 00 50 e3                                      cmp r0, #0
004726d8  24 30 84 e5                                      str r3, [r4, #0x24]
004726dc  10 30 84 e5                                      str r3, [r4, #0x10]
004726e0  14 30 84 e5                                      str r3, [r4, #0x14]
004726e4  18 30 84 e5                                      str r3, [r4, #0x18]
004726e8  1c 30 84 e5                                      str r3, [r4, #0x1c]
004726ec  20 30 84 e5                                      str r3, [r4, #0x20]
004726f0  42 ff ff 0a                                      beq #0x472400
004726f4  55 77 fa eb                                      bl #0x310450
004726f8  40 ff ff ea                                      b #0x472400
; mapping-symbol data/literal pool
004726fc  64 29 52 00 2c 3f 00 00 f4 37 00 00              .byte 0x64, 0x29, 0x52, 0x00, 0x2c, 0x3f, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00472708, declared_size=164, range_size=164, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject10SetScalingEf
; demangled: VisualObject::SetScaling(float)
; decoder-mode: arm
00472708  30 40 2d e9                                      push {r4, r5, lr}
0047270c  08 30 90 e5                                      ldr r3, [r0, #8]
00472710  14 d0 4d e2                                      sub sp, sp, #0x14
00472714  00 40 a0 e1                                      mov r4, r0
00472718  00 00 53 e3                                      cmp r3, #0
0047271c  20 00 00 0a                                      beq #0x4727a4
00472720  0c 10 8d e5                                      str r1, [sp, #0xc]
00472724  04 10 8d e5                                      str r1, [sp, #4]
00472728  08 10 8d e5                                      str r1, [sp, #8]
0047272c  03 00 a0 e1                                      mov r0, r3
00472730  00 30 93 e5                                      ldr r3, [r3]
00472734  0f e0 a0 e1                                      mov lr, pc
00472738  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0047273c  04 10 9d e5                                      ldr r1, [sp, #4]
00472740  00 50 a0 e1                                      mov r5, r0
00472744  00 00 90 e5                                      ldr r0, [r0]
00472748  0f 6e fa eb                                      bl #0x30df8c
0047274c  00 00 50 e3                                      cmp r0, #0
00472750  09 00 00 0a                                      beq #0x47277c
00472754  04 00 95 e5                                      ldr r0, [r5, #4]
00472758  08 10 9d e5                                      ldr r1, [sp, #8]
0047275c  0a 6e fa eb                                      bl #0x30df8c
00472760  00 00 50 e3                                      cmp r0, #0
00472764  04 00 00 0a                                      beq #0x47277c
00472768  08 00 95 e5                                      ldr r0, [r5, #8]
0047276c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00472770  05 6e fa eb                                      bl #0x30df8c
00472774  00 00 50 e3                                      cmp r0, #0
00472778  09 00 00 1a                                      bne #0x4727a4
0047277c  08 30 94 e5                                      ldr r3, [r4, #8]
00472780  04 10 8d e2                                      add r1, sp, #4
00472784  03 00 a0 e1                                      mov r0, r3
00472788  00 30 93 e5                                      ldr r3, [r3]
0047278c  0f e0 a0 e1                                      mov lr, pc
00472790  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00472794  04 00 a0 e1                                      mov r0, r4
00472798  5f fe ff eb                                      bl #0x47211c
0047279c  04 00 a0 e1                                      mov r0, r4
004727a0  ab f8 ff eb                                      bl #0x470a54
004727a4  14 d0 8d e2                                      add sp, sp, #0x14
004727a8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x004727ac, declared_size=180, range_size=180, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject10SetScalingERK7Point3DIfE
; demangled: VisualObject::SetScaling(Point3D<float> const&)
; decoder-mode: arm
004727ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004727b0  08 30 90 e5                                      ldr r3, [r0, #8]
004727b4  10 d0 4d e2                                      sub sp, sp, #0x10
004727b8  00 50 a0 e1                                      mov r5, r0
004727bc  00 00 53 e3                                      cmp r3, #0
004727c0  01 40 a0 e1                                      mov r4, r1
004727c4  18 00 00 0a                                      beq #0x47282c
004727c8  03 00 a0 e1                                      mov r0, r3
004727cc  00 30 93 e5                                      ldr r3, [r3]
004727d0  0f e0 a0 e1                                      mov lr, pc
004727d4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004727d8  00 70 94 e5                                      ldr r7, [r4]
004727dc  00 10 90 e5                                      ldr r1, [r0]
004727e0  00 60 a0 e1                                      mov r6, r0
004727e4  07 00 a0 e1                                      mov r0, r7
004727e8  e7 6d fa eb                                      bl #0x30df8c
004727ec  00 00 50 e3                                      cmp r0, #0
004727f0  08 80 94 e5                                      ldr r8, [r4, #8]
004727f4  04 40 94 e5                                      ldr r4, [r4, #4]
004727f8  0d 00 00 1a                                      bne #0x472834
004727fc  08 00 95 e5                                      ldr r0, [r5, #8]
00472800  04 10 8d e2                                      add r1, sp, #4
00472804  00 30 90 e5                                      ldr r3, [r0]
00472808  94 30 93 e5                                      ldr r3, [r3, #0x94]
0047280c  04 70 8d e5                                      str r7, [sp, #4]
00472810  08 40 8d e5                                      str r4, [sp, #8]
00472814  0c 80 8d e5                                      str r8, [sp, #0xc]
00472818  33 ff 2f e1                                      blx r3
0047281c  05 00 a0 e1                                      mov r0, r5
00472820  3d fe ff eb                                      bl #0x47211c
00472824  05 00 a0 e1                                      mov r0, r5
00472828  89 f8 ff eb                                      bl #0x470a54
0047282c  10 d0 8d e2                                      add sp, sp, #0x10
00472830  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00472834  04 00 a0 e1                                      mov r0, r4
00472838  04 10 96 e5                                      ldr r1, [r6, #4]
0047283c  d2 6d fa eb                                      bl #0x30df8c
00472840  00 00 50 e3                                      cmp r0, #0
00472844  ec ff ff 0a                                      beq #0x4727fc
00472848  08 10 96 e5                                      ldr r1, [r6, #8]
0047284c  08 00 a0 e1                                      mov r0, r8
00472850  cd 6d fa eb                                      bl #0x30df8c
00472854  00 00 50 e3                                      cmp r0, #0
00472858  f3 ff ff 1a                                      bne #0x47282c
0047285c  e6 ff ff ea                                      b #0x4727fc

; FUNCTION 0x00472860, declared_size=20, range_size=20, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject11SyncScalingEv
; demangled: VisualObject::SyncScaling()
; decoder-mode: arm
00472860  04 10 90 e5                                      ldr r1, [r0, #4]
00472864  00 00 51 e3                                      cmp r1, #0
00472868  1e ff 2f 01                                      bxeq lr
0047286c  12 1e 81 e2                                      add r1, r1, #0x120
00472870  cd ff ff ea                                      b #0x4727ac

; FUNCTION 0x00472874, declared_size=212, range_size=212, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject11SetRotationERK7Point3DIfE
; demangled: VisualObject::SetRotation(Point3D<float> const&)
; decoder-mode: arm
00472874  70 40 2d e9                                      push {r4, r5, r6, lr}
00472878  08 30 90 e5                                      ldr r3, [r0, #8]
0047287c  10 d0 4d e2                                      sub sp, sp, #0x10
00472880  00 40 a0 e1                                      mov r4, r0
00472884  00 00 53 e3                                      cmp r3, #0
00472888  1c 00 00 0a                                      beq #0x472900
0047288c  00 20 91 e5                                      ldr r2, [r1]
00472890  08 30 91 e5                                      ldr r3, [r1, #8]
00472894  0d 00 a0 e1                                      mov r0, sp
00472898  02 21 82 e2                                      add r2, r2, #0x80000000
0047289c  04 10 91 e5                                      ldr r1, [r1, #4]
004728a0  02 31 83 e2                                      add r3, r3, #0x80000000
004728a4  4b a8 fb eb                                      bl #0x35c9d8
004728a8  08 30 94 e5                                      ldr r3, [r4, #8]
004728ac  0d 50 a0 e1                                      mov r5, sp
004728b0  03 00 a0 e1                                      mov r0, r3
004728b4  00 30 93 e5                                      ldr r3, [r3]
004728b8  0f e0 a0 e1                                      mov lr, pc
004728bc  98 f0 93 e5                                      ldr pc, [r3, #0x98]
004728c0  00 10 9d e5                                      ldr r1, [sp]
004728c4  00 60 a0 e1                                      mov r6, r0
004728c8  00 00 90 e5                                      ldr r0, [r0]
004728cc  ae 6d fa eb                                      bl #0x30df8c
004728d0  00 00 50 e3                                      cmp r0, #0
004728d4  0b 00 00 1a                                      bne #0x472908
004728d8  08 30 94 e5                                      ldr r3, [r4, #8]
004728dc  0d 10 a0 e1                                      mov r1, sp
004728e0  03 00 a0 e1                                      mov r0, r3
004728e4  00 30 93 e5                                      ldr r3, [r3]
004728e8  0f e0 a0 e1                                      mov lr, pc
004728ec  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
004728f0  04 00 a0 e1                                      mov r0, r4
004728f4  08 fe ff eb                                      bl #0x47211c
004728f8  04 00 a0 e1                                      mov r0, r4
004728fc  54 f8 ff eb                                      bl #0x470a54
00472900  10 d0 8d e2                                      add sp, sp, #0x10
00472904  70 80 bd e8                                      pop {r4, r5, r6, pc}
00472908  04 00 96 e5                                      ldr r0, [r6, #4]
0047290c  04 10 9d e5                                      ldr r1, [sp, #4]
00472910  9d 6d fa eb                                      bl #0x30df8c
00472914  00 00 50 e3                                      cmp r0, #0
00472918  ee ff ff 0a                                      beq #0x4728d8
0047291c  08 00 96 e5                                      ldr r0, [r6, #8]
00472920  08 10 9d e5                                      ldr r1, [sp, #8]
00472924  98 6d fa eb                                      bl #0x30df8c
00472928  00 00 50 e3                                      cmp r0, #0
0047292c  e9 ff ff 0a                                      beq #0x4728d8
00472930  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00472934  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00472938  93 6d fa eb                                      bl #0x30df8c
0047293c  00 00 50 e3                                      cmp r0, #0
00472940  ee ff ff 1a                                      bne #0x472900
00472944  e3 ff ff ea                                      b #0x4728d8

; FUNCTION 0x00472948, declared_size=20, range_size=20, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject12SyncRotationEv
; demangled: VisualObject::SyncRotation()
; decoder-mode: arm
00472948  04 10 90 e5                                      ldr r1, [r0, #4]
0047294c  00 00 51 e3                                      cmp r1, #0
00472950  1e ff 2f 01                                      bxeq lr
00472954  5b 1f 81 e2                                      add r1, r1, #0x16c
00472958  c5 ff ff ea                                      b #0x472874

; FUNCTION 0x0047295c, declared_size=176, range_size=176, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject9SetParentEP10GameObject
; demangled: VisualObject::SetParent(GameObject*)
; decoder-mode: arm
0047295c  70 40 2d e9                                      push {r4, r5, r6, lr}
00472960  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
00472964  00 00 51 e3                                      cmp r1, #0
00472968  04 10 80 e5                                      str r1, [r0, #4]
0047296c  00 50 a0 e1                                      mov r5, r0
00472970  04 40 8f e0                                      add r4, pc, r4
00472974  13 00 00 0a                                      beq #0x4729c8
00472978  84 30 d1 e5                                      ldrb r3, [r1, #0x84]
0047297c  00 00 53 e3                                      cmp r3, #0
00472980  07 00 00 1a                                      bne #0x4729a4
00472984  05 00 a0 e1                                      mov r0, r5
00472988  39 64 fc eb                                      bl #0x38ba74
0047298c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00472990  08 00 95 e5                                      ldr r0, [r5, #8]
00472994  01 10 a0 e3                                      mov r1, #1
00472998  03 20 94 e7                                      ldr r2, [r4, r3]
0047299c  70 40 bd e8                                      pop {r4, r5, r6, lr}
004729a0  b7 6e 02 ea                                      b #0x50e484
004729a4  01 00 a0 e1                                      mov r0, r1
004729a8  00 30 91 e5                                      ldr r3, [r1]
004729ac  0f e0 a0 e1                                      mov lr, pc
004729b0  80 f0 93 e5                                      ldr pc, [r3, #0x80]
004729b4  00 00 50 e3                                      cmp r0, #0
004729b8  03 00 00 0a                                      beq #0x4729cc
004729bc  04 30 95 e5                                      ldr r3, [r5, #4]
004729c0  00 00 53 e3                                      cmp r3, #0
004729c4  ee ff ff 1a                                      bne #0x472984
004729c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004729cc  05 00 a0 e1                                      mov r0, r5
004729d0  27 64 fc eb                                      bl #0x38ba74
004729d4  08 60 95 e5                                      ldr r6, [r5, #8]
004729d8  00 30 96 e5                                      ldr r3, [r6]
004729dc  06 00 a0 e1                                      mov r0, r6
004729e0  a4 40 93 e5                                      ldr r4, [r3, #0xa4]
004729e4  0f e0 a0 e1                                      mov lr, pc
004729e8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
004729ec  00 10 a0 e1                                      mov r1, r0
004729f0  06 00 a0 e1                                      mov r0, r6
004729f4  34 ff 2f e1                                      blx r4
004729f8  08 00 95 e5                                      ldr r0, [r5, #8]
004729fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00472a00  06 72 02 ea                                      b #0x50f220
; mapping-symbol data/literal pool
00472a04  20 21 52 00 74 30 00 00                          .byte 0x20, 0x21, 0x52, 0x00, 0x74, 0x30, 0x00, 0x00

; FUNCTION 0x00472a0c, declared_size=592, range_size=592, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObjectC1EP10GameObjectRKSsS3_
; demangled: VisualObject::VisualObject(GameObject*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00472a0c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00472a10  34 62 9f e5                                      ldr r6, [pc, #0x234]
00472a14  34 52 9f e5                                      ldr r5, [pc, #0x234]
00472a18  bf c4 a0 e3                                      mov ip, #0xbf000000
00472a1c  06 60 8f e0                                      add r6, pc, r6
00472a20  05 50 96 e7                                      ldr r5, [r6, r5]
00472a24  00 e0 a0 e3                                      mov lr, #0
00472a28  02 c5 8c e2                                      add ip, ip, #0x800000
00472a2c  01 70 a0 e1                                      mov r7, r1
00472a30  08 10 85 e2                                      add r1, r5, #8
00472a34  00 50 a0 e3                                      mov r5, #0
00472a38  03 80 a0 e1                                      mov r8, r3
00472a3c  0c d0 4d e2                                      sub sp, sp, #0xc
00472a40  00 10 80 e5                                      str r1, [r0]
00472a44  24 e0 80 e5                                      str lr, [r0, #0x24]
00472a48  74 c0 80 e5                                      str ip, [r0, #0x74]
00472a4c  10 e0 80 e5                                      str lr, [r0, #0x10]
00472a50  14 e0 80 e5                                      str lr, [r0, #0x14]
00472a54  18 e0 80 e5                                      str lr, [r0, #0x18]
00472a58  1c e0 80 e5                                      str lr, [r0, #0x1c]
00472a5c  20 e0 80 e5                                      str lr, [r0, #0x20]
00472a60  58 c0 80 e5                                      str ip, [r0, #0x58]
00472a64  5c c0 80 e5                                      str ip, [r0, #0x5c]
00472a68  60 c0 80 e5                                      str ip, [r0, #0x60]
00472a6c  64 c0 80 e5                                      str ip, [r0, #0x64]
00472a70  68 c0 80 e5                                      str ip, [r0, #0x68]
00472a74  04 70 80 e5                                      str r7, [r0, #4]
00472a78  08 50 80 e5                                      str r5, [r0, #8]
00472a7c  0c 50 80 e5                                      str r5, [r0, #0xc]
00472a80  28 50 c0 e5                                      strb r5, [r0, #0x28]
00472a84  2c 50 80 e5                                      str r5, [r0, #0x2c]
00472a88  30 50 80 e5                                      str r5, [r0, #0x30]
00472a8c  34 50 80 e5                                      str r5, [r0, #0x34]
00472a90  38 50 80 e5                                      str r5, [r0, #0x38]
00472a94  3c 50 c0 e5                                      strb r5, [r0, #0x3c]
00472a98  40 50 80 e5                                      str r5, [r0, #0x40]
00472a9c  44 50 80 e5                                      str r5, [r0, #0x44]
00472aa0  48 50 80 e5                                      str r5, [r0, #0x48]
00472aa4  4c 50 80 e5                                      str r5, [r0, #0x4c]
00472aa8  50 50 80 e5                                      str r5, [r0, #0x50]
00472aac  54 50 80 e5                                      str r5, [r0, #0x54]
00472ab0  6c 50 c0 e5                                      strb r5, [r0, #0x6c]
00472ab4  7c 50 c0 e5                                      strb r5, [r0, #0x7c]
00472ab8  7d 50 c0 e5                                      strb r5, [r0, #0x7d]
00472abc  7e 50 c0 e5                                      strb r5, [r0, #0x7e]
00472ac0  7f 50 c0 e5                                      strb r5, [r0, #0x7f]
00472ac4  80 50 80 e5                                      str r5, [r0, #0x80]
00472ac8  84 50 80 e5                                      str r5, [r0, #0x84]
00472acc  88 50 80 e5                                      str r5, [r0, #0x88]
00472ad0  8c 50 80 e5                                      str r5, [r0, #0x8c]
00472ad4  90 50 80 e5                                      str r5, [r0, #0x90]
00472ad8  94 50 80 e5                                      str r5, [r0, #0x94]
00472adc  9c 50 80 e5                                      str r5, [r0, #0x9c]
00472ae0  a0 50 80 e5                                      str r5, [r0, #0xa0]
00472ae4  a4 50 80 e5                                      str r5, [r0, #0xa4]
00472ae8  a9 50 c0 e5                                      strb r5, [r0, #0xa9]
00472aec  02 a0 a0 e1                                      mov sl, r2
00472af0  00 40 a0 e1                                      mov r4, r0
00472af4  9a 5e 02 eb                                      bl #0x50a564
00472af8  10 c0 98 e5                                      ldr ip, [r8, #0x10]
00472afc  14 20 98 e5                                      ldr r2, [r8, #0x14]
00472b00  14 10 9a e5                                      ldr r1, [sl, #0x14]
00472b04  05 30 a0 e1                                      mov r3, r5
00472b08  02 00 5c e1                                      cmp ip, r2
00472b0c  05 20 a0 01                                      moveq r2, r5
00472b10  02 c1 e0 e3                                      mvn ip, #0x80000000
00472b14  00 c0 8d e5                                      str ip, [sp]
00472b18  79 5e 02 eb                                      bl #0x50a504
00472b1c  05 00 50 e1                                      cmp r0, r5
00472b20  08 00 84 e5                                      str r0, [r4, #8]
00472b24  45 00 00 0a                                      beq #0x472c40
00472b28  07 10 a0 e1                                      mov r1, r7
00472b2c  04 00 a0 e1                                      mov r0, r4
00472b30  89 ff ff eb                                      bl #0x47295c
00472b34  08 00 94 e5                                      ldr r0, [r4, #8]
00472b38  45 a7 fb eb                                      bl #0x35c854
00472b3c  04 00 a0 e1                                      mov r0, r4
00472b40  6a fb ff eb                                      bl #0x4718f0
00472b44  08 31 9f e5                                      ldr r3, [pc, #0x108]
00472b48  08 10 94 e5                                      ldr r1, [r4, #8]
00472b4c  03 50 96 e7                                      ldr r5, [r6, r3]
00472b50  10 30 95 e5                                      ldr r3, [r5, #0x10]
00472b54  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00472b58  04 30 93 e5                                      ldr r3, [r3, #4]
00472b5c  03 00 a0 e1                                      mov r0, r3
00472b60  00 30 93 e5                                      ldr r3, [r3]
00472b64  0f e0 a0 e1                                      mov lr, pc
00472b68  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00472b6c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00472b70  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00472b74  d9 78 fb eb                                      bl #0x350ee0
00472b78  10 30 95 e5                                      ldr r3, [r5, #0x10]
00472b7c  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
00472b80  08 10 94 e5                                      ldr r1, [r4, #8]
00472b84  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00472b88  02 20 8f e0                                      add r2, pc, r2
00472b8c  01 30 a0 e3                                      mov r3, #1
00472b90  53 9d fb eb                                      bl #0x35a0e4
00472b94  00 20 50 e2                                      subs r2, r0, #0
00472b98  1a 00 00 0a                                      beq #0x472c08
00472b9c  01 30 a0 e3                                      mov r3, #1
00472ba0  28 30 c4 e5                                      strb r3, [r4, #0x28]
00472ba4  10 30 95 e5                                      ldr r3, [r5, #0x10]
00472ba8  64 11 06 e3                                      movw r1, #0x6164
00472bac  65 1d 46 e3                                      movt r1, #0x6d65
00472bb0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00472bb4  03 00 a0 e1                                      mov r0, r3
00472bb8  00 30 93 e5                                      ldr r3, [r3]
00472bbc  0f e0 a0 e1                                      mov lr, pc
00472bc0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00472bc4  00 00 50 e3                                      cmp r0, #0
00472bc8  0c 00 84 e5                                      str r0, [r4, #0xc]
00472bcc  06 00 00 0a                                      beq #0x472bec
00472bd0  00 30 90 e5                                      ldr r3, [r0]
00472bd4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00472bd8  03 00 80 e0                                      add r0, r0, r3
00472bdc  04 30 90 e5                                      ldr r3, [r0, #4]
00472be0  01 30 83 e2                                      add r3, r3, #1
00472be4  04 30 80 e5                                      str r3, [r0, #4]
00472be8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00472bec  00 10 a0 e3                                      mov r1, #0
00472bf0  38 11 c0 e5                                      strb r1, [r0, #0x138]
00472bf4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00472bf8  03 00 a0 e1                                      mov r0, r3
00472bfc  00 30 93 e5                                      ldr r3, [r3]
00472c00  0f e0 a0 e1                                      mov lr, pc
00472c04  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00472c08  04 00 a0 e1                                      mov r0, r4
00472c0c  42 fd ff eb                                      bl #0x47211c
00472c10  04 00 a0 e1                                      mov r0, r4
00472c14  8e f7 ff eb                                      bl #0x470a54
00472c18  00 10 a0 e3                                      mov r1, #0
00472c1c  08 00 a0 e3                                      mov r0, #8
00472c20  52 76 fa eb                                      bl #0x310570
00472c24  08 10 94 e5                                      ldr r1, [r4, #8]
00472c28  00 50 a0 e1                                      mov r5, r0
00472c2c  00 20 a0 e3                                      mov r2, #0
00472c30  3e 08 00 eb                                      bl #0x474d30
00472c34  04 00 a0 e1                                      mov r0, r4
00472c38  05 10 a0 e1                                      mov r1, r5
00472c3c  90 f7 ff eb                                      bl #0x470a84
00472c40  04 00 a0 e1                                      mov r0, r4
00472c44  0c d0 8d e2                                      add sp, sp, #0xc
00472c48  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00472c4c  74 20 52 00 94 1e 00 00 f4 37 00 00 20 ab 45 00  .byte 0x74, 0x20, 0x52, 0x00, 0x94, 0x1e, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x20, 0xab, 0x45, 0x00

; FUNCTION 0x00472c5c, declared_size=592, range_size=592, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObjectC2EP10GameObjectRKSsS3_
; demangled: VisualObject::VisualObject(GameObject*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00472c5c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00472c60  34 62 9f e5                                      ldr r6, [pc, #0x234]
00472c64  34 52 9f e5                                      ldr r5, [pc, #0x234]
00472c68  bf c4 a0 e3                                      mov ip, #0xbf000000
00472c6c  06 60 8f e0                                      add r6, pc, r6
00472c70  05 50 96 e7                                      ldr r5, [r6, r5]
00472c74  00 e0 a0 e3                                      mov lr, #0
00472c78  02 c5 8c e2                                      add ip, ip, #0x800000
00472c7c  01 70 a0 e1                                      mov r7, r1
00472c80  08 10 85 e2                                      add r1, r5, #8
00472c84  00 50 a0 e3                                      mov r5, #0
00472c88  03 80 a0 e1                                      mov r8, r3
00472c8c  0c d0 4d e2                                      sub sp, sp, #0xc
00472c90  00 10 80 e5                                      str r1, [r0]
00472c94  24 e0 80 e5                                      str lr, [r0, #0x24]
00472c98  74 c0 80 e5                                      str ip, [r0, #0x74]
00472c9c  10 e0 80 e5                                      str lr, [r0, #0x10]
00472ca0  14 e0 80 e5                                      str lr, [r0, #0x14]
00472ca4  18 e0 80 e5                                      str lr, [r0, #0x18]
00472ca8  1c e0 80 e5                                      str lr, [r0, #0x1c]
00472cac  20 e0 80 e5                                      str lr, [r0, #0x20]
00472cb0  58 c0 80 e5                                      str ip, [r0, #0x58]
00472cb4  5c c0 80 e5                                      str ip, [r0, #0x5c]
00472cb8  60 c0 80 e5                                      str ip, [r0, #0x60]
00472cbc  64 c0 80 e5                                      str ip, [r0, #0x64]
00472cc0  68 c0 80 e5                                      str ip, [r0, #0x68]
00472cc4  04 70 80 e5                                      str r7, [r0, #4]
00472cc8  08 50 80 e5                                      str r5, [r0, #8]
00472ccc  0c 50 80 e5                                      str r5, [r0, #0xc]
00472cd0  28 50 c0 e5                                      strb r5, [r0, #0x28]
00472cd4  2c 50 80 e5                                      str r5, [r0, #0x2c]
00472cd8  30 50 80 e5                                      str r5, [r0, #0x30]
00472cdc  34 50 80 e5                                      str r5, [r0, #0x34]
00472ce0  38 50 80 e5                                      str r5, [r0, #0x38]
00472ce4  3c 50 c0 e5                                      strb r5, [r0, #0x3c]
00472ce8  40 50 80 e5                                      str r5, [r0, #0x40]
00472cec  44 50 80 e5                                      str r5, [r0, #0x44]
00472cf0  48 50 80 e5                                      str r5, [r0, #0x48]
00472cf4  4c 50 80 e5                                      str r5, [r0, #0x4c]
00472cf8  50 50 80 e5                                      str r5, [r0, #0x50]
00472cfc  54 50 80 e5                                      str r5, [r0, #0x54]
00472d00  6c 50 c0 e5                                      strb r5, [r0, #0x6c]
00472d04  7c 50 c0 e5                                      strb r5, [r0, #0x7c]
00472d08  7d 50 c0 e5                                      strb r5, [r0, #0x7d]
00472d0c  7e 50 c0 e5                                      strb r5, [r0, #0x7e]
00472d10  7f 50 c0 e5                                      strb r5, [r0, #0x7f]
00472d14  80 50 80 e5                                      str r5, [r0, #0x80]
00472d18  84 50 80 e5                                      str r5, [r0, #0x84]
00472d1c  88 50 80 e5                                      str r5, [r0, #0x88]
00472d20  8c 50 80 e5                                      str r5, [r0, #0x8c]
00472d24  90 50 80 e5                                      str r5, [r0, #0x90]
00472d28  94 50 80 e5                                      str r5, [r0, #0x94]
00472d2c  9c 50 80 e5                                      str r5, [r0, #0x9c]
00472d30  a0 50 80 e5                                      str r5, [r0, #0xa0]
00472d34  a4 50 80 e5                                      str r5, [r0, #0xa4]
00472d38  a9 50 c0 e5                                      strb r5, [r0, #0xa9]
00472d3c  02 a0 a0 e1                                      mov sl, r2
00472d40  00 40 a0 e1                                      mov r4, r0
00472d44  06 5e 02 eb                                      bl #0x50a564
00472d48  10 c0 98 e5                                      ldr ip, [r8, #0x10]
00472d4c  14 20 98 e5                                      ldr r2, [r8, #0x14]
00472d50  14 10 9a e5                                      ldr r1, [sl, #0x14]
00472d54  05 30 a0 e1                                      mov r3, r5
00472d58  02 00 5c e1                                      cmp ip, r2
00472d5c  05 20 a0 01                                      moveq r2, r5
00472d60  02 c1 e0 e3                                      mvn ip, #0x80000000
00472d64  00 c0 8d e5                                      str ip, [sp]
00472d68  e5 5d 02 eb                                      bl #0x50a504
00472d6c  05 00 50 e1                                      cmp r0, r5
00472d70  08 00 84 e5                                      str r0, [r4, #8]
00472d74  45 00 00 0a                                      beq #0x472e90
00472d78  07 10 a0 e1                                      mov r1, r7
00472d7c  04 00 a0 e1                                      mov r0, r4
00472d80  f5 fe ff eb                                      bl #0x47295c
00472d84  08 00 94 e5                                      ldr r0, [r4, #8]
00472d88  b1 a6 fb eb                                      bl #0x35c854
00472d8c  04 00 a0 e1                                      mov r0, r4
00472d90  d6 fa ff eb                                      bl #0x4718f0
00472d94  08 31 9f e5                                      ldr r3, [pc, #0x108]
00472d98  08 10 94 e5                                      ldr r1, [r4, #8]
00472d9c  03 50 96 e7                                      ldr r5, [r6, r3]
00472da0  10 30 95 e5                                      ldr r3, [r5, #0x10]
00472da4  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00472da8  04 30 93 e5                                      ldr r3, [r3, #4]
00472dac  03 00 a0 e1                                      mov r0, r3
00472db0  00 30 93 e5                                      ldr r3, [r3]
00472db4  0f e0 a0 e1                                      mov lr, pc
00472db8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00472dbc  10 30 95 e5                                      ldr r3, [r5, #0x10]
00472dc0  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00472dc4  45 78 fb eb                                      bl #0x350ee0
00472dc8  10 30 95 e5                                      ldr r3, [r5, #0x10]
00472dcc  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
00472dd0  08 10 94 e5                                      ldr r1, [r4, #8]
00472dd4  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00472dd8  02 20 8f e0                                      add r2, pc, r2
00472ddc  01 30 a0 e3                                      mov r3, #1
00472de0  bf 9c fb eb                                      bl #0x35a0e4
00472de4  00 20 50 e2                                      subs r2, r0, #0
00472de8  1a 00 00 0a                                      beq #0x472e58
00472dec  01 30 a0 e3                                      mov r3, #1
00472df0  28 30 c4 e5                                      strb r3, [r4, #0x28]
00472df4  10 30 95 e5                                      ldr r3, [r5, #0x10]
00472df8  64 11 06 e3                                      movw r1, #0x6164
00472dfc  65 1d 46 e3                                      movt r1, #0x6d65
00472e00  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00472e04  03 00 a0 e1                                      mov r0, r3
00472e08  00 30 93 e5                                      ldr r3, [r3]
00472e0c  0f e0 a0 e1                                      mov lr, pc
00472e10  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00472e14  00 00 50 e3                                      cmp r0, #0
00472e18  0c 00 84 e5                                      str r0, [r4, #0xc]
00472e1c  06 00 00 0a                                      beq #0x472e3c
00472e20  00 30 90 e5                                      ldr r3, [r0]
00472e24  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00472e28  03 00 80 e0                                      add r0, r0, r3
00472e2c  04 30 90 e5                                      ldr r3, [r0, #4]
00472e30  01 30 83 e2                                      add r3, r3, #1
00472e34  04 30 80 e5                                      str r3, [r0, #4]
00472e38  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00472e3c  00 10 a0 e3                                      mov r1, #0
00472e40  38 11 c0 e5                                      strb r1, [r0, #0x138]
00472e44  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00472e48  03 00 a0 e1                                      mov r0, r3
00472e4c  00 30 93 e5                                      ldr r3, [r3]
00472e50  0f e0 a0 e1                                      mov lr, pc
00472e54  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00472e58  04 00 a0 e1                                      mov r0, r4
00472e5c  ae fc ff eb                                      bl #0x47211c
00472e60  04 00 a0 e1                                      mov r0, r4
00472e64  fa f6 ff eb                                      bl #0x470a54
00472e68  00 10 a0 e3                                      mov r1, #0
00472e6c  08 00 a0 e3                                      mov r0, #8
00472e70  be 75 fa eb                                      bl #0x310570
00472e74  08 10 94 e5                                      ldr r1, [r4, #8]
00472e78  00 50 a0 e1                                      mov r5, r0
00472e7c  00 20 a0 e3                                      mov r2, #0
00472e80  aa 07 00 eb                                      bl #0x474d30
00472e84  04 00 a0 e1                                      mov r0, r4
00472e88  05 10 a0 e1                                      mov r1, r5
00472e8c  fc f6 ff eb                                      bl #0x470a84
00472e90  04 00 a0 e1                                      mov r0, r4
00472e94  0c d0 8d e2                                      add sp, sp, #0xc
00472e98  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00472e9c  24 1e 52 00 94 1e 00 00 f4 37 00 00 d0 a8 45 00  .byte 0x24, 0x1e, 0x52, 0x00, 0x94, 0x1e, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xd0, 0xa8, 0x45, 0x00

; FUNCTION 0x004732ac, declared_size=736, range_size=736, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject16CreateShadowMeshEv
; demangled: VisualObject::CreateShadowMesh()
; decoder-mode: arm
004732ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004732b0  00 60 a0 e1                                      mov r6, r0
004732b4  08 00 90 e5                                      ldr r0, [r0, #8]
004732b8  c4 82 9f e5                                      ldr r8, [pc, #0x2c4]
004732bc  3c d0 4d e2                                      sub sp, sp, #0x3c
004732c0  00 00 50 e3                                      cmp r0, #0
004732c4  08 80 8f e0                                      add r8, pc, r8
004732c8  a9 00 00 0a                                      beq #0x473574
004732cc  01 30 a0 e3                                      mov r3, #1
004732d0  14 20 8d e2                                      add r2, sp, #0x14
004732d4  0c 20 8d e5                                      str r2, [sp, #0xc]
004732d8  64 11 06 e3                                      movw r1, #0x6164
004732dc  98 30 c6 e5                                      strb r3, [r6, #0x98]
004732e0  00 50 a0 e3                                      mov r5, #0
004732e4  65 13 47 e3                                      movt r1, #0x7365
004732e8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
004732ec  14 50 8d e5                                      str r5, [sp, #0x14]
004732f0  18 50 8d e5                                      str r5, [sp, #0x18]
004732f4  1c 50 8d e5                                      str r5, [sp, #0x1c]
004732f8  b5 96 04 eb                                      bl #0x598dd4
004732fc  14 30 9d e5                                      ldr r3, [sp, #0x14]
00473300  18 10 9d e5                                      ldr r1, [sp, #0x18]
00473304  38 20 8d e2                                      add r2, sp, #0x38
00473308  04 50 22 e5                                      str r5, [r2, #-4]!
0047330c  01 10 63 e0                                      rsb r1, r3, r1
00473310  41 11 a0 e1                                      asr r1, r1, #2
00473314  80 00 86 e2                                      add r0, r6, #0x80
00473318  7c ff ff eb                                      bl #0x473110
0047331c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00473320  14 a0 9d e5                                      ldr sl, [sp, #0x14]
00473324  00 30 8d e5                                      str r3, [sp]
00473328  03 00 5a e1                                      cmp sl, r3
0047332c  92 00 00 0a                                      beq #0x47357c
00473330  50 92 9f e5                                      ldr sb, [pc, #0x250]
00473334  30 20 8d e2                                      add r2, sp, #0x30
00473338  2c 30 8d e2                                      add r3, sp, #0x2c
0047333c  08 20 8d e5                                      str r2, [sp, #8]
00473340  04 30 8d e5                                      str r3, [sp, #4]
00473344  05 b0 9a e7                                      ldr fp, [sl, r5]
00473348  08 00 9d e5                                      ldr r0, [sp, #8]
0047334c  0b 10 a0 e1                                      mov r1, fp
00473350  00 30 9b e5                                      ldr r3, [fp]
00473354  0f e0 a0 e1                                      mov lr, pc
00473358  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
0047335c  30 40 9d e5                                      ldr r4, [sp, #0x30]
00473360  00 00 54 e3                                      cmp r4, #0
00473364  06 00 00 0a                                      beq #0x473384
00473368  04 30 94 e5                                      ldr r3, [r4, #4]
0047336c  01 30 83 e2                                      add r3, r3, #1
00473370  04 30 84 e5                                      str r3, [r4, #4]
00473374  30 00 9d e5                                      ldr r0, [sp, #0x30]
00473378  00 00 50 e3                                      cmp r0, #0
0047337c  00 00 00 0a                                      beq #0x473384
00473380  7f a8 fa eb                                      bl #0x31d584
00473384  00 10 a0 e3                                      mov r1, #0
00473388  01 00 54 e1                                      cmp r4, r1
0047338c  2c 40 8d e5                                      str r4, [sp, #0x2c]
00473390  04 30 94 15                                      ldrne r3, [r4, #4]
00473394  6b 0f a0 e3                                      mov r0, #0x1ac
00473398  01 30 83 12                                      addne r3, r3, #1
0047339c  04 30 84 15                                      strne r3, [r4, #4]
004733a0  81 03 03 eb                                      bl #0x5341ac
004733a4  04 10 9d e5                                      ldr r1, [sp, #4]
004733a8  0b 20 a0 e1                                      mov r2, fp
004733ac  00 70 a0 e1                                      mov r7, r0
004733b0  e7 b9 fb eb                                      bl #0x361b54
004733b4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
004733b8  00 00 50 e3                                      cmp r0, #0
004733bc  00 00 00 0a                                      beq #0x4733c4
004733c0  6f a8 fa eb                                      bl #0x31d584
004733c4  80 20 96 e5                                      ldr r2, [r6, #0x80]
004733c8  09 30 98 e7                                      ldr r3, [r8, sb]
004733cc  07 10 a0 e1                                      mov r1, r7
004733d0  05 70 82 e7                                      str r7, [r2, r5]
004733d4  10 30 93 e5                                      ldr r3, [r3, #0x10]
004733d8  04 50 85 e2                                      add r5, r5, #4
004733dc  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
004733e0  04 30 93 e5                                      ldr r3, [r3, #4]
004733e4  03 00 a0 e1                                      mov r0, r3
004733e8  00 30 93 e5                                      ldr r3, [r3]
004733ec  0f e0 a0 e1                                      mov lr, pc
004733f0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
004733f4  00 00 54 e3                                      cmp r4, #0
004733f8  04 00 a0 e1                                      mov r0, r4
004733fc  00 00 00 0a                                      beq #0x473404
00473400  5f a8 fa eb                                      bl #0x31d584
00473404  00 20 9d e5                                      ldr r2, [sp]
00473408  05 30 8a e0                                      add r3, sl, r5
0047340c  03 00 52 e1                                      cmp r2, r3
00473410  cb ff ff 1a                                      bne #0x473344
00473414  14 30 9d e5                                      ldr r3, [sp, #0x14]
00473418  18 20 9d e5                                      ldr r2, [sp, #0x18]
0047341c  02 00 53 e1                                      cmp r3, r2
00473420  18 30 8d 15                                      strne r3, [sp, #0x18]
00473424  64 11 06 e3                                      movw r1, #0x6164
00473428  65 1d 44 e3                                      movt r1, #0x4d65
0047342c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00473430  08 00 96 e5                                      ldr r0, [r6, #8]
00473434  66 96 04 eb                                      bl #0x598dd4
00473438  14 30 9d e5                                      ldr r3, [sp, #0x14]
0047343c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00473440  38 20 8d e2                                      add r2, sp, #0x38
00473444  00 50 a0 e3                                      mov r5, #0
00473448  01 10 63 e0                                      rsb r1, r3, r1
0047344c  10 50 22 e5                                      str r5, [r2, #-0x10]!
00473450  41 11 a0 e1                                      asr r1, r1, #2
00473454  8c 00 86 e2                                      add r0, r6, #0x8c
00473458  82 ff ff eb                                      bl #0x473268
0047345c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00473460  14 a0 9d e5                                      ldr sl, [sp, #0x14]
00473464  00 30 8d e5                                      str r3, [sp]
00473468  03 00 5a e1                                      cmp sl, r3
0047346c  38 00 00 0a                                      beq #0x473554
00473470  24 20 8d e2                                      add r2, sp, #0x24
00473474  20 30 8d e2                                      add r3, sp, #0x20
00473478  08 20 8d e5                                      str r2, [sp, #8]
0047347c  04 30 8d e5                                      str r3, [sp, #4]
00473480  05 b0 9a e7                                      ldr fp, [sl, r5]
00473484  08 00 9d e5                                      ldr r0, [sp, #8]
00473488  0b 10 a0 e1                                      mov r1, fp
0047348c  00 30 9b e5                                      ldr r3, [fp]
00473490  0f e0 a0 e1                                      mov lr, pc
00473494  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
00473498  24 40 9d e5                                      ldr r4, [sp, #0x24]
0047349c  00 00 54 e3                                      cmp r4, #0
004734a0  06 00 00 0a                                      beq #0x4734c0
004734a4  04 30 94 e5                                      ldr r3, [r4, #4]
004734a8  01 30 83 e2                                      add r3, r3, #1
004734ac  04 30 84 e5                                      str r3, [r4, #4]
004734b0  24 00 9d e5                                      ldr r0, [sp, #0x24]
004734b4  00 00 50 e3                                      cmp r0, #0
004734b8  00 00 00 0a                                      beq #0x4734c0
004734bc  30 a8 fa eb                                      bl #0x31d584
004734c0  00 10 a0 e3                                      mov r1, #0
004734c4  01 00 54 e1                                      cmp r4, r1
004734c8  20 40 8d e5                                      str r4, [sp, #0x20]
004734cc  04 30 94 15                                      ldrne r3, [r4, #4]
004734d0  76 0f a0 e3                                      mov r0, #0x1d8
004734d4  01 30 83 12                                      addne r3, r3, #1
004734d8  04 30 84 15                                      strne r3, [r4, #4]
004734dc  32 03 03 eb                                      bl #0x5341ac
004734e0  04 10 9d e5                                      ldr r1, [sp, #4]
004734e4  0b 20 a0 e1                                      mov r2, fp
004734e8  08 30 96 e5                                      ldr r3, [r6, #8]
004734ec  00 70 a0 e1                                      mov r7, r0
004734f0  34 b9 fb eb                                      bl #0x3619c8
004734f4  20 00 9d e5                                      ldr r0, [sp, #0x20]
004734f8  00 00 50 e3                                      cmp r0, #0
004734fc  00 00 00 0a                                      beq #0x473504
00473500  1f a8 fa eb                                      bl #0x31d584
00473504  8c 20 96 e5                                      ldr r2, [r6, #0x8c]
00473508  09 30 98 e7                                      ldr r3, [r8, sb]
0047350c  07 10 a0 e1                                      mov r1, r7
00473510  05 70 82 e7                                      str r7, [r2, r5]
00473514  10 30 93 e5                                      ldr r3, [r3, #0x10]
00473518  04 50 85 e2                                      add r5, r5, #4
0047351c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00473520  04 30 93 e5                                      ldr r3, [r3, #4]
00473524  03 00 a0 e1                                      mov r0, r3
00473528  00 30 93 e5                                      ldr r3, [r3]
0047352c  0f e0 a0 e1                                      mov lr, pc
00473530  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00473534  00 00 54 e3                                      cmp r4, #0
00473538  04 00 a0 e1                                      mov r0, r4
0047353c  00 00 00 0a                                      beq #0x473544
00473540  0f a8 fa eb                                      bl #0x31d584
00473544  00 20 9d e5                                      ldr r2, [sp]
00473548  05 30 8a e0                                      add r3, sl, r5
0047354c  03 00 52 e1                                      cmp r2, r3
00473550  ca ff ff 1a                                      bne #0x473480
00473554  09 30 98 e7                                      ldr r3, [r8, sb]
00473558  10 30 93 e5                                      ldr r3, [r3, #0x10]
0047355c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00473560  5e 76 fb eb                                      bl #0x350ee0
00473564  14 00 9d e5                                      ldr r0, [sp, #0x14]
00473568  00 00 50 e3                                      cmp r0, #0
0047356c  00 00 00 0a                                      beq #0x473574
00473570  b6 73 fa eb                                      bl #0x310450
00473574  3c d0 8d e2                                      add sp, sp, #0x3c
00473578  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0047357c  04 90 9f e5                                      ldr sb, [pc, #4]
00473580  a7 ff ff ea                                      b #0x473424
; mapping-symbol data/literal pool
00473584  cc 17 52 00 f4 37 00 00                          .byte 0xcc, 0x17, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004736e4, declared_size=416, range_size=416, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject14CreateXrayMeshEv
; demangled: VisualObject::CreateXrayMesh()
; decoder-mode: arm
004736e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004736e8  00 a0 a0 e1                                      mov sl, r0
004736ec  08 00 90 e5                                      ldr r0, [r0, #8]
004736f0  84 81 9f e5                                      ldr r8, [pc, #0x184]
004736f4  2c d0 4d e2                                      sub sp, sp, #0x2c
004736f8  00 00 50 e3                                      cmp r0, #0
004736fc  08 80 8f e0                                      add r8, pc, r8
00473700  58 00 00 0a                                      beq #0x473868
00473704  01 30 a0 e3                                      mov r3, #1
00473708  64 11 06 e3                                      movw r1, #0x6164
0047370c  a8 30 ca e5                                      strb r3, [sl, #0xa8]
00473710  00 50 a0 e3                                      mov r5, #0
00473714  65 1d 44 e3                                      movt r1, #0x4d65
00473718  10 20 8d e2                                      add r2, sp, #0x10
0047371c  10 50 8d e5                                      str r5, [sp, #0x10]
00473720  14 50 8d e5                                      str r5, [sp, #0x14]
00473724  18 50 8d e5                                      str r5, [sp, #0x18]
00473728  a9 95 04 eb                                      bl #0x598dd4
0047372c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00473730  10 30 9d e5                                      ldr r3, [sp, #0x10]
00473734  28 20 8d e2                                      add r2, sp, #0x28
00473738  04 50 22 e5                                      str r5, [r2, #-4]!
0047373c  01 10 63 e0                                      rsb r1, r3, r1
00473740  41 11 a0 e1                                      asr r1, r1, #2
00473744  9c 00 8a e2                                      add r0, sl, #0x9c
00473748  d4 ff ff eb                                      bl #0x4736a0
0047374c  10 70 9d e5                                      ldr r7, [sp, #0x10]
00473750  14 90 9d e5                                      ldr sb, [sp, #0x14]
00473754  09 00 57 e1                                      cmp r7, sb
00473758  44 00 00 0a                                      beq #0x473870
0047375c  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
00473760  20 30 8d e2                                      add r3, sp, #0x20
00473764  1c 10 8d e2                                      add r1, sp, #0x1c
00473768  04 20 8d e5                                      str r2, [sp, #4]
0047376c  0c 30 8d e5                                      str r3, [sp, #0xc]
00473770  08 10 8d e5                                      str r1, [sp, #8]
00473774  05 b0 97 e7                                      ldr fp, [r7, r5]
00473778  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0047377c  0b 10 a0 e1                                      mov r1, fp
00473780  00 30 9b e5                                      ldr r3, [fp]
00473784  0f e0 a0 e1                                      mov lr, pc
00473788  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
0047378c  20 40 9d e5                                      ldr r4, [sp, #0x20]
00473790  00 00 54 e3                                      cmp r4, #0
00473794  06 00 00 0a                                      beq #0x4737b4
00473798  04 30 94 e5                                      ldr r3, [r4, #4]
0047379c  01 30 83 e2                                      add r3, r3, #1
004737a0  04 30 84 e5                                      str r3, [r4, #4]
004737a4  20 00 9d e5                                      ldr r0, [sp, #0x20]
004737a8  00 00 50 e3                                      cmp r0, #0
004737ac  00 00 00 0a                                      beq #0x4737b4
004737b0  73 a7 fa eb                                      bl #0x31d584
004737b4  00 10 a0 e3                                      mov r1, #0
004737b8  01 00 54 e1                                      cmp r4, r1
004737bc  1c 40 8d e5                                      str r4, [sp, #0x1c]
004737c0  04 30 94 15                                      ldrne r3, [r4, #4]
004737c4  75 0f a0 e3                                      mov r0, #0x1d4
004737c8  01 30 83 12                                      addne r3, r3, #1
004737cc  04 30 84 15                                      strne r3, [r4, #4]
004737d0  75 02 03 eb                                      bl #0x5341ac
004737d4  08 10 9d e5                                      ldr r1, [sp, #8]
004737d8  0b 20 a0 e1                                      mov r2, fp
004737dc  00 60 a0 e1                                      mov r6, r0
004737e0  63 c2 fb eb                                      bl #0x364174
004737e4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
004737e8  00 00 50 e3                                      cmp r0, #0
004737ec  00 00 00 0a                                      beq #0x4737f4
004737f0  63 a7 fa eb                                      bl #0x31d584
004737f4  04 10 9d e5                                      ldr r1, [sp, #4]
004737f8  9c 20 9a e5                                      ldr r2, [sl, #0x9c]
004737fc  01 30 98 e7                                      ldr r3, [r8, r1]
00473800  05 60 82 e7                                      str r6, [r2, r5]
00473804  06 10 a0 e1                                      mov r1, r6
00473808  10 30 93 e5                                      ldr r3, [r3, #0x10]
0047380c  04 50 85 e2                                      add r5, r5, #4
00473810  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00473814  04 30 93 e5                                      ldr r3, [r3, #4]
00473818  03 00 a0 e1                                      mov r0, r3
0047381c  00 30 93 e5                                      ldr r3, [r3]
00473820  0f e0 a0 e1                                      mov lr, pc
00473824  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00473828  00 00 54 e3                                      cmp r4, #0
0047382c  04 00 a0 e1                                      mov r0, r4
00473830  00 00 00 0a                                      beq #0x473838
00473834  52 a7 fa eb                                      bl #0x31d584
00473838  05 30 87 e0                                      add r3, r7, r5
0047383c  03 00 59 e1                                      cmp sb, r3
00473840  cb ff ff 1a                                      bne #0x473774
00473844  04 20 9d e5                                      ldr r2, [sp, #4]
00473848  02 30 98 e7                                      ldr r3, [r8, r2]
0047384c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00473850  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00473854  a1 75 fb eb                                      bl #0x350ee0
00473858  10 00 9d e5                                      ldr r0, [sp, #0x10]
0047385c  00 00 50 e3                                      cmp r0, #0
00473860  00 00 00 0a                                      beq #0x473868
00473864  f9 72 fa eb                                      bl #0x310450
00473868  2c d0 8d e2                                      add sp, sp, #0x2c
0047386c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00473870  08 10 9f e5                                      ldr r1, [pc, #8]
00473874  04 10 8d e5                                      str r1, [sp, #4]
00473878  f1 ff ff ea                                      b #0x473844
; mapping-symbol data/literal pool
0047387c  94 13 52 00 f4 37 00 00                          .byte 0x94, 0x13, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00473884, declared_size=540, range_size=540, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObjectD1Ev
; demangled: VisualObject::~VisualObject()
; decoder-mode: arm
00473884  70 40 2d e9                                      push {r4, r5, r6, lr}
00473888  04 52 9f e5                                      ldr r5, [pc, #0x204]
0047388c  04 32 9f e5                                      ldr r3, [pc, #0x204]
00473890  00 40 a0 e1                                      mov r4, r0
00473894  05 50 8f e0                                      add r5, pc, r5
00473898  03 30 95 e7                                      ldr r3, [r5, r3]
0047389c  00 10 a0 e3                                      mov r1, #0
004738a0  08 30 83 e2                                      add r3, r3, #8
004738a4  00 30 80 e5                                      str r3, [r0]
004738a8  75 f4 ff eb                                      bl #0x470a84
004738ac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004738b0  00 00 53 e3                                      cmp r3, #0
004738b4  05 00 00 0a                                      beq #0x4738d0
004738b8  00 20 93 e5                                      ldr r2, [r3]
004738bc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
004738c0  00 00 83 e0                                      add r0, r3, r0
004738c4  2e a7 fa eb                                      bl #0x31d584
004738c8  00 30 a0 e3                                      mov r3, #0
004738cc  0c 30 84 e5                                      str r3, [r4, #0xc]
004738d0  08 30 94 e5                                      ldr r3, [r4, #8]
004738d4  00 00 53 e3                                      cmp r3, #0
004738d8  0f 00 00 0a                                      beq #0x47391c
004738dc  03 00 a0 e1                                      mov r0, r3
004738e0  00 30 93 e5                                      ldr r3, [r3]
004738e4  0f e0 a0 e1                                      mov lr, pc
004738e8  74 f0 93 e5                                      ldr pc, [r3, #0x74]
004738ec  08 30 94 e5                                      ldr r3, [r4, #8]
004738f0  03 00 a0 e1                                      mov r0, r3
004738f4  00 30 93 e5                                      ldr r3, [r3]
004738f8  0f e0 a0 e1                                      mov lr, pc
004738fc  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00473900  08 30 94 e5                                      ldr r3, [r4, #8]
00473904  00 20 93 e5                                      ldr r2, [r3]
00473908  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0047390c  00 00 83 e0                                      add r0, r3, r0
00473910  1b a7 fa eb                                      bl #0x31d584
00473914  00 30 a0 e3                                      mov r3, #0
00473918  08 30 84 e5                                      str r3, [r4, #8]
0047391c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00473920  00 00 53 e3                                      cmp r3, #0
00473924  0f 00 00 0a                                      beq #0x473968
00473928  03 00 a0 e1                                      mov r0, r3
0047392c  00 30 93 e5                                      ldr r3, [r3]
00473930  0f e0 a0 e1                                      mov lr, pc
00473934  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00473938  30 30 94 e5                                      ldr r3, [r4, #0x30]
0047393c  03 00 a0 e1                                      mov r0, r3
00473940  00 30 93 e5                                      ldr r3, [r3]
00473944  0f e0 a0 e1                                      mov lr, pc
00473948  68 f0 93 e5                                      ldr pc, [r3, #0x68]
0047394c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00473950  00 20 93 e5                                      ldr r2, [r3]
00473954  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00473958  00 00 83 e0                                      add r0, r3, r0
0047395c  08 a7 fa eb                                      bl #0x31d584
00473960  00 30 a0 e3                                      mov r3, #0
00473964  30 30 84 e5                                      str r3, [r4, #0x30]
00473968  34 30 94 e5                                      ldr r3, [r4, #0x34]
0047396c  00 00 53 e3                                      cmp r3, #0
00473970  0f 00 00 0a                                      beq #0x4739b4
00473974  03 00 a0 e1                                      mov r0, r3
00473978  00 30 93 e5                                      ldr r3, [r3]
0047397c  0f e0 a0 e1                                      mov lr, pc
00473980  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00473984  34 30 94 e5                                      ldr r3, [r4, #0x34]
00473988  03 00 a0 e1                                      mov r0, r3
0047398c  00 30 93 e5                                      ldr r3, [r3]
00473990  0f e0 a0 e1                                      mov lr, pc
00473994  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00473998  34 30 94 e5                                      ldr r3, [r4, #0x34]
0047399c  00 20 93 e5                                      ldr r2, [r3]
004739a0  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
004739a4  00 00 83 e0                                      add r0, r3, r0
004739a8  f5 a6 fa eb                                      bl #0x31d584
004739ac  00 30 a0 e3                                      mov r3, #0
004739b0  34 30 84 e5                                      str r3, [r4, #0x34]
004739b4  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
004739b8  03 30 95 e7                                      ldr r3, [r5, r3]
004739bc  10 30 93 e5                                      ldr r3, [r3, #0x10]
004739c0  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
004739c4  45 75 fb eb                                      bl #0x350ee0
004739c8  9c 00 94 e5                                      ldr r0, [r4, #0x9c]
004739cc  9c 30 84 e2                                      add r3, r4, #0x9c
004739d0  00 00 50 e3                                      cmp r0, #0
004739d4  05 00 00 0a                                      beq #0x4739f0
004739d8  08 10 93 e5                                      ldr r1, [r3, #8]
004739dc  01 10 60 e0                                      rsb r1, r0, r1
004739e0  03 10 c1 e3                                      bic r1, r1, #3
004739e4  80 00 51 e3                                      cmp r1, #0x80
004739e8  20 00 00 8a                                      bhi #0x473a70
004739ec  43 55 0a eb                                      bl #0x708f00
004739f0  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
004739f4  8c 30 84 e2                                      add r3, r4, #0x8c
004739f8  00 00 50 e3                                      cmp r0, #0
004739fc  05 00 00 0a                                      beq #0x473a18
00473a00  08 10 93 e5                                      ldr r1, [r3, #8]
00473a04  01 10 60 e0                                      rsb r1, r0, r1
00473a08  03 10 c1 e3                                      bic r1, r1, #3
00473a0c  80 00 51 e3                                      cmp r1, #0x80
00473a10  1d 00 00 8a                                      bhi #0x473a8c
00473a14  39 55 0a eb                                      bl #0x708f00
00473a18  80 00 94 e5                                      ldr r0, [r4, #0x80]
00473a1c  80 30 84 e2                                      add r3, r4, #0x80
00473a20  00 00 50 e3                                      cmp r0, #0
00473a24  05 00 00 0a                                      beq #0x473a40
00473a28  08 10 93 e5                                      ldr r1, [r3, #8]
00473a2c  01 10 60 e0                                      rsb r1, r0, r1
00473a30  03 10 c1 e3                                      bic r1, r1, #3
00473a34  80 00 51 e3                                      cmp r1, #0x80
00473a38  11 00 00 8a                                      bhi #0x473a84
00473a3c  2f 55 0a eb                                      bl #0x708f00
00473a40  44 00 94 e5                                      ldr r0, [r4, #0x44]
00473a44  44 30 84 e2                                      add r3, r4, #0x44
00473a48  00 00 50 e3                                      cmp r0, #0
00473a4c  05 00 00 0a                                      beq #0x473a68
00473a50  10 10 93 e5                                      ldr r1, [r3, #0x10]
00473a54  01 10 60 e0                                      rsb r1, r0, r1
00473a58  03 10 c1 e3                                      bic r1, r1, #3
00473a5c  80 00 51 e3                                      cmp r1, #0x80
00473a60  04 00 00 8a                                      bhi #0x473a78
00473a64  25 55 0a eb                                      bl #0x708f00
00473a68  04 00 a0 e1                                      mov r0, r4
00473a6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00473a70  72 72 fa eb                                      bl #0x310440
00473a74  dd ff ff ea                                      b #0x4739f0
00473a78  70 72 fa eb                                      bl #0x310440
00473a7c  04 00 a0 e1                                      mov r0, r4
00473a80  70 80 bd e8                                      pop {r4, r5, r6, pc}
00473a84  6d 72 fa eb                                      bl #0x310440
00473a88  ec ff ff ea                                      b #0x473a40
00473a8c  6b 72 fa eb                                      bl #0x310440
00473a90  e0 ff ff ea                                      b #0x473a18
; mapping-symbol data/literal pool
00473a94  fc 11 52 00 94 1e 00 00 f4 37 00 00              .byte 0xfc, 0x11, 0x52, 0x00, 0x94, 0x1e, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00473aa0, declared_size=28, range_size=28, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObjectD0Ev
; demangled: VisualObject::~VisualObject()
; decoder-mode: arm
00473aa0  10 40 2d e9                                      push {r4, lr}
00473aa4  00 40 a0 e1                                      mov r4, r0
00473aa8  75 ff ff eb                                      bl #0x473884
00473aac  04 00 a0 e1                                      mov r0, r4
00473ab0  62 72 fa eb                                      bl #0x310440
00473ab4  04 00 a0 e1                                      mov r0, r4
00473ab8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00473abc, declared_size=540, range_size=540, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObjectD2Ev
; demangled: VisualObject::~VisualObject()
; decoder-mode: arm
00473abc  70 40 2d e9                                      push {r4, r5, r6, lr}
00473ac0  04 52 9f e5                                      ldr r5, [pc, #0x204]
00473ac4  04 32 9f e5                                      ldr r3, [pc, #0x204]
00473ac8  00 40 a0 e1                                      mov r4, r0
00473acc  05 50 8f e0                                      add r5, pc, r5
00473ad0  03 30 95 e7                                      ldr r3, [r5, r3]
00473ad4  00 10 a0 e3                                      mov r1, #0
00473ad8  08 30 83 e2                                      add r3, r3, #8
00473adc  00 30 80 e5                                      str r3, [r0]
00473ae0  e7 f3 ff eb                                      bl #0x470a84
00473ae4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00473ae8  00 00 53 e3                                      cmp r3, #0
00473aec  05 00 00 0a                                      beq #0x473b08
00473af0  00 20 93 e5                                      ldr r2, [r3]
00473af4  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00473af8  00 00 83 e0                                      add r0, r3, r0
00473afc  a0 a6 fa eb                                      bl #0x31d584
00473b00  00 30 a0 e3                                      mov r3, #0
00473b04  0c 30 84 e5                                      str r3, [r4, #0xc]
00473b08  08 30 94 e5                                      ldr r3, [r4, #8]
00473b0c  00 00 53 e3                                      cmp r3, #0
00473b10  0f 00 00 0a                                      beq #0x473b54
00473b14  03 00 a0 e1                                      mov r0, r3
00473b18  00 30 93 e5                                      ldr r3, [r3]
00473b1c  0f e0 a0 e1                                      mov lr, pc
00473b20  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00473b24  08 30 94 e5                                      ldr r3, [r4, #8]
00473b28  03 00 a0 e1                                      mov r0, r3
00473b2c  00 30 93 e5                                      ldr r3, [r3]
00473b30  0f e0 a0 e1                                      mov lr, pc
00473b34  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00473b38  08 30 94 e5                                      ldr r3, [r4, #8]
00473b3c  00 20 93 e5                                      ldr r2, [r3]
00473b40  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00473b44  00 00 83 e0                                      add r0, r3, r0
00473b48  8d a6 fa eb                                      bl #0x31d584
00473b4c  00 30 a0 e3                                      mov r3, #0
00473b50  08 30 84 e5                                      str r3, [r4, #8]
00473b54  30 30 94 e5                                      ldr r3, [r4, #0x30]
00473b58  00 00 53 e3                                      cmp r3, #0
00473b5c  0f 00 00 0a                                      beq #0x473ba0
00473b60  03 00 a0 e1                                      mov r0, r3
00473b64  00 30 93 e5                                      ldr r3, [r3]
00473b68  0f e0 a0 e1                                      mov lr, pc
00473b6c  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00473b70  30 30 94 e5                                      ldr r3, [r4, #0x30]
00473b74  03 00 a0 e1                                      mov r0, r3
00473b78  00 30 93 e5                                      ldr r3, [r3]
00473b7c  0f e0 a0 e1                                      mov lr, pc
00473b80  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00473b84  30 30 94 e5                                      ldr r3, [r4, #0x30]
00473b88  00 20 93 e5                                      ldr r2, [r3]
00473b8c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00473b90  00 00 83 e0                                      add r0, r3, r0
00473b94  7a a6 fa eb                                      bl #0x31d584
00473b98  00 30 a0 e3                                      mov r3, #0
00473b9c  30 30 84 e5                                      str r3, [r4, #0x30]
00473ba0  34 30 94 e5                                      ldr r3, [r4, #0x34]
00473ba4  00 00 53 e3                                      cmp r3, #0
00473ba8  0f 00 00 0a                                      beq #0x473bec
00473bac  03 00 a0 e1                                      mov r0, r3
00473bb0  00 30 93 e5                                      ldr r3, [r3]
00473bb4  0f e0 a0 e1                                      mov lr, pc
00473bb8  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00473bbc  34 30 94 e5                                      ldr r3, [r4, #0x34]
00473bc0  03 00 a0 e1                                      mov r0, r3
00473bc4  00 30 93 e5                                      ldr r3, [r3]
00473bc8  0f e0 a0 e1                                      mov lr, pc
00473bcc  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00473bd0  34 30 94 e5                                      ldr r3, [r4, #0x34]
00473bd4  00 20 93 e5                                      ldr r2, [r3]
00473bd8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00473bdc  00 00 83 e0                                      add r0, r3, r0
00473be0  67 a6 fa eb                                      bl #0x31d584
00473be4  00 30 a0 e3                                      mov r3, #0
00473be8  34 30 84 e5                                      str r3, [r4, #0x34]
00473bec  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00473bf0  03 30 95 e7                                      ldr r3, [r5, r3]
00473bf4  10 30 93 e5                                      ldr r3, [r3, #0x10]
00473bf8  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00473bfc  b7 74 fb eb                                      bl #0x350ee0
00473c00  9c 00 94 e5                                      ldr r0, [r4, #0x9c]
00473c04  9c 30 84 e2                                      add r3, r4, #0x9c
00473c08  00 00 50 e3                                      cmp r0, #0
00473c0c  05 00 00 0a                                      beq #0x473c28
00473c10  08 10 93 e5                                      ldr r1, [r3, #8]
00473c14  01 10 60 e0                                      rsb r1, r0, r1
00473c18  03 10 c1 e3                                      bic r1, r1, #3
00473c1c  80 00 51 e3                                      cmp r1, #0x80
00473c20  20 00 00 8a                                      bhi #0x473ca8
00473c24  b5 54 0a eb                                      bl #0x708f00
00473c28  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
00473c2c  8c 30 84 e2                                      add r3, r4, #0x8c
00473c30  00 00 50 e3                                      cmp r0, #0
00473c34  05 00 00 0a                                      beq #0x473c50
00473c38  08 10 93 e5                                      ldr r1, [r3, #8]
00473c3c  01 10 60 e0                                      rsb r1, r0, r1
00473c40  03 10 c1 e3                                      bic r1, r1, #3
00473c44  80 00 51 e3                                      cmp r1, #0x80
00473c48  1d 00 00 8a                                      bhi #0x473cc4
00473c4c  ab 54 0a eb                                      bl #0x708f00
00473c50  80 00 94 e5                                      ldr r0, [r4, #0x80]
00473c54  80 30 84 e2                                      add r3, r4, #0x80
00473c58  00 00 50 e3                                      cmp r0, #0
00473c5c  05 00 00 0a                                      beq #0x473c78
00473c60  08 10 93 e5                                      ldr r1, [r3, #8]
00473c64  01 10 60 e0                                      rsb r1, r0, r1
00473c68  03 10 c1 e3                                      bic r1, r1, #3
00473c6c  80 00 51 e3                                      cmp r1, #0x80
00473c70  11 00 00 8a                                      bhi #0x473cbc
00473c74  a1 54 0a eb                                      bl #0x708f00
00473c78  44 00 94 e5                                      ldr r0, [r4, #0x44]
00473c7c  44 30 84 e2                                      add r3, r4, #0x44
00473c80  00 00 50 e3                                      cmp r0, #0
00473c84  05 00 00 0a                                      beq #0x473ca0
00473c88  10 10 93 e5                                      ldr r1, [r3, #0x10]
00473c8c  01 10 60 e0                                      rsb r1, r0, r1
00473c90  03 10 c1 e3                                      bic r1, r1, #3
00473c94  80 00 51 e3                                      cmp r1, #0x80
00473c98  04 00 00 8a                                      bhi #0x473cb0
00473c9c  97 54 0a eb                                      bl #0x708f00
00473ca0  04 00 a0 e1                                      mov r0, r4
00473ca4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00473ca8  e4 71 fa eb                                      bl #0x310440
00473cac  dd ff ff ea                                      b #0x473c28
00473cb0  e2 71 fa eb                                      bl #0x310440
00473cb4  04 00 a0 e1                                      mov r0, r4
00473cb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00473cbc  df 71 fa eb                                      bl #0x310440
00473cc0  ec ff ff ea                                      b #0x473c78
00473cc4  dd 71 fa eb                                      bl #0x310440
00473cc8  e0 ff ff ea                                      b #0x473c50
; mapping-symbol data/literal pool
00473ccc  c4 0f 52 00 94 1e 00 00 f4 37 00 00              .byte 0xc4, 0x0f, 0x52, 0x00, 0x94, 0x1e, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00473cd8, declared_size=456, range_size=456, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject13SetWeaponSkinEPKcii
; demangled: VisualObject::SetWeaponSkin(char const*, int, int)
; decoder-mode: arm
00473cd8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00473cdc  a0 41 9f e5                                      ldr r4, [pc, #0x1a0]
00473ce0  a0 81 9f e5                                      ldr r8, [pc, #0x1a0]
00473ce4  00 70 51 e2                                      subs r7, r1, #0
00473ce8  04 40 8f e0                                      add r4, pc, r4
00473cec  08 10 94 e7                                      ldr r1, [r4, r8]
00473cf0  02 90 a0 e1                                      mov sb, r2
00473cf4  24 d0 4d e2                                      sub sp, sp, #0x24
00473cf8  00 20 91 e5                                      ldr r2, [r1]
00473cfc  00 50 a0 e1                                      mov r5, r0
00473d00  03 b0 a0 e1                                      mov fp, r3
00473d04  1c 20 8d e5                                      str r2, [sp, #0x1c]
00473d08  49 00 00 0a                                      beq #0x473e34
00473d0c  78 11 9f e5                                      ldr r1, [pc, #0x178]
00473d10  04 60 8d e2                                      add r6, sp, #4
00473d14  0d 20 a0 e1                                      mov r2, sp
00473d18  01 10 8f e0                                      add r1, pc, r1
00473d1c  06 00 a0 e1                                      mov r0, r6
00473d20  f1 80 fa eb                                      bl #0x3140ec
00473d24  07 00 a0 e1                                      mov r0, r7
00473d28  49 68 fa eb                                      bl #0x30de54
00473d2c  07 10 a0 e1                                      mov r1, r7
00473d30  00 20 87 e0                                      add r2, r7, r0
00473d34  06 00 a0 e1                                      mov r0, r6
00473d38  b1 72 fa eb                                      bl #0x310804
00473d3c  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
00473d40  4c a1 9f e5                                      ldr sl, [pc, #0x14c]
00473d44  06 00 a0 e1                                      mov r0, r6
00473d48  01 10 8f e0                                      add r1, pc, r1
00473d4c  05 20 81 e2                                      add r2, r1, #5
00473d50  ab 72 fa eb                                      bl #0x310804
00473d54  0a 30 94 e7                                      ldr r3, [r4, sl]
00473d58  18 10 9d e5                                      ldr r1, [sp, #0x18]
00473d5c  01 20 a0 e3                                      mov r2, #1
00473d60  10 00 93 e5                                      ldr r0, [r3, #0x10]
00473d64  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
00473d68  10 00 90 e5                                      ldr r0, [r0, #0x10]
00473d6c  03 30 94 e7                                      ldr r3, [r4, r3]
00473d70  97 9f 06 eb                                      bl #0x61bbd4
00473d74  00 70 a0 e1                                      mov r7, r0
00473d78  18 00 9d e5                                      ldr r0, [sp, #0x18]
00473d7c  06 00 50 e1                                      cmp r0, r6
00473d80  06 00 00 0a                                      beq #0x473da0
00473d84  00 00 50 e3                                      cmp r0, #0
00473d88  04 00 00 0a                                      beq #0x473da0
00473d8c  04 10 9d e5                                      ldr r1, [sp, #4]
00473d90  01 10 60 e0                                      rsb r1, r0, r1
00473d94  80 00 51 e3                                      cmp r1, #0x80
00473d98  36 00 00 8a                                      bhi #0x473e78
00473d9c  57 54 0a eb                                      bl #0x708f00
00473da0  01 00 59 e3                                      cmp sb, #1
00473da4  25 00 00 0a                                      beq #0x473e40
00473da8  34 30 95 e5                                      ldr r3, [r5, #0x34]
00473dac  00 00 53 e3                                      cmp r3, #0
00473db0  08 00 00 0a                                      beq #0x473dd8
00473db4  03 00 a0 e1                                      mov r0, r3
00473db8  00 30 93 e5                                      ldr r3, [r3]
00473dbc  0f e0 a0 e1                                      mov lr, pc
00473dc0  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00473dc4  34 30 95 e5                                      ldr r3, [r5, #0x34]
00473dc8  00 20 93 e5                                      ldr r2, [r3]
00473dcc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00473dd0  00 00 83 e0                                      add r0, r3, r0
00473dd4  ea a5 fa eb                                      bl #0x31d584
00473dd8  34 70 85 e5                                      str r7, [r5, #0x34]
00473ddc  0a 30 94 e7                                      ldr r3, [r4, sl]
00473de0  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00473de4  08 10 95 e5                                      ldr r1, [r5, #8]
00473de8  10 30 93 e5                                      ldr r3, [r3, #0x10]
00473dec  02 20 8f e0                                      add r2, pc, r2
00473df0  0b 21 92 e7                                      ldr r2, [r2, fp, lsl #2]
00473df4  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00473df8  00 30 a0 e3                                      mov r3, #0
00473dfc  b8 98 fb eb                                      bl #0x35a0e4
00473e00  00 30 50 e2                                      subs r3, r0, #0
00473e04  03 00 00 0a                                      beq #0x473e18
00473e08  00 30 93 e5                                      ldr r3, [r3]
00473e0c  07 10 a0 e1                                      mov r1, r7
00473e10  0f e0 a0 e1                                      mov lr, pc
00473e14  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00473e18  08 30 94 e7                                      ldr r3, [r4, r8]
00473e1c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00473e20  00 30 93 e5                                      ldr r3, [r3]
00473e24  03 00 52 e1                                      cmp r2, r3
00473e28  14 00 00 1a                                      bne #0x473e80
00473e2c  24 d0 8d e2                                      add sp, sp, #0x24
00473e30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00473e34  01 00 59 e3                                      cmp sb, #1
00473e38  54 a0 9f e5                                      ldr sl, [pc, #0x54]
00473e3c  d9 ff ff 1a                                      bne #0x473da8
00473e40  30 30 95 e5                                      ldr r3, [r5, #0x30]
00473e44  00 00 53 e3                                      cmp r3, #0
00473e48  08 00 00 0a                                      beq #0x473e70
00473e4c  03 00 a0 e1                                      mov r0, r3
00473e50  00 30 93 e5                                      ldr r3, [r3]
00473e54  0f e0 a0 e1                                      mov lr, pc
00473e58  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00473e5c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00473e60  00 20 93 e5                                      ldr r2, [r3]
00473e64  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00473e68  00 00 83 e0                                      add r0, r3, r0
00473e6c  c4 a5 fa eb                                      bl #0x31d584
00473e70  30 70 85 e5                                      str r7, [r5, #0x30]
00473e74  d8 ff ff ea                                      b #0x473ddc
00473e78  70 71 fa eb                                      bl #0x310440
00473e7c  c7 ff ff ea                                      b #0x473da0
00473e80  22 69 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00473e84  a8 0d 52 00 ac 40 00 00 a0 99 45 00 a0 5b 45 00  .byte 0xa8, 0x0d, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0x99, 0x45, 0x00, 0xa0, 0x5b, 0x45, 0x00
00473e94  f4 37 00 00 2c 0d 00 00 e4 2c 4e 00              .byte 0xf4, 0x37, 0x00, 0x00, 0x2c, 0x0d, 0x00, 0x00, 0xe4, 0x2c, 0x4e, 0x00

; FUNCTION 0x00473ea0, declared_size=672, range_size=672, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject17ApplyXrayMaterialEv
; demangled: VisualObject::ApplyXrayMaterial()
; decoder-mode: arm
00473ea0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00473ea4  84 92 9f e5                                      ldr sb, [pc, #0x284]
00473ea8  84 12 9f e5                                      ldr r1, [pc, #0x284]
00473eac  74 d0 4d e2                                      sub sp, sp, #0x74
00473eb0  09 90 8f e0                                      add sb, pc, sb
00473eb4  01 30 99 e7                                      ldr r3, [sb, r1]
00473eb8  34 10 8d e5                                      str r1, [sp, #0x34]
00473ebc  2c 00 8d e5                                      str r0, [sp, #0x2c]
00473ec0  a8 20 d0 e5                                      ldrb r2, [r0, #0xa8]
00473ec4  00 30 93 e5                                      ldr r3, [r3]
00473ec8  00 00 52 e3                                      cmp r2, #0
00473ecc  6c 30 8d e5                                      str r3, [sp, #0x6c]
00473ed0  84 00 00 0a                                      beq #0x4740e8
00473ed4  9c 30 90 e5                                      ldr r3, [r0, #0x9c]
00473ed8  a0 20 90 e5                                      ldr r2, [r0, #0xa0]
00473edc  02 20 63 e0                                      rsb r2, r3, r2
00473ee0  42 21 a0 e1                                      asr r2, r2, #2
00473ee4  00 00 52 e3                                      cmp r2, #0
00473ee8  30 20 8d e5                                      str r2, [sp, #0x30]
00473eec  7d 00 00 0a                                      beq #0x4740e8
00473ef0  7c 00 00 da                                      ble #0x4740e8
00473ef4  3c 22 9f e5                                      ldr r2, [pc, #0x23c]
00473ef8  00 c0 a0 e3                                      mov ip, #0
00473efc  28 c0 8d e5                                      str ip, [sp, #0x28]
00473f00  02 20 8f e0                                      add r2, pc, r2
00473f04  24 20 8d e5                                      str r2, [sp, #0x24]
00473f08  28 10 9d e5                                      ldr r1, [sp, #0x28]
00473f0c  01 51 93 e7                                      ldr r5, [r3, r1, lsl #2]
00473f10  05 00 a0 e1                                      mov r0, r5
00473f14  8f be fb eb                                      bl #0x363958
00473f18  00 30 95 e5                                      ldr r3, [r5]
00473f1c  05 00 a0 e1                                      mov r0, r5
00473f20  0f e0 a0 e1                                      mov lr, pc
00473f24  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00473f28  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
00473f2c  b4 11 95 e5                                      ldr r1, [r5, #0x1b4]
00473f30  64 21 06 e3                                      movw r2, #0x6164
00473f34  65 2d 44 e3                                      movt r2, #0x4d65
00473f38  01 10 63 e0                                      rsb r1, r3, r1
00473f3c  41 11 a0 e1                                      asr r1, r1, #2
00473f40  02 00 50 e1                                      cmp r0, r2
00473f44  00 20 a0 13                                      movne r2, #0
00473f48  01 20 a0 03                                      moveq r2, #1
00473f4c  00 00 51 e3                                      cmp r1, #0
00473f50  10 10 8d e5                                      str r1, [sp, #0x10]
00473f54  14 20 8d e5                                      str r2, [sp, #0x14]
00473f58  6a 00 00 da                                      ble #0x474108
00473f5c  d8 81 9f e5                                      ldr r8, [pc, #0x1d8]
00473f60  50 c0 8d e2                                      add ip, sp, #0x50
00473f64  18 c0 8d e5                                      str ip, [sp, #0x18]
00473f68  08 20 99 e7                                      ldr r2, [sb, r8]
00473f6c  48 10 8d e2                                      add r1, sp, #0x48
00473f70  38 c0 8d e2                                      add ip, sp, #0x38
00473f74  20 20 8d e5                                      str r2, [sp, #0x20]
00473f78  44 20 8d e2                                      add r2, sp, #0x44
00473f7c  00 40 a0 e3                                      mov r4, #0
00473f80  4c b0 8d e2                                      add fp, sp, #0x4c
00473f84  54 60 8d e2                                      add r6, sp, #0x54
00473f88  0c 10 8d e5                                      str r1, [sp, #0xc]
00473f8c  08 20 8d e5                                      str r2, [sp, #8]
00473f90  1c c0 8d e5                                      str ip, [sp, #0x1c]
00473f94  20 00 00 ea                                      b #0x47401c
00473f98  d8 53 0a eb                                      bl #0x708f00
00473f9c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00473fa0  10 73 fa eb                                      bl #0x310be8
00473fa4  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
00473fa8  08 20 99 e7                                      ldr r2, [sb, r8]
00473fac  00 c0 a0 e3                                      mov ip, #0
00473fb0  07 30 93 e7                                      ldr r3, [r3, r7]
00473fb4  10 20 92 e5                                      ldr r2, [r2, #0x10]
00473fb8  01 40 84 e2                                      add r4, r4, #1
00473fbc  00 00 53 e3                                      cmp r3, #0
00473fc0  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
00473fc4  44 30 8d e5                                      str r3, [sp, #0x44]
00473fc8  00 20 93 15                                      ldrne r2, [r3]
00473fcc  01 20 82 12                                      addne r2, r2, #1
00473fd0  00 20 83 15                                      strne r2, [r3]
00473fd4  38 c0 8d e5                                      str ip, [sp, #0x38]
00473fd8  3c c0 8d e5                                      str ip, [sp, #0x3c]
00473fdc  fe c5 a0 e3                                      mov ip, #0x3f800000
00473fe0  40 c0 8d e5                                      str ip, [sp, #0x40]
00473fe4  48 31 0e e3                                      movw r3, #0xe148
00473fe8  bf c4 a0 e3                                      mov ip, #0xbf000000
00473fec  08 10 9d e5                                      ldr r1, [sp, #8]
00473ff0  02 c5 8c e2                                      add ip, ip, #0x800000
00473ff4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00473ff8  7a 3f 43 e3                                      movt r3, #0x3f7a
00473ffc  00 c0 8d e5                                      str ip, [sp]
00474000  fd 79 fb eb                                      bl #0x3527fc
00474004  08 00 9d e5                                      ldr r0, [sp, #8]
00474008  f6 72 fa eb                                      bl #0x310be8
0047400c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00474010  01 00 54 e1                                      cmp r4, r1
00474014  3b 00 00 0a                                      beq #0x474108
00474018  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
0047401c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00474020  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00474024  04 71 a0 e1                                      lsl r7, r4, #2
00474028  10 20 91 e5                                      ldr r2, [r1, #0x10]
0047402c  00 00 53 e3                                      cmp r3, #0
00474030  0b 10 a0 e1                                      mov r1, fp
00474034  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
00474038  4c 30 8d e5                                      str r3, [sp, #0x4c]
0047403c  00 20 93 15                                      ldrne r2, [r3]
00474040  01 20 82 12                                      addne r2, r2, #1
00474044  00 20 83 15                                      strne r2, [r3]
00474048  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0047404c  01 20 a0 e3                                      mov r2, #1
00474050  02 30 a0 e1                                      mov r3, r2
00474054  00 c0 8d e5                                      str ip, [sp]
00474058  a9 85 fb eb                                      bl #0x355704
0047405c  0b 00 a0 e1                                      mov r0, fp
00474060  e0 72 fa eb                                      bl #0x310be8
00474064  05 00 a0 e1                                      mov r0, r5
00474068  f2 ba fb eb                                      bl #0x362c38
0047406c  b0 31 95 e5                                      ldr r3, [r5, #0x1b0]
00474070  08 20 99 e7                                      ldr r2, [sb, r8]
00474074  06 00 a0 e1                                      mov r0, r6
00474078  07 30 93 e7                                      ldr r3, [r3, r7]
0047407c  10 20 92 e5                                      ldr r2, [r2, #0x10]
00474080  00 00 53 e3                                      cmp r3, #0
00474084  1c a0 92 e5                                      ldr sl, [r2, #0x1c]
00474088  48 30 8d e5                                      str r3, [sp, #0x48]
0047408c  00 20 93 15                                      ldrne r2, [r3]
00474090  01 20 82 12                                      addne r2, r2, #1
00474094  00 20 83 15                                      strne r2, [r3]
00474098  18 20 9d e5                                      ldr r2, [sp, #0x18]
0047409c  24 10 9d e5                                      ldr r1, [sp, #0x24]
004740a0  11 80 fa eb                                      bl #0x3140ec
004740a4  01 21 a0 e3                                      mov r2, #0x40000000
004740a8  0a 00 a0 e1                                      mov r0, sl
004740ac  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004740b0  02 25 82 e2                                      add r2, r2, #0x800000
004740b4  06 30 a0 e1                                      mov r3, r6
004740b8  12 97 fb eb                                      bl #0x359d08
004740bc  68 00 9d e5                                      ldr r0, [sp, #0x68]
004740c0  06 00 50 e1                                      cmp r0, r6
004740c4  b4 ff ff 0a                                      beq #0x473f9c
004740c8  00 00 50 e3                                      cmp r0, #0
004740cc  b2 ff ff 0a                                      beq #0x473f9c
004740d0  54 10 9d e5                                      ldr r1, [sp, #0x54]
004740d4  01 10 60 e0                                      rsb r1, r0, r1
004740d8  80 00 51 e3                                      cmp r1, #0x80
004740dc  ad ff ff 9a                                      bls #0x473f98
004740e0  d6 70 fa eb                                      bl #0x310440
004740e4  ac ff ff ea                                      b #0x473f9c
004740e8  34 10 9d e5                                      ldr r1, [sp, #0x34]
004740ec  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
004740f0  01 30 99 e7                                      ldr r3, [sb, r1]
004740f4  00 30 93 e5                                      ldr r3, [r3]
004740f8  03 00 52 e1                                      cmp r2, r3
004740fc  0a 00 00 1a                                      bne #0x47412c
00474100  74 d0 8d e2                                      add sp, sp, #0x74
00474104  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00474108  28 20 9d e5                                      ldr r2, [sp, #0x28]
0047410c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00474110  01 20 82 e2                                      add r2, r2, #1
00474114  03 00 52 e1                                      cmp r2, r3
00474118  28 20 8d e5                                      str r2, [sp, #0x28]
0047411c  f1 ff ff 0a                                      beq #0x4740e8
00474120  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00474124  9c 30 9c e5                                      ldr r3, [ip, #0x9c]
00474128  76 ff ff ea                                      b #0x473f08
0047412c  77 68 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00474130  e0 0b 52 00 ac 40 00 00 e0 97 45 00 f4 37 00 00  .byte 0xe0, 0x0b, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x97, 0x45, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00474140, declared_size=288, range_size=288, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject11FlushMeshesEv
; demangled: VisualObject::FlushMeshes()
; decoder-mode: arm
00474140  10 c1 9f e5                                      ldr ip, [pc, #0x110]
00474144  10 21 9f e5                                      ldr r2, [pc, #0x110]
00474148  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047414c  0c c0 8f e0                                      add ip, pc, ip
00474150  02 50 9c e7                                      ldr r5, [ip, r2]
00474154  18 d0 4d e2                                      sub sp, sp, #0x18
00474158  00 30 a0 e3                                      mov r3, #0
0047415c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00474160  0c 30 8d e5                                      str r3, [sp, #0xc]
00474164  04 30 8d e5                                      str r3, [sp, #4]
00474168  08 30 8d e5                                      str r3, [sp, #8]
0047416c  04 40 8d e2                                      add r4, sp, #4
00474170  64 31 06 e3                                      movw r3, #0x6164
00474174  01 70 a0 e1                                      mov r7, r1
00474178  65 3d 46 e3                                      movt r3, #0x6d65
0047417c  08 10 91 e5                                      ldr r1, [r1, #8]
00474180  00 80 a0 e1                                      mov r8, r0
00474184  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
00474188  04 20 a0 e1                                      mov r2, r4
0047418c  32 73 fb eb                                      bl #0x350e5c
00474190  10 20 95 e5                                      ldr r2, [r5, #0x10]
00474194  64 31 06 e3                                      movw r3, #0x6164
00474198  65 33 47 e3                                      movt r3, #0x7365
0047419c  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
004741a0  08 10 97 e5                                      ldr r1, [r7, #8]
004741a4  04 20 a0 e1                                      mov r2, r4
004741a8  2b 73 fb eb                                      bl #0x350e5c
004741ac  10 10 95 e5                                      ldr r1, [r5, #0x10]
004741b0  64 31 06 e3                                      movw r3, #0x6164
004741b4  04 20 a0 e1                                      mov r2, r4
004741b8  1c 00 91 e5                                      ldr r0, [r1, #0x1c]
004741bc  65 3d 44 e3                                      movt r3, #0x4d65
004741c0  08 10 97 e5                                      ldr r1, [r7, #8]
004741c4  24 73 fb eb                                      bl #0x350e5c
004741c8  30 00 9d e9                                      ldmib sp, {r4, r5}
004741cc  05 00 54 e1                                      cmp r4, r5
004741d0  12 00 00 0a                                      beq #0x474220
004741d4  10 60 8d e2                                      add r6, sp, #0x10
004741d8  00 30 94 e5                                      ldr r3, [r4]
004741dc  06 00 a0 e1                                      mov r0, r6
004741e0  04 40 84 e2                                      add r4, r4, #4
004741e4  03 10 a0 e1                                      mov r1, r3
004741e8  00 30 93 e5                                      ldr r3, [r3]
004741ec  0f e0 a0 e1                                      mov lr, pc
004741f0  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
004741f4  01 10 a0 e3                                      mov r1, #1
004741f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
004741fc  01 20 a0 e1                                      mov r2, r1
00474200  00 30 a0 e3                                      mov r3, #0
00474204  1b 6f 02 eb                                      bl #0x50fe78
00474208  10 00 9d e5                                      ldr r0, [sp, #0x10]
0047420c  00 00 50 e3                                      cmp r0, #0
00474210  00 00 00 0a                                      beq #0x474218
00474214  da a4 fa eb                                      bl #0x31d584
00474218  05 00 54 e1                                      cmp r4, r5
0047421c  ed ff ff 1a                                      bne #0x4741d8
00474220  08 30 97 e5                                      ldr r3, [r7, #8]
00474224  08 00 a0 e1                                      mov r0, r8
00474228  14 20 8d e2                                      add r2, sp, #0x14
0047422c  4c 11 93 e5                                      ldr r1, [r3, #0x14c]
00474230  00 00 51 e3                                      cmp r1, #0
00474234  20 10 91 15                                      ldrne r1, [r1, #0x20]
00474238  ab 7f fa eb                                      bl #0x3140ec
0047423c  04 00 9d e5                                      ldr r0, [sp, #4]
00474240  00 00 50 e3                                      cmp r0, #0
00474244  00 00 00 0a                                      beq #0x47424c
00474248  80 70 fa eb                                      bl #0x310450
0047424c  08 00 a0 e1                                      mov r0, r8
00474250  18 d0 8d e2                                      add sp, sp, #0x18
00474254  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00474258  44 09 52 00 f4 37 00 00                          .byte 0x44, 0x09, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00474318, declared_size=592, range_size=592, mode=arm
; class-group: VisualObject
; alias: _ZN12VisualObject22ApplyMaterialBaseParamEv
; demangled: VisualObject::ApplyMaterialBaseParam()
; decoder-mode: arm
00474318  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047431c  30 22 9f e5                                      ldr r2, [pc, #0x230]
00474320  30 72 9f e5                                      ldr r7, [pc, #0x230]
00474324  30 12 9f e5                                      ldr r1, [pc, #0x230]
00474328  64 d0 4d e2                                      sub sp, sp, #0x64
0047432c  04 20 8d e5                                      str r2, [sp, #4]
00474330  07 70 8f e0                                      add r7, pc, r7
00474334  14 10 8d e5                                      str r1, [sp, #0x14]
00474338  01 20 97 e7                                      ldr r2, [r7, r1]
0047433c  04 10 9d e5                                      ldr r1, [sp, #4]
00474340  1c 80 8d e2                                      add r8, sp, #0x1c
00474344  00 20 92 e5                                      ldr r2, [r2]
00474348  01 30 97 e7                                      ldr r3, [r7, r1]
0047434c  00 50 a0 e1                                      mov r5, r0
00474350  5c 20 8d e5                                      str r2, [sp, #0x5c]
00474354  10 30 93 e5                                      ldr r3, [r3, #0x10]
00474358  08 10 90 e5                                      ldr r1, [r0, #8]
0047435c  00 40 a0 e3                                      mov r4, #0
00474360  1c 60 93 e5                                      ldr r6, [r3, #0x1c]
00474364  64 31 06 e3                                      movw r3, #0x6164
00474368  08 20 a0 e1                                      mov r2, r8
0047436c  65 3d 46 e3                                      movt r3, #0x6d65
00474370  06 00 a0 e1                                      mov r0, r6
00474374  1c 40 8d e5                                      str r4, [sp, #0x1c]
00474378  20 40 8d e5                                      str r4, [sp, #0x20]
0047437c  24 40 8d e5                                      str r4, [sp, #0x24]
00474380  b5 72 fb eb                                      bl #0x350e5c
00474384  64 31 06 e3                                      movw r3, #0x6164
00474388  08 20 a0 e1                                      mov r2, r8
0047438c  06 00 a0 e1                                      mov r0, r6
00474390  65 33 47 e3                                      movt r3, #0x7365
00474394  08 10 95 e5                                      ldr r1, [r5, #8]
00474398  af 72 fb eb                                      bl #0x350e5c
0047439c  64 31 06 e3                                      movw r3, #0x6164
004743a0  06 00 a0 e1                                      mov r0, r6
004743a4  08 20 a0 e1                                      mov r2, r8
004743a8  65 3d 44 e3                                      movt r3, #0x4d65
004743ac  08 10 95 e5                                      ldr r1, [r5, #8]
004743b0  a9 72 fb eb                                      bl #0x350e5c
004743b4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
004743b8  20 80 9d e5                                      ldr r8, [sp, #0x20]
004743bc  08 80 60 e0                                      rsb r8, r0, r8
004743c0  48 81 b0 e1                                      asrs r8, r8, #2
004743c4  52 00 00 0a                                      beq #0x474514
004743c8  90 31 9f e5                                      ldr r3, [pc, #0x190]
004743cc  90 21 9f e5                                      ldr r2, [pc, #0x190]
004743d0  44 a0 8d e2                                      add sl, sp, #0x44
004743d4  03 30 8f e0                                      add r3, pc, r3
004743d8  0c 30 8d e5                                      str r3, [sp, #0xc]
004743dc  28 30 8d e2                                      add r3, sp, #0x28
004743e0  08 20 8d e5                                      str r2, [sp, #8]
004743e4  2c 90 8d e2                                      add sb, sp, #0x2c
004743e8  10 30 8d e5                                      str r3, [sp, #0x10]
004743ec  06 00 00 ea                                      b #0x47440c
004743f0  a9 30 d5 e5                                      ldrb r3, [r5, #0xa9]
004743f4  00 00 53 e3                                      cmp r3, #0
004743f8  22 00 00 1a                                      bne #0x474488
004743fc  01 40 84 e2                                      add r4, r4, #1
00474400  08 00 54 e1                                      cmp r4, r8
00474404  41 00 00 0a                                      beq #0x474510
00474408  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0047440c  7e 30 d5 e5                                      ldrb r3, [r5, #0x7e]
00474410  04 61 90 e7                                      ldr r6, [r0, r4, lsl #2]
00474414  00 00 53 e3                                      cmp r3, #0
00474418  f4 ff ff 0a                                      beq #0x4743f0
0047441c  04 10 9d e5                                      ldr r1, [sp, #4]
00474420  01 00 97 e7                                      ldr r0, [r7, r1]
00474424  10 30 90 e5                                      ldr r3, [r0, #0x10]
00474428  1c b0 93 e5                                      ldr fp, [r3, #0x1c]
0047442c  58 ac fa eb                                      bl #0x31f594
00474430  00 10 a0 e1                                      mov r1, r0
00474434  0a 00 a0 e1                                      mov r0, sl
00474438  88 ff ff eb                                      bl #0x474260
0047443c  33 23 03 e3                                      movw r2, #0x3333
00474440  0b 00 a0 e1                                      mov r0, fp
00474444  06 10 a0 e1                                      mov r1, r6
00474448  f3 2f 43 e3                                      movt r2, #0x3ff3
0047444c  0a 30 a0 e1                                      mov r3, sl
00474450  4c 97 fb eb                                      bl #0x35a188
00474454  58 00 9d e5                                      ldr r0, [sp, #0x58]
00474458  0a 00 50 e1                                      cmp r0, sl
0047445c  e3 ff ff 0a                                      beq #0x4743f0
00474460  00 00 50 e3                                      cmp r0, #0
00474464  e1 ff ff 0a                                      beq #0x4743f0
00474468  44 10 9d e5                                      ldr r1, [sp, #0x44]
0047446c  01 10 60 e0                                      rsb r1, r0, r1
00474470  80 00 51 e3                                      cmp r1, #0x80
00474474  33 00 00 8a                                      bhi #0x474548
00474478  a0 52 0a eb                                      bl #0x708f00
0047447c  a9 30 d5 e5                                      ldrb r3, [r5, #0xa9]
00474480  00 00 53 e3                                      cmp r3, #0
00474484  dc ff ff 0a                                      beq #0x4743fc
00474488  08 20 9d e5                                      ldr r2, [sp, #8]
0047448c  02 b0 97 e7                                      ldr fp, [r7, r2]
00474490  0b 00 a0 e1                                      mov r0, fp
00474494  fb 0c fb eb                                      bl #0x337888
00474498  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0047449c  10 20 9d e5                                      ldr r2, [sp, #0x10]
004744a0  09 00 a0 e1                                      mov r0, sb
004744a4  10 7f fa eb                                      bl #0x3140ec
004744a8  0b 00 a0 e1                                      mov r0, fp
004744ac  09 10 a0 e1                                      mov r1, sb
004744b0  74 0d fb eb                                      bl #0x337a88
004744b4  00 b0 a0 e1                                      mov fp, r0
004744b8  40 00 9d e5                                      ldr r0, [sp, #0x40]
004744bc  09 00 50 e1                                      cmp r0, sb
004744c0  06 00 00 0a                                      beq #0x4744e0
004744c4  00 00 50 e3                                      cmp r0, #0
004744c8  04 00 00 0a                                      beq #0x4744e0
004744cc  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
004744d0  01 10 60 e0                                      rsb r1, r0, r1
004744d4  80 00 51 e3                                      cmp r1, #0x80
004744d8  18 00 00 8a                                      bhi #0x474540
004744dc  87 52 0a eb                                      bl #0x708f00
004744e0  00 00 5b e3                                      cmp fp, #0
004744e4  c4 ff ff 0a                                      beq #0x4743fc
004744e8  04 10 9d e5                                      ldr r1, [sp, #4]
004744ec  01 20 a0 e3                                      mov r2, #1
004744f0  01 40 84 e2                                      add r4, r4, #1
004744f4  01 30 97 e7                                      ldr r3, [r7, r1]
004744f8  06 10 a0 e1                                      mov r1, r6
004744fc  10 30 93 e5                                      ldr r3, [r3, #0x10]
00474500  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00474504  9c 80 fb eb                                      bl #0x35477c
00474508  08 00 54 e1                                      cmp r4, r8
0047450c  bd ff ff 1a                                      bne #0x474408
00474510  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00474514  00 00 50 e3                                      cmp r0, #0
00474518  00 00 00 0a                                      beq #0x474520
0047451c  cb 6f fa eb                                      bl #0x310450
00474520  14 20 9d e5                                      ldr r2, [sp, #0x14]
00474524  02 30 97 e7                                      ldr r3, [r7, r2]
00474528  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0047452c  00 30 93 e5                                      ldr r3, [r3]
00474530  03 00 52 e1                                      cmp r2, r3
00474534  05 00 00 1a                                      bne #0x474550
00474538  64 d0 8d e2                                      add sp, sp, #0x64
0047453c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00474540  be 6f fa eb                                      bl #0x310440
00474544  e5 ff ff ea                                      b #0x4744e0
00474548  bc 6f fa eb                                      bl #0x310440
0047454c  a7 ff ff ea                                      b #0x4743f0
00474550  6e 67 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00474554  f4 37 00 00 60 07 52 00 ac 40 00 00 a4 b6 44 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x60, 0x07, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0xb6, 0x44, 0x00
00474564  84 08 00 00                                      .byte 0x84, 0x08, 0x00, 0x00

; FUNCTION 0x00474568, declared_size=236, range_size=236, mode=arm
; class-group: VisualObject
; alias: _ZNK12VisualObject18GetModularModuleIdEiPKc
; demangled: VisualObject::GetModularModuleId(int, char const*) const
; decoder-mode: arm
00474568  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047456c  d0 40 9f e5                                      ldr r4, [pc, #0xd0]
00474570  d0 70 9f e5                                      ldr r7, [pc, #0xd0]
00474574  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00474578  04 40 8f e0                                      add r4, pc, r4
0047457c  07 30 94 e7                                      ldr r3, [r4, r7]
00474580  20 d0 4d e2                                      sub sp, sp, #0x20
00474584  04 50 8d e2                                      add r5, sp, #4
00474588  00 30 93 e5                                      ldr r3, [r3]
0047458c  02 60 a0 e1                                      mov r6, r2
00474590  01 10 8f e0                                      add r1, pc, r1
00474594  0d 20 a0 e1                                      mov r2, sp
00474598  00 80 a0 e1                                      mov r8, r0
0047459c  05 00 a0 e1                                      mov r0, r5
004745a0  1c 30 8d e5                                      str r3, [sp, #0x1c]
004745a4  d0 7e fa eb                                      bl #0x3140ec
004745a8  06 00 a0 e1                                      mov r0, r6
004745ac  28 66 fa eb                                      bl #0x30de54
004745b0  06 10 a0 e1                                      mov r1, r6
004745b4  00 20 86 e0                                      add r2, r6, r0
004745b8  05 00 a0 e1                                      mov r0, r5
004745bc  90 70 fa eb                                      bl #0x310804
004745c0  88 10 9f e5                                      ldr r1, [pc, #0x88]
004745c4  05 00 a0 e1                                      mov r0, r5
004745c8  01 10 8f e0                                      add r1, pc, r1
004745cc  0a 20 81 e2                                      add r2, r1, #0xa
004745d0  8b 70 fa eb                                      bl #0x310804
004745d4  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
004745d8  00 00 50 e3                                      cmp r0, #0
004745dc  00 60 e0 03                                      mvneq r6, #0
004745e0  02 00 00 0a                                      beq #0x4745f0
004745e4  18 10 9d e5                                      ldr r1, [sp, #0x18]
004745e8  9d 53 07 eb                                      bl #0x649464
004745ec  00 60 a0 e1                                      mov r6, r0
004745f0  18 00 9d e5                                      ldr r0, [sp, #0x18]
004745f4  05 00 50 e1                                      cmp r0, r5
004745f8  06 00 00 0a                                      beq #0x474618
004745fc  00 00 50 e3                                      cmp r0, #0
00474600  04 00 00 0a                                      beq #0x474618
00474604  04 10 9d e5                                      ldr r1, [sp, #4]
00474608  01 10 60 e0                                      rsb r1, r0, r1
0047460c  80 00 51 e3                                      cmp r1, #0x80
00474610  08 00 00 8a                                      bhi #0x474638
00474614  39 52 0a eb                                      bl #0x708f00
00474618  07 30 94 e7                                      ldr r3, [r4, r7]
0047461c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00474620  06 00 a0 e1                                      mov r0, r6
00474624  00 30 93 e5                                      ldr r3, [r3]
00474628  03 00 52 e1                                      cmp r2, r3
0047462c  03 00 00 1a                                      bne #0x474640
00474630  20 d0 8d e2                                      add sp, sp, #0x20
00474634  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00474638  80 6f fa eb                                      bl #0x310440
0047463c  f5 ff ff ea                                      b #0x474618
00474640  32 67 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00474644  18 05 52 00 ac 40 00 00 f0 2c 45 00 30 91 45 00  .byte 0x18, 0x05, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0x2c, 0x45, 0x00, 0x30, 0x91, 0x45, 0x00

; FUNCTION 0x00474654, declared_size=36, range_size=36, mode=arm
; class-group: VisualObject
; alias: _ZNK12VisualObject18GetModularModuleIdEPKcS1_
; demangled: VisualObject::GetModularModuleId(char const*, char const*) const
; decoder-mode: arm
00474654  70 40 2d e9                                      push {r4, r5, r6, lr}
00474658  02 40 a0 e1                                      mov r4, r2
0047465c  00 50 a0 e1                                      mov r5, r0
00474660  fd f1 ff eb                                      bl #0x470e5c
00474664  04 20 a0 e1                                      mov r2, r4
00474668  00 10 a0 e1                                      mov r1, r0
0047466c  05 00 a0 e1                                      mov r0, r5
00474670  70 40 bd e8                                      pop {r4, r5, r6, lr}
00474674  bb ff ff ea                                      b #0x474568
