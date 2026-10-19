; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005455b8, declared_size=608, range_size=608, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZN6glitch3gui8CGUIMenu15recalculateSizeEv
; demangled: glitch::gui::CGUIMenu::recalculateSize()
; decoder-mode: arm
005455b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005455bc  50 31 90 e5                                      ldr r3, [r0, #0x150]
005455c0  3c d0 4d e2                                      sub sp, sp, #0x3c
005455c4  00 40 a0 e1                                      mov r4, r0
005455c8  03 00 a0 e1                                      mov r0, r3
005455cc  00 30 93 e5                                      ldr r3, [r3]
005455d0  0f e0 a0 e1                                      mov lr, pc
005455d4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005455d8  03 10 a0 e3                                      mov r1, #3
005455dc  00 30 90 e5                                      ldr r3, [r0]
005455e0  00 50 a0 e1                                      mov r5, r0
005455e4  0f e0 a0 e1                                      mov lr, pc
005455e8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005455ec  00 90 50 e2                                      subs sb, r0, #0
005455f0  79 00 00 0a                                      beq #0x5457dc
005455f4  18 22 9f e5                                      ldr r2, [pc, #0x218]
005455f8  00 50 a0 e3                                      mov r5, #0
005455fc  20 50 8d e5                                      str r5, [sp, #0x20]
00545600  24 50 8d e5                                      str r5, [sp, #0x24]
00545604  28 50 8d e5                                      str r5, [sp, #0x28]
00545608  2c 50 8d e5                                      str r5, [sp, #0x2c]
0054560c  00 30 99 e5                                      ldr r3, [sb]
00545610  02 20 8f e0                                      add r2, pc, r2
00545614  30 00 8d e2                                      add r0, sp, #0x30
00545618  09 10 a0 e1                                      mov r1, sb
0054561c  0f e0 a0 e1                                      mov lr, pc
00545620  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00545624  5c 61 94 e5                                      ldr r6, [r4, #0x15c]
00545628  60 31 94 e5                                      ldr r3, [r4, #0x160]
0054562c  34 a0 9d e5                                      ldr sl, [sp, #0x34]
00545630  03 30 66 e0                                      rsb r3, r6, r3
00545634  5f 00 53 e3                                      cmp r3, #0x5f
00545638  05 a0 8a e2                                      add sl, sl, #5
0054563c  05 70 a0 d1                                      movle r7, r5
00545640  30 00 00 da                                      ble #0x545708
00545644  08 30 8d e2                                      add r3, sp, #8
00545648  05 80 a0 e1                                      mov r8, r5
0054564c  05 70 a0 e1                                      mov r7, r5
00545650  04 30 8d e5                                      str r3, [sp, #4]
00545654  05 b0 a0 e1                                      mov fp, r5
00545658  16 00 00 ea                                      b #0x5456b8
0054565c  4c b0 86 e5                                      str fp, [r6, #0x4c]
00545660  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00545664  05 30 83 e0                                      add r3, r3, r5
00545668  50 a0 83 e5                                      str sl, [r3, #0x50]
0054566c  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00545670  01 80 88 e2                                      add r8, r8, #1
00545674  05 30 83 e0                                      add r3, r3, r5
00545678  54 70 83 e5                                      str r7, [r3, #0x54]
0054567c  5c 61 94 e5                                      ldr r6, [r4, #0x15c]
00545680  60 31 94 e5                                      ldr r3, [r4, #0x160]
00545684  05 20 86 e0                                      add r2, r6, r5
00545688  03 30 66 e0                                      rsb r3, r6, r3
0054568c  c3 32 a0 e1                                      asr r3, r3, #5
00545690  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
00545694  03 21 83 e0                                      add r2, r3, r3, lsl #2
00545698  60 50 85 e2                                      add r5, r5, #0x60
0054569c  02 22 82 e0                                      add r2, r2, r2, lsl #4
005456a0  01 70 87 e0                                      add r7, r7, r1
005456a4  02 24 82 e0                                      add r2, r2, r2, lsl #8
005456a8  02 28 82 e0                                      add r2, r2, r2, lsl #16
005456ac  82 30 83 e0                                      add r3, r3, r2, lsl #1
005456b0  03 00 58 e1                                      cmp r8, r3
005456b4  13 00 00 aa                                      bge #0x545708
005456b8  05 60 86 e0                                      add r6, r6, r5
005456bc  48 30 d6 e5                                      ldrb r3, [r6, #0x48]
005456c0  00 00 53 e3                                      cmp r3, #0
005456c4  e4 ff ff 1a                                      bne #0x54565c
005456c8  00 30 99 e5                                      ldr r3, [sb]
005456cc  44 20 96 e5                                      ldr r2, [r6, #0x44]
005456d0  04 00 9d e5                                      ldr r0, [sp, #4]
005456d4  09 10 a0 e1                                      mov r1, sb
005456d8  0f e0 a0 e1                                      mov lr, pc
005456dc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005456e0  08 30 9d e5                                      ldr r3, [sp, #8]
005456e4  4c 30 86 e5                                      str r3, [r6, #0x4c]
005456e8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005456ec  50 30 86 e5                                      str r3, [r6, #0x50]
005456f0  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
005456f4  05 30 83 e0                                      add r3, r3, r5
005456f8  4c 20 93 e5                                      ldr r2, [r3, #0x4c]
005456fc  14 20 82 e2                                      add r2, r2, #0x14
00545700  4c 20 83 e5                                      str r2, [r3, #0x4c]
00545704  d8 ff ff ea                                      b #0x54566c
00545708  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054570c  04 00 a0 e1                                      mov r0, r4
00545710  20 10 8d e2                                      add r1, sp, #0x20
00545714  00 00 53 e3                                      cmp r3, #0
00545718  40 70 93 15                                      ldrne r7, [r3, #0x40]
0054571c  38 30 93 15                                      ldrne r3, [r3, #0x38]
00545720  2c a0 8d e5                                      str sl, [sp, #0x2c]
00545724  07 70 63 10                                      rsbne r7, r3, r7
00545728  28 70 8d e5                                      str r7, [sp, #0x28]
0054572c  03 bc ff eb                                      bl #0x534740
00545730  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
00545734  60 c1 94 e5                                      ldr ip, [r4, #0x160]
00545738  0c 30 62 e0                                      rsb r3, r2, ip
0054573c  5f 00 53 e3                                      cmp r3, #0x5f
00545740  23 00 00 da                                      ble #0x5457d4
00545744  00 50 a0 e3                                      mov r5, #0
00545748  05 60 a0 e1                                      mov r6, r5
0054574c  10 70 8d e2                                      add r7, sp, #0x10
00545750  05 30 82 e0                                      add r3, r2, r5
00545754  58 00 93 e5                                      ldr r0, [r3, #0x58]
00545758  01 60 86 e2                                      add r6, r6, #1
0054575c  60 50 85 e2                                      add r5, r5, #0x60
00545760  00 00 50 e3                                      cmp r0, #0
00545764  11 00 00 0a                                      beq #0x5457b0
00545768  54 30 93 e5                                      ldr r3, [r3, #0x54]
0054576c  40 c0 90 e5                                      ldr ip, [r0, #0x40]
00545770  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00545774  44 10 90 e5                                      ldr r1, [r0, #0x44]
00545778  38 e0 90 e5                                      ldr lr, [r0, #0x38]
0054577c  0c c0 83 e0                                      add ip, r3, ip
00545780  05 c0 4c e2                                      sub ip, ip, #5
00545784  0a 20 62 e0                                      rsb r2, r2, sl
00545788  01 20 82 e0                                      add r2, r2, r1
0054578c  0c c0 6e e0                                      rsb ip, lr, ip
00545790  07 10 a0 e1                                      mov r1, r7
00545794  18 c0 8d e5                                      str ip, [sp, #0x18]
00545798  1c 20 8d e5                                      str r2, [sp, #0x1c]
0054579c  10 30 8d e5                                      str r3, [sp, #0x10]
005457a0  14 a0 8d e5                                      str sl, [sp, #0x14]
005457a4  e5 bb ff eb                                      bl #0x534740
005457a8  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
005457ac  60 c1 94 e5                                      ldr ip, [r4, #0x160]
005457b0  0c 30 62 e0                                      rsb r3, r2, ip
005457b4  c3 32 a0 e1                                      asr r3, r3, #5
005457b8  03 11 83 e0                                      add r1, r3, r3, lsl #2
005457bc  01 12 81 e0                                      add r1, r1, r1, lsl #4
005457c0  01 14 81 e0                                      add r1, r1, r1, lsl #8
005457c4  01 18 81 e0                                      add r1, r1, r1, lsl #16
005457c8  81 30 83 e0                                      add r3, r3, r1, lsl #1
005457cc  03 00 56 e1                                      cmp r6, r3
005457d0  de ff ff ba                                      blt #0x545750
005457d4  3c d0 8d e2                                      add sp, sp, #0x3c
005457d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005457dc  24 30 94 e5                                      ldr r3, [r4, #0x24]
005457e0  00 00 53 e3                                      cmp r3, #0
005457e4  fa ff ff 0a                                      beq #0x5457d4
005457e8  05 00 a0 e1                                      mov r0, r5
005457ec  00 20 95 e5                                      ldr r2, [r5]
005457f0  01 10 a0 e3                                      mov r1, #1
005457f4  40 50 93 e5                                      ldr r5, [r3, #0x40]
005457f8  0f e0 a0 e1                                      mov lr, pc
005457fc  18 f0 92 e5                                      ldr pc, [r2, #0x18]
00545800  2c 90 84 e5                                      str sb, [r4, #0x2c]
00545804  34 00 84 e5                                      str r0, [r4, #0x34]
00545808  30 50 84 e5                                      str r5, [r4, #0x30]
0054580c  28 90 84 e5                                      str sb, [r4, #0x28]
00545810  ef ff ff ea                                      b #0x5457d4
; mapping-symbol data/literal pool
00545814  50 8e 39 00                                      .byte 0x50, 0x8e, 0x39, 0x00

; FUNCTION 0x00545818, declared_size=68, range_size=68, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZNK6glitch3gui8CGUIMenu8getHRectERKNS0_15CGUIContextMenu5SItemERKNS_4core4rectIiEE
; demangled: glitch::gui::CGUIMenu::getHRect(glitch::gui::CGUIContextMenu::SItem const&, glitch::core::rect<int> const&) const
; decoder-mode: arm
00545818  04 40 2d e5                                      str r4, [sp, #-4]!
0054581c  00 c0 93 e5                                      ldr ip, [r3]
00545820  00 c0 80 e5                                      str ip, [r0]
00545824  04 40 93 e5                                      ldr r4, [r3, #4]
00545828  04 40 80 e5                                      str r4, [r0, #4]
0054582c  08 40 93 e5                                      ldr r4, [r3, #8]
00545830  08 40 80 e5                                      str r4, [r0, #8]
00545834  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00545838  0c 30 80 e5                                      str r3, [r0, #0xc]
0054583c  54 30 92 e5                                      ldr r3, [r2, #0x54]
00545840  03 c0 8c e0                                      add ip, ip, r3
00545844  00 c0 80 e5                                      str ip, [r0]
00545848  4c 30 92 e5                                      ldr r3, [r2, #0x4c]
0054584c  03 c0 8c e0                                      add ip, ip, r3
00545850  08 c0 80 e5                                      str ip, [r0, #8]
00545854  10 00 bd e8                                      ldm sp!, {r4}
00545858  1e ff 2f e1                                      bx lr

; FUNCTION 0x0054585c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZNK6glitch3gui8CGUIMenu7getRectERKNS0_15CGUIContextMenu5SItemERKNS_4core4rectIiEE
; demangled: glitch::gui::CGUIMenu::getRect(glitch::gui::CGUIContextMenu::SItem const&, glitch::core::rect<int> const&) const
; decoder-mode: arm
0054585c  10 40 2d e9                                      push {r4, lr}
00545860  00 c0 91 e5                                      ldr ip, [r1]
00545864  00 40 a0 e1                                      mov r4, r0
00545868  0f e0 a0 e1                                      mov lr, pc
0054586c  c8 f0 9c e5                                      ldr pc, [ip, #0xc8]
00545870  04 00 a0 e1                                      mov r0, r4
00545874  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00545878, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZN6glitch3gui8CGUIMenu22updateAbsolutePositionEv
; demangled: glitch::gui::CGUIMenu::updateAbsolutePosition()
; decoder-mode: arm
00545878  24 30 90 e5                                      ldr r3, [r0, #0x24]
0054587c  00 00 53 e3                                      cmp r3, #0
00545880  40 20 93 15                                      ldrne r2, [r3, #0x40]
00545884  38 30 93 15                                      ldrne r3, [r3, #0x38]
00545888  02 30 63 10                                      rsbne r3, r3, r2
0054588c  60 30 80 15                                      strne r3, [r0, #0x60]
00545890  22 bc ff ea                                      b #0x534920

; FUNCTION 0x005458b4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZN6glitch3gui8CGUIMenuD1Ev
; demangled: glitch::gui::CGUIMenu::~CGUIMenu()
; decoder-mode: arm
005458b4  40 30 9f e5                                      ldr r3, [pc, #0x40]
005458b8  40 20 9f e5                                      ldr r2, [pc, #0x40]
005458bc  40 10 9f e5                                      ldr r1, [pc, #0x40]
005458c0  03 30 8f e0                                      add r3, pc, r3
005458c4  02 20 93 e7                                      ldr r2, [r3, r2]
005458c8  01 10 93 e7                                      ldr r1, [r3, r1]
005458cc  10 40 2d e9                                      push {r4, lr}
005458d0  46 cf 82 e2                                      add ip, r2, #0x118
005458d4  10 e0 82 e2                                      add lr, r2, #0x10
005458d8  f8 20 82 e2                                      add r2, r2, #0xf8
005458dc  00 40 a0 e1                                      mov r4, r0
005458e0  00 e0 80 e5                                      str lr, [r0]
005458e4  80 21 80 e5                                      str r2, [r0, #0x180]
005458e8  84 c1 80 e5                                      str ip, [r0, #0x184]
005458ec  04 10 81 e2                                      add r1, r1, #4
005458f0  26 a4 05 eb                                      bl #0x6ae990
005458f4  04 00 a0 e1                                      mov r0, r4
005458f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005458fc  d0 f1 44 00 7c 18 00 00 b4 25 00 00              .byte 0xd0, 0xf1, 0x44, 0x00, 0x7c, 0x18, 0x00, 0x00, 0xb4, 0x25, 0x00, 0x00

; FUNCTION 0x00545908, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZTv0_n24_N6glitch3gui8CGUIMenuD1Ev
; demangled: virtual thunk to glitch::gui::CGUIMenu::~CGUIMenu()
; decoder-mode: arm
00545908  00 30 90 e5                                      ldr r3, [r0]
0054590c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00545910  03 00 80 e0                                      add r0, r0, r3
00545914  e6 ff ff ea                                      b #0x5458b4

; FUNCTION 0x00545918, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZTv0_n12_N6glitch3gui8CGUIMenuD1Ev
; demangled: virtual thunk to glitch::gui::CGUIMenu::~CGUIMenu()
; decoder-mode: arm
00545918  00 30 90 e5                                      ldr r3, [r0]
0054591c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00545920  03 00 80 e0                                      add r0, r0, r3
00545924  e2 ff ff ea                                      b #0x5458b4

; FUNCTION 0x00545928, declared_size=232, range_size=232, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZN6glitch3gui8CGUIMenuC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIMenu::CGUIMenu(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00545928  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0054592c  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
00545930  cc e0 9f e5                                      ldr lr, [pc, #0xcc]
00545934  cc c0 9f e5                                      ldr ip, [pc, #0xcc]
00545938  05 50 8f e0                                      add r5, pc, r5
0054593c  0e e0 95 e7                                      ldr lr, [r5, lr]
00545940  0c c0 95 e7                                      ldr ip, [r5, ip]
00545944  01 60 a0 e3                                      mov r6, #1
00545948  30 70 9e e5                                      ldr r7, [lr, #0x30]
0054594c  08 c0 8c e2                                      add ip, ip, #8
00545950  88 61 80 e5                                      str r6, [r0, #0x188]
00545954  80 71 80 e5                                      str r7, [r0, #0x180]
00545958  84 c1 80 e5                                      str ip, [r0, #0x184]
0054595c  24 d0 4d e2                                      sub sp, sp, #0x24
00545960  0c 80 17 e5                                      ldr r8, [r7, #-0xc]
00545964  34 a0 9e e5                                      ldr sl, [lr, #0x34]
00545968  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0054596c  06 7d 80 e2                                      add r7, r0, #0x180
00545970  08 a0 87 e7                                      str sl, [r7, r8]
00545974  0c 90 9c e5                                      ldr sb, [ip, #0xc]
00545978  00 0d 9c e8                                      ldm ip, {r8, sl, fp}
0054597c  01 70 a0 e1                                      mov r7, r1
00545980  02 c0 a0 e1                                      mov ip, r2
00545984  04 10 8e e2                                      add r1, lr, #4
00545988  00 30 8d e5                                      str r3, [sp]
0054598c  07 20 a0 e1                                      mov r2, r7
00545990  0c 30 a0 e1                                      mov r3, ip
00545994  00 70 a0 e3                                      mov r7, #0
00545998  10 c0 8d e2                                      add ip, sp, #0x10
0054599c  00 40 a0 e1                                      mov r4, r0
005459a0  04 c0 8d e5                                      str ip, [sp, #4]
005459a4  10 80 8d e5                                      str r8, [sp, #0x10]
005459a8  14 a0 8d e5                                      str sl, [sp, #0x14]
005459ac  18 b0 8d e5                                      str fp, [sp, #0x18]
005459b0  1c 90 8d e5                                      str sb, [sp, #0x1c]
005459b4  0c 60 8d e5                                      str r6, [sp, #0xc]
005459b8  08 70 8d e5                                      str r7, [sp, #8]
005459bc  cf a1 05 eb                                      bl #0x6ae100
005459c0  44 30 9f e5                                      ldr r3, [pc, #0x44]
005459c4  04 20 a0 e3                                      mov r2, #4
005459c8  54 21 84 e5                                      str r2, [r4, #0x154]
005459cc  03 30 95 e7                                      ldr r3, [r5, r3]
005459d0  04 00 a0 e1                                      mov r0, r4
005459d4  9b 70 c4 e5                                      strb r7, [r4, #0x9b]
005459d8  46 2f 83 e2                                      add r2, r3, #0x118
005459dc  10 10 83 e2                                      add r1, r3, #0x10
005459e0  f8 30 83 e2                                      add r3, r3, #0xf8
005459e4  00 10 84 e5                                      str r1, [r4]
005459e8  80 31 84 e5                                      str r3, [r4, #0x180]
005459ec  84 21 84 e5                                      str r2, [r4, #0x184]
005459f0  f0 fe ff eb                                      bl #0x5455b8
005459f4  04 00 a0 e1                                      mov r0, r4
005459f8  24 d0 8d e2                                      add sp, sp, #0x24
005459fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00545a00  58 f1 44 00 b4 25 00 00 44 2b 00 00 7c 18 00 00  .byte 0x58, 0xf1, 0x44, 0x00, 0xb4, 0x25, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x7c, 0x18, 0x00, 0x00

; FUNCTION 0x00545a10, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZN6glitch3gui8CGUIMenuC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIMenu::CGUIMenu(glitch::gui::IGUIEnvironment*, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00545a10  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00545a14  24 d0 4d e2                                      sub sp, sp, #0x24
00545a18  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00545a1c  01 50 a0 e1                                      mov r5, r1
00545a20  00 60 a0 e3                                      mov r6, #0
00545a24  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00545a28  00 70 9c e5                                      ldr r7, [ip]
00545a2c  10 10 9c e9                                      ldmib ip, {r4, ip}
00545a30  04 10 81 e2                                      add r1, r1, #4
00545a34  14 40 8d e5                                      str r4, [sp, #0x14]
00545a38  18 c0 8d e5                                      str ip, [sp, #0x18]
00545a3c  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00545a40  00 40 a0 e1                                      mov r4, r0
00545a44  1c e0 8d e5                                      str lr, [sp, #0x1c]
00545a48  00 c0 8d e5                                      str ip, [sp]
00545a4c  10 c0 8d e2                                      add ip, sp, #0x10
00545a50  04 c0 8d e5                                      str ip, [sp, #4]
00545a54  01 c0 a0 e3                                      mov ip, #1
00545a58  0c c0 8d e5                                      str ip, [sp, #0xc]
00545a5c  10 70 8d e5                                      str r7, [sp, #0x10]
00545a60  08 60 8d e5                                      str r6, [sp, #8]
00545a64  a5 a1 05 eb                                      bl #0x6ae100
00545a68  00 30 95 e5                                      ldr r3, [r5]
00545a6c  04 00 a0 e1                                      mov r0, r4
00545a70  00 30 84 e5                                      str r3, [r4]
00545a74  28 20 95 e5                                      ldr r2, [r5, #0x28]
00545a78  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00545a7c  03 20 84 e7                                      str r2, [r4, r3]
00545a80  00 30 94 e5                                      ldr r3, [r4]
00545a84  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
00545a88  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00545a8c  03 20 84 e7                                      str r2, [r4, r3]
00545a90  04 30 a0 e3                                      mov r3, #4
00545a94  54 31 84 e5                                      str r3, [r4, #0x154]
00545a98  9b 60 c4 e5                                      strb r6, [r4, #0x9b]
00545a9c  c5 fe ff eb                                      bl #0x5455b8
00545aa0  04 00 a0 e1                                      mov r0, r4
00545aa4  24 d0 8d e2                                      add sp, sp, #0x24
00545aa8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00545c18, declared_size=708, range_size=708, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZN6glitch3gui8CGUIMenu7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIMenu::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00545c18  70 40 2d e9                                      push {r4, r5, r6, lr}
00545c1c  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
00545c20  18 d0 4d e2                                      sub sp, sp, #0x18
00545c24  00 40 a0 e1                                      mov r4, r0
00545c28  00 00 53 e3                                      cmp r3, #0
00545c2c  01 60 a0 e1                                      mov r6, r1
00545c30  08 00 00 0a                                      beq #0x545c58
00545c34  00 50 91 e5                                      ldr r5, [r1]
00545c38  00 00 55 e3                                      cmp r5, #0
00545c3c  0f 00 00 1a                                      bne #0x545c80
00545c40  10 30 91 e5                                      ldr r3, [r1, #0x10]
00545c44  00 00 53 e3                                      cmp r3, #0
00545c48  28 00 00 1a                                      bne #0x545cf0
00545c4c  08 20 91 e5                                      ldr r2, [r1, #8]
00545c50  00 00 52 e1                                      cmp r2, r0
00545c54  74 00 00 0a                                      beq #0x545e2c
00545c58  24 30 94 e5                                      ldr r3, [r4, #0x24]
00545c5c  00 00 53 e3                                      cmp r3, #0
00545c60  6f 00 00 0a                                      beq #0x545e24
00545c64  03 00 a0 e1                                      mov r0, r3
00545c68  06 10 a0 e1                                      mov r1, r6
00545c6c  00 30 93 e5                                      ldr r3, [r3]
00545c70  0f e0 a0 e1                                      mov lr, pc
00545c74  08 f0 93 e5                                      ldr pc, [r3, #8]
00545c78  18 d0 8d e2                                      add sp, sp, #0x18
00545c7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00545c80  01 00 55 e3                                      cmp r5, #1
00545c84  f3 ff ff 1a                                      bne #0x545c58
00545c88  14 30 91 e5                                      ldr r3, [r1, #0x14]
00545c8c  03 00 53 e3                                      cmp r3, #3
00545c90  24 00 00 0a                                      beq #0x545d28
00545c94  06 00 53 e3                                      cmp r3, #6
00545c98  ee ff ff 1a                                      bne #0x545c58
00545c9c  50 31 90 e5                                      ldr r3, [r0, #0x150]
00545ca0  00 10 a0 e1                                      mov r1, r0
00545ca4  03 00 a0 e1                                      mov r0, r3
00545ca8  00 30 93 e5                                      ldr r3, [r3]
00545cac  0f e0 a0 e1                                      mov lr, pc
00545cb0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00545cb4  00 00 50 e3                                      cmp r0, #0
00545cb8  57 00 00 0a                                      beq #0x545e1c
00545cbc  08 20 96 e5                                      ldr r2, [r6, #8]
00545cc0  00 10 94 e5                                      ldr r1, [r4]
00545cc4  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00545cc8  04 00 a0 e1                                      mov r0, r4
00545ccc  c0 60 91 e5                                      ldr r6, [r1, #0xc0]
00545cd0  0c 00 8d e8                                      stm sp, {r2, r3}
00545cd4  51 9e 05 eb                                      bl #0x6ad620
00545cd8  0d 10 a0 e1                                      mov r1, sp
00545cdc  00 20 a0 e1                                      mov r2, r0
00545ce0  04 00 a0 e1                                      mov r0, r4
00545ce4  36 ff 2f e1                                      blx r6
00545ce8  05 00 a0 e1                                      mov r0, r5
00545cec  e1 ff ff ea                                      b #0x545c78
00545cf0  01 00 53 e3                                      cmp r3, #1
00545cf4  d7 ff ff 1a                                      bne #0x545c58
00545cf8  08 30 91 e5                                      ldr r3, [r1, #8]
00545cfc  00 00 53 e1                                      cmp r3, r0
00545d00  d4 ff ff 1a                                      bne #0x545c58
00545d04  24 30 90 e5                                      ldr r3, [r0, #0x24]
00545d08  00 00 53 e3                                      cmp r3, #0
00545d0c  44 00 00 0a                                      beq #0x545e24
00545d10  03 00 a0 e1                                      mov r0, r3
00545d14  04 10 a0 e1                                      mov r1, r4
00545d18  00 30 93 e5                                      ldr r3, [r3]
00545d1c  0f e0 a0 e1                                      mov lr, pc
00545d20  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00545d24  cb ff ff ea                                      b #0x545c58
00545d28  50 31 90 e5                                      ldr r3, [r0, #0x150]
00545d2c  00 10 a0 e1                                      mov r1, r0
00545d30  03 00 a0 e1                                      mov r0, r3
00545d34  00 30 93 e5                                      ldr r3, [r3]
00545d38  0f e0 a0 e1                                      mov lr, pc
00545d3c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00545d40  00 00 50 e3                                      cmp r0, #0
00545d44  5d 00 00 0a                                      beq #0x545ec0
00545d48  24 30 94 e5                                      ldr r3, [r4, #0x24]
00545d4c  00 00 53 e3                                      cmp r3, #0
00545d50  04 00 00 0a                                      beq #0x545d68
00545d54  03 00 a0 e1                                      mov r0, r3
00545d58  04 10 a0 e1                                      mov r1, r4
00545d5c  00 30 93 e5                                      ldr r3, [r3]
00545d60  0f e0 a0 e1                                      mov lr, pc
00545d64  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00545d68  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00545d6c  08 30 96 e5                                      ldr r3, [r6, #8]
00545d70  04 00 a0 e1                                      mov r0, r4
00545d74  14 20 8d e5                                      str r2, [sp, #0x14]
00545d78  10 30 8d e5                                      str r3, [sp, #0x10]
00545d7c  27 9e 05 eb                                      bl #0x6ad620
00545d80  10 30 9d e5                                      ldr r3, [sp, #0x10]
00545d84  48 20 94 e5                                      ldr r2, [r4, #0x48]
00545d88  00 50 a0 e1                                      mov r5, r0
00545d8c  03 00 52 e1                                      cmp r2, r3
00545d90  09 00 00 ca                                      bgt #0x545dbc
00545d94  14 20 9d e5                                      ldr r2, [sp, #0x14]
00545d98  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00545d9c  02 00 51 e1                                      cmp r1, r2
00545da0  05 00 00 ca                                      bgt #0x545dbc
00545da4  50 10 94 e5                                      ldr r1, [r4, #0x50]
00545da8  01 00 53 e1                                      cmp r3, r1
00545dac  02 00 00 ca                                      bgt #0x545dbc
00545db0  54 30 94 e5                                      ldr r3, [r4, #0x54]
00545db4  03 00 52 e1                                      cmp r2, r3
00545db8  07 00 00 da                                      ble #0x545ddc
00545dbc  00 30 94 e5                                      ldr r3, [r4]
00545dc0  04 00 a0 e1                                      mov r0, r4
00545dc4  10 10 8d e2                                      add r1, sp, #0x10
00545dc8  0f e0 a0 e1                                      mov lr, pc
00545dcc  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
00545dd0  01 00 50 e3                                      cmp r0, #1
00545dd4  29 00 00 9a                                      bls #0x545e80
00545dd8  00 50 a0 e3                                      mov r5, #0
00545ddc  08 10 96 e5                                      ldr r1, [r6, #8]
00545de0  00 30 94 e5                                      ldr r3, [r4]
00545de4  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00545de8  04 00 a0 e1                                      mov r0, r4
00545dec  c0 30 93 e5                                      ldr r3, [r3, #0xc0]
00545df0  08 10 8d e5                                      str r1, [sp, #8]
00545df4  0c 20 8d e5                                      str r2, [sp, #0xc]
00545df8  08 10 8d e2                                      add r1, sp, #8
00545dfc  01 20 a0 e3                                      mov r2, #1
00545e00  33 ff 2f e1                                      blx r3
00545e04  00 00 55 e3                                      cmp r5, #0
00545e08  03 00 00 0a                                      beq #0x545e1c
00545e0c  04 00 a0 e1                                      mov r0, r4
00545e10  2b 9e 05 eb                                      bl #0x6ad6c4
00545e14  01 00 a0 e3                                      mov r0, #1
00545e18  96 ff ff ea                                      b #0x545c78
00545e1c  01 00 a0 e3                                      mov r0, #1
00545e20  94 ff ff ea                                      b #0x545c78
00545e24  00 00 a0 e3                                      mov r0, #0
00545e28  92 ff ff ea                                      b #0x545c78
00545e2c  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00545e30  00 00 50 e3                                      cmp r0, #0
00545e34  0c 00 00 0a                                      beq #0x545e6c
00545e38  24 30 90 e5                                      ldr r3, [r0, #0x24]
00545e3c  05 00 00 ea                                      b #0x545e58
00545e40  24 10 93 e5                                      ldr r1, [r3, #0x24]
00545e44  03 00 a0 e1                                      mov r0, r3
00545e48  03 00 52 e1                                      cmp r2, r3
00545e4c  00 00 51 13                                      cmpne r1, #0
00545e50  03 00 00 0a                                      beq #0x545e64
00545e54  01 30 a0 e1                                      mov r3, r1
00545e58  00 00 53 e3                                      cmp r3, #0
00545e5c  f7 ff ff 1a                                      bne #0x545e40
00545e60  00 30 a0 e1                                      mov r3, r0
00545e64  03 00 52 e1                                      cmp r2, r3
00545e68  7a ff ff 0a                                      beq #0x545c58
00545e6c  04 00 a0 e1                                      mov r0, r4
00545e70  13 9e 05 eb                                      bl #0x6ad6c4
00545e74  00 30 e0 e3                                      mvn r3, #0
00545e78  58 31 84 e5                                      str r3, [r4, #0x158]
00545e7c  75 ff ff ea                                      b #0x545c58
00545e80  50 31 94 e5                                      ldr r3, [r4, #0x150]
00545e84  04 10 a0 e1                                      mov r1, r4
00545e88  03 00 a0 e1                                      mov r0, r3
00545e8c  00 30 93 e5                                      ldr r3, [r3]
00545e90  0f e0 a0 e1                                      mov lr, pc
00545e94  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00545e98  00 00 50 e3                                      cmp r0, #0
00545e9c  cd ff ff 0a                                      beq #0x545dd8
00545ea0  50 31 94 e5                                      ldr r3, [r4, #0x150]
00545ea4  04 10 a0 e1                                      mov r1, r4
00545ea8  00 50 a0 e3                                      mov r5, #0
00545eac  03 00 a0 e1                                      mov r0, r3
00545eb0  00 30 93 e5                                      ldr r3, [r3]
00545eb4  0f e0 a0 e1                                      mov lr, pc
00545eb8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00545ebc  c6 ff ff ea                                      b #0x545ddc
00545ec0  50 31 94 e5                                      ldr r3, [r4, #0x150]
00545ec4  04 10 a0 e1                                      mov r1, r4
00545ec8  03 00 a0 e1                                      mov r0, r3
00545ecc  00 30 93 e5                                      ldr r3, [r3]
00545ed0  0f e0 a0 e1                                      mov lr, pc
00545ed4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00545ed8  9a ff ff ea                                      b #0x545d48

; FUNCTION 0x00545edc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZN6glitch3gui8CGUIMenuD0Ev
; demangled: glitch::gui::CGUIMenu::~CGUIMenu()
; decoder-mode: arm
00545edc  48 30 9f e5                                      ldr r3, [pc, #0x48]
00545ee0  48 20 9f e5                                      ldr r2, [pc, #0x48]
00545ee4  48 10 9f e5                                      ldr r1, [pc, #0x48]
00545ee8  03 30 8f e0                                      add r3, pc, r3
00545eec  02 20 93 e7                                      ldr r2, [r3, r2]
00545ef0  01 10 93 e7                                      ldr r1, [r3, r1]
00545ef4  10 40 2d e9                                      push {r4, lr}
00545ef8  46 cf 82 e2                                      add ip, r2, #0x118
00545efc  10 e0 82 e2                                      add lr, r2, #0x10
00545f00  f8 20 82 e2                                      add r2, r2, #0xf8
00545f04  00 40 a0 e1                                      mov r4, r0
00545f08  00 e0 80 e5                                      str lr, [r0]
00545f0c  80 21 80 e5                                      str r2, [r0, #0x180]
00545f10  84 c1 80 e5                                      str ip, [r0, #0x184]
00545f14  04 10 81 e2                                      add r1, r1, #4
00545f18  9c a2 05 eb                                      bl #0x6ae990
00545f1c  04 00 a0 e1                                      mov r0, r4
00545f20  e2 20 f7 eb                                      bl #0x30e2b0
00545f24  04 00 a0 e1                                      mov r0, r4
00545f28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00545f2c  a8 eb 44 00 7c 18 00 00 b4 25 00 00              .byte 0xa8, 0xeb, 0x44, 0x00, 0x7c, 0x18, 0x00, 0x00, 0xb4, 0x25, 0x00, 0x00

; FUNCTION 0x00545f38, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZTv0_n24_N6glitch3gui8CGUIMenuD0Ev
; demangled: virtual thunk to glitch::gui::CGUIMenu::~CGUIMenu()
; decoder-mode: arm
00545f38  00 30 90 e5                                      ldr r3, [r0]
00545f3c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00545f40  03 00 80 e0                                      add r0, r0, r3
00545f44  e4 ff ff ea                                      b #0x545edc

; FUNCTION 0x00545f48, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZTv0_n12_N6glitch3gui8CGUIMenuD0Ev
; demangled: virtual thunk to glitch::gui::CGUIMenu::~CGUIMenu()
; decoder-mode: arm
00545f48  00 30 90 e5                                      ldr r3, [r0]
00545f4c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00545f50  03 00 80 e0                                      add r0, r0, r3
00545f54  e0 ff ff ea                                      b #0x545edc

; FUNCTION 0x00545fc4, declared_size=768, range_size=768, mode=arm
; class-group: glitch::gui::CGUIMenu
; alias: _ZN6glitch3gui8CGUIMenu4drawEv
; demangled: glitch::gui::CGUIMenu::draw()
; decoder-mode: arm
00545fc4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00545fc8  98 30 d0 e5                                      ldrb r3, [r0, #0x98]
00545fcc  54 d0 4d e2                                      sub sp, sp, #0x54
00545fd0  00 40 a0 e1                                      mov r4, r0
00545fd4  00 00 53 e3                                      cmp r3, #0
00545fd8  01 00 00 1a                                      bne #0x545fe4
00545fdc  54 d0 8d e2                                      add sp, sp, #0x54
00545fe0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00545fe4  50 31 90 e5                                      ldr r3, [r0, #0x150]
00545fe8  03 00 a0 e1                                      mov r0, r3
00545fec  00 30 93 e5                                      ldr r3, [r3]
00545ff0  0f e0 a0 e1                                      mov lr, pc
00545ff4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00545ff8  03 10 a0 e3                                      mov r1, #3
00545ffc  00 30 90 e5                                      ldr r3, [r0]
00546000  00 a0 a0 e1                                      mov sl, r0
00546004  0f e0 a0 e1                                      mov lr, pc
00546008  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0054600c  00 80 a0 e1                                      mov r8, r0
00546010  7c 01 94 e5                                      ldr r0, [r4, #0x17c]
00546014  00 00 58 e1                                      cmp r8, r0
00546018  0b 00 00 0a                                      beq #0x54604c
0054601c  00 00 50 e3                                      cmp r0, #0
00546020  00 00 00 0a                                      beq #0x546028
00546024  56 5d f7 eb                                      bl #0x31d584
00546028  00 00 58 e3                                      cmp r8, #0
0054602c  7c 81 84 e5                                      str r8, [r4, #0x17c]
00546030  04 30 98 15                                      ldrne r3, [r8, #4]
00546034  04 00 a0 e1                                      mov r0, r4
00546038  01 30 83 12                                      addne r3, r3, #1
0054603c  04 30 88 15                                      strne r3, [r8, #4]
00546040  00 30 94 e5                                      ldr r3, [r4]
00546044  0f e0 a0 e1                                      mov lr, pc
00546048  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0054604c  38 00 84 e2                                      add r0, r4, #0x38
00546050  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
00546054  40 20 8d e5                                      str r2, [sp, #0x40]
00546058  44 30 8d e5                                      str r3, [sp, #0x44]
0054605c  48 20 84 e2                                      add r2, r4, #0x48
00546060  38 30 8d e2                                      add r3, sp, #0x38
00546064  10 20 8d e5                                      str r2, [sp, #0x10]
00546068  38 00 8d e5                                      str r0, [sp, #0x38]
0054606c  3c 10 8d e5                                      str r1, [sp, #0x3c]
00546070  14 30 8d e5                                      str r3, [sp, #0x14]
00546074  03 20 a0 e1                                      mov r2, r3
00546078  00 c0 9a e5                                      ldr ip, [sl]
0054607c  0a 00 a0 e1                                      mov r0, sl
00546080  04 10 a0 e1                                      mov r1, r4
00546084  10 30 9d e5                                      ldr r3, [sp, #0x10]
00546088  0f e0 a0 e1                                      mov lr, pc
0054608c  54 f0 9c e5                                      ldr pc, [ip, #0x54]
00546090  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
00546094  60 11 94 e5                                      ldr r1, [r4, #0x160]
00546098  38 50 94 e5                                      ldr r5, [r4, #0x38]
0054609c  3c c0 94 e5                                      ldr ip, [r4, #0x3c]
005460a0  40 20 94 e5                                      ldr r2, [r4, #0x40]
005460a4  44 30 94 e5                                      ldr r3, [r4, #0x44]
005460a8  01 60 60 e0                                      rsb r6, r0, r1
005460ac  5f 00 56 e3                                      cmp r6, #0x5f
005460b0  38 50 8d e5                                      str r5, [sp, #0x38]
005460b4  3c c0 8d e5                                      str ip, [sp, #0x3c]
005460b8  40 20 8d e5                                      str r2, [sp, #0x40]
005460bc  44 30 8d e5                                      str r3, [sp, #0x44]
005460c0  51 00 00 da                                      ble #0x54620c
005460c4  00 50 a0 e3                                      mov r5, #0
005460c8  38 20 84 e2                                      add r2, r4, #0x38
005460cc  28 30 8d e2                                      add r3, sp, #0x28
005460d0  18 20 8d e5                                      str r2, [sp, #0x18]
005460d4  05 60 a0 e1                                      mov r6, r5
005460d8  1c 30 8d e5                                      str r3, [sp, #0x1c]
005460dc  01 90 a0 e3                                      mov sb, #1
005460e0  0a 00 00 ea                                      b #0x546110
005460e4  01 30 60 e0                                      rsb r3, r0, r1
005460e8  c3 32 a0 e1                                      asr r3, r3, #5
005460ec  01 60 86 e2                                      add r6, r6, #1
005460f0  03 21 83 e0                                      add r2, r3, r3, lsl #2
005460f4  60 50 85 e2                                      add r5, r5, #0x60
005460f8  02 22 82 e0                                      add r2, r2, r2, lsl #4
005460fc  02 24 82 e0                                      add r2, r2, r2, lsl #8
00546100  02 28 82 e0                                      add r2, r2, r2, lsl #16
00546104  82 20 83 e0                                      add r2, r3, r2, lsl #1
00546108  02 00 56 e1                                      cmp r6, r2
0054610c  3e 00 00 aa                                      bge #0x54620c
00546110  05 20 80 e0                                      add r2, r0, r5
00546114  48 70 d2 e5                                      ldrb r7, [r2, #0x48]
00546118  00 00 57 e3                                      cmp r7, #0
0054611c  f0 ff ff 1a                                      bne #0x5460e4
00546120  18 30 9d e5                                      ldr r3, [sp, #0x18]
00546124  00 c0 94 e5                                      ldr ip, [r4]
00546128  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0054612c  04 10 a0 e1                                      mov r1, r4
00546130  0f e0 a0 e1                                      mov lr, pc
00546134  cc f0 9c e5                                      ldr pc, [ip, #0xcc]
00546138  58 31 94 e5                                      ldr r3, [r4, #0x158]
0054613c  06 00 53 e1                                      cmp r3, r6
00546140  28 30 9d e5                                      ldr r3, [sp, #0x28]
00546144  38 30 8d e5                                      str r3, [sp, #0x38]
00546148  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0054614c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00546150  30 30 9d e5                                      ldr r3, [sp, #0x30]
00546154  40 30 8d e5                                      str r3, [sp, #0x40]
00546158  34 30 9d e5                                      ldr r3, [sp, #0x34]
0054615c  44 30 8d e5                                      str r3, [sp, #0x44]
00546160  22 00 00 0a                                      beq #0x5461f0
00546164  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
00546168  08 10 a0 e3                                      mov r1, #8
0054616c  05 30 80 e0                                      add r3, r0, r5
00546170  49 20 d3 e5                                      ldrb r2, [r3, #0x49]
00546174  00 00 52 e3                                      cmp r2, #0
00546178  21 00 00 0a                                      beq #0x546204
0054617c  00 00 58 e3                                      cmp r8, #0
00546180  18 00 00 0a                                      beq #0x5461e8
00546184  00 c0 98 e5                                      ldr ip, [r8]
00546188  00 20 9a e5                                      ldr r2, [sl]
0054618c  0a 00 a0 e1                                      mov r0, sl
00546190  44 b0 93 e5                                      ldr fp, [r3, #0x44]
00546194  0c 70 9c e5                                      ldr r7, [ip, #0xc]
00546198  0f e0 a0 e1                                      mov lr, pc
0054619c  10 f0 92 e5                                      ldr pc, [r2, #0x10]
005461a0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005461a4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005461a8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005461ac  21 10 cd e5                                      strb r1, [sp, #0x21]
005461b0  22 20 cd e5                                      strb r2, [sp, #0x22]
005461b4  20 00 cd e5                                      strb r0, [sp, #0x20]
005461b8  23 30 cd e5                                      strb r3, [sp, #0x23]
005461bc  10 20 9d e5                                      ldr r2, [sp, #0x10]
005461c0  20 30 9d e5                                      ldr r3, [sp, #0x20]
005461c4  08 00 a0 e1                                      mov r0, r8
005461c8  08 20 8d e5                                      str r2, [sp, #8]
005461cc  00 90 8d e5                                      str sb, [sp]
005461d0  04 90 8d e5                                      str sb, [sp, #4]
005461d4  48 30 8d e5                                      str r3, [sp, #0x48]
005461d8  0b 10 a0 e1                                      mov r1, fp
005461dc  14 20 9d e5                                      ldr r2, [sp, #0x14]
005461e0  37 ff 2f e1                                      blx r7
005461e4  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
005461e8  60 11 94 e5                                      ldr r1, [r4, #0x160]
005461ec  bc ff ff ea                                      b #0x5460e4
005461f0  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
005461f4  05 30 80 e0                                      add r3, r0, r5
005461f8  49 20 d3 e5                                      ldrb r2, [r3, #0x49]
005461fc  00 00 52 e3                                      cmp r2, #0
00546200  0f 00 00 1a                                      bne #0x546244
00546204  09 10 a0 e3                                      mov r1, #9
00546208  db ff ff ea                                      b #0x54617c
0054620c  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00546210  00 00 53 e3                                      cmp r3, #0
00546214  04 50 b4 15                                      ldrne r5, [r4, #4]!
00546218  06 00 00 1a                                      bne #0x546238
0054621c  6e ff ff ea                                      b #0x545fdc
00546220  08 30 95 e5                                      ldr r3, [r5, #8]
00546224  03 00 a0 e1                                      mov r0, r3
00546228  00 30 93 e5                                      ldr r3, [r3]
0054622c  0f e0 a0 e1                                      mov lr, pc
00546230  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00546234  00 50 95 e5                                      ldr r5, [r5]
00546238  04 00 55 e1                                      cmp r5, r4
0054623c  f7 ff ff 1a                                      bne #0x546220
00546240  65 ff ff ea                                      b #0x545fdc
00546244  00 30 9a e5                                      ldr r3, [sl]
00546248  07 10 a0 e1                                      mov r1, r7
0054624c  0a 00 a0 e1                                      mov r0, sl
00546250  48 70 93 e5                                      ldr r7, [r3, #0x48]
00546254  0f e0 a0 e1                                      mov lr, pc
00546258  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054625c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00546260  23 30 cd e5                                      strb r3, [sp, #0x23]
00546264  14 30 9d e5                                      ldr r3, [sp, #0x14]
00546268  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0054626c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00546270  21 10 cd e5                                      strb r1, [sp, #0x21]
00546274  20 00 cd e5                                      strb r0, [sp, #0x20]
00546278  22 20 cd e5                                      strb r2, [sp, #0x22]
0054627c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00546280  04 30 8d e5                                      str r3, [sp, #4]
00546284  10 30 9d e5                                      ldr r3, [sp, #0x10]
00546288  00 90 8d e5                                      str sb, [sp]
0054628c  4c 20 8d e5                                      str r2, [sp, #0x4c]
00546290  08 30 8d e5                                      str r3, [sp, #8]
00546294  0a 00 a0 e1                                      mov r0, sl
00546298  09 30 a0 e1                                      mov r3, sb
0054629c  04 10 a0 e1                                      mov r1, r4
005462a0  37 ff 2f e1                                      blx r7
005462a4  58 31 94 e5                                      ldr r3, [r4, #0x158]
005462a8  03 00 56 e1                                      cmp r6, r3
005462ac  ac ff ff 1a                                      bne #0x546164
005462b0  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
005462b4  0b 10 a0 e3                                      mov r1, #0xb
005462b8  05 30 80 e0                                      add r3, r0, r5
005462bc  49 20 d3 e5                                      ldrb r2, [r3, #0x49]
005462c0  ab ff ff ea                                      b #0x546174
