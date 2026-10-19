; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006df398, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZNK6glitch5video15CGLSLShaderCode19serializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::CGLSLShaderCode::serializeAttributes(glitch::io::IAttributes*) const
; decoder-mode: arm
006df398  1e ff 2f e1                                      bx lr

; FUNCTION 0x006df39c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCode21deserializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::CGLSLShaderCode::deserializeAttributes(glitch::io::IAttributes*)
; decoder-mode: arm
006df39c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006df3c0, declared_size=416, range_size=416, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZNK6glitch5video15CGLSLShaderCode13compileShaderEv
; demangled: glitch::video::CGLSLShaderCode::compileShader() const
; decoder-mode: arm
006df3c0  30 40 2d e9                                      push {r4, r5, lr}
006df3c4  34 50 d0 e5                                      ldrb r5, [r0, #0x34]
006df3c8  14 d0 4d e2                                      sub sp, sp, #0x14
006df3cc  00 40 a0 e1                                      mov r4, r0
006df3d0  00 00 55 e3                                      cmp r5, #0
006df3d4  02 00 00 0a                                      beq #0x6df3e4
006df3d8  00 00 a0 e3                                      mov r0, #0
006df3dc  14 d0 8d e2                                      add sp, sp, #0x14
006df3e0  30 80 bd e8                                      pop {r4, r5, pc}
006df3e4  30 00 90 e5                                      ldr r0, [r0, #0x30]
006df3e8  1f bc f0 eb                                      bl #0x30e46c
006df3ec  10 20 8d e2                                      add r2, sp, #0x10
006df3f0  04 50 22 e5                                      str r5, [r2, #-4]!
006df3f4  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df3f8  81 1b 08 e3                                      movw r1, #0x8b81
006df3fc  54 be f0 eb                                      bl #0x30ed54
006df400  10 20 8d e2                                      add r2, sp, #0x10
006df404  08 50 22 e5                                      str r5, [r2, #-8]!
006df408  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df40c  84 1b 08 e3                                      movw r1, #0x8b84
006df410  4f be f0 eb                                      bl #0x30ed54
006df414  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006df418  00 00 53 e3                                      cmp r3, #0
006df41c  25 00 00 0a                                      beq #0x6df4b8
006df420  08 00 9d e5                                      ldr r0, [sp, #8]
006df424  01 00 50 e3                                      cmp r0, #1
006df428  1f 00 00 da                                      ble #0x6df4ac
006df42c  70 54 f9 eb                                      bl #0x5345f4
006df430  08 10 9d e5                                      ldr r1, [sp, #8]
006df434  00 30 a0 e1                                      mov r3, r0
006df438  00 50 a0 e1                                      mov r5, r0
006df43c  04 20 8d e2                                      add r2, sp, #4
006df440  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df444  72 bb f0 eb                                      bl #0x30e214
006df448  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df44c  4f 1b 08 e3                                      movw r1, #0x8b4f
006df450  0d 20 a0 e1                                      mov r2, sp
006df454  3e be f0 eb                                      bl #0x30ed54
006df458  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
006df45c  05 00 a0 e1                                      mov r0, r5
006df460  01 10 8f e0                                      add r1, pc, r1
006df464  da bd f0 eb                                      bl #0x30ebd4
006df468  00 00 50 e3                                      cmp r0, #0
006df46c  0a 00 00 0a                                      beq #0x6df49c
006df470  00 20 9d e5                                      ldr r2, [sp]
006df474  31 3b 08 e3                                      movw r3, #0x8b31
006df478  03 00 52 e1                                      cmp r2, r3
006df47c  2a 00 00 0a                                      beq #0x6df52c
006df480  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
006df484  02 20 8f e0                                      add r2, pc, r2
006df488  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
006df48c  02 00 a0 e3                                      mov r0, #2
006df490  05 30 a0 e1                                      mov r3, r5
006df494  01 10 8f e0                                      add r1, pc, r1
006df498  e5 ae fc eb                                      bl #0x60b034
006df49c  00 00 55 e3                                      cmp r5, #0
006df4a0  01 00 00 0a                                      beq #0x6df4ac
006df4a4  05 00 a0 e1                                      mov r0, r5
006df4a8  76 54 f9 eb                                      bl #0x534688
006df4ac  01 00 a0 e3                                      mov r0, #1
006df4b0  34 00 c4 e5                                      strb r0, [r4, #0x34]
006df4b4  c8 ff ff ea                                      b #0x6df3dc
006df4b8  08 00 9d e5                                      ldr r0, [sp, #8]
006df4bc  4c 54 f9 eb                                      bl #0x5345f4
006df4c0  00 50 a0 e1                                      mov r5, r0
006df4c4  05 30 a0 e1                                      mov r3, r5
006df4c8  08 10 9d e5                                      ldr r1, [sp, #8]
006df4cc  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df4d0  0d 20 a0 e1                                      mov r2, sp
006df4d4  b8 ba f0 eb                                      bl #0x30dfbc
006df4d8  04 20 8d e2                                      add r2, sp, #4
006df4dc  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df4e0  4f 1b 08 e3                                      movw r1, #0x8b4f
006df4e4  1a be f0 eb                                      bl #0x30ed54
006df4e8  04 20 9d e5                                      ldr r2, [sp, #4]
006df4ec  31 3b 08 e3                                      movw r3, #0x8b31
006df4f0  03 00 52 e1                                      cmp r2, r3
006df4f4  0f 00 00 0a                                      beq #0x6df538
006df4f8  50 20 9f e5                                      ldr r2, [pc, #0x50]
006df4fc  02 20 8f e0                                      add r2, pc, r2
006df500  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
006df504  03 00 a0 e3                                      mov r0, #3
006df508  05 30 a0 e1                                      mov r3, r5
006df50c  01 10 8f e0                                      add r1, pc, r1
006df510  c7 ae fc eb                                      bl #0x60b034
006df514  00 00 55 e3                                      cmp r5, #0
006df518  ae ff ff 0a                                      beq #0x6df3d8
006df51c  05 00 a0 e1                                      mov r0, r5
006df520  58 54 f9 eb                                      bl #0x534688
006df524  00 00 a0 e3                                      mov r0, #0
006df528  ab ff ff ea                                      b #0x6df3dc
006df52c  24 20 9f e5                                      ldr r2, [pc, #0x24]
006df530  02 20 8f e0                                      add r2, pc, r2
006df534  d3 ff ff ea                                      b #0x6df488
006df538  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
006df53c  02 20 8f e0                                      add r2, pc, r2
006df540  ee ff ff ea                                      b #0x6df500
; mapping-symbol data/literal pool
006df544  20 fa 20 00 c4 f9 20 00 f4 f9 20 00 4c f9 20 00  .byte 0x20, 0xfa, 0x20, 0x00, 0xc4, 0xf9, 0x20, 0x00, 0xf4, 0xf9, 0x20, 0x00, 0x4c, 0xf9, 0x20, 0x00
006df554  4c f9 20 00 08 c3 20 00 fc c2 20 00              .byte 0x4c, 0xf9, 0x20, 0x00, 0x08, 0xc3, 0x20, 0x00, 0xfc, 0xc2, 0x20, 0x00

; FUNCTION 0x006df560, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCode12createShaderEiPPKci
; demangled: glitch::video::CGLSLShaderCode::createShader(int, char const**, int)
; decoder-mode: arm
006df560  30 40 2d e9                                      push {r4, r5, lr}
006df564  00 40 a0 e1                                      mov r4, r0
006df568  30 00 90 e5                                      ldr r0, [r0, #0x30]
006df56c  0c d0 4d e2                                      sub sp, sp, #0xc
006df570  03 50 a0 e1                                      mov r5, r3
006df574  00 00 50 e3                                      cmp r0, #0
006df578  04 00 00 1a                                      bne #0x6df590
006df57c  01 00 a0 e1                                      mov r0, r1
006df580  04 20 8d e5                                      str r2, [sp, #4]
006df584  eb bb f0 eb                                      bl #0x30e538
006df588  30 00 84 e5                                      str r0, [r4, #0x30]
006df58c  04 20 9d e5                                      ldr r2, [sp, #4]
006df590  05 10 a0 e1                                      mov r1, r5
006df594  00 30 a0 e3                                      mov r3, #0
006df598  0c d0 8d e2                                      add sp, sp, #0xc
006df59c  30 40 bd e8                                      pop {r4, r5, lr}
006df5a0  f7 bd f0 ea                                      b #0x30ed84

; FUNCTION 0x006df5a4, declared_size=48, range_size=48, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCode17rmRecompileShaderEv
; demangled: glitch::video::CGLSLShaderCode::rmRecompileShader()
; decoder-mode: arm
006df5a4  70 40 2d e9                                      push {r4, r5, r6, lr}
006df5a8  00 50 a0 e3                                      mov r5, #0
006df5ac  30 50 80 e5                                      str r5, [r0, #0x30]
006df5b0  28 10 90 e5                                      ldr r1, [r0, #0x28]
006df5b4  20 20 90 e5                                      ldr r2, [r0, #0x20]
006df5b8  24 30 90 e5                                      ldr r3, [r0, #0x24]
006df5bc  00 40 a0 e1                                      mov r4, r0
006df5c0  e6 ff ff eb                                      bl #0x6df560
006df5c4  04 00 a0 e1                                      mov r0, r4
006df5c8  34 50 c4 e5                                      strb r5, [r4, #0x34]
006df5cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
006df5d0  7a ff ff ea                                      b #0x6df3c0

; FUNCTION 0x006df5d4, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCodeD1Ev
; demangled: glitch::video::CGLSLShaderCode::~CGLSLShaderCode()
; decoder-mode: arm
006df5d4  10 40 2d e9                                      push {r4, lr}
006df5d8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006df5dc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006df5e0  00 40 a0 e1                                      mov r4, r0
006df5e4  03 30 8f e0                                      add r3, pc, r3
006df5e8  20 00 90 e5                                      ldr r0, [r0, #0x20]
006df5ec  02 20 93 e7                                      ldr r2, [r3, r2]
006df5f0  00 00 50 e3                                      cmp r0, #0
006df5f4  08 20 82 e2                                      add r2, r2, #8
006df5f8  00 20 84 e5                                      str r2, [r4]
006df5fc  00 00 00 0a                                      beq #0x6df604
006df600  2a bb f0 eb                                      bl #0x30e2b0
006df604  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df608  06 bc f0 eb                                      bl #0x30e628
006df60c  04 00 a0 e1                                      mov r0, r4
006df610  b3 0a 00 eb                                      bl #0x6e20e4
006df614  04 00 a0 e1                                      mov r0, r4
006df618  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006df61c  ac 54 2b 00 0c 29 00 00                          .byte 0xac, 0x54, 0x2b, 0x00, 0x0c, 0x29, 0x00, 0x00

; FUNCTION 0x006df624, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCodeD0Ev
; demangled: glitch::video::CGLSLShaderCode::~CGLSLShaderCode()
; decoder-mode: arm
006df624  10 40 2d e9                                      push {r4, lr}
006df628  00 40 a0 e1                                      mov r4, r0
006df62c  e8 ff ff eb                                      bl #0x6df5d4
006df630  04 00 a0 e1                                      mov r0, r4
006df634  1d bb f0 eb                                      bl #0x30e2b0
006df638  04 00 a0 e1                                      mov r0, r4
006df63c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006df640, declared_size=80, range_size=80, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCodeD2Ev
; demangled: glitch::video::CGLSLShaderCode::~CGLSLShaderCode()
; decoder-mode: arm
006df640  10 40 2d e9                                      push {r4, lr}
006df644  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006df648  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006df64c  00 40 a0 e1                                      mov r4, r0
006df650  03 30 8f e0                                      add r3, pc, r3
006df654  20 00 90 e5                                      ldr r0, [r0, #0x20]
006df658  02 20 93 e7                                      ldr r2, [r3, r2]
006df65c  00 00 50 e3                                      cmp r0, #0
006df660  08 20 82 e2                                      add r2, r2, #8
006df664  00 20 84 e5                                      str r2, [r4]
006df668  00 00 00 0a                                      beq #0x6df670
006df66c  0f bb f0 eb                                      bl #0x30e2b0
006df670  30 00 94 e5                                      ldr r0, [r4, #0x30]
006df674  eb bb f0 eb                                      bl #0x30e628
006df678  04 00 a0 e1                                      mov r0, r4
006df67c  98 0a 00 eb                                      bl #0x6e20e4
006df680  04 00 a0 e1                                      mov r0, r4
006df684  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006df688  40 54 2b 00 0c 29 00 00                          .byte 0x40, 0x54, 0x2b, 0x00, 0x0c, 0x29, 0x00, 0x00

; FUNCTION 0x006df690, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCodeC1EPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE
; demangled: glitch::video::CGLSLShaderCode::CGLSLShaderCode(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*)
; decoder-mode: arm
006df690  70 40 2d e9                                      push {r4, r5, r6, lr}
006df694  01 60 a0 e1                                      mov r6, r1
006df698  38 10 9f e5                                      ldr r1, [pc, #0x38]
006df69c  38 50 9f e5                                      ldr r5, [pc, #0x38]
006df6a0  00 40 a0 e1                                      mov r4, r0
006df6a4  01 10 8f e0                                      add r1, pc, r1
006df6a8  b2 0a 00 eb                                      bl #0x6e2178
006df6ac  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006df6b0  05 50 8f e0                                      add r5, pc, r5
006df6b4  00 20 a0 e3                                      mov r2, #0
006df6b8  03 30 95 e7                                      ldr r3, [r5, r3]
006df6bc  2c 60 84 e5                                      str r6, [r4, #0x2c]
006df6c0  34 20 c4 e5                                      strb r2, [r4, #0x34]
006df6c4  08 30 83 e2                                      add r3, r3, #8
006df6c8  00 30 84 e5                                      str r3, [r4]
006df6cc  30 20 84 e5                                      str r2, [r4, #0x30]
006df6d0  04 00 a0 e1                                      mov r0, r4
006df6d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006df6d8  64 c1 1e 00 e0 53 2b 00 0c 29 00 00              .byte 0x64, 0xc1, 0x1e, 0x00, 0xe0, 0x53, 0x2b, 0x00, 0x0c, 0x29, 0x00, 0x00

; FUNCTION 0x006df6e4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCodeC2EPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE
; demangled: glitch::video::CGLSLShaderCode::CGLSLShaderCode(glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*)
; decoder-mode: arm
006df6e4  70 40 2d e9                                      push {r4, r5, r6, lr}
006df6e8  01 60 a0 e1                                      mov r6, r1
006df6ec  38 10 9f e5                                      ldr r1, [pc, #0x38]
006df6f0  38 50 9f e5                                      ldr r5, [pc, #0x38]
006df6f4  00 40 a0 e1                                      mov r4, r0
006df6f8  01 10 8f e0                                      add r1, pc, r1
006df6fc  9d 0a 00 eb                                      bl #0x6e2178
006df700  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006df704  05 50 8f e0                                      add r5, pc, r5
006df708  00 20 a0 e3                                      mov r2, #0
006df70c  03 30 95 e7                                      ldr r3, [r5, r3]
006df710  2c 60 84 e5                                      str r6, [r4, #0x2c]
006df714  34 20 c4 e5                                      strb r2, [r4, #0x34]
006df718  08 30 83 e2                                      add r3, r3, #8
006df71c  00 30 84 e5                                      str r3, [r4]
006df720  30 20 84 e5                                      str r2, [r4, #0x30]
006df724  04 00 a0 e1                                      mov r0, r4
006df728  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006df72c  10 c1 1e 00 8c 53 2b 00 0c 29 00 00              .byte 0x10, 0xc1, 0x1e, 0x00, 0x8c, 0x53, 0x2b, 0x00, 0x0c, 0x29, 0x00, 0x00

; FUNCTION 0x006df738, declared_size=320, range_size=320, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCodeC1EPKcPS3_NS0_13E_SHADER_TYPEEPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEb
; demangled: glitch::video::CGLSLShaderCode::CGLSLShaderCode(char const*, char const**, glitch::video::E_SHADER_TYPE, glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*, bool)
; decoder-mode: arm
006df738  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006df73c  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
006df740  00 40 a0 e1                                      mov r4, r0
006df744  02 50 a0 e1                                      mov r5, r2
006df748  03 80 a0 e1                                      mov r8, r3
006df74c  2c 90 dd e5                                      ldrb sb, [sp, #0x2c]
006df750  88 0a 00 eb                                      bl #0x6e2178
006df754  18 31 9f e5                                      ldr r3, [pc, #0x118]
006df758  06 60 8f e0                                      add r6, pc, r6
006df75c  28 10 9d e5                                      ldr r1, [sp, #0x28]
006df760  03 30 96 e7                                      ldr r3, [r6, r3]
006df764  00 20 a0 e3                                      mov r2, #0
006df768  2c 10 84 e5                                      str r1, [r4, #0x2c]
006df76c  08 30 83 e2                                      add r3, r3, #8
006df770  34 20 c4 e5                                      strb r2, [r4, #0x34]
006df774  00 30 84 e5                                      str r3, [r4]
006df778  30 20 84 e5                                      str r2, [r4, #0x30]
006df77c  00 00 95 e5                                      ldr r0, [r5]
006df780  02 00 50 e1                                      cmp r0, r2
006df784  00 a0 a0 01                                      moveq sl, r0
006df788  06 00 00 0a                                      beq #0x6df7a8
006df78c  05 a0 a0 e1                                      mov sl, r5
006df790  04 30 ba e5                                      ldr r3, [sl, #4]!
006df794  00 00 53 e3                                      cmp r3, #0
006df798  fc ff ff 1a                                      bne #0x6df790
006df79c  0a a0 65 e0                                      rsb sl, r5, sl
006df7a0  4a a1 a0 e1                                      asr sl, sl, #2
006df7a4  0a 01 a0 e1                                      lsl r0, sl, #2
006df7a8  04 00 58 e3                                      cmp r8, #4
006df7ac  31 2b 08 e3                                      movw r2, #0x8b31
006df7b0  30 3b 08 e3                                      movw r3, #0x8b30
006df7b4  02 30 a0 01                                      moveq r3, r2
006df7b8  28 30 84 e5                                      str r3, [r4, #0x28]
006df7bc  24 a0 84 e5                                      str sl, [r4, #0x24]
006df7c0  00 10 a0 e3                                      mov r1, #0
006df7c4  77 52 f9 eb                                      bl #0x5341a8
006df7c8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006df7cc  00 b0 a0 e1                                      mov fp, r0
006df7d0  20 00 84 e5                                      str r0, [r4, #0x20]
006df7d4  00 00 53 e3                                      cmp r3, #0
006df7d8  16 00 00 da                                      ble #0x6df838
006df7dc  00 60 a0 e3                                      mov r6, #0
006df7e0  06 70 a0 e1                                      mov r7, r6
006df7e4  00 00 00 ea                                      b #0x6df7ec
006df7e8  20 b0 94 e5                                      ldr fp, [r4, #0x20]
006df7ec  06 00 95 e7                                      ldr r0, [r5, r6]
006df7f0  97 b9 f0 eb                                      bl #0x30de54
006df7f4  00 10 a0 e3                                      mov r1, #0
006df7f8  01 00 80 e2                                      add r0, r0, #1
006df7fc  69 52 f9 eb                                      bl #0x5341a8
006df800  06 00 8b e7                                      str r0, [fp, r6]
006df804  06 b0 95 e7                                      ldr fp, [r5, r6]
006df808  01 70 87 e2                                      add r7, r7, #1
006df80c  0b 00 a0 e1                                      mov r0, fp
006df810  8f b9 f0 eb                                      bl #0x30de54
006df814  20 30 94 e5                                      ldr r3, [r4, #0x20]
006df818  01 20 80 e2                                      add r2, r0, #1
006df81c  0b 10 a0 e1                                      mov r1, fp
006df820  06 00 93 e7                                      ldr r0, [r3, r6]
006df824  0f bc f0 eb                                      bl #0x30e868
006df828  24 30 94 e5                                      ldr r3, [r4, #0x24]
006df82c  04 60 86 e2                                      add r6, r6, #4
006df830  07 00 53 e1                                      cmp r3, r7
006df834  eb ff ff ca                                      bgt #0x6df7e8
006df838  04 00 58 e3                                      cmp r8, #4
006df83c  30 3b 08 e3                                      movw r3, #0x8b30
006df840  31 1b 08 e3                                      movw r1, #0x8b31
006df844  05 20 a0 e1                                      mov r2, r5
006df848  03 10 a0 11                                      movne r1, r3
006df84c  04 00 a0 e1                                      mov r0, r4
006df850  0a 30 a0 e1                                      mov r3, sl
006df854  41 ff ff eb                                      bl #0x6df560
006df858  00 00 59 e3                                      cmp sb, #0
006df85c  01 00 00 0a                                      beq #0x6df868
006df860  04 00 a0 e1                                      mov r0, r4
006df864  d5 fe ff eb                                      bl #0x6df3c0
006df868  04 00 a0 e1                                      mov r0, r4
006df86c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006df870  38 53 2b 00 0c 29 00 00                          .byte 0x38, 0x53, 0x2b, 0x00, 0x0c, 0x29, 0x00, 0x00

; FUNCTION 0x006df878, declared_size=320, range_size=320, mode=arm
; class-group: glitch::video::CGLSLShaderCode
; alias: _ZN6glitch5video15CGLSLShaderCodeC2EPKcPS3_NS0_13E_SHADER_TYPEEPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEb
; demangled: glitch::video::CGLSLShaderCode::CGLSLShaderCode(char const*, char const**, glitch::video::E_SHADER_TYPE, glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>*, bool)
; decoder-mode: arm
006df878  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006df87c  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
006df880  00 40 a0 e1                                      mov r4, r0
006df884  02 50 a0 e1                                      mov r5, r2
006df888  03 80 a0 e1                                      mov r8, r3
006df88c  2c 90 dd e5                                      ldrb sb, [sp, #0x2c]
006df890  38 0a 00 eb                                      bl #0x6e2178
006df894  18 31 9f e5                                      ldr r3, [pc, #0x118]
006df898  06 60 8f e0                                      add r6, pc, r6
006df89c  28 10 9d e5                                      ldr r1, [sp, #0x28]
006df8a0  03 30 96 e7                                      ldr r3, [r6, r3]
006df8a4  00 20 a0 e3                                      mov r2, #0
006df8a8  2c 10 84 e5                                      str r1, [r4, #0x2c]
006df8ac  08 30 83 e2                                      add r3, r3, #8
006df8b0  34 20 c4 e5                                      strb r2, [r4, #0x34]
006df8b4  00 30 84 e5                                      str r3, [r4]
006df8b8  30 20 84 e5                                      str r2, [r4, #0x30]
006df8bc  00 00 95 e5                                      ldr r0, [r5]
006df8c0  02 00 50 e1                                      cmp r0, r2
006df8c4  00 a0 a0 01                                      moveq sl, r0
006df8c8  06 00 00 0a                                      beq #0x6df8e8
006df8cc  05 a0 a0 e1                                      mov sl, r5
006df8d0  04 30 ba e5                                      ldr r3, [sl, #4]!
006df8d4  00 00 53 e3                                      cmp r3, #0
006df8d8  fc ff ff 1a                                      bne #0x6df8d0
006df8dc  0a a0 65 e0                                      rsb sl, r5, sl
006df8e0  4a a1 a0 e1                                      asr sl, sl, #2
006df8e4  0a 01 a0 e1                                      lsl r0, sl, #2
006df8e8  04 00 58 e3                                      cmp r8, #4
006df8ec  31 2b 08 e3                                      movw r2, #0x8b31
006df8f0  30 3b 08 e3                                      movw r3, #0x8b30
006df8f4  02 30 a0 01                                      moveq r3, r2
006df8f8  28 30 84 e5                                      str r3, [r4, #0x28]
006df8fc  24 a0 84 e5                                      str sl, [r4, #0x24]
006df900  00 10 a0 e3                                      mov r1, #0
006df904  27 52 f9 eb                                      bl #0x5341a8
006df908  24 30 94 e5                                      ldr r3, [r4, #0x24]
006df90c  00 b0 a0 e1                                      mov fp, r0
006df910  20 00 84 e5                                      str r0, [r4, #0x20]
006df914  00 00 53 e3                                      cmp r3, #0
006df918  16 00 00 da                                      ble #0x6df978
006df91c  00 60 a0 e3                                      mov r6, #0
006df920  06 70 a0 e1                                      mov r7, r6
006df924  00 00 00 ea                                      b #0x6df92c
006df928  20 b0 94 e5                                      ldr fp, [r4, #0x20]
006df92c  06 00 95 e7                                      ldr r0, [r5, r6]
006df930  47 b9 f0 eb                                      bl #0x30de54
006df934  00 10 a0 e3                                      mov r1, #0
006df938  01 00 80 e2                                      add r0, r0, #1
006df93c  19 52 f9 eb                                      bl #0x5341a8
006df940  06 00 8b e7                                      str r0, [fp, r6]
006df944  06 b0 95 e7                                      ldr fp, [r5, r6]
006df948  01 70 87 e2                                      add r7, r7, #1
006df94c  0b 00 a0 e1                                      mov r0, fp
006df950  3f b9 f0 eb                                      bl #0x30de54
006df954  20 30 94 e5                                      ldr r3, [r4, #0x20]
006df958  01 20 80 e2                                      add r2, r0, #1
006df95c  0b 10 a0 e1                                      mov r1, fp
006df960  06 00 93 e7                                      ldr r0, [r3, r6]
006df964  bf bb f0 eb                                      bl #0x30e868
006df968  24 30 94 e5                                      ldr r3, [r4, #0x24]
006df96c  04 60 86 e2                                      add r6, r6, #4
006df970  07 00 53 e1                                      cmp r3, r7
006df974  eb ff ff ca                                      bgt #0x6df928
006df978  04 00 58 e3                                      cmp r8, #4
006df97c  30 3b 08 e3                                      movw r3, #0x8b30
006df980  31 1b 08 e3                                      movw r1, #0x8b31
006df984  05 20 a0 e1                                      mov r2, r5
006df988  03 10 a0 11                                      movne r1, r3
006df98c  04 00 a0 e1                                      mov r0, r4
006df990  0a 30 a0 e1                                      mov r3, sl
006df994  f1 fe ff eb                                      bl #0x6df560
006df998  00 00 59 e3                                      cmp sb, #0
006df99c  01 00 00 0a                                      beq #0x6df9a8
006df9a0  04 00 a0 e1                                      mov r0, r4
006df9a4  85 fe ff eb                                      bl #0x6df3c0
006df9a8  04 00 a0 e1                                      mov r0, r4
006df9ac  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006df9b0  f8 51 2b 00 0c 29 00 00                          .byte 0xf8, 0x51, 0x2b, 0x00, 0x0c, 0x29, 0x00, 0x00
