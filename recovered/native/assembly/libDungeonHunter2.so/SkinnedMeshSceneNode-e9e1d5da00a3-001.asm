; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035a914, declared_size=44, range_size=44, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZN20SkinnedMeshSceneNode19onRegisterSceneNodeEv
; demangled: SkinnedMeshSceneNode::onRegisterSceneNode()
; decoder-mode: arm
0035a914  10 40 2d e9                                      push {r4, lr}
0035a918  10 31 90 e5                                      ldr r3, [r0, #0x110]
0035a91c  00 40 a0 e1                                      mov r4, r0
0035a920  06 1d 80 e2                                      add r1, r0, #0x180
0035a924  03 00 a0 e1                                      mov r0, r3
0035a928  00 30 93 e5                                      ldr r3, [r3]
0035a92c  0f e0 a0 e1                                      mov lr, pc
0035a930  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0035a934  04 00 a0 e1                                      mov r0, r4
0035a938  10 40 bd e8                                      pop {r4, lr}
0035a93c  a1 ae 0b ea                                      b #0x6463c8

; FUNCTION 0x0035a974, declared_size=52, range_size=52, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZN20SkinnedMeshSceneNode22updateAbsolutePositionEb
; demangled: SkinnedMeshSceneNode::updateAbsolutePosition(bool)
; decoder-mode: arm
0035a974  70 40 2d e9                                      push {r4, r5, r6, lr}
0035a978  34 31 90 e5                                      ldr r3, [r0, #0x134]
0035a97c  00 40 a0 e1                                      mov r4, r0
0035a980  01 50 a0 e1                                      mov r5, r1
0035a984  03 00 a0 e1                                      mov r0, r3
0035a988  01 10 a0 e3                                      mov r1, #1
0035a98c  00 30 93 e5                                      ldr r3, [r3]
0035a990  0f e0 a0 e1                                      mov lr, pc
0035a994  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0035a998  04 00 a0 e1                                      mov r0, r4
0035a99c  05 10 a0 e1                                      mov r1, r5
0035a9a0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0035a9a4  ad f4 08 ea                                      b #0x597c60

; FUNCTION 0x0035ad84, declared_size=8, range_size=8, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZThn384_N20SkinnedMeshSceneNode23prepareSkinForRenderingEv
; demangled: non-virtual thunk to SkinnedMeshSceneNode::prepareSkinForRendering()
; decoder-mode: arm
0035ad84  06 0d 40 e2                                      sub r0, r0, #0x180
0035ad88  ff ff ff ea                                      b #0x35ad8c

; FUNCTION 0x0035ad8c, declared_size=208, range_size=208, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZN20SkinnedMeshSceneNode23prepareSkinForRenderingEv
; demangled: SkinnedMeshSceneNode::prepareSkinForRendering()
; decoder-mode: arm
0035ad8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035ad90  34 31 90 e5                                      ldr r3, [r0, #0x134]
0035ad94  0c d0 4d e2                                      sub sp, sp, #0xc
0035ad98  00 50 a0 e1                                      mov r5, r0
0035ad9c  00 00 53 e3                                      cmp r3, #0
0035ada0  2b 00 00 0a                                      beq #0x35ae54
0035ada4  10 21 90 e5                                      ldr r2, [r0, #0x110]
0035ada8  14 a0 92 e5                                      ldr sl, [r2, #0x14]
0035adac  00 00 5a e3                                      cmp sl, #0
0035adb0  27 00 00 0a                                      beq #0x35ae54
0035adb4  03 00 a0 e1                                      mov r0, r3
0035adb8  00 30 93 e5                                      ldr r3, [r3]
0035adbc  0f e0 a0 e1                                      mov lr, pc
0035adc0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0035adc4  00 70 50 e2                                      subs r7, r0, #0
0035adc8  21 00 00 0a                                      beq #0x35ae54
0035adcc  00 40 a0 e3                                      mov r4, #0
0035add0  04 80 8d e2                                      add r8, sp, #4
0035add4  0d 60 a0 e1                                      mov r6, sp
0035add8  34 31 95 e5                                      ldr r3, [r5, #0x134]
0035addc  08 00 a0 e1                                      mov r0, r8
0035ade0  04 20 a0 e1                                      mov r2, r4
0035ade4  03 10 a0 e1                                      mov r1, r3
0035ade8  00 30 93 e5                                      ldr r3, [r3]
0035adec  0f e0 a0 e1                                      mov lr, pc
0035adf0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0035adf4  04 30 9d e5                                      ldr r3, [sp, #4]
0035adf8  00 00 53 e2                                      subs r0, r3, #0
0035adfc  11 00 00 0a                                      beq #0x35ae48
0035ae00  df 09 ff eb                                      bl #0x31d584
0035ae04  34 31 95 e5                                      ldr r3, [r5, #0x134]
0035ae08  04 20 a0 e1                                      mov r2, r4
0035ae0c  0d 00 a0 e1                                      mov r0, sp
0035ae10  03 10 a0 e1                                      mov r1, r3
0035ae14  00 30 93 e5                                      ldr r3, [r3]
0035ae18  0f e0 a0 e1                                      mov lr, pc
0035ae1c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0035ae20  34 21 95 e5                                      ldr r2, [r5, #0x134]
0035ae24  04 30 a0 e1                                      mov r3, r4
0035ae28  00 10 a0 e3                                      mov r1, #0
0035ae2c  02 00 a0 e1                                      mov r0, r2
0035ae30  00 c0 92 e5                                      ldr ip, [r2]
0035ae34  0a 20 a0 e1                                      mov r2, sl
0035ae38  0f e0 a0 e1                                      mov lr, pc
0035ae3c  38 f0 9c e5                                      ldr pc, [ip, #0x38]
0035ae40  0d 00 a0 e1                                      mov r0, sp
0035ae44  67 d7 fe eb                                      bl #0x310be8
0035ae48  01 40 84 e2                                      add r4, r4, #1
0035ae4c  07 00 54 e1                                      cmp r4, r7
0035ae50  e0 ff ff 1a                                      bne #0x35add8
0035ae54  0c d0 8d e2                                      add sp, sp, #0xc
0035ae58  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0035b0a0, declared_size=136, range_size=136, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZN20SkinnedMeshSceneNodeC1ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEE
; demangled: SkinnedMeshSceneNode::SkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&)
; decoder-mode: arm
0035b0a0  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b0a4  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
0035b0a8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0035b0ac  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0035b0b0  05 50 8f e0                                      add r5, pc, r5
0035b0b4  03 30 95 e7                                      ldr r3, [r5, r3]
0035b0b8  02 20 95 e7                                      ldr r2, [r5, r2]
0035b0bc  01 e0 a0 e3                                      mov lr, #1
0035b0c0  48 c0 93 e5                                      ldr ip, [r3, #0x48]
0035b0c4  08 20 82 e2                                      add r2, r2, #8
0035b0c8  88 e1 80 e5                                      str lr, [r0, #0x188]
0035b0cc  84 21 80 e5                                      str r2, [r0, #0x184]
0035b0d0  00 c0 80 e5                                      str ip, [r0]
0035b0d4  4c e0 93 e5                                      ldr lr, [r3, #0x4c]
0035b0d8  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0035b0dc  01 20 a0 e1                                      mov r2, r1
0035b0e0  04 10 83 e2                                      add r1, r3, #4
0035b0e4  0c e0 80 e7                                      str lr, [r0, ip]
0035b0e8  00 40 a0 e1                                      mov r4, r0
0035b0ec  c2 ff ff eb                                      bl #0x35affc
0035b0f0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0035b0f4  04 00 a0 e1                                      mov r0, r4
0035b0f8  03 30 95 e7                                      ldr r3, [r5, r3]
0035b0fc  49 2f 83 e2                                      add r2, r3, #0x124
0035b100  1c 10 83 e2                                      add r1, r3, #0x1c
0035b104  4e 3f 83 e2                                      add r3, r3, #0x138
0035b108  00 10 84 e5                                      str r1, [r4]
0035b10c  84 31 84 e5                                      str r3, [r4, #0x184]
0035b110  80 21 84 e5                                      str r2, [r4, #0x180]
0035b114  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035b118  e0 99 63 00 a4 37 00 00 44 2b 00 00 1c 37 00 00  .byte 0xe0, 0x99, 0x63, 0x00, 0xa4, 0x37, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x1c, 0x37, 0x00, 0x00

; FUNCTION 0x0035b128, declared_size=116, range_size=116, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZN20SkinnedMeshSceneNodeC2ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEE
; demangled: SkinnedMeshSceneNode::SkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&)
; decoder-mode: arm
0035b128  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b12c  01 60 a0 e1                                      mov r6, r1
0035b130  58 50 9f e5                                      ldr r5, [pc, #0x58]
0035b134  04 10 81 e2                                      add r1, r1, #4
0035b138  00 40 a0 e1                                      mov r4, r0
0035b13c  ae ff ff eb                                      bl #0x35affc
0035b140  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0035b144  05 50 8f e0                                      add r5, pc, r5
0035b148  48 30 9f e5                                      ldr r3, [pc, #0x48]
0035b14c  02 20 95 e7                                      ldr r2, [r5, r2]
0035b150  04 00 a0 e1                                      mov r0, r4
0035b154  03 30 95 e7                                      ldr r3, [r5, r3]
0035b158  08 20 82 e2                                      add r2, r2, #8
0035b15c  80 21 84 e5                                      str r2, [r4, #0x180]
0035b160  00 20 96 e5                                      ldr r2, [r6]
0035b164  49 3f 83 e2                                      add r3, r3, #0x124
0035b168  00 20 84 e5                                      str r2, [r4]
0035b16c  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
0035b170  40 10 96 e5                                      ldr r1, [r6, #0x40]
0035b174  02 10 84 e7                                      str r1, [r4, r2]
0035b178  00 20 94 e5                                      ldr r2, [r4]
0035b17c  44 10 96 e5                                      ldr r1, [r6, #0x44]
0035b180  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035b184  02 10 84 e7                                      str r1, [r4, r2]
0035b188  80 31 84 e5                                      str r3, [r4, #0x180]
0035b18c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035b190  4c 99 63 00 bc 2d 00 00 1c 37 00 00              .byte 0x4c, 0x99, 0x63, 0x00, 0xbc, 0x2d, 0x00, 0x00, 0x1c, 0x37, 0x00, 0x00

; FUNCTION 0x0035b860, declared_size=148, range_size=148, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZN20SkinnedMeshSceneNodeD1Ev
; demangled: SkinnedMeshSceneNode::~SkinnedMeshSceneNode()
; decoder-mode: arm
0035b860  80 30 9f e5                                      ldr r3, [pc, #0x80]
0035b864  80 10 9f e5                                      ldr r1, [pc, #0x80]
0035b868  80 20 9f e5                                      ldr r2, [pc, #0x80]
0035b86c  03 30 8f e0                                      add r3, pc, r3
0035b870  01 10 93 e7                                      ldr r1, [r3, r1]
0035b874  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b878  02 20 93 e7                                      ldr r2, [r3, r2]
0035b87c  04 c0 91 e5                                      ldr ip, [r1, #4]
0035b880  3c 60 91 e5                                      ldr r6, [r1, #0x3c]
0035b884  49 ef 82 e2                                      add lr, r2, #0x124
0035b888  4e 2f 82 e2                                      add r2, r2, #0x138
0035b88c  00 c0 80 e5                                      str ip, [r0]
0035b890  84 21 80 e5                                      str r2, [r0, #0x184]
0035b894  80 e1 80 e5                                      str lr, [r0, #0x180]
0035b898  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
0035b89c  38 e0 91 e5                                      ldr lr, [r1, #0x38]
0035b8a0  08 20 91 e5                                      ldr r2, [r1, #8]
0035b8a4  00 40 a0 e1                                      mov r4, r0
0035b8a8  0c e0 80 e7                                      str lr, [r0, ip]
0035b8ac  00 50 90 e5                                      ldr r5, [r0]
0035b8b0  30 e0 91 e5                                      ldr lr, [r1, #0x30]
0035b8b4  34 c0 91 e5                                      ldr ip, [r1, #0x34]
0035b8b8  0c 50 15 e5                                      ldr r5, [r5, #-0xc]
0035b8bc  0c 10 81 e2                                      add r1, r1, #0xc
0035b8c0  05 60 80 e7                                      str r6, [r0, r5]
0035b8c4  00 20 80 e5                                      str r2, [r0]
0035b8c8  1c 30 12 e5                                      ldr r3, [r2, #-0x1c]
0035b8cc  03 e0 80 e7                                      str lr, [r0, r3]
0035b8d0  00 30 90 e5                                      ldr r3, [r0]
0035b8d4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b8d8  03 c0 80 e7                                      str ip, [r0, r3]
0035b8dc  7f aa 0b eb                                      bl #0x6462e0
0035b8e0  04 00 a0 e1                                      mov r0, r4
0035b8e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035b8e8  24 92 63 00 a4 37 00 00 1c 37 00 00              .byte 0x24, 0x92, 0x63, 0x00, 0xa4, 0x37, 0x00, 0x00, 0x1c, 0x37, 0x00, 0x00

; FUNCTION 0x0035b8f4, declared_size=28, range_size=28, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZN20SkinnedMeshSceneNodeD0Ev
; demangled: SkinnedMeshSceneNode::~SkinnedMeshSceneNode()
; decoder-mode: arm
0035b8f4  10 40 2d e9                                      push {r4, lr}
0035b8f8  00 40 a0 e1                                      mov r4, r0
0035b8fc  d7 ff ff eb                                      bl #0x35b860
0035b900  04 00 a0 e1                                      mov r0, r4
0035b904  cd d2 fe eb                                      bl #0x310440
0035b908  04 00 a0 e1                                      mov r0, r4
0035b90c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035b910, declared_size=172, range_size=172, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZN20SkinnedMeshSceneNodeD2Ev
; demangled: SkinnedMeshSceneNode::~SkinnedMeshSceneNode()
; decoder-mode: arm
0035b910  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b914  00 30 91 e5                                      ldr r3, [r1]
0035b918  94 20 9f e5                                      ldr r2, [pc, #0x94]
0035b91c  00 40 a0 e1                                      mov r4, r0
0035b920  00 30 80 e5                                      str r3, [r0]
0035b924  1c c0 13 e5                                      ldr ip, [r3, #-0x1c]
0035b928  40 e0 91 e5                                      ldr lr, [r1, #0x40]
0035b92c  84 30 9f e5                                      ldr r3, [pc, #0x84]
0035b930  02 20 8f e0                                      add r2, pc, r2
0035b934  0c e0 80 e7                                      str lr, [r0, ip]
0035b938  00 c0 90 e5                                      ldr ip, [r0]
0035b93c  03 30 92 e7                                      ldr r3, [r2, r3]
0035b940  44 50 91 e5                                      ldr r5, [r1, #0x44]
0035b944  0c e0 1c e5                                      ldr lr, [ip, #-0xc]
0035b948  49 cf 83 e2                                      add ip, r3, #0x124
0035b94c  04 30 81 e2                                      add r3, r1, #4
0035b950  0e 50 80 e7                                      str r5, [r0, lr]
0035b954  80 c1 80 e5                                      str ip, [r0, #0x180]
0035b958  04 e0 91 e5                                      ldr lr, [r1, #4]
0035b95c  04 c0 83 e2                                      add ip, r3, #4
0035b960  04 10 8c e2                                      add r1, ip, #4
0035b964  00 e0 80 e5                                      str lr, [r0]
0035b968  34 50 93 e5                                      ldr r5, [r3, #0x34]
0035b96c  1c e0 1e e5                                      ldr lr, [lr, #-0x1c]
0035b970  0e 50 80 e7                                      str r5, [r0, lr]
0035b974  00 20 90 e5                                      ldr r2, [r0]
0035b978  38 e0 93 e5                                      ldr lr, [r3, #0x38]
0035b97c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035b980  02 e0 80 e7                                      str lr, [r0, r2]
0035b984  04 30 93 e5                                      ldr r3, [r3, #4]
0035b988  00 30 80 e5                                      str r3, [r0]
0035b98c  28 20 9c e5                                      ldr r2, [ip, #0x28]
0035b990  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0035b994  03 20 80 e7                                      str r2, [r0, r3]
0035b998  00 30 90 e5                                      ldr r3, [r0]
0035b99c  2c 20 9c e5                                      ldr r2, [ip, #0x2c]
0035b9a0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b9a4  03 20 80 e7                                      str r2, [r0, r3]
0035b9a8  4c aa 0b eb                                      bl #0x6462e0
0035b9ac  04 00 a0 e1                                      mov r0, r4
0035b9b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035b9b4  60 91 63 00 1c 37 00 00                          .byte 0x60, 0x91, 0x63, 0x00, 0x1c, 0x37, 0x00, 0x00

; FUNCTION 0x0035bc10, declared_size=16, range_size=16, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZTv0_n24_N20SkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to SkinnedMeshSceneNode::~SkinnedMeshSceneNode()
; decoder-mode: arm
0035bc10  00 30 90 e5                                      ldr r3, [r0]
0035bc14  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035bc18  03 00 80 e0                                      add r0, r0, r3
0035bc1c  34 ff ff ea                                      b #0x35b8f4

; FUNCTION 0x0035bc20, declared_size=16, range_size=16, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZTv0_n12_N20SkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to SkinnedMeshSceneNode::~SkinnedMeshSceneNode()
; decoder-mode: arm
0035bc20  00 30 90 e5                                      ldr r3, [r0]
0035bc24  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035bc28  03 00 80 e0                                      add r0, r0, r3
0035bc2c  30 ff ff ea                                      b #0x35b8f4

; FUNCTION 0x0035bc30, declared_size=16, range_size=16, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZTv0_n24_N20SkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to SkinnedMeshSceneNode::~SkinnedMeshSceneNode()
; decoder-mode: arm
0035bc30  00 30 90 e5                                      ldr r3, [r0]
0035bc34  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035bc38  03 00 80 e0                                      add r0, r0, r3
0035bc3c  07 ff ff ea                                      b #0x35b860

; FUNCTION 0x0035bc40, declared_size=16, range_size=16, mode=arm
; class-group: SkinnedMeshSceneNode
; alias: _ZTv0_n12_N20SkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to SkinnedMeshSceneNode::~SkinnedMeshSceneNode()
; decoder-mode: arm
0035bc40  00 30 90 e5                                      ldr r3, [r0]
0035bc44  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035bc48  03 00 80 e0                                      add r0, r0, r3
0035bc4c  03 ff ff ea                                      b #0x35b860
