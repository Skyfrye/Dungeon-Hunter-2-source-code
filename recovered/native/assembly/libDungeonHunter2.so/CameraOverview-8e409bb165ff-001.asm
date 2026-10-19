; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00410928, declared_size=8, range_size=8, mode=arm
; class-group: CameraOverview
; alias: _ZThn12_N14CameraOverview7onEventEPK6IEventPK12EventManager
; demangled: non-virtual thunk to CameraOverview::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
00410928  0c 00 40 e2                                      sub r0, r0, #0xc
0041092c  ff ff ff ea                                      b #0x410930

; FUNCTION 0x00410930, declared_size=404, range_size=404, mode=arm
; class-group: CameraOverview
; alias: _ZN14CameraOverview7onEventEPK6IEventPK12EventManager
; demangled: CameraOverview::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
00410930  70 40 2d e9                                      push {r4, r5, r6, lr}
00410934  00 40 a0 e1                                      mov r4, r0
00410938  00 30 91 e5                                      ldr r3, [r1]
0041093c  01 00 a0 e1                                      mov r0, r1
00410940  01 50 a0 e1                                      mov r5, r1
00410944  0f e0 a0 e1                                      mov lr, pc
00410948  08 f0 93 e5                                      ldr pc, [r3, #8]
0041094c  00 00 50 e3                                      cmp r0, #0
00410950  23 00 00 1a                                      bne #0x4109e4
00410954  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
00410958  00 00 53 e3                                      cmp r3, #0
0041095c  1c 00 00 0a                                      beq #0x4109d4
00410960  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00410964  41 30 43 e2                                      sub r3, r3, #0x41
00410968  17 00 53 e3                                      cmp r3, #0x17
0041096c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00410970  1b 00 00 ea                                      b #0x4109e4
00410974  2c 00 00 ea                                      b #0x410a2c
00410978  19 00 00 ea                                      b #0x4109e4
0041097c  18 00 00 ea                                      b #0x4109e4
00410980  30 00 00 ea                                      b #0x410a48
00410984  36 00 00 ea                                      b #0x410a64
00410988  15 00 00 ea                                      b #0x4109e4
0041098c  14 00 00 ea                                      b #0x4109e4
00410990  13 00 00 ea                                      b #0x4109e4
00410994  12 00 00 ea                                      b #0x4109e4
00410998  11 00 00 ea                                      b #0x4109e4
0041099c  10 00 00 ea                                      b #0x4109e4
004109a0  0f 00 00 ea                                      b #0x4109e4
004109a4  0e 00 00 ea                                      b #0x4109e4
004109a8  0d 00 00 ea                                      b #0x4109e4
004109ac  0c 00 00 ea                                      b #0x4109e4
004109b0  0b 00 00 ea                                      b #0x4109e4
004109b4  2f 00 00 ea                                      b #0x410a78
004109b8  09 00 00 ea                                      b #0x4109e4
004109bc  32 00 00 ea                                      b #0x410a8c
004109c0  07 00 00 ea                                      b #0x4109e4
004109c4  06 00 00 ea                                      b #0x4109e4
004109c8  05 00 00 ea                                      b #0x4109e4
004109cc  35 00 00 ea                                      b #0x410aa8
004109d0  0f 00 00 ea                                      b #0x410a14
004109d4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004109d8  41 30 43 e2                                      sub r3, r3, #0x41
004109dc  17 00 53 e3                                      cmp r3, #0x17
004109e0  01 00 00 9a                                      bls #0x4109ec
004109e4  00 00 a0 e3                                      mov r0, #0
004109e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004109ec  01 00 a0 e3                                      mov r0, #1
004109f0  10 23 a0 e1                                      lsl r2, r0, r3
004109f4  19 30 00 e3                                      movw r3, #0x19
004109f8  c5 30 40 e3                                      movt r3, #0xc5
004109fc  03 30 02 e0                                      and r3, r2, r3
00410a00  00 00 53 e3                                      cmp r3, #0
00410a04  f6 ff ff 0a                                      beq #0x4109e4
00410a08  00 30 a0 e3                                      mov r3, #0
00410a0c  24 30 84 e5                                      str r3, [r4, #0x24]
00410a10  70 80 bd e8                                      pop {r4, r5, r6, pc}
00410a14  00 30 a0 e3                                      mov r3, #0
00410a18  01 00 a0 e3                                      mov r0, #1
00410a1c  24 30 84 e5                                      str r3, [r4, #0x24]
00410a20  1c 30 84 e5                                      str r3, [r4, #0x1c]
00410a24  20 30 84 e5                                      str r3, [r4, #0x20]
00410a28  70 80 bd e8                                      pop {r4, r5, r6, pc}
00410a2c  42 14 a0 e3                                      mov r1, #0x42000000
00410a30  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00410a34  32 17 81 e2                                      add r1, r1, #0xc80000
00410a38  5b f6 fb eb                                      bl #0x30e3ac
00410a3c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00410a40  01 00 a0 e3                                      mov r0, #1
00410a44  70 80 bd e8                                      pop {r4, r5, r6, pc}
00410a48  42 14 a0 e3                                      mov r1, #0x42000000
00410a4c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00410a50  32 17 81 e2                                      add r1, r1, #0xc80000
00410a54  52 f8 fb eb                                      bl #0x30eba4
00410a58  1c 00 84 e5                                      str r0, [r4, #0x1c]
00410a5c  01 00 a0 e3                                      mov r0, #1
00410a60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00410a64  42 34 a0 e3                                      mov r3, #0x42000000
00410a68  32 37 83 e2                                      add r3, r3, #0xc80000
00410a6c  01 00 a0 e3                                      mov r0, #1
00410a70  24 30 84 e5                                      str r3, [r4, #0x24]
00410a74  70 80 bd e8                                      pop {r4, r5, r6, pc}
00410a78  c2 34 a0 e3                                      mov r3, #0xc2000000
00410a7c  32 37 83 e2                                      add r3, r3, #0xc80000
00410a80  01 00 a0 e3                                      mov r0, #1
00410a84  24 30 84 e5                                      str r3, [r4, #0x24]
00410a88  70 80 bd e8                                      pop {r4, r5, r6, pc}
00410a8c  42 14 a0 e3                                      mov r1, #0x42000000
00410a90  20 00 94 e5                                      ldr r0, [r4, #0x20]
00410a94  32 17 81 e2                                      add r1, r1, #0xc80000
00410a98  43 f6 fb eb                                      bl #0x30e3ac
00410a9c  20 00 84 e5                                      str r0, [r4, #0x20]
00410aa0  01 00 a0 e3                                      mov r0, #1
00410aa4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00410aa8  42 14 a0 e3                                      mov r1, #0x42000000
00410aac  20 00 94 e5                                      ldr r0, [r4, #0x20]
00410ab0  32 17 81 e2                                      add r1, r1, #0xc80000
00410ab4  3a f8 fb eb                                      bl #0x30eba4
00410ab8  20 00 84 e5                                      str r0, [r4, #0x20]
00410abc  01 00 a0 e3                                      mov r0, #1
00410ac0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00410ac4, declared_size=40, range_size=40, mode=arm
; class-group: CameraOverview
; alias: _ZN14CameraOverview11DeactivatedEv
; demangled: CameraOverview::Deactivated()
; decoder-mode: arm
00410ac4  18 30 9f e5                                      ldr r3, [pc, #0x18]
00410ac8  18 10 9f e5                                      ldr r1, [pc, #0x18]
00410acc  0c 20 80 e2                                      add r2, r0, #0xc
00410ad0  03 30 8f e0                                      add r3, pc, r3
00410ad4  01 c0 93 e7                                      ldr ip, [r3, r1]
00410ad8  00 10 a0 e3                                      mov r1, #0
00410adc  14 00 9c e5                                      ldr r0, [ip, #0x14]
00410ae0  8d 9d fc ea                                      b #0x33811c
; mapping-symbol data/literal pool
00410ae4  c0 3f 58 00 f4 37 00 00                          .byte 0xc0, 0x3f, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00410aec, declared_size=368, range_size=368, mode=arm
; class-group: CameraOverview
; alias: _ZN14CameraOverview9ActivatedEv
; demangled: CameraOverview::Activated()
; decoder-mode: arm
00410aec  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00410af0  58 51 9f e5                                      ldr r5, [pc, #0x158]
00410af4  58 61 9f e5                                      ldr r6, [pc, #0x158]
00410af8  00 40 a0 e1                                      mov r4, r0
00410afc  05 50 8f e0                                      add r5, pc, r5
00410b00  06 30 95 e7                                      ldr r3, [r5, r6]
00410b04  01 20 a0 e3                                      mov r2, #1
00410b08  14 d0 4d e2                                      sub sp, sp, #0x14
00410b0c  40 00 93 e5                                      ldr r0, [r3, #0x40]
00410b10  00 10 a0 e3                                      mov r1, #0
00410b14  57 76 fd eb                                      bl #0x36e478
00410b18  60 36 90 e5                                      ldr r3, [r0, #0x660]
00410b1c  00 20 a0 e3                                      mov r2, #0
00410b20  1c 20 84 e5                                      str r2, [r4, #0x1c]
00410b24  00 00 53 e3                                      cmp r3, #0
00410b28  20 20 84 e5                                      str r2, [r4, #0x20]
00410b2c  24 20 84 e5                                      str r2, [r4, #0x24]
00410b30  60 21 93 15                                      ldrne r2, [r3, #0x160]
00410b34  08 70 94 e5                                      ldr r7, [r4, #8]
00410b38  18 20 84 05                                      streq r2, [r4, #0x18]
00410b3c  10 20 84 15                                      strne r2, [r4, #0x10]
00410b40  64 21 93 15                                      ldrne r2, [r3, #0x164]
00410b44  10 20 84 05                                      streq r2, [r4, #0x10]
00410b48  14 20 84 05                                      streq r2, [r4, #0x14]
00410b4c  14 20 84 15                                      strne r2, [r4, #0x14]
00410b50  68 31 93 15                                      ldrne r3, [r3, #0x168]
00410b54  18 30 84 15                                      strne r3, [r4, #0x18]
00410b58  00 00 57 e3                                      cmp r7, #0
00410b5c  33 00 00 0a                                      beq #0x410c30
00410b60  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
00410b64  03 30 95 e7                                      ldr r3, [r5, r3]
00410b68  00 00 53 e3                                      cmp r3, #0
00410b6c  00 80 a0 03                                      moveq r8, #0
00410b70  08 00 00 0a                                      beq #0x410b98
00410b74  1c 80 93 e5                                      ldr r8, [r3, #0x1c]
00410b78  28 00 93 e5                                      ldr r0, [r3, #0x28]
00410b7c  08 10 a0 e1                                      mov r1, r8
00410b80  09 f6 fb eb                                      bl #0x30e3ac
00410b84  3f 14 a0 e3                                      mov r1, #0x3f000000
00410b88  77 f8 fb eb                                      bl #0x30ed6c
00410b8c  08 10 a0 e1                                      mov r1, r8
00410b90  03 f8 fb eb                                      bl #0x30eba4
00410b94  00 80 a0 e1                                      mov r8, r0
00410b98  00 10 04 e3                                      movw r1, #0x4000
00410b9c  9c 16 44 e3                                      movt r1, #0x469c
00410ba0  08 00 a0 e1                                      mov r0, r8
00410ba4  fe f7 fb eb                                      bl #0x30eba4
00410ba8  00 10 04 e3                                      movw r1, #0x4000
00410bac  9c 15 44 e3                                      movt r1, #0x459c
00410bb0  00 a0 a0 e1                                      mov sl, r0
00410bb4  fc f5 fb eb                                      bl #0x30e3ac
00410bb8  00 30 97 e5                                      ldr r3, [r7]
00410bbc  00 10 a0 e1                                      mov r1, r0
00410bc0  07 00 a0 e1                                      mov r0, r7
00410bc4  0f e0 a0 e1                                      mov lr, pc
00410bc8  30 f1 93 e5                                      ldr pc, [r3, #0x130]
00410bcc  00 10 04 e3                                      movw r1, #0x4000
00410bd0  9c 15 44 e3                                      movt r1, #0x459c
00410bd4  0a 00 a0 e1                                      mov r0, sl
00410bd8  f1 f7 fb eb                                      bl #0x30eba4
00410bdc  08 70 94 e5                                      ldr r7, [r4, #8]
00410be0  00 10 a0 e1                                      mov r1, r0
00410be4  00 30 97 e5                                      ldr r3, [r7]
00410be8  07 00 a0 e1                                      mov r0, r7
00410bec  0f e0 a0 e1                                      mov lr, pc
00410bf0  34 f1 93 e5                                      ldr pc, [r3, #0x134]
00410bf4  08 00 94 e5                                      ldr r0, [r4, #8]
00410bf8  14 20 94 e5                                      ldr r2, [r4, #0x14]
00410bfc  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00410c00  00 30 90 e5                                      ldr r3, [r0]
00410c04  04 10 8d e2                                      add r1, sp, #4
00410c08  04 31 93 e5                                      ldr r3, [r3, #0x104]
00410c0c  08 20 8d e5                                      str r2, [sp, #8]
00410c10  04 c0 8d e5                                      str ip, [sp, #4]
00410c14  0c 80 8d e5                                      str r8, [sp, #0xc]
00410c18  33 ff 2f e1                                      blx r3
00410c1c  0a 30 a0 e1                                      mov r3, sl
00410c20  04 00 94 e5                                      ldr r0, [r4, #4]
00410c24  10 10 94 e5                                      ldr r1, [r4, #0x10]
00410c28  14 20 94 e5                                      ldr r2, [r4, #0x14]
00410c2c  48 19 06 eb                                      bl #0x597154
00410c30  06 30 95 e7                                      ldr r3, [r5, r6]
00410c34  0c 20 84 e2                                      add r2, r4, #0xc
00410c38  00 10 a0 e3                                      mov r1, #0
00410c3c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00410c40  02 31 e0 e3                                      mvn r3, #0x80000000
00410c44  55 a0 fc eb                                      bl #0x338da0
00410c48  14 d0 8d e2                                      add sp, sp, #0x14
00410c4c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00410c50  94 3f 58 00 f4 37 00 00 04 12 00 00              .byte 0x94, 0x3f, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x04, 0x12, 0x00, 0x00

; FUNCTION 0x00410c5c, declared_size=8, range_size=8, mode=arm
; class-group: CameraOverview
; alias: _ZThn12_N14CameraOverviewD1Ev
; demangled: non-virtual thunk to CameraOverview::~CameraOverview()
; decoder-mode: arm
00410c5c  0c 00 40 e2                                      sub r0, r0, #0xc
00410c60  ff ff ff ea                                      b #0x410c64

; FUNCTION 0x00410c64, declared_size=72, range_size=72, mode=arm
; class-group: CameraOverview
; alias: _ZN14CameraOverviewD1Ev
; demangled: CameraOverview::~CameraOverview()
; decoder-mode: arm
00410c64  34 30 9f e5                                      ldr r3, [pc, #0x34]
00410c68  34 10 9f e5                                      ldr r1, [pc, #0x34]
00410c6c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00410c70  03 30 8f e0                                      add r3, pc, r3
00410c74  01 10 93 e7                                      ldr r1, [r3, r1]
00410c78  02 20 93 e7                                      ldr r2, [r3, r2]
00410c7c  10 40 2d e9                                      push {r4, lr}
00410c80  08 10 81 e2                                      add r1, r1, #8
00410c84  08 20 82 e2                                      add r2, r2, #8
00410c88  00 40 a0 e1                                      mov r4, r0
00410c8c  00 10 80 e5                                      str r1, [r0]
00410c90  0c 20 80 e5                                      str r2, [r0, #0xc]
00410c94  b9 f6 ff eb                                      bl #0x40e780
00410c98  04 00 a0 e1                                      mov r0, r4
00410c9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00410ca0  20 3e 58 00 08 3b 00 00 40 0b 00 00              .byte 0x20, 0x3e, 0x58, 0x00, 0x08, 0x3b, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x00410cac, declared_size=8, range_size=8, mode=arm
; class-group: CameraOverview
; alias: _ZThn12_N14CameraOverviewD0Ev
; demangled: non-virtual thunk to CameraOverview::~CameraOverview()
; decoder-mode: arm
00410cac  0c 00 40 e2                                      sub r0, r0, #0xc
00410cb0  ff ff ff ea                                      b #0x410cb4

; FUNCTION 0x00410cb4, declared_size=28, range_size=28, mode=arm
; class-group: CameraOverview
; alias: _ZN14CameraOverviewD0Ev
; demangled: CameraOverview::~CameraOverview()
; decoder-mode: arm
00410cb4  10 40 2d e9                                      push {r4, lr}
00410cb8  00 40 a0 e1                                      mov r4, r0
00410cbc  e8 ff ff eb                                      bl #0x410c64
00410cc0  04 00 a0 e1                                      mov r0, r4
00410cc4  dd fd fb eb                                      bl #0x310440
00410cc8  04 00 a0 e1                                      mov r0, r4
00410ccc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00410cd0, declared_size=72, range_size=72, mode=arm
; class-group: CameraOverview
; alias: _ZN14CameraOverviewD2Ev
; demangled: CameraOverview::~CameraOverview()
; decoder-mode: arm
00410cd0  34 30 9f e5                                      ldr r3, [pc, #0x34]
00410cd4  34 10 9f e5                                      ldr r1, [pc, #0x34]
00410cd8  34 20 9f e5                                      ldr r2, [pc, #0x34]
00410cdc  03 30 8f e0                                      add r3, pc, r3
00410ce0  01 10 93 e7                                      ldr r1, [r3, r1]
00410ce4  02 20 93 e7                                      ldr r2, [r3, r2]
00410ce8  10 40 2d e9                                      push {r4, lr}
00410cec  08 10 81 e2                                      add r1, r1, #8
00410cf0  08 20 82 e2                                      add r2, r2, #8
00410cf4  00 40 a0 e1                                      mov r4, r0
00410cf8  00 10 80 e5                                      str r1, [r0]
00410cfc  0c 20 80 e5                                      str r2, [r0, #0xc]
00410d00  9e f6 ff eb                                      bl #0x40e780
00410d04  04 00 a0 e1                                      mov r0, r4
00410d08  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00410d0c  b4 3d 58 00 08 3b 00 00 40 0b 00 00              .byte 0xb4, 0x3d, 0x58, 0x00, 0x08, 0x3b, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x00410ea4, declared_size=456, range_size=456, mode=arm
; class-group: CameraOverview
; alias: _ZN14CameraOverviewC2Ev
; demangled: CameraOverview::CameraOverview()
; decoder-mode: arm
00410ea4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00410ea8  b0 51 9f e5                                      ldr r5, [pc, #0x1b0]
00410eac  44 d0 4d e2                                      sub sp, sp, #0x44
00410eb0  00 40 a0 e1                                      mov r4, r0
00410eb4  19 f6 ff eb                                      bl #0x40e720
00410eb8  a4 21 9f e5                                      ldr r2, [pc, #0x1a4]
00410ebc  05 50 8f e0                                      add r5, pc, r5
00410ec0  a0 61 9f e5                                      ldr r6, [pc, #0x1a0]
00410ec4  02 20 95 e7                                      ldr r2, [r5, r2]
00410ec8  00 30 a0 e3                                      mov r3, #0
00410ecc  06 10 95 e7                                      ldr r1, [r5, r6]
00410ed0  28 00 82 e2                                      add r0, r2, #0x28
00410ed4  08 20 82 e2                                      add r2, r2, #8
00410ed8  0c 00 84 e5                                      str r0, [r4, #0xc]
00410edc  00 20 84 e5                                      str r2, [r4]
00410ee0  24 30 84 e5                                      str r3, [r4, #0x24]
00410ee4  10 30 84 e5                                      str r3, [r4, #0x10]
00410ee8  14 30 84 e5                                      str r3, [r4, #0x14]
00410eec  18 30 84 e5                                      str r3, [r4, #0x18]
00410ef0  1c 30 84 e5                                      str r3, [r4, #0x1c]
00410ef4  20 30 84 e5                                      str r3, [r4, #0x20]
00410ef8  10 30 91 e5                                      ldr r3, [r1, #0x10]
00410efc  63 11 06 e3                                      movw r1, #0x6163
00410f00  6d 1f 45 e3                                      movt r1, #0x5f6d
00410f04  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00410f08  d0 30 92 e5                                      ldr r3, [r2, #0xd0]
00410f0c  cc 20 92 e5                                      ldr r2, [r2, #0xcc]
00410f10  03 30 62 e0                                      rsb r3, r2, r3
00410f14  43 31 b0 e1                                      asrs r3, r3, #2
00410f18  00 30 92 15                                      ldrne r3, [r2]
00410f1c  00 20 a0 e3                                      mov r2, #0
00410f20  03 00 a0 e1                                      mov r0, r3
00410f24  00 30 93 e5                                      ldr r3, [r3]
00410f28  0f e0 a0 e1                                      mov lr, pc
00410f2c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00410f30  00 00 50 e3                                      cmp r0, #0
00410f34  08 00 84 e5                                      str r0, [r4, #8]
00410f38  04 00 84 e5                                      str r0, [r4, #4]
00410f3c  44 00 00 0a                                      beq #0x411054
00410f40  00 20 90 e5                                      ldr r2, [r0]
00410f44  06 30 95 e7                                      ldr r3, [r5, r6]
00410f48  00 50 a0 e3                                      mov r5, #0
00410f4c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00410f50  fe 65 a0 e3                                      mov r6, #0x3f800000
00410f54  0c 70 8d e2                                      add r7, sp, #0xc
00410f58  02 00 80 e0                                      add r0, r0, r2
00410f5c  04 20 90 e5                                      ldr r2, [r0, #4]
00410f60  01 20 82 e2                                      add r2, r2, #1
00410f64  04 20 80 e5                                      str r2, [r0, #4]
00410f68  10 30 93 e5                                      ldr r3, [r3, #0x10]
00410f6c  04 10 94 e5                                      ldr r1, [r4, #4]
00410f70  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00410f74  04 30 93 e5                                      ldr r3, [r3, #4]
00410f78  03 00 a0 e1                                      mov r0, r3
00410f7c  00 30 93 e5                                      ldr r3, [r3]
00410f80  0f e0 a0 e1                                      mov lr, pc
00410f84  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00410f88  00 c0 05 e3                                      movw ip, #0x5000
00410f8c  c3 c6 44 e3                                      movt ip, #0x46c3
00410f90  39 2e 08 e3                                      movw r2, #0x8e39
00410f94  00 30 06 e3                                      movw r3, #0x6000
00410f98  77 18 0f e3                                      movw r1, #0xf877
00410f9c  e3 2f 43 e3                                      movt r2, #0x3fe3
00410fa0  6a 36 44 e3                                      movt r3, #0x466a
00410fa4  04 00 a0 e1                                      mov r0, r4
00410fa8  db 1e 43 e3                                      movt r1, #0x3edb
00410fac  00 c0 8d e5                                      str ip, [sp]
00410fb0  01 c0 a0 e3                                      mov ip, #1
00410fb4  04 c0 8d e5                                      str ip, [sp, #4]
00410fb8  7a f6 ff eb                                      bl #0x40e9a8
00410fbc  08 00 94 e5                                      ldr r0, [r4, #8]
00410fc0  34 10 8d e2                                      add r1, sp, #0x34
00410fc4  00 30 90 e5                                      ldr r3, [r0]
00410fc8  14 31 93 e5                                      ldr r3, [r3, #0x114]
00410fcc  34 50 8d e5                                      str r5, [sp, #0x34]
00410fd0  38 60 8d e5                                      str r6, [sp, #0x38]
00410fd4  3c 50 8d e5                                      str r5, [sp, #0x3c]
00410fd8  33 ff 2f e1                                      blx r3
00410fdc  08 00 94 e5                                      ldr r0, [r4, #8]
00410fe0  28 10 8d e2                                      add r1, sp, #0x28
00410fe4  00 30 90 e5                                      ldr r3, [r0]
00410fe8  04 31 93 e5                                      ldr r3, [r3, #0x104]
00410fec  28 50 8d e5                                      str r5, [sp, #0x28]
00410ff0  2c 50 8d e5                                      str r5, [sp, #0x2c]
00410ff4  30 50 8d e5                                      str r5, [sp, #0x30]
00410ff8  33 ff 2f e1                                      blx r3
00410ffc  1c 10 8d e2                                      add r1, sp, #0x1c
00411000  07 00 a0 e1                                      mov r0, r7
00411004  20 60 8d e5                                      str r6, [sp, #0x20]
00411008  0c 50 8d e5                                      str r5, [sp, #0xc]
0041100c  10 50 8d e5                                      str r5, [sp, #0x10]
00411010  14 50 8d e5                                      str r5, [sp, #0x14]
00411014  18 60 8d e5                                      str r6, [sp, #0x18]
00411018  1c 50 8d e5                                      str r5, [sp, #0x1c]
0041101c  24 50 8d e5                                      str r5, [sp, #0x24]
00411020  88 ff ff eb                                      bl #0x410e48
00411024  04 30 94 e5                                      ldr r3, [r4, #4]
00411028  07 10 a0 e1                                      mov r1, r7
0041102c  03 00 a0 e1                                      mov r0, r3
00411030  00 30 93 e5                                      ldr r3, [r3]
00411034  0f e0 a0 e1                                      mov lr, pc
00411038  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0041103c  00 30 04 e3                                      movw r3, #0x4000
00411040  05 10 a0 e1                                      mov r1, r5
00411044  04 00 94 e5                                      ldr r0, [r4, #4]
00411048  05 20 a0 e1                                      mov r2, r5
0041104c  9c 36 44 e3                                      movt r3, #0x469c
00411050  3f 18 06 eb                                      bl #0x597154
00411054  04 00 a0 e1                                      mov r0, r4
00411058  44 d0 8d e2                                      add sp, sp, #0x44
0041105c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00411060  d4 3b 58 00 08 3b 00 00 f4 37 00 00              .byte 0xd4, 0x3b, 0x58, 0x00, 0x08, 0x3b, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041106c, declared_size=456, range_size=456, mode=arm
; class-group: CameraOverview
; alias: _ZN14CameraOverviewC1Ev
; demangled: CameraOverview::CameraOverview()
; decoder-mode: arm
0041106c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00411070  b0 51 9f e5                                      ldr r5, [pc, #0x1b0]
00411074  44 d0 4d e2                                      sub sp, sp, #0x44
00411078  00 40 a0 e1                                      mov r4, r0
0041107c  a7 f5 ff eb                                      bl #0x40e720
00411080  a4 21 9f e5                                      ldr r2, [pc, #0x1a4]
00411084  05 50 8f e0                                      add r5, pc, r5
00411088  a0 61 9f e5                                      ldr r6, [pc, #0x1a0]
0041108c  02 20 95 e7                                      ldr r2, [r5, r2]
00411090  00 30 a0 e3                                      mov r3, #0
00411094  06 10 95 e7                                      ldr r1, [r5, r6]
00411098  28 00 82 e2                                      add r0, r2, #0x28
0041109c  08 20 82 e2                                      add r2, r2, #8
004110a0  0c 00 84 e5                                      str r0, [r4, #0xc]
004110a4  00 20 84 e5                                      str r2, [r4]
004110a8  24 30 84 e5                                      str r3, [r4, #0x24]
004110ac  10 30 84 e5                                      str r3, [r4, #0x10]
004110b0  14 30 84 e5                                      str r3, [r4, #0x14]
004110b4  18 30 84 e5                                      str r3, [r4, #0x18]
004110b8  1c 30 84 e5                                      str r3, [r4, #0x1c]
004110bc  20 30 84 e5                                      str r3, [r4, #0x20]
004110c0  10 30 91 e5                                      ldr r3, [r1, #0x10]
004110c4  63 11 06 e3                                      movw r1, #0x6163
004110c8  6d 1f 45 e3                                      movt r1, #0x5f6d
004110cc  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
004110d0  d0 30 92 e5                                      ldr r3, [r2, #0xd0]
004110d4  cc 20 92 e5                                      ldr r2, [r2, #0xcc]
004110d8  03 30 62 e0                                      rsb r3, r2, r3
004110dc  43 31 b0 e1                                      asrs r3, r3, #2
004110e0  00 30 92 15                                      ldrne r3, [r2]
004110e4  00 20 a0 e3                                      mov r2, #0
004110e8  03 00 a0 e1                                      mov r0, r3
004110ec  00 30 93 e5                                      ldr r3, [r3]
004110f0  0f e0 a0 e1                                      mov lr, pc
004110f4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004110f8  00 00 50 e3                                      cmp r0, #0
004110fc  08 00 84 e5                                      str r0, [r4, #8]
00411100  04 00 84 e5                                      str r0, [r4, #4]
00411104  44 00 00 0a                                      beq #0x41121c
00411108  00 20 90 e5                                      ldr r2, [r0]
0041110c  06 30 95 e7                                      ldr r3, [r5, r6]
00411110  00 50 a0 e3                                      mov r5, #0
00411114  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00411118  fe 65 a0 e3                                      mov r6, #0x3f800000
0041111c  0c 70 8d e2                                      add r7, sp, #0xc
00411120  02 00 80 e0                                      add r0, r0, r2
00411124  04 20 90 e5                                      ldr r2, [r0, #4]
00411128  01 20 82 e2                                      add r2, r2, #1
0041112c  04 20 80 e5                                      str r2, [r0, #4]
00411130  10 30 93 e5                                      ldr r3, [r3, #0x10]
00411134  04 10 94 e5                                      ldr r1, [r4, #4]
00411138  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0041113c  04 30 93 e5                                      ldr r3, [r3, #4]
00411140  03 00 a0 e1                                      mov r0, r3
00411144  00 30 93 e5                                      ldr r3, [r3]
00411148  0f e0 a0 e1                                      mov lr, pc
0041114c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00411150  00 c0 05 e3                                      movw ip, #0x5000
00411154  c3 c6 44 e3                                      movt ip, #0x46c3
00411158  39 2e 08 e3                                      movw r2, #0x8e39
0041115c  00 30 06 e3                                      movw r3, #0x6000
00411160  77 18 0f e3                                      movw r1, #0xf877
00411164  e3 2f 43 e3                                      movt r2, #0x3fe3
00411168  6a 36 44 e3                                      movt r3, #0x466a
0041116c  04 00 a0 e1                                      mov r0, r4
00411170  db 1e 43 e3                                      movt r1, #0x3edb
00411174  00 c0 8d e5                                      str ip, [sp]
00411178  01 c0 a0 e3                                      mov ip, #1
0041117c  04 c0 8d e5                                      str ip, [sp, #4]
00411180  08 f6 ff eb                                      bl #0x40e9a8
00411184  08 00 94 e5                                      ldr r0, [r4, #8]
00411188  34 10 8d e2                                      add r1, sp, #0x34
0041118c  00 30 90 e5                                      ldr r3, [r0]
00411190  14 31 93 e5                                      ldr r3, [r3, #0x114]
00411194  34 50 8d e5                                      str r5, [sp, #0x34]
00411198  38 60 8d e5                                      str r6, [sp, #0x38]
0041119c  3c 50 8d e5                                      str r5, [sp, #0x3c]
004111a0  33 ff 2f e1                                      blx r3
004111a4  08 00 94 e5                                      ldr r0, [r4, #8]
004111a8  28 10 8d e2                                      add r1, sp, #0x28
004111ac  00 30 90 e5                                      ldr r3, [r0]
004111b0  04 31 93 e5                                      ldr r3, [r3, #0x104]
004111b4  28 50 8d e5                                      str r5, [sp, #0x28]
004111b8  2c 50 8d e5                                      str r5, [sp, #0x2c]
004111bc  30 50 8d e5                                      str r5, [sp, #0x30]
004111c0  33 ff 2f e1                                      blx r3
004111c4  1c 10 8d e2                                      add r1, sp, #0x1c
004111c8  07 00 a0 e1                                      mov r0, r7
004111cc  20 60 8d e5                                      str r6, [sp, #0x20]
004111d0  0c 50 8d e5                                      str r5, [sp, #0xc]
004111d4  10 50 8d e5                                      str r5, [sp, #0x10]
004111d8  14 50 8d e5                                      str r5, [sp, #0x14]
004111dc  18 60 8d e5                                      str r6, [sp, #0x18]
004111e0  1c 50 8d e5                                      str r5, [sp, #0x1c]
004111e4  24 50 8d e5                                      str r5, [sp, #0x24]
004111e8  16 ff ff eb                                      bl #0x410e48
004111ec  04 30 94 e5                                      ldr r3, [r4, #4]
004111f0  07 10 a0 e1                                      mov r1, r7
004111f4  03 00 a0 e1                                      mov r0, r3
004111f8  00 30 93 e5                                      ldr r3, [r3]
004111fc  0f e0 a0 e1                                      mov lr, pc
00411200  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00411204  00 30 04 e3                                      movw r3, #0x4000
00411208  05 10 a0 e1                                      mov r1, r5
0041120c  04 00 94 e5                                      ldr r0, [r4, #4]
00411210  05 20 a0 e1                                      mov r2, r5
00411214  9c 36 44 e3                                      movt r3, #0x469c
00411218  cd 17 06 eb                                      bl #0x597154
0041121c  04 00 a0 e1                                      mov r0, r4
00411220  44 d0 8d e2                                      add sp, sp, #0x44
00411224  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00411228  0c 3a 58 00 08 3b 00 00 f4 37 00 00              .byte 0x0c, 0x3a, 0x58, 0x00, 0x08, 0x3b, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00411234, declared_size=932, range_size=932, mode=arm
; class-group: CameraOverview
; alias: _ZN14CameraOverview6UpdateEv
; demangled: CameraOverview::Update()
; decoder-mode: arm
00411234  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00411238  00 40 a0 e1                                      mov r4, r0
0041123c  2c d0 4d e2                                      sub sp, sp, #0x2c
00411240  02 f6 ff eb                                      bl #0x40ea50
00411244  04 30 94 e5                                      ldr r3, [r4, #4]
00411248  7c 53 9f e5                                      ldr r5, [pc, #0x37c]
0041124c  00 00 53 e3                                      cmp r3, #0
00411250  05 50 8f e0                                      add r5, pc, r5
00411254  84 00 00 0a                                      beq #0x41146c
00411258  d1 f2 fc eb                                      bl #0x34dda4
0041125c  54 f1 fc eb                                      bl #0x34d7b4
00411260  00 60 50 e2                                      subs r6, r0, #0
00411264  46 00 00 0a                                      beq #0x411384
00411268  00 70 a0 e3                                      mov r7, #0
0041126c  04 70 8d e5                                      str r7, [sp, #4]
00411270  08 70 8d e5                                      str r7, [sp, #8]
00411274  0c 70 8d e5                                      str r7, [sp, #0xc]
00411278  ec 05 96 e5                                      ldr r0, [r6, #0x5ec]
0041127c  00 10 a0 e1                                      mov r1, r0
00411280  47 f6 fb eb                                      bl #0x30eba4
00411284  f0 15 96 e5                                      ldr r1, [r6, #0x5f0]
00411288  00 80 a0 e1                                      mov r8, r0
0041128c  f4 05 96 e5                                      ldr r0, [r6, #0x5f4]
00411290  45 f4 fb eb                                      bl #0x30e3ac
00411294  00 10 a0 e1                                      mov r1, r0
00411298  08 00 a0 e1                                      mov r0, r8
0041129c  7c f6 fb eb                                      bl #0x30ec94
004112a0  04 00 8d e5                                      str r0, [sp, #4]
004112a4  00 a0 a0 e1                                      mov sl, r0
004112a8  0c 06 96 e5                                      ldr r0, [r6, #0x60c]
004112ac  00 10 a0 e1                                      mov r1, r0
004112b0  3b f6 fb eb                                      bl #0x30eba4
004112b4  10 16 96 e5                                      ldr r1, [r6, #0x610]
004112b8  00 80 a0 e1                                      mov r8, r0
004112bc  14 06 96 e5                                      ldr r0, [r6, #0x614]
004112c0  39 f4 fb eb                                      bl #0x30e3ac
004112c4  00 10 a0 e1                                      mov r1, r0
004112c8  08 00 a0 e1                                      mov r0, r8
004112cc  70 f6 fb eb                                      bl #0x30ec94
004112d0  0a 10 a0 e1                                      mov r1, sl
004112d4  02 81 80 e2                                      add r8, r0, #0x80000000
004112d8  0a 00 a0 e1                                      mov r0, sl
004112dc  08 80 8d e5                                      str r8, [sp, #8]
004112e0  a1 f6 fb eb                                      bl #0x30ed6c
004112e4  08 10 a0 e1                                      mov r1, r8
004112e8  00 a0 a0 e1                                      mov sl, r0
004112ec  08 00 a0 e1                                      mov r0, r8
004112f0  9d f6 fb eb                                      bl #0x30ed6c
004112f4  00 10 a0 e1                                      mov r1, r0
004112f8  0a 00 a0 e1                                      mov r0, sl
004112fc  28 f6 fb eb                                      bl #0x30eba4
00411300  07 10 a0 e1                                      mov r1, r7
00411304  26 f6 fb eb                                      bl #0x30eba4
00411308  85 f3 fb eb                                      bl #0x30e124
0041130c  3f 14 a0 e3                                      mov r1, #0x3f000000
00411310  00 70 a0 e1                                      mov r7, r0
00411314  fc f4 fb eb                                      bl #0x30e70c
00411318  00 00 50 e3                                      cmp r0, #0
0041131c  54 00 00 0a                                      beq #0x411474
00411320  a8 32 9f e5                                      ldr r3, [pc, #0x2a8]
00411324  03 30 95 e7                                      ldr r3, [r5, r3]
00411328  08 10 93 e5                                      ldr r1, [r3, #8]
0041132c  00 20 93 e5                                      ldr r2, [r3]
00411330  04 80 93 e5                                      ldr r8, [r3, #4]
00411334  24 10 8d e5                                      str r1, [sp, #0x24]
00411338  1c 20 8d e5                                      str r2, [sp, #0x1c]
0041133c  20 80 8d e5                                      str r8, [sp, #0x20]
00411340  f0 10 96 e5                                      ldr r1, [r6, #0xf0]
00411344  f4 00 96 e5                                      ldr r0, [r6, #0xf4]
00411348  15 f6 fb eb                                      bl #0x30eba4
0041134c  fe 15 a0 e3                                      mov r1, #0x3f800000
00411350  13 f6 fb eb                                      bl #0x30eba4
00411354  3f 14 a0 e3                                      mov r1, #0x3f000000
00411358  83 f6 fb eb                                      bl #0x30ed6c
0041135c  00 10 a0 e1                                      mov r1, r0
00411360  ec 00 96 e5                                      ldr r0, [r6, #0xec]
00411364  52 f4 fb eb                                      bl #0x30e4b4
00411368  00 00 50 e3                                      cmp r0, #0
0041136c  4e 00 00 0a                                      beq #0x4114ac
00411370  c2 14 a0 e3                                      mov r1, #0xc2000000
00411374  08 00 a0 e1                                      mov r0, r8
00411378  32 17 81 e2                                      add r1, r1, #0xc80000
0041137c  7a f6 fb eb                                      bl #0x30ed6c
00411380  24 00 84 e5                                      str r0, [r4, #0x24]
00411384  1c 70 94 e5                                      ldr r7, [r4, #0x1c]
00411388  20 80 94 e5                                      ldr r8, [r4, #0x20]
0041138c  07 00 a0 e1                                      mov r0, r7
00411390  08 10 a0 e1                                      mov r1, r8
00411394  02 f6 fb eb                                      bl #0x30eba4
00411398  00 10 a0 e3                                      mov r1, #0
0041139c  fa f2 fb eb                                      bl #0x30df8c
004113a0  00 00 50 e3                                      cmp r0, #0
004113a4  64 00 00 1a                                      bne #0x41153c
004113a8  04 30 94 e5                                      ldr r3, [r4, #4]
004113ac  03 00 a0 e1                                      mov r0, r3
004113b0  00 30 93 e5                                      ldr r3, [r3]
004113b4  0f e0 a0 e1                                      mov lr, pc
004113b8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
004113bc  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
004113c0  00 70 a0 e1                                      mov r7, r0
004113c4  10 00 94 e5                                      ldr r0, [r4, #0x10]
004113c8  f5 f5 fb eb                                      bl #0x30eba4
004113cc  20 10 94 e5                                      ldr r1, [r4, #0x20]
004113d0  00 60 a0 e1                                      mov r6, r0
004113d4  14 00 94 e5                                      ldr r0, [r4, #0x14]
004113d8  f1 f5 fb eb                                      bl #0x30eba4
004113dc  24 10 94 e5                                      ldr r1, [r4, #0x24]
004113e0  00 50 a0 e1                                      mov r5, r0
004113e4  08 00 97 e5                                      ldr r0, [r7, #8]
004113e8  ed f5 fb eb                                      bl #0x30eba4
004113ec  04 70 94 e5                                      ldr r7, [r4, #4]
004113f0  05 20 a0 e1                                      mov r2, r5
004113f4  06 10 a0 e1                                      mov r1, r6
004113f8  00 30 a0 e1                                      mov r3, r0
004113fc  07 00 a0 e1                                      mov r0, r7
00411400  53 17 06 eb                                      bl #0x597154
00411404  08 30 94 e5                                      ldr r3, [r4, #8]
00411408  03 00 a0 e1                                      mov r0, r3
0041140c  00 30 93 e5                                      ldr r3, [r3]
00411410  0f e0 a0 e1                                      mov lr, pc
00411414  08 f1 93 e5                                      ldr pc, [r3, #0x108]
00411418  08 50 94 e5                                      ldr r5, [r4, #8]
0041141c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00411420  00 70 a0 e1                                      mov r7, r0
00411424  00 30 95 e5                                      ldr r3, [r5]
00411428  14 00 94 e5                                      ldr r0, [r4, #0x14]
0041142c  04 61 93 e5                                      ldr r6, [r3, #0x104]
00411430  db f5 fb eb                                      bl #0x30eba4
00411434  24 10 94 e5                                      ldr r1, [r4, #0x24]
00411438  00 80 a0 e1                                      mov r8, r0
0041143c  08 00 97 e5                                      ldr r0, [r7, #8]
00411440  d7 f5 fb eb                                      bl #0x30eba4
00411444  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00411448  00 70 a0 e1                                      mov r7, r0
0041144c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00411450  d3 f5 fb eb                                      bl #0x30eba4
00411454  14 80 8d e5                                      str r8, [sp, #0x14]
00411458  10 00 8d e5                                      str r0, [sp, #0x10]
0041145c  18 70 8d e5                                      str r7, [sp, #0x18]
00411460  05 00 a0 e1                                      mov r0, r5
00411464  10 10 8d e2                                      add r1, sp, #0x10
00411468  36 ff 2f e1                                      blx r6
0041146c  2c d0 8d e2                                      add sp, sp, #0x2c
00411470  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00411474  04 00 8d e2                                      add r0, sp, #4
00411478  0c ef fc eb                                      bl #0x34d0b0
0041147c  07 00 a0 e1                                      mov r0, r7
00411480  fe 15 a0 e3                                      mov r1, #0x3f800000
00411484  a0 f4 fb eb                                      bl #0x30e70c
00411488  00 00 50 e3                                      cmp r0, #0
0041148c  3a 00 00 1a                                      bne #0x41157c
00411490  04 70 9d e5                                      ldr r7, [sp, #4]
00411494  08 80 9d e5                                      ldr r8, [sp, #8]
00411498  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0041149c  1c 70 8d e5                                      str r7, [sp, #0x1c]
004114a0  24 00 8d e5                                      str r0, [sp, #0x24]
004114a4  20 80 8d e5                                      str r8, [sp, #0x20]
004114a8  a4 ff ff ea                                      b #0x411340
004114ac  42 14 a0 e3                                      mov r1, #0x42000000
004114b0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
004114b4  32 17 81 e2                                      add r1, r1, #0xc80000
004114b8  2b f6 fb eb                                      bl #0x30ed6c
004114bc  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
004114c0  b7 f5 fb eb                                      bl #0x30eba4
004114c4  42 14 a0 e3                                      mov r1, #0x42000000
004114c8  00 70 a0 e1                                      mov r7, r0
004114cc  1c 00 84 e5                                      str r0, [r4, #0x1c]
004114d0  32 17 81 e2                                      add r1, r1, #0xc80000
004114d4  08 00 a0 e1                                      mov r0, r8
004114d8  23 f6 fb eb                                      bl #0x30ed6c
004114dc  20 10 94 e5                                      ldr r1, [r4, #0x20]
004114e0  af f5 fb eb                                      bl #0x30eba4
004114e4  20 00 84 e5                                      str r0, [r4, #0x20]
004114e8  00 11 96 e5                                      ldr r1, [r6, #0x100]
004114ec  00 80 a0 e1                                      mov r8, r0
004114f0  04 01 96 e5                                      ldr r0, [r6, #0x104]
004114f4  aa f5 fb eb                                      bl #0x30eba4
004114f8  fe 15 a0 e3                                      mov r1, #0x3f800000
004114fc  a8 f5 fb eb                                      bl #0x30eba4
00411500  3f 14 a0 e3                                      mov r1, #0x3f000000
00411504  18 f6 fb eb                                      bl #0x30ed6c
00411508  00 10 a0 e1                                      mov r1, r0
0041150c  f8 00 96 e5                                      ldr r0, [r6, #0xf8]
00411510  e7 f3 fb eb                                      bl #0x30e4b4
00411514  00 00 50 e3                                      cmp r0, #0
00411518  00 30 a0 13                                      movne r3, #0
0041151c  24 30 84 15                                      strne r3, [r4, #0x24]
00411520  08 10 a0 e1                                      mov r1, r8
00411524  07 00 a0 e1                                      mov r0, r7
00411528  9d f5 fb eb                                      bl #0x30eba4
0041152c  00 10 a0 e3                                      mov r1, #0
00411530  95 f2 fb eb                                      bl #0x30df8c
00411534  00 00 50 e3                                      cmp r0, #0
00411538  9a ff ff 0a                                      beq #0x4113a8
0041153c  90 30 9f e5                                      ldr r3, [pc, #0x90]
00411540  00 10 a0 e3                                      mov r1, #0
00411544  01 20 a0 e3                                      mov r2, #1
00411548  03 30 95 e7                                      ldr r3, [r5, r3]
0041154c  40 00 93 e5                                      ldr r0, [r3, #0x40]
00411550  c8 73 fd eb                                      bl #0x36e478
00411554  60 36 90 e5                                      ldr r3, [r0, #0x660]
00411558  00 00 53 e3                                      cmp r3, #0
0041155c  91 ff ff 0a                                      beq #0x4113a8
00411560  60 21 93 e5                                      ldr r2, [r3, #0x160]
00411564  10 20 84 e5                                      str r2, [r4, #0x10]
00411568  64 21 93 e5                                      ldr r2, [r3, #0x164]
0041156c  14 20 84 e5                                      str r2, [r4, #0x14]
00411570  68 31 93 e5                                      ldr r3, [r3, #0x168]
00411574  18 30 84 e5                                      str r3, [r4, #0x18]
00411578  8a ff ff ea                                      b #0x4113a8
0041157c  07 00 a0 e1                                      mov r0, r7
00411580  3f 14 a0 e3                                      mov r1, #0x3f000000
00411584  88 f3 fb eb                                      bl #0x30e3ac
00411588  00 10 a0 e1                                      mov r1, r0
0041158c  84 f5 fb eb                                      bl #0x30eba4
00411590  04 10 9d e5                                      ldr r1, [sp, #4]
00411594  00 a0 a0 e1                                      mov sl, r0
00411598  f3 f5 fb eb                                      bl #0x30ed6c
0041159c  08 10 9d e5                                      ldr r1, [sp, #8]
004115a0  00 70 a0 e1                                      mov r7, r0
004115a4  0a 00 a0 e1                                      mov r0, sl
004115a8  04 70 8d e5                                      str r7, [sp, #4]
004115ac  ee f5 fb eb                                      bl #0x30ed6c
004115b0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004115b4  00 80 a0 e1                                      mov r8, r0
004115b8  0a 00 a0 e1                                      mov r0, sl
004115bc  08 80 8d e5                                      str r8, [sp, #8]
004115c0  e9 f5 fb eb                                      bl #0x30ed6c
004115c4  0c 00 8d e5                                      str r0, [sp, #0xc]
004115c8  b3 ff ff ea                                      b #0x41149c
; mapping-symbol data/literal pool
004115cc  40 38 58 00 2c 3f 00 00 f4 37 00 00              .byte 0x40, 0x38, 0x58, 0x00, 0x2c, 0x3f, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
