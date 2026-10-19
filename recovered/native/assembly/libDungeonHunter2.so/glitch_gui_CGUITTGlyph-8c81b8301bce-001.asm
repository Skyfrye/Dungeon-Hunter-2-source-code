; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055ba34, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::CGUITTGlyph
; alias: _ZN6glitch3gui11CGUITTGlyphC2Ev
; demangled: glitch::gui::CGUITTGlyph::CGUITTGlyph()
; decoder-mode: arm
0055ba34  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0055ba38  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
0055ba3c  00 20 a0 e3                                      mov r2, #0
0055ba40  01 10 8f e0                                      add r1, pc, r1
0055ba44  0c c0 91 e7                                      ldr ip, [r1, ip]
0055ba48  04 40 2d e5                                      str r4, [sp, #-4]!
0055ba4c  08 c0 8c e2                                      add ip, ip, #8
0055ba50  01 40 a0 e3                                      mov r4, #1
0055ba54  4c 20 80 e5                                      str r2, [r0, #0x4c]
0055ba58  04 40 80 e5                                      str r4, [r0, #4]
0055ba5c  00 c0 80 e5                                      str ip, [r0]
0055ba60  0c 20 80 e5                                      str r2, [r0, #0xc]
0055ba64  10 20 80 e5                                      str r2, [r0, #0x10]
0055ba68  14 20 80 e5                                      str r2, [r0, #0x14]
0055ba6c  18 20 80 e5                                      str r2, [r0, #0x18]
0055ba70  1c 20 80 e5                                      str r2, [r0, #0x1c]
0055ba74  20 20 80 e5                                      str r2, [r0, #0x20]
0055ba78  24 20 80 e5                                      str r2, [r0, #0x24]
0055ba7c  28 20 80 e5                                      str r2, [r0, #0x28]
0055ba80  2c 20 80 e5                                      str r2, [r0, #0x2c]
0055ba84  30 20 80 e5                                      str r2, [r0, #0x30]
0055ba88  34 20 80 e5                                      str r2, [r0, #0x34]
0055ba8c  38 20 80 e5                                      str r2, [r0, #0x38]
0055ba90  3c 20 80 e5                                      str r2, [r0, #0x3c]
0055ba94  40 20 80 e5                                      str r2, [r0, #0x40]
0055ba98  44 20 80 e5                                      str r2, [r0, #0x44]
0055ba9c  48 20 80 e5                                      str r2, [r0, #0x48]
0055baa0  10 00 bd e8                                      ldm sp!, {r4}
0055baa4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0055baa8  50 90 43 00 00 4b 00 00                          .byte 0x50, 0x90, 0x43, 0x00, 0x00, 0x4b, 0x00, 0x00

; FUNCTION 0x0055bab0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::gui::CGUITTGlyph
; alias: _ZN6glitch3gui11CGUITTGlyphC1Ev
; demangled: glitch::gui::CGUITTGlyph::CGUITTGlyph()
; decoder-mode: arm
0055bab0  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0055bab4  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
0055bab8  00 20 a0 e3                                      mov r2, #0
0055babc  01 10 8f e0                                      add r1, pc, r1
0055bac0  0c c0 91 e7                                      ldr ip, [r1, ip]
0055bac4  04 40 2d e5                                      str r4, [sp, #-4]!
0055bac8  08 c0 8c e2                                      add ip, ip, #8
0055bacc  01 40 a0 e3                                      mov r4, #1
0055bad0  4c 20 80 e5                                      str r2, [r0, #0x4c]
0055bad4  04 40 80 e5                                      str r4, [r0, #4]
0055bad8  00 c0 80 e5                                      str ip, [r0]
0055badc  0c 20 80 e5                                      str r2, [r0, #0xc]
0055bae0  10 20 80 e5                                      str r2, [r0, #0x10]
0055bae4  14 20 80 e5                                      str r2, [r0, #0x14]
0055bae8  18 20 80 e5                                      str r2, [r0, #0x18]
0055baec  1c 20 80 e5                                      str r2, [r0, #0x1c]
0055baf0  20 20 80 e5                                      str r2, [r0, #0x20]
0055baf4  24 20 80 e5                                      str r2, [r0, #0x24]
0055baf8  28 20 80 e5                                      str r2, [r0, #0x28]
0055bafc  2c 20 80 e5                                      str r2, [r0, #0x2c]
0055bb00  30 20 80 e5                                      str r2, [r0, #0x30]
0055bb04  34 20 80 e5                                      str r2, [r0, #0x34]
0055bb08  38 20 80 e5                                      str r2, [r0, #0x38]
0055bb0c  3c 20 80 e5                                      str r2, [r0, #0x3c]
0055bb10  40 20 80 e5                                      str r2, [r0, #0x40]
0055bb14  44 20 80 e5                                      str r2, [r0, #0x44]
0055bb18  48 20 80 e5                                      str r2, [r0, #0x48]
0055bb1c  10 00 bd e8                                      ldm sp!, {r4}
0055bb20  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0055bb24  d4 8f 43 00 00 4b 00 00                          .byte 0xd4, 0x8f, 0x43, 0x00, 0x00, 0x4b, 0x00, 0x00

; FUNCTION 0x0055c6e8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::gui::CGUITTGlyph
; alias: _ZN6glitch3gui11CGUITTGlyphD1Ev
; demangled: glitch::gui::CGUITTGlyph::~CGUITTGlyph()
; decoder-mode: arm
0055c6e8  10 40 2d e9                                      push {r4, lr}
0055c6ec  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0055c6f0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0055c6f4  00 40 a0 e1                                      mov r4, r0
0055c6f8  03 30 8f e0                                      add r3, pc, r3
0055c6fc  48 00 90 e5                                      ldr r0, [r0, #0x48]
0055c700  02 20 93 e7                                      ldr r2, [r3, r2]
0055c704  00 00 50 e3                                      cmp r0, #0
0055c708  08 20 82 e2                                      add r2, r2, #8
0055c70c  00 20 84 e5                                      str r2, [r4]
0055c710  00 00 00 0a                                      beq #0x55c718
0055c714  9a 03 f7 eb                                      bl #0x31d584
0055c718  44 00 94 e5                                      ldr r0, [r4, #0x44]
0055c71c  00 00 50 e3                                      cmp r0, #0
0055c720  00 00 00 0a                                      beq #0x55c728
0055c724  96 03 f7 eb                                      bl #0x31d584
0055c728  04 00 a0 e1                                      mov r0, r4
0055c72c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055c730  98 83 43 00 00 4b 00 00                          .byte 0x98, 0x83, 0x43, 0x00, 0x00, 0x4b, 0x00, 0x00

; FUNCTION 0x0055c738, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUITTGlyph
; alias: _ZN6glitch3gui11CGUITTGlyphD0Ev
; demangled: glitch::gui::CGUITTGlyph::~CGUITTGlyph()
; decoder-mode: arm
0055c738  10 40 2d e9                                      push {r4, lr}
0055c73c  00 40 a0 e1                                      mov r4, r0
0055c740  e8 ff ff eb                                      bl #0x55c6e8
0055c744  04 00 a0 e1                                      mov r0, r4
0055c748  d8 c6 f6 eb                                      bl #0x30e2b0
0055c74c  04 00 a0 e1                                      mov r0, r4
0055c750  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0055c754, declared_size=80, range_size=80, mode=arm
; class-group: glitch::gui::CGUITTGlyph
; alias: _ZN6glitch3gui11CGUITTGlyphD2Ev
; demangled: glitch::gui::CGUITTGlyph::~CGUITTGlyph()
; decoder-mode: arm
0055c754  10 40 2d e9                                      push {r4, lr}
0055c758  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0055c75c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0055c760  00 40 a0 e1                                      mov r4, r0
0055c764  03 30 8f e0                                      add r3, pc, r3
0055c768  48 00 90 e5                                      ldr r0, [r0, #0x48]
0055c76c  02 20 93 e7                                      ldr r2, [r3, r2]
0055c770  00 00 50 e3                                      cmp r0, #0
0055c774  08 20 82 e2                                      add r2, r2, #8
0055c778  00 20 84 e5                                      str r2, [r4]
0055c77c  00 00 00 0a                                      beq #0x55c784
0055c780  7f 03 f7 eb                                      bl #0x31d584
0055c784  44 00 94 e5                                      ldr r0, [r4, #0x44]
0055c788  00 00 50 e3                                      cmp r0, #0
0055c78c  00 00 00 0a                                      beq #0x55c794
0055c790  7b 03 f7 eb                                      bl #0x31d584
0055c794  04 00 a0 e1                                      mov r0, r4
0055c798  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055c79c  2c 83 43 00 00 4b 00 00                          .byte 0x2c, 0x83, 0x43, 0x00, 0x00, 0x4b, 0x00, 0x00

; FUNCTION 0x0055c7a4, declared_size=72, range_size=72, mode=arm
; class-group: glitch::gui::CGUITTGlyph
; alias: _ZN6glitch3gui11CGUITTGlyph4FreeEPNS_5video12IVideoDriverE
; demangled: glitch::gui::CGUITTGlyph::Free(glitch::video::IVideoDriver*)
; decoder-mode: arm
0055c7a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0055c7a8  00 40 a0 e1                                      mov r4, r0
0055c7ac  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0055c7b0  01 50 a0 e1                                      mov r5, r1
0055c7b4  00 00 50 e3                                      cmp r0, #0
0055c7b8  00 00 00 0a                                      beq #0x55c7c0
0055c7bc  3d c6 f6 eb                                      bl #0x30e0b8
0055c7c0  00 30 a0 e3                                      mov r3, #0
0055c7c4  08 30 c4 e5                                      strb r3, [r4, #8]
0055c7c8  4c 30 84 e5                                      str r3, [r4, #0x4c]
0055c7cc  e0 50 95 e5                                      ldr r5, [r5, #0xe0]
0055c7d0  44 10 84 e2                                      add r1, r4, #0x44
0055c7d4  05 00 a0 e1                                      mov r0, r5
0055c7d8  b5 a1 f8 eb                                      bl #0x384eb4
0055c7dc  05 00 a0 e1                                      mov r0, r5
0055c7e0  48 10 84 e2                                      add r1, r4, #0x48
0055c7e4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0055c7e8  b1 a1 f8 ea                                      b #0x384eb4

; FUNCTION 0x0055c7ec, declared_size=252, range_size=252, mode=arm
; class-group: glitch::gui::CGUITTGlyph
; alias: _ZN6glitch3gui11CGUITTGlyphaSERKS1_
; demangled: glitch::gui::CGUITTGlyph::operator=(glitch::gui::CGUITTGlyph const&)
; decoder-mode: arm
0055c7ec  04 30 91 e5                                      ldr r3, [r1, #4]
0055c7f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0055c7f4  04 30 80 e5                                      str r3, [r0, #4]
0055c7f8  08 30 d1 e5                                      ldrb r3, [r1, #8]
0055c7fc  00 40 a0 e1                                      mov r4, r0
0055c800  01 50 a0 e1                                      mov r5, r1
0055c804  08 30 c0 e5                                      strb r3, [r0, #8]
0055c808  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0055c80c  0c 30 80 e5                                      str r3, [r0, #0xc]
0055c810  10 30 91 e5                                      ldr r3, [r1, #0x10]
0055c814  10 30 80 e5                                      str r3, [r0, #0x10]
0055c818  14 30 91 e5                                      ldr r3, [r1, #0x14]
0055c81c  14 30 80 e5                                      str r3, [r0, #0x14]
0055c820  18 30 91 e5                                      ldr r3, [r1, #0x18]
0055c824  18 30 80 e5                                      str r3, [r0, #0x18]
0055c828  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
0055c82c  1c 30 80 e5                                      str r3, [r0, #0x1c]
0055c830  20 30 91 e5                                      ldr r3, [r1, #0x20]
0055c834  20 30 80 e5                                      str r3, [r0, #0x20]
0055c838  24 30 91 e5                                      ldr r3, [r1, #0x24]
0055c83c  24 30 80 e5                                      str r3, [r0, #0x24]
0055c840  28 30 91 e5                                      ldr r3, [r1, #0x28]
0055c844  28 30 80 e5                                      str r3, [r0, #0x28]
0055c848  2c 30 91 e5                                      ldr r3, [r1, #0x2c]
0055c84c  2c 30 80 e5                                      str r3, [r0, #0x2c]
0055c850  30 30 91 e5                                      ldr r3, [r1, #0x30]
0055c854  30 30 80 e5                                      str r3, [r0, #0x30]
0055c858  34 30 91 e5                                      ldr r3, [r1, #0x34]
0055c85c  34 30 80 e5                                      str r3, [r0, #0x34]
0055c860  38 30 91 e5                                      ldr r3, [r1, #0x38]
0055c864  38 30 80 e5                                      str r3, [r0, #0x38]
0055c868  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
0055c86c  3c 30 80 e5                                      str r3, [r0, #0x3c]
0055c870  40 30 91 e5                                      ldr r3, [r1, #0x40]
0055c874  40 30 80 e5                                      str r3, [r0, #0x40]
0055c878  44 30 91 e5                                      ldr r3, [r1, #0x44]
0055c87c  00 00 53 e3                                      cmp r3, #0
0055c880  04 20 93 15                                      ldrne r2, [r3, #4]
0055c884  01 20 82 12                                      addne r2, r2, #1
0055c888  04 20 83 15                                      strne r2, [r3, #4]
0055c88c  44 00 90 e5                                      ldr r0, [r0, #0x44]
0055c890  44 30 84 e5                                      str r3, [r4, #0x44]
0055c894  00 00 50 e3                                      cmp r0, #0
0055c898  00 00 00 0a                                      beq #0x55c8a0
0055c89c  38 03 f7 eb                                      bl #0x31d584
0055c8a0  48 30 95 e5                                      ldr r3, [r5, #0x48]
0055c8a4  00 00 53 e3                                      cmp r3, #0
0055c8a8  04 20 93 15                                      ldrne r2, [r3, #4]
0055c8ac  01 20 82 12                                      addne r2, r2, #1
0055c8b0  04 20 83 15                                      strne r2, [r3, #4]
0055c8b4  48 00 94 e5                                      ldr r0, [r4, #0x48]
0055c8b8  48 30 84 e5                                      str r3, [r4, #0x48]
0055c8bc  00 00 50 e3                                      cmp r0, #0
0055c8c0  00 00 00 0a                                      beq #0x55c8c8
0055c8c4  2e 03 f7 eb                                      bl #0x31d584
0055c8c8  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
0055c8cc  04 00 a0 e1                                      mov r0, r4
0055c8d0  4c 30 84 e5                                      str r3, [r4, #0x4c]
0055c8d4  50 30 95 e5                                      ldr r3, [r5, #0x50]
0055c8d8  50 30 84 e5                                      str r3, [r4, #0x50]
0055c8dc  54 30 95 e5                                      ldr r3, [r5, #0x54]
0055c8e0  54 30 84 e5                                      str r3, [r4, #0x54]
0055c8e4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0055cbfc, declared_size=1564, range_size=1564, mode=arm
; class-group: glitch::gui::CGUITTGlyph
; alias: _ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb
; demangled: glitch::gui::CGUITTGlyph::cache(unsigned int, glitch::gui::CGUITTFace*, glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
0055cbfc  00 c6 9f e5                                      ldr ip, [pc, #0x600]
0055cc00  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0055cc04  fc e5 9f e5                                      ldr lr, [pc, #0x5fc]
0055cc08  0c c0 8f e0                                      add ip, pc, ip
0055cc0c  00 40 a0 e1                                      mov r4, r0
0055cc10  0e 00 9c e7                                      ldr r0, [ip, lr]
0055cc14  ec d0 4d e2                                      sub sp, sp, #0xec
0055cc18  14 c0 8d e5                                      str ip, [sp, #0x14]
0055cc1c  00 00 90 e5                                      ldr r0, [r0]
0055cc20  20 e0 8d e5                                      str lr, [sp, #0x20]
0055cc24  18 10 8d e5                                      str r1, [sp, #0x18]
0055cc28  24 30 8d e5                                      str r3, [sp, #0x24]
0055cc2c  e4 00 8d e5                                      str r0, [sp, #0xe4]
0055cc30  08 50 92 e5                                      ldr r5, [r2, #8]
0055cc34  00 10 a0 e3                                      mov r1, #0
0055cc38  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0055cc3c  05 00 a0 e1                                      mov r0, r5
0055cc40  10 71 dd e5                                      ldrb r7, [sp, #0x110]
0055cc44  ec b6 06 eb                                      bl #0x70a7fc
0055cc48  18 10 9d e5                                      ldr r1, [sp, #0x18]
0055cc4c  05 00 a0 e1                                      mov r0, r5
0055cc50  0a 20 a0 e3                                      mov r2, #0xa
0055cc54  61 b1 06 eb                                      bl #0x7091e0
0055cc58  00 10 50 e2                                      subs r1, r0, #0
0055cc5c  05 00 00 1a                                      bne #0x55cc78
0055cc60  54 60 95 e5                                      ldr r6, [r5, #0x54]
0055cc64  6c 34 07 e3                                      movw r3, #0x746c
0055cc68  75 3f 46 e3                                      movt r3, #0x6f75
0055cc6c  48 20 96 e5                                      ldr r2, [r6, #0x48]
0055cc70  03 00 52 e1                                      cmp r2, r3
0055cc74  ad 00 00 0a                                      beq #0x55cf30
0055cc78  05 00 a0 e1                                      mov r0, r5
0055cc7c  18 10 9d e5                                      ldr r1, [sp, #0x18]
0055cc80  0e 20 01 e3                                      movw r2, #0x100e
0055cc84  55 b1 06 eb                                      bl #0x7091e0
0055cc88  00 00 50 e3                                      cmp r0, #0
0055cc8c  91 00 00 0a                                      beq #0x55ced8
0055cc90  54 50 95 e5                                      ldr r5, [r5, #0x54]
0055cc94  00 00 57 e3                                      cmp r7, #0
0055cc98  4c 60 85 02                                      addeq r6, r5, #0x4c
0055cc9c  96 00 00 1a                                      bne #0x55cefc
0055cca0  2c c0 8d e2                                      add ip, sp, #0x2c
0055cca4  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
0055cca8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0055ccac  03 00 96 e8                                      ldm r6, {r0, r1}
0055ccb0  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0055ccb4  03 00 8c e8                                      stm ip, {r0, r1}
0055ccb8  68 30 95 e5                                      ldr r3, [r5, #0x68]
0055ccbc  30 60 9d e5                                      ldr r6, [sp, #0x30]
0055ccc0  28 30 84 e5                                      str r3, [r4, #0x28]
0055ccc4  64 20 95 e5                                      ldr r2, [r5, #0x64]
0055ccc8  01 30 a0 e3                                      mov r3, #1
0055cccc  38 30 84 e5                                      str r3, [r4, #0x38]
0055ccd0  2c 20 84 e5                                      str r2, [r4, #0x2c]
0055ccd4  3c 30 84 e5                                      str r3, [r4, #0x3c]
0055ccd8  30 60 84 e5                                      str r6, [r4, #0x30]
0055ccdc  34 70 84 e5                                      str r7, [r4, #0x34]
0055cce0  01 00 56 e3                                      cmp r6, #1
0055cce4  38 80 9d e5                                      ldr r8, [sp, #0x38]
0055cce8  34 50 9d e5                                      ldr r5, [sp, #0x34]
0055ccec  03 00 00 9a                                      bls #0x55cd00
0055ccf0  83 30 a0 e1                                      lsl r3, r3, #1
0055ccf4  03 00 56 e1                                      cmp r6, r3
0055ccf8  fc ff ff 8a                                      bhi #0x55ccf0
0055ccfc  38 30 84 e5                                      str r3, [r4, #0x38]
0055cd00  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0055cd04  34 20 94 e5                                      ldr r2, [r4, #0x34]
0055cd08  02 00 53 e1                                      cmp r3, r2
0055cd0c  03 00 00 2a                                      bhs #0x55cd20
0055cd10  83 30 a0 e1                                      lsl r3, r3, #1
0055cd14  02 00 53 e1                                      cmp r3, r2
0055cd18  fc ff ff 3a                                      blo #0x55cd10
0055cd1c  3c 30 84 e5                                      str r3, [r4, #0x3c]
0055cd20  38 00 94 e5                                      ldr r0, [r4, #0x38]
0055cd24  00 10 a0 e3                                      mov r1, #0
0055cd28  03 00 50 e1                                      cmp r0, r3
0055cd2c  3c 00 94 95                                      ldrls r0, [r4, #0x3c]
0055cd30  00 30 a0 81                                      movhi r3, r0
0055cd34  3c 00 84 85                                      strhi r0, [r4, #0x3c]
0055cd38  90 03 00 e0                                      mul r0, r0, r3
0055cd3c  38 30 84 95                                      strls r3, [r4, #0x38]
0055cd40  80 00 a0 e1                                      lsl r0, r0, #1
0055cd44  17 5d ff eb                                      bl #0x5341a8
0055cd48  1c 00 8d e5                                      str r0, [sp, #0x1c]
0055cd4c  38 30 94 e5                                      ldr r3, [r4, #0x38]
0055cd50  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0055cd54  00 10 a0 e3                                      mov r1, #0
0055cd58  92 03 02 e0                                      mul r2, r2, r3
0055cd5c  82 20 a0 e1                                      lsl r2, r2, #1
0055cd60  be c5 f6 eb                                      bl #0x30e460
0055cd64  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0055cd68  00 00 57 e3                                      cmp r7, #0
0055cd6c  03 30 67 e0                                      rsb r3, r7, r3
0055cd70  40 30 84 e5                                      str r3, [r4, #0x40]
0055cd74  19 00 00 da                                      ble #0x55cde0
0055cd78  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
0055cd7c  00 90 a0 e3                                      mov sb, #0
0055cd80  09 a0 a0 e1                                      mov sl, sb
0055cd84  0b e0 a0 e1                                      mov lr, fp
0055cd88  80 c0 a0 e3                                      mov ip, #0x80
0055cd8c  00 00 56 e3                                      cmp r6, #0
0055cd90  00 30 a0 c3                                      movgt r3, #0
0055cd94  09 00 88 c0                                      addgt r0, r8, sb
0055cd98  08 00 00 da                                      ble #0x55cdc0
0055cd9c  c3 21 d0 e7                                      ldrb r2, [r0, r3, asr #3]
0055cda0  07 10 03 e2                                      and r1, r3, #7
0055cda4  5c 11 12 e0                                      ands r1, r2, ip, asr r1
0055cda8  83 20 a0 11                                      lslne r2, r3, #1
0055cdac  00 10 e0 13                                      mvnne r1, #0
0055cdb0  01 30 83 e2                                      add r3, r3, #1
0055cdb4  b2 10 8e 11                                      strhne r1, [lr, r2]
0055cdb8  06 00 53 e1                                      cmp r3, r6
0055cdbc  f6 ff ff 1a                                      bne #0x55cd9c
0055cdc0  01 a0 8a e2                                      add sl, sl, #1
0055cdc4  07 00 5a e1                                      cmp sl, r7
0055cdc8  05 90 89 e0                                      add sb, sb, r5
0055cdcc  38 30 94 e5                                      ldr r3, [r4, #0x38]
0055cdd0  02 00 00 0a                                      beq #0x55cde0
0055cdd4  83 b0 8b e0                                      add fp, fp, r3, lsl #1
0055cdd8  0b e0 a0 e1                                      mov lr, fp
0055cddc  ea ff ff ea                                      b #0x55cd8c
0055cde0  24 14 9f e5                                      ldr r1, [pc, #0x424]
0055cde4  64 70 8d e2                                      add r7, sp, #0x64
0055cde8  18 20 9d e5                                      ldr r2, [sp, #0x18]
0055cdec  01 10 8f e0                                      add r1, pc, r1
0055cdf0  07 00 a0 e1                                      mov r0, r7
0055cdf4  3a c7 f6 eb                                      bl #0x30eae4
0055cdf8  3c c0 94 e5                                      ldr ip, [r4, #0x3c]
0055cdfc  24 20 9d e5                                      ldr r2, [sp, #0x24]
0055ce00  38 e0 94 e5                                      ldr lr, [r4, #0x38]
0055ce04  5c 80 8d e2                                      add r8, sp, #0x5c
0055ce08  e0 50 92 e5                                      ldr r5, [r2, #0xe0]
0055ce0c  48 c0 8d e5                                      str ip, [sp, #0x48]
0055ce10  01 c0 a0 e3                                      mov ip, #1
0055ce14  08 c0 8d e5                                      str ip, [sp, #8]
0055ce18  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0055ce1c  00 60 a0 e3                                      mov r6, #0
0055ce20  08 00 a0 e1                                      mov r0, r8
0055ce24  05 10 a0 e1                                      mov r1, r5
0055ce28  08 20 a0 e3                                      mov r2, #8
0055ce2c  44 30 8d e2                                      add r3, sp, #0x44
0055ce30  44 e0 8d e5                                      str lr, [sp, #0x44]
0055ce34  00 c0 8d e5                                      str ip, [sp]
0055ce38  04 60 8d e5                                      str r6, [sp, #4]
0055ce3c  63 2e 02 eb                                      bl #0x5e87d0
0055ce40  07 20 a0 e1                                      mov r2, r7
0055ce44  08 30 a0 e1                                      mov r3, r8
0055ce48  58 00 8d e2                                      add r0, sp, #0x58
0055ce4c  05 10 a0 e1                                      mov r1, r5
0055ce50  04 60 8d e5                                      str r6, [sp, #4]
0055ce54  00 60 8d e5                                      str r6, [sp]
0055ce58  11 3f 02 eb                                      bl #0x5ecaa4
0055ce5c  58 30 9d e5                                      ldr r3, [sp, #0x58]
0055ce60  06 00 53 e1                                      cmp r3, r6
0055ce64  04 20 93 15                                      ldrne r2, [r3, #4]
0055ce68  01 20 82 12                                      addne r2, r2, #1
0055ce6c  04 20 83 15                                      strne r2, [r3, #4]
0055ce70  48 00 94 e5                                      ldr r0, [r4, #0x48]
0055ce74  48 30 84 e5                                      str r3, [r4, #0x48]
0055ce78  00 00 50 e3                                      cmp r0, #0
0055ce7c  00 00 00 0a                                      beq #0x55ce84
0055ce80  bf 01 f7 eb                                      bl #0x31d584
0055ce84  58 00 9d e5                                      ldr r0, [sp, #0x58]
0055ce88  00 00 50 e3                                      cmp r0, #0
0055ce8c  00 00 00 0a                                      beq #0x55ce94
0055ce90  bb 01 f7 eb                                      bl #0x31d584
0055ce94  00 30 a0 e3                                      mov r3, #0
0055ce98  57 30 cd e5                                      strb r3, [sp, #0x57]
0055ce9c  54 30 cd e5                                      strb r3, [sp, #0x54]
0055cea0  55 30 cd e5                                      strb r3, [sp, #0x55]
0055cea4  56 30 cd e5                                      strb r3, [sp, #0x56]
0055cea8  05 00 a0 e1                                      mov r0, r5
0055ceac  48 10 84 e2                                      add r1, r4, #0x48
0055ceb0  54 20 9d e5                                      ldr r2, [sp, #0x54]
0055ceb4  34 3c 02 eb                                      bl #0x5ebf8c
0055ceb8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0055cebc  00 00 50 e3                                      cmp r0, #0
0055cec0  00 00 00 0a                                      beq #0x55cec8
0055cec4  7b c4 f6 eb                                      bl #0x30e0b8
0055cec8  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0055cecc  00 00 50 e3                                      cmp r0, #0
0055ced0  00 00 00 0a                                      beq #0x55ced8
0055ced4  aa 01 f7 eb                                      bl #0x31d584
0055ced8  14 20 9d e5                                      ldr r2, [sp, #0x14]
0055cedc  20 10 9d e5                                      ldr r1, [sp, #0x20]
0055cee0  01 30 92 e7                                      ldr r3, [r2, r1]
0055cee4  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
0055cee8  00 30 93 e5                                      ldr r3, [r3]
0055ceec  03 00 52 e1                                      cmp r2, r3
0055cef0  c2 00 00 1a                                      bne #0x55d200
0055cef4  ec d0 8d e2                                      add sp, sp, #0xec
0055cef8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0055cefc  05 00 a0 e1                                      mov r0, r5
0055cf00  76 ca 06 eb                                      bl #0x70f8e0
0055cf04  04 33 9f e5                                      ldr r3, [pc, #0x304]
0055cf08  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0055cf0c  4c 60 85 e2                                      add r6, r5, #0x4c
0055cf10  08 20 a0 e3                                      mov r2, #8
0055cf14  03 00 9c e7                                      ldr r0, [ip, r3]
0055cf18  06 10 a0 e1                                      mov r1, r6
0055cf1c  02 30 a0 e1                                      mov r3, r2
0055cf20  00 00 90 e5                                      ldr r0, [r0]
0055cf24  08 00 90 e5                                      ldr r0, [r0, #8]
0055cf28  8d bf 06 eb                                      bl #0x70cd64
0055cf2c  5b ff ff ea                                      b #0x55cca0
0055cf30  06 00 a0 e1                                      mov r0, r6
0055cf34  50 a9 06 eb                                      bl #0x70747c
0055cf38  00 00 50 e3                                      cmp r0, #0
0055cf3c  4d ff ff 1a                                      bne #0x55cc78
0055cf40  00 00 57 e3                                      cmp r7, #0
0055cf44  4c 80 86 02                                      addeq r8, r6, #0x4c
0055cf48  9f 00 00 1a                                      bne #0x55d1cc
0055cf4c  2c c0 8d e2                                      add ip, sp, #0x2c
0055cf50  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
0055cf54  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0055cf58  04 10 98 e5                                      ldr r1, [r8, #4]
0055cf5c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0055cf60  00 00 98 e5                                      ldr r0, [r8]
0055cf64  04 10 8c e5                                      str r1, [ip, #4]
0055cf68  38 10 9d e5                                      ldr r1, [sp, #0x38]
0055cf6c  00 00 53 e3                                      cmp r3, #0
0055cf70  00 00 8c e5                                      str r0, [ip]
0055cf74  1c 10 8d e5                                      str r1, [sp, #0x1c]
0055cf78  30 80 9d e5                                      ldr r8, [sp, #0x30]
0055cf7c  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
0055cf80  01 00 00 0a                                      beq #0x55cf8c
0055cf84  03 00 a0 e1                                      mov r0, r3
0055cf88  4a c4 f6 eb                                      bl #0x30e0b8
0055cf8c  98 09 0a e0                                      mul sl, r8, sb
0055cf90  00 10 a0 e3                                      mov r1, #0
0055cf94  0a 00 a0 e1                                      mov r0, sl
0055cf98  82 5c ff eb                                      bl #0x5341a8
0055cf9c  4c 00 84 e5                                      str r0, [r4, #0x4c]
0055cfa0  0a 20 a0 e1                                      mov r2, sl
0055cfa4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0055cfa8  2e c6 f6 eb                                      bl #0x30e868
0055cfac  68 20 96 e5                                      ldr r2, [r6, #0x68]
0055cfb0  01 30 a0 e3                                      mov r3, #1
0055cfb4  00 00 58 e3                                      cmp r8, #0
0055cfb8  10 20 84 e5                                      str r2, [r4, #0x10]
0055cfbc  64 20 96 e5                                      ldr r2, [r6, #0x64]
0055cfc0  20 30 84 e5                                      str r3, [r4, #0x20]
0055cfc4  24 30 84 e5                                      str r3, [r4, #0x24]
0055cfc8  14 20 84 e5                                      str r2, [r4, #0x14]
0055cfcc  18 80 84 e5                                      str r8, [r4, #0x18]
0055cfd0  1c 90 84 e5                                      str sb, [r4, #0x1c]
0055cfd4  03 00 00 0a                                      beq #0x55cfe8
0055cfd8  83 30 a0 e1                                      lsl r3, r3, #1
0055cfdc  03 00 58 e1                                      cmp r8, r3
0055cfe0  fc ff ff 2a                                      bhs #0x55cfd8
0055cfe4  20 30 84 e5                                      str r3, [r4, #0x20]
0055cfe8  24 20 94 e5                                      ldr r2, [r4, #0x24]
0055cfec  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0055cff0  03 00 52 e1                                      cmp r2, r3
0055cff4  03 00 00 8a                                      bhi #0x55d008
0055cff8  82 20 a0 e1                                      lsl r2, r2, #1
0055cffc  03 00 52 e1                                      cmp r2, r3
0055d000  fc ff ff 9a                                      bls #0x55cff8
0055d004  24 20 84 e5                                      str r2, [r4, #0x24]
0055d008  20 30 94 e5                                      ldr r3, [r4, #0x20]
0055d00c  00 10 a0 e3                                      mov r1, #0
0055d010  02 00 53 e1                                      cmp r3, r2
0055d014  24 30 84 85                                      strhi r3, [r4, #0x24]
0055d018  02 30 a0 91                                      movls r3, r2
0055d01c  20 20 84 95                                      strls r2, [r4, #0x20]
0055d020  24 20 94 e5                                      ldr r2, [r4, #0x24]
0055d024  92 03 03 e0                                      mul r3, r2, r3
0055d028  03 01 a0 e1                                      lsl r0, r3, #2
0055d02c  5d 5c ff eb                                      bl #0x5341a8
0055d030  20 30 94 e5                                      ldr r3, [r4, #0x20]
0055d034  24 20 94 e5                                      ldr r2, [r4, #0x24]
0055d038  00 10 a0 e3                                      mov r1, #0
0055d03c  00 b0 a0 e1                                      mov fp, r0
0055d040  92 03 02 e0                                      mul r2, r2, r3
0055d044  02 21 a0 e1                                      lsl r2, r2, #2
0055d048  04 c5 f6 eb                                      bl #0x30e460
0055d04c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0055d050  24 00 9d e5                                      ldr r0, [sp, #0x24]
0055d054  03 30 69 e0                                      rsb r3, sb, r3
0055d058  40 30 84 e5                                      str r3, [r4, #0x40]
0055d05c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0055d060  00 30 92 e5                                      ldr r3, [r2]
0055d064  0f e0 a0 e1                                      mov lr, pc
0055d068  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0055d06c  00 00 59 e3                                      cmp sb, #0
0055d070  1e 00 00 da                                      ble #0x55d0f0
0055d074  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0055d078  0b a0 a0 e1                                      mov sl, fp
0055d07c  0b e0 a0 e1                                      mov lr, fp
0055d080  00 60 a0 e3                                      mov r6, #0
0055d084  00 00 58 e3                                      cmp r8, #0
0055d088  00 20 a0 c3                                      movgt r2, #0
0055d08c  02 30 a0 c1                                      movgt r3, r2
0055d090  0f 00 00 da                                      ble #0x55d0d4
0055d094  03 10 dc e7                                      ldrb r1, [ip, r3]
0055d098  00 00 51 e3                                      cmp r1, #0
0055d09c  02 10 8e 07                                      streq r1, [lr, r2]
0055d0a0  06 00 00 0a                                      beq #0x55d0c0
0055d0a4  80 00 50 e3                                      cmp r0, #0x80
0055d0a8  01 1c a0 11                                      lslne r1, r1, #0x18
0055d0ac  01 14 81 00                                      addeq r1, r1, r1, lsl #8
0055d0b0  21 1c e0 11                                      mvnne r1, r1, lsr #24
0055d0b4  01 18 81 00                                      addeq r1, r1, r1, lsl #16
0055d0b8  01 1c e0 11                                      mvnne r1, r1, lsl #24
0055d0bc  02 10 8e e7                                      str r1, [lr, r2]
0055d0c0  01 30 83 e2                                      add r3, r3, #1
0055d0c4  08 00 53 e1                                      cmp r3, r8
0055d0c8  04 20 82 e2                                      add r2, r2, #4
0055d0cc  f0 ff ff 1a                                      bne #0x55d094
0055d0d0  08 c0 8c e0                                      add ip, ip, r8
0055d0d4  01 60 86 e2                                      add r6, r6, #1
0055d0d8  09 00 56 e1                                      cmp r6, sb
0055d0dc  20 30 94 e5                                      ldr r3, [r4, #0x20]
0055d0e0  02 00 00 0a                                      beq #0x55d0f0
0055d0e4  03 a1 8a e0                                      add sl, sl, r3, lsl #2
0055d0e8  0a e0 a0 e1                                      mov lr, sl
0055d0ec  e4 ff ff ea                                      b #0x55d084
0055d0f0  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
0055d0f4  64 a0 8d e2                                      add sl, sp, #0x64
0055d0f8  18 20 9d e5                                      ldr r2, [sp, #0x18]
0055d0fc  01 10 8f e0                                      add r1, pc, r1
0055d100  0a 00 a0 e1                                      mov r0, sl
0055d104  76 c6 f6 eb                                      bl #0x30eae4
0055d108  24 30 9d e5                                      ldr r3, [sp, #0x24]
0055d10c  24 c0 94 e5                                      ldr ip, [r4, #0x24]
0055d110  20 e0 94 e5                                      ldr lr, [r4, #0x20]
0055d114  e0 80 93 e5                                      ldr r8, [r3, #0xe0]
0055d118  5c 90 8d e2                                      add sb, sp, #0x5c
0055d11c  00 60 a0 e3                                      mov r6, #0
0055d120  09 00 a0 e1                                      mov r0, sb
0055d124  08 10 a0 e1                                      mov r1, r8
0055d128  0c 20 a0 e3                                      mov r2, #0xc
0055d12c  4c 30 8d e2                                      add r3, sp, #0x4c
0055d130  50 c0 8d e5                                      str ip, [sp, #0x50]
0055d134  01 c0 a0 e3                                      mov ip, #1
0055d138  4c e0 8d e5                                      str lr, [sp, #0x4c]
0055d13c  08 c0 8d e5                                      str ip, [sp, #8]
0055d140  00 b0 8d e5                                      str fp, [sp]
0055d144  04 60 8d e5                                      str r6, [sp, #4]
0055d148  a0 2d 02 eb                                      bl #0x5e87d0
0055d14c  0a 20 a0 e1                                      mov r2, sl
0055d150  09 30 a0 e1                                      mov r3, sb
0055d154  60 00 8d e2                                      add r0, sp, #0x60
0055d158  08 10 a0 e1                                      mov r1, r8
0055d15c  04 60 8d e5                                      str r6, [sp, #4]
0055d160  00 60 8d e5                                      str r6, [sp]
0055d164  4e 3e 02 eb                                      bl #0x5ecaa4
0055d168  60 30 9d e5                                      ldr r3, [sp, #0x60]
0055d16c  06 00 53 e1                                      cmp r3, r6
0055d170  04 20 93 15                                      ldrne r2, [r3, #4]
0055d174  01 20 82 12                                      addne r2, r2, #1
0055d178  04 20 83 15                                      strne r2, [r3, #4]
0055d17c  44 00 94 e5                                      ldr r0, [r4, #0x44]
0055d180  44 30 84 e5                                      str r3, [r4, #0x44]
0055d184  00 00 50 e3                                      cmp r0, #0
0055d188  00 00 00 0a                                      beq #0x55d190
0055d18c  fc 00 f7 eb                                      bl #0x31d584
0055d190  60 00 9d e5                                      ldr r0, [sp, #0x60]
0055d194  00 00 50 e3                                      cmp r0, #0
0055d198  00 00 00 0a                                      beq #0x55d1a0
0055d19c  f8 00 f7 eb                                      bl #0x31d584
0055d1a0  00 00 5b e3                                      cmp fp, #0
0055d1a4  01 00 00 0a                                      beq #0x55d1b0
0055d1a8  0b 00 a0 e1                                      mov r0, fp
0055d1ac  c1 c3 f6 eb                                      bl #0x30e0b8
0055d1b0  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0055d1b4  01 30 a0 e3                                      mov r3, #1
0055d1b8  08 30 c4 e5                                      strb r3, [r4, #8]
0055d1bc  00 00 50 e3                                      cmp r0, #0
0055d1c0  ac fe ff 0a                                      beq #0x55cc78
0055d1c4  ee 00 f7 eb                                      bl #0x31d584
0055d1c8  aa fe ff ea                                      b #0x55cc78
0055d1cc  06 00 a0 e1                                      mov r0, r6
0055d1d0  c2 c9 06 eb                                      bl #0x70f8e0
0055d1d4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0055d1d8  30 30 9f e5                                      ldr r3, [pc, #0x30]
0055d1dc  50 20 94 e5                                      ldr r2, [r4, #0x50]
0055d1e0  4c 80 86 e2                                      add r8, r6, #0x4c
0055d1e4  03 30 90 e7                                      ldr r3, [r0, r3]
0055d1e8  08 10 a0 e1                                      mov r1, r8
0055d1ec  00 00 93 e5                                      ldr r0, [r3]
0055d1f0  02 30 a0 e1                                      mov r3, r2
0055d1f4  08 00 90 e5                                      ldr r0, [r0, #8]
0055d1f8  d9 be 06 eb                                      bl #0x70cd64
0055d1fc  52 ff ff ea                                      b #0x55cf4c
0055d200  42 c4 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0055d204  88 7e 43 00 ac 40 00 00 b4 1e 38 00 e4 0a 00 00  .byte 0x88, 0x7e, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0x1e, 0x38, 0x00, 0xe4, 0x0a, 0x00, 0x00
0055d214  94 1b 38 00                                      .byte 0x94, 0x1b, 0x38, 0x00
