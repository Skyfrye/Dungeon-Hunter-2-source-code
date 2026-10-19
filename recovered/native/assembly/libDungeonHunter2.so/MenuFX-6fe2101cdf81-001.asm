; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a7ef8, declared_size=8, range_size=8, mode=arm
; class-group: MenuFX
; alias: _ZThn256_N6MenuFX11OnFSCommandEPKcS1_
; demangled: non-virtual thunk to MenuFX::OnFSCommand(char const*, char const*)
; decoder-mode: arm
007a7ef8  01 0c 40 e2                                      sub r0, r0, #0x100
007a7efc  ff ff ff ea                                      b #0x7a7f00

; FUNCTION 0x007a7f00, declared_size=48, range_size=48, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX11OnFSCommandEPKcS1_
; demangled: MenuFX::OnFSCommand(char const*, char const*)
; decoder-mode: arm
007a7f00  10 40 2d e9                                      push {r4, lr}
007a7f04  18 31 90 e5                                      ldr r3, [r0, #0x118]
007a7f08  00 00 53 e3                                      cmp r3, #0
007a7f0c  06 00 00 da                                      ble #0x7a7f2c
007a7f10  14 01 90 e5                                      ldr r0, [r0, #0x114]
007a7f14  01 30 43 e2                                      sub r3, r3, #1
007a7f18  03 31 90 e7                                      ldr r3, [r0, r3, lsl #2]
007a7f1c  03 00 a0 e1                                      mov r0, r3
007a7f20  00 30 93 e5                                      ldr r3, [r3]
007a7f24  0f e0 a0 e1                                      mov lr, pc
007a7f28  30 f0 93 e5                                      ldr pc, [r3, #0x30]
007a7f2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007a7f30, declared_size=28, range_size=28, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX15GetCurrentStateEv
; demangled: MenuFX::GetCurrentState()
; decoder-mode: arm
007a7f30  18 31 90 e5                                      ldr r3, [r0, #0x118]
007a7f34  00 00 53 e3                                      cmp r3, #0
007a7f38  14 21 90 c5                                      ldrgt r2, [r0, #0x114]
007a7f3c  01 30 43 c2                                      subgt r3, r3, #1
007a7f40  00 00 a0 d3                                      movle r0, #0
007a7f44  03 01 92 c7                                      ldrgt r0, [r2, r3, lsl #2]
007a7f48  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a7f4c, declared_size=76, range_size=76, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX14IsStateInStackEPNS_5StateE
; demangled: MenuFX::IsStateInStack(MenuFX::State*)
; decoder-mode: arm
007a7f4c  18 31 90 e5                                      ldr r3, [r0, #0x118]
007a7f50  00 00 53 e3                                      cmp r3, #0
007a7f54  0b 00 00 da                                      ble #0x7a7f88
007a7f58  14 c1 90 e5                                      ldr ip, [r0, #0x114]
007a7f5c  00 20 9c e5                                      ldr r2, [ip]
007a7f60  01 00 52 e1                                      cmp r2, r1
007a7f64  00 20 a0 13                                      movne r2, #0
007a7f68  03 00 00 1a                                      bne #0x7a7f7c
007a7f6c  07 00 00 ea                                      b #0x7a7f90
007a7f70  02 01 9c e7                                      ldr r0, [ip, r2, lsl #2]
007a7f74  01 00 50 e1                                      cmp r0, r1
007a7f78  04 00 00 0a                                      beq #0x7a7f90
007a7f7c  01 20 82 e2                                      add r2, r2, #1
007a7f80  03 00 52 e1                                      cmp r2, r3
007a7f84  f9 ff ff 1a                                      bne #0x7a7f70
007a7f88  00 00 a0 e3                                      mov r0, #0
007a7f8c  1e ff 2f e1                                      bx lr
007a7f90  01 00 a0 e3                                      mov r0, #1
007a7f94  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a82c4, declared_size=88, range_size=88, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX8GetStateEPKc
; demangled: MenuFX::GetState(char const*)
; decoder-mode: arm
007a82c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a82c8  08 61 90 e5                                      ldr r6, [r0, #0x108]
007a82cc  01 70 a0 e1                                      mov r7, r1
007a82d0  00 00 56 e3                                      cmp r6, #0
007a82d4  0d 00 00 da                                      ble #0x7a8310
007a82d8  04 81 90 e5                                      ldr r8, [r0, #0x104]
007a82dc  00 40 a0 e3                                      mov r4, #0
007a82e0  01 00 00 ea                                      b #0x7a82ec
007a82e4  06 00 54 e1                                      cmp r4, r6
007a82e8  08 00 00 0a                                      beq #0x7a8310
007a82ec  04 51 98 e7                                      ldr r5, [r8, r4, lsl #2]
007a82f0  07 10 a0 e1                                      mov r1, r7
007a82f4  01 40 84 e2                                      add r4, r4, #1
007a82f8  08 00 85 e2                                      add r0, r5, #8
007a82fc  06 98 ed eb                                      bl #0x30e31c
007a8300  00 00 50 e3                                      cmp r0, #0
007a8304  f6 ff ff 1a                                      bne #0x7a82e4
007a8308  05 00 a0 e1                                      mov r0, r5
007a830c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a8310  00 50 a0 e3                                      mov r5, #0
007a8314  05 00 a0 e1                                      mov r0, r5
007a8318  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007a86e4, declared_size=108, range_size=108, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFXC1Ev
; demangled: MenuFX::MenuFX()
; decoder-mode: arm
007a86e4  70 40 2d e9                                      push {r4, r5, r6, lr}
007a86e8  58 50 9f e5                                      ldr r5, [pc, #0x58]
007a86ec  00 40 a0 e1                                      mov r4, r0
007a86f0  c0 ff ff eb                                      bl #0x7a85f8
007a86f4  50 20 9f e5                                      ldr r2, [pc, #0x50]
007a86f8  05 50 8f e0                                      add r5, pc, r5
007a86fc  00 30 a0 e3                                      mov r3, #0
007a8700  02 20 95 e7                                      ldr r2, [r5, r2]
007a8704  04 00 a0 e1                                      mov r0, r4
007a8708  20 31 c4 e5                                      strb r3, [r4, #0x120]
007a870c  44 10 82 e2                                      add r1, r2, #0x44
007a8710  08 20 82 e2                                      add r2, r2, #8
007a8714  00 11 84 e5                                      str r1, [r4, #0x100]
007a8718  04 31 84 e5                                      str r3, [r4, #0x104]
007a871c  00 20 84 e5                                      str r2, [r4]
007a8720  08 31 84 e5                                      str r3, [r4, #0x108]
007a8724  0c 31 84 e5                                      str r3, [r4, #0x10c]
007a8728  10 31 c4 e5                                      strb r3, [r4, #0x110]
007a872c  14 31 84 e5                                      str r3, [r4, #0x114]
007a8730  18 31 84 e5                                      str r3, [r4, #0x118]
007a8734  1c 31 84 e5                                      str r3, [r4, #0x11c]
007a8738  01 1c 84 e2                                      add r1, r4, #0x100
007a873c  4a fd ff eb                                      bl #0x7a7c6c
007a8740  04 00 a0 e1                                      mov r0, r4
007a8744  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a8748  98 c3 1e 00 18 27 00 00                          .byte 0x98, 0xc3, 0x1e, 0x00, 0x18, 0x27, 0x00, 0x00

; FUNCTION 0x007a8750, declared_size=108, range_size=108, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFXC2Ev
; demangled: MenuFX::MenuFX()
; decoder-mode: arm
007a8750  70 40 2d e9                                      push {r4, r5, r6, lr}
007a8754  58 50 9f e5                                      ldr r5, [pc, #0x58]
007a8758  00 40 a0 e1                                      mov r4, r0
007a875c  a5 ff ff eb                                      bl #0x7a85f8
007a8760  50 20 9f e5                                      ldr r2, [pc, #0x50]
007a8764  05 50 8f e0                                      add r5, pc, r5
007a8768  00 30 a0 e3                                      mov r3, #0
007a876c  02 20 95 e7                                      ldr r2, [r5, r2]
007a8770  04 00 a0 e1                                      mov r0, r4
007a8774  20 31 c4 e5                                      strb r3, [r4, #0x120]
007a8778  44 10 82 e2                                      add r1, r2, #0x44
007a877c  08 20 82 e2                                      add r2, r2, #8
007a8780  00 11 84 e5                                      str r1, [r4, #0x100]
007a8784  04 31 84 e5                                      str r3, [r4, #0x104]
007a8788  00 20 84 e5                                      str r2, [r4]
007a878c  08 31 84 e5                                      str r3, [r4, #0x108]
007a8790  0c 31 84 e5                                      str r3, [r4, #0x10c]
007a8794  10 31 c4 e5                                      strb r3, [r4, #0x110]
007a8798  14 31 84 e5                                      str r3, [r4, #0x114]
007a879c  18 31 84 e5                                      str r3, [r4, #0x118]
007a87a0  1c 31 84 e5                                      str r3, [r4, #0x11c]
007a87a4  01 1c 84 e2                                      add r1, r4, #0x100
007a87a8  2f fd ff eb                                      bl #0x7a7c6c
007a87ac  04 00 a0 e1                                      mov r0, r4
007a87b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007a87b4  2c c3 1e 00 18 27 00 00                          .byte 0x2c, 0xc3, 0x1e, 0x00, 0x18, 0x27, 0x00, 0x00

; FUNCTION 0x007abb20, declared_size=156, range_size=156, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX6PopAllEv
; demangled: MenuFX::PopAll()
; decoder-mode: arm
007abb20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007abb24  18 51 90 e5                                      ldr r5, [r0, #0x118]
007abb28  00 40 a0 e1                                      mov r4, r0
007abb2c  00 00 55 e3                                      cmp r5, #0
007abb30  18 00 00 da                                      ble #0x7abb98
007abb34  45 7f 80 e2                                      add r7, r0, #0x114
007abb38  02 60 a0 e3                                      mov r6, #2
007abb3c  14 31 94 e5                                      ldr r3, [r4, #0x114]
007abb40  01 50 45 e2                                      sub r5, r5, #1
007abb44  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
007abb48  03 00 a0 e1                                      mov r0, r3
007abb4c  00 30 93 e5                                      ldr r3, [r3]
007abb50  0f e0 a0 e1                                      mov lr, pc
007abb54  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007abb58  18 21 94 e5                                      ldr r2, [r4, #0x118]
007abb5c  14 31 94 e5                                      ldr r3, [r4, #0x114]
007abb60  01 20 42 e2                                      sub r2, r2, #1
007abb64  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007abb68  58 60 83 e5                                      str r6, [r3, #0x58]
007abb6c  18 51 94 e5                                      ldr r5, [r4, #0x118]
007abb70  01 50 55 e2                                      subs r5, r5, #1
007abb74  06 00 00 0a                                      beq #0x7abb94
007abb78  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
007abb7c  03 00 55 e1                                      cmp r5, r3
007abb80  09 00 00 ca                                      bgt #0x7abbac
007abb84  00 00 55 e3                                      cmp r5, #0
007abb88  18 51 84 e5                                      str r5, [r4, #0x118]
007abb8c  ea ff ff ca                                      bgt #0x7abb3c
007abb90  00 00 00 ea                                      b #0x7abb98
007abb94  18 51 84 e5                                      str r5, [r4, #0x118]
007abb98  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007abb9c  04 00 a0 e1                                      mov r0, r4
007abba0  10 10 93 e5                                      ldr r1, [r3, #0x10]
007abba4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007abba8  ce f0 ff ea                                      b #0x7a7ee8
007abbac  07 00 a0 e1                                      mov r0, r7
007abbb0  c5 10 85 e0                                      add r1, r5, r5, asr #1
007abbb4  18 30 f2 eb                                      bl #0x437c1c
007abbb8  f1 ff ff ea                                      b #0x7abb84

; FUNCTION 0x007abbbc, declared_size=172, range_size=172, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX6UnloadEv
; demangled: MenuFX::Unload()
; decoder-mode: arm
007abbbc  10 40 2d e9                                      push {r4, lr}
007abbc0  00 40 a0 e1                                      mov r4, r0
007abbc4  3c f5 ff eb                                      bl #0x7a90bc
007abbc8  58 00 84 e2                                      add r0, r4, #0x58
007abbcc  3c f2 ff eb                                      bl #0x7a84c4
007abbd0  80 00 84 e2                                      add r0, r4, #0x80
007abbd4  3a f2 ff eb                                      bl #0x7a84c4
007abbd8  a8 00 84 e2                                      add r0, r4, #0xa8
007abbdc  38 f2 ff eb                                      bl #0x7a84c4
007abbe0  d0 00 84 e2                                      add r0, r4, #0xd0
007abbe4  36 f2 ff eb                                      bl #0x7a84c4
007abbe8  08 31 94 e5                                      ldr r3, [r4, #0x108]
007abbec  41 0f 84 e2                                      add r0, r4, #0x104
007abbf0  00 00 53 e3                                      cmp r3, #0
007abbf4  08 00 00 da                                      ble #0x7abc1c
007abbf8  18 31 94 e5                                      ldr r3, [r4, #0x118]
007abbfc  00 c0 a0 e3                                      mov ip, #0
007abc00  08 c1 84 e5                                      str ip, [r4, #0x108]
007abc04  0c 00 53 e1                                      cmp r3, ip
007abc08  45 0f 84 e2                                      add r0, r4, #0x114
007abc0c  0b 00 00 da                                      ble #0x7abc40
007abc10  00 30 a0 e3                                      mov r3, #0
007abc14  18 31 84 e5                                      str r3, [r4, #0x118]
007abc18  10 80 bd e8                                      pop {r4, pc}
007abc1c  f5 ff ff aa                                      bge #0x7abbf8
007abc20  03 21 a0 e1                                      lsl r2, r3, #2
007abc24  00 c0 a0 e3                                      mov ip, #0
007abc28  00 10 90 e5                                      ldr r1, [r0]
007abc2c  01 30 93 e2                                      adds r3, r3, #1
007abc30  02 c0 81 e7                                      str ip, [r1, r2]
007abc34  04 20 82 e2                                      add r2, r2, #4
007abc38  fa ff ff 1a                                      bne #0x7abc28
007abc3c  ed ff ff ea                                      b #0x7abbf8
007abc40  f2 ff ff aa                                      bge #0x7abc10
007abc44  03 21 a0 e1                                      lsl r2, r3, #2
007abc48  00 10 90 e5                                      ldr r1, [r0]
007abc4c  01 30 93 e2                                      adds r3, r3, #1
007abc50  02 c0 81 e7                                      str ip, [r1, r2]
007abc54  04 20 82 e2                                      add r2, r2, #4
007abc58  fa ff ff 1a                                      bne #0x7abc48
007abc5c  00 30 a0 e3                                      mov r3, #0
007abc60  18 31 84 e5                                      str r3, [r4, #0x118]
007abc64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007abc68, declared_size=196, range_size=196, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFXD1Ev
; demangled: MenuFX::~MenuFX()
; decoder-mode: arm
007abc68  70 40 2d e9                                      push {r4, r5, r6, lr}
007abc6c  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
007abc70  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
007abc74  18 11 90 e5                                      ldr r1, [r0, #0x118]
007abc78  02 20 8f e0                                      add r2, pc, r2
007abc7c  03 30 92 e7                                      ldr r3, [r2, r3]
007abc80  00 40 a0 e1                                      mov r4, r0
007abc84  00 00 51 e3                                      cmp r1, #0
007abc88  44 20 83 e2                                      add r2, r3, #0x44
007abc8c  08 30 83 e2                                      add r3, r3, #8
007abc90  45 0f 80 e2                                      add r0, r0, #0x114
007abc94  00 30 84 e5                                      str r3, [r4]
007abc98  00 21 84 e5                                      str r2, [r4, #0x100]
007abc9c  0f 00 00 da                                      ble #0x7abce0
007abca0  00 50 a0 e3                                      mov r5, #0
007abca4  18 51 84 e5                                      str r5, [r4, #0x118]
007abca8  05 10 a0 e1                                      mov r1, r5
007abcac  da 2f f2 eb                                      bl #0x437c1c
007abcb0  08 31 94 e5                                      ldr r3, [r4, #0x108]
007abcb4  41 0f 84 e2                                      add r0, r4, #0x104
007abcb8  05 00 53 e1                                      cmp r3, r5
007abcbc  10 00 00 da                                      ble #0x7abd04
007abcc0  00 30 a0 e3                                      mov r3, #0
007abcc4  03 10 a0 e1                                      mov r1, r3
007abcc8  08 31 84 e5                                      str r3, [r4, #0x108]
007abccc  d2 2f f2 eb                                      bl #0x437c1c
007abcd0  04 00 a0 e1                                      mov r0, r4
007abcd4  81 fd ff eb                                      bl #0x7ab2e0
007abcd8  04 00 a0 e1                                      mov r0, r4
007abcdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
007abce0  ee ff ff aa                                      bge #0x7abca0
007abce4  01 31 a0 e1                                      lsl r3, r1, #2
007abce8  00 c0 a0 e3                                      mov ip, #0
007abcec  00 20 90 e5                                      ldr r2, [r0]
007abcf0  01 10 91 e2                                      adds r1, r1, #1
007abcf4  03 c0 82 e7                                      str ip, [r2, r3]
007abcf8  04 30 83 e2                                      add r3, r3, #4
007abcfc  fa ff ff 1a                                      bne #0x7abcec
007abd00  e6 ff ff ea                                      b #0x7abca0
007abd04  ed ff ff aa                                      bge #0x7abcc0
007abd08  03 21 a0 e1                                      lsl r2, r3, #2
007abd0c  00 10 90 e5                                      ldr r1, [r0]
007abd10  01 30 93 e2                                      adds r3, r3, #1
007abd14  02 50 81 e7                                      str r5, [r1, r2]
007abd18  04 20 82 e2                                      add r2, r2, #4
007abd1c  fa ff ff 1a                                      bne #0x7abd0c
007abd20  e6 ff ff ea                                      b #0x7abcc0
; mapping-symbol data/literal pool
007abd24  18 8e 1e 00 18 27 00 00                          .byte 0x18, 0x8e, 0x1e, 0x00, 0x18, 0x27, 0x00, 0x00

; FUNCTION 0x007abd2c, declared_size=28, range_size=28, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFXD0Ev
; demangled: MenuFX::~MenuFX()
; decoder-mode: arm
007abd2c  10 40 2d e9                                      push {r4, lr}
007abd30  00 40 a0 e1                                      mov r4, r0
007abd34  cb ff ff eb                                      bl #0x7abc68
007abd38  04 00 a0 e1                                      mov r0, r4
007abd3c  5b 89 ed eb                                      bl #0x30e2b0
007abd40  04 00 a0 e1                                      mov r0, r4
007abd44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007abd48, declared_size=196, range_size=196, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFXD2Ev
; demangled: MenuFX::~MenuFX()
; decoder-mode: arm
007abd48  70 40 2d e9                                      push {r4, r5, r6, lr}
007abd4c  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
007abd50  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
007abd54  18 11 90 e5                                      ldr r1, [r0, #0x118]
007abd58  02 20 8f e0                                      add r2, pc, r2
007abd5c  03 30 92 e7                                      ldr r3, [r2, r3]
007abd60  00 40 a0 e1                                      mov r4, r0
007abd64  00 00 51 e3                                      cmp r1, #0
007abd68  44 20 83 e2                                      add r2, r3, #0x44
007abd6c  08 30 83 e2                                      add r3, r3, #8
007abd70  45 0f 80 e2                                      add r0, r0, #0x114
007abd74  00 30 84 e5                                      str r3, [r4]
007abd78  00 21 84 e5                                      str r2, [r4, #0x100]
007abd7c  0f 00 00 da                                      ble #0x7abdc0
007abd80  00 50 a0 e3                                      mov r5, #0
007abd84  18 51 84 e5                                      str r5, [r4, #0x118]
007abd88  05 10 a0 e1                                      mov r1, r5
007abd8c  a2 2f f2 eb                                      bl #0x437c1c
007abd90  08 31 94 e5                                      ldr r3, [r4, #0x108]
007abd94  41 0f 84 e2                                      add r0, r4, #0x104
007abd98  05 00 53 e1                                      cmp r3, r5
007abd9c  10 00 00 da                                      ble #0x7abde4
007abda0  00 30 a0 e3                                      mov r3, #0
007abda4  03 10 a0 e1                                      mov r1, r3
007abda8  08 31 84 e5                                      str r3, [r4, #0x108]
007abdac  9a 2f f2 eb                                      bl #0x437c1c
007abdb0  04 00 a0 e1                                      mov r0, r4
007abdb4  49 fd ff eb                                      bl #0x7ab2e0
007abdb8  04 00 a0 e1                                      mov r0, r4
007abdbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
007abdc0  ee ff ff aa                                      bge #0x7abd80
007abdc4  01 31 a0 e1                                      lsl r3, r1, #2
007abdc8  00 c0 a0 e3                                      mov ip, #0
007abdcc  00 20 90 e5                                      ldr r2, [r0]
007abdd0  01 10 91 e2                                      adds r1, r1, #1
007abdd4  03 c0 82 e7                                      str ip, [r2, r3]
007abdd8  04 30 83 e2                                      add r3, r3, #4
007abddc  fa ff ff 1a                                      bne #0x7abdcc
007abde0  e6 ff ff ea                                      b #0x7abd80
007abde4  ed ff ff aa                                      bge #0x7abda0
007abde8  03 21 a0 e1                                      lsl r2, r3, #2
007abdec  00 10 90 e5                                      ldr r1, [r0]
007abdf0  01 30 93 e2                                      adds r3, r3, #1
007abdf4  02 50 81 e7                                      str r5, [r1, r2]
007abdf8  04 20 82 e2                                      add r2, r2, #4
007abdfc  fa ff ff 1a                                      bne #0x7abdec
007abe00  e6 ff ff ea                                      b #0x7abda0
; mapping-symbol data/literal pool
007abe04  38 8d 1e 00 18 27 00 00                          .byte 0x38, 0x8d, 0x1e, 0x00, 0x18, 0x27, 0x00, 0x00

; FUNCTION 0x007ac444, declared_size=84, range_size=84, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX15SetFocusDefaultEv
; demangled: MenuFX::SetFocusDefault()
; decoder-mode: arm
007ac444  10 40 2d e9                                      push {r4, lr}
007ac448  44 20 9f e5                                      ldr r2, [pc, #0x44]
007ac44c  03 30 a0 e3                                      mov r3, #3
007ac450  40 10 90 e5                                      ldr r1, [r0, #0x40]
007ac454  02 20 8f e0                                      add r2, pc, r2
007ac458  00 40 a0 e1                                      mov r4, r0
007ac45c  e9 f1 ff eb                                      bl #0x7a8c08
007ac460  04 30 90 e5                                      ldr r3, [r0, #4]
007ac464  00 00 53 e3                                      cmp r3, #0
007ac468  05 00 00 da                                      ble #0x7ac484
007ac46c  00 30 90 e5                                      ldr r3, [r0]
007ac470  00 20 a0 e3                                      mov r2, #0
007ac474  04 00 a0 e1                                      mov r0, r4
007ac478  00 10 93 e5                                      ldr r1, [r3]
007ac47c  10 40 bd e8                                      pop {r4, lr}
007ac480  68 ff ff ea                                      b #0x7ac228
007ac484  04 00 a0 e1                                      mov r0, r4
007ac488  00 10 a0 e3                                      mov r1, #0
007ac48c  10 40 bd e8                                      pop {r4, lr}
007ac490  de ff ff ea                                      b #0x7ac410
; mapping-symbol data/literal pool
007ac494  2c cc 11 00                                      .byte 0x2c, 0xcc, 0x11, 0x00

; FUNCTION 0x007ad88c, declared_size=648, range_size=648, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX6UpdateEib
; demangled: MenuFX::Update(int, bool)
; decoder-mode: arm
007ad88c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007ad890  00 40 a0 e1                                      mov r4, r0
007ad894  01 50 a0 e1                                      mov r5, r1
007ad898  7b ff ff eb                                      bl #0x7ad68c
007ad89c  18 81 94 e5                                      ldr r8, [r4, #0x118]
007ad8a0  00 00 58 e3                                      cmp r8, #0
007ad8a4  08 00 00 da                                      ble #0x7ad8cc
007ad8a8  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ad8ac  01 80 48 e2                                      sub r8, r8, #1
007ad8b0  05 10 a0 e1                                      mov r1, r5
007ad8b4  08 31 93 e7                                      ldr r3, [r3, r8, lsl #2]
007ad8b8  03 00 a0 e1                                      mov r0, r3
007ad8bc  00 30 93 e5                                      ldr r3, [r3]
007ad8c0  0f e0 a0 e1                                      mov lr, pc
007ad8c4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007ad8c8  18 81 94 e5                                      ldr r8, [r4, #0x118]
007ad8cc  02 70 58 e2                                      subs r7, r8, #2
007ad8d0  2a 00 00 4a                                      bmi #0x7ad980
007ad8d4  07 71 a0 e1                                      lsl r7, r7, #2
007ad8d8  00 a0 a0 e3                                      mov sl, #0
007ad8dc  05 00 00 ea                                      b #0x7ad8f8
007ad8e0  9b 30 d2 e5                                      ldrb r3, [r2, #0x9b]
007ad8e4  00 00 53 e3                                      cmp r3, #0
007ad8e8  1a 00 00 1a                                      bne #0x7ad958
007ad8ec  01 00 58 e3                                      cmp r8, #1
007ad8f0  04 70 47 e2                                      sub r7, r7, #4
007ad8f4  21 00 00 0a                                      beq #0x7ad980
007ad8f8  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ad8fc  01 80 48 e2                                      sub r8, r8, #1
007ad900  07 60 93 e7                                      ldr r6, [r3, r7]
007ad904  4c 20 96 e5                                      ldr r2, [r6, #0x4c]
007ad908  00 00 52 e3                                      cmp r2, #0
007ad90c  f3 ff ff 0a                                      beq #0x7ad8e0
007ad910  48 30 96 e5                                      ldr r3, [r6, #0x48]
007ad914  04 10 d3 e5                                      ldrb r1, [r3, #4]
007ad918  00 00 51 e3                                      cmp r1, #0
007ad91c  ef ff ff 1a                                      bne #0x7ad8e0
007ad920  00 20 93 e5                                      ldr r2, [r3]
007ad924  03 00 a0 e1                                      mov r0, r3
007ad928  01 20 42 e2                                      sub r2, r2, #1
007ad92c  00 00 52 e3                                      cmp r2, #0
007ad930  02 10 a0 e1                                      mov r1, r2
007ad934  00 20 83 e5                                      str r2, [r3]
007ad938  00 00 00 1a                                      bne #0x7ad940
007ad93c  7d 94 fe eb                                      bl #0x752b38
007ad940  4c a0 86 e5                                      str sl, [r6, #0x4c]
007ad944  48 a0 86 e5                                      str sl, [r6, #0x48]
007ad948  0a 20 a0 e1                                      mov r2, sl
007ad94c  9b 30 d2 e5                                      ldrb r3, [r2, #0x9b]
007ad950  00 00 53 e3                                      cmp r3, #0
007ad954  e4 ff ff 0a                                      beq #0x7ad8ec
007ad958  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ad95c  05 10 a0 e1                                      mov r1, r5
007ad960  07 30 93 e7                                      ldr r3, [r3, r7]
007ad964  04 70 47 e2                                      sub r7, r7, #4
007ad968  03 00 a0 e1                                      mov r0, r3
007ad96c  00 30 93 e5                                      ldr r3, [r3]
007ad970  0f e0 a0 e1                                      mov lr, pc
007ad974  28 f0 93 e5                                      ldr pc, [r3, #0x28]
007ad978  01 00 58 e3                                      cmp r8, #1
007ad97c  dd ff ff 1a                                      bne #0x7ad8f8
007ad980  08 21 94 e5                                      ldr r2, [r4, #0x108]
007ad984  00 00 52 e3                                      cmp r2, #0
007ad988  1d 00 00 da                                      ble #0x7ada04
007ad98c  00 50 a0 e3                                      mov r5, #0
007ad990  05 80 a0 e1                                      mov r8, r5
007ad994  02 00 00 ea                                      b #0x7ad9a4
007ad998  01 50 85 e2                                      add r5, r5, #1
007ad99c  02 00 55 e1                                      cmp r5, r2
007ad9a0  16 00 00 aa                                      bge #0x7ada00
007ad9a4  04 31 94 e5                                      ldr r3, [r4, #0x104]
007ad9a8  05 71 a0 e1                                      lsl r7, r5, #2
007ad9ac  05 61 93 e7                                      ldr r6, [r3, r5, lsl #2]
007ad9b0  58 30 96 e5                                      ldr r3, [r6, #0x58]
007ad9b4  02 00 53 e3                                      cmp r3, #2
007ad9b8  f6 ff ff 1a                                      bne #0x7ad998
007ad9bc  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
007ad9c0  00 00 53 e3                                      cmp r3, #0
007ad9c4  03 00 00 0a                                      beq #0x7ad9d8
007ad9c8  48 00 96 e5                                      ldr r0, [r6, #0x48]
007ad9cc  04 20 d0 e5                                      ldrb r2, [r0, #4]
007ad9d0  00 00 52 e3                                      cmp r2, #0
007ad9d4  0b 00 00 0a                                      beq #0x7ada08
007ad9d8  03 00 a0 e1                                      mov r0, r3
007ad9dc  00 30 93 e5                                      ldr r3, [r3]
007ad9e0  0f e0 a0 e1                                      mov lr, pc
007ad9e4  98 f0 93 e5                                      ldr pc, [r3, #0x98]
007ad9e8  01 00 50 e3                                      cmp r0, #1
007ad9ec  14 00 00 0a                                      beq #0x7ada44
007ad9f0  08 21 94 e5                                      ldr r2, [r4, #0x108]
007ad9f4  01 50 85 e2                                      add r5, r5, #1
007ad9f8  02 00 55 e1                                      cmp r5, r2
007ad9fc  e8 ff ff ba                                      blt #0x7ad9a4
007ada00  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007ada04  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007ada08  00 10 90 e5                                      ldr r1, [r0]
007ada0c  01 10 41 e2                                      sub r1, r1, #1
007ada10  00 00 51 e3                                      cmp r1, #0
007ada14  00 10 80 e5                                      str r1, [r0]
007ada18  00 00 00 1a                                      bne #0x7ada20
007ada1c  45 94 fe eb                                      bl #0x752b38
007ada20  4c 80 86 e5                                      str r8, [r6, #0x4c]
007ada24  48 80 86 e5                                      str r8, [r6, #0x48]
007ada28  08 30 a0 e1                                      mov r3, r8
007ada2c  03 00 a0 e1                                      mov r0, r3
007ada30  00 30 93 e5                                      ldr r3, [r3]
007ada34  0f e0 a0 e1                                      mov lr, pc
007ada38  98 f0 93 e5                                      ldr pc, [r3, #0x98]
007ada3c  01 00 50 e3                                      cmp r0, #1
007ada40  ea ff ff 1a                                      bne #0x7ad9f0
007ada44  04 31 94 e5                                      ldr r3, [r4, #0x104]
007ada48  07 60 93 e7                                      ldr r6, [r3, r7]
007ada4c  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
007ada50  00 00 53 e3                                      cmp r3, #0
007ada54  08 00 00 0a                                      beq #0x7ada7c
007ada58  48 20 96 e5                                      ldr r2, [r6, #0x48]
007ada5c  04 a0 d2 e5                                      ldrb sl, [r2, #4]
007ada60  00 00 5a e3                                      cmp sl, #0
007ada64  04 00 00 1a                                      bne #0x7ada7c
007ada68  48 00 86 e2                                      add r0, r6, #0x48
007ada6c  0a 10 a0 e1                                      mov r1, sl
007ada70  03 c9 f1 eb                                      bl #0x41fe84
007ada74  4c a0 86 e5                                      str sl, [r6, #0x4c]
007ada78  0a 30 a0 e1                                      mov r3, sl
007ada7c  9b 30 d3 e5                                      ldrb r3, [r3, #0x9b]
007ada80  00 00 53 e3                                      cmp r3, #0
007ada84  d9 ff ff 0a                                      beq #0x7ad9f0
007ada88  74 30 94 e5                                      ldr r3, [r4, #0x74]
007ada8c  00 00 53 e3                                      cmp r3, #0
007ada90  d6 ff ff 1a                                      bne #0x7ad9f0
007ada94  9c 30 94 e5                                      ldr r3, [r4, #0x9c]
007ada98  00 00 53 e3                                      cmp r3, #0
007ada9c  d3 ff ff 1a                                      bne #0x7ad9f0
007adaa0  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
007adaa4  00 00 53 e3                                      cmp r3, #0
007adaa8  d0 ff ff 1a                                      bne #0x7ad9f0
007adaac  ec 30 94 e5                                      ldr r3, [r4, #0xec]
007adab0  00 00 53 e3                                      cmp r3, #0
007adab4  cd ff ff 1a                                      bne #0x7ad9f0
007adab8  04 31 94 e5                                      ldr r3, [r4, #0x104]
007adabc  07 60 93 e7                                      ldr r6, [r3, r7]
007adac0  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
007adac4  00 00 53 e3                                      cmp r3, #0
007adac8  03 00 00 0a                                      beq #0x7adadc
007adacc  48 00 96 e5                                      ldr r0, [r6, #0x48]
007adad0  04 20 d0 e5                                      ldrb r2, [r0, #4]
007adad4  00 00 52 e3                                      cmp r2, #0
007adad8  02 00 00 0a                                      beq #0x7adae8
007adadc  9b 80 c3 e5                                      strb r8, [r3, #0x9b]
007adae0  08 21 94 e5                                      ldr r2, [r4, #0x108]
007adae4  c2 ff ff ea                                      b #0x7ad9f4
007adae8  00 10 90 e5                                      ldr r1, [r0]
007adaec  01 10 41 e2                                      sub r1, r1, #1
007adaf0  00 00 51 e3                                      cmp r1, #0
007adaf4  00 10 80 e5                                      str r1, [r0]
007adaf8  00 00 00 1a                                      bne #0x7adb00
007adafc  0d 94 fe eb                                      bl #0x752b38
007adb00  08 30 a0 e1                                      mov r3, r8
007adb04  4c 80 86 e5                                      str r8, [r6, #0x4c]
007adb08  48 80 86 e5                                      str r8, [r6, #0x48]
007adb0c  9b 80 c3 e5                                      strb r8, [r3, #0x9b]
007adb10  f2 ff ff ea                                      b #0x7adae0

; FUNCTION 0x007addb0, declared_size=296, range_size=296, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX15GetStateHandlerEPN7gameswf9characterE
; demangled: MenuFX::GetStateHandler(gameswf::character*)
; decoder-mode: arm
007addb0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007addb4  18 b1 90 e5                                      ldr fp, [r0, #0x118]
007addb8  04 d0 4d e2                                      sub sp, sp, #4
007addbc  00 80 a0 e1                                      mov r8, r0
007addc0  01 70 5b e2                                      subs r7, fp, #1
007addc4  00 a0 a0 53                                      movpl sl, #0
007addc8  01 90 a0 e1                                      mov sb, r1
007addcc  07 71 a0 51                                      lslpl r7, r7, #2
007addd0  0a 60 a0 51                                      movpl r6, sl
007addd4  3b 00 00 4a                                      bmi #0x7adec8
007addd8  00 00 59 e3                                      cmp sb, #0
007adddc  09 40 a0 11                                      movne r4, sb
007adde0  34 00 00 0a                                      beq #0x7adeb8
007adde4  14 31 98 e5                                      ldr r3, [r8, #0x114]
007adde8  07 50 93 e7                                      ldr r5, [r3, r7]
007addec  4c 20 95 e5                                      ldr r2, [r5, #0x4c]
007addf0  00 00 52 e3                                      cmp r2, #0
007addf4  03 00 00 0a                                      beq #0x7ade08
007addf8  48 30 95 e5                                      ldr r3, [r5, #0x48]
007addfc  04 10 d3 e5                                      ldrb r1, [r3, #4]
007ade00  00 00 51 e3                                      cmp r1, #0
007ade04  12 00 00 0a                                      beq #0x7ade54
007ade08  04 00 52 e1                                      cmp r2, r4
007ade0c  1d 00 00 0a                                      beq #0x7ade88
007ade10  40 30 94 e5                                      ldr r3, [r4, #0x40]
007ade14  00 00 53 e3                                      cmp r3, #0
007ade18  26 00 00 0a                                      beq #0x7adeb8
007ade1c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
007ade20  04 20 d0 e5                                      ldrb r2, [r0, #4]
007ade24  00 00 52 e3                                      cmp r2, #0
007ade28  1a 00 00 0a                                      beq #0x7ade98
007ade2c  03 40 a0 e1                                      mov r4, r3
007ade30  14 31 98 e5                                      ldr r3, [r8, #0x114]
007ade34  07 50 93 e7                                      ldr r5, [r3, r7]
007ade38  4c 20 95 e5                                      ldr r2, [r5, #0x4c]
007ade3c  00 00 52 e3                                      cmp r2, #0
007ade40  f0 ff ff 0a                                      beq #0x7ade08
007ade44  48 30 95 e5                                      ldr r3, [r5, #0x48]
007ade48  04 10 d3 e5                                      ldrb r1, [r3, #4]
007ade4c  00 00 51 e3                                      cmp r1, #0
007ade50  ec ff ff 1a                                      bne #0x7ade08
007ade54  00 20 93 e5                                      ldr r2, [r3]
007ade58  03 00 a0 e1                                      mov r0, r3
007ade5c  01 20 42 e2                                      sub r2, r2, #1
007ade60  00 00 52 e3                                      cmp r2, #0
007ade64  02 10 a0 e1                                      mov r1, r2
007ade68  00 20 83 e5                                      str r2, [r3]
007ade6c  00 00 00 1a                                      bne #0x7ade74
007ade70  30 93 fe eb                                      bl #0x752b38
007ade74  06 20 a0 e1                                      mov r2, r6
007ade78  04 00 52 e1                                      cmp r2, r4
007ade7c  4c 60 85 e5                                      str r6, [r5, #0x4c]
007ade80  48 60 85 e5                                      str r6, [r5, #0x48]
007ade84  e1 ff ff 1a                                      bne #0x7ade10
007ade88  14 31 98 e5                                      ldr r3, [r8, #0x114]
007ade8c  07 00 93 e7                                      ldr r0, [r3, r7]
007ade90  04 d0 8d e2                                      add sp, sp, #4
007ade94  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ade98  00 10 90 e5                                      ldr r1, [r0]
007ade9c  01 10 41 e2                                      sub r1, r1, #1
007adea0  00 00 51 e3                                      cmp r1, #0
007adea4  00 10 80 e5                                      str r1, [r0]
007adea8  00 00 00 1a                                      bne #0x7adeb0
007adeac  21 93 fe eb                                      bl #0x752b38
007adeb0  40 60 84 e5                                      str r6, [r4, #0x40]
007adeb4  3c 60 84 e5                                      str r6, [r4, #0x3c]
007adeb8  01 a0 8a e2                                      add sl, sl, #1
007adebc  0b 00 5a e1                                      cmp sl, fp
007adec0  04 70 47 e2                                      sub r7, r7, #4
007adec4  c3 ff ff 1a                                      bne #0x7addd8
007adec8  08 00 a0 e1                                      mov r0, r8
007adecc  04 d0 8d e2                                      add sp, sp, #4
007aded0  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007aded4  15 e8 ff ea                                      b #0x7a7f30

; FUNCTION 0x007aded8, declared_size=8, range_size=8, mode=arm
; class-group: MenuFX
; alias: _ZThn256_N6MenuFX14CanHandleEventERN8RenderFX5EventE
; demangled: non-virtual thunk to MenuFX::CanHandleEvent(RenderFX::Event&)
; decoder-mode: arm
007aded8  01 0c 40 e2                                      sub r0, r0, #0x100
007adedc  ff ff ff ea                                      b #0x7adee0

; FUNCTION 0x007adee0, declared_size=56, range_size=56, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX14CanHandleEventERN8RenderFX5EventE
; demangled: MenuFX::CanHandleEvent(RenderFX::Event&)
; decoder-mode: arm
007adee0  10 40 2d e9                                      push {r4, lr}
007adee4  18 31 90 e5                                      ldr r3, [r0, #0x118]
007adee8  01 40 a0 e1                                      mov r4, r1
007adeec  00 00 53 e3                                      cmp r3, #0
007adef0  06 00 00 da                                      ble #0x7adf10
007adef4  00 10 91 e5                                      ldr r1, [r1]
007adef8  ac ff ff eb                                      bl #0x7addb0
007adefc  04 10 a0 e1                                      mov r1, r4
007adf00  00 30 90 e5                                      ldr r3, [r0]
007adf04  0f e0 a0 e1                                      mov lr, pc
007adf08  34 f0 93 e5                                      ldr pc, [r3, #0x34]
007adf0c  10 80 bd e8                                      pop {r4, pc}
007adf10  01 00 a0 e3                                      mov r0, #1
007adf14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007adf18, declared_size=8, range_size=8, mode=arm
; class-group: MenuFX
; alias: _ZThn256_N6MenuFX7OnEventERN8RenderFX5EventE
; demangled: non-virtual thunk to MenuFX::OnEvent(RenderFX::Event&)
; decoder-mode: arm
007adf18  01 0c 40 e2                                      sub r0, r0, #0x100
007adf1c  ff ff ff ea                                      b #0x7adf20

; FUNCTION 0x007adf20, declared_size=48, range_size=48, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX7OnEventERN8RenderFX5EventE
; demangled: MenuFX::OnEvent(RenderFX::Event&)
; decoder-mode: arm
007adf20  10 40 2d e9                                      push {r4, lr}
007adf24  18 31 90 e5                                      ldr r3, [r0, #0x118]
007adf28  01 40 a0 e1                                      mov r4, r1
007adf2c  00 00 53 e3                                      cmp r3, #0
007adf30  05 00 00 da                                      ble #0x7adf4c
007adf34  00 10 91 e5                                      ldr r1, [r1]
007adf38  9c ff ff eb                                      bl #0x7addb0
007adf3c  04 10 a0 e1                                      mov r1, r4
007adf40  00 30 90 e5                                      ldr r3, [r0]
007adf44  0f e0 a0 e1                                      mov lr, pc
007adf48  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
007adf4c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007adf50, declared_size=160, range_size=160, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX13RegisterStateEPNS_5StateEPKc
; demangled: MenuFX::RegisterState(MenuFX::State*, char const*)
; decoder-mode: arm
007adf50  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007adf54  01 50 a0 e1                                      mov r5, r1
007adf58  04 00 85 e5                                      str r0, [r5, #4]
007adf5c  08 61 90 e5                                      ldr r6, [r0, #0x108]
007adf60  0c d0 4d e2                                      sub sp, sp, #0xc
007adf64  00 40 a0 e1                                      mov r4, r0
007adf68  01 70 96 e2                                      adds r7, r6, #1
007adf6c  02 00 00 0a                                      beq #0x7adf7c
007adf70  0c 31 90 e5                                      ldr r3, [r0, #0x10c]
007adf74  03 00 57 e1                                      cmp r7, r3
007adf78  16 00 00 ca                                      bgt #0x7adfd8
007adf7c  04 31 94 e5                                      ldr r3, [r4, #0x104]
007adf80  00 10 a0 e3                                      mov r1, #0
007adf84  00 00 52 e3                                      cmp r2, #0
007adf88  06 11 83 e7                                      str r1, [r3, r6, lsl #2]
007adf8c  04 31 94 e5                                      ldr r3, [r4, #0x104]
007adf90  08 20 85 02                                      addeq r2, r5, #8
007adf94  08 71 84 e5                                      str r7, [r4, #0x108]
007adf98  02 10 a0 e1                                      mov r1, r2
007adf9c  06 51 83 e7                                      str r5, [r3, r6, lsl #2]
007adfa0  04 00 a0 e1                                      mov r0, r4
007adfa4  6d ec ff eb                                      bl #0x7a9160
007adfa8  00 40 a0 e1                                      mov r4, r0
007adfac  00 10 a0 e1                                      mov r1, r0
007adfb0  48 00 85 e2                                      add r0, r5, #0x48
007adfb4  fb e6 f1 eb                                      bl #0x427ba8
007adfb8  00 30 a0 e3                                      mov r3, #0
007adfbc  9b 30 c4 e5                                      strb r3, [r4, #0x9b]
007adfc0  05 00 a0 e1                                      mov r0, r5
007adfc4  00 30 95 e5                                      ldr r3, [r5]
007adfc8  0f e0 a0 e1                                      mov lr, pc
007adfcc  08 f0 93 e5                                      ldr pc, [r3, #8]
007adfd0  0c d0 8d e2                                      add sp, sp, #0xc
007adfd4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007adfd8  41 0f 80 e2                                      add r0, r0, #0x104
007adfdc  c7 10 87 e0                                      add r1, r7, r7, asr #1
007adfe0  04 20 8d e5                                      str r2, [sp, #4]
007adfe4  0c 27 f2 eb                                      bl #0x437c1c
007adfe8  04 20 9d e5                                      ldr r2, [sp, #4]
007adfec  e2 ff ff ea                                      b #0x7adf7c

; FUNCTION 0x007adff0, declared_size=472, range_size=472, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX14RegisterStatesEPPNS_5StateEi
; demangled: MenuFX::RegisterStates(MenuFX::State**, int)
; decoder-mode: arm
007adff0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007adff4  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
007adff8  bc c1 9f e5                                      ldr ip, [pc, #0x1bc]
007adffc  9c d0 4d e2                                      sub sp, sp, #0x9c
007ae000  03 30 8f e0                                      add r3, pc, r3
007ae004  04 30 8d e5                                      str r3, [sp, #4]
007ae008  0c 30 93 e7                                      ldr r3, [r3, ip]
007ae00c  00 80 52 e2                                      subs r8, r2, #0
007ae010  08 c0 8d e5                                      str ip, [sp, #8]
007ae014  00 30 93 e5                                      ldr r3, [r3]
007ae018  00 40 a0 e1                                      mov r4, r0
007ae01c  01 60 a0 e1                                      mov r6, r1
007ae020  94 30 8d e5                                      str r3, [sp, #0x94]
007ae024  1b 00 00 da                                      ble #0x7ae098
007ae028  00 a0 a0 e3                                      mov sl, #0
007ae02c  41 1f 80 e2                                      add r1, r0, #0x104
007ae030  00 10 8d e5                                      str r1, [sp]
007ae034  0a 90 a0 e1                                      mov sb, sl
007ae038  0a 50 a0 e1                                      mov r5, sl
007ae03c  09 00 00 ea                                      b #0x7ae068
007ae040  04 31 94 e5                                      ldr r3, [r4, #0x104]
007ae044  01 90 89 e2                                      add sb, sb, #1
007ae048  08 00 59 e1                                      cmp sb, r8
007ae04c  07 51 83 e7                                      str r5, [r3, r7, lsl #2]
007ae050  08 b1 84 e5                                      str fp, [r4, #0x108]
007ae054  0a 20 96 e7                                      ldr r2, [r6, sl]
007ae058  04 31 94 e5                                      ldr r3, [r4, #0x104]
007ae05c  04 a0 8a e2                                      add sl, sl, #4
007ae060  07 21 83 e7                                      str r2, [r3, r7, lsl #2]
007ae064  2e 00 00 0a                                      beq #0x7ae124
007ae068  0a 30 96 e7                                      ldr r3, [r6, sl]
007ae06c  04 40 83 e5                                      str r4, [r3, #4]
007ae070  08 71 94 e5                                      ldr r7, [r4, #0x108]
007ae074  01 b0 97 e2                                      adds fp, r7, #1
007ae078  f0 ff ff 0a                                      beq #0x7ae040
007ae07c  0c 31 94 e5                                      ldr r3, [r4, #0x10c]
007ae080  03 00 5b e1                                      cmp fp, r3
007ae084  ed ff ff da                                      ble #0x7ae040
007ae088  00 00 9d e5                                      ldr r0, [sp]
007ae08c  cb 10 8b e0                                      add r1, fp, fp, asr #1
007ae090  e1 26 f2 eb                                      bl #0x437c1c
007ae094  e9 ff ff ea                                      b #0x7ae040
007ae098  20 21 9f e5                                      ldr r2, [pc, #0x120]
007ae09c  00 30 a0 e3                                      mov r3, #0
007ae0a0  04 00 a0 e1                                      mov r0, r4
007ae0a4  40 10 94 e5                                      ldr r1, [r4, #0x40]
007ae0a8  02 20 8f e0                                      add r2, pc, r2
007ae0ac  d5 ea ff eb                                      bl #0x7a8c08
007ae0b0  04 30 90 e5                                      ldr r3, [r0, #4]
007ae0b4  00 50 a0 e1                                      mov r5, r0
007ae0b8  00 00 53 e3                                      cmp r3, #0
007ae0bc  10 00 00 da                                      ble #0x7ae104
007ae0c0  00 40 a0 e3                                      mov r4, #0
007ae0c4  01 60 a0 e3                                      mov r6, #1
007ae0c8  00 30 95 e5                                      ldr r3, [r5]
007ae0cc  02 10 a0 e3                                      mov r1, #2
007ae0d0  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
007ae0d4  03 00 a0 e1                                      mov r0, r3
007ae0d8  00 30 93 e5                                      ldr r3, [r3]
007ae0dc  0f e0 a0 e1                                      mov lr, pc
007ae0e0  08 f0 93 e5                                      ldr pc, [r3, #8]
007ae0e4  00 00 50 e3                                      cmp r0, #0
007ae0e8  00 30 95 15                                      ldrne r3, [r5]
007ae0ec  04 31 93 17                                      ldrne r3, [r3, r4, lsl #2]
007ae0f0  01 40 84 e2                                      add r4, r4, #1
007ae0f4  ea 60 c3 15                                      strbne r6, [r3, #0xea]
007ae0f8  04 30 95 e5                                      ldr r3, [r5, #4]
007ae0fc  03 00 54 e1                                      cmp r4, r3
007ae100  f0 ff ff ba                                      blt #0x7ae0c8
007ae104  02 10 9d e9                                      ldmib sp, {r1, ip}
007ae108  94 20 9d e5                                      ldr r2, [sp, #0x94]
007ae10c  0c 30 91 e7                                      ldr r3, [r1, ip]
007ae110  00 30 93 e5                                      ldr r3, [r3]
007ae114  03 00 52 e1                                      cmp r2, r3
007ae118  25 00 00 1a                                      bne #0x7ae1b4
007ae11c  9c d0 8d e2                                      add sp, sp, #0x9c
007ae120  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ae124  98 30 9f e5                                      ldr r3, [pc, #0x98]
007ae128  14 20 8d e2                                      add r2, sp, #0x14
007ae12c  05 70 a0 e1                                      mov r7, r5
007ae130  03 30 8f e0                                      add r3, pc, r3
007ae134  0c 30 8d e5                                      str r3, [sp, #0xc]
007ae138  00 20 8d e5                                      str r2, [sp]
007ae13c  05 a0 a0 e1                                      mov sl, r5
007ae140  0d 00 00 ea                                      b #0x7ae17c
007ae144  05 00 96 e7                                      ldr r0, [r6, r5]
007ae148  09 10 a0 e1                                      mov r1, sb
007ae14c  48 00 80 e2                                      add r0, r0, #0x48
007ae150  94 e6 f1 eb                                      bl #0x427ba8
007ae154  9b a0 c9 e5                                      strb sl, [sb, #0x9b]
007ae158  05 30 96 e7                                      ldr r3, [r6, r5]
007ae15c  03 00 a0 e1                                      mov r0, r3
007ae160  00 30 93 e5                                      ldr r3, [r3]
007ae164  0f e0 a0 e1                                      mov lr, pc
007ae168  08 f0 93 e5                                      ldr pc, [r3, #8]
007ae16c  01 70 87 e2                                      add r7, r7, #1
007ae170  08 00 57 e1                                      cmp r7, r8
007ae174  04 50 85 e2                                      add r5, r5, #4
007ae178  c6 ff ff 0a                                      beq #0x7ae098
007ae17c  05 b0 96 e7                                      ldr fp, [r6, r5]
007ae180  04 00 a0 e1                                      mov r0, r4
007ae184  08 b0 8b e2                                      add fp, fp, #8
007ae188  0b 10 a0 e1                                      mov r1, fp
007ae18c  f3 eb ff eb                                      bl #0x7a9160
007ae190  00 90 50 e2                                      subs sb, r0, #0
007ae194  ea ff ff 1a                                      bne #0x7ae144
007ae198  0b 20 a0 e1                                      mov r2, fp
007ae19c  00 00 9d e5                                      ldr r0, [sp]
007ae1a0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ae1a4  4e 82 ed eb                                      bl #0x30eae4
007ae1a8  00 00 9d e5                                      ldr r0, [sp]
007ae1ac  9b e8 ff eb                                      bl #0x7a8420
007ae1b0  ed ff ff ea                                      b #0x7ae16c
007ae1b4  55 80 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ae1b8  90 6a 1e 00 ac 40 00 00 d8 af 11 00 98 c8 15 00  .byte 0x90, 0x6a, 0x1e, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd8, 0xaf, 0x11, 0x00, 0x98, 0xc8, 0x15, 0x00

; FUNCTION 0x007ae284, declared_size=1048, range_size=1048, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX7SetMenuEPKcb
; demangled: MenuFX::SetMenu(char const*, bool)
; decoder-mode: arm
007ae284  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007ae288  02 70 a0 e1                                      mov r7, r2
007ae28c  00 50 a0 e1                                      mov r5, r0
007ae290  0b e8 ff eb                                      bl #0x7a82c4
007ae294  00 40 50 e2                                      subs r4, r0, #0
007ae298  52 00 00 0a                                      beq #0x7ae3e8
007ae29c  18 61 95 e5                                      ldr r6, [r5, #0x118]
007ae2a0  00 00 56 e3                                      cmp r6, #0
007ae2a4  20 00 00 da                                      ble #0x7ae32c
007ae2a8  14 31 95 e5                                      ldr r3, [r5, #0x114]
007ae2ac  01 60 46 e2                                      sub r6, r6, #1
007ae2b0  06 61 93 e7                                      ldr r6, [r3, r6, lsl #2]
007ae2b4  00 30 96 e5                                      ldr r3, [r6]
007ae2b8  06 00 a0 e1                                      mov r0, r6
007ae2bc  0f e0 a0 e1                                      mov lr, pc
007ae2c0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007ae2c4  00 00 57 e3                                      cmp r7, #0
007ae2c8  dc 00 00 0a                                      beq #0x7ae640
007ae2cc  f8 a0 95 e5                                      ldr sl, [r5, #0xf8]
007ae2d0  40 a0 1a e2                                      ands sl, sl, #0x40
007ae2d4  0d 00 00 1a                                      bne #0x7ae310
007ae2d8  00 00 57 e3                                      cmp r7, #0
007ae2dc  48 80 86 02                                      addeq r8, r6, #0x48
007ae2e0  c8 00 00 1a                                      bne #0x7ae608
007ae2e4  08 00 a0 e1                                      mov r0, r8
007ae2e8  cd 27 f2 eb                                      bl #0x438224
007ae2ec  9c 23 9f e5                                      ldr r2, [pc, #0x39c]
007ae2f0  00 30 a0 e3                                      mov r3, #0
007ae2f4  00 10 a0 e1                                      mov r1, r0
007ae2f8  02 20 8f e0                                      add r2, pc, r2
007ae2fc  05 00 a0 e1                                      mov r0, r5
007ae300  bf f5 ff eb                                      bl #0x7aba04
007ae304  00 00 50 e3                                      cmp r0, #0
007ae308  02 30 a0 13                                      movne r3, #2
007ae30c  58 30 86 15                                      strne r3, [r6, #0x58]
007ae310  50 00 86 e2                                      add r0, r6, #0x50
007ae314  68 10 95 e5                                      ldr r1, [r5, #0x68]
007ae318  22 e6 f1 eb                                      bl #0x427ba8
007ae31c  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
007ae320  08 00 13 e3                                      tst r3, #8
007ae324  84 00 00 1a                                      bne #0x7ae53c
007ae328  18 61 95 e5                                      ldr r6, [r5, #0x118]
007ae32c  00 00 57 e3                                      cmp r7, #0
007ae330  7d 00 00 0a                                      beq #0x7ae52c
007ae334  01 70 96 e2                                      adds r7, r6, #1
007ae338  2b 00 00 1a                                      bne #0x7ae3ec
007ae33c  14 31 95 e5                                      ldr r3, [r5, #0x114]
007ae340  00 20 a0 e3                                      mov r2, #0
007ae344  06 21 83 e7                                      str r2, [r3, r6, lsl #2]
007ae348  14 31 95 e5                                      ldr r3, [r5, #0x114]
007ae34c  18 71 85 e5                                      str r7, [r5, #0x118]
007ae350  06 41 83 e7                                      str r4, [r3, r6, lsl #2]
007ae354  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
007ae358  02 00 53 e1                                      cmp r3, r2
007ae35c  03 00 00 0a                                      beq #0x7ae370
007ae360  48 00 94 e5                                      ldr r0, [r4, #0x48]
007ae364  04 20 d0 e5                                      ldrb r2, [r0, #4]
007ae368  00 00 52 e3                                      cmp r2, #0
007ae36c  47 00 00 0a                                      beq #0x7ae490
007ae370  01 20 a0 e3                                      mov r2, #1
007ae374  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
007ae378  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
007ae37c  08 00 13 e3                                      tst r3, #8
007ae380  50 00 00 1a                                      bne #0x7ae4c8
007ae384  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007ae388  00 00 51 e3                                      cmp r1, #0
007ae38c  03 00 00 0a                                      beq #0x7ae3a0
007ae390  48 00 94 e5                                      ldr r0, [r4, #0x48]
007ae394  04 30 d0 e5                                      ldrb r3, [r0, #4]
007ae398  00 00 53 e3                                      cmp r3, #0
007ae39c  19 00 00 0a                                      beq #0x7ae408
007ae3a0  05 00 a0 e1                                      mov r0, r5
007ae3a4  cf e6 ff eb                                      bl #0x7a7ee8
007ae3a8  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
007ae3ac  40 00 13 e3                                      tst r3, #0x40
007ae3b0  22 00 00 0a                                      beq #0x7ae440
007ae3b4  01 00 13 e3                                      tst r3, #1
007ae3b8  2f 00 00 1a                                      bne #0x7ae47c
007ae3bc  04 00 a0 e1                                      mov r0, r4
007ae3c0  00 30 94 e5                                      ldr r3, [r4]
007ae3c4  0f e0 a0 e1                                      mov lr, pc
007ae3c8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007ae3cc  00 30 94 e5                                      ldr r3, [r4]
007ae3d0  04 00 a0 e1                                      mov r0, r4
007ae3d4  0f e0 a0 e1                                      mov lr, pc
007ae3d8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007ae3dc  01 30 a0 e3                                      mov r3, #1
007ae3e0  58 30 84 e5                                      str r3, [r4, #0x58]
007ae3e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007ae3e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007ae3ec  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
007ae3f0  03 00 57 e1                                      cmp r7, r3
007ae3f4  d0 ff ff da                                      ble #0x7ae33c
007ae3f8  45 0f 85 e2                                      add r0, r5, #0x114
007ae3fc  c7 10 87 e0                                      add r1, r7, r7, asr #1
007ae400  05 26 f2 eb                                      bl #0x437c1c
007ae404  cc ff ff ea                                      b #0x7ae33c
007ae408  00 10 90 e5                                      ldr r1, [r0]
007ae40c  01 10 41 e2                                      sub r1, r1, #1
007ae410  00 00 51 e3                                      cmp r1, #0
007ae414  00 10 80 e5                                      str r1, [r0]
007ae418  00 00 00 1a                                      bne #0x7ae420
007ae41c  c5 91 fe eb                                      bl #0x752b38
007ae420  00 10 a0 e3                                      mov r1, #0
007ae424  48 10 84 e5                                      str r1, [r4, #0x48]
007ae428  4c 10 84 e5                                      str r1, [r4, #0x4c]
007ae42c  05 00 a0 e1                                      mov r0, r5
007ae430  ac e6 ff eb                                      bl #0x7a7ee8
007ae434  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
007ae438  40 00 13 e3                                      tst r3, #0x40
007ae43c  dc ff ff 1a                                      bne #0x7ae3b4
007ae440  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007ae444  00 00 51 e3                                      cmp r1, #0
007ae448  03 00 00 0a                                      beq #0x7ae45c
007ae44c  48 30 94 e5                                      ldr r3, [r4, #0x48]
007ae450  04 60 d3 e5                                      ldrb r6, [r3, #4]
007ae454  00 00 56 e3                                      cmp r6, #0
007ae458  64 00 00 0a                                      beq #0x7ae5f0
007ae45c  30 22 9f e5                                      ldr r2, [pc, #0x230]
007ae460  00 30 a0 e3                                      mov r3, #0
007ae464  05 00 a0 e1                                      mov r0, r5
007ae468  02 20 8f e0                                      add r2, pc, r2
007ae46c  64 f5 ff eb                                      bl #0x7aba04
007ae470  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
007ae474  01 00 13 e3                                      tst r3, #1
007ae478  cf ff ff 0a                                      beq #0x7ae3bc
007ae47c  05 00 a0 e1                                      mov r0, r5
007ae480  00 30 95 e5                                      ldr r3, [r5]
007ae484  0f e0 a0 e1                                      mov lr, pc
007ae488  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007ae48c  ca ff ff ea                                      b #0x7ae3bc
007ae490  00 10 90 e5                                      ldr r1, [r0]
007ae494  01 10 41 e2                                      sub r1, r1, #1
007ae498  00 00 51 e3                                      cmp r1, #0
007ae49c  00 10 80 e5                                      str r1, [r0]
007ae4a0  00 00 00 1a                                      bne #0x7ae4a8
007ae4a4  a3 91 fe eb                                      bl #0x752b38
007ae4a8  00 30 a0 e3                                      mov r3, #0
007ae4ac  01 20 a0 e3                                      mov r2, #1
007ae4b0  48 30 84 e5                                      str r3, [r4, #0x48]
007ae4b4  4c 30 84 e5                                      str r3, [r4, #0x4c]
007ae4b8  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
007ae4bc  f8 30 95 e5                                      ldr r3, [r5, #0xf8]
007ae4c0  08 00 13 e3                                      tst r3, #8
007ae4c4  ae ff ff 0a                                      beq #0x7ae384
007ae4c8  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
007ae4cc  00 00 53 e3                                      cmp r3, #0
007ae4d0  03 00 00 0a                                      beq #0x7ae4e4
007ae4d4  48 20 94 e5                                      ldr r2, [r4, #0x48]
007ae4d8  04 60 d2 e5                                      ldrb r6, [r2, #4]
007ae4dc  00 00 56 e3                                      cmp r6, #0
007ae4e0  3c 00 00 0a                                      beq #0x7ae5d8
007ae4e4  03 00 a0 e1                                      mov r0, r3
007ae4e8  02 10 a0 e3                                      mov r1, #2
007ae4ec  00 30 93 e5                                      ldr r3, [r3]
007ae4f0  0f e0 a0 e1                                      mov lr, pc
007ae4f4  08 f0 93 e5                                      ldr pc, [r3, #8]
007ae4f8  00 00 50 e3                                      cmp r0, #0
007ae4fc  a0 ff ff 0a                                      beq #0x7ae384
007ae500  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
007ae504  00 00 52 e3                                      cmp r2, #0
007ae508  03 00 00 0a                                      beq #0x7ae51c
007ae50c  48 30 94 e5                                      ldr r3, [r4, #0x48]
007ae510  04 60 d3 e5                                      ldrb r6, [r3, #4]
007ae514  00 00 56 e3                                      cmp r6, #0
007ae518  29 00 00 0a                                      beq #0x7ae5c4
007ae51c  02 60 a0 e1                                      mov r6, r2
007ae520  01 30 a0 e3                                      mov r3, #1
007ae524  ea 30 c6 e5                                      strb r3, [r6, #0xea]
007ae528  95 ff ff ea                                      b #0x7ae384
007ae52c  01 60 56 e2                                      subs r6, r6, #1
007ae530  1b 00 00 1a                                      bne #0x7ae5a4
007ae534  18 61 85 e5                                      str r6, [r5, #0x118]
007ae538  7d ff ff ea                                      b #0x7ae334
007ae53c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
007ae540  00 00 53 e3                                      cmp r3, #0
007ae544  03 00 00 0a                                      beq #0x7ae558
007ae548  48 00 94 e5                                      ldr r0, [r4, #0x48]
007ae54c  04 20 d0 e5                                      ldrb r2, [r0, #4]
007ae550  00 00 52 e3                                      cmp r2, #0
007ae554  43 00 00 0a                                      beq #0x7ae668
007ae558  03 00 a0 e1                                      mov r0, r3
007ae55c  02 10 a0 e3                                      mov r1, #2
007ae560  00 30 93 e5                                      ldr r3, [r3]
007ae564  0f e0 a0 e1                                      mov lr, pc
007ae568  08 f0 93 e5                                      ldr pc, [r3, #8]
007ae56c  00 00 50 e3                                      cmp r0, #0
007ae570  6c ff ff 0a                                      beq #0x7ae328
007ae574  4c 20 96 e5                                      ldr r2, [r6, #0x4c]
007ae578  00 00 52 e3                                      cmp r2, #0
007ae57c  03 00 00 0a                                      beq #0x7ae590
007ae580  48 30 96 e5                                      ldr r3, [r6, #0x48]
007ae584  04 80 d3 e5                                      ldrb r8, [r3, #4]
007ae588  00 00 58 e3                                      cmp r8, #0
007ae58c  30 00 00 0a                                      beq #0x7ae654
007ae590  02 80 a0 e1                                      mov r8, r2
007ae594  00 30 a0 e3                                      mov r3, #0
007ae598  ea 30 c8 e5                                      strb r3, [r8, #0xea]
007ae59c  18 61 95 e5                                      ldr r6, [r5, #0x118]
007ae5a0  61 ff ff ea                                      b #0x7ae32c
007ae5a4  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
007ae5a8  03 00 56 e1                                      cmp r6, r3
007ae5ac  e0 ff ff da                                      ble #0x7ae534
007ae5b0  45 0f 85 e2                                      add r0, r5, #0x114
007ae5b4  c6 10 86 e0                                      add r1, r6, r6, asr #1
007ae5b8  97 25 f2 eb                                      bl #0x437c1c
007ae5bc  18 61 85 e5                                      str r6, [r5, #0x118]
007ae5c0  5b ff ff ea                                      b #0x7ae334
007ae5c4  48 00 84 e2                                      add r0, r4, #0x48
007ae5c8  06 10 a0 e1                                      mov r1, r6
007ae5cc  2c c6 f1 eb                                      bl #0x41fe84
007ae5d0  4c 60 84 e5                                      str r6, [r4, #0x4c]
007ae5d4  d1 ff ff ea                                      b #0x7ae520
007ae5d8  48 00 84 e2                                      add r0, r4, #0x48
007ae5dc  06 10 a0 e1                                      mov r1, r6
007ae5e0  27 c6 f1 eb                                      bl #0x41fe84
007ae5e4  4c 60 84 e5                                      str r6, [r4, #0x4c]
007ae5e8  06 30 a0 e1                                      mov r3, r6
007ae5ec  bc ff ff ea                                      b #0x7ae4e4
007ae5f0  06 10 a0 e1                                      mov r1, r6
007ae5f4  48 00 84 e2                                      add r0, r4, #0x48
007ae5f8  21 c6 f1 eb                                      bl #0x41fe84
007ae5fc  4c 60 84 e5                                      str r6, [r4, #0x4c]
007ae600  06 10 a0 e1                                      mov r1, r6
007ae604  94 ff ff ea                                      b #0x7ae45c
007ae608  48 80 86 e2                                      add r8, r6, #0x48
007ae60c  08 00 a0 e1                                      mov r0, r8
007ae610  03 27 f2 eb                                      bl #0x438224
007ae614  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
007ae618  0a 30 a0 e1                                      mov r3, sl
007ae61c  00 10 a0 e1                                      mov r1, r0
007ae620  02 20 8f e0                                      add r2, pc, r2
007ae624  05 00 a0 e1                                      mov r0, r5
007ae628  f5 f4 ff eb                                      bl #0x7aba04
007ae62c  00 00 50 e3                                      cmp r0, #0
007ae630  04 30 a0 13                                      movne r3, #4
007ae634  58 30 86 15                                      strne r3, [r6, #0x58]
007ae638  34 ff ff 1a                                      bne #0x7ae310
007ae63c  28 ff ff ea                                      b #0x7ae2e4
007ae640  00 30 96 e5                                      ldr r3, [r6]
007ae644  06 00 a0 e1                                      mov r0, r6
007ae648  0f e0 a0 e1                                      mov lr, pc
007ae64c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007ae650  1d ff ff ea                                      b #0x7ae2cc
007ae654  48 00 86 e2                                      add r0, r6, #0x48
007ae658  08 10 a0 e1                                      mov r1, r8
007ae65c  08 c6 f1 eb                                      bl #0x41fe84
007ae660  4c 80 86 e5                                      str r8, [r6, #0x4c]
007ae664  ca ff ff ea                                      b #0x7ae594
007ae668  00 10 90 e5                                      ldr r1, [r0]
007ae66c  01 10 41 e2                                      sub r1, r1, #1
007ae670  00 00 51 e3                                      cmp r1, #0
007ae674  00 10 80 e5                                      str r1, [r0]
007ae678  00 00 00 1a                                      bne #0x7ae680
007ae67c  2d 91 fe eb                                      bl #0x752b38
007ae680  00 30 a0 e3                                      mov r3, #0
007ae684  48 30 84 e5                                      str r3, [r4, #0x48]
007ae688  4c 30 84 e5                                      str r3, [r4, #0x4c]
007ae68c  b1 ff ff ea                                      b #0x7ae558
; mapping-symbol data/literal pool
007ae690  b8 d7 11 00 58 d6 11 00 80 d4 11 00              .byte 0xb8, 0xd7, 0x11, 0x00, 0x58, 0xd6, 0x11, 0x00, 0x80, 0xd4, 0x11, 0x00

; FUNCTION 0x007ae69c, declared_size=8, range_size=8, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX10SwitchMenuEPKc
; demangled: MenuFX::SwitchMenu(char const*)
; decoder-mode: arm
007ae69c  00 20 a0 e3                                      mov r2, #0
007ae6a0  f7 fe ff ea                                      b #0x7ae284

; FUNCTION 0x007ae6a4, declared_size=8, range_size=8, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX8PushMenuEPKc
; demangled: MenuFX::PushMenu(char const*)
; decoder-mode: arm
007ae6a4  01 20 a0 e3                                      mov r2, #1
007ae6a8  f5 fe ff ea                                      b #0x7ae284

; FUNCTION 0x007ae808, declared_size=1328, range_size=1328, mode=arm
; class-group: MenuFX
; alias: _ZN6MenuFX7PopMenuEv
; demangled: MenuFX::PopMenu()
; decoder-mode: arm
007ae808  70 40 2d e9                                      push {r4, r5, r6, lr}
007ae80c  18 21 90 e5                                      ldr r2, [r0, #0x118]
007ae810  14 31 90 e5                                      ldr r3, [r0, #0x114]
007ae814  00 40 a0 e1                                      mov r4, r0
007ae818  01 20 42 e2                                      sub r2, r2, #1
007ae81c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007ae820  03 00 a0 e1                                      mov r0, r3
007ae824  00 30 93 e5                                      ldr r3, [r3]
007ae828  0f e0 a0 e1                                      mov lr, pc
007ae82c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007ae830  18 21 94 e5                                      ldr r2, [r4, #0x118]
007ae834  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ae838  01 20 42 e2                                      sub r2, r2, #1
007ae83c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007ae840  03 00 a0 e1                                      mov r0, r3
007ae844  00 30 93 e5                                      ldr r3, [r3]
007ae848  0f e0 a0 e1                                      mov lr, pc
007ae84c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007ae850  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007ae854  40 00 13 e3                                      tst r3, #0x40
007ae858  67 00 00 0a                                      beq #0x7ae9fc
007ae85c  18 21 94 e5                                      ldr r2, [r4, #0x118]
007ae860  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ae864  01 20 42 e2                                      sub r2, r2, #1
007ae868  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007ae86c  02 20 a0 e3                                      mov r2, #2
007ae870  58 20 83 e5                                      str r2, [r3, #0x58]
007ae874  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007ae878  08 00 13 e3                                      tst r3, #8
007ae87c  3e 00 00 1a                                      bne #0x7ae97c
007ae880  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007ae884  04 00 a0 e1                                      mov r0, r4
007ae888  10 10 93 e5                                      ldr r1, [r3, #0x10]
007ae88c  95 e5 ff eb                                      bl #0x7a7ee8
007ae890  18 51 94 e5                                      ldr r5, [r4, #0x118]
007ae894  01 50 55 e2                                      subs r5, r5, #1
007ae898  18 51 84 05                                      streq r5, [r4, #0x118]
007ae89c  35 00 00 0a                                      beq #0x7ae978
007ae8a0  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
007ae8a4  03 00 55 e1                                      cmp r5, r3
007ae8a8  e3 00 00 ca                                      bgt #0x7aec3c
007ae8ac  00 00 55 e3                                      cmp r5, #0
007ae8b0  18 51 84 e5                                      str r5, [r4, #0x118]
007ae8b4  2f 00 00 da                                      ble #0x7ae978
007ae8b8  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ae8bc  01 50 45 e2                                      sub r5, r5, #1
007ae8c0  05 51 93 e7                                      ldr r5, [r3, r5, lsl #2]
007ae8c4  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
007ae8c8  00 00 53 e3                                      cmp r3, #0
007ae8cc  03 00 00 0a                                      beq #0x7ae8e0
007ae8d0  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ae8d4  04 20 d0 e5                                      ldrb r2, [r0, #4]
007ae8d8  00 00 52 e3                                      cmp r2, #0
007ae8dc  66 00 00 0a                                      beq #0x7aea7c
007ae8e0  01 20 a0 e3                                      mov r2, #1
007ae8e4  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
007ae8e8  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007ae8ec  08 00 13 e3                                      tst r3, #8
007ae8f0  6f 00 00 1a                                      bne #0x7aeab4
007ae8f4  18 21 94 e5                                      ldr r2, [r4, #0x118]
007ae8f8  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ae8fc  01 20 42 e2                                      sub r2, r2, #1
007ae900  02 51 93 e7                                      ldr r5, [r3, r2, lsl #2]
007ae904  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
007ae908  00 00 51 e3                                      cmp r1, #0
007ae90c  03 00 00 0a                                      beq #0x7ae920
007ae910  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ae914  04 30 d0 e5                                      ldrb r3, [r0, #4]
007ae918  00 00 53 e3                                      cmp r3, #0
007ae91c  47 00 00 0a                                      beq #0x7aea40
007ae920  04 00 a0 e1                                      mov r0, r4
007ae924  6f e5 ff eb                                      bl #0x7a7ee8
007ae928  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007ae92c  40 00 13 e3                                      tst r3, #0x40
007ae930  85 00 00 0a                                      beq #0x7aeb4c
007ae934  01 00 13 e3                                      tst r3, #1
007ae938  9d 00 00 1a                                      bne #0x7aebb4
007ae93c  18 21 94 e5                                      ldr r2, [r4, #0x118]
007ae940  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ae944  01 20 42 e2                                      sub r2, r2, #1
007ae948  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007ae94c  03 00 a0 e1                                      mov r0, r3
007ae950  00 30 93 e5                                      ldr r3, [r3]
007ae954  0f e0 a0 e1                                      mov lr, pc
007ae958  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007ae95c  18 21 94 e5                                      ldr r2, [r4, #0x118]
007ae960  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ae964  01 20 42 e2                                      sub r2, r2, #1
007ae968  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
007ae96c  03 20 a0 e3                                      mov r2, #3
007ae970  58 20 83 e5                                      str r2, [r3, #0x58]
007ae974  70 80 bd e8                                      pop {r4, r5, r6, pc}
007ae978  70 80 bd e8                                      pop {r4, r5, r6, pc}
007ae97c  18 21 94 e5                                      ldr r2, [r4, #0x118]
007ae980  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ae984  01 20 42 e2                                      sub r2, r2, #1
007ae988  02 51 93 e7                                      ldr r5, [r3, r2, lsl #2]
007ae98c  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
007ae990  00 00 53 e3                                      cmp r3, #0
007ae994  03 00 00 0a                                      beq #0x7ae9a8
007ae998  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ae99c  04 20 d0 e5                                      ldrb r2, [r0, #4]
007ae9a0  00 00 52 e3                                      cmp r2, #0
007ae9a4  a8 00 00 0a                                      beq #0x7aec4c
007ae9a8  03 00 a0 e1                                      mov r0, r3
007ae9ac  02 10 a0 e3                                      mov r1, #2
007ae9b0  00 30 93 e5                                      ldr r3, [r3]
007ae9b4  0f e0 a0 e1                                      mov lr, pc
007ae9b8  08 f0 93 e5                                      ldr pc, [r3, #8]
007ae9bc  00 00 50 e3                                      cmp r0, #0
007ae9c0  ae ff ff 0a                                      beq #0x7ae880
007ae9c4  18 21 94 e5                                      ldr r2, [r4, #0x118]
007ae9c8  14 31 94 e5                                      ldr r3, [r4, #0x114]
007ae9cc  01 20 42 e2                                      sub r2, r2, #1
007ae9d0  02 51 93 e7                                      ldr r5, [r3, r2, lsl #2]
007ae9d4  4c 20 95 e5                                      ldr r2, [r5, #0x4c]
007ae9d8  00 00 52 e3                                      cmp r2, #0
007ae9dc  03 00 00 0a                                      beq #0x7ae9f0
007ae9e0  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ae9e4  04 30 d0 e5                                      ldrb r3, [r0, #4]
007ae9e8  00 00 53 e3                                      cmp r3, #0
007ae9ec  bd 00 00 0a                                      beq #0x7aece8
007ae9f0  00 30 a0 e3                                      mov r3, #0
007ae9f4  ea 30 c2 e5                                      strb r3, [r2, #0xea]
007ae9f8  a0 ff ff ea                                      b #0x7ae880
007ae9fc  18 21 94 e5                                      ldr r2, [r4, #0x118]
007aea00  14 31 94 e5                                      ldr r3, [r4, #0x114]
007aea04  01 20 42 e2                                      sub r2, r2, #1
007aea08  02 51 93 e7                                      ldr r5, [r3, r2, lsl #2]
007aea0c  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
007aea10  00 00 51 e3                                      cmp r1, #0
007aea14  03 00 00 0a                                      beq #0x7aea28
007aea18  48 00 95 e5                                      ldr r0, [r5, #0x48]
007aea1c  04 30 d0 e5                                      ldrb r3, [r0, #4]
007aea20  00 00 53 e3                                      cmp r3, #0
007aea24  92 00 00 0a                                      beq #0x7aec74
007aea28  fc 22 9f e5                                      ldr r2, [pc, #0x2fc]
007aea2c  04 00 a0 e1                                      mov r0, r4
007aea30  00 30 a0 e3                                      mov r3, #0
007aea34  02 20 8f e0                                      add r2, pc, r2
007aea38  f1 f3 ff eb                                      bl #0x7aba04
007aea3c  86 ff ff ea                                      b #0x7ae85c
007aea40  00 10 90 e5                                      ldr r1, [r0]
007aea44  01 10 41 e2                                      sub r1, r1, #1
007aea48  00 00 51 e3                                      cmp r1, #0
007aea4c  00 10 80 e5                                      str r1, [r0]
007aea50  00 00 00 1a                                      bne #0x7aea58
007aea54  37 90 fe eb                                      bl #0x752b38
007aea58  00 10 a0 e3                                      mov r1, #0
007aea5c  4c 10 85 e5                                      str r1, [r5, #0x4c]
007aea60  48 10 85 e5                                      str r1, [r5, #0x48]
007aea64  04 00 a0 e1                                      mov r0, r4
007aea68  1e e5 ff eb                                      bl #0x7a7ee8
007aea6c  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007aea70  40 00 13 e3                                      tst r3, #0x40
007aea74  ae ff ff 1a                                      bne #0x7ae934
007aea78  33 00 00 ea                                      b #0x7aeb4c
007aea7c  00 10 90 e5                                      ldr r1, [r0]
007aea80  01 10 41 e2                                      sub r1, r1, #1
007aea84  00 00 51 e3                                      cmp r1, #0
007aea88  00 10 80 e5                                      str r1, [r0]
007aea8c  00 00 00 1a                                      bne #0x7aea94
007aea90  28 90 fe eb                                      bl #0x752b38
007aea94  00 30 a0 e3                                      mov r3, #0
007aea98  01 20 a0 e3                                      mov r2, #1
007aea9c  4c 30 85 e5                                      str r3, [r5, #0x4c]
007aeaa0  48 30 85 e5                                      str r3, [r5, #0x48]
007aeaa4  9b 20 c3 e5                                      strb r2, [r3, #0x9b]
007aeaa8  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007aeaac  08 00 13 e3                                      tst r3, #8
007aeab0  8f ff ff 0a                                      beq #0x7ae8f4
007aeab4  18 21 94 e5                                      ldr r2, [r4, #0x118]
007aeab8  14 31 94 e5                                      ldr r3, [r4, #0x114]
007aeabc  01 20 42 e2                                      sub r2, r2, #1
007aeac0  02 51 93 e7                                      ldr r5, [r3, r2, lsl #2]
007aeac4  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
007aeac8  00 00 53 e3                                      cmp r3, #0
007aeacc  08 00 00 0a                                      beq #0x7aeaf4
007aead0  48 20 95 e5                                      ldr r2, [r5, #0x48]
007aead4  04 60 d2 e5                                      ldrb r6, [r2, #4]
007aead8  00 00 56 e3                                      cmp r6, #0
007aeadc  04 00 00 1a                                      bne #0x7aeaf4
007aeae0  48 00 85 e2                                      add r0, r5, #0x48
007aeae4  06 10 a0 e1                                      mov r1, r6
007aeae8  e5 c4 f1 eb                                      bl #0x41fe84
007aeaec  4c 60 85 e5                                      str r6, [r5, #0x4c]
007aeaf0  06 30 a0 e1                                      mov r3, r6
007aeaf4  03 00 a0 e1                                      mov r0, r3
007aeaf8  02 10 a0 e3                                      mov r1, #2
007aeafc  00 30 93 e5                                      ldr r3, [r3]
007aeb00  0f e0 a0 e1                                      mov lr, pc
007aeb04  08 f0 93 e5                                      ldr pc, [r3, #8]
007aeb08  00 00 50 e3                                      cmp r0, #0
007aeb0c  78 ff ff 0a                                      beq #0x7ae8f4
007aeb10  18 21 94 e5                                      ldr r2, [r4, #0x118]
007aeb14  14 31 94 e5                                      ldr r3, [r4, #0x114]
007aeb18  01 20 42 e2                                      sub r2, r2, #1
007aeb1c  02 61 93 e7                                      ldr r6, [r3, r2, lsl #2]
007aeb20  4c 20 96 e5                                      ldr r2, [r6, #0x4c]
007aeb24  00 00 52 e3                                      cmp r2, #0
007aeb28  03 00 00 0a                                      beq #0x7aeb3c
007aeb2c  48 30 96 e5                                      ldr r3, [r6, #0x48]
007aeb30  04 50 d3 e5                                      ldrb r5, [r3, #4]
007aeb34  00 00 55 e3                                      cmp r5, #0
007aeb38  57 00 00 0a                                      beq #0x7aec9c
007aeb3c  02 50 a0 e1                                      mov r5, r2
007aeb40  01 30 a0 e3                                      mov r3, #1
007aeb44  ea 30 c5 e5                                      strb r3, [r5, #0xea]
007aeb48  69 ff ff ea                                      b #0x7ae8f4
007aeb4c  18 21 94 e5                                      ldr r2, [r4, #0x118]
007aeb50  14 31 94 e5                                      ldr r3, [r4, #0x114]
007aeb54  01 20 42 e2                                      sub r2, r2, #1
007aeb58  02 51 93 e7                                      ldr r5, [r3, r2, lsl #2]
007aeb5c  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
007aeb60  00 00 51 e3                                      cmp r1, #0
007aeb64  08 00 00 0a                                      beq #0x7aeb8c
007aeb68  48 30 95 e5                                      ldr r3, [r5, #0x48]
007aeb6c  04 60 d3 e5                                      ldrb r6, [r3, #4]
007aeb70  00 00 56 e3                                      cmp r6, #0
007aeb74  04 00 00 1a                                      bne #0x7aeb8c
007aeb78  06 10 a0 e1                                      mov r1, r6
007aeb7c  48 00 85 e2                                      add r0, r5, #0x48
007aeb80  bf c4 f1 eb                                      bl #0x41fe84
007aeb84  4c 60 85 e5                                      str r6, [r5, #0x4c]
007aeb88  06 10 a0 e1                                      mov r1, r6
007aeb8c  9c 21 9f e5                                      ldr r2, [pc, #0x19c]
007aeb90  04 00 a0 e1                                      mov r0, r4
007aeb94  00 30 a0 e3                                      mov r3, #0
007aeb98  02 20 8f e0                                      add r2, pc, r2
007aeb9c  98 f3 ff eb                                      bl #0x7aba04
007aeba0  00 50 50 e2                                      subs r5, r0, #0
007aeba4  41 00 00 0a                                      beq #0x7aecb0
007aeba8  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007aebac  01 00 13 e3                                      tst r3, #1
007aebb0  61 ff ff 0a                                      beq #0x7ae93c
007aebb4  18 21 94 e5                                      ldr r2, [r4, #0x118]
007aebb8  14 31 94 e5                                      ldr r3, [r4, #0x114]
007aebbc  01 10 42 e2                                      sub r1, r2, #1
007aebc0  01 51 93 e7                                      ldr r5, [r3, r1, lsl #2]
007aebc4  54 10 95 e5                                      ldr r1, [r5, #0x54]
007aebc8  00 00 51 e3                                      cmp r1, #0
007aebcc  5c ff ff 0a                                      beq #0x7ae944
007aebd0  50 30 95 e5                                      ldr r3, [r5, #0x50]
007aebd4  04 60 d3 e5                                      ldrb r6, [r3, #4]
007aebd8  00 00 56 e3                                      cmp r6, #0
007aebdc  4b 00 00 0a                                      beq #0x7aed10
007aebe0  00 10 a0 e3                                      mov r1, #0
007aebe4  04 00 a0 e1                                      mov r0, r4
007aebe8  08 f6 ff eb                                      bl #0x7ac410
007aebec  18 21 94 e5                                      ldr r2, [r4, #0x118]
007aebf0  14 31 94 e5                                      ldr r3, [r4, #0x114]
007aebf4  01 20 42 e2                                      sub r2, r2, #1
007aebf8  02 61 93 e7                                      ldr r6, [r3, r2, lsl #2]
007aebfc  54 10 96 e5                                      ldr r1, [r6, #0x54]
007aec00  00 00 51 e3                                      cmp r1, #0
007aec04  08 00 00 0a                                      beq #0x7aec2c
007aec08  50 30 96 e5                                      ldr r3, [r6, #0x50]
007aec0c  04 50 d3 e5                                      ldrb r5, [r3, #4]
007aec10  00 00 55 e3                                      cmp r5, #0
007aec14  04 00 00 1a                                      bne #0x7aec2c
007aec18  05 10 a0 e1                                      mov r1, r5
007aec1c  50 00 86 e2                                      add r0, r6, #0x50
007aec20  97 c4 f1 eb                                      bl #0x41fe84
007aec24  54 50 86 e5                                      str r5, [r6, #0x54]
007aec28  05 10 a0 e1                                      mov r1, r5
007aec2c  04 00 a0 e1                                      mov r0, r4
007aec30  00 20 a0 e3                                      mov r2, #0
007aec34  7b f5 ff eb                                      bl #0x7ac228
007aec38  3f ff ff ea                                      b #0x7ae93c
007aec3c  45 0f 84 e2                                      add r0, r4, #0x114
007aec40  c5 10 85 e0                                      add r1, r5, r5, asr #1
007aec44  f4 23 f2 eb                                      bl #0x437c1c
007aec48  17 ff ff ea                                      b #0x7ae8ac
007aec4c  00 10 90 e5                                      ldr r1, [r0]
007aec50  01 10 41 e2                                      sub r1, r1, #1
007aec54  00 00 51 e3                                      cmp r1, #0
007aec58  00 10 80 e5                                      str r1, [r0]
007aec5c  00 00 00 1a                                      bne #0x7aec64
007aec60  b4 8f fe eb                                      bl #0x752b38
007aec64  00 30 a0 e3                                      mov r3, #0
007aec68  4c 30 85 e5                                      str r3, [r5, #0x4c]
007aec6c  48 30 85 e5                                      str r3, [r5, #0x48]
007aec70  4c ff ff ea                                      b #0x7ae9a8
007aec74  00 10 90 e5                                      ldr r1, [r0]
007aec78  01 10 41 e2                                      sub r1, r1, #1
007aec7c  00 00 51 e3                                      cmp r1, #0
007aec80  00 10 80 e5                                      str r1, [r0]
007aec84  00 00 00 1a                                      bne #0x7aec8c
007aec88  aa 8f fe eb                                      bl #0x752b38
007aec8c  00 10 a0 e3                                      mov r1, #0
007aec90  4c 10 85 e5                                      str r1, [r5, #0x4c]
007aec94  48 10 85 e5                                      str r1, [r5, #0x48]
007aec98  62 ff ff ea                                      b #0x7aea28
007aec9c  48 00 86 e2                                      add r0, r6, #0x48
007aeca0  05 10 a0 e1                                      mov r1, r5
007aeca4  76 c4 f1 eb                                      bl #0x41fe84
007aeca8  4c 50 86 e5                                      str r5, [r6, #0x4c]
007aecac  a3 ff ff ea                                      b #0x7aeb40
007aecb0  18 21 94 e5                                      ldr r2, [r4, #0x118]
007aecb4  14 31 94 e5                                      ldr r3, [r4, #0x114]
007aecb8  01 20 42 e2                                      sub r2, r2, #1
007aecbc  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
007aecc0  48 00 80 e2                                      add r0, r0, #0x48
007aecc4  56 25 f2 eb                                      bl #0x438224
007aecc8  64 20 9f e5                                      ldr r2, [pc, #0x64]
007aeccc  00 10 a0 e1                                      mov r1, r0
007aecd0  05 30 a0 e1                                      mov r3, r5
007aecd4  02 20 8f e0                                      add r2, pc, r2
007aecd8  04 00 a0 e1                                      mov r0, r4
007aecdc  48 f3 ff eb                                      bl #0x7aba04
007aece0  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
007aece4  b0 ff ff ea                                      b #0x7aebac
007aece8  00 10 90 e5                                      ldr r1, [r0]
007aecec  01 10 41 e2                                      sub r1, r1, #1
007aecf0  00 00 51 e3                                      cmp r1, #0
007aecf4  00 10 80 e5                                      str r1, [r0]
007aecf8  00 00 00 1a                                      bne #0x7aed00
007aecfc  8d 8f fe eb                                      bl #0x752b38
007aed00  00 20 a0 e3                                      mov r2, #0
007aed04  4c 20 85 e5                                      str r2, [r5, #0x4c]
007aed08  48 20 85 e5                                      str r2, [r5, #0x48]
007aed0c  37 ff ff ea                                      b #0x7ae9f0
007aed10  50 00 85 e2                                      add r0, r5, #0x50
007aed14  06 10 a0 e1                                      mov r1, r6
007aed18  59 c4 f1 eb                                      bl #0x41fe84
007aed1c  54 60 85 e5                                      str r6, [r5, #0x54]
007aed20  18 21 94 e5                                      ldr r2, [r4, #0x118]
007aed24  14 31 94 e5                                      ldr r3, [r4, #0x114]
007aed28  05 ff ff ea                                      b #0x7ae944
; mapping-symbol data/literal pool
007aed2c  7c d0 11 00 80 cf 11 00 ec cd 11 00              .byte 0x7c, 0xd0, 0x11, 0x00, 0x80, 0xcf, 0x11, 0x00, 0xec, 0xcd, 0x11, 0x00
