; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055c48c, declared_size=56, range_size=56, mode=arm
; class-group: glitch::gui::CGUITTLibrary
; alias: _ZN6glitch3gui13CGUITTLibraryD1Ev
; demangled: glitch::gui::CGUITTLibrary::~CGUITTLibrary()
; decoder-mode: arm
0055c48c  28 30 9f e5                                      ldr r3, [pc, #0x28]
0055c490  28 20 9f e5                                      ldr r2, [pc, #0x28]
0055c494  10 40 2d e9                                      push {r4, lr}
0055c498  03 30 8f e0                                      add r3, pc, r3
0055c49c  02 20 93 e7                                      ldr r2, [r3, r2]
0055c4a0  00 40 a0 e1                                      mov r4, r0
0055c4a4  08 00 90 e5                                      ldr r0, [r0, #8]
0055c4a8  08 20 82 e2                                      add r2, r2, #8
0055c4ac  00 20 84 e5                                      str r2, [r4]
0055c4b0  6d c4 06 eb                                      bl #0x70d66c
0055c4b4  04 00 a0 e1                                      mov r0, r4
0055c4b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055c4bc  f8 85 43 00 c4 17 00 00                          .byte 0xf8, 0x85, 0x43, 0x00, 0xc4, 0x17, 0x00, 0x00

; FUNCTION 0x0055c4c4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUITTLibrary
; alias: _ZN6glitch3gui13CGUITTLibraryD0Ev
; demangled: glitch::gui::CGUITTLibrary::~CGUITTLibrary()
; decoder-mode: arm
0055c4c4  10 40 2d e9                                      push {r4, lr}
0055c4c8  00 40 a0 e1                                      mov r4, r0
0055c4cc  ee ff ff eb                                      bl #0x55c48c
0055c4d0  04 00 a0 e1                                      mov r0, r4
0055c4d4  75 c7 f6 eb                                      bl #0x30e2b0
0055c4d8  04 00 a0 e1                                      mov r0, r4
0055c4dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0055c4e0, declared_size=56, range_size=56, mode=arm
; class-group: glitch::gui::CGUITTLibrary
; alias: _ZN6glitch3gui13CGUITTLibraryD2Ev
; demangled: glitch::gui::CGUITTLibrary::~CGUITTLibrary()
; decoder-mode: arm
0055c4e0  28 30 9f e5                                      ldr r3, [pc, #0x28]
0055c4e4  28 20 9f e5                                      ldr r2, [pc, #0x28]
0055c4e8  10 40 2d e9                                      push {r4, lr}
0055c4ec  03 30 8f e0                                      add r3, pc, r3
0055c4f0  02 20 93 e7                                      ldr r2, [r3, r2]
0055c4f4  00 40 a0 e1                                      mov r4, r0
0055c4f8  08 00 90 e5                                      ldr r0, [r0, #8]
0055c4fc  08 20 82 e2                                      add r2, r2, #8
0055c500  00 20 84 e5                                      str r2, [r4]
0055c504  58 c4 06 eb                                      bl #0x70d66c
0055c508  04 00 a0 e1                                      mov r0, r4
0055c50c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055c510  a4 85 43 00 c4 17 00 00                          .byte 0xa4, 0x85, 0x43, 0x00, 0xc4, 0x17, 0x00, 0x00

; FUNCTION 0x0055c518, declared_size=76, range_size=76, mode=arm
; class-group: glitch::gui::CGUITTLibrary
; alias: _ZN6glitch3gui13CGUITTLibraryC1Ev
; demangled: glitch::gui::CGUITTLibrary::CGUITTLibrary()
; decoder-mode: arm
0055c518  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0055c51c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0055c520  70 40 2d e9                                      push {r4, r5, r6, lr}
0055c524  03 30 8f e0                                      add r3, pc, r3
0055c528  02 20 93 e7                                      ldr r2, [r3, r2]
0055c52c  00 40 a0 e1                                      mov r4, r0
0055c530  00 50 a0 e3                                      mov r5, #0
0055c534  08 20 82 e2                                      add r2, r2, #8
0055c538  04 50 84 e5                                      str r5, [r4, #4]
0055c53c  08 20 80 e4                                      str r2, [r0], #8
0055c540  70 c4 06 eb                                      bl #0x70d708
0055c544  05 00 50 e1                                      cmp r0, r5
0055c548  01 30 a0 03                                      moveq r3, #1
0055c54c  0c 50 c4 15                                      strbne r5, [r4, #0xc]
0055c550  0c 30 c4 05                                      strbeq r3, [r4, #0xc]
0055c554  04 00 a0 e1                                      mov r0, r4
0055c558  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0055c55c  6c 85 43 00 c4 17 00 00                          .byte 0x6c, 0x85, 0x43, 0x00, 0xc4, 0x17, 0x00, 0x00

; FUNCTION 0x0055c69c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::gui::CGUITTLibrary
; alias: _ZN6glitch3gui13CGUITTLibraryC2Ev
; demangled: glitch::gui::CGUITTLibrary::CGUITTLibrary()
; decoder-mode: arm
0055c69c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0055c6a0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0055c6a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0055c6a8  03 30 8f e0                                      add r3, pc, r3
0055c6ac  02 20 93 e7                                      ldr r2, [r3, r2]
0055c6b0  00 40 a0 e1                                      mov r4, r0
0055c6b4  00 50 a0 e3                                      mov r5, #0
0055c6b8  08 20 82 e2                                      add r2, r2, #8
0055c6bc  04 50 84 e5                                      str r5, [r4, #4]
0055c6c0  08 20 80 e4                                      str r2, [r0], #8
0055c6c4  0f c4 06 eb                                      bl #0x70d708
0055c6c8  05 00 50 e1                                      cmp r0, r5
0055c6cc  01 30 a0 03                                      moveq r3, #1
0055c6d0  0c 50 c4 15                                      strbne r5, [r4, #0xc]
0055c6d4  0c 30 c4 05                                      strbeq r3, [r4, #0xc]
0055c6d8  04 00 a0 e1                                      mov r0, r4
0055c6dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0055c6e0  e8 83 43 00 c4 17 00 00                          .byte 0xe8, 0x83, 0x43, 0x00, 0xc4, 0x17, 0x00, 0x00
