; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055e2f0, declared_size=300, range_size=300, mode=arm
; class-group: glitch::gui::CGUITTGlyph* std::priv
; alias: _ZNSt4priv22__uninitialized_fill_nIPN6glitch3gui11CGUITTGlyphEjS3_EET_S5_T0_RKT1_
; demangled: glitch::gui::CGUITTGlyph* std::priv::__uninitialized_fill_n<glitch::gui::CGUITTGlyph*, unsigned int, glitch::gui::CGUITTGlyph>(glitch::gui::CGUITTGlyph*, unsigned int, glitch::gui::CGUITTGlyph const&)
; decoder-mode: arm
0055e2f0  00 30 a0 e1                                      mov r3, r0
0055e2f4  58 00 a0 e3                                      mov r0, #0x58
0055e2f8  90 31 20 e0                                      mla r0, r0, r1, r3
0055e2fc  30 00 2d e9                                      push {r4, r5}
0055e300  00 c0 63 e0                                      rsb ip, r3, r0
0055e304  a3 4b 08 e3                                      movw r4, #0x8ba3
0055e308  2e 4a 4b e3                                      movt r4, #0xba2e
0055e30c  cc c1 a0 e1                                      asr ip, ip, #3
0055e310  94 0c 0c e0                                      mul ip, r4, ip
0055e314  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
0055e318  00 00 5c e3                                      cmp ip, #0
0055e31c  04 40 8f e0                                      add r4, pc, r4
0055e320  39 00 00 da                                      ble #0x55e40c
0055e324  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0055e328  01 40 94 e7                                      ldr r4, [r4, r1]
0055e32c  08 40 84 e2                                      add r4, r4, #8
0055e330  00 00 00 ea                                      b #0x55e338
0055e334  58 30 83 e2                                      add r3, r3, #0x58
0055e338  04 10 92 e5                                      ldr r1, [r2, #4]
0055e33c  00 40 83 e5                                      str r4, [r3]
0055e340  04 10 83 e5                                      str r1, [r3, #4]
0055e344  08 10 d2 e5                                      ldrb r1, [r2, #8]
0055e348  08 10 c3 e5                                      strb r1, [r3, #8]
0055e34c  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0055e350  0c 10 83 e5                                      str r1, [r3, #0xc]
0055e354  10 10 92 e5                                      ldr r1, [r2, #0x10]
0055e358  10 10 83 e5                                      str r1, [r3, #0x10]
0055e35c  14 10 92 e5                                      ldr r1, [r2, #0x14]
0055e360  14 10 83 e5                                      str r1, [r3, #0x14]
0055e364  18 10 92 e5                                      ldr r1, [r2, #0x18]
0055e368  18 10 83 e5                                      str r1, [r3, #0x18]
0055e36c  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
0055e370  1c 10 83 e5                                      str r1, [r3, #0x1c]
0055e374  20 10 92 e5                                      ldr r1, [r2, #0x20]
0055e378  20 10 83 e5                                      str r1, [r3, #0x20]
0055e37c  24 10 92 e5                                      ldr r1, [r2, #0x24]
0055e380  24 10 83 e5                                      str r1, [r3, #0x24]
0055e384  28 10 92 e5                                      ldr r1, [r2, #0x28]
0055e388  28 10 83 e5                                      str r1, [r3, #0x28]
0055e38c  2c 10 92 e5                                      ldr r1, [r2, #0x2c]
0055e390  2c 10 83 e5                                      str r1, [r3, #0x2c]
0055e394  30 10 92 e5                                      ldr r1, [r2, #0x30]
0055e398  30 10 83 e5                                      str r1, [r3, #0x30]
0055e39c  34 10 92 e5                                      ldr r1, [r2, #0x34]
0055e3a0  34 10 83 e5                                      str r1, [r3, #0x34]
0055e3a4  38 10 92 e5                                      ldr r1, [r2, #0x38]
0055e3a8  38 10 83 e5                                      str r1, [r3, #0x38]
0055e3ac  3c 10 92 e5                                      ldr r1, [r2, #0x3c]
0055e3b0  3c 10 83 e5                                      str r1, [r3, #0x3c]
0055e3b4  40 10 92 e5                                      ldr r1, [r2, #0x40]
0055e3b8  40 10 83 e5                                      str r1, [r3, #0x40]
0055e3bc  44 10 92 e5                                      ldr r1, [r2, #0x44]
0055e3c0  00 00 51 e3                                      cmp r1, #0
0055e3c4  44 10 83 e5                                      str r1, [r3, #0x44]
0055e3c8  04 50 91 15                                      ldrne r5, [r1, #4]
0055e3cc  01 50 85 12                                      addne r5, r5, #1
0055e3d0  04 50 81 15                                      strne r5, [r1, #4]
0055e3d4  48 10 92 e5                                      ldr r1, [r2, #0x48]
0055e3d8  00 00 51 e3                                      cmp r1, #0
0055e3dc  48 10 83 e5                                      str r1, [r3, #0x48]
0055e3e0  04 50 91 15                                      ldrne r5, [r1, #4]
0055e3e4  01 50 85 12                                      addne r5, r5, #1
0055e3e8  04 50 81 15                                      strne r5, [r1, #4]
0055e3ec  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
0055e3f0  01 c0 5c e2                                      subs ip, ip, #1
0055e3f4  4c 10 83 e5                                      str r1, [r3, #0x4c]
0055e3f8  50 10 92 e5                                      ldr r1, [r2, #0x50]
0055e3fc  50 10 83 e5                                      str r1, [r3, #0x50]
0055e400  54 10 92 e5                                      ldr r1, [r2, #0x54]
0055e404  54 10 83 e5                                      str r1, [r3, #0x54]
0055e408  c9 ff ff 1a                                      bne #0x55e334
0055e40c  30 00 bd e8                                      pop {r4, r5}
0055e410  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0055e414  74 67 43 00 00 4b 00 00                          .byte 0x74, 0x67, 0x43, 0x00, 0x00, 0x4b, 0x00, 0x00

; FUNCTION 0x0055e41c, declared_size=308, range_size=308, mode=arm
; class-group: glitch::gui::CGUITTGlyph* std::priv
; alias: _ZNSt4priv12__ucopy_ptrsIPN6glitch3gui11CGUITTGlyphES4_EET0_T_S6_S5_RKSt12__false_type
; demangled: glitch::gui::CGUITTGlyph* std::priv::__ucopy_ptrs<glitch::gui::CGUITTGlyph*, glitch::gui::CGUITTGlyph*>(glitch::gui::CGUITTGlyph*, glitch::gui::CGUITTGlyph*, glitch::gui::CGUITTGlyph*, std::__false_type const&)
; decoder-mode: arm
0055e41c  01 c0 60 e0                                      rsb ip, r0, r1
0055e420  00 30 a0 e1                                      mov r3, r0
0055e424  a3 0b 08 e3                                      movw r0, #0x8ba3
0055e428  cc c1 a0 e1                                      asr ip, ip, #3
0055e42c  2e 0a 4b e3                                      movt r0, #0xba2e
0055e430  90 0c 0c e0                                      mul ip, r0, ip
0055e434  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
0055e438  00 00 5c e3                                      cmp ip, #0
0055e43c  70 00 2d e9                                      push {r4, r5, r6}
0055e440  01 10 8f e0                                      add r1, pc, r1
0055e444  3c 00 00 da                                      ble #0x55e53c
0055e448  fc 00 9f e5                                      ldr r0, [pc, #0xfc]
0055e44c  0c 50 a0 e1                                      mov r5, ip
0055e450  02 40 a0 e1                                      mov r4, r2
0055e454  00 00 91 e7                                      ldr r0, [r1, r0]
0055e458  08 00 80 e2                                      add r0, r0, #8
0055e45c  04 10 93 e5                                      ldr r1, [r3, #4]
0055e460  03 00 84 e8                                      stm r4, {r0, r1}
0055e464  08 10 d3 e5                                      ldrb r1, [r3, #8]
0055e468  08 10 c4 e5                                      strb r1, [r4, #8]
0055e46c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0055e470  0c 10 84 e5                                      str r1, [r4, #0xc]
0055e474  10 10 93 e5                                      ldr r1, [r3, #0x10]
0055e478  10 10 84 e5                                      str r1, [r4, #0x10]
0055e47c  14 10 93 e5                                      ldr r1, [r3, #0x14]
0055e480  14 10 84 e5                                      str r1, [r4, #0x14]
0055e484  18 10 93 e5                                      ldr r1, [r3, #0x18]
0055e488  18 10 84 e5                                      str r1, [r4, #0x18]
0055e48c  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
0055e490  1c 10 84 e5                                      str r1, [r4, #0x1c]
0055e494  20 10 93 e5                                      ldr r1, [r3, #0x20]
0055e498  20 10 84 e5                                      str r1, [r4, #0x20]
0055e49c  24 10 93 e5                                      ldr r1, [r3, #0x24]
0055e4a0  24 10 84 e5                                      str r1, [r4, #0x24]
0055e4a4  28 10 93 e5                                      ldr r1, [r3, #0x28]
0055e4a8  28 10 84 e5                                      str r1, [r4, #0x28]
0055e4ac  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
0055e4b0  2c 10 84 e5                                      str r1, [r4, #0x2c]
0055e4b4  30 10 93 e5                                      ldr r1, [r3, #0x30]
0055e4b8  30 10 84 e5                                      str r1, [r4, #0x30]
0055e4bc  34 10 93 e5                                      ldr r1, [r3, #0x34]
0055e4c0  34 10 84 e5                                      str r1, [r4, #0x34]
0055e4c4  38 10 93 e5                                      ldr r1, [r3, #0x38]
0055e4c8  38 10 84 e5                                      str r1, [r4, #0x38]
0055e4cc  3c 10 93 e5                                      ldr r1, [r3, #0x3c]
0055e4d0  3c 10 84 e5                                      str r1, [r4, #0x3c]
0055e4d4  40 10 93 e5                                      ldr r1, [r3, #0x40]
0055e4d8  40 10 84 e5                                      str r1, [r4, #0x40]
0055e4dc  44 10 93 e5                                      ldr r1, [r3, #0x44]
0055e4e0  00 00 51 e3                                      cmp r1, #0
0055e4e4  44 10 84 e5                                      str r1, [r4, #0x44]
0055e4e8  04 60 91 15                                      ldrne r6, [r1, #4]
0055e4ec  01 60 86 12                                      addne r6, r6, #1
0055e4f0  04 60 81 15                                      strne r6, [r1, #4]
0055e4f4  48 10 93 e5                                      ldr r1, [r3, #0x48]
0055e4f8  48 10 84 e5                                      str r1, [r4, #0x48]
0055e4fc  00 00 51 e3                                      cmp r1, #0
0055e500  04 60 91 15                                      ldrne r6, [r1, #4]
0055e504  01 60 86 12                                      addne r6, r6, #1
0055e508  04 60 81 15                                      strne r6, [r1, #4]
0055e50c  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
0055e510  01 50 55 e2                                      subs r5, r5, #1
0055e514  4c 10 84 e5                                      str r1, [r4, #0x4c]
0055e518  50 10 93 e5                                      ldr r1, [r3, #0x50]
0055e51c  50 10 84 e5                                      str r1, [r4, #0x50]
0055e520  54 10 93 e5                                      ldr r1, [r3, #0x54]
0055e524  58 30 83 e2                                      add r3, r3, #0x58
0055e528  54 10 84 e5                                      str r1, [r4, #0x54]
0055e52c  58 40 84 e2                                      add r4, r4, #0x58
0055e530  c9 ff ff 1a                                      bne #0x55e45c
0055e534  58 30 a0 e3                                      mov r3, #0x58
0055e538  93 2c 22 e0                                      mla r2, r3, ip, r2
0055e53c  02 00 a0 e1                                      mov r0, r2
0055e540  70 00 bd e8                                      pop {r4, r5, r6}
0055e544  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0055e548  50 66 43 00 00 4b 00 00                          .byte 0x50, 0x66, 0x43, 0x00, 0x00, 0x4b, 0x00, 0x00
