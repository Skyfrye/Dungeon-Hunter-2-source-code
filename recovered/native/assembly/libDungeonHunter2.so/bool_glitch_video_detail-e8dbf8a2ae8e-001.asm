; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b0638, declared_size=308, range_size=308, mode=arm
; class-group: bool glitch::video::detail
; alias: _ZN6glitch5video6detail26drawIndexedSoftPolygonModeINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEEEbRKNS0_16CPrimitiveStreamENS0_14E_POLYGON_MODEEPKv
; demangled: bool glitch::video::detail::drawIndexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> >(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, void const*)
; decoder-mode: arm
005b0638  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005b063c  14 31 9f e5                                      ldr r3, [pc, #0x114]
005b0640  14 c1 9f e5                                      ldr ip, [pc, #0x114]
005b0644  04 50 90 e5                                      ldr r5, [r0, #4]
005b0648  b4 41 d0 e1                                      ldrh r4, [r0, #0x14]
005b064c  03 30 8f e0                                      add r3, pc, r3
005b0650  02 00 51 e3                                      cmp r1, #2
005b0654  e0 30 83 e2                                      add r3, r3, #0xe0
005b0658  05 50 82 e0                                      add r5, r2, r5
005b065c  0c c0 8f e0                                      add ip, pc, ip
005b0660  04 61 93 e7                                      ldr r6, [r3, r4, lsl #2]
005b0664  16 00 00 0a                                      beq #0x5b06c4
005b0668  b6 a1 d0 e1                                      ldrh sl, [r0, #0x16]
005b066c  08 00 5a e3                                      cmp sl, #8
005b0670  0a f1 8f 90                                      addls pc, pc, sl, lsl #2
005b0674  10 00 00 ea                                      b #0x5b06bc
005b0678  11 00 00 ea                                      b #0x5b06c4
005b067c  06 00 00 ea                                      b #0x5b069c
005b0680  05 00 00 ea                                      b #0x5b069c
005b0684  04 00 00 ea                                      b #0x5b069c
005b0688  14 00 00 ea                                      b #0x5b06e0
005b068c  13 00 00 ea                                      b #0x5b06e0
005b0690  12 00 00 ea                                      b #0x5b06e0
005b0694  11 00 00 ea                                      b #0x5b06e0
005b0698  10 00 00 ea                                      b #0x5b06e0
005b069c  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
005b06a0  08 10 90 e5                                      ldr r1, [r0, #8]
005b06a4  06 20 a0 e1                                      mov r2, r6
005b06a8  03 30 8f e0                                      add r3, pc, r3
005b06ac  ec 30 83 e2                                      add r3, r3, #0xec
005b06b0  0a 01 93 e7                                      ldr r0, [r3, sl, lsl #2]
005b06b4  05 30 a0 e1                                      mov r3, r5
005b06b8  c5 77 f5 eb                                      bl #0x30e5d4
005b06bc  01 00 a0 e3                                      mov r0, #1
005b06c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005b06c4  08 10 90 e5                                      ldr r1, [r0, #8]
005b06c8  06 20 a0 e1                                      mov r2, r6
005b06cc  05 30 a0 e1                                      mov r3, r5
005b06d0  00 00 a0 e3                                      mov r0, #0
005b06d4  be 77 f5 eb                                      bl #0x30e5d4
005b06d8  01 00 a0 e3                                      mov r0, #1
005b06dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005b06e0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
005b06e4  04 10 4a e2                                      sub r1, sl, #4
005b06e8  08 00 90 e5                                      ldr r0, [r0, #8]
005b06ec  03 20 9c e7                                      ldr r2, [ip, r3]
005b06f0  70 30 9f e5                                      ldr r3, [pc, #0x70]
005b06f4  06 00 5a e3                                      cmp sl, #6
005b06f8  01 71 92 e7                                      ldr r7, [r2, r1, lsl #2]
005b06fc  03 30 9c e7                                      ldr r3, [ip, r3]
005b0700  03 a0 a0 d3                                      movle sl, #3
005b0704  04 a0 a0 c3                                      movgt sl, #4
005b0708  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
005b070c  93 07 07 e0                                      mul r7, r3, r7
005b0710  90 03 00 e0                                      mul r0, r0, r3
005b0714  07 10 a0 e1                                      mov r1, r7
005b0718  4b 79 f5 eb                                      bl #0x30ec4c
005b071c  97 50 28 e0                                      mla r8, r7, r0, r5
005b0720  08 00 55 e1                                      cmp r5, r8
005b0724  e4 ff ff 0a                                      beq #0x5b06bc
005b0728  00 40 a0 e3                                      mov r4, #0
005b072c  05 30 a0 e1                                      mov r3, r5
005b0730  07 40 84 e0                                      add r4, r4, r7
005b0734  02 00 a0 e3                                      mov r0, #2
005b0738  0a 10 a0 e1                                      mov r1, sl
005b073c  06 20 a0 e1                                      mov r2, r6
005b0740  a3 77 f5 eb                                      bl #0x30e5d4
005b0744  04 30 85 e0                                      add r3, r5, r4
005b0748  03 00 58 e1                                      cmp r8, r3
005b074c  f7 ff ff 1a                                      bne #0x5b0730
005b0750  01 00 a0 e3                                      mov r0, #1
005b0754  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005b0758  e8 f9 32 00 34 44 3e 00 8c f9 32 00 88 1c 00 00  .byte 0xe8, 0xf9, 0x32, 0x00, 0x34, 0x44, 0x3e, 0x00, 0x8c, 0xf9, 0x32, 0x00, 0x88, 0x1c, 0x00, 0x00
005b0768  9c 42 00 00                                      .byte 0x9c, 0x42, 0x00, 0x00

; FUNCTION 0x005b076c, declared_size=132, range_size=132, mode=arm
; class-group: bool glitch::video::detail
; alias: _ZN6glitch5video6detail20drawIndexedSoftQuadsINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEEEbRKNS0_16CPrimitiveStreamEPKv
; demangled: bool glitch::video::detail::drawIndexedSoftQuads<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> >(glitch::video::CPrimitiveStream const&, void const*)
; decoder-mode: arm
005b076c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005b0770  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
005b0774  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
005b0778  b4 a1 d0 e1                                      ldrh sl, [r0, #0x14]
005b077c  03 30 8f e0                                      add r3, pc, r3
005b0780  0c c0 93 e7                                      ldr ip, [r3, ip]
005b0784  04 50 90 e5                                      ldr r5, [r0, #4]
005b0788  0a 71 9c e7                                      ldr r7, [ip, sl, lsl #2]
005b078c  05 50 81 e0                                      add r5, r1, r5
005b0790  da be ff eb                                      bl #0x5a0300
005b0794  07 71 a0 e1                                      lsl r7, r7, #2
005b0798  97 50 26 e0                                      mla r6, r7, r0, r5
005b079c  06 00 55 e1                                      cmp r5, r6
005b07a0  0d 00 00 0a                                      beq #0x5b07dc
005b07a4  40 80 9f e5                                      ldr r8, [pc, #0x40]
005b07a8  00 40 a0 e3                                      mov r4, #0
005b07ac  05 30 a0 e1                                      mov r3, r5
005b07b0  08 80 8f e0                                      add r8, pc, r8
005b07b4  e0 80 88 e2                                      add r8, r8, #0xe0
005b07b8  0a 81 88 e0                                      add r8, r8, sl, lsl #2
005b07bc  07 40 84 e0                                      add r4, r4, r7
005b07c0  05 00 a0 e3                                      mov r0, #5
005b07c4  04 10 a0 e3                                      mov r1, #4
005b07c8  00 20 98 e5                                      ldr r2, [r8]
005b07cc  80 77 f5 eb                                      bl #0x30e5d4
005b07d0  05 30 84 e0                                      add r3, r4, r5
005b07d4  03 00 56 e1                                      cmp r6, r3
005b07d8  f7 ff ff 1a                                      bne #0x5b07bc
005b07dc  01 00 a0 e3                                      mov r0, #1
005b07e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005b07e4  14 43 3e 00 9c 42 00 00 84 f8 32 00              .byte 0x14, 0x43, 0x3e, 0x00, 0x9c, 0x42, 0x00, 0x00, 0x84, 0xf8, 0x32, 0x00

; FUNCTION 0x005b07f0, declared_size=248, range_size=248, mode=arm
; class-group: bool glitch::video::detail
; alias: _ZN6glitch5video6detail28drawUnindexedSoftPolygonModeINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEEEbRKNS0_16CPrimitiveStreamENS0_14E_POLYGON_MODEE
; demangled: bool glitch::video::detail::drawUnindexedSoftPolygonMode<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> >(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE)
; decoder-mode: arm
005b07f0  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
005b07f4  02 00 51 e3                                      cmp r1, #2
005b07f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b07fc  00 10 a0 e1                                      mov r1, r0
005b0800  03 30 8f e0                                      add r3, pc, r3
005b0804  15 00 00 0a                                      beq #0x5b0860
005b0808  b6 01 d0 e1                                      ldrh r0, [r0, #0x16]
005b080c  08 00 50 e3                                      cmp r0, #8
005b0810  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
005b0814  0f 00 00 ea                                      b #0x5b0858
005b0818  10 00 00 ea                                      b #0x5b0860
005b081c  06 00 00 ea                                      b #0x5b083c
005b0820  05 00 00 ea                                      b #0x5b083c
005b0824  04 00 00 ea                                      b #0x5b083c
005b0828  12 00 00 ea                                      b #0x5b0878
005b082c  11 00 00 ea                                      b #0x5b0878
005b0830  10 00 00 ea                                      b #0x5b0878
005b0834  0f 00 00 ea                                      b #0x5b0878
005b0838  0e 00 00 ea                                      b #0x5b0878
005b083c  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
005b0840  08 20 91 e5                                      ldr r2, [r1, #8]
005b0844  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005b0848  03 30 8f e0                                      add r3, pc, r3
005b084c  ec 30 83 e2                                      add r3, r3, #0xec
005b0850  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
005b0854  54 75 f5 eb                                      bl #0x30ddac
005b0858  01 00 a0 e3                                      mov r0, #1
005b085c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b0860  08 20 91 e5                                      ldr r2, [r1, #8]
005b0864  00 00 a0 e3                                      mov r0, #0
005b0868  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005b086c  4e 75 f5 eb                                      bl #0x30ddac
005b0870  01 00 a0 e3                                      mov r0, #1
005b0874  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b0878  64 20 9f e5                                      ldr r2, [pc, #0x64]
005b087c  10 70 91 e5                                      ldr r7, [r1, #0x10]
005b0880  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005b0884  02 30 93 e7                                      ldr r3, [r3, r2]
005b0888  06 00 50 e3                                      cmp r0, #6
005b088c  03 80 a0 d3                                      movle r8, #3
005b0890  04 80 a0 c3                                      movgt r8, #4
005b0894  04 00 40 e2                                      sub r0, r0, #4
005b0898  07 00 51 e1                                      cmp r1, r7
005b089c  00 41 93 e7                                      ldr r4, [r3, r0, lsl #2]
005b08a0  ec ff ff 2a                                      bhs #0x5b0858
005b08a4  01 60 84 e0                                      add r6, r4, r1
005b08a8  06 50 a0 e1                                      mov r5, r6
005b08ac  00 00 00 ea                                      b #0x5b08b4
005b08b0  06 60 84 e0                                      add r6, r4, r6
005b08b4  04 50 85 e0                                      add r5, r5, r4
005b08b8  02 00 a0 e3                                      mov r0, #2
005b08bc  08 20 a0 e1                                      mov r2, r8
005b08c0  39 75 f5 eb                                      bl #0x30ddac
005b08c4  05 30 64 e0                                      rsb r3, r4, r5
005b08c8  03 00 57 e1                                      cmp r7, r3
005b08cc  06 10 a0 e1                                      mov r1, r6
005b08d0  f6 ff ff 8a                                      bhi #0x5b08b0
005b08d4  01 00 a0 e3                                      mov r0, #1
005b08d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005b08dc  90 42 3e 00 ec f7 32 00 34 3e 00 00              .byte 0x90, 0x42, 0x3e, 0x00, 0xec, 0xf7, 0x32, 0x00, 0x34, 0x3e, 0x00, 0x00

; FUNCTION 0x005b08e8, declared_size=224, range_size=224, mode=arm
; class-group: bool glitch::video::detail
; alias: _ZN6glitch5video6detail22drawUnindexedSoftQuadsINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEEEbRKNS0_16CPrimitiveStreamE
; demangled: bool glitch::video::detail::drawUnindexedSoftQuads<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> >(glitch::video::CPrimitiveStream const&)
; decoder-mode: arm
005b08e8  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
005b08ec  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
005b08f0  70 40 2d e9                                      push {r4, r5, r6, lr}
005b08f4  03 30 8f e0                                      add r3, pc, r3
005b08f8  02 20 93 e7                                      ldr r2, [r3, r2]
005b08fc  08 60 90 e5                                      ldr r6, [r0, #8]
005b0900  00 50 a0 e1                                      mov r5, r0
005b0904  04 00 92 e5                                      ldr r0, [r2, #4]
005b0908  90 06 00 e0                                      mul r0, r0, r6
005b090c  00 01 a0 e1                                      lsl r0, r0, #2
005b0910  37 0f fe eb                                      bl #0x5345f4
005b0914  b6 31 d5 e1                                      ldrh r3, [r5, #0x16]
005b0918  00 40 a0 e1                                      mov r4, r0
005b091c  08 00 53 e3                                      cmp r3, #8
005b0920  03 60 c6 03                                      biceq r6, r6, #3
005b0924  04 20 a0 03                                      moveq r2, #4
005b0928  03 00 00 0a                                      beq #0x5b093c
005b092c  01 60 c6 e3                                      bic r6, r6, #1
005b0930  03 00 56 e3                                      cmp r6, #3
005b0934  00 60 a0 93                                      movls r6, #0
005b0938  02 20 a0 e3                                      mov r2, #2
005b093c  00 00 56 e3                                      cmp r6, #0
005b0940  10 00 00 0a                                      beq #0x5b0988
005b0944  02 60 86 e0                                      add r6, r6, r2
005b0948  04 30 a0 e1                                      mov r3, r4
005b094c  00 10 a0 e3                                      mov r1, #0
005b0950  b0 10 c3 e1                                      strh r1, [r3]
005b0954  01 10 a0 e3                                      mov r1, #1
005b0958  b2 10 c3 e1                                      strh r1, [r3, #2]
005b095c  03 10 a0 e3                                      mov r1, #3
005b0960  b4 10 c3 e1                                      strh r1, [r3, #4]
005b0964  b6 10 c3 e1                                      strh r1, [r3, #6]
005b0968  02 60 86 e0                                      add r6, r6, r2
005b096c  01 10 a0 e3                                      mov r1, #1
005b0970  b8 10 c3 e1                                      strh r1, [r3, #8]
005b0974  02 00 56 e1                                      cmp r6, r2
005b0978  02 10 a0 e3                                      mov r1, #2
005b097c  ba 10 c3 e1                                      strh r1, [r3, #0xa]
005b0980  0c 30 83 e2                                      add r3, r3, #0xc
005b0984  f0 ff ff 1a                                      bne #0x5b094c
005b0988  05 00 a0 e1                                      mov r0, r5
005b098c  5b be ff eb                                      bl #0x5a0300
005b0990  06 10 a0 e3                                      mov r1, #6
005b0994  91 00 01 e0                                      mul r1, r1, r0
005b0998  03 24 01 e3                                      movw r2, #0x1403
005b099c  04 00 a0 e3                                      mov r0, #4
005b09a0  04 30 a0 e1                                      mov r3, r4
005b09a4  0a 77 f5 eb                                      bl #0x30e5d4
005b09a8  00 00 54 e3                                      cmp r4, #0
005b09ac  01 00 00 0a                                      beq #0x5b09b8
005b09b0  04 00 a0 e1                                      mov r0, r4
005b09b4  33 0f fe eb                                      bl #0x534688
005b09b8  01 00 a0 e3                                      mov r0, #1
005b09bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b09c0  9c 41 3e 00 9c 42 00 00                          .byte 0x9c, 0x41, 0x3e, 0x00, 0x9c, 0x42, 0x00, 0x00

; FUNCTION 0x005b09c8, declared_size=212, range_size=212, mode=arm
; class-group: bool glitch::video::detail
; alias: _ZN6glitch5video6detail14drawPrimitivesINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEEEbRKNS0_16CPrimitiveStreamENS0_14E_POLYGON_MODEEPKh
; demangled: bool glitch::video::detail::drawPrimitives<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler> >(glitch::video::CPrimitiveStream const&, glitch::video::E_POLYGON_MODE, unsigned char const*)
; decoder-mode: arm
005b09c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b09cc  00 40 90 e5                                      ldr r4, [r0]
005b09d0  00 c0 a0 e1                                      mov ip, r0
005b09d4  01 50 a0 e1                                      mov r5, r1
005b09d8  00 00 54 e3                                      cmp r4, #0
005b09dc  14 00 00 0a                                      beq #0x5b0a34
005b09e0  00 00 51 e3                                      cmp r1, #0
005b09e4  04 30 90 e5                                      ldr r3, [r0, #4]
005b09e8  21 00 00 1a                                      bne #0x5b0a74
005b09ec  b6 11 d0 e1                                      ldrh r1, [r0, #0x16]
005b09f0  08 00 51 e3                                      cmp r1, #8
005b09f4  0b 00 00 0a                                      beq #0x5b0a28
005b09f8  94 00 9f e5                                      ldr r0, [pc, #0x94]
005b09fc  b4 e1 dc e1                                      ldrh lr, [ip, #0x14]
005b0a00  03 30 82 e0                                      add r3, r2, r3
005b0a04  00 00 8f e0                                      add r0, pc, r0
005b0a08  e0 20 80 e2                                      add r2, r0, #0xe0
005b0a0c  ec 00 80 e2                                      add r0, r0, #0xec
005b0a10  01 01 90 e7                                      ldr r0, [r0, r1, lsl #2]
005b0a14  0e 21 92 e7                                      ldr r2, [r2, lr, lsl #2]
005b0a18  08 10 9c e5                                      ldr r1, [ip, #8]
005b0a1c  ec 76 f5 eb                                      bl #0x30e5d4
005b0a20  01 00 a0 e3                                      mov r0, #1
005b0a24  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0a28  08 10 94 e5                                      ldr r1, [r4, #8]
005b0a2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a30  4d ff ff ea                                      b #0x5b076c
005b0a34  00 00 51 e3                                      cmp r1, #0
005b0a38  10 00 00 1a                                      bne #0x5b0a80
005b0a3c  b6 31 dc e1                                      ldrh r3, [ip, #0x16]
005b0a40  08 00 53 e3                                      cmp r3, #8
005b0a44  0f 00 00 0a                                      beq #0x5b0a88
005b0a48  07 00 53 e3                                      cmp r3, #7
005b0a4c  0d 00 00 0a                                      beq #0x5b0a88
005b0a50  40 00 9f e5                                      ldr r0, [pc, #0x40]
005b0a54  08 20 9c e5                                      ldr r2, [ip, #8]
005b0a58  0c 10 9c e5                                      ldr r1, [ip, #0xc]
005b0a5c  00 00 8f e0                                      add r0, pc, r0
005b0a60  ec 00 80 e2                                      add r0, r0, #0xec
005b0a64  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005b0a68  cf 74 f5 eb                                      bl #0x30ddac
005b0a6c  01 00 a0 e3                                      mov r0, #1
005b0a70  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b0a74  08 20 94 e5                                      ldr r2, [r4, #8]
005b0a78  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a7c  ed fe ff ea                                      b #0x5b0638
005b0a80  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a84  59 ff ff ea                                      b #0x5b07f0
005b0a88  0c 00 a0 e1                                      mov r0, ip
005b0a8c  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0a90  94 ff ff ea                                      b #0x5b08e8
; mapping-symbol data/literal pool
005b0a94  30 f6 32 00 d8 f5 32 00                          .byte 0x30, 0xf6, 0x32, 0x00, 0xd8, 0xf5, 0x32, 0x00
