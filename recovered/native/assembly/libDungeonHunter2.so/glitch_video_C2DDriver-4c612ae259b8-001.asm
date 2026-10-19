; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0059efb4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriverC2EPNS0_12IVideoDriverE
; demangled: glitch::video::C2DDriver::C2DDriver(glitch::video::IVideoDriver*)
; decoder-mode: arm
0059efb4  44 c0 9f e5                                      ldr ip, [pc, #0x44]
0059efb8  30 00 2d e9                                      push {r4, r5}
0059efbc  40 40 9f e5                                      ldr r4, [pc, #0x40]
0059efc0  0c c0 8f e0                                      add ip, pc, ip
0059efc4  00 20 a0 e3                                      mov r2, #0
0059efc8  04 40 9c e7                                      ldr r4, [ip, r4]
0059efcc  00 30 a0 e1                                      mov r3, r0
0059efd0  01 50 a0 e3                                      mov r5, #1
0059efd4  08 40 84 e2                                      add r4, r4, #8
0059efd8  1e 20 c3 e5                                      strb r2, [r3, #0x1e]
0059efdc  30 00 80 e8                                      stm r0, {r4, r5}
0059efe0  08 10 80 e5                                      str r1, [r0, #8]
0059efe4  bc 21 c0 e1                                      strh r2, [r0, #0x1c]
0059efe8  0c 20 80 e5                                      str r2, [r0, #0xc]
0059efec  10 20 80 e5                                      str r2, [r0, #0x10]
0059eff0  b4 21 c0 e1                                      strh r2, [r0, #0x14]
0059eff4  18 20 80 e5                                      str r2, [r0, #0x18]
0059eff8  30 00 bd e8                                      pop {r4, r5}
0059effc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0059f000  d0 5a 3f 00 c0 20 00 00                          .byte 0xd0, 0x5a, 0x3f, 0x00, 0xc0, 0x20, 0x00, 0x00

; FUNCTION 0x0059f008, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriverC1EPNS0_12IVideoDriverE
; demangled: glitch::video::C2DDriver::C2DDriver(glitch::video::IVideoDriver*)
; decoder-mode: arm
0059f008  44 c0 9f e5                                      ldr ip, [pc, #0x44]
0059f00c  30 00 2d e9                                      push {r4, r5}
0059f010  40 40 9f e5                                      ldr r4, [pc, #0x40]
0059f014  0c c0 8f e0                                      add ip, pc, ip
0059f018  00 20 a0 e3                                      mov r2, #0
0059f01c  04 40 9c e7                                      ldr r4, [ip, r4]
0059f020  00 30 a0 e1                                      mov r3, r0
0059f024  01 50 a0 e3                                      mov r5, #1
0059f028  08 40 84 e2                                      add r4, r4, #8
0059f02c  1e 20 c3 e5                                      strb r2, [r3, #0x1e]
0059f030  30 00 80 e8                                      stm r0, {r4, r5}
0059f034  08 10 80 e5                                      str r1, [r0, #8]
0059f038  bc 21 c0 e1                                      strh r2, [r0, #0x1c]
0059f03c  0c 20 80 e5                                      str r2, [r0, #0xc]
0059f040  10 20 80 e5                                      str r2, [r0, #0x10]
0059f044  b4 21 c0 e1                                      strh r2, [r0, #0x14]
0059f048  18 20 80 e5                                      str r2, [r0, #0x18]
0059f04c  30 00 bd e8                                      pop {r4, r5}
0059f050  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0059f054  7c 5a 3f 00 c0 20 00 00                          .byte 0x7c, 0x5a, 0x3f, 0x00, 0xc0, 0x20, 0x00, 0x00

; FUNCTION 0x0059f05c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver10draw2DLineERKNS_4core10position2dIiEES6_NS0_6SColorE
; demangled: glitch::video::C2DDriver::draw2DLine(glitch::core::position2d<int> const&, glitch::core::position2d<int> const&, glitch::video::SColor)
; decoder-mode: arm
0059f05c  04 e0 2d e5                                      str lr, [sp, #-4]!
0059f060  0c d0 4d e2                                      sub sp, sp, #0xc
0059f064  04 30 8d e5                                      str r3, [sp, #4]
0059f068  08 c0 90 e5                                      ldr ip, [r0, #8]
0059f06c  0c 00 a0 e1                                      mov r0, ip
0059f070  00 c0 9c e5                                      ldr ip, [ip]
0059f074  0f e0 a0 e1                                      mov lr, pc
0059f078  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0059f07c  0c d0 8d e2                                      add sp, sp, #0xc
0059f080  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0059f084, declared_size=44, range_size=44, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver15draw2DRectangleERKNS_4core4rectIiEES6_PKNS0_6SColorEPS5_
; demangled: glitch::video::C2DDriver::draw2DRectangle(glitch::core::rect<int> const&, glitch::core::rect<int> const&, glitch::video::SColor const*, glitch::core::rect<int> const*)
; decoder-mode: arm
0059f084  04 e0 2d e5                                      str lr, [sp, #-4]!
0059f088  0c d0 4d e2                                      sub sp, sp, #0xc
0059f08c  08 c0 90 e5                                      ldr ip, [r0, #8]
0059f090  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0059f094  0c 00 a0 e1                                      mov r0, ip
0059f098  00 c0 9c e5                                      ldr ip, [ip]
0059f09c  00 e0 8d e5                                      str lr, [sp]
0059f0a0  0f e0 a0 e1                                      mov lr, pc
0059f0a4  34 f0 9c e5                                      ldr pc, [ip, #0x34]
0059f0a8  0c d0 8d e2                                      add sp, sp, #0xc
0059f0ac  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0059f0b0, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver10draw2DLineEPNS0_12IVideoDriverERKNS_4core10position2dIiEES8_NS0_6SColorE
; demangled: glitch::video::C2DDriver::draw2DLine(glitch::video::IVideoDriver*, glitch::core::position2d<int> const&, glitch::core::position2d<int> const&, glitch::video::SColor)
; decoder-mode: arm
0059f0b0  04 e0 2d e5                                      str lr, [sp, #-4]!
0059f0b4  0c d0 4d e2                                      sub sp, sp, #0xc
0059f0b8  04 30 8d e5                                      str r3, [sp, #4]
0059f0bc  00 c0 90 e5                                      ldr ip, [r0]
0059f0c0  0f e0 a0 e1                                      mov lr, pc
0059f0c4  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0059f0c8  0c d0 8d e2                                      add sp, sp, #0xc
0059f0cc  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0059f0d0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver15draw2DRectangleEPNS0_12IVideoDriverERKNS_4core4rectIiEES8_PKNS0_6SColorEPS7_
; demangled: glitch::video::C2DDriver::draw2DRectangle(glitch::video::IVideoDriver*, glitch::core::rect<int> const&, glitch::core::rect<int> const&, glitch::video::SColor const*, glitch::core::rect<int> const*)
; decoder-mode: arm
0059f0d0  04 e0 2d e5                                      str lr, [sp, #-4]!
0059f0d4  0c d0 4d e2                                      sub sp, sp, #0xc
0059f0d8  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0059f0dc  00 c0 90 e5                                      ldr ip, [r0]
0059f0e0  00 e0 8d e5                                      str lr, [sp]
0059f0e4  0f e0 a0 e1                                      mov lr, pc
0059f0e8  34 f0 9c e5                                      ldr pc, [ip, #0x34]
0059f0ec  0c d0 8d e2                                      add sp, sp, #0xc
0059f0f0  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0059f114, declared_size=336, range_size=336, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver13draw2DPolygonENS_4core10position2dIiEEfNS0_6SColorEi
; demangled: glitch::video::C2DDriver::draw2DPolygon(glitch::core::position2d<int>, float, glitch::video::SColor, int)
; decoder-mode: arm
0059f114  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059f118  24 d0 4d e2                                      sub sp, sp, #0x24
0059f11c  48 50 9d e5                                      ldr r5, [sp, #0x48]
0059f120  00 c0 a0 e3                                      mov ip, #0
0059f124  04 30 8d e5                                      str r3, [sp, #4]
0059f128  0c 00 55 e1                                      cmp r5, ip
0059f12c  00 80 a0 e1                                      mov r8, r0
0059f130  01 60 a0 e1                                      mov r6, r1
0059f134  02 70 a0 e1                                      mov r7, r2
0059f138  18 c0 8d e5                                      str ip, [sp, #0x18]
0059f13c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0059f140  10 c0 8d e5                                      str ip, [sp, #0x10]
0059f144  14 c0 8d e5                                      str ip, [sp, #0x14]
0059f148  08 c0 8d e5                                      str ip, [sp, #8]
0059f14c  0c c0 8d e5                                      str ip, [sp, #0xc]
0059f150  10 a0 8d d2                                      addle sl, sp, #0x10
0059f154  38 00 00 da                                      ble #0x59f23c
0059f158  08 20 8d e2                                      add r2, sp, #8
0059f15c  0c 30 a0 e1                                      mov r3, ip
0059f160  0c 40 a0 e1                                      mov r4, ip
0059f164  10 a0 8d e2                                      add sl, sp, #0x10
0059f168  00 20 8d e5                                      str r2, [sp]
0059f16c  04 00 00 ea                                      b #0x59f184
0059f170  01 40 84 e2                                      add r4, r4, #1
0059f174  05 00 54 e1                                      cmp r4, r5
0059f178  2f 00 00 0a                                      beq #0x59f23c
0059f17c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0059f180  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0059f184  04 00 a0 e1                                      mov r0, r4
0059f188  08 30 8d e5                                      str r3, [sp, #8]
0059f18c  0c c0 8d e5                                      str ip, [sp, #0xc]
0059f190  f3 bd f5 eb                                      bl #0x30e964
0059f194  00 90 a0 e1                                      mov sb, r0
0059f198  05 00 a0 e1                                      mov r0, r5
0059f19c  f0 bd f5 eb                                      bl #0x30e964
0059f1a0  00 10 a0 e1                                      mov r1, r0
0059f1a4  09 00 a0 e1                                      mov r0, sb
0059f1a8  b9 be f5 eb                                      bl #0x30ec94
0059f1ac  db 1f 00 e3                                      movw r1, #0xfdb
0059f1b0  c9 10 44 e3                                      movt r1, #0x40c9
0059f1b4  ec be f5 eb                                      bl #0x30ed6c
0059f1b8  00 b0 a0 e1                                      mov fp, r0
0059f1bc  51 be f5 eb                                      bl #0x30eb08
0059f1c0  00 10 a0 e1                                      mov r1, r0
0059f1c4  07 00 a0 e1                                      mov r0, r7
0059f1c8  e7 be f5 eb                                      bl #0x30ed6c
0059f1cc  be bc f5 eb                                      bl #0x30e4cc
0059f1d0  00 90 a0 e1                                      mov sb, r0
0059f1d4  0b 00 a0 e1                                      mov r0, fp
0059f1d8  5d bd f5 eb                                      bl #0x30e754
0059f1dc  00 10 a0 e1                                      mov r1, r0
0059f1e0  07 00 a0 e1                                      mov r0, r7
0059f1e4  e0 be f5 eb                                      bl #0x30ed6c
0059f1e8  b7 bc f5 eb                                      bl #0x30e4cc
0059f1ec  0c 00 96 e8                                      ldm r6, {r2, r3}
0059f1f0  00 00 54 e3                                      cmp r4, #0
0059f1f4  02 90 89 e0                                      add sb, sb, r2
0059f1f8  03 30 80 e0                                      add r3, r0, r3
0059f1fc  10 90 8d e5                                      str sb, [sp, #0x10]
0059f200  14 30 8d e5                                      str r3, [sp, #0x14]
0059f204  18 90 8d 05                                      streq sb, [sp, #0x18]
0059f208  1c 30 8d 05                                      streq r3, [sp, #0x1c]
0059f20c  d7 ff ff 0a                                      beq #0x59f170
0059f210  08 30 98 e5                                      ldr r3, [r8, #8]
0059f214  0a 10 a0 e1                                      mov r1, sl
0059f218  00 20 9d e5                                      ldr r2, [sp]
0059f21c  03 00 a0 e1                                      mov r0, r3
0059f220  00 c0 93 e5                                      ldr ip, [r3]
0059f224  01 40 84 e2                                      add r4, r4, #1
0059f228  04 30 9d e5                                      ldr r3, [sp, #4]
0059f22c  0f e0 a0 e1                                      mov lr, pc
0059f230  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0059f234  05 00 54 e1                                      cmp r4, r5
0059f238  cf ff ff 1a                                      bne #0x59f17c
0059f23c  08 30 98 e5                                      ldr r3, [r8, #8]
0059f240  0a 10 a0 e1                                      mov r1, sl
0059f244  18 20 8d e2                                      add r2, sp, #0x18
0059f248  03 00 a0 e1                                      mov r0, r3
0059f24c  00 c0 93 e5                                      ldr ip, [r3]
0059f250  04 30 9d e5                                      ldr r3, [sp, #4]
0059f254  0f e0 a0 e1                                      mov lr, pc
0059f258  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
0059f25c  24 d0 8d e2                                      add sp, sp, #0x24
0059f260  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0059f264, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver13draw2DPolygonEPNS0_12IVideoDriverENS_4core10position2dIiEEfNS0_6SColorEi
; demangled: glitch::video::C2DDriver::draw2DPolygon(glitch::video::IVideoDriver*, glitch::core::position2d<int>, float, glitch::video::SColor, int)
; decoder-mode: arm
0059f264  04 e0 2d e5                                      str lr, [sp, #-4]!
0059f268  1c d0 4d e2                                      sub sp, sp, #0x1c
0059f26c  0c 30 8d e5                                      str r3, [sp, #0xc]
0059f270  04 c0 91 e5                                      ldr ip, [r1, #4]
0059f274  d4 00 90 e5                                      ldr r0, [r0, #0xd4]
0059f278  00 e0 91 e5                                      ldr lr, [r1]
0059f27c  10 10 8d e2                                      add r1, sp, #0x10
0059f280  14 00 90 e5                                      ldr r0, [r0, #0x14]
0059f284  14 c0 8d e5                                      str ip, [sp, #0x14]
0059f288  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0059f28c  10 e0 8d e5                                      str lr, [sp, #0x10]
0059f290  00 c0 8d e5                                      str ip, [sp]
0059f294  9e ff ff eb                                      bl #0x59f114
0059f298  1c d0 8d e2                                      add sp, sp, #0x1c
0059f29c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0059f2a0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriverD1Ev
; demangled: glitch::video::C2DDriver::~C2DDriver()
; decoder-mode: arm
0059f2a0  34 30 9f e5                                      ldr r3, [pc, #0x34]
0059f2a4  34 20 9f e5                                      ldr r2, [pc, #0x34]
0059f2a8  10 40 2d e9                                      push {r4, lr}
0059f2ac  03 30 8f e0                                      add r3, pc, r3
0059f2b0  02 20 93 e7                                      ldr r2, [r3, r2]
0059f2b4  00 40 a0 e1                                      mov r4, r0
0059f2b8  08 20 82 e2                                      add r2, r2, #8
0059f2bc  18 20 80 e4                                      str r2, [r0], #0x18
0059f2c0  48 c6 f5 eb                                      bl #0x310be8
0059f2c4  10 00 84 e2                                      add r0, r4, #0x10
0059f2c8  46 c6 f5 eb                                      bl #0x310be8
0059f2cc  0c 00 84 e2                                      add r0, r4, #0xc
0059f2d0  44 c6 f5 eb                                      bl #0x310be8
0059f2d4  04 00 a0 e1                                      mov r0, r4
0059f2d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0059f2dc  e4 57 3f 00 c0 20 00 00                          .byte 0xe4, 0x57, 0x3f, 0x00, 0xc0, 0x20, 0x00, 0x00

; FUNCTION 0x0059f2e4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriverD0Ev
; demangled: glitch::video::C2DDriver::~C2DDriver()
; decoder-mode: arm
0059f2e4  10 40 2d e9                                      push {r4, lr}
0059f2e8  00 40 a0 e1                                      mov r4, r0
0059f2ec  eb ff ff eb                                      bl #0x59f2a0
0059f2f0  04 00 a0 e1                                      mov r0, r4
0059f2f4  ed bb f5 eb                                      bl #0x30e2b0
0059f2f8  04 00 a0 e1                                      mov r0, r4
0059f2fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059f300, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver12freeTexturesEv
; demangled: glitch::video::C2DDriver::freeTextures()
; decoder-mode: arm
0059f300  10 40 2d e9                                      push {r4, lr}
0059f304  08 30 90 e5                                      ldr r3, [r0, #8]
0059f308  00 40 a0 e1                                      mov r4, r0
0059f30c  08 d0 4d e2                                      sub sp, sp, #8
0059f310  03 00 a0 e1                                      mov r0, r3
0059f314  00 30 93 e5                                      ldr r3, [r3]
0059f318  0f e0 a0 e1                                      mov lr, pc
0059f31c  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
0059f320  10 00 94 e5                                      ldr r0, [r4, #0x10]
0059f324  00 00 50 e3                                      cmp r0, #0
0059f328  08 00 00 0a                                      beq #0x59f350
0059f32c  00 20 a0 e3                                      mov r2, #0
0059f330  08 30 8d e2                                      add r3, sp, #8
0059f334  b4 11 d4 e1                                      ldrh r1, [r4, #0x14]
0059f338  04 20 23 e5                                      str r2, [r3, #-4]!
0059f33c  f8 b7 00 eb                                      bl #0x5cd324
0059f340  04 00 9d e5                                      ldr r0, [sp, #4]
0059f344  00 00 50 e3                                      cmp r0, #0
0059f348  00 00 00 0a                                      beq #0x59f350
0059f34c  8c f8 f5 eb                                      bl #0x31d584
0059f350  18 00 94 e5                                      ldr r0, [r4, #0x18]
0059f354  00 00 50 e3                                      cmp r0, #0
0059f358  09 00 00 0a                                      beq #0x59f384
0059f35c  00 20 a0 e3                                      mov r2, #0
0059f360  08 30 8d e2                                      add r3, sp, #8
0059f364  bc 11 d4 e1                                      ldrh r1, [r4, #0x1c]
0059f368  08 20 23 e5                                      str r2, [r3, #-8]!
0059f36c  0d 30 a0 e1                                      mov r3, sp
0059f370  eb b7 00 eb                                      bl #0x5cd324
0059f374  00 00 9d e5                                      ldr r0, [sp]
0059f378  00 00 50 e3                                      cmp r0, #0
0059f37c  00 00 00 0a                                      beq #0x59f384
0059f380  7f f8 f5 eb                                      bl #0x31d584
0059f384  08 d0 8d e2                                      add sp, sp, #8
0059f388  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059f38c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver12freeTexturesEPNS0_12IVideoDriverE
; demangled: glitch::video::C2DDriver::freeTextures(glitch::video::IVideoDriver*)
; decoder-mode: arm
0059f38c  d4 30 90 e5                                      ldr r3, [r0, #0xd4]
0059f390  14 00 93 e5                                      ldr r0, [r3, #0x14]
0059f394  d9 ff ff ea                                      b #0x59f300

; FUNCTION 0x0059f398, declared_size=332, range_size=332, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver4initEv
; demangled: glitch::video::C2DDriver::init()
; decoder-mode: arm
0059f398  30 40 2d e9                                      push {r4, r5, lr}
0059f39c  1e 30 d0 e5                                      ldrb r3, [r0, #0x1e]
0059f3a0  1c d0 4d e2                                      sub sp, sp, #0x1c
0059f3a4  00 40 a0 e1                                      mov r4, r0
0059f3a8  00 00 53 e3                                      cmp r3, #0
0059f3ac  4a 00 00 1a                                      bne #0x59f4dc
0059f3b0  08 30 90 e5                                      ldr r3, [r0, #8]
0059f3b4  14 50 8d e2                                      add r5, sp, #0x14
0059f3b8  04 20 a0 e3                                      mov r2, #4
0059f3bc  dc 10 93 e5                                      ldr r1, [r3, #0xdc]
0059f3c0  05 00 a0 e1                                      mov r0, r5
0059f3c4  c9 e9 00 eb                                      bl #0x5d9af0
0059f3c8  14 30 9d e5                                      ldr r3, [sp, #0x14]
0059f3cc  18 00 8d e2                                      add r0, sp, #0x18
0059f3d0  00 00 53 e3                                      cmp r3, #0
0059f3d4  08 30 8d e5                                      str r3, [sp, #8]
0059f3d8  00 20 93 15                                      ldrne r2, [r3]
0059f3dc  01 20 82 12                                      addne r2, r2, #1
0059f3e0  00 20 83 15                                      strne r2, [r3]
0059f3e4  08 30 9d 15                                      ldrne r3, [sp, #8]
0059f3e8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0059f3ec  0c 30 84 e5                                      str r3, [r4, #0xc]
0059f3f0  10 20 20 e5                                      str r2, [r0, #-0x10]!
0059f3f4  fb c5 f5 eb                                      bl #0x310be8
0059f3f8  05 00 a0 e1                                      mov r0, r5
0059f3fc  f9 c5 f5 eb                                      bl #0x310be8
0059f400  08 30 94 e5                                      ldr r3, [r4, #8]
0059f404  10 50 8d e2                                      add r5, sp, #0x10
0059f408  0a 20 a0 e3                                      mov r2, #0xa
0059f40c  dc 10 93 e5                                      ldr r1, [r3, #0xdc]
0059f410  05 00 a0 e1                                      mov r0, r5
0059f414  b5 e9 00 eb                                      bl #0x5d9af0
0059f418  10 30 9d e5                                      ldr r3, [sp, #0x10]
0059f41c  18 00 8d e2                                      add r0, sp, #0x18
0059f420  00 00 53 e3                                      cmp r3, #0
0059f424  04 30 8d e5                                      str r3, [sp, #4]
0059f428  00 20 93 15                                      ldrne r2, [r3]
0059f42c  01 20 82 12                                      addne r2, r2, #1
0059f430  00 20 83 15                                      strne r2, [r3]
0059f434  04 30 9d 15                                      ldrne r3, [sp, #4]
0059f438  10 20 94 e5                                      ldr r2, [r4, #0x10]
0059f43c  10 30 84 e5                                      str r3, [r4, #0x10]
0059f440  14 20 20 e5                                      str r2, [r0, #-0x14]!
0059f444  e7 c5 f5 eb                                      bl #0x310be8
0059f448  05 00 a0 e1                                      mov r0, r5
0059f44c  e5 c5 f5 eb                                      bl #0x310be8
0059f450  10 30 94 e5                                      ldr r3, [r4, #0x10]
0059f454  02 10 a0 e3                                      mov r1, #2
0059f458  00 20 a0 e3                                      mov r2, #0
0059f45c  04 00 93 e5                                      ldr r0, [r3, #4]
0059f460  a8 be 00 eb                                      bl #0x5cef08
0059f464  08 30 94 e5                                      ldr r3, [r4, #8]
0059f468  b4 01 c4 e1                                      strh r0, [r4, #0x14]
0059f46c  0c 50 8d e2                                      add r5, sp, #0xc
0059f470  dc 10 93 e5                                      ldr r1, [r3, #0xdc]
0059f474  07 20 a0 e3                                      mov r2, #7
0059f478  05 00 a0 e1                                      mov r0, r5
0059f47c  9b e9 00 eb                                      bl #0x5d9af0
0059f480  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0059f484  18 00 8d e2                                      add r0, sp, #0x18
0059f488  00 30 8d e5                                      str r3, [sp]
0059f48c  00 00 53 e3                                      cmp r3, #0
0059f490  00 20 93 15                                      ldrne r2, [r3]
0059f494  01 20 82 12                                      addne r2, r2, #1
0059f498  00 20 83 15                                      strne r2, [r3]
0059f49c  00 30 9d 15                                      ldrne r3, [sp]
0059f4a0  18 20 94 e5                                      ldr r2, [r4, #0x18]
0059f4a4  18 30 84 e5                                      str r3, [r4, #0x18]
0059f4a8  18 20 20 e5                                      str r2, [r0, #-0x18]!
0059f4ac  0d 00 a0 e1                                      mov r0, sp
0059f4b0  cc c5 f5 eb                                      bl #0x310be8
0059f4b4  05 00 a0 e1                                      mov r0, r5
0059f4b8  ca c5 f5 eb                                      bl #0x310be8
0059f4bc  18 30 94 e5                                      ldr r3, [r4, #0x18]
0059f4c0  02 10 a0 e3                                      mov r1, #2
0059f4c4  00 20 a0 e3                                      mov r2, #0
0059f4c8  04 00 93 e5                                      ldr r0, [r3, #4]
0059f4cc  8d be 00 eb                                      bl #0x5cef08
0059f4d0  01 30 a0 e3                                      mov r3, #1
0059f4d4  1e 30 c4 e5                                      strb r3, [r4, #0x1e]
0059f4d8  bc 01 c4 e1                                      strh r0, [r4, #0x1c]
0059f4dc  1c d0 8d e2                                      add sp, sp, #0x1c
0059f4e0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0059f4e4, declared_size=188, range_size=188, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver13get2DMaterialERKN5boost13intrusive_ptrINS0_8ITextureEEEb
; demangled: glitch::video::C2DDriver::get2DMaterial(boost::intrusive_ptr<glitch::video::ITexture> const&, bool)
; decoder-mode: arm
0059f4e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059f4e8  01 40 a0 e1                                      mov r4, r1
0059f4ec  1e 10 d1 e5                                      ldrb r1, [r1, #0x1e]
0059f4f0  00 50 a0 e1                                      mov r5, r0
0059f4f4  02 60 a0 e1                                      mov r6, r2
0059f4f8  00 00 51 e3                                      cmp r1, #0
0059f4fc  03 70 a0 e1                                      mov r7, r3
0059f500  1c 00 00 0a                                      beq #0x59f578
0059f504  00 30 96 e5                                      ldr r3, [r6]
0059f508  00 00 53 e3                                      cmp r3, #0
0059f50c  1e 00 00 0a                                      beq #0x59f58c
0059f510  00 00 57 e3                                      cmp r7, #0
0059f514  0d 00 00 1a                                      bne #0x59f550
0059f518  06 30 a0 e1                                      mov r3, r6
0059f51c  07 20 a0 e1                                      mov r2, r7
0059f520  18 00 94 e5                                      ldr r0, [r4, #0x18]
0059f524  bc 11 d4 e1                                      ldrh r1, [r4, #0x1c]
0059f528  7d b7 00 eb                                      bl #0x5cd324
0059f52c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0059f530  00 00 53 e3                                      cmp r3, #0
0059f534  00 30 85 e5                                      str r3, [r5]
0059f538  02 00 00 0a                                      beq #0x59f548
0059f53c  00 20 93 e5                                      ldr r2, [r3]
0059f540  01 20 82 e2                                      add r2, r2, #1
0059f544  00 20 83 e5                                      str r2, [r3]
0059f548  05 00 a0 e1                                      mov r0, r5
0059f54c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0059f550  06 30 a0 e1                                      mov r3, r6
0059f554  10 00 94 e5                                      ldr r0, [r4, #0x10]
0059f558  b4 11 d4 e1                                      ldrh r1, [r4, #0x14]
0059f55c  00 20 a0 e3                                      mov r2, #0
0059f560  6f b7 00 eb                                      bl #0x5cd324
0059f564  10 30 94 e5                                      ldr r3, [r4, #0x10]
0059f568  00 00 53 e3                                      cmp r3, #0
0059f56c  00 30 85 e5                                      str r3, [r5]
0059f570  f1 ff ff 1a                                      bne #0x59f53c
0059f574  f3 ff ff ea                                      b #0x59f548
0059f578  04 00 a0 e1                                      mov r0, r4
0059f57c  85 ff ff eb                                      bl #0x59f398
0059f580  00 30 96 e5                                      ldr r3, [r6]
0059f584  00 00 53 e3                                      cmp r3, #0
0059f588  e0 ff ff 1a                                      bne #0x59f510
0059f58c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0059f590  00 00 53 e3                                      cmp r3, #0
0059f594  00 30 85 e5                                      str r3, [r5]
0059f598  e7 ff ff 1a                                      bne #0x59f53c
0059f59c  e9 ff ff ea                                      b #0x59f548

; FUNCTION 0x0059f5a0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver13get2DMaterialEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEEb
; demangled: glitch::video::C2DDriver::get2DMaterial(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)
; decoder-mode: arm
0059f5a0  10 40 2d e9                                      push {r4, lr}
0059f5a4  d4 10 91 e5                                      ldr r1, [r1, #0xd4]
0059f5a8  00 40 a0 e1                                      mov r4, r0
0059f5ac  14 10 91 e5                                      ldr r1, [r1, #0x14]
0059f5b0  cb ff ff eb                                      bl #0x59f4e4
0059f5b4  04 00 a0 e1                                      mov r0, r4
0059f5b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059f5bc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver12set2DTextureERKN5boost13intrusive_ptrINS0_8ITextureEEEb
; demangled: glitch::video::C2DDriver::set2DTexture(boost::intrusive_ptr<glitch::video::ITexture> const&, bool)
; decoder-mode: arm
0059f5bc  70 40 2d e9                                      push {r4, r5, r6, lr}
0059f5c0  00 40 a0 e1                                      mov r4, r0
0059f5c4  01 50 a0 e1                                      mov r5, r1
0059f5c8  c5 ff ff eb                                      bl #0x59f4e4
0059f5cc  00 00 94 e5                                      ldr r0, [r4]
0059f5d0  08 50 95 e5                                      ldr r5, [r5, #8]
0059f5d4  00 00 50 e3                                      cmp r0, #0
0059f5d8  ff 20 a0 03                                      moveq r2, #0xff
0059f5dc  01 00 00 0a                                      beq #0x59f5e8
0059f5e0  d3 99 00 eb                                      bl #0x5c5d34
0059f5e4  00 20 a0 e1                                      mov r2, r0
0059f5e8  05 00 a0 e1                                      mov r0, r5
0059f5ec  04 10 a0 e1                                      mov r1, r4
0059f5f0  00 30 a0 e3                                      mov r3, #0
0059f5f4  5b 37 00 eb                                      bl #0x5ad368
0059f5f8  04 00 a0 e1                                      mov r0, r4
0059f5fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0059f600, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver12set2DTextureEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEEb
; demangled: glitch::video::C2DDriver::set2DTexture(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::ITexture> const&, bool)
; decoder-mode: arm
0059f600  10 40 2d e9                                      push {r4, lr}
0059f604  d4 10 91 e5                                      ldr r1, [r1, #0xd4]
0059f608  00 40 a0 e1                                      mov r4, r0
0059f60c  14 10 91 e5                                      ldr r1, [r1, #0x14]
0059f610  e9 ff ff eb                                      bl #0x59f5bc
0059f614  04 00 a0 e1                                      mov r0, r4
0059f618  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059f61c, declared_size=356, range_size=356, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver15draw2DRectangleERKNS_4core4rectIiEENS0_6SColorES7_S7_S7_PS5_
; demangled: glitch::video::C2DDriver::draw2DRectangle(glitch::core::rect<int> const&, glitch::video::SColor, glitch::video::SColor, glitch::video::SColor, glitch::video::SColor, glitch::core::rect<int> const*)
; decoder-mode: arm
0059f61c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059f620  00 40 a0 e1                                      mov r4, r0
0059f624  6c d0 4d e2                                      sub sp, sp, #0x6c
0059f628  23 0c a0 e1                                      lsr r0, r3, #0x18
0059f62c  20 00 8d e5                                      str r0, [sp, #0x20]
0059f630  72 00 ef e6                                      uxtb r0, r2
0059f634  00 c0 a0 e3                                      mov ip, #0
0059f638  3c 20 8d e5                                      str r2, [sp, #0x3c]
0059f63c  38 30 8d e5                                      str r3, [sp, #0x38]
0059f640  30 00 8d e5                                      str r0, [sp, #0x30]
0059f644  22 7c a0 e1                                      lsr r7, r2, #0x18
0059f648  53 04 e7 e7                                      ubfx r0, r3, #8, #8
0059f64c  52 84 e7 e7                                      ubfx r8, r2, #8, #8
0059f650  52 68 e7 e7                                      ubfx r6, r2, #0x10, #8
0059f654  73 20 ef e6                                      uxtb r2, r3
0059f658  53 38 e7 e7                                      ubfx r3, r3, #0x10, #8
0059f65c  24 30 8d e5                                      str r3, [sp, #0x24]
0059f660  64 c0 8d e5                                      str ip, [sp, #0x64]
0059f664  0c 30 a0 e1                                      mov r3, ip
0059f668  90 c0 dd e5                                      ldrb ip, [sp, #0x90]
0059f66c  60 50 8d e2                                      add r5, sp, #0x60
0059f670  34 10 8d e5                                      str r1, [sp, #0x34]
0059f674  1c c0 8d e5                                      str ip, [sp, #0x1c]
0059f678  91 c0 dd e5                                      ldrb ip, [sp, #0x91]
0059f67c  04 10 a0 e1                                      mov r1, r4
0059f680  2c 20 8d e5                                      str r2, [sp, #0x2c]
0059f684  18 c0 8d e5                                      str ip, [sp, #0x18]
0059f688  92 c0 dd e5                                      ldrb ip, [sp, #0x92]
0059f68c  64 20 8d e2                                      add r2, sp, #0x64
0059f690  28 00 8d e5                                      str r0, [sp, #0x28]
0059f694  14 c0 8d e5                                      str ip, [sp, #0x14]
0059f698  93 c0 dd e5                                      ldrb ip, [sp, #0x93]
0059f69c  05 00 a0 e1                                      mov r0, r5
0059f6a0  95 b0 dd e5                                      ldrb fp, [sp, #0x95]
0059f6a4  10 c0 8d e5                                      str ip, [sp, #0x10]
0059f6a8  94 c0 dd e5                                      ldrb ip, [sp, #0x94]
0059f6ac  96 90 dd e5                                      ldrb sb, [sp, #0x96]
0059f6b0  97 a0 dd e5                                      ldrb sl, [sp, #0x97]
0059f6b4  0c c0 8d e5                                      str ip, [sp, #0xc]
0059f6b8  bf ff ff eb                                      bl #0x59f5bc
0059f6bc  05 00 a0 e1                                      mov r0, r5
0059f6c0  48 c5 f5 eb                                      bl #0x310be8
0059f6c4  64 00 9d e5                                      ldr r0, [sp, #0x64]
0059f6c8  00 00 50 e3                                      cmp r0, #0
0059f6cc  00 00 00 0a                                      beq #0x59f6d4
0059f6d0  ab f7 f5 eb                                      bl #0x31d584
0059f6d4  30 00 9d e5                                      ldr r0, [sp, #0x30]
0059f6d8  08 30 94 e5                                      ldr r3, [r4, #8]
0059f6dc  20 10 9d e5                                      ldr r1, [sp, #0x20]
0059f6e0  50 00 cd e5                                      strb r0, [sp, #0x50]
0059f6e4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0059f6e8  28 00 9d e5                                      ldr r0, [sp, #0x28]
0059f6ec  57 10 cd e5                                      strb r1, [sp, #0x57]
0059f6f0  56 c0 cd e5                                      strb ip, [sp, #0x56]
0059f6f4  55 00 cd e5                                      strb r0, [sp, #0x55]
0059f6f8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0059f6fc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0059f700  10 00 9d e5                                      ldr r0, [sp, #0x10]
0059f704  54 10 cd e5                                      strb r1, [sp, #0x54]
0059f708  58 c0 cd e5                                      strb ip, [sp, #0x58]
0059f70c  5f 00 cd e5                                      strb r0, [sp, #0x5f]
0059f710  14 10 9d e5                                      ldr r1, [sp, #0x14]
0059f714  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0059f718  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0059f71c  00 20 a0 e3                                      mov r2, #0
0059f720  5e 10 cd e5                                      strb r1, [sp, #0x5e]
0059f724  5c 00 cd e5                                      strb r0, [sp, #0x5c]
0059f728  4c 20 8d e5                                      str r2, [sp, #0x4c]
0059f72c  40 20 8d e5                                      str r2, [sp, #0x40]
0059f730  44 20 8d e5                                      str r2, [sp, #0x44]
0059f734  48 20 8d e5                                      str r2, [sp, #0x48]
0059f738  53 70 cd e5                                      strb r7, [sp, #0x53]
0059f73c  52 60 cd e5                                      strb r6, [sp, #0x52]
0059f740  51 80 cd e5                                      strb r8, [sp, #0x51]
0059f744  5b a0 cd e5                                      strb sl, [sp, #0x5b]
0059f748  5a 90 cd e5                                      strb sb, [sp, #0x5a]
0059f74c  59 b0 cd e5                                      strb fp, [sp, #0x59]
0059f750  5d c0 cd e5                                      strb ip, [sp, #0x5d]
0059f754  00 c0 93 e5                                      ldr ip, [r3]
0059f758  03 00 a0 e1                                      mov r0, r3
0059f75c  98 30 9d e5                                      ldr r3, [sp, #0x98]
0059f760  34 10 9d e5                                      ldr r1, [sp, #0x34]
0059f764  40 20 8d e2                                      add r2, sp, #0x40
0059f768  00 30 8d e5                                      str r3, [sp]
0059f76c  50 30 8d e2                                      add r3, sp, #0x50
0059f770  0f e0 a0 e1                                      mov lr, pc
0059f774  34 f0 9c e5                                      ldr pc, [ip, #0x34]
0059f778  6c d0 8d e2                                      add sp, sp, #0x6c
0059f77c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0059f780, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver15draw2DRectangleEPNS0_12IVideoDriverERKNS_4core4rectIiEENS0_6SColorES9_S9_S9_PS7_
; demangled: glitch::video::C2DDriver::draw2DRectangle(glitch::video::IVideoDriver*, glitch::core::rect<int> const&, glitch::video::SColor, glitch::video::SColor, glitch::video::SColor, glitch::video::SColor, glitch::core::rect<int> const*)
; decoder-mode: arm
0059f780  08 d0 4d e2                                      sub sp, sp, #8
0059f784  04 20 8d e5                                      str r2, [sp, #4]
0059f788  00 30 8d e5                                      str r3, [sp]
0059f78c  d4 00 90 e5                                      ldr r0, [r0, #0xd4]
0059f790  14 00 90 e5                                      ldr r0, [r0, #0x14]
0059f794  08 d0 8d e2                                      add sp, sp, #8
0059f798  9f ff ff ea                                      b #0x59f61c

; FUNCTION 0x0059f79c, declared_size=224, range_size=224, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver15draw2DRectangleENS0_6SColorERKNS_4core4rectIiEEPS6_
; demangled: glitch::video::C2DDriver::draw2DRectangle(glitch::video::SColor, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0059f79c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059f7a0  3c d0 4d e2                                      sub sp, sp, #0x3c
0059f7a4  00 c0 a0 e3                                      mov ip, #0
0059f7a8  00 a0 a0 e1                                      mov sl, r0
0059f7ac  30 80 8d e2                                      add r8, sp, #0x30
0059f7b0  0c 10 8d e5                                      str r1, [sp, #0xc]
0059f7b4  08 00 a0 e1                                      mov r0, r8
0059f7b8  02 90 a0 e1                                      mov sb, r2
0059f7bc  03 b0 a0 e1                                      mov fp, r3
0059f7c0  34 20 8d e2                                      add r2, sp, #0x34
0059f7c4  0c 30 a0 e1                                      mov r3, ip
0059f7c8  21 7c a0 e1                                      lsr r7, r1, #0x18
0059f7cc  71 40 ef e6                                      uxtb r4, r1
0059f7d0  51 54 e7 e7                                      ubfx r5, r1, #8, #8
0059f7d4  51 68 e7 e7                                      ubfx r6, r1, #0x10, #8
0059f7d8  0a 10 a0 e1                                      mov r1, sl
0059f7dc  34 c0 8d e5                                      str ip, [sp, #0x34]
0059f7e0  75 ff ff eb                                      bl #0x59f5bc
0059f7e4  08 00 a0 e1                                      mov r0, r8
0059f7e8  fe c4 f5 eb                                      bl #0x310be8
0059f7ec  34 00 9d e5                                      ldr r0, [sp, #0x34]
0059f7f0  00 00 50 e3                                      cmp r0, #0
0059f7f4  00 00 00 0a                                      beq #0x59f7fc
0059f7f8  61 f7 f5 eb                                      bl #0x31d584
0059f7fc  08 30 9a e5                                      ldr r3, [sl, #8]
0059f800  00 20 a0 e3                                      mov r2, #0
0059f804  1c 20 8d e5                                      str r2, [sp, #0x1c]
0059f808  10 20 8d e5                                      str r2, [sp, #0x10]
0059f80c  14 20 8d e5                                      str r2, [sp, #0x14]
0059f810  18 20 8d e5                                      str r2, [sp, #0x18]
0059f814  2f 70 cd e5                                      strb r7, [sp, #0x2f]
0059f818  2e 60 cd e5                                      strb r6, [sp, #0x2e]
0059f81c  2d 50 cd e5                                      strb r5, [sp, #0x2d]
0059f820  2c 40 cd e5                                      strb r4, [sp, #0x2c]
0059f824  23 70 cd e5                                      strb r7, [sp, #0x23]
0059f828  22 60 cd e5                                      strb r6, [sp, #0x22]
0059f82c  21 50 cd e5                                      strb r5, [sp, #0x21]
0059f830  20 40 cd e5                                      strb r4, [sp, #0x20]
0059f834  27 70 cd e5                                      strb r7, [sp, #0x27]
0059f838  26 60 cd e5                                      strb r6, [sp, #0x26]
0059f83c  25 50 cd e5                                      strb r5, [sp, #0x25]
0059f840  24 40 cd e5                                      strb r4, [sp, #0x24]
0059f844  2b 70 cd e5                                      strb r7, [sp, #0x2b]
0059f848  2a 60 cd e5                                      strb r6, [sp, #0x2a]
0059f84c  29 50 cd e5                                      strb r5, [sp, #0x29]
0059f850  28 40 cd e5                                      strb r4, [sp, #0x28]
0059f854  00 c0 93 e5                                      ldr ip, [r3]
0059f858  03 00 a0 e1                                      mov r0, r3
0059f85c  09 10 a0 e1                                      mov r1, sb
0059f860  00 b0 8d e5                                      str fp, [sp]
0059f864  10 20 8d e2                                      add r2, sp, #0x10
0059f868  20 30 8d e2                                      add r3, sp, #0x20
0059f86c  0f e0 a0 e1                                      mov lr, pc
0059f870  34 f0 9c e5                                      ldr pc, [ip, #0x34]
0059f874  3c d0 8d e2                                      add sp, sp, #0x3c
0059f878  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0059f87c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver15draw2DRectangleEPNS0_12IVideoDriverENS0_6SColorERKNS_4core4rectIiEEPS8_
; demangled: glitch::video::C2DDriver::draw2DRectangle(glitch::video::IVideoDriver*, glitch::video::SColor, glitch::core::rect<int> const&, glitch::core::rect<int> const*)
; decoder-mode: arm
0059f87c  08 d0 4d e2                                      sub sp, sp, #8
0059f880  04 10 8d e5                                      str r1, [sp, #4]
0059f884  d4 00 90 e5                                      ldr r0, [r0, #0xd4]
0059f888  14 00 90 e5                                      ldr r0, [r0, #0x14]
0059f88c  08 d0 8d e2                                      add sp, sp, #8
0059f890  c1 ff ff ea                                      b #0x59f79c

; FUNCTION 0x0059f894, declared_size=220, range_size=220, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver11draw2DImageERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core4rectIiEESC_PSB_PKNS0_6SColorEb
; demangled: glitch::video::C2DDriver::draw2DImage(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::rect<int> const&, glitch::core::rect<int> const&, glitch::core::rect<int> const*, glitch::video::SColor const*, bool)
; decoder-mode: arm
0059f894  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0059f898  24 d0 4d e2                                      sub sp, sp, #0x24
0059f89c  44 80 9d e5                                      ldr r8, [sp, #0x44]
0059f8a0  1c 40 8d e2                                      add r4, sp, #0x1c
0059f8a4  00 50 a0 e1                                      mov r5, r0
0059f8a8  02 70 a0 e1                                      mov r7, r2
0059f8ac  03 60 a0 e1                                      mov r6, r3
0059f8b0  01 20 a0 e1                                      mov r2, r1
0059f8b4  48 30 dd e5                                      ldrb r3, [sp, #0x48]
0059f8b8  00 10 a0 e1                                      mov r1, r0
0059f8bc  04 00 a0 e1                                      mov r0, r4
0059f8c0  40 a0 9d e5                                      ldr sl, [sp, #0x40]
0059f8c4  3c ff ff eb                                      bl #0x59f5bc
0059f8c8  04 00 a0 e1                                      mov r0, r4
0059f8cc  c5 c4 f5 eb                                      bl #0x310be8
0059f8d0  00 00 58 e3                                      cmp r8, #0
0059f8d4  0a 00 00 0a                                      beq #0x59f904
0059f8d8  08 c0 95 e5                                      ldr ip, [r5, #8]
0059f8dc  07 10 a0 e1                                      mov r1, r7
0059f8e0  06 20 a0 e1                                      mov r2, r6
0059f8e4  0c 00 a0 e1                                      mov r0, ip
0059f8e8  08 30 a0 e1                                      mov r3, r8
0059f8ec  00 c0 9c e5                                      ldr ip, [ip]
0059f8f0  00 a0 8d e5                                      str sl, [sp]
0059f8f4  0f e0 a0 e1                                      mov lr, pc
0059f8f8  34 f0 9c e5                                      ldr pc, [ip, #0x34]
0059f8fc  24 d0 8d e2                                      add sp, sp, #0x24
0059f900  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0059f904  08 30 95 e5                                      ldr r3, [r5, #8]
0059f908  00 20 e0 e3                                      mvn r2, #0
0059f90c  1b 20 cd e5                                      strb r2, [sp, #0x1b]
0059f910  0c 20 cd e5                                      strb r2, [sp, #0xc]
0059f914  0d 20 cd e5                                      strb r2, [sp, #0xd]
0059f918  0e 20 cd e5                                      strb r2, [sp, #0xe]
0059f91c  0f 20 cd e5                                      strb r2, [sp, #0xf]
0059f920  10 20 cd e5                                      strb r2, [sp, #0x10]
0059f924  11 20 cd e5                                      strb r2, [sp, #0x11]
0059f928  12 20 cd e5                                      strb r2, [sp, #0x12]
0059f92c  13 20 cd e5                                      strb r2, [sp, #0x13]
0059f930  14 20 cd e5                                      strb r2, [sp, #0x14]
0059f934  15 20 cd e5                                      strb r2, [sp, #0x15]
0059f938  16 20 cd e5                                      strb r2, [sp, #0x16]
0059f93c  17 20 cd e5                                      strb r2, [sp, #0x17]
0059f940  18 20 cd e5                                      strb r2, [sp, #0x18]
0059f944  19 20 cd e5                                      strb r2, [sp, #0x19]
0059f948  1a 20 cd e5                                      strb r2, [sp, #0x1a]
0059f94c  00 c0 93 e5                                      ldr ip, [r3]
0059f950  03 00 a0 e1                                      mov r0, r3
0059f954  07 10 a0 e1                                      mov r1, r7
0059f958  06 20 a0 e1                                      mov r2, r6
0059f95c  00 a0 8d e5                                      str sl, [sp]
0059f960  0c 30 8d e2                                      add r3, sp, #0xc
0059f964  0f e0 a0 e1                                      mov lr, pc
0059f968  34 f0 9c e5                                      ldr pc, [ip, #0x34]
0059f96c  e2 ff ff ea                                      b #0x59f8fc

; FUNCTION 0x0059f970, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core4rectIiEESE_PSD_PKNS0_6SColorEb
; demangled: glitch::video::C2DDriver::draw2DImage(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::rect<int> const&, glitch::core::rect<int> const&, glitch::core::rect<int> const*, glitch::video::SColor const*, bool)
; decoder-mode: arm
0059f970  04 40 2d e5                                      str r4, [sp, #-4]!
0059f974  d4 00 90 e5                                      ldr r0, [r0, #0xd4]
0059f978  0c c0 dd e5                                      ldrb ip, [sp, #0xc]
0059f97c  08 40 9d e5                                      ldr r4, [sp, #8]
0059f980  14 00 90 e5                                      ldr r0, [r0, #0x14]
0059f984  0c c0 8d e5                                      str ip, [sp, #0xc]
0059f988  10 00 bd e8                                      ldm sp!, {r4}
0059f98c  c0 ff ff ea                                      b #0x59f894

; FUNCTION 0x0059f990, declared_size=240, range_size=240, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver11draw2DImageERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNS8_4rectIiEEPSF_NS0_6SColorEb
; demangled: glitch::video::C2DDriver::draw2DImage(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&, glitch::core::rect<int> const&, glitch::core::rect<int> const*, glitch::video::SColor, bool)
; decoder-mode: arm
0059f990  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059f994  34 d0 4d e2                                      sub sp, sp, #0x34
0059f998  2c a0 8d e2                                      add sl, sp, #0x2c
0059f99c  03 40 a0 e1                                      mov r4, r3
0059f9a0  02 90 a0 e1                                      mov sb, r2
0059f9a4  60 30 dd e5                                      ldrb r3, [sp, #0x60]
0059f9a8  01 20 a0 e1                                      mov r2, r1
0059f9ac  00 b0 a0 e1                                      mov fp, r0
0059f9b0  00 10 a0 e1                                      mov r1, r0
0059f9b4  0a 00 a0 e1                                      mov r0, sl
0059f9b8  5c 80 dd e5                                      ldrb r8, [sp, #0x5c]
0059f9bc  5d 50 dd e5                                      ldrb r5, [sp, #0x5d]
0059f9c0  5e 60 dd e5                                      ldrb r6, [sp, #0x5e]
0059f9c4  5f 70 dd e5                                      ldrb r7, [sp, #0x5f]
0059f9c8  fb fe ff eb                                      bl #0x59f5bc
0059f9cc  0a 00 a0 e1                                      mov r0, sl
0059f9d0  84 c4 f5 eb                                      bl #0x310be8
0059f9d4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0059f9d8  09 40 94 e8                                      ldm r4, {r0, r3, lr}
0059f9dc  06 00 99 e8                                      ldm sb, {r1, r2}
0059f9e0  0e 00 60 e0                                      rsb r0, r0, lr
0059f9e4  0c 30 63 e0                                      rsb r3, r3, ip
0059f9e8  c0 cf 20 e0                                      eor ip, r0, r0, asr #31
0059f9ec  c0 cf 4c e0                                      sub ip, ip, r0, asr #31
0059f9f0  c3 0f 23 e0                                      eor r0, r3, r3, asr #31
0059f9f4  c3 0f 40 e0                                      sub r0, r0, r3, asr #31
0059f9f8  08 30 9b e5                                      ldr r3, [fp, #8]
0059f9fc  02 00 80 e0                                      add r0, r0, r2
0059fa00  01 c0 8c e0                                      add ip, ip, r1
0059fa04  28 00 8d e5                                      str r0, [sp, #0x28]
0059fa08  1c 10 8d e5                                      str r1, [sp, #0x1c]
0059fa0c  20 20 8d e5                                      str r2, [sp, #0x20]
0059fa10  24 c0 8d e5                                      str ip, [sp, #0x24]
0059fa14  1b 70 cd e5                                      strb r7, [sp, #0x1b]
0059fa18  1a 60 cd e5                                      strb r6, [sp, #0x1a]
0059fa1c  19 50 cd e5                                      strb r5, [sp, #0x19]
0059fa20  18 80 cd e5                                      strb r8, [sp, #0x18]
0059fa24  0f 70 cd e5                                      strb r7, [sp, #0xf]
0059fa28  0e 60 cd e5                                      strb r6, [sp, #0xe]
0059fa2c  0d 50 cd e5                                      strb r5, [sp, #0xd]
0059fa30  0c 80 cd e5                                      strb r8, [sp, #0xc]
0059fa34  13 70 cd e5                                      strb r7, [sp, #0x13]
0059fa38  12 60 cd e5                                      strb r6, [sp, #0x12]
0059fa3c  11 50 cd e5                                      strb r5, [sp, #0x11]
0059fa40  10 80 cd e5                                      strb r8, [sp, #0x10]
0059fa44  17 70 cd e5                                      strb r7, [sp, #0x17]
0059fa48  16 60 cd e5                                      strb r6, [sp, #0x16]
0059fa4c  15 50 cd e5                                      strb r5, [sp, #0x15]
0059fa50  14 80 cd e5                                      strb r8, [sp, #0x14]
0059fa54  00 c0 93 e5                                      ldr ip, [r3]
0059fa58  03 00 a0 e1                                      mov r0, r3
0059fa5c  58 30 9d e5                                      ldr r3, [sp, #0x58]
0059fa60  04 20 a0 e1                                      mov r2, r4
0059fa64  1c 10 8d e2                                      add r1, sp, #0x1c
0059fa68  00 30 8d e5                                      str r3, [sp]
0059fa6c  0c 30 8d e2                                      add r3, sp, #0xc
0059fa70  0f e0 a0 e1                                      mov lr, pc
0059fa74  34 f0 9c e5                                      ldr pc, [ip, #0x34]
0059fa78  34 d0 8d e2                                      add sp, sp, #0x34
0059fa7c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0059fa80, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNSA_4rectIiEEPSH_NS0_6SColorEb
; demangled: glitch::video::C2DDriver::draw2DImage(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&, glitch::core::rect<int> const&, glitch::core::rect<int> const*, glitch::video::SColor, bool)
; decoder-mode: arm
0059fa80  d4 00 90 e5                                      ldr r0, [r0, #0xd4]
0059fa84  08 c0 dd e5                                      ldrb ip, [sp, #8]
0059fa88  14 00 90 e5                                      ldr r0, [r0, #0x14]
0059fa8c  08 c0 8d e5                                      str ip, [sp, #8]
0059fa90  be ff ff ea                                      b #0x59f990

; FUNCTION 0x0059fa94, declared_size=196, range_size=196, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver11draw2DImageERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKSt6vectorINS8_4rectIiEENS8_10SAllocatorISF_LNS_6memory13E_MEMORY_HINTE0EEEERKSD_IiNSG_IiLSI_0EEEEiPKSF_NS0_6SColorEb
; demangled: glitch::video::C2DDriver::draw2DImage(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&, std::vector<glitch::core::rect<int>, glitch::core::SAllocator<glitch::core::rect<int>, (glitch::memory::E_MEMORY_HINT)0> > const&, std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> > const&, int, glitch::core::rect<int> const*, glitch::video::SColor, bool)
; decoder-mode: arm
0059fa94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059fa98  1c d0 4d e2                                      sub sp, sp, #0x1c
0059fa9c  40 50 9d e5                                      ldr r5, [sp, #0x40]
0059faa0  44 00 92 e8                                      ldm r2, {r2, r6}
0059faa4  00 c0 95 e5                                      ldr ip, [r5]
0059faa8  04 40 95 e5                                      ldr r4, [r5, #4]
0059faac  00 a0 a0 e1                                      mov sl, r0
0059fab0  14 60 8d e5                                      str r6, [sp, #0x14]
0059fab4  04 40 6c e0                                      rsb r4, ip, r4
0059fab8  24 41 b0 e1                                      lsrs r4, r4, #2
0059fabc  10 20 8d e5                                      str r2, [sp, #0x10]
0059fac0  01 80 a0 e1                                      mov r8, r1
0059fac4  03 60 a0 e1                                      mov r6, r3
0059fac8  50 70 dd e5                                      ldrb r7, [sp, #0x50]
0059facc  1f 00 00 0a                                      beq #0x59fb50
0059fad0  00 30 93 e5                                      ldr r3, [r3]
0059fad4  00 40 a0 e3                                      mov r4, #0
0059fad8  10 b0 8d e2                                      add fp, sp, #0x10
0059fadc  00 90 a0 e1                                      mov sb, r0
0059fae0  04 21 9c e7                                      ldr r2, [ip, r4, lsl #2]
0059fae4  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0059fae8  09 00 a0 e1                                      mov r0, sb
0059faec  02 32 83 e0                                      add r3, r3, r2, lsl #4
0059faf0  04 c0 8d e5                                      str ip, [sp, #4]
0059faf4  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0059faf8  08 10 a0 e1                                      mov r1, r8
0059fafc  0b 20 a0 e1                                      mov r2, fp
0059fb00  00 c0 8d e5                                      str ip, [sp]
0059fb04  08 70 8d e5                                      str r7, [sp, #8]
0059fb08  a0 ff ff eb                                      bl #0x59f990
0059fb0c  00 c0 95 e5                                      ldr ip, [r5]
0059fb10  00 30 96 e5                                      ldr r3, [r6]
0059fb14  04 20 95 e5                                      ldr r2, [r5, #4]
0059fb18  04 11 9c e7                                      ldr r1, [ip, r4, lsl #2]
0059fb1c  01 40 84 e2                                      add r4, r4, #1
0059fb20  02 20 6c e0                                      rsb r2, ip, r2
0059fb24  01 02 83 e0                                      add r0, r3, r1, lsl #4
0059fb28  08 a0 90 e5                                      ldr sl, [r0, #8]
0059fb2c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0059fb30  01 12 93 e7                                      ldr r1, [r3, r1, lsl #4]
0059fb34  42 01 54 e1                                      cmp r4, r2, asr #2
0059fb38  44 20 9d e5                                      ldr r2, [sp, #0x44]
0059fb3c  00 00 8a e0                                      add r0, sl, r0
0059fb40  00 00 61 e0                                      rsb r0, r1, r0
0059fb44  02 00 80 e0                                      add r0, r0, r2
0059fb48  10 00 8d e5                                      str r0, [sp, #0x10]
0059fb4c  e3 ff ff 3a                                      blo #0x59fae0
0059fb50  1c d0 8d e2                                      add sp, sp, #0x1c
0059fb54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0059fb58, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKSt6vectorINSA_4rectIiEENSA_10SAllocatorISH_LNS_6memory13E_MEMORY_HINTE0EEEERKSF_IiNSI_IiLSK_0EEEEiPKSH_NS0_6SColorEb
; demangled: glitch::video::C2DDriver::draw2DImage(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&, std::vector<glitch::core::rect<int>, glitch::core::SAllocator<glitch::core::rect<int>, (glitch::memory::E_MEMORY_HINT)0> > const&, std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> > const&, int, glitch::core::rect<int> const*, glitch::video::SColor, bool)
; decoder-mode: arm
0059fb58  04 40 2d e5                                      str r4, [sp, #-4]!
0059fb5c  d4 00 90 e5                                      ldr r0, [r0, #0xd4]
0059fb60  14 c0 dd e5                                      ldrb ip, [sp, #0x14]
0059fb64  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0059fb68  14 00 90 e5                                      ldr r0, [r0, #0x14]
0059fb6c  14 c0 8d e5                                      str ip, [sp, #0x14]
0059fb70  10 00 bd e8                                      ldm sp!, {r4}
0059fb74  c6 ff ff ea                                      b #0x59fa94

; FUNCTION 0x0059fb78, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver11draw2DImageERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEE
; demangled: glitch::video::C2DDriver::draw2DImage(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&)
; decoder-mode: arm
0059fb78  10 40 2d e9                                      push {r4, lr}
0059fb7c  00 e0 91 e5                                      ldr lr, [r1]
0059fb80  28 d0 4d e2                                      sub sp, sp, #0x28
0059fb84  00 c0 a0 e3                                      mov ip, #0
0059fb88  14 c0 8d e5                                      str ip, [sp, #0x14]
0059fb8c  18 c0 8d e5                                      str ip, [sp, #0x18]
0059fb90  20 40 9e e5                                      ldr r4, [lr, #0x20]
0059fb94  24 e0 9e e5                                      ldr lr, [lr, #0x24]
0059fb98  00 30 e0 e3                                      mvn r3, #0
0059fb9c  27 30 cd e5                                      strb r3, [sp, #0x27]
0059fba0  24 30 cd e5                                      strb r3, [sp, #0x24]
0059fba4  25 30 cd e5                                      strb r3, [sp, #0x25]
0059fba8  26 30 cd e5                                      strb r3, [sp, #0x26]
0059fbac  20 e0 8d e5                                      str lr, [sp, #0x20]
0059fbb0  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0059fbb4  14 30 8d e2                                      add r3, sp, #0x14
0059fbb8  1c 40 8d e5                                      str r4, [sp, #0x1c]
0059fbbc  04 e0 8d e5                                      str lr, [sp, #4]
0059fbc0  08 c0 8d e5                                      str ip, [sp, #8]
0059fbc4  00 c0 8d e5                                      str ip, [sp]
0059fbc8  70 ff ff eb                                      bl #0x59f990
0059fbcc  28 d0 8d e2                                      add sp, sp, #0x28
0059fbd0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059fbd4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::video::C2DDriver
; alias: _ZN6glitch5video9C2DDriver11draw2DImageEPNS0_12IVideoDriverERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEE
; demangled: glitch::video::C2DDriver::draw2DImage(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::core::position2d<int> const&)
; decoder-mode: arm
0059fbd4  d4 30 90 e5                                      ldr r3, [r0, #0xd4]
0059fbd8  14 00 93 e5                                      ldr r0, [r3, #0x14]
0059fbdc  e5 ff ff ea                                      b #0x59fb78
