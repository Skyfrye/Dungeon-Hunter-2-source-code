; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005411d8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZNK6glitch3gui14CGUIInOutFader8getColorEv
; demangled: glitch::gui::CGUIInOutFader::getColor() const
; decoder-mode: arm
005411d8  68 31 90 e5                                      ldr r3, [r0, #0x168]
005411dc  00 00 a0 e3                                      mov r0, #0
005411e0  08 d0 4d e2                                      sub sp, sp, #8
005411e4  73 20 ef e6                                      uxtb r2, r3
005411e8  12 00 c7 e7                                      bfi r0, r2, #0, #8
005411ec  53 24 e7 e7                                      ubfx r2, r3, #8, #8
005411f0  12 04 cf e7                                      bfi r0, r2, #8, #8
005411f4  53 28 e7 e7                                      ubfx r2, r3, #0x10, #8
005411f8  12 08 d7 e7                                      bfi r0, r2, #0x10, #8
005411fc  23 3c a0 e1                                      lsr r3, r3, #0x18
00541200  13 0c df e7                                      bfi r0, r3, #0x18, #8
00541204  08 d0 8d e2                                      add sp, sp, #8
00541208  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054120c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZN6glitch3gui14CGUIInOutFader8setColorENS_5video6SColorE
; demangled: glitch::gui::CGUIInOutFader::setColor(glitch::video::SColor)
; decoder-mode: arm
0054120c  04 e0 2d e5                                      str lr, [sp, #-4]!
00541210  00 20 90 e5                                      ldr r2, [r0]
00541214  14 d0 4d e2                                      sub sp, sp, #0x14
00541218  08 10 8d e5                                      str r1, [sp, #8]
0054121c  0c 10 8d e5                                      str r1, [sp, #0xc]
00541220  04 10 8d e5                                      str r1, [sp, #4]
00541224  84 30 92 e5                                      ldr r3, [r2, #0x84]
00541228  00 20 e0 e3                                      mvn r2, #0
0054122c  0f 20 cd e5                                      strb r2, [sp, #0xf]
00541230  00 20 a0 e3                                      mov r2, #0
00541234  0b 20 cd e5                                      strb r2, [sp, #0xb]
00541238  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0054123c  08 20 9d e5                                      ldr r2, [sp, #8]
00541240  33 ff 2f e1                                      blx r3
00541244  14 d0 8d e2                                      add sp, sp, #0x14
00541248  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0054124c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZN6glitch3gui14CGUIInOutFader8setColorENS_5video6SColorES3_
; demangled: glitch::gui::CGUIInOutFader::setColor(glitch::video::SColor, glitch::video::SColor)
; decoder-mode: arm
0054124c  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00541250  60 31 90 e5                                      ldr r3, [r0, #0x160]
00541254  51 64 e7 e7                                      ubfx r6, r1, #8, #8
00541258  51 78 e7 e7                                      ubfx r7, r1, #0x10, #8
0054125c  52 c4 e7 e7                                      ubfx ip, r2, #8, #8
00541260  52 48 e7 e7                                      ubfx r4, r2, #0x10, #8
00541264  22 5c a0 e1                                      lsr r5, r2, #0x18
00541268  21 8c a0 e1                                      lsr r8, r1, #0x18
0054126c  02 00 53 e3                                      cmp r3, #2
00541270  0c d0 4d e2                                      sub sp, sp, #0xc
00541274  67 81 c0 e5                                      strb r8, [r0, #0x167]
00541278  66 71 c0 e5                                      strb r7, [r0, #0x166]
0054127c  65 61 c0 e5                                      strb r6, [r0, #0x165]
00541280  64 11 c0 e5                                      strb r1, [r0, #0x164]
00541284  6b 51 c0 e5                                      strb r5, [r0, #0x16b]
00541288  6a 41 c0 e5                                      strb r4, [r0, #0x16a]
0054128c  69 c1 c0 e5                                      strb ip, [r0, #0x169]
00541290  68 21 c0 e5                                      strb r2, [r0, #0x168]
00541294  07 00 00 0a                                      beq #0x5412b8
00541298  01 00 53 e3                                      cmp r3, #1
0054129c  64 21 90 05                                      ldreq r2, [r0, #0x164]
005412a0  68 31 90 05                                      ldreq r3, [r0, #0x168]
005412a4  6c 21 80 05                                      streq r2, [r0, #0x16c]
005412a8  70 31 80 05                                      streq r3, [r0, #0x170]
005412ac  0c d0 8d e2                                      add sp, sp, #0xc
005412b0  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
005412b4  1e ff 2f e1                                      bx lr
005412b8  68 21 90 e5                                      ldr r2, [r0, #0x168]
005412bc  64 31 90 e5                                      ldr r3, [r0, #0x164]
005412c0  6c 21 80 e5                                      str r2, [r0, #0x16c]
005412c4  70 31 80 e5                                      str r3, [r0, #0x170]
005412c8  f7 ff ff ea                                      b #0x5412ac

; FUNCTION 0x005412cc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZNK6glitch3gui14CGUIInOutFader19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIInOutFader::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005412cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005412d0  01 40 a0 e1                                      mov r4, r1
005412d4  00 50 a0 e1                                      mov r5, r0
005412d8  77 cf ff eb                                      bl #0x5350bc
005412dc  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
005412e0  04 00 a0 e1                                      mov r0, r4
005412e4  6c 21 95 e5                                      ldr r2, [r5, #0x16c]
005412e8  00 c0 94 e5                                      ldr ip, [r4]
005412ec  01 10 8f e0                                      add r1, pc, r1
005412f0  00 30 a0 e3                                      mov r3, #0
005412f4  0f e0 a0 e1                                      mov lr, pc
005412f8  18 f1 9c e5                                      ldr pc, [ip, #0x118]
005412fc  20 10 9f e5                                      ldr r1, [pc, #0x20]
00541300  04 00 a0 e1                                      mov r0, r4
00541304  70 21 95 e5                                      ldr r2, [r5, #0x170]
00541308  01 10 8f e0                                      add r1, pc, r1
0054130c  00 c0 94 e5                                      ldr ip, [r4]
00541310  00 30 a0 e3                                      mov r3, #0
00541314  0f e0 a0 e1                                      mov lr, pc
00541318  18 f1 9c e5                                      ldr pc, [ip, #0x118]
0054131c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00541320  54 d1 39 00 48 d1 39 00                          .byte 0x54, 0xd1, 0x39, 0x00, 0x48, 0xd1, 0x39, 0x00

; FUNCTION 0x00541348, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZN6glitch3gui14CGUIInOutFader7fadeOutEj
; demangled: glitch::gui::CGUIInOutFader::fadeOut(unsigned int)
; decoder-mode: arm
00541348  70 40 2d e9                                      push {r4, r5, r6, lr}
0054134c  00 40 a0 e1                                      mov r4, r0
00541350  01 50 a0 e1                                      mov r5, r1
00541354  e2 26 03 eb                                      bl #0x60aee4
00541358  02 30 a0 e3                                      mov r3, #2
0054135c  05 50 80 e0                                      add r5, r0, r5
00541360  60 31 84 e5                                      str r3, [r4, #0x160]
00541364  58 01 84 e5                                      str r0, [r4, #0x158]
00541368  5c 51 84 e5                                      str r5, [r4, #0x15c]
0054136c  04 00 a0 e1                                      mov r0, r4
00541370  00 30 94 e5                                      ldr r3, [r4]
00541374  64 11 94 e5                                      ldr r1, [r4, #0x164]
00541378  68 21 94 e5                                      ldr r2, [r4, #0x168]
0054137c  0f e0 a0 e1                                      mov lr, pc
00541380  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00541384  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00541388, declared_size=64, range_size=64, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZN6glitch3gui14CGUIInOutFader6fadeInEj
; demangled: glitch::gui::CGUIInOutFader::fadeIn(unsigned int)
; decoder-mode: arm
00541388  70 40 2d e9                                      push {r4, r5, r6, lr}
0054138c  00 40 a0 e1                                      mov r4, r0
00541390  01 50 a0 e1                                      mov r5, r1
00541394  d2 26 03 eb                                      bl #0x60aee4
00541398  01 30 a0 e3                                      mov r3, #1
0054139c  05 50 80 e0                                      add r5, r0, r5
005413a0  60 31 84 e5                                      str r3, [r4, #0x160]
005413a4  58 01 84 e5                                      str r0, [r4, #0x158]
005413a8  5c 51 84 e5                                      str r5, [r4, #0x15c]
005413ac  04 00 a0 e1                                      mov r0, r4
005413b0  00 30 94 e5                                      ldr r3, [r4]
005413b4  64 11 94 e5                                      ldr r1, [r4, #0x164]
005413b8  68 21 94 e5                                      ldr r2, [r4, #0x168]
005413bc  0f e0 a0 e1                                      mov lr, pc
005413c0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
005413c4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005413c8, declared_size=32, range_size=32, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZNK6glitch3gui14CGUIInOutFader7isReadyEv
; demangled: glitch::gui::CGUIInOutFader::isReady() const
; decoder-mode: arm
005413c8  10 40 2d e9                                      push {r4, lr}
005413cc  00 40 a0 e1                                      mov r4, r0
005413d0  c3 26 03 eb                                      bl #0x60aee4
005413d4  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
005413d8  03 00 50 e1                                      cmp r0, r3
005413dc  00 00 a0 93                                      movls r0, #0
005413e0  01 00 a0 83                                      movhi r0, #1
005413e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005416ac, declared_size=244, range_size=244, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZN6glitch3gui14CGUIInOutFaderC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIInOutFader::CGUIInOutFader(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
005416ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005416b0  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
005416b4  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005416b8  d8 e0 9f e5                                      ldr lr, [pc, #0xd8]
005416bc  05 50 8f e0                                      add r5, pc, r5
005416c0  0c c0 95 e7                                      ldr ip, [r5, ip]
005416c4  0e e0 95 e7                                      ldr lr, [r5, lr]
005416c8  01 70 a0 e3                                      mov r7, #1
005416cc  24 60 9c e5                                      ldr r6, [ip, #0x24]
005416d0  08 e0 8e e2                                      add lr, lr, #8
005416d4  7c 71 80 e5                                      str r7, [r0, #0x17c]
005416d8  78 e1 80 e5                                      str lr, [r0, #0x178]
005416dc  74 61 80 e5                                      str r6, [r0, #0x174]
005416e0  20 d0 4d e2                                      sub sp, sp, #0x20
005416e4  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
005416e8  28 80 9c e5                                      ldr r8, [ip, #0x28]
005416ec  40 60 9d e5                                      ldr r6, [sp, #0x40]
005416f0  5d 7f 80 e2                                      add r7, r0, #0x174
005416f4  0e 80 87 e7                                      str r8, [r7, lr]
005416f8  00 e0 96 e5                                      ldr lr, [r6]
005416fc  00 07 96 e9                                      ldmib r6, {r8, sb, sl}
00541700  01 70 a0 e1                                      mov r7, r1
00541704  02 60 a0 e1                                      mov r6, r2
00541708  00 30 8d e5                                      str r3, [sp]
0054170c  04 10 8c e2                                      add r1, ip, #4
00541710  07 20 a0 e1                                      mov r2, r7
00541714  0c c0 8d e2                                      add ip, sp, #0xc
00541718  06 30 a0 e1                                      mov r3, r6
0054171c  00 40 a0 e1                                      mov r4, r0
00541720  0c e0 8d e5                                      str lr, [sp, #0xc]
00541724  04 c0 8d e5                                      str ip, [sp, #4]
00541728  10 80 8d e5                                      str r8, [sp, #0x10]
0054172c  14 90 8d e5                                      str sb, [sp, #0x14]
00541730  18 a0 8d e5                                      str sl, [sp, #0x18]
00541734  2c ff ff eb                                      bl #0x5413ec
00541738  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0054173c  00 30 a0 e3                                      mov r3, #0
00541740  1f 30 cd e5                                      strb r3, [sp, #0x1f]
00541744  02 20 95 e7                                      ldr r2, [r5, r2]
00541748  1c 30 cd e5                                      strb r3, [sp, #0x1c]
0054174c  1d 30 cd e5                                      strb r3, [sp, #0x1d]
00541750  dc 10 82 e2                                      add r1, r2, #0xdc
00541754  10 00 82 e2                                      add r0, r2, #0x10
00541758  bc 20 82 e2                                      add r2, r2, #0xbc
0054175c  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00541760  00 00 84 e5                                      str r0, [r4]
00541764  74 21 84 e5                                      str r2, [r4, #0x174]
00541768  78 11 84 e5                                      str r1, [r4, #0x178]
0054176c  60 31 84 e5                                      str r3, [r4, #0x160]
00541770  58 31 84 e5                                      str r3, [r4, #0x158]
00541774  5c 31 84 e5                                      str r3, [r4, #0x15c]
00541778  04 00 a0 e1                                      mov r0, r4
0054177c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00541780  a1 fe ff eb                                      bl #0x54120c
00541784  04 00 a0 e1                                      mov r0, r4
00541788  20 d0 8d e2                                      add sp, sp, #0x20
0054178c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00541790  d4 33 45 00 40 22 00 00 44 2b 00 00 00 46 00 00  .byte 0xd4, 0x33, 0x45, 0x00, 0x40, 0x22, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00

; FUNCTION 0x005417a0, declared_size=164, range_size=164, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZN6glitch3gui14CGUIInOutFaderC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIInOutFader::CGUIInOutFader(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
005417a0  70 40 2d e9                                      push {r4, r5, r6, lr}
005417a4  20 d0 4d e2                                      sub sp, sp, #0x20
005417a8  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005417ac  01 50 a0 e1                                      mov r5, r1
005417b0  04 10 81 e2                                      add r1, r1, #4
005417b4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
005417b8  00 60 9c e5                                      ldr r6, [ip]
005417bc  10 10 9c e9                                      ldmib ip, {r4, ip}
005417c0  18 e0 8d e5                                      str lr, [sp, #0x18]
005417c4  10 40 8d e5                                      str r4, [sp, #0x10]
005417c8  14 c0 8d e5                                      str ip, [sp, #0x14]
005417cc  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005417d0  00 40 a0 e1                                      mov r4, r0
005417d4  0c 60 8d e5                                      str r6, [sp, #0xc]
005417d8  00 c0 8d e5                                      str ip, [sp]
005417dc  0c c0 8d e2                                      add ip, sp, #0xc
005417e0  04 c0 8d e5                                      str ip, [sp, #4]
005417e4  00 ff ff eb                                      bl #0x5413ec
005417e8  00 20 95 e5                                      ldr r2, [r5]
005417ec  00 30 a0 e3                                      mov r3, #0
005417f0  04 00 a0 e1                                      mov r0, r4
005417f4  00 20 84 e5                                      str r2, [r4]
005417f8  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
005417fc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00541800  02 10 84 e7                                      str r1, [r4, r2]
00541804  00 20 94 e5                                      ldr r2, [r4]
00541808  20 10 95 e5                                      ldr r1, [r5, #0x20]
0054180c  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00541810  1f 30 cd e5                                      strb r3, [sp, #0x1f]
00541814  1c 30 cd e5                                      strb r3, [sp, #0x1c]
00541818  1d 30 cd e5                                      strb r3, [sp, #0x1d]
0054181c  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00541820  02 10 84 e7                                      str r1, [r4, r2]
00541824  60 31 84 e5                                      str r3, [r4, #0x160]
00541828  58 31 84 e5                                      str r3, [r4, #0x158]
0054182c  5c 31 84 e5                                      str r3, [r4, #0x15c]
00541830  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00541834  74 fe ff eb                                      bl #0x54120c
00541838  04 00 a0 e1                                      mov r0, r4
0054183c  20 d0 8d e2                                      add sp, sp, #0x20
00541840  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005418b8, declared_size=112, range_size=112, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZN6glitch3gui14CGUIInOutFaderD1Ev
; demangled: glitch::gui::CGUIInOutFader::~CGUIInOutFader()
; decoder-mode: arm
005418b8  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
005418bc  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
005418c0  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
005418c4  03 30 8f e0                                      add r3, pc, r3
005418c8  01 10 93 e7                                      ldr r1, [r3, r1]
005418cc  10 40 2d e9                                      push {r4, lr}
005418d0  02 20 93 e7                                      ldr r2, [r3, r2]
005418d4  04 c0 91 e5                                      ldr ip, [r1, #4]
005418d8  00 40 a0 e1                                      mov r4, r0
005418dc  dc e0 82 e2                                      add lr, r2, #0xdc
005418e0  bc 20 82 e2                                      add r2, r2, #0xbc
005418e4  74 21 80 e5                                      str r2, [r0, #0x174]
005418e8  78 e1 80 e5                                      str lr, [r0, #0x178]
005418ec  00 c0 80 e5                                      str ip, [r0]
005418f0  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
005418f4  14 e0 91 e5                                      ldr lr, [r1, #0x14]
005418f8  18 20 91 e5                                      ldr r2, [r1, #0x18]
005418fc  08 10 81 e2                                      add r1, r1, #8
00541900  0c e0 80 e7                                      str lr, [r0, ip]
00541904  00 c0 90 e5                                      ldr ip, [r0]
00541908  10 30 1c e5                                      ldr r3, [ip, #-0x10]
0054190c  03 20 80 e7                                      str r2, [r0, r3]
00541910  c2 dd ff eb                                      bl #0x539020
00541914  04 00 a0 e1                                      mov r0, r4
00541918  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0054191c  cc 31 45 00 40 22 00 00 00 46 00 00              .byte 0xcc, 0x31, 0x45, 0x00, 0x40, 0x22, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00

; FUNCTION 0x00541928, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZTv0_n24_N6glitch3gui14CGUIInOutFaderD1Ev
; demangled: virtual thunk to glitch::gui::CGUIInOutFader::~CGUIInOutFader()
; decoder-mode: arm
00541928  00 30 90 e5                                      ldr r3, [r0]
0054192c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00541930  03 00 80 e0                                      add r0, r0, r3
00541934  df ff ff ea                                      b #0x5418b8

; FUNCTION 0x00541938, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZTv0_n12_N6glitch3gui14CGUIInOutFaderD1Ev
; demangled: virtual thunk to glitch::gui::CGUIInOutFader::~CGUIInOutFader()
; decoder-mode: arm
00541938  00 30 90 e5                                      ldr r3, [r0]
0054193c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00541940  03 00 80 e0                                      add r0, r0, r3
00541944  db ff ff ea                                      b #0x5418b8

; FUNCTION 0x00541948, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZN6glitch3gui14CGUIInOutFaderD0Ev
; demangled: glitch::gui::CGUIInOutFader::~CGUIInOutFader()
; decoder-mode: arm
00541948  10 40 2d e9                                      push {r4, lr}
0054194c  00 40 a0 e1                                      mov r4, r0
00541950  d8 ff ff eb                                      bl #0x5418b8
00541954  04 00 a0 e1                                      mov r0, r4
00541958  54 32 f7 eb                                      bl #0x30e2b0
0054195c  04 00 a0 e1                                      mov r0, r4
00541960  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00541964, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZTv0_n24_N6glitch3gui14CGUIInOutFaderD0Ev
; demangled: virtual thunk to glitch::gui::CGUIInOutFader::~CGUIInOutFader()
; decoder-mode: arm
00541964  00 30 90 e5                                      ldr r3, [r0]
00541968  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0054196c  03 00 80 e0                                      add r0, r0, r3
00541970  f4 ff ff ea                                      b #0x541948

; FUNCTION 0x00541974, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZTv0_n12_N6glitch3gui14CGUIInOutFaderD0Ev
; demangled: virtual thunk to glitch::gui::CGUIInOutFader::~CGUIInOutFader()
; decoder-mode: arm
00541974  00 30 90 e5                                      ldr r3, [r0]
00541978  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0054197c  03 00 80 e0                                      add r0, r0, r3
00541980  f0 ff ff ea                                      b #0x541948

; FUNCTION 0x00541984, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZN6glitch3gui14CGUIInOutFader21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIInOutFader::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00541984  70 40 2d e9                                      push {r4, r5, r6, lr}
00541988  00 40 a0 e1                                      mov r4, r0
0054198c  01 50 a0 e1                                      mov r5, r1
00541990  a8 df ff eb                                      bl #0x539838
00541994  64 10 9f e5                                      ldr r1, [pc, #0x64]
00541998  00 30 95 e5                                      ldr r3, [r5]
0054199c  05 00 a0 e1                                      mov r0, r5
005419a0  01 10 8f e0                                      add r1, pc, r1
005419a4  0f e0 a0 e1                                      mov lr, pc
005419a8  24 f1 93 e5                                      ldr pc, [r3, #0x124]
005419ac  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005419b0  6d 11 c4 e5                                      strb r1, [r4, #0x16d]
005419b4  48 10 9f e5                                      ldr r1, [pc, #0x48]
005419b8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005419bc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005419c0  6e 21 c4 e5                                      strb r2, [r4, #0x16e]
005419c4  6c 01 c4 e5                                      strb r0, [r4, #0x16c]
005419c8  6f 31 c4 e5                                      strb r3, [r4, #0x16f]
005419cc  01 10 8f e0                                      add r1, pc, r1
005419d0  00 30 95 e5                                      ldr r3, [r5]
005419d4  05 00 a0 e1                                      mov r0, r5
005419d8  0f e0 a0 e1                                      mov lr, pc
005419dc  24 f1 93 e5                                      ldr pc, [r3, #0x124]
005419e0  50 1c e7 e7                                      ubfx r1, r0, #0x18, #8
005419e4  50 24 e7 e7                                      ubfx r2, r0, #8, #8
005419e8  50 38 e7 e7                                      ubfx r3, r0, #0x10, #8
005419ec  73 11 c4 e5                                      strb r1, [r4, #0x173]
005419f0  71 21 c4 e5                                      strb r2, [r4, #0x171]
005419f4  72 31 c4 e5                                      strb r3, [r4, #0x172]
005419f8  70 01 c4 e5                                      strb r0, [r4, #0x170]
005419fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00541a00  a0 ca 39 00 84 ca 39 00                          .byte 0xa0, 0xca, 0x39, 0x00, 0x84, 0xca, 0x39, 0x00

; FUNCTION 0x00541a84, declared_size=296, range_size=296, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZN6glitch3gui14CGUIInOutFader4drawEv
; demangled: glitch::gui::CGUIInOutFader::draw()
; decoder-mode: arm
00541a84  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00541a88  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00541a8c  14 d0 4d e2                                      sub sp, sp, #0x14
00541a90  00 40 a0 e1                                      mov r4, r0
00541a94  00 00 53 e3                                      cmp r3, #0
00541a98  02 00 00 0a                                      beq #0x541aa8
00541a9c  60 31 90 e5                                      ldr r3, [r0, #0x160]
00541aa0  00 00 53 e3                                      cmp r3, #0
00541aa4  01 00 00 1a                                      bne #0x541ab0
00541aa8  14 d0 8d e2                                      add sp, sp, #0x14
00541aac  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00541ab0  0b 25 03 eb                                      bl #0x60aee4
00541ab4  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00541ab8  00 60 a0 e1                                      mov r6, r0
00541abc  03 00 50 e1                                      cmp r0, r3
00541ac0  04 00 00 9a                                      bls #0x541ad8
00541ac4  60 31 94 e5                                      ldr r3, [r4, #0x160]
00541ac8  01 00 53 e3                                      cmp r3, #1
00541acc  00 30 a0 03                                      moveq r3, #0
00541ad0  60 31 84 05                                      streq r3, [r4, #0x160]
00541ad4  f3 ff ff 0a                                      beq #0x541aa8
00541ad8  50 31 94 e5                                      ldr r3, [r4, #0x150]
00541adc  03 00 a0 e1                                      mov r0, r3
00541ae0  00 30 93 e5                                      ldr r3, [r3]
00541ae4  0f e0 a0 e1                                      mov lr, pc
00541ae8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00541aec  00 50 50 e2                                      subs r5, r0, #0
00541af0  1e 00 00 0a                                      beq #0x541b70
00541af4  5c 71 94 e5                                      ldr r7, [r4, #0x15c]
00541af8  07 00 56 e1                                      cmp r6, r7
00541afc  00 20 a0 83                                      movhi r2, #0
00541b00  09 00 00 8a                                      bhi #0x541b2c
00541b04  07 00 66 e0                                      rsb r0, r6, r7
00541b08  f4 31 f7 eb                                      bl #0x30e2e0
00541b0c  00 60 a0 e1                                      mov r6, r0
00541b10  58 01 94 e5                                      ldr r0, [r4, #0x158]
00541b14  07 00 60 e0                                      rsb r0, r0, r7
00541b18  f0 31 f7 eb                                      bl #0x30e2e0
00541b1c  00 10 a0 e1                                      mov r1, r0
00541b20  06 00 a0 e1                                      mov r0, r6
00541b24  5a 34 f7 eb                                      bl #0x30ec94
00541b28  00 20 a0 e1                                      mov r2, r0
00541b2c  17 1e 84 e2                                      add r1, r4, #0x170
00541b30  5b 0f 84 e2                                      add r0, r4, #0x16c
00541b34  14 fd ff eb                                      bl #0x540f8c
00541b38  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00541b3c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00541b40  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00541b44  01 10 cd e5                                      strb r1, [sp, #1]
00541b48  02 20 cd e5                                      strb r2, [sp, #2]
00541b4c  03 30 cd e5                                      strb r3, [sp, #3]
00541b50  00 00 cd e5                                      strb r0, [sp]
00541b54  00 c0 9d e5                                      ldr ip, [sp]
00541b58  05 00 a0 e1                                      mov r0, r5
00541b5c  38 20 84 e2                                      add r2, r4, #0x38
00541b60  0c 10 a0 e1                                      mov r1, ip
00541b64  48 30 84 e2                                      add r3, r4, #0x48
00541b68  0c c0 8d e5                                      str ip, [sp, #0xc]
00541b6c  42 77 01 eb                                      bl #0x59f87c
00541b70  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00541b74  00 00 53 e3                                      cmp r3, #0
00541b78  04 50 b4 15                                      ldrne r5, [r4, #4]!
00541b7c  c9 ff ff 0a                                      beq #0x541aa8
00541b80  04 00 55 e1                                      cmp r5, r4
00541b84  c7 ff ff 0a                                      beq #0x541aa8
00541b88  08 30 95 e5                                      ldr r3, [r5, #8]
00541b8c  03 00 a0 e1                                      mov r0, r3
00541b90  00 30 93 e5                                      ldr r3, [r3]
00541b94  0f e0 a0 e1                                      mov lr, pc
00541b98  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00541b9c  00 50 95 e5                                      ldr r5, [r5]
00541ba0  04 00 55 e1                                      cmp r5, r4
00541ba4  f7 ff ff 1a                                      bne #0x541b88
00541ba8  be ff ff ea                                      b #0x541aa8

; FUNCTION 0x00541bac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZTv0_n20_N6glitch3gui14CGUIInOutFader21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIInOutFader::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00541bac  00 30 90 e5                                      ldr r3, [r0]
00541bb0  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00541bb4  03 00 80 e0                                      add r0, r0, r3
00541bb8  71 ff ff ea                                      b #0x541984

; FUNCTION 0x00541bbc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIInOutFader
; alias: _ZTv0_n16_NK6glitch3gui14CGUIInOutFader19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIInOutFader::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00541bbc  00 30 90 e5                                      ldr r3, [r0]
00541bc0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00541bc4  03 00 80 e0                                      add r0, r0, r3
00541bc8  bf fd ff ea                                      b #0x5412cc
