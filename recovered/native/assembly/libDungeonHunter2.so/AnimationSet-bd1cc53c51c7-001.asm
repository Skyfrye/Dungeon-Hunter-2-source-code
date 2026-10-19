; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036497c, declared_size=64, range_size=64, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet10SetAnimSetEPN6glitch7collada20CDynamicAnimationSetE
; demangled: AnimationSet::SetAnimSet(glitch::collada::CDynamicAnimationSet*)
; decoder-mode: arm
0036497c  70 40 2d e9                                      push {r4, r5, r6, lr}
00364980  00 40 a0 e1                                      mov r4, r0
00364984  20 00 90 e5                                      ldr r0, [r0, #0x20]
00364988  01 50 a0 e1                                      mov r5, r1
0036498c  00 00 50 e3                                      cmp r0, #0
00364990  02 00 00 0a                                      beq #0x3649a0
00364994  fa e2 fe eb                                      bl #0x31d584
00364998  00 30 a0 e3                                      mov r3, #0
0036499c  20 30 84 e5                                      str r3, [r4, #0x20]
003649a0  01 30 a0 e3                                      mov r3, #1
003649a4  2c 30 84 e5                                      str r3, [r4, #0x2c]
003649a8  20 50 84 e5                                      str r5, [r4, #0x20]
003649ac  04 30 95 e5                                      ldr r3, [r5, #4]
003649b0  01 30 83 e2                                      add r3, r3, #1
003649b4  04 30 85 e5                                      str r3, [r5, #4]
003649b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003649bc, declared_size=28, range_size=28, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet18CalculateCacheSizeEv
; demangled: AnimationSet::CalculateCacheSize()
; decoder-mode: arm
003649bc  04 30 90 e5                                      ldr r3, [r0, #4]
003649c0  34 20 90 e5                                      ldr r2, [r0, #0x34]
003649c4  01 30 43 e2                                      sub r3, r3, #1
003649c8  92 03 03 e0                                      mul r3, r2, r3
003649cc  0a 30 83 e2                                      add r3, r3, #0xa
003649d0  30 30 80 e5                                      str r3, [r0, #0x30]
003649d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003649d8, declared_size=4, range_size=4, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet6UpdateEi
; demangled: AnimationSet::Update(int)
; decoder-mode: arm
003649d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003649dc, declared_size=4, range_size=4, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet5PurgeEv
; demangled: AnimationSet::Purge()
; decoder-mode: arm
003649dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003649e0, declared_size=244, range_size=244, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet19_FindCacheCandidateEv
; demangled: AnimationSet::_FindCacheCandidate()
; decoder-mode: arm
003649e0  f0 00 2d e9                                      push {r4, r5, r6, r7}
003649e4  10 20 90 e5                                      ldr r2, [r0, #0x10]
003649e8  08 40 80 e2                                      add r4, r0, #8
003649ec  00 60 e0 e3                                      mvn r6, #0
003649f0  02 00 54 e1                                      cmp r4, r2
003649f4  40 00 92 e5                                      ldr r0, [r2, #0x40]
003649f8  3c 10 92 e5                                      ldr r1, [r2, #0x3c]
003649fc  06 50 a0 e1                                      mov r5, r6
00364a00  0f 00 00 0a                                      beq #0x364a44
00364a04  38 30 92 e5                                      ldr r3, [r2, #0x38]
00364a08  00 00 53 e3                                      cmp r3, #0
00364a0c  11 00 00 da                                      ble #0x364a58
00364a10  01 c0 a0 e1                                      mov ip, r1
00364a14  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00364a18  00 00 51 e3                                      cmp r1, #0
00364a1c  18 00 00 0a                                      beq #0x364a84
00364a20  01 20 a0 e1                                      mov r2, r1
00364a24  00 00 00 ea                                      b #0x364a2c
00364a28  03 20 a0 e1                                      mov r2, r3
00364a2c  08 30 92 e5                                      ldr r3, [r2, #8]
00364a30  00 00 53 e3                                      cmp r3, #0
00364a34  fb ff ff 1a                                      bne #0x364a28
00364a38  0c 10 a0 e1                                      mov r1, ip
00364a3c  02 00 54 e1                                      cmp r4, r2
00364a40  ef ff ff 1a                                      bne #0x364a04
00364a44  01 00 76 e3                                      cmn r6, #1
00364a48  06 00 a0 11                                      movne r0, r6
00364a4c  05 00 a0 01                                      moveq r0, r5
00364a50  f0 00 bd e8                                      pop {r4, r5, r6, r7}
00364a54  1e ff 2f e1                                      bx lr
00364a58  40 30 92 e5                                      ldr r3, [r2, #0x40]
00364a5c  01 00 75 e3                                      cmn r5, #1
00364a60  10 50 92 05                                      ldreq r5, [r2, #0x10]
00364a64  00 00 53 e1                                      cmp r3, r0
00364a68  13 00 00 2a                                      bhs #0x364abc
00364a6c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00364a70  03 00 a0 e1                                      mov r0, r3
00364a74  3c c0 92 e5                                      ldr ip, [r2, #0x3c]
00364a78  00 00 51 e3                                      cmp r1, #0
00364a7c  10 60 92 e5                                      ldr r6, [r2, #0x10]
00364a80  e6 ff ff 1a                                      bne #0x364a20
00364a84  04 30 92 e5                                      ldr r3, [r2, #4]
00364a88  0c 70 93 e5                                      ldr r7, [r3, #0xc]
00364a8c  07 00 52 e1                                      cmp r2, r7
00364a90  05 00 00 1a                                      bne #0x364aac
00364a94  03 20 a0 e1                                      mov r2, r3
00364a98  04 30 93 e5                                      ldr r3, [r3, #4]
00364a9c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00364aa0  02 00 51 e1                                      cmp r1, r2
00364aa4  fa ff ff 0a                                      beq #0x364a94
00364aa8  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00364aac  01 00 53 e1                                      cmp r3, r1
00364ab0  03 20 a0 11                                      movne r2, r3
00364ab4  0c 10 a0 e1                                      mov r1, ip
00364ab8  df ff ff ea                                      b #0x364a3c
00364abc  d3 ff ff 1a                                      bne #0x364a10
00364ac0  3c c0 92 e5                                      ldr ip, [r2, #0x3c]
00364ac4  0c 00 51 e1                                      cmp r1, ip
00364ac8  10 60 92 85                                      ldrhi r6, [r2, #0x10]
00364acc  d0 ff ff 8a                                      bhi #0x364a14
00364ad0  ce ff ff ea                                      b #0x364a10

; FUNCTION 0x00364af4, declared_size=140, range_size=140, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet23_UpdateAnimationIndicesEv
; demangled: AnimationSet::_UpdateAnimationIndices()
; decoder-mode: arm
00364af4  70 40 2d e9                                      push {r4, r5, r6, lr}
00364af8  10 40 90 e5                                      ldr r4, [r0, #0x10]
00364afc  00 50 a0 e1                                      mov r5, r0
00364b00  08 60 80 e2                                      add r6, r0, #8
00364b04  04 00 56 e1                                      cmp r6, r4
00364b08  0e 00 00 0a                                      beq #0x364b48
00364b0c  20 00 95 e5                                      ldr r0, [r5, #0x20]
00364b10  2c 10 84 e2                                      add r1, r4, #0x2c
00364b14  27 24 0b eb                                      bl #0x62dbb8
00364b18  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00364b1c  34 00 84 e5                                      str r0, [r4, #0x34]
00364b20  00 00 53 e3                                      cmp r3, #0
00364b24  01 00 00 1a                                      bne #0x364b30
00364b28  07 00 00 ea                                      b #0x364b4c
00364b2c  02 30 a0 e1                                      mov r3, r2
00364b30  08 20 93 e5                                      ldr r2, [r3, #8]
00364b34  00 00 52 e3                                      cmp r2, #0
00364b38  fb ff ff 1a                                      bne #0x364b2c
00364b3c  03 40 a0 e1                                      mov r4, r3
00364b40  04 00 56 e1                                      cmp r6, r4
00364b44  f0 ff ff 1a                                      bne #0x364b0c
00364b48  70 80 bd e8                                      pop {r4, r5, r6, pc}
00364b4c  04 20 94 e5                                      ldr r2, [r4, #4]
00364b50  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00364b54  01 00 54 e1                                      cmp r4, r1
00364b58  05 00 00 1a                                      bne #0x364b74
00364b5c  02 40 a0 e1                                      mov r4, r2
00364b60  04 20 92 e5                                      ldr r2, [r2, #4]
00364b64  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00364b68  04 00 53 e1                                      cmp r3, r4
00364b6c  fa ff ff 0a                                      beq #0x364b5c
00364b70  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00364b74  02 00 53 e1                                      cmp r3, r2
00364b78  02 40 a0 11                                      movne r4, r2
00364b7c  e0 ff ff ea                                      b #0x364b04

; FUNCTION 0x00364bf4, declared_size=172, range_size=172, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet22GetAnimationBySetIndexEi
; demangled: AnimationSet::GetAnimationBySetIndex(int)
; decoder-mode: arm
00364bf4  70 40 2d e9                                      push {r4, r5, r6, lr}
00364bf8  98 30 9f e5                                      ldr r3, [pc, #0x98]
00364bfc  10 40 90 e5                                      ldr r4, [r0, #0x10]
00364c00  08 c0 80 e2                                      add ip, r0, #8
00364c04  03 30 8f e0                                      add r3, pc, r3
00364c08  0c 00 54 e1                                      cmp r4, ip
00364c0c  0d 00 00 0a                                      beq #0x364c48
00364c10  34 20 94 e5                                      ldr r2, [r4, #0x34]
00364c14  01 00 52 e1                                      cmp r2, r1
00364c18  1a 00 00 0a                                      beq #0x364c88
00364c1c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00364c20  00 00 50 e3                                      cmp r0, #0
00364c24  01 00 00 1a                                      bne #0x364c30
00364c28  09 00 00 ea                                      b #0x364c54
00364c2c  02 00 a0 e1                                      mov r0, r2
00364c30  08 20 90 e5                                      ldr r2, [r0, #8]
00364c34  00 00 52 e3                                      cmp r2, #0
00364c38  fb ff ff 1a                                      bne #0x364c2c
00364c3c  00 40 a0 e1                                      mov r4, r0
00364c40  0c 00 54 e1                                      cmp r4, ip
00364c44  f1 ff ff 1a                                      bne #0x364c10
00364c48  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00364c4c  02 00 93 e7                                      ldr r0, [r3, r2]
00364c50  70 80 bd e8                                      pop {r4, r5, r6, pc}
00364c54  04 20 94 e5                                      ldr r2, [r4, #4]
00364c58  0c 50 92 e5                                      ldr r5, [r2, #0xc]
00364c5c  05 00 54 e1                                      cmp r4, r5
00364c60  05 00 00 1a                                      bne #0x364c7c
00364c64  02 40 a0 e1                                      mov r4, r2
00364c68  04 20 92 e5                                      ldr r2, [r2, #4]
00364c6c  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00364c70  04 00 50 e1                                      cmp r0, r4
00364c74  fa ff ff 0a                                      beq #0x364c64
00364c78  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00364c7c  02 00 50 e1                                      cmp r0, r2
00364c80  02 40 a0 11                                      movne r4, r2
00364c84  df ff ff ea                                      b #0x364c08
00364c88  0f 99 0a eb                                      bl #0x60b0cc
00364c8c  3c 00 84 e5                                      str r0, [r4, #0x3c]
00364c90  14 00 84 e2                                      add r0, r4, #0x14
00364c94  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00364c98  8c fe 62 00 bc 49 00 00                          .byte 0x8c, 0xfe, 0x62, 0x00, 0xbc, 0x49, 0x00, 0x00

; FUNCTION 0x00364ca0, declared_size=88, range_size=88, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet13CreateAnimSetEv
; demangled: AnimationSet::CreateAnimSet()
; decoder-mode: arm
00364ca0  70 40 2d e9                                      push {r4, r5, r6, lr}
00364ca4  00 40 a0 e1                                      mov r4, r0
00364ca8  20 00 90 e5                                      ldr r0, [r0, #0x20]
00364cac  00 00 50 e3                                      cmp r0, #0
00364cb0  02 00 00 0a                                      beq #0x364cc0
00364cb4  32 e2 fe eb                                      bl #0x31d584
00364cb8  00 30 a0 e3                                      mov r3, #0
00364cbc  20 30 84 e5                                      str r3, [r4, #0x20]
00364cc0  01 60 a0 e3                                      mov r6, #1
00364cc4  00 10 a0 e3                                      mov r1, #0
00364cc8  2c 60 84 e5                                      str r6, [r4, #0x2c]
00364ccc  80 00 a0 e3                                      mov r0, #0x80
00364cd0  26 ae fe eb                                      bl #0x310570
00364cd4  00 50 a0 e1                                      mov r5, r0
00364cd8  f9 fe ff eb                                      bl #0x3648c4
00364cdc  20 50 84 e5                                      str r5, [r4, #0x20]
00364ce0  05 00 a0 e1                                      mov r0, r5
00364ce4  06 10 a0 e1                                      mov r1, r6
00364ce8  00 30 95 e5                                      ldr r3, [r5]
00364cec  0f e0 a0 e1                                      mov lr, pc
00364cf0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00364cf4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00364ecc, declared_size=84, range_size=84, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet7FreeAllEv
; demangled: AnimationSet::FreeAll()
; decoder-mode: arm
00364ecc  70 40 2d e9                                      push {r4, r5, r6, lr}
00364ed0  00 40 a0 e1                                      mov r4, r0
00364ed4  20 00 90 e5                                      ldr r0, [r0, #0x20]
00364ed8  00 00 50 e3                                      cmp r0, #0
00364edc  02 00 00 0a                                      beq #0x364eec
00364ee0  a7 e1 fe eb                                      bl #0x31d584
00364ee4  00 30 a0 e3                                      mov r3, #0
00364ee8  20 30 84 e5                                      str r3, [r4, #0x20]
00364eec  18 30 94 e5                                      ldr r3, [r4, #0x18]
00364ef0  00 00 53 e3                                      cmp r3, #0
00364ef4  08 00 00 0a                                      beq #0x364f1c
00364ef8  08 50 84 e2                                      add r5, r4, #8
00364efc  05 00 a0 e1                                      mov r0, r5
00364f00  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00364f04  df ff ff eb                                      bl #0x364e88
00364f08  00 30 a0 e3                                      mov r3, #0
00364f0c  18 30 84 e5                                      str r3, [r4, #0x18]
00364f10  14 50 84 e5                                      str r5, [r4, #0x14]
00364f14  10 50 84 e5                                      str r5, [r4, #0x10]
00364f18  0c 30 84 e5                                      str r3, [r4, #0xc]
00364f1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00364f20, declared_size=100, range_size=100, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSetD1Ev
; demangled: AnimationSet::~AnimationSet()
; decoder-mode: arm
00364f20  54 30 9f e5                                      ldr r3, [pc, #0x54]
00364f24  54 20 9f e5                                      ldr r2, [pc, #0x54]
00364f28  70 40 2d e9                                      push {r4, r5, r6, lr}
00364f2c  03 30 8f e0                                      add r3, pc, r3
00364f30  02 20 93 e7                                      ldr r2, [r3, r2]
00364f34  00 40 a0 e1                                      mov r4, r0
00364f38  08 20 82 e2                                      add r2, r2, #8
00364f3c  00 20 80 e5                                      str r2, [r0]
00364f40  e1 ff ff eb                                      bl #0x364ecc
00364f44  18 30 94 e5                                      ldr r3, [r4, #0x18]
00364f48  00 00 53 e3                                      cmp r3, #0
00364f4c  08 00 00 0a                                      beq #0x364f74
00364f50  08 50 84 e2                                      add r5, r4, #8
00364f54  05 00 a0 e1                                      mov r0, r5
00364f58  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00364f5c  c9 ff ff eb                                      bl #0x364e88
00364f60  00 30 a0 e3                                      mov r3, #0
00364f64  14 50 84 e5                                      str r5, [r4, #0x14]
00364f68  18 30 84 e5                                      str r3, [r4, #0x18]
00364f6c  10 50 84 e5                                      str r5, [r4, #0x10]
00364f70  0c 30 84 e5                                      str r3, [r4, #0xc]
00364f74  04 00 a0 e1                                      mov r0, r4
00364f78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00364f7c  64 fb 62 00 7c 1b 00 00                          .byte 0x64, 0xfb, 0x62, 0x00, 0x7c, 0x1b, 0x00, 0x00

; FUNCTION 0x00364f84, declared_size=28, range_size=28, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSetD0Ev
; demangled: AnimationSet::~AnimationSet()
; decoder-mode: arm
00364f84  10 40 2d e9                                      push {r4, lr}
00364f88  00 40 a0 e1                                      mov r4, r0
00364f8c  e3 ff ff eb                                      bl #0x364f20
00364f90  04 00 a0 e1                                      mov r0, r4
00364f94  29 ad fe eb                                      bl #0x310440
00364f98  04 00 a0 e1                                      mov r0, r4
00364f9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00364fa0, declared_size=100, range_size=100, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSetD2Ev
; demangled: AnimationSet::~AnimationSet()
; decoder-mode: arm
00364fa0  54 30 9f e5                                      ldr r3, [pc, #0x54]
00364fa4  54 20 9f e5                                      ldr r2, [pc, #0x54]
00364fa8  70 40 2d e9                                      push {r4, r5, r6, lr}
00364fac  03 30 8f e0                                      add r3, pc, r3
00364fb0  02 20 93 e7                                      ldr r2, [r3, r2]
00364fb4  00 40 a0 e1                                      mov r4, r0
00364fb8  08 20 82 e2                                      add r2, r2, #8
00364fbc  00 20 80 e5                                      str r2, [r0]
00364fc0  c1 ff ff eb                                      bl #0x364ecc
00364fc4  18 30 94 e5                                      ldr r3, [r4, #0x18]
00364fc8  00 00 53 e3                                      cmp r3, #0
00364fcc  08 00 00 0a                                      beq #0x364ff4
00364fd0  08 50 84 e2                                      add r5, r4, #8
00364fd4  05 00 a0 e1                                      mov r0, r5
00364fd8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00364fdc  a9 ff ff eb                                      bl #0x364e88
00364fe0  00 30 a0 e3                                      mov r3, #0
00364fe4  14 50 84 e5                                      str r5, [r4, #0x14]
00364fe8  18 30 84 e5                                      str r3, [r4, #0x18]
00364fec  10 50 84 e5                                      str r5, [r4, #0x10]
00364ff0  0c 30 84 e5                                      str r3, [r4, #0xc]
00364ff4  04 00 a0 e1                                      mov r0, r4
00364ff8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00364ffc  e4 fa 62 00 7c 1b 00 00                          .byte 0xe4, 0xfa, 0x62, 0x00, 0x7c, 0x1b, 0x00, 0x00

; FUNCTION 0x0036504c, declared_size=104, range_size=104, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet16_RemoveAnimationENSt4priv17_Rb_tree_iteratorISt4pairIKi9AnimationENS0_11_MapTraitsTIS5_EEEEb
; demangled: AnimationSet::_RemoveAnimation(std::priv::_Rb_tree_iterator<std::pair<int const, Animation>, std::priv::_MapTraitsT<std::pair<int const, Animation> > >, bool)
; decoder-mode: arm
0036504c  70 40 2d e9                                      push {r4, r5, r6, lr}
00365050  00 40 a0 e1                                      mov r4, r0
00365054  20 00 90 e5                                      ldr r0, [r0, #0x20]
00365058  08 d0 4d e2                                      sub sp, sp, #8
0036505c  01 50 a0 e1                                      mov r5, r1
00365060  00 00 50 e3                                      cmp r0, #0
00365064  02 60 a0 e1                                      mov r6, r2
00365068  00 30 91 e5                                      ldr r3, [r1]
0036506c  04 00 00 0a                                      beq #0x365084
00365070  70 20 d0 e5                                      ldrb r2, [r0, #0x70]
00365074  00 00 52 e3                                      cmp r2, #0
00365078  0a 00 00 0a                                      beq #0x3650a8
0036507c  34 10 93 e5                                      ldr r1, [r3, #0x34]
00365080  a9 2a 0b eb                                      bl #0x62fb2c
00365084  00 00 56 e3                                      cmp r6, #0
00365088  04 00 00 1a                                      bne #0x3650a0
0036508c  00 30 95 e5                                      ldr r3, [r5]
00365090  08 10 8d e2                                      add r1, sp, #8
00365094  08 00 84 e2                                      add r0, r4, #8
00365098  04 30 21 e5                                      str r3, [r1, #-4]!
0036509c  d8 ff ff eb                                      bl #0x365004
003650a0  08 d0 8d e2                                      add sp, sp, #8
003650a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003650a8  34 10 93 e5                                      ldr r1, [r3, #0x34]
003650ac  64 2a 0b eb                                      bl #0x62fa44
003650b0  f3 ff ff ea                                      b #0x365084

; FUNCTION 0x003650b4, declared_size=164, range_size=164, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet15UnloadAnimationEib
; demangled: AnimationSet::UnloadAnimation(int, bool)
; decoder-mode: arm
003650b4  30 40 2d e9                                      push {r4, r5, lr}
003650b8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
003650bc  0c d0 4d e2                                      sub sp, sp, #0xc
003650c0  00 40 a0 e1                                      mov r4, r0
003650c4  00 00 53 e3                                      cmp r3, #0
003650c8  08 50 80 e2                                      add r5, r0, #8
003650cc  17 00 00 0a                                      beq #0x365130
003650d0  05 c0 a0 e1                                      mov ip, r5
003650d4  00 00 00 ea                                      b #0x3650dc
003650d8  00 30 a0 e1                                      mov r3, r0
003650dc  10 00 93 e5                                      ldr r0, [r3, #0x10]
003650e0  00 00 51 e1                                      cmp r1, r0
003650e4  0c 00 93 c5                                      ldrgt r0, [r3, #0xc]
003650e8  08 00 93 d5                                      ldrle r0, [r3, #8]
003650ec  0c 30 a0 c1                                      movgt r3, ip
003650f0  03 c0 a0 e1                                      mov ip, r3
003650f4  00 00 50 e3                                      cmp r0, #0
003650f8  f6 ff ff 1a                                      bne #0x3650d8
003650fc  03 00 55 e1                                      cmp r5, r3
00365100  07 00 00 0a                                      beq #0x365124
00365104  10 00 93 e5                                      ldr r0, [r3, #0x10]
00365108  00 00 51 e1                                      cmp r1, r0
0036510c  07 00 00 ba                                      blt #0x365130
00365110  03 00 55 e1                                      cmp r5, r3
00365114  02 00 00 0a                                      beq #0x365124
00365118  38 10 93 e5                                      ldr r1, [r3, #0x38]
0036511c  00 00 51 e3                                      cmp r1, #0
00365120  04 00 00 da                                      ble #0x365138
00365124  00 00 a0 e3                                      mov r0, #0
00365128  0c d0 8d e2                                      add sp, sp, #0xc
0036512c  30 80 bd e8                                      pop {r4, r5, pc}
00365130  05 30 a0 e1                                      mov r3, r5
00365134  f5 ff ff ea                                      b #0x365110
00365138  08 10 8d e2                                      add r1, sp, #8
0036513c  04 30 21 e5                                      str r3, [r1, #-4]!
00365140  04 00 a0 e1                                      mov r0, r4
00365144  c0 ff ff eb                                      bl #0x36504c
00365148  04 00 a0 e1                                      mov r0, r4
0036514c  68 fe ff eb                                      bl #0x364af4
00365150  01 00 a0 e3                                      mov r0, #1
00365154  f3 ff ff ea                                      b #0x365128

; FUNCTION 0x00365158, declared_size=36, range_size=36, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet15UnloadAnimationEPKc
; demangled: AnimationSet::UnloadAnimation(char const*)
; decoder-mode: arm
00365158  10 40 2d e9                                      push {r4, lr}
0036515c  00 40 a0 e1                                      mov r4, r0
00365160  01 00 a0 e1                                      mov r0, r1
00365164  85 fe ff eb                                      bl #0x364b80
00365168  00 20 a0 e3                                      mov r2, #0
0036516c  00 10 a0 e1                                      mov r1, r0
00365170  04 00 a0 e1                                      mov r0, r4
00365174  10 40 bd e8                                      pop {r4, lr}
00365178  cd ff ff ea                                      b #0x3650b4

; FUNCTION 0x003659ec, declared_size=812, range_size=812, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet13LoadAnimationEi
; demangled: AnimationSet::LoadAnimation(int)
; decoder-mode: arm
003659ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003659f0  fc 42 9f e5                                      ldr r4, [pc, #0x2fc]
003659f4  fc 52 9f e5                                      ldr r5, [pc, #0x2fc]
003659f8  00 70 a0 e1                                      mov r7, r0
003659fc  04 40 8f e0                                      add r4, pc, r4
00365a00  05 30 94 e7                                      ldr r3, [r4, r5]
00365a04  f0 02 9f e5                                      ldr r0, [pc, #0x2f0]
00365a08  c4 d0 4d e2                                      sub sp, sp, #0xc4
00365a0c  00 30 93 e5                                      ldr r3, [r3]
00365a10  00 00 8f e0                                      add r0, pc, r0
00365a14  04 10 8d e5                                      str r1, [sp, #4]
00365a18  bc 30 8d e5                                      str r3, [sp, #0xbc]
00365a1c  24 b7 fe eb                                      bl #0x3136b4
00365a20  04 30 9d e5                                      ldr r3, [sp, #4]
00365a24  00 00 53 e3                                      cmp r3, #0
00365a28  04 00 00 ba                                      blt #0x365a40
00365a2c  cc 22 9f e5                                      ldr r2, [pc, #0x2cc]
00365a30  02 20 94 e7                                      ldr r2, [r4, r2]
00365a34  00 20 92 e5                                      ldr r2, [r2]
00365a38  02 00 53 e1                                      cmp r3, r2
00365a3c  0c 00 00 ba                                      blt #0x365a74
00365a40  bc 32 9f e5                                      ldr r3, [pc, #0x2bc]
00365a44  03 70 94 e7                                      ldr r7, [r4, r3]
00365a48  b8 02 9f e5                                      ldr r0, [pc, #0x2b8]
00365a4c  00 00 8f e0                                      add r0, pc, r0
00365a50  18 b7 fe eb                                      bl #0x3136b8
00365a54  05 30 94 e7                                      ldr r3, [r4, r5]
00365a58  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
00365a5c  07 00 a0 e1                                      mov r0, r7
00365a60  00 30 93 e5                                      ldr r3, [r3]
00365a64  03 00 52 e1                                      cmp r2, r3
00365a68  a0 00 00 1a                                      bne #0x365cf0
00365a6c  c4 d0 8d e2                                      add sp, sp, #0xc4
00365a70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00365a74  90 22 9f e5                                      ldr r2, [pc, #0x290]
00365a78  90 12 9f e5                                      ldr r1, [pc, #0x290]
00365a7c  8c 60 8d e2                                      add r6, sp, #0x8c
00365a80  02 20 94 e7                                      ldr r2, [r4, r2]
00365a84  01 10 8f e0                                      add r1, pc, r1
00365a88  06 00 a0 e1                                      mov r0, r6
00365a8c  00 c0 92 e5                                      ldr ip, [r2]
00365a90  0c a0 a0 e3                                      mov sl, #0xc
00365a94  07 20 81 e2                                      add r2, r1, #7
00365a98  9a c3 2a e0                                      mla sl, sl, r3, ip
00365a9c  9c 60 8d e5                                      str r6, [sp, #0x9c]
00365aa0  a0 60 8d e5                                      str r6, [sp, #0xa0]
00365aa4  0f af fe eb                                      bl #0x3116e8
00365aa8  64 22 9f e5                                      ldr r2, [pc, #0x264]
00365aac  00 30 e0 e3                                      mvn r3, #0
00365ab0  00 80 a0 e3                                      mov r8, #0
00365ab4  02 20 94 e7                                      ldr r2, [r4, r2]
00365ab8  b0 30 8d e5                                      str r3, [sp, #0xb0]
00365abc  ac 30 8d e5                                      str r3, [sp, #0xac]
00365ac0  a8 20 8d e5                                      str r2, [sp, #0xa8]
00365ac4  a4 80 8d e5                                      str r8, [sp, #0xa4]
00365ac8  b4 80 8d e5                                      str r8, [sp, #0xb4]
00365acc  b8 80 8d e5                                      str r8, [sp, #0xb8]
00365ad0  08 90 9a e5                                      ldr sb, [sl, #8]
00365ad4  1c a0 8d e2                                      add sl, sp, #0x1c
00365ad8  09 00 a0 e1                                      mov r0, sb
00365adc  dc a0 fe eb                                      bl #0x30de54
00365ae0  09 10 a0 e1                                      mov r1, sb
00365ae4  00 20 89 e0                                      add r2, sb, r0
00365ae8  06 00 a0 e1                                      mov r0, r6
00365aec  bb ab fe eb                                      bl #0x3109e0
00365af0  08 20 a0 e1                                      mov r2, r8
00365af4  0a 00 a0 e1                                      mov r0, sl
00365af8  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00365afc  d6 a5 0a eb                                      bl #0x60f25c
00365b00  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00365b04  20 20 9d e5                                      ldr r2, [sp, #0x20]
00365b08  08 00 53 e1                                      cmp r3, r8
00365b0c  18 20 8d e5                                      str r2, [sp, #0x18]
00365b10  14 30 8d e5                                      str r3, [sp, #0x14]
00365b14  04 00 00 0a                                      beq #0x365b2c
00365b18  04 20 93 e5                                      ldr r2, [r3, #4]
00365b1c  08 00 52 e1                                      cmp r2, r8
00365b20  01 20 82 12                                      addne r2, r2, #1
00365b24  04 20 83 15                                      strne r2, [r3, #4]
00365b28  14 30 9d 15                                      ldrne r3, [sp, #0x14]
00365b2c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00365b30  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00365b34  a4 30 8d e5                                      str r3, [sp, #0xa4]
00365b38  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00365b3c  14 00 8d e2                                      add r0, sp, #0x14
00365b40  14 10 8d e5                                      str r1, [sp, #0x14]
00365b44  18 30 8d e5                                      str r3, [sp, #0x18]
00365b48  a8 20 8d e5                                      str r2, [sp, #0xa8]
00365b4c  00 80 a0 e3                                      mov r8, #0
00365b50  47 ce 0a eb                                      bl #0x619474
00365b54  0a 00 a0 e1                                      mov r0, sl
00365b58  45 ce 0a eb                                      bl #0x619474
00365b5c  b0 80 8d e5                                      str r8, [sp, #0xb0]
00365b60  59 95 0a eb                                      bl #0x60b0cc
00365b64  20 30 97 e5                                      ldr r3, [r7, #0x20]
00365b68  b4 00 8d e5                                      str r0, [sp, #0xb4]
00365b6c  b8 80 8d e5                                      str r8, [sp, #0xb8]
00365b70  08 00 53 e1                                      cmp r3, r8
00365b74  08 00 00 0a                                      beq #0x365b9c
00365b78  70 20 d3 e5                                      ldrb r2, [r3, #0x70]
00365b7c  08 00 52 e1                                      cmp r2, r8
00365b80  53 00 00 0a                                      beq #0x365cd4
00365b84  03 00 a0 e1                                      mov r0, r3
00365b88  18 10 86 e2                                      add r1, r6, #0x18
00365b8c  00 30 93 e5                                      ldr r3, [r3]
00365b90  0f e0 a0 e1                                      mov lr, pc
00365b94  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00365b98  ac 00 8d e5                                      str r0, [sp, #0xac]
00365b9c  04 30 9d e5                                      ldr r3, [sp, #4]
00365ba0  c0 a0 8d e2                                      add sl, sp, #0xc0
00365ba4  68 30 2a e5                                      str r3, [sl, #-0x68]!
00365ba8  04 30 8a e2                                      add r3, sl, #4
00365bac  03 00 a0 e1                                      mov r0, r3
00365bb0  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
00365bb4  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00365bb8  6c 30 8d e5                                      str r3, [sp, #0x6c]
00365bbc  70 30 8d e5                                      str r3, [sp, #0x70]
00365bc0  c8 ae fe eb                                      bl #0x3116e8
00365bc4  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00365bc8  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
00365bcc  00 00 53 e3                                      cmp r3, #0
00365bd0  78 20 8d e5                                      str r2, [sp, #0x78]
00365bd4  74 30 8d e5                                      str r3, [sp, #0x74]
00365bd8  03 00 00 0a                                      beq #0x365bec
00365bdc  04 20 93 e5                                      ldr r2, [r3, #4]
00365be0  00 00 52 e3                                      cmp r2, #0
00365be4  01 20 82 12                                      addne r2, r2, #1
00365be8  04 20 83 15                                      strne r2, [r3, #4]
00365bec  58 30 9d e5                                      ldr r3, [sp, #0x58]
00365bf0  c0 80 8d e2                                      add r8, sp, #0xc0
00365bf4  ac c0 9d e5                                      ldr ip, [sp, #0xac]
00365bf8  b0 e0 9d e5                                      ldr lr, [sp, #0xb0]
00365bfc  b4 90 9d e5                                      ldr sb, [sp, #0xb4]
00365c00  b8 b0 9d e5                                      ldr fp, [sp, #0xb8]
00365c04  9c 30 28 e5                                      str r3, [r8, #-0x9c]!
00365c08  04 30 88 e2                                      add r3, r8, #4
00365c0c  03 00 a0 e1                                      mov r0, r3
00365c10  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00365c14  70 10 9d e5                                      ldr r1, [sp, #0x70]
00365c18  38 30 8d e5                                      str r3, [sp, #0x38]
00365c1c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00365c20  7c c0 8d e5                                      str ip, [sp, #0x7c]
00365c24  80 e0 8d e5                                      str lr, [sp, #0x80]
00365c28  84 90 8d e5                                      str sb, [sp, #0x84]
00365c2c  88 b0 8d e5                                      str fp, [sp, #0x88]
00365c30  ac ae fe eb                                      bl #0x3116e8
00365c34  74 30 9d e5                                      ldr r3, [sp, #0x74]
00365c38  78 20 9d e5                                      ldr r2, [sp, #0x78]
00365c3c  00 00 53 e3                                      cmp r3, #0
00365c40  44 20 8d e5                                      str r2, [sp, #0x44]
00365c44  40 30 8d e5                                      str r3, [sp, #0x40]
00365c48  03 00 00 0a                                      beq #0x365c5c
00365c4c  04 20 93 e5                                      ldr r2, [r3, #4]
00365c50  00 00 52 e3                                      cmp r2, #0
00365c54  01 20 82 12                                      addne r2, r2, #1
00365c58  04 20 83 15                                      strne r2, [r3, #4]
00365c5c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
00365c60  08 70 87 e2                                      add r7, r7, #8
00365c64  08 20 a0 e1                                      mov r2, r8
00365c68  48 30 8d e5                                      str r3, [sp, #0x48]
00365c6c  80 30 9d e5                                      ldr r3, [sp, #0x80]
00365c70  07 10 a0 e1                                      mov r1, r7
00365c74  0c 00 8d e2                                      add r0, sp, #0xc
00365c78  4c 30 8d e5                                      str r3, [sp, #0x4c]
00365c7c  84 30 9d e5                                      ldr r3, [sp, #0x84]
00365c80  50 30 8d e5                                      str r3, [sp, #0x50]
00365c84  88 30 9d e5                                      ldr r3, [sp, #0x88]
00365c88  54 30 8d e5                                      str r3, [sp, #0x54]
00365c8c  ab fd ff eb                                      bl #0x365340
00365c90  1c 00 88 e2                                      add r0, r8, #0x1c
00365c94  f6 cd 0a eb                                      bl #0x619474
00365c98  04 00 88 e2                                      add r0, r8, #4
00365c9c  42 b7 fe eb                                      bl #0x3139ac
00365ca0  1c 00 8a e2                                      add r0, sl, #0x1c
00365ca4  f2 cd 0a eb                                      bl #0x619474
00365ca8  04 00 8a e2                                      add r0, sl, #4
00365cac  3e b7 fe eb                                      bl #0x3139ac
00365cb0  04 10 8d e2                                      add r1, sp, #4
00365cb4  07 00 a0 e1                                      mov r0, r7
00365cb8  df fe ff eb                                      bl #0x36583c
00365cbc  00 70 a0 e1                                      mov r7, r0
00365cc0  18 00 86 e2                                      add r0, r6, #0x18
00365cc4  ea cd 0a eb                                      bl #0x619474
00365cc8  06 00 a0 e1                                      mov r0, r6
00365ccc  36 b7 fe eb                                      bl #0x3139ac
00365cd0  5c ff ff ea                                      b #0x365a48
00365cd4  03 00 a0 e1                                      mov r0, r3
00365cd8  d9 e4 0b eb                                      bl #0x65f044
00365cdc  ac 00 8d e5                                      str r0, [sp, #0xac]
00365ce0  18 10 86 e2                                      add r1, r6, #0x18
00365ce4  20 00 97 e5                                      ldr r0, [r7, #0x20]
00365ce8  6b 24 0b eb                                      bl #0x62ee9c
00365cec  aa ff ff ea                                      b #0x365b9c
00365cf0  86 a1 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00365cf4  94 f0 62 00 ac 40 00 00 b0 b3 55 00 38 22 00 00  .byte 0x94, 0xf0, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb0, 0xb3, 0x55, 0x00, 0x38, 0x22, 0x00, 0x00
00365d04  bc 49 00 00 74 b3 55 00 70 0e 00 00 1c 4c 57 00  .byte 0xbc, 0x49, 0x00, 0x00, 0x74, 0xb3, 0x55, 0x00, 0x70, 0x0e, 0x00, 0x00, 0x1c, 0x4c, 0x57, 0x00
00365d14  10 47 00 00                                      .byte 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x00365d18, declared_size=32, range_size=32, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet13LoadAnimationEPKc
; demangled: AnimationSet::LoadAnimation(char const*)
; decoder-mode: arm
00365d18  10 40 2d e9                                      push {r4, lr}
00365d1c  00 40 a0 e1                                      mov r4, r0
00365d20  01 00 a0 e1                                      mov r0, r1
00365d24  95 fb ff eb                                      bl #0x364b80
00365d28  00 10 a0 e1                                      mov r1, r0
00365d2c  04 00 a0 e1                                      mov r0, r4
00365d30  10 40 bd e8                                      pop {r4, lr}
00365d34  2c ff ff ea                                      b #0x3659ec

; FUNCTION 0x00365d38, declared_size=888, range_size=888, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet16ReplaceAnimationEii
; demangled: AnimationSet::ReplaceAnimation(int, int)
; decoder-mode: arm
00365d38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00365d3c  48 53 9f e5                                      ldr r5, [pc, #0x348]
00365d40  48 83 9f e5                                      ldr r8, [pc, #0x348]
00365d44  00 70 a0 e1                                      mov r7, r0
00365d48  05 50 8f e0                                      add r5, pc, r5
00365d4c  08 30 95 e7                                      ldr r3, [r5, r8]
00365d50  3c 03 9f e5                                      ldr r0, [pc, #0x33c]
00365d54  c4 d0 4d e2                                      sub sp, sp, #0xc4
00365d58  00 30 93 e5                                      ldr r3, [r3]
00365d5c  00 00 8f e0                                      add r0, pc, r0
00365d60  04 10 8d e5                                      str r1, [sp, #4]
00365d64  02 a0 a0 e1                                      mov sl, r2
00365d68  bc 30 8d e5                                      str r3, [sp, #0xbc]
00365d6c  50 b6 fe eb                                      bl #0x3136b4
00365d70  0c 40 97 e5                                      ldr r4, [r7, #0xc]
00365d74  08 60 87 e2                                      add r6, r7, #8
00365d78  00 00 54 e3                                      cmp r4, #0
00365d7c  26 00 00 0a                                      beq #0x365e1c
00365d80  06 20 a0 e1                                      mov r2, r6
00365d84  01 00 00 ea                                      b #0x365d90
00365d88  04 20 a0 e1                                      mov r2, r4
00365d8c  03 40 a0 e1                                      mov r4, r3
00365d90  10 30 94 e5                                      ldr r3, [r4, #0x10]
00365d94  03 00 5a e1                                      cmp sl, r3
00365d98  0c 30 94 c5                                      ldrgt r3, [r4, #0xc]
00365d9c  08 30 94 d5                                      ldrle r3, [r4, #8]
00365da0  02 40 a0 c1                                      movgt r4, r2
00365da4  00 00 53 e3                                      cmp r3, #0
00365da8  f6 ff ff 1a                                      bne #0x365d88
00365dac  04 00 56 e1                                      cmp r6, r4
00365db0  0c 00 00 0a                                      beq #0x365de8
00365db4  10 30 94 e5                                      ldr r3, [r4, #0x10]
00365db8  03 00 5a e1                                      cmp sl, r3
00365dbc  16 00 00 ba                                      blt #0x365e1c
00365dc0  04 00 56 e1                                      cmp r6, r4
00365dc4  07 00 00 0a                                      beq #0x365de8
00365dc8  04 30 9d e5                                      ldr r3, [sp, #4]
00365dcc  00 00 53 e3                                      cmp r3, #0
00365dd0  04 00 00 ba                                      blt #0x365de8
00365dd4  bc 22 9f e5                                      ldr r2, [pc, #0x2bc]
00365dd8  02 20 95 e7                                      ldr r2, [r5, r2]
00365ddc  00 20 92 e5                                      ldr r2, [r2]
00365de0  02 00 53 e1                                      cmp r3, r2
00365de4  0e 00 00 ba                                      blt #0x365e24
00365de8  ac 32 9f e5                                      ldr r3, [pc, #0x2ac]
00365dec  03 40 95 e7                                      ldr r4, [r5, r3]
00365df0  a8 02 9f e5                                      ldr r0, [pc, #0x2a8]
00365df4  00 00 8f e0                                      add r0, pc, r0
00365df8  2e b6 fe eb                                      bl #0x3136b8
00365dfc  08 30 95 e7                                      ldr r3, [r5, r8]
00365e00  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
00365e04  04 00 a0 e1                                      mov r0, r4
00365e08  00 30 93 e5                                      ldr r3, [r3]
00365e0c  03 00 52 e1                                      cmp r2, r3
00365e10  9c 00 00 1a                                      bne #0x366088
00365e14  c4 d0 8d e2                                      add sp, sp, #0xc4
00365e18  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00365e1c  06 40 a0 e1                                      mov r4, r6
00365e20  e6 ff ff ea                                      b #0x365dc0
00365e24  78 22 9f e5                                      ldr r2, [pc, #0x278]
00365e28  78 12 9f e5                                      ldr r1, [pc, #0x278]
00365e2c  8c a0 8d e2                                      add sl, sp, #0x8c
00365e30  02 20 95 e7                                      ldr r2, [r5, r2]
00365e34  01 10 8f e0                                      add r1, pc, r1
00365e38  0c c0 a0 e3                                      mov ip, #0xc
00365e3c  00 e0 92 e5                                      ldr lr, [r2]
00365e40  0a 00 a0 e1                                      mov r0, sl
00365e44  07 20 81 e2                                      add r2, r1, #7
00365e48  9c e3 2b e0                                      mla fp, ip, r3, lr
00365e4c  9c a0 8d e5                                      str sl, [sp, #0x9c]
00365e50  a0 a0 8d e5                                      str sl, [sp, #0xa0]
00365e54  23 ae fe eb                                      bl #0x3116e8
00365e58  4c 22 9f e5                                      ldr r2, [pc, #0x24c]
00365e5c  00 30 e0 e3                                      mvn r3, #0
00365e60  00 90 a0 e3                                      mov sb, #0
00365e64  02 20 95 e7                                      ldr r2, [r5, r2]
00365e68  b0 30 8d e5                                      str r3, [sp, #0xb0]
00365e6c  ac 30 8d e5                                      str r3, [sp, #0xac]
00365e70  a8 20 8d e5                                      str r2, [sp, #0xa8]
00365e74  a4 90 8d e5                                      str sb, [sp, #0xa4]
00365e78  b4 90 8d e5                                      str sb, [sp, #0xb4]
00365e7c  b8 90 8d e5                                      str sb, [sp, #0xb8]
00365e80  08 10 9b e5                                      ldr r1, [fp, #8]
00365e84  18 b0 8d e2                                      add fp, sp, #0x18
00365e88  01 00 a0 e1                                      mov r0, r1
00365e8c  00 10 8d e5                                      str r1, [sp]
00365e90  ef 9f fe eb                                      bl #0x30de54
00365e94  00 10 9d e5                                      ldr r1, [sp]
00365e98  00 20 81 e0                                      add r2, r1, r0
00365e9c  0a 00 a0 e1                                      mov r0, sl
00365ea0  ce aa fe eb                                      bl #0x3109e0
00365ea4  09 20 a0 e1                                      mov r2, sb
00365ea8  0b 00 a0 e1                                      mov r0, fp
00365eac  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00365eb0  e9 a4 0a eb                                      bl #0x60f25c
00365eb4  18 30 9d e5                                      ldr r3, [sp, #0x18]
00365eb8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00365ebc  09 00 53 e1                                      cmp r3, sb
00365ec0  14 20 8d e5                                      str r2, [sp, #0x14]
00365ec4  10 30 8d e5                                      str r3, [sp, #0x10]
00365ec8  04 00 00 0a                                      beq #0x365ee0
00365ecc  04 20 93 e5                                      ldr r2, [r3, #4]
00365ed0  09 00 52 e1                                      cmp r2, sb
00365ed4  01 20 82 12                                      addne r2, r2, #1
00365ed8  04 20 83 15                                      strne r2, [r3, #4]
00365edc  10 30 9d 15                                      ldrne r3, [sp, #0x10]
00365ee0  14 20 9d e5                                      ldr r2, [sp, #0x14]
00365ee4  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00365ee8  a4 30 8d e5                                      str r3, [sp, #0xa4]
00365eec  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00365ef0  10 00 8d e2                                      add r0, sp, #0x10
00365ef4  a8 20 8d e5                                      str r2, [sp, #0xa8]
00365ef8  10 10 8d e5                                      str r1, [sp, #0x10]
00365efc  14 30 8d e5                                      str r3, [sp, #0x14]
00365f00  00 90 a0 e3                                      mov sb, #0
00365f04  5a cd 0a eb                                      bl #0x619474
00365f08  0b 00 a0 e1                                      mov r0, fp
00365f0c  58 cd 0a eb                                      bl #0x619474
00365f10  b0 90 8d e5                                      str sb, [sp, #0xb0]
00365f14  6c 94 0a eb                                      bl #0x60b0cc
00365f18  20 20 97 e5                                      ldr r2, [r7, #0x20]
00365f1c  b4 00 8d e5                                      str r0, [sp, #0xb4]
00365f20  b8 90 8d e5                                      str sb, [sp, #0xb8]
00365f24  09 00 52 e1                                      cmp r2, sb
00365f28  05 00 00 0a                                      beq #0x365f44
00365f2c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00365f30  02 00 a0 e1                                      mov r0, r2
00365f34  18 10 8a e2                                      add r1, sl, #0x18
00365f38  03 20 a0 e1                                      mov r2, r3
00365f3c  ac 30 8d e5                                      str r3, [sp, #0xac]
00365f40  af 20 0b eb                                      bl #0x62e204
00365f44  c0 10 8d e2                                      add r1, sp, #0xc0
00365f48  a0 40 21 e5                                      str r4, [r1, #-0xa0]!
00365f4c  06 00 a0 e1                                      mov r0, r6
00365f50  2b fc ff eb                                      bl #0x365004
00365f54  04 30 9d e5                                      ldr r3, [sp, #4]
00365f58  c0 70 8d e2                                      add r7, sp, #0xc0
00365f5c  68 30 27 e5                                      str r3, [r7, #-0x68]!
00365f60  04 30 87 e2                                      add r3, r7, #4
00365f64  03 00 a0 e1                                      mov r0, r3
00365f68  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
00365f6c  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00365f70  6c 30 8d e5                                      str r3, [sp, #0x6c]
00365f74  70 30 8d e5                                      str r3, [sp, #0x70]
00365f78  da ad fe eb                                      bl #0x3116e8
00365f7c  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00365f80  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
00365f84  00 00 53 e3                                      cmp r3, #0
00365f88  78 20 8d e5                                      str r2, [sp, #0x78]
00365f8c  74 30 8d e5                                      str r3, [sp, #0x74]
00365f90  03 00 00 0a                                      beq #0x365fa4
00365f94  04 20 93 e5                                      ldr r2, [r3, #4]
00365f98  00 00 52 e3                                      cmp r2, #0
00365f9c  01 20 82 12                                      addne r2, r2, #1
00365fa0  04 20 83 15                                      strne r2, [r3, #4]
00365fa4  58 30 9d e5                                      ldr r3, [sp, #0x58]
00365fa8  c0 40 8d e2                                      add r4, sp, #0xc0
00365fac  ac c0 9d e5                                      ldr ip, [sp, #0xac]
00365fb0  b0 e0 9d e5                                      ldr lr, [sp, #0xb0]
00365fb4  b4 90 9d e5                                      ldr sb, [sp, #0xb4]
00365fb8  b8 b0 9d e5                                      ldr fp, [sp, #0xb8]
00365fbc  9c 30 24 e5                                      str r3, [r4, #-0x9c]!
00365fc0  04 30 84 e2                                      add r3, r4, #4
00365fc4  03 00 a0 e1                                      mov r0, r3
00365fc8  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00365fcc  70 10 9d e5                                      ldr r1, [sp, #0x70]
00365fd0  38 30 8d e5                                      str r3, [sp, #0x38]
00365fd4  3c 30 8d e5                                      str r3, [sp, #0x3c]
00365fd8  7c c0 8d e5                                      str ip, [sp, #0x7c]
00365fdc  80 e0 8d e5                                      str lr, [sp, #0x80]
00365fe0  84 90 8d e5                                      str sb, [sp, #0x84]
00365fe4  88 b0 8d e5                                      str fp, [sp, #0x88]
00365fe8  be ad fe eb                                      bl #0x3116e8
00365fec  74 30 9d e5                                      ldr r3, [sp, #0x74]
00365ff0  78 20 9d e5                                      ldr r2, [sp, #0x78]
00365ff4  00 00 53 e3                                      cmp r3, #0
00365ff8  44 20 8d e5                                      str r2, [sp, #0x44]
00365ffc  40 30 8d e5                                      str r3, [sp, #0x40]
00366000  03 00 00 0a                                      beq #0x366014
00366004  04 20 93 e5                                      ldr r2, [r3, #4]
00366008  00 00 52 e3                                      cmp r2, #0
0036600c  01 20 82 12                                      addne r2, r2, #1
00366010  04 20 83 15                                      strne r2, [r3, #4]
00366014  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
00366018  04 20 a0 e1                                      mov r2, r4
0036601c  06 10 a0 e1                                      mov r1, r6
00366020  48 30 8d e5                                      str r3, [sp, #0x48]
00366024  80 30 9d e5                                      ldr r3, [sp, #0x80]
00366028  08 00 8d e2                                      add r0, sp, #8
0036602c  4c 30 8d e5                                      str r3, [sp, #0x4c]
00366030  84 30 9d e5                                      ldr r3, [sp, #0x84]
00366034  50 30 8d e5                                      str r3, [sp, #0x50]
00366038  88 30 9d e5                                      ldr r3, [sp, #0x88]
0036603c  54 30 8d e5                                      str r3, [sp, #0x54]
00366040  be fc ff eb                                      bl #0x365340
00366044  1c 00 84 e2                                      add r0, r4, #0x1c
00366048  09 cd 0a eb                                      bl #0x619474
0036604c  04 00 84 e2                                      add r0, r4, #4
00366050  55 b6 fe eb                                      bl #0x3139ac
00366054  1c 00 87 e2                                      add r0, r7, #0x1c
00366058  05 cd 0a eb                                      bl #0x619474
0036605c  04 00 87 e2                                      add r0, r7, #4
00366060  51 b6 fe eb                                      bl #0x3139ac
00366064  04 10 8d e2                                      add r1, sp, #4
00366068  06 00 a0 e1                                      mov r0, r6
0036606c  f2 fd ff eb                                      bl #0x36583c
00366070  00 40 a0 e1                                      mov r4, r0
00366074  18 00 8a e2                                      add r0, sl, #0x18
00366078  fd cc 0a eb                                      bl #0x619474
0036607c  0a 00 a0 e1                                      mov r0, sl
00366080  49 b6 fe eb                                      bl #0x3139ac
00366084  59 ff ff ea                                      b #0x365df0
00366088  a0 a0 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036608c  48 ed 62 00 ac 40 00 00 64 b0 55 00 38 22 00 00  .byte 0x48, 0xed, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x64, 0xb0, 0x55, 0x00, 0x38, 0x22, 0x00, 0x00
0036609c  bc 49 00 00 cc af 55 00 70 0e 00 00 6c 48 57 00  .byte 0xbc, 0x49, 0x00, 0x00, 0xcc, 0xaf, 0x55, 0x00, 0x70, 0x0e, 0x00, 0x00, 0x6c, 0x48, 0x57, 0x00
003660ac  10 47 00 00                                      .byte 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x003660b0, declared_size=36, range_size=36, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet16ReplaceAnimationEi
; demangled: AnimationSet::ReplaceAnimation(int)
; decoder-mode: arm
003660b0  70 40 2d e9                                      push {r4, r5, r6, lr}
003660b4  01 40 a0 e1                                      mov r4, r1
003660b8  00 50 a0 e1                                      mov r5, r0
003660bc  47 fa ff eb                                      bl #0x3649e0
003660c0  04 10 a0 e1                                      mov r1, r4
003660c4  00 20 a0 e1                                      mov r2, r0
003660c8  05 00 a0 e1                                      mov r0, r5
003660cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
003660d0  18 ff ff ea                                      b #0x365d38

; FUNCTION 0x003660d4, declared_size=32, range_size=32, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet16ReplaceAnimationEPKc
; demangled: AnimationSet::ReplaceAnimation(char const*)
; decoder-mode: arm
003660d4  10 40 2d e9                                      push {r4, lr}
003660d8  00 40 a0 e1                                      mov r4, r0
003660dc  01 00 a0 e1                                      mov r0, r1
003660e0  a6 fa ff eb                                      bl #0x364b80
003660e4  00 10 a0 e1                                      mov r1, r0
003660e8  04 00 a0 e1                                      mov r0, r4
003660ec  10 40 bd e8                                      pop {r4, lr}
003660f0  ee ff ff ea                                      b #0x3660b0

; FUNCTION 0x003660f4, declared_size=256, range_size=256, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet12GetAnimationEi
; demangled: AnimationSet::GetAnimation(int)
; decoder-mode: arm
003660f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003660f8  0c 40 90 e5                                      ldr r4, [r0, #0xc]
003660fc  e4 60 9f e5                                      ldr r6, [pc, #0xe4]
00366100  01 50 a0 e1                                      mov r5, r1
00366104  00 00 54 e3                                      cmp r4, #0
00366108  06 60 8f e0                                      add r6, pc, r6
0036610c  00 70 a0 e1                                      mov r7, r0
00366110  08 10 80 e2                                      add r1, r0, #8
00366114  15 00 00 0a                                      beq #0x366170
00366118  01 20 a0 e1                                      mov r2, r1
0036611c  00 00 00 ea                                      b #0x366124
00366120  03 40 a0 e1                                      mov r4, r3
00366124  10 30 94 e5                                      ldr r3, [r4, #0x10]
00366128  03 00 55 e1                                      cmp r5, r3
0036612c  0c 30 94 c5                                      ldrgt r3, [r4, #0xc]
00366130  08 30 94 d5                                      ldrle r3, [r4, #8]
00366134  02 40 a0 c1                                      movgt r4, r2
00366138  04 20 a0 e1                                      mov r2, r4
0036613c  00 00 53 e3                                      cmp r3, #0
00366140  f6 ff ff 1a                                      bne #0x366120
00366144  04 00 51 e1                                      cmp r1, r4
00366148  0b 00 00 0a                                      beq #0x36617c
0036614c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00366150  03 00 55 e1                                      cmp r5, r3
00366154  05 00 00 ba                                      blt #0x366170
00366158  04 00 51 e1                                      cmp r1, r4
0036615c  06 00 00 0a                                      beq #0x36617c
00366160  d9 93 0a eb                                      bl #0x60b0cc
00366164  3c 00 84 e5                                      str r0, [r4, #0x3c]
00366168  14 00 84 e2                                      add r0, r4, #0x14
0036616c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00366170  01 40 a0 e1                                      mov r4, r1
00366174  04 00 51 e1                                      cmp r1, r4
00366178  f8 ff ff 1a                                      bne #0x366160
0036617c  3c 30 d7 e5                                      ldrb r3, [r7, #0x3c]
00366180  00 00 53 e3                                      cmp r3, #0
00366184  04 00 00 1a                                      bne #0x36619c
00366188  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0036618c  03 30 96 e7                                      ldr r3, [r6, r3]
00366190  00 30 d3 e5                                      ldrb r3, [r3]
00366194  00 00 53 e3                                      cmp r3, #0
00366198  0f 00 00 1a                                      bne #0x3661dc
0036619c  30 20 97 e5                                      ldr r2, [r7, #0x30]
003661a0  18 30 97 e5                                      ldr r3, [r7, #0x18]
003661a4  03 00 52 e1                                      cmp r2, r3
003661a8  07 00 00 8a                                      bhi #0x3661cc
003661ac  07 00 a0 e1                                      mov r0, r7
003661b0  05 10 a0 e1                                      mov r1, r5
003661b4  bd ff ff eb                                      bl #0x3660b0
003661b8  30 30 9f e5                                      ldr r3, [pc, #0x30]
003661bc  03 30 96 e7                                      ldr r3, [r6, r3]
003661c0  03 00 50 e1                                      cmp r0, r3
003661c4  00 00 00 0a                                      beq #0x3661cc
003661c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003661cc  07 00 a0 e1                                      mov r0, r7
003661d0  05 10 a0 e1                                      mov r1, r5
003661d4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003661d8  03 fe ff ea                                      b #0x3659ec
003661dc  0c 30 9f e5                                      ldr r3, [pc, #0xc]
003661e0  03 00 96 e7                                      ldr r0, [r6, r3]
003661e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003661e8  88 e9 62 00 a8 44 00 00 bc 49 00 00              .byte 0x88, 0xe9, 0x62, 0x00, 0xa8, 0x44, 0x00, 0x00, 0xbc, 0x49, 0x00, 0x00

; FUNCTION 0x003661f4, declared_size=32, range_size=32, mode=arm
; class-group: AnimationSet
; alias: _ZN12AnimationSet12GetAnimationEPKc
; demangled: AnimationSet::GetAnimation(char const*)
; decoder-mode: arm
003661f4  10 40 2d e9                                      push {r4, lr}
003661f8  00 40 a0 e1                                      mov r4, r0
003661fc  01 00 a0 e1                                      mov r0, r1
00366200  5e fa ff eb                                      bl #0x364b80
00366204  00 10 a0 e1                                      mov r1, r0
00366208  04 00 a0 e1                                      mov r0, r4
0036620c  10 40 bd e8                                      pop {r4, lr}
00366210  b7 ff ff ea                                      b #0x3660f4
