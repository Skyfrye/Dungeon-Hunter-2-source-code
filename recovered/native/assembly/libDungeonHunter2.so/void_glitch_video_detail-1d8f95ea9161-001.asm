; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b71d8, declared_size=452, range_size=452, mode=arm
; class-group: void glitch::video::detail
; alias: _ZN6glitch5video6detail5applyILb1ENS1_10renderpass12SRenderStateENS0_15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS1_33CProgrammableGLFunctionPointerSetEEEEEvRKT0_PT1_
; demangled: void glitch::video::detail::apply<true, glitch::video::detail::renderpass::SRenderState, glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet> >(glitch::video::detail::renderpass::SRenderState const&, glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>*)
; decoder-mode: arm
005b71d8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b71dc  04 30 90 e5                                      ldr r3, [r0, #4]
005b71e0  00 50 a0 e1                                      mov r5, r0
005b71e4  01 40 a0 e1                                      mov r4, r1
005b71e8  53 68 e0 e7                                      ubfx r6, r3, #0x10, #1
005b71ec  00 00 56 e3                                      cmp r6, #0
005b71f0  42 00 00 1a                                      bne #0x5b7300
005b71f4  c4 21 d1 e5                                      ldrb r2, [r1, #0x1c4]
005b71f8  00 00 52 e3                                      cmp r2, #0
005b71fc  5c 00 00 1a                                      bne #0x5b7374
005b7200  d3 68 e0 e7                                      ubfx r6, r3, #0x11, #1
005b7204  00 00 56 e3                                      cmp r6, #0
005b7208  43 00 00 1a                                      bne #0x5b731c
005b720c  c5 21 d4 e5                                      ldrb r2, [r4, #0x1c5]
005b7210  00 00 52 e3                                      cmp r2, #0
005b7214  4c 00 00 1a                                      bne #0x5b734c
005b7218  d3 69 e0 e7                                      ubfx r6, r3, #0x13, #1
005b721c  00 00 56 e3                                      cmp r6, #0
005b7220  44 00 00 1a                                      bne #0x5b7338
005b7224  c6 21 d4 e5                                      ldrb r2, [r4, #0x1c6]
005b7228  00 00 52 e3                                      cmp r2, #0
005b722c  55 00 00 1a                                      bne #0x5b7388
005b7230  02 06 13 e3                                      tst r3, #0x200000
005b7234  13 00 00 0a                                      beq #0x5b7288
005b7238  04 00 a0 e1                                      mov r0, r4
005b723c  05 10 a0 e1                                      mov r1, r5
005b7240  57 e1 ff eb                                      bl #0x5af7a4
005b7244  04 30 95 e5                                      ldr r3, [r5, #4]
005b7248  d3 6c e0 e7                                      ubfx r6, r3, #0x19, #1
005b724c  00 00 56 e3                                      cmp r6, #0
005b7250  1b 00 00 1a                                      bne #0x5b72c4
005b7254  d1 21 d4 e5                                      ldrb r2, [r4, #0x1d1]
005b7258  00 00 52 e3                                      cmp r2, #0
005b725c  3f 00 00 1a                                      bne #0x5b7360
005b7260  d3 6d e0 e7                                      ubfx r6, r3, #0x1b, #1
005b7264  00 00 56 e3                                      cmp r6, #0
005b7268  1c 00 00 1a                                      bne #0x5b72e0
005b726c  d4 31 d4 e5                                      ldrb r3, [r4, #0x1d4]
005b7270  00 00 53 e3                                      cmp r3, #0
005b7274  1d 00 00 1a                                      bne #0x5b72f0
005b7278  04 00 a0 e1                                      mov r0, r4
005b727c  05 10 a0 e1                                      mov r1, r5
005b7280  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b7284  90 ff ff ea                                      b #0x5b70cc
005b7288  01 05 13 e3                                      tst r3, #0x400000
005b728c  e9 ff ff 1a                                      bne #0x5b7238
005b7290  d3 6b e0 e7                                      ubfx r6, r3, #0x17, #1
005b7294  00 00 56 e3                                      cmp r6, #0
005b7298  e6 ff ff 1a                                      bne #0x5b7238
005b729c  cc 21 94 e5                                      ldr r2, [r4, #0x1cc]
005b72a0  00 00 52 e3                                      cmp r2, #0
005b72a4  e7 ff ff 0a                                      beq #0x5b7248
005b72a8  37 00 08 e3                                      movw r0, #0x8037
005b72ac  2d 5b f5 eb                                      bl #0x30df68
005b72b0  cc 61 84 e5                                      str r6, [r4, #0x1cc]
005b72b4  04 30 95 e5                                      ldr r3, [r5, #4]
005b72b8  d3 6c e0 e7                                      ubfx r6, r3, #0x19, #1
005b72bc  00 00 56 e3                                      cmp r6, #0
005b72c0  e3 ff ff 0a                                      beq #0x5b7254
005b72c4  04 00 a0 e1                                      mov r0, r4
005b72c8  05 10 a0 e1                                      mov r1, r5
005b72cc  6e e1 ff eb                                      bl #0x5af88c
005b72d0  04 30 95 e5                                      ldr r3, [r5, #4]
005b72d4  d3 6d e0 e7                                      ubfx r6, r3, #0x1b, #1
005b72d8  00 00 56 e3                                      cmp r6, #0
005b72dc  e2 ff ff 0a                                      beq #0x5b726c
005b72e0  04 00 a0 e1                                      mov r0, r4
005b72e4  05 10 a0 e1                                      mov r1, r5
005b72e8  e2 e1 ff eb                                      bl #0x5afa78
005b72ec  e1 ff ff ea                                      b #0x5b7278
005b72f0  b9 0e a0 e3                                      mov r0, #0xb90
005b72f4  1b 5b f5 eb                                      bl #0x30df68
005b72f8  d4 61 c4 e5                                      strb r6, [r4, #0x1d4]
005b72fc  dd ff ff ea                                      b #0x5b7278
005b7300  01 00 a0 e1                                      mov r0, r1
005b7304  05 10 a0 e1                                      mov r1, r5
005b7308  3a e0 ff eb                                      bl #0x5af3f8
005b730c  04 30 95 e5                                      ldr r3, [r5, #4]
005b7310  d3 68 e0 e7                                      ubfx r6, r3, #0x11, #1
005b7314  00 00 56 e3                                      cmp r6, #0
005b7318  bb ff ff 0a                                      beq #0x5b720c
005b731c  04 00 a0 e1                                      mov r0, r4
005b7320  05 10 a0 e1                                      mov r1, r5
005b7324  ca e0 ff eb                                      bl #0x5af654
005b7328  04 30 95 e5                                      ldr r3, [r5, #4]
005b732c  d3 69 e0 e7                                      ubfx r6, r3, #0x13, #1
005b7330  00 00 56 e3                                      cmp r6, #0
005b7334  ba ff ff 0a                                      beq #0x5b7224
005b7338  04 00 a0 e1                                      mov r0, r4
005b733c  05 10 a0 e1                                      mov r1, r5
005b7340  ed e0 ff eb                                      bl #0x5af6fc
005b7344  04 30 95 e5                                      ldr r3, [r5, #4]
005b7348  b8 ff ff ea                                      b #0x5b7230
005b734c  44 0b 00 e3                                      movw r0, #0xb44
005b7350  04 5b f5 eb                                      bl #0x30df68
005b7354  c5 61 c4 e5                                      strb r6, [r4, #0x1c5]
005b7358  04 30 95 e5                                      ldr r3, [r5, #4]
005b735c  ad ff ff ea                                      b #0x5b7218
005b7360  a0 00 08 e3                                      movw r0, #0x80a0
005b7364  ff 5a f5 eb                                      bl #0x30df68
005b7368  d1 61 c4 e5                                      strb r6, [r4, #0x1d1]
005b736c  04 30 95 e5                                      ldr r3, [r5, #4]
005b7370  ba ff ff ea                                      b #0x5b7260
005b7374  e2 0b 00 e3                                      movw r0, #0xbe2
005b7378  fa 5a f5 eb                                      bl #0x30df68
005b737c  c4 61 c4 e5                                      strb r6, [r4, #0x1c4]
005b7380  04 30 95 e5                                      ldr r3, [r5, #4]
005b7384  9d ff ff ea                                      b #0x5b7200
005b7388  71 0b 00 e3                                      movw r0, #0xb71
005b738c  f5 5a f5 eb                                      bl #0x30df68
005b7390  c6 61 c4 e5                                      strb r6, [r4, #0x1c6]
005b7394  04 30 95 e5                                      ldr r3, [r5, #4]
005b7398  a4 ff ff ea                                      b #0x5b7230

; FUNCTION 0x005b73e0, declared_size=264, range_size=264, mode=arm
; class-group: void glitch::video::detail
; alias: _ZN6glitch5video6detail17applyRenderStatesINS0_15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS1_33CProgrammableGLFunctionPointerSetEEEEEvPNS0_9CMaterialEhhPT_
; demangled: void glitch::video::detail::applyRenderStates<glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet> >(glitch::video::CMaterial*, unsigned char, unsigned char, glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>*)
; decoder-mode: arm
005b73e0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005b73e4  f0 c0 93 e5                                      ldr ip, [r3, #0xf0]
005b73e8  ec 40 9f e5                                      ldr r4, [pc, #0xec]
005b73ec  01 50 a0 e1                                      mov r5, r1
005b73f0  00 00 5c e3                                      cmp ip, #0
005b73f4  04 40 8f e0                                      add r4, pc, r4
005b73f8  02 70 a0 e1                                      mov r7, r2
005b73fc  04 60 90 e5                                      ldr r6, [r0, #4]
005b7400  02 00 00 0a                                      beq #0x5b7410
005b7404  04 20 9c e5                                      ldr r2, [ip, #4]
005b7408  02 00 56 e1                                      cmp r6, r2
005b740c  14 00 00 0a                                      beq #0x5b7464
005b7410  0c 80 a0 e3                                      mov r8, #0xc
005b7414  98 05 08 e0                                      mul r8, r8, r5
005b7418  18 20 96 e5                                      ldr r2, [r6, #0x18]
005b741c  bc a0 9f e5                                      ldr sl, [pc, #0xbc]
005b7420  bc 90 9f e5                                      ldr sb, [pc, #0xbc]
005b7424  08 20 82 e0                                      add r2, r2, r8
005b7428  08 20 92 e5                                      ldr r2, [r2, #8]
005b742c  34 00 a0 e3                                      mov r0, #0x34
005b7430  90 27 20 e0                                      mla r0, r0, r7, r2
005b7434  03 10 a0 e1                                      mov r1, r3
005b7438  66 ff ff eb                                      bl #0x5b71d8
005b743c  18 30 96 e5                                      ldr r3, [r6, #0x18]
005b7440  00 20 a0 e3                                      mov r2, #0
005b7444  08 80 83 e0                                      add r8, r3, r8
005b7448  08 30 98 e5                                      ldr r3, [r8, #8]
005b744c  30 20 c3 e5                                      strb r2, [r3, #0x30]
005b7450  0a 20 94 e7                                      ldr r2, [r4, sl]
005b7454  09 30 94 e7                                      ldr r3, [r4, sb]
005b7458  00 50 c2 e5                                      strb r5, [r2]
005b745c  00 70 c3 e5                                      strb r7, [r3]
005b7460  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005b7464  0c 80 a0 e3                                      mov r8, #0xc
005b7468  98 01 08 e0                                      mul r8, r8, r1
005b746c  18 20 96 e5                                      ldr r2, [r6, #0x18]
005b7470  08 20 82 e0                                      add r2, r2, r8
005b7474  04 10 d2 e5                                      ldrb r1, [r2, #4]
005b7478  01 00 51 e3                                      cmp r1, #1
005b747c  03 00 00 9a                                      bls #0x5b7490
005b7480  08 20 92 e5                                      ldr r2, [r2, #8]
005b7484  54 a0 9f e5                                      ldr sl, [pc, #0x54]
005b7488  54 90 9f e5                                      ldr sb, [pc, #0x54]
005b748c  e6 ff ff ea                                      b #0x5b742c
005b7490  08 20 92 e5                                      ldr r2, [r2, #8]
005b7494  30 10 d2 e5                                      ldrb r1, [r2, #0x30]
005b7498  00 00 51 e3                                      cmp r1, #0
005b749c  02 00 00 0a                                      beq #0x5b74ac
005b74a0  38 a0 9f e5                                      ldr sl, [pc, #0x38]
005b74a4  38 90 9f e5                                      ldr sb, [pc, #0x38]
005b74a8  df ff ff ea                                      b #0x5b742c
005b74ac  30 90 9f e5                                      ldr sb, [pc, #0x30]
005b74b0  09 10 94 e7                                      ldr r1, [r4, sb]
005b74b4  00 10 d1 e5                                      ldrb r1, [r1]
005b74b8  07 00 51 e1                                      cmp r1, r7
005b74bc  1c a0 9f 15                                      ldrne sl, [pc, #0x1c]
005b74c0  d9 ff ff 1a                                      bne #0x5b742c
005b74c4  14 a0 9f e5                                      ldr sl, [pc, #0x14]
005b74c8  0a 10 94 e7                                      ldr r1, [r4, sl]
005b74cc  00 10 d1 e5                                      ldrb r1, [r1]
005b74d0  05 00 51 e1                                      cmp r1, r5
005b74d4  d4 ff ff 1a                                      bne #0x5b742c
005b74d8  dc ff ff ea                                      b #0x5b7450
; mapping-symbol data/literal pool
005b74dc  9c d6 3d 00 08 16 00 00 70 15 00 00              .byte 0x9c, 0xd6, 0x3d, 0x00, 0x08, 0x16, 0x00, 0x00, 0x70, 0x15, 0x00, 0x00

; FUNCTION 0x005bb280, declared_size=84, range_size=84, mode=arm
; class-group: void glitch::video::detail
; alias: _ZN6glitch5video6detail13grabParameterIN5boost13intrusive_ptrINS0_8ITextureEEEEEvPT_j
; demangled: void glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::ITexture> >(boost::intrusive_ptr<glitch::video::ITexture>*, unsigned int)
; decoder-mode: arm
005bb280  70 40 2d e9                                      push {r4, r5, r6, lr}
005bb284  01 51 80 e0                                      add r5, r0, r1, lsl #2
005bb288  05 00 50 e1                                      cmp r0, r5
005bb28c  00 40 a0 e1                                      mov r4, r0
005bb290  0e 00 00 0a                                      beq #0x5bb2d0
005bb294  00 60 a0 e3                                      mov r6, #0
005bb298  00 30 94 e5                                      ldr r3, [r4]
005bb29c  00 60 84 e5                                      str r6, [r4]
005bb2a0  00 00 53 e3                                      cmp r3, #0
005bb2a4  04 20 93 15                                      ldrne r2, [r3, #4]
005bb2a8  01 20 82 12                                      addne r2, r2, #1
005bb2ac  04 20 83 15                                      strne r2, [r3, #4]
005bb2b0  00 00 94 e5                                      ldr r0, [r4]
005bb2b4  00 30 84 e5                                      str r3, [r4]
005bb2b8  04 40 84 e2                                      add r4, r4, #4
005bb2bc  00 00 50 e3                                      cmp r0, #0
005bb2c0  00 00 00 0a                                      beq #0x5bb2c8
005bb2c4  ae 88 f5 eb                                      bl #0x31d584
005bb2c8  04 00 55 e1                                      cmp r5, r4
005bb2cc  f1 ff ff 1a                                      bne #0x5bb298
005bb2d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005bb5b0, declared_size=160, range_size=160, mode=arm
; class-group: void glitch::video::detail
; alias: _ZN6glitch5video6detail13grabParameterIN5boost13intrusive_ptrINS0_6CLightEEEEEvPT_j
; demangled: void glitch::video::detail::grabParameter<boost::intrusive_ptr<glitch::video::CLight> >(boost::intrusive_ptr<glitch::video::CLight>*, unsigned int)
; decoder-mode: arm
005bb5b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bb5b4  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
005bb5b8  01 71 80 e0                                      add r7, r0, r1, lsl #2
005bb5bc  07 00 50 e1                                      cmp r0, r7
005bb5c0  00 40 a0 e1                                      mov r4, r0
005bb5c4  05 50 8f e0                                      add r5, pc, r5
005bb5c8  1d 00 00 0a                                      beq #0x5bb644
005bb5cc  78 80 9f e5                                      ldr r8, [pc, #0x78]
005bb5d0  00 60 a0 e3                                      mov r6, #0
005bb5d4  00 20 94 e5                                      ldr r2, [r4]
005bb5d8  00 60 84 e5                                      str r6, [r4]
005bb5dc  00 00 52 e3                                      cmp r2, #0
005bb5e0  00 30 92 15                                      ldrne r3, [r2]
005bb5e4  01 30 83 12                                      addne r3, r3, #1
005bb5e8  00 30 82 15                                      strne r3, [r2]
005bb5ec  00 30 94 e5                                      ldr r3, [r4]
005bb5f0  00 20 84 e5                                      str r2, [r4]
005bb5f4  04 40 84 e2                                      add r4, r4, #4
005bb5f8  00 00 53 e3                                      cmp r3, #0
005bb5fc  03 00 a0 e1                                      mov r0, r3
005bb600  0d 00 00 0a                                      beq #0x5bb63c
005bb604  00 20 93 e5                                      ldr r2, [r3]
005bb608  01 20 42 e2                                      sub r2, r2, #1
005bb60c  00 00 52 e3                                      cmp r2, #0
005bb610  00 20 83 e5                                      str r2, [r3]
005bb614  08 00 00 1a                                      bne #0x5bb63c
005bb618  54 20 d3 e5                                      ldrb r2, [r3, #0x54]
005bb61c  00 00 52 e3                                      cmp r2, #0
005bb620  08 20 95 07                                      ldreq r2, [r5, r8]
005bb624  50 10 93 05                                      ldreq r1, [r3, #0x50]
005bb628  00 c0 92 05                                      ldreq ip, [r2]
005bb62c  00 c0 81 05                                      streq ip, [r1]
005bb630  00 10 82 05                                      streq r1, [r2]
005bb634  50 60 83 e5                                      str r6, [r3, #0x50]
005bb638  1c 4b f5 eb                                      bl #0x30e2b0
005bb63c  04 00 57 e1                                      cmp r7, r4
005bb640  e3 ff ff 1a                                      bne #0x5bb5d4
005bb644  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005bb648  cc 94 3d 00 c0 3c 00 00                          .byte 0xcc, 0x94, 0x3d, 0x00, 0xc0, 0x3c, 0x00, 0x00
