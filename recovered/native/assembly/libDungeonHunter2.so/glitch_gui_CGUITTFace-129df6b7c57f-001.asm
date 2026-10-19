; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055c2f8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::CGUITTFace
; alias: _ZN6glitch3gui10CGUITTFaceD1Ev
; demangled: glitch::gui::CGUITTFace::~CGUITTFace()
; decoder-mode: arm
0055c2f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0055c2fc  44 40 9f e5                                      ldr r4, [pc, #0x44]
0055c300  44 30 9f e5                                      ldr r3, [pc, #0x44]
0055c304  00 50 a0 e1                                      mov r5, r0
0055c308  04 40 8f e0                                      add r4, pc, r4
0055c30c  03 30 94 e7                                      ldr r3, [r4, r3]
0055c310  08 00 90 e5                                      ldr r0, [r0, #8]
0055c314  00 60 a0 e3                                      mov r6, #0
0055c318  08 30 83 e2                                      add r3, r3, #8
0055c31c  00 30 85 e5                                      str r3, [r5]
0055c320  35 ad 06 eb                                      bl #0x7077fc
0055c324  24 30 9f e5                                      ldr r3, [pc, #0x24]
0055c328  08 60 85 e5                                      str r6, [r5, #8]
0055c32c  03 40 94 e7                                      ldr r4, [r4, r3]
0055c330  00 00 94 e5                                      ldr r0, [r4]
0055c334  92 04 f7 eb                                      bl #0x31d584
0055c338  06 00 50 e1                                      cmp r0, r6
0055c33c  00 60 84 15                                      strne r6, [r4]
0055c340  05 00 a0 e1                                      mov r0, r5
0055c344  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0055c348  88 87 43 00 9c 3d 00 00 e4 0a 00 00              .byte 0x88, 0x87, 0x43, 0x00, 0x9c, 0x3d, 0x00, 0x00, 0xe4, 0x0a, 0x00, 0x00

; FUNCTION 0x0055c354, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUITTFace
; alias: _ZN6glitch3gui10CGUITTFaceD0Ev
; demangled: glitch::gui::CGUITTFace::~CGUITTFace()
; decoder-mode: arm
0055c354  10 40 2d e9                                      push {r4, lr}
0055c358  00 40 a0 e1                                      mov r4, r0
0055c35c  e5 ff ff eb                                      bl #0x55c2f8
0055c360  04 00 a0 e1                                      mov r0, r4
0055c364  d1 c7 f6 eb                                      bl #0x30e2b0
0055c368  04 00 a0 e1                                      mov r0, r4
0055c36c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0055c370, declared_size=92, range_size=92, mode=arm
; class-group: glitch::gui::CGUITTFace
; alias: _ZN6glitch3gui10CGUITTFaceD2Ev
; demangled: glitch::gui::CGUITTFace::~CGUITTFace()
; decoder-mode: arm
0055c370  70 40 2d e9                                      push {r4, r5, r6, lr}
0055c374  44 40 9f e5                                      ldr r4, [pc, #0x44]
0055c378  44 30 9f e5                                      ldr r3, [pc, #0x44]
0055c37c  00 50 a0 e1                                      mov r5, r0
0055c380  04 40 8f e0                                      add r4, pc, r4
0055c384  03 30 94 e7                                      ldr r3, [r4, r3]
0055c388  08 00 90 e5                                      ldr r0, [r0, #8]
0055c38c  00 60 a0 e3                                      mov r6, #0
0055c390  08 30 83 e2                                      add r3, r3, #8
0055c394  00 30 85 e5                                      str r3, [r5]
0055c398  17 ad 06 eb                                      bl #0x7077fc
0055c39c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0055c3a0  08 60 85 e5                                      str r6, [r5, #8]
0055c3a4  03 40 94 e7                                      ldr r4, [r4, r3]
0055c3a8  00 00 94 e5                                      ldr r0, [r4]
0055c3ac  74 04 f7 eb                                      bl #0x31d584
0055c3b0  06 00 50 e1                                      cmp r0, r6
0055c3b4  00 60 84 15                                      strne r6, [r4]
0055c3b8  05 00 a0 e1                                      mov r0, r5
0055c3bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0055c3c0  10 87 43 00 9c 3d 00 00 e4 0a 00 00              .byte 0x10, 0x87, 0x43, 0x00, 0x9c, 0x3d, 0x00, 0x00, 0xe4, 0x0a, 0x00, 0x00

; FUNCTION 0x0055c3cc, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUITTFace
; alias: _ZN6glitch3gui10CGUITTFace4loadEPNS_2io9IReadFileE
; demangled: glitch::gui::CGUITTFace::load(glitch::io::IReadFile*)
; decoder-mode: arm
0055c3cc  74 20 9f e5                                      ldr r2, [pc, #0x74]
0055c3d0  74 30 9f e5                                      ldr r3, [pc, #0x74]
0055c3d4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0055c3d8  02 20 8f e0                                      add r2, pc, r2
0055c3dc  03 30 92 e7                                      ldr r3, [r2, r3]
0055c3e0  01 40 a0 e1                                      mov r4, r1
0055c3e4  0c d0 4d e2                                      sub sp, sp, #0xc
0055c3e8  00 c0 93 e5                                      ldr ip, [r3]
0055c3ec  00 60 a0 e1                                      mov r6, r0
0055c3f0  00 10 a0 e3                                      mov r1, #0
0055c3f4  00 30 94 e5                                      ldr r3, [r4]
0055c3f8  04 00 a0 e1                                      mov r0, r4
0055c3fc  08 50 9c e5                                      ldr r5, [ip, #8]
0055c400  0f e0 a0 e1                                      mov lr, pc
0055c404  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0055c408  00 30 94 e5                                      ldr r3, [r4]
0055c40c  00 70 a0 e1                                      mov r7, r0
0055c410  04 00 a0 e1                                      mov r0, r4
0055c414  0f e0 a0 e1                                      mov lr, pc
0055c418  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0055c41c  08 c0 86 e2                                      add ip, r6, #8
0055c420  00 20 a0 e1                                      mov r2, r0
0055c424  07 10 a0 e1                                      mov r1, r7
0055c428  05 00 a0 e1                                      mov r0, r5
0055c42c  00 30 a0 e3                                      mov r3, #0
0055c430  00 c0 8d e5                                      str ip, [sp]
0055c434  15 c1 06 eb                                      bl #0x70c890
0055c438  01 00 70 e2                                      rsbs r0, r0, #1
0055c43c  00 00 a0 33                                      movlo r0, #0
0055c440  0c d0 8d e2                                      add sp, sp, #0xc
0055c444  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0055c448  b8 86 43 00 e4 0a 00 00                          .byte 0xb8, 0x86, 0x43, 0x00, 0xe4, 0x0a, 0x00, 0x00

; FUNCTION 0x0055c450, declared_size=60, range_size=60, mode=arm
; class-group: glitch::gui::CGUITTFace
; alias: _ZN6glitch3gui10CGUITTFace4loadEPKc
; demangled: glitch::gui::CGUITTFace::load(char const*)
; decoder-mode: arm
0055c450  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
0055c454  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0055c458  10 40 2d e9                                      push {r4, lr}
0055c45c  0c c0 8f e0                                      add ip, pc, ip
0055c460  02 e0 9c e7                                      ldr lr, [ip, r2]
0055c464  08 30 80 e2                                      add r3, r0, #8
0055c468  00 20 a0 e3                                      mov r2, #0
0055c46c  00 00 9e e5                                      ldr r0, [lr]
0055c470  08 00 90 e5                                      ldr r0, [r0, #8]
0055c474  14 c1 06 eb                                      bl #0x70c8cc
0055c478  01 00 70 e2                                      rsbs r0, r0, #1
0055c47c  00 00 a0 33                                      movlo r0, #0
0055c480  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0055c484  34 86 43 00 e4 0a 00 00                          .byte 0x34, 0x86, 0x43, 0x00, 0xe4, 0x0a, 0x00, 0x00

; FUNCTION 0x0055c564, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUITTFace
; alias: _ZN6glitch3gui10CGUITTFaceC1Ev
; demangled: glitch::gui::CGUITTFace::CGUITTFace()
; decoder-mode: arm
0055c564  88 30 9f e5                                      ldr r3, [pc, #0x88]
0055c568  88 20 9f e5                                      ldr r2, [pc, #0x88]
0055c56c  88 10 9f e5                                      ldr r1, [pc, #0x88]
0055c570  03 30 8f e0                                      add r3, pc, r3
0055c574  02 20 93 e7                                      ldr r2, [r3, r2]
0055c578  70 40 2d e9                                      push {r4, r5, r6, lr}
0055c57c  01 50 93 e7                                      ldr r5, [r3, r1]
0055c580  08 20 82 e2                                      add r2, r2, #8
0055c584  01 10 a0 e3                                      mov r1, #1
0055c588  00 20 80 e5                                      str r2, [r0]
0055c58c  00 20 a0 e3                                      mov r2, #0
0055c590  06 00 80 e9                                      stmib r0, {r1, r2}
0055c594  00 10 95 e5                                      ldr r1, [r5]
0055c598  00 40 a0 e1                                      mov r4, r0
0055c59c  02 00 51 e1                                      cmp r1, r2
0055c5a0  04 00 00 0a                                      beq #0x55c5b8
0055c5a4  04 30 91 e5                                      ldr r3, [r1, #4]
0055c5a8  01 30 83 e2                                      add r3, r3, #1
0055c5ac  04 30 81 e5                                      str r3, [r1, #4]
0055c5b0  04 00 a0 e1                                      mov r0, r4
0055c5b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0055c5b8  10 00 a0 e3                                      mov r0, #0x10
0055c5bc  fa 5e ff eb                                      bl #0x5341ac
0055c5c0  00 60 a0 e1                                      mov r6, r0
0055c5c4  d3 ff ff eb                                      bl #0x55c518
0055c5c8  00 60 85 e5                                      str r6, [r5]
0055c5cc  04 30 96 e5                                      ldr r3, [r6, #4]
0055c5d0  01 30 83 e2                                      add r3, r3, #1
0055c5d4  04 30 86 e5                                      str r3, [r6, #4]
0055c5d8  00 00 95 e5                                      ldr r0, [r5]
0055c5dc  0c 60 d0 e5                                      ldrb r6, [r0, #0xc]
0055c5e0  00 00 56 e3                                      cmp r6, #0
0055c5e4  f1 ff ff 1a                                      bne #0x55c5b0
0055c5e8  e5 03 f7 eb                                      bl #0x31d584
0055c5ec  00 60 85 e5                                      str r6, [r5]
0055c5f0  ee ff ff ea                                      b #0x55c5b0
; mapping-symbol data/literal pool
0055c5f4  20 85 43 00 9c 3d 00 00 e4 0a 00 00              .byte 0x20, 0x85, 0x43, 0x00, 0x9c, 0x3d, 0x00, 0x00, 0xe4, 0x0a, 0x00, 0x00

; FUNCTION 0x0055c600, declared_size=156, range_size=156, mode=arm
; class-group: glitch::gui::CGUITTFace
; alias: _ZN6glitch3gui10CGUITTFaceC2Ev
; demangled: glitch::gui::CGUITTFace::CGUITTFace()
; decoder-mode: arm
0055c600  88 30 9f e5                                      ldr r3, [pc, #0x88]
0055c604  88 20 9f e5                                      ldr r2, [pc, #0x88]
0055c608  88 10 9f e5                                      ldr r1, [pc, #0x88]
0055c60c  03 30 8f e0                                      add r3, pc, r3
0055c610  02 20 93 e7                                      ldr r2, [r3, r2]
0055c614  70 40 2d e9                                      push {r4, r5, r6, lr}
0055c618  01 50 93 e7                                      ldr r5, [r3, r1]
0055c61c  08 20 82 e2                                      add r2, r2, #8
0055c620  01 10 a0 e3                                      mov r1, #1
0055c624  00 20 80 e5                                      str r2, [r0]
0055c628  00 20 a0 e3                                      mov r2, #0
0055c62c  06 00 80 e9                                      stmib r0, {r1, r2}
0055c630  00 10 95 e5                                      ldr r1, [r5]
0055c634  00 40 a0 e1                                      mov r4, r0
0055c638  02 00 51 e1                                      cmp r1, r2
0055c63c  04 00 00 0a                                      beq #0x55c654
0055c640  04 30 91 e5                                      ldr r3, [r1, #4]
0055c644  01 30 83 e2                                      add r3, r3, #1
0055c648  04 30 81 e5                                      str r3, [r1, #4]
0055c64c  04 00 a0 e1                                      mov r0, r4
0055c650  70 80 bd e8                                      pop {r4, r5, r6, pc}
0055c654  10 00 a0 e3                                      mov r0, #0x10
0055c658  d3 5e ff eb                                      bl #0x5341ac
0055c65c  00 60 a0 e1                                      mov r6, r0
0055c660  ac ff ff eb                                      bl #0x55c518
0055c664  00 60 85 e5                                      str r6, [r5]
0055c668  04 30 96 e5                                      ldr r3, [r6, #4]
0055c66c  01 30 83 e2                                      add r3, r3, #1
0055c670  04 30 86 e5                                      str r3, [r6, #4]
0055c674  00 00 95 e5                                      ldr r0, [r5]
0055c678  0c 60 d0 e5                                      ldrb r6, [r0, #0xc]
0055c67c  00 00 56 e3                                      cmp r6, #0
0055c680  f1 ff ff 1a                                      bne #0x55c64c
0055c684  be 03 f7 eb                                      bl #0x31d584
0055c688  00 60 85 e5                                      str r6, [r5]
0055c68c  ee ff ff ea                                      b #0x55c64c
; mapping-symbol data/literal pool
0055c690  84 84 43 00 9c 3d 00 00 e4 0a 00 00              .byte 0x84, 0x84, 0x43, 0x00, 0x9c, 0x3d, 0x00, 0x00, 0xe4, 0x0a, 0x00, 0x00
