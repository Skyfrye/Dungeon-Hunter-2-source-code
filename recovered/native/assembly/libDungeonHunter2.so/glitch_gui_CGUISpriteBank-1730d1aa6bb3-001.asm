; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0054f790, declared_size=144, range_size=144, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBankC2EPNS0_15IGUIEnvironmentE
; demangled: glitch::gui::CGUISpriteBank::CGUISpriteBank(glitch::gui::IGUIEnvironment*)
; decoder-mode: arm
0054f790  80 30 9f e5                                      ldr r3, [pc, #0x80]
0054f794  80 20 9f e5                                      ldr r2, [pc, #0x80]
0054f798  10 40 2d e9                                      push {r4, lr}
0054f79c  03 30 8f e0                                      add r3, pc, r3
0054f7a0  02 20 93 e7                                      ldr r2, [r3, r2]
0054f7a4  00 40 a0 e1                                      mov r4, r0
0054f7a8  01 c0 a0 e3                                      mov ip, #1
0054f7ac  00 00 a0 e3                                      mov r0, #0
0054f7b0  08 20 82 e2                                      add r2, r2, #8
0054f7b4  00 00 51 e3                                      cmp r1, #0
0054f7b8  04 10 84 e8                                      stm r4, {r2, ip}
0054f7bc  30 00 84 e5                                      str r0, [r4, #0x30]
0054f7c0  08 00 84 e5                                      str r0, [r4, #8]
0054f7c4  0c 00 84 e5                                      str r0, [r4, #0xc]
0054f7c8  10 00 84 e5                                      str r0, [r4, #0x10]
0054f7cc  14 00 84 e5                                      str r0, [r4, #0x14]
0054f7d0  18 00 84 e5                                      str r0, [r4, #0x18]
0054f7d4  1c 00 84 e5                                      str r0, [r4, #0x1c]
0054f7d8  20 00 84 e5                                      str r0, [r4, #0x20]
0054f7dc  24 00 84 e5                                      str r0, [r4, #0x24]
0054f7e0  28 00 84 e5                                      str r0, [r4, #0x28]
0054f7e4  2c 10 84 e5                                      str r1, [r4, #0x2c]
0054f7e8  08 00 00 0a                                      beq #0x54f810
0054f7ec  00 30 91 e5                                      ldr r3, [r1]
0054f7f0  01 00 a0 e1                                      mov r0, r1
0054f7f4  0f e0 a0 e1                                      mov lr, pc
0054f7f8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0054f7fc  00 00 50 e3                                      cmp r0, #0
0054f800  30 00 84 e5                                      str r0, [r4, #0x30]
0054f804  04 30 90 15                                      ldrne r3, [r0, #4]
0054f808  01 30 83 12                                      addne r3, r3, #1
0054f80c  04 30 80 15                                      strne r3, [r0, #4]
0054f810  04 00 a0 e1                                      mov r0, r4
0054f814  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0054f818  f4 52 44 00 24 0a 00 00                          .byte 0xf4, 0x52, 0x44, 0x00, 0x24, 0x0a, 0x00, 0x00

; FUNCTION 0x0054f820, declared_size=144, range_size=144, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBankC1EPNS0_15IGUIEnvironmentE
; demangled: glitch::gui::CGUISpriteBank::CGUISpriteBank(glitch::gui::IGUIEnvironment*)
; decoder-mode: arm
0054f820  80 30 9f e5                                      ldr r3, [pc, #0x80]
0054f824  80 20 9f e5                                      ldr r2, [pc, #0x80]
0054f828  10 40 2d e9                                      push {r4, lr}
0054f82c  03 30 8f e0                                      add r3, pc, r3
0054f830  02 20 93 e7                                      ldr r2, [r3, r2]
0054f834  00 40 a0 e1                                      mov r4, r0
0054f838  01 c0 a0 e3                                      mov ip, #1
0054f83c  00 00 a0 e3                                      mov r0, #0
0054f840  08 20 82 e2                                      add r2, r2, #8
0054f844  00 00 51 e3                                      cmp r1, #0
0054f848  04 10 84 e8                                      stm r4, {r2, ip}
0054f84c  30 00 84 e5                                      str r0, [r4, #0x30]
0054f850  08 00 84 e5                                      str r0, [r4, #8]
0054f854  0c 00 84 e5                                      str r0, [r4, #0xc]
0054f858  10 00 84 e5                                      str r0, [r4, #0x10]
0054f85c  14 00 84 e5                                      str r0, [r4, #0x14]
0054f860  18 00 84 e5                                      str r0, [r4, #0x18]
0054f864  1c 00 84 e5                                      str r0, [r4, #0x1c]
0054f868  20 00 84 e5                                      str r0, [r4, #0x20]
0054f86c  24 00 84 e5                                      str r0, [r4, #0x24]
0054f870  28 00 84 e5                                      str r0, [r4, #0x28]
0054f874  2c 10 84 e5                                      str r1, [r4, #0x2c]
0054f878  08 00 00 0a                                      beq #0x54f8a0
0054f87c  00 30 91 e5                                      ldr r3, [r1]
0054f880  01 00 a0 e1                                      mov r0, r1
0054f884  0f e0 a0 e1                                      mov lr, pc
0054f888  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0054f88c  00 00 50 e3                                      cmp r0, #0
0054f890  30 00 84 e5                                      str r0, [r4, #0x30]
0054f894  04 30 90 15                                      ldrne r3, [r0, #4]
0054f898  01 30 83 12                                      addne r3, r3, #1
0054f89c  04 30 80 15                                      strne r3, [r0, #4]
0054f8a0  04 00 a0 e1                                      mov r0, r4
0054f8a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0054f8a8  64 52 44 00 24 0a 00 00                          .byte 0x64, 0x52, 0x44, 0x00, 0x24, 0x0a, 0x00, 0x00

; FUNCTION 0x0054f8b0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBank12getPositionsEv
; demangled: glitch::gui::CGUISpriteBank::getPositions()
; decoder-mode: arm
0054f8b0  14 00 80 e2                                      add r0, r0, #0x14
0054f8b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054f8b8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBank10getSpritesEv
; demangled: glitch::gui::CGUISpriteBank::getSprites()
; decoder-mode: arm
0054f8b8  08 00 80 e2                                      add r0, r0, #8
0054f8bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054f8c0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZNK6glitch3gui14CGUISpriteBank15getTextureCountEv
; demangled: glitch::gui::CGUISpriteBank::getTextureCount() const
; decoder-mode: arm
0054f8c0  20 30 90 e5                                      ldr r3, [r0, #0x20]
0054f8c4  24 00 90 e5                                      ldr r0, [r0, #0x24]
0054f8c8  00 00 63 e0                                      rsb r0, r3, r0
0054f8cc  40 01 a0 e1                                      asr r0, r0, #2
0054f8d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054f8d4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZNK6glitch3gui14CGUISpriteBank10getTextureEj
; demangled: glitch::gui::CGUISpriteBank::getTexture(unsigned int) const
; decoder-mode: arm
0054f8d4  24 c0 91 e5                                      ldr ip, [r1, #0x24]
0054f8d8  20 30 91 e5                                      ldr r3, [r1, #0x20]
0054f8dc  0c c0 63 e0                                      rsb ip, r3, ip
0054f8e0  4c 01 52 e1                                      cmp r2, ip, asr #2
0054f8e4  06 00 00 2a                                      bhs #0x54f904
0054f8e8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0054f8ec  00 00 53 e3                                      cmp r3, #0
0054f8f0  00 30 80 e5                                      str r3, [r0]
0054f8f4  04 20 93 15                                      ldrne r2, [r3, #4]
0054f8f8  01 20 82 12                                      addne r2, r2, #1
0054f8fc  04 20 83 15                                      strne r2, [r3, #4]
0054f900  1e ff 2f e1                                      bx lr
0054f904  00 30 a0 e3                                      mov r3, #0
0054f908  00 30 80 e5                                      str r3, [r0]
0054f90c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054f930, declared_size=440, range_size=440, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBank12draw2DSpriteEjRKNS_4core10position2dIiEEPKNS2_4rectIiEERKNS_5video6SColorEjjbb
; demangled: glitch::gui::CGUISpriteBank::draw2DSprite(unsigned int, glitch::core::position2d<int> const&, glitch::core::rect<int> const*, glitch::video::SColor const&, unsigned int, unsigned int, bool, bool)
; decoder-mode: arm
0054f930  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054f934  00 40 a0 e1                                      mov r4, r0
0054f938  08 00 90 e5                                      ldr r0, [r0, #8]
0054f93c  02 b0 a0 e1                                      mov fp, r2
0054f940  24 d0 4d e2                                      sub sp, sp, #0x24
0054f944  01 22 80 e0                                      add r2, r0, r1, lsl #4
0054f948  01 62 90 e7                                      ldr r6, [r0, r1, lsl #4]
0054f94c  04 70 92 e5                                      ldr r7, [r2, #4]
0054f950  01 50 a0 e1                                      mov r5, r1
0054f954  03 a0 a0 e1                                      mov sl, r3
0054f958  07 00 56 e1                                      cmp r6, r7
0054f95c  54 80 dd e5                                      ldrb r8, [sp, #0x54]
0054f960  58 90 dd e5                                      ldrb sb, [sp, #0x58]
0054f964  49 00 00 0a                                      beq #0x54fa90
0054f968  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0054f96c  03 00 60 e0                                      rsb r0, r0, r3
0054f970  40 02 51 e1                                      cmp r1, r0, asr #4
0054f974  45 00 00 2a                                      bhs #0x54fa90
0054f978  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0054f97c  00 00 51 e3                                      cmp r1, #0
0054f980  0a 00 00 0a                                      beq #0x54f9b0
0054f984  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0054f988  50 00 9d e5                                      ldr r0, [sp, #0x50]
0054f98c  00 00 63 e0                                      rsb r0, r3, r0
0054f990  ad fc f6 eb                                      bl #0x30ec4c
0054f994  00 00 58 e3                                      cmp r8, #0
0054f998  00 10 a0 e1                                      mov r1, r0
0054f99c  3d 00 00 0a                                      beq #0x54fa98
0054f9a0  07 10 66 e0                                      rsb r1, r6, r7
0054f9a4  c1 11 a0 e1                                      asr r1, r1, #3
0054f9a8  5f fc f6 eb                                      bl #0x30eb2c
0054f9ac  81 11 a0 e1                                      lsl r1, r1, #3
0054f9b0  01 20 96 e7                                      ldr r2, [r6, r1]
0054f9b4  20 30 94 e5                                      ldr r3, [r4, #0x20]
0054f9b8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0054f9bc  00 00 53 e3                                      cmp r3, #0
0054f9c0  32 00 00 0a                                      beq #0x54fa90
0054f9c4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0054f9c8  04 20 93 e5                                      ldr r2, [r3, #4]
0054f9cc  01 20 82 e2                                      add r2, r2, #1
0054f9d0  04 20 83 e5                                      str r2, [r3, #4]
0054f9d4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054f9d8  00 00 50 e3                                      cmp r0, #0
0054f9dc  2b 00 00 0a                                      beq #0x54fa90
0054f9e0  08 c0 94 e5                                      ldr ip, [r4, #8]
0054f9e4  14 20 94 e5                                      ldr r2, [r4, #0x14]
0054f9e8  18 30 94 e5                                      ldr r3, [r4, #0x18]
0054f9ec  05 c2 9c e7                                      ldr ip, [ip, r5, lsl #4]
0054f9f0  03 30 62 e0                                      rsb r3, r2, r3
0054f9f4  01 10 8c e0                                      add r1, ip, r1
0054f9f8  04 10 91 e5                                      ldr r1, [r1, #4]
0054f9fc  43 02 51 e1                                      cmp r1, r3, asr #4
0054fa00  21 00 00 2a                                      bhs #0x54fa8c
0054fa04  00 00 59 e3                                      cmp sb, #0
0054fa08  01 52 82 e0                                      add r5, r2, r1, lsl #4
0054fa0c  27 00 00 0a                                      beq #0x54fab0
0054fa10  40 40 9b e8                                      ldm fp, {r6, lr}
0054fa14  30 40 94 e5                                      ldr r4, [r4, #0x30]
0054fa18  18 e0 8d e5                                      str lr, [sp, #0x18]
0054fa1c  14 60 8d e5                                      str r6, [sp, #0x14]
0054fa20  01 22 92 e7                                      ldr r2, [r2, r1, lsl #4]
0054fa24  04 30 95 e5                                      ldr r3, [r5, #4]
0054fa28  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0054fa2c  08 c0 95 e5                                      ldr ip, [r5, #8]
0054fa30  0d 00 a0 e1                                      mov r0, sp
0054fa34  01 30 63 e0                                      rsb r3, r3, r1
0054fa38  0c c0 62 e0                                      rsb ip, r2, ip
0054fa3c  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0054fa40  ac cf 8c e0                                      add ip, ip, ip, lsr #31
0054fa44  04 a0 80 e4                                      str sl, [r0], #4
0054fa48  cc c0 46 e0                                      sub ip, r6, ip, asr #1
0054fa4c  c3 30 4e e0                                      sub r3, lr, r3, asr #1
0054fa50  48 10 9d e5                                      ldr r1, [sp, #0x48]
0054fa54  04 20 a0 e3                                      mov r2, #4
0054fa58  14 c0 8d e5                                      str ip, [sp, #0x14]
0054fa5c  18 30 8d e5                                      str r3, [sp, #0x18]
0054fa60  80 fb f6 eb                                      bl #0x30e868
0054fa64  01 c0 a0 e3                                      mov ip, #1
0054fa68  04 00 a0 e1                                      mov r0, r4
0054fa6c  1c 10 8d e2                                      add r1, sp, #0x1c
0054fa70  14 20 8d e2                                      add r2, sp, #0x14
0054fa74  05 30 a0 e1                                      mov r3, r5
0054fa78  08 c0 8d e5                                      str ip, [sp, #8]
0054fa7c  ff 3f 01 eb                                      bl #0x59fa80
0054fa80  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054fa84  00 00 50 e3                                      cmp r0, #0
0054fa88  00 00 00 0a                                      beq #0x54fa90
0054fa8c  bc 36 f7 eb                                      bl #0x31d584
0054fa90  24 d0 8d e2                                      add sp, sp, #0x24
0054fa94  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0054fa98  07 70 66 e0                                      rsb r7, r6, r7
0054fa9c  c7 71 a0 e1                                      asr r7, r7, #3
0054faa0  07 00 50 e1                                      cmp r0, r7
0054faa4  01 10 47 22                                      subhs r1, r7, #1
0054faa8  81 11 a0 e1                                      lsl r1, r1, #3
0054faac  bf ff ff ea                                      b #0x54f9b0
0054fab0  30 40 94 e5                                      ldr r4, [r4, #0x30]
0054fab4  0d 00 a0 e1                                      mov r0, sp
0054fab8  04 a0 80 e4                                      str sl, [r0], #4
0054fabc  48 10 9d e5                                      ldr r1, [sp, #0x48]
0054fac0  04 20 a0 e3                                      mov r2, #4
0054fac4  67 fb f6 eb                                      bl #0x30e868
0054fac8  01 c0 a0 e3                                      mov ip, #1
0054facc  04 00 a0 e1                                      mov r0, r4
0054fad0  1c 10 8d e2                                      add r1, sp, #0x1c
0054fad4  0b 20 a0 e1                                      mov r2, fp
0054fad8  05 30 a0 e1                                      mov r3, r5
0054fadc  08 c0 8d e5                                      str ip, [sp, #8]
0054fae0  e6 3f 01 eb                                      bl #0x59fa80
0054fae4  e5 ff ff ea                                      b #0x54fa80

; FUNCTION 0x0054fbc0, declared_size=168, range_size=168, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBankD1Ev
; demangled: glitch::gui::CGUISpriteBank::~CGUISpriteBank()
; decoder-mode: arm
0054fbc0  70 40 2d e9                                      push {r4, r5, r6, lr}
0054fbc4  94 30 9f e5                                      ldr r3, [pc, #0x94]
0054fbc8  94 20 9f e5                                      ldr r2, [pc, #0x94]
0054fbcc  20 10 90 e5                                      ldr r1, [r0, #0x20]
0054fbd0  03 30 8f e0                                      add r3, pc, r3
0054fbd4  00 50 a0 e1                                      mov r5, r0
0054fbd8  24 00 90 e5                                      ldr r0, [r0, #0x24]
0054fbdc  02 20 93 e7                                      ldr r2, [r3, r2]
0054fbe0  00 30 61 e0                                      rsb r3, r1, r0
0054fbe4  08 20 82 e2                                      add r2, r2, #8
0054fbe8  23 31 b0 e1                                      lsrs r3, r3, #2
0054fbec  00 20 85 e5                                      str r2, [r5]
0054fbf0  0c 00 00 0a                                      beq #0x54fc28
0054fbf4  00 40 a0 e3                                      mov r4, #0
0054fbf8  04 60 a0 e1                                      mov r6, r4
0054fbfc  04 01 91 e7                                      ldr r0, [r1, r4, lsl #2]
0054fc00  04 61 81 e7                                      str r6, [r1, r4, lsl #2]
0054fc04  01 40 84 e2                                      add r4, r4, #1
0054fc08  00 00 50 e3                                      cmp r0, #0
0054fc0c  00 00 00 0a                                      beq #0x54fc14
0054fc10  5b 36 f7 eb                                      bl #0x31d584
0054fc14  20 10 95 e5                                      ldr r1, [r5, #0x20]
0054fc18  24 30 95 e5                                      ldr r3, [r5, #0x24]
0054fc1c  03 30 61 e0                                      rsb r3, r1, r3
0054fc20  43 01 54 e1                                      cmp r4, r3, asr #2
0054fc24  f4 ff ff 3a                                      blo #0x54fbfc
0054fc28  30 00 95 e5                                      ldr r0, [r5, #0x30]
0054fc2c  00 00 50 e3                                      cmp r0, #0
0054fc30  00 00 00 0a                                      beq #0x54fc38
0054fc34  52 36 f7 eb                                      bl #0x31d584
0054fc38  20 00 85 e2                                      add r0, r5, #0x20
0054fc3c  ba ff ff eb                                      bl #0x54fb2c
0054fc40  14 00 95 e5                                      ldr r0, [r5, #0x14]
0054fc44  00 00 50 e3                                      cmp r0, #0
0054fc48  00 00 00 0a                                      beq #0x54fc50
0054fc4c  ff 01 f7 eb                                      bl #0x310450
0054fc50  08 00 85 e2                                      add r0, r5, #8
0054fc54  c7 ff ff eb                                      bl #0x54fb78
0054fc58  05 00 a0 e1                                      mov r0, r5
0054fc5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0054fc60  c0 4e 44 00 24 0a 00 00                          .byte 0xc0, 0x4e, 0x44, 0x00, 0x24, 0x0a, 0x00, 0x00

; FUNCTION 0x0054fc68, declared_size=168, range_size=168, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBankD2Ev
; demangled: glitch::gui::CGUISpriteBank::~CGUISpriteBank()
; decoder-mode: arm
0054fc68  70 40 2d e9                                      push {r4, r5, r6, lr}
0054fc6c  94 30 9f e5                                      ldr r3, [pc, #0x94]
0054fc70  94 20 9f e5                                      ldr r2, [pc, #0x94]
0054fc74  20 10 90 e5                                      ldr r1, [r0, #0x20]
0054fc78  03 30 8f e0                                      add r3, pc, r3
0054fc7c  00 50 a0 e1                                      mov r5, r0
0054fc80  24 00 90 e5                                      ldr r0, [r0, #0x24]
0054fc84  02 20 93 e7                                      ldr r2, [r3, r2]
0054fc88  00 30 61 e0                                      rsb r3, r1, r0
0054fc8c  08 20 82 e2                                      add r2, r2, #8
0054fc90  23 31 b0 e1                                      lsrs r3, r3, #2
0054fc94  00 20 85 e5                                      str r2, [r5]
0054fc98  0c 00 00 0a                                      beq #0x54fcd0
0054fc9c  00 40 a0 e3                                      mov r4, #0
0054fca0  04 60 a0 e1                                      mov r6, r4
0054fca4  04 01 91 e7                                      ldr r0, [r1, r4, lsl #2]
0054fca8  04 61 81 e7                                      str r6, [r1, r4, lsl #2]
0054fcac  01 40 84 e2                                      add r4, r4, #1
0054fcb0  00 00 50 e3                                      cmp r0, #0
0054fcb4  00 00 00 0a                                      beq #0x54fcbc
0054fcb8  31 36 f7 eb                                      bl #0x31d584
0054fcbc  20 10 95 e5                                      ldr r1, [r5, #0x20]
0054fcc0  24 30 95 e5                                      ldr r3, [r5, #0x24]
0054fcc4  03 30 61 e0                                      rsb r3, r1, r3
0054fcc8  43 01 54 e1                                      cmp r4, r3, asr #2
0054fccc  f4 ff ff 3a                                      blo #0x54fca4
0054fcd0  30 00 95 e5                                      ldr r0, [r5, #0x30]
0054fcd4  00 00 50 e3                                      cmp r0, #0
0054fcd8  00 00 00 0a                                      beq #0x54fce0
0054fcdc  28 36 f7 eb                                      bl #0x31d584
0054fce0  20 00 85 e2                                      add r0, r5, #0x20
0054fce4  90 ff ff eb                                      bl #0x54fb2c
0054fce8  14 00 95 e5                                      ldr r0, [r5, #0x14]
0054fcec  00 00 50 e3                                      cmp r0, #0
0054fcf0  00 00 00 0a                                      beq #0x54fcf8
0054fcf4  d5 01 f7 eb                                      bl #0x310450
0054fcf8  08 00 85 e2                                      add r0, r5, #8
0054fcfc  9d ff ff eb                                      bl #0x54fb78
0054fd00  05 00 a0 e1                                      mov r0, r5
0054fd04  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0054fd08  18 4e 44 00 24 0a 00 00                          .byte 0x18, 0x4e, 0x44, 0x00, 0x24, 0x0a, 0x00, 0x00

; FUNCTION 0x0054fd10, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBankD0Ev
; demangled: glitch::gui::CGUISpriteBank::~CGUISpriteBank()
; decoder-mode: arm
0054fd10  10 40 2d e9                                      push {r4, lr}
0054fd14  00 40 a0 e1                                      mov r4, r0
0054fd18  a8 ff ff eb                                      bl #0x54fbc0
0054fd1c  04 00 a0 e1                                      mov r0, r4
0054fd20  62 f9 f6 eb                                      bl #0x30e2b0
0054fd24  04 00 a0 e1                                      mov r0, r4
0054fd28  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0054fe14, declared_size=72, range_size=72, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBank10addTextureERKN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::gui::CGUISpriteBank::addTexture(boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
0054fe14  24 30 90 e5                                      ldr r3, [r0, #0x24]
0054fe18  28 c0 90 e5                                      ldr ip, [r0, #0x28]
0054fe1c  01 20 a0 e1                                      mov r2, r1
0054fe20  0c 00 53 e1                                      cmp r3, ip
0054fe24  09 00 00 0a                                      beq #0x54fe50
0054fe28  00 20 91 e5                                      ldr r2, [r1]
0054fe2c  00 20 83 e5                                      str r2, [r3]
0054fe30  00 00 52 e3                                      cmp r2, #0
0054fe34  04 30 92 15                                      ldrne r3, [r2, #4]
0054fe38  01 30 83 12                                      addne r3, r3, #1
0054fe3c  04 30 82 15                                      strne r3, [r2, #4]
0054fe40  24 30 90 e5                                      ldr r3, [r0, #0x24]
0054fe44  04 30 83 e2                                      add r3, r3, #4
0054fe48  24 30 80 e5                                      str r3, [r0, #0x24]
0054fe4c  1e ff 2f e1                                      bx lr
0054fe50  20 00 80 e2                                      add r0, r0, #0x20
0054fe54  03 10 a0 e1                                      mov r1, r3
0054fe58  b8 ff ff ea                                      b #0x54fd40

; FUNCTION 0x0054fe5c, declared_size=184, range_size=184, mode=arm
; class-group: glitch::gui::CGUISpriteBank
; alias: _ZN6glitch3gui14CGUISpriteBank10setTextureEjRKN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::gui::CGUISpriteBank::setTexture(unsigned int, boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
0054fe5c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0054fe60  0c d0 4d e2                                      sub sp, sp, #0xc
0054fe64  00 40 a0 e1                                      mov r4, r0
0054fe68  01 60 a0 e1                                      mov r6, r1
0054fe6c  02 a0 a0 e1                                      mov sl, r2
0054fe70  20 80 80 e2                                      add r8, r0, #0x20
0054fe74  00 50 a0 e3                                      mov r5, #0
0054fe78  04 70 8d e2                                      add r7, sp, #4
0054fe7c  24 10 94 e5                                      ldr r1, [r4, #0x24]
0054fe80  20 30 94 e5                                      ldr r3, [r4, #0x20]
0054fe84  01 20 63 e0                                      rsb r2, r3, r1
0054fe88  42 01 56 e1                                      cmp r6, r2, asr #2
0054fe8c  10 00 00 9a                                      bls #0x54fed4
0054fe90  28 30 94 e5                                      ldr r3, [r4, #0x28]
0054fe94  04 50 8d e5                                      str r5, [sp, #4]
0054fe98  03 00 51 e1                                      cmp r1, r3
0054fe9c  18 00 00 0a                                      beq #0x54ff04
0054fea0  00 50 81 e5                                      str r5, [r1]
0054fea4  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054fea8  04 30 83 e2                                      add r3, r3, #4
0054feac  24 30 84 e5                                      str r3, [r4, #0x24]
0054feb0  04 00 9d e5                                      ldr r0, [sp, #4]
0054feb4  00 00 50 e3                                      cmp r0, #0
0054feb8  ef ff ff 0a                                      beq #0x54fe7c
0054febc  b0 35 f7 eb                                      bl #0x31d584
0054fec0  24 10 94 e5                                      ldr r1, [r4, #0x24]
0054fec4  20 30 94 e5                                      ldr r3, [r4, #0x20]
0054fec8  01 20 63 e0                                      rsb r2, r3, r1
0054fecc  42 01 56 e1                                      cmp r6, r2, asr #2
0054fed0  ee ff ff 8a                                      bhi #0x54fe90
0054fed4  00 20 9a e5                                      ldr r2, [sl]
0054fed8  00 00 52 e3                                      cmp r2, #0
0054fedc  04 10 92 15                                      ldrne r1, [r2, #4]
0054fee0  01 10 81 12                                      addne r1, r1, #1
0054fee4  04 10 82 15                                      strne r1, [r2, #4]
0054fee8  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
0054feec  06 21 83 e7                                      str r2, [r3, r6, lsl #2]
0054fef0  00 00 50 e3                                      cmp r0, #0
0054fef4  00 00 00 0a                                      beq #0x54fefc
0054fef8  a1 35 f7 eb                                      bl #0x31d584
0054fefc  0c d0 8d e2                                      add sp, sp, #0xc
0054ff00  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0054ff04  08 00 a0 e1                                      mov r0, r8
0054ff08  07 20 a0 e1                                      mov r2, r7
0054ff0c  8b ff ff eb                                      bl #0x54fd40
0054ff10  e6 ff ff ea                                      b #0x54feb0
