; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005df264, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMap13totalMapCountERKNS0_17CMaterialRendererE
; demangled: glitch::video::CMaterialVertexAttributeMap::totalMapCount(glitch::video::CMaterialRenderer const&)
; decoder-mode: arm
005df264  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
005df268  18 20 90 e5                                      ldr r2, [r0, #0x18]
005df26c  0c 10 a0 e3                                      mov r1, #0xc
005df270  01 30 43 e2                                      sub r3, r3, #1
005df274  73 30 ef e6                                      uxtb r3, r3
005df278  91 23 23 e0                                      mla r3, r1, r3, r2
005df27c  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
005df280  08 00 93 e5                                      ldr r0, [r3, #8]
005df284  04 20 d3 e5                                      ldrb r2, [r3, #4]
005df288  c5 3e 04 e3                                      movw r3, #0x4ec5
005df28c  00 00 61 e0                                      rsb r0, r1, r0
005df290  ec 34 4c e3                                      movt r3, #0xc4ec
005df294  40 01 a0 e1                                      asr r0, r0, #2
005df298  93 20 20 e0                                      mla r0, r3, r0, r2
005df29c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005df2c0, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMapC1ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEE
; demangled: glitch::video::CMaterialVertexAttributeMap::CMaterialVertexAttributeMap(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&)
; decoder-mode: arm
005df2c0  00 30 a0 e3                                      mov r3, #0
005df2c4  10 40 2d e9                                      push {r4, lr}
005df2c8  00 30 80 e5                                      str r3, [r0]
005df2cc  00 30 91 e5                                      ldr r3, [r1]
005df2d0  00 40 a0 e1                                      mov r4, r0
005df2d4  00 00 53 e3                                      cmp r3, #0
005df2d8  04 30 80 e5                                      str r3, [r0, #4]
005df2dc  00 20 93 15                                      ldrne r2, [r3]
005df2e0  01 20 82 12                                      addne r2, r2, #1
005df2e4  00 20 83 15                                      strne r2, [r3]
005df2e8  00 00 91 e5                                      ldr r0, [r1]
005df2ec  dc ff ff eb                                      bl #0x5df264
005df2f0  50 00 bd e7                                      sbfx r0, r0, #0, #0x1e
005df2f4  00 00 50 e3                                      cmp r0, #0
005df2f8  05 00 00 da                                      ble #0x5df314
005df2fc  04 30 a0 e1                                      mov r3, r4
005df300  00 20 a0 e3                                      mov r2, #0
005df304  01 00 50 e2                                      subs r0, r0, #1
005df308  08 20 83 e5                                      str r2, [r3, #8]
005df30c  04 30 83 e2                                      add r3, r3, #4
005df310  fb ff ff 1a                                      bne #0x5df304
005df314  04 00 a0 e1                                      mov r0, r4
005df318  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005df31c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMap12allocateBaseERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEE
; demangled: glitch::video::CMaterialVertexAttributeMap::allocateBase(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&)
; decoder-mode: arm
005df31c  10 40 2d e9                                      push {r4, lr}
005df320  00 00 90 e5                                      ldr r0, [r0]
005df324  ce ff ff eb                                      bl #0x5df264
005df328  02 00 80 e2                                      add r0, r0, #2
005df32c  00 01 a0 e1                                      lsl r0, r0, #2
005df330  00 10 a0 e3                                      mov r1, #0
005df334  10 40 bd e8                                      pop {r4, lr}
005df338  9a 53 fd ea                                      b #0x5341a8

; FUNCTION 0x005df33c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMap8allocateERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEE
; demangled: glitch::video::CMaterialVertexAttributeMap::allocate(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&)
; decoder-mode: arm
005df33c  70 40 2d e9                                      push {r4, r5, r6, lr}
005df340  00 50 a0 e1                                      mov r5, r0
005df344  01 00 a0 e1                                      mov r0, r1
005df348  01 60 a0 e1                                      mov r6, r1
005df34c  f2 ff ff eb                                      bl #0x5df31c
005df350  06 10 a0 e1                                      mov r1, r6
005df354  00 40 a0 e1                                      mov r4, r0
005df358  d8 ff ff eb                                      bl #0x5df2c0
005df35c  00 00 54 e3                                      cmp r4, #0
005df360  00 40 85 e5                                      str r4, [r5]
005df364  00 30 94 15                                      ldrne r3, [r4]
005df368  05 00 a0 e1                                      mov r0, r5
005df36c  01 30 83 12                                      addne r3, r3, #1
005df370  00 30 84 15                                      strne r3, [r4]
005df374  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005df378, declared_size=236, range_size=236, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMapC1ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKNS3_INS0_19CVertexAttributeMapEEEb
; demangled: glitch::video::CMaterialVertexAttributeMap::CMaterialVertexAttributeMap(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*, bool)
; decoder-mode: arm
005df378  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005df37c  00 40 a0 e1                                      mov r4, r0
005df380  00 00 a0 e3                                      mov r0, #0
005df384  00 00 84 e5                                      str r0, [r4]
005df388  00 00 91 e5                                      ldr r0, [r1]
005df38c  03 60 a0 e1                                      mov r6, r3
005df390  02 50 a0 e1                                      mov r5, r2
005df394  00 00 50 e3                                      cmp r0, #0
005df398  04 00 84 e5                                      str r0, [r4, #4]
005df39c  00 30 90 15                                      ldrne r3, [r0]
005df3a0  01 30 83 12                                      addne r3, r3, #1
005df3a4  00 30 80 15                                      strne r3, [r0]
005df3a8  00 00 56 e3                                      cmp r6, #0
005df3ac  1a 00 00 0a                                      beq #0x5df41c
005df3b0  00 00 91 e5                                      ldr r0, [r1]
005df3b4  aa ff ff eb                                      bl #0x5df264
005df3b8  08 30 84 e2                                      add r3, r4, #8
005df3bc  00 91 83 e0                                      add sb, r3, r0, lsl #2
005df3c0  03 00 59 e1                                      cmp sb, r3
005df3c4  12 00 00 0a                                      beq #0x5df414
005df3c8  0c 70 84 e2                                      add r7, r4, #0xc
005df3cc  00 80 a0 e3                                      mov r8, #0
005df3d0  00 00 00 ea                                      b #0x5df3d8
005df3d4  04 70 87 e2                                      add r7, r7, #4
005df3d8  00 10 a0 e3                                      mov r1, #0
005df3dc  24 00 a0 e3                                      mov r0, #0x24
005df3e0  08 a0 95 e7                                      ldr sl, [r5, r8]
005df3e4  70 53 fd eb                                      bl #0x5341ac
005df3e8  0a 10 a0 e1                                      mov r1, sl
005df3ec  00 60 a0 e1                                      mov r6, r0
005df3f0  f1 04 ff eb                                      bl #0x5a07bc
005df3f4  00 00 56 e3                                      cmp r6, #0
005df3f8  04 60 07 e5                                      str r6, [r7, #-4]
005df3fc  00 30 96 15                                      ldrne r3, [r6]
005df400  04 80 88 e2                                      add r8, r8, #4
005df404  01 30 83 12                                      addne r3, r3, #1
005df408  00 30 86 15                                      strne r3, [r6]
005df40c  07 00 59 e1                                      cmp sb, r7
005df410  ef ff ff 1a                                      bne #0x5df3d4
005df414  04 00 a0 e1                                      mov r0, r4
005df418  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005df41c  00 00 91 e5                                      ldr r0, [r1]
005df420  8f ff ff eb                                      bl #0x5df264
005df424  50 00 bd e7                                      sbfx r0, r0, #0, #0x1e
005df428  00 00 50 e3                                      cmp r0, #0
005df42c  f8 ff ff da                                      ble #0x5df414
005df430  04 20 a0 e1                                      mov r2, r4
005df434  06 30 95 e7                                      ldr r3, [r5, r6]
005df438  04 60 86 e2                                      add r6, r6, #4
005df43c  00 00 53 e3                                      cmp r3, #0
005df440  08 30 82 e5                                      str r3, [r2, #8]
005df444  00 10 93 15                                      ldrne r1, [r3]
005df448  04 20 82 e2                                      add r2, r2, #4
005df44c  01 10 81 12                                      addne r1, r1, #1
005df450  00 10 83 15                                      strne r1, [r3]
005df454  01 00 50 e2                                      subs r0, r0, #1
005df458  f5 ff ff 1a                                      bne #0x5df434
005df45c  04 00 a0 e1                                      mov r0, r4
005df460  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005df464, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZNK6glitch5video27CMaterialVertexAttributeMap5cloneEb
; demangled: glitch::video::CMaterialVertexAttributeMap::clone(bool) const
; decoder-mode: arm
005df464  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005df468  04 80 81 e2                                      add r8, r1, #4
005df46c  00 50 a0 e1                                      mov r5, r0
005df470  08 00 a0 e1                                      mov r0, r8
005df474  01 60 a0 e1                                      mov r6, r1
005df478  02 70 a0 e1                                      mov r7, r2
005df47c  a6 ff ff eb                                      bl #0x5df31c
005df480  07 30 a0 e1                                      mov r3, r7
005df484  08 10 a0 e1                                      mov r1, r8
005df488  08 20 86 e2                                      add r2, r6, #8
005df48c  00 40 a0 e1                                      mov r4, r0
005df490  b8 ff ff eb                                      bl #0x5df378
005df494  00 00 54 e3                                      cmp r4, #0
005df498  00 40 85 e5                                      str r4, [r5]
005df49c  00 30 94 15                                      ldrne r3, [r4]
005df4a0  05 00 a0 e1                                      mov r0, r5
005df4a4  01 30 83 12                                      addne r3, r3, #1
005df4a8  00 30 84 15                                      strne r3, [r4]
005df4ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005df4b0, declared_size=236, range_size=236, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMapC2ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEEPKNS3_INS0_19CVertexAttributeMapEEEb
; demangled: glitch::video::CMaterialVertexAttributeMap::CMaterialVertexAttributeMap(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const*, bool)
; decoder-mode: arm
005df4b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005df4b4  00 40 a0 e1                                      mov r4, r0
005df4b8  00 00 a0 e3                                      mov r0, #0
005df4bc  00 00 84 e5                                      str r0, [r4]
005df4c0  00 00 91 e5                                      ldr r0, [r1]
005df4c4  03 60 a0 e1                                      mov r6, r3
005df4c8  02 50 a0 e1                                      mov r5, r2
005df4cc  00 00 50 e3                                      cmp r0, #0
005df4d0  04 00 84 e5                                      str r0, [r4, #4]
005df4d4  00 30 90 15                                      ldrne r3, [r0]
005df4d8  01 30 83 12                                      addne r3, r3, #1
005df4dc  00 30 80 15                                      strne r3, [r0]
005df4e0  00 00 56 e3                                      cmp r6, #0
005df4e4  1a 00 00 0a                                      beq #0x5df554
005df4e8  00 00 91 e5                                      ldr r0, [r1]
005df4ec  5c ff ff eb                                      bl #0x5df264
005df4f0  08 30 84 e2                                      add r3, r4, #8
005df4f4  00 91 83 e0                                      add sb, r3, r0, lsl #2
005df4f8  03 00 59 e1                                      cmp sb, r3
005df4fc  12 00 00 0a                                      beq #0x5df54c
005df500  0c 70 84 e2                                      add r7, r4, #0xc
005df504  00 80 a0 e3                                      mov r8, #0
005df508  00 00 00 ea                                      b #0x5df510
005df50c  04 70 87 e2                                      add r7, r7, #4
005df510  00 10 a0 e3                                      mov r1, #0
005df514  24 00 a0 e3                                      mov r0, #0x24
005df518  08 a0 95 e7                                      ldr sl, [r5, r8]
005df51c  22 53 fd eb                                      bl #0x5341ac
005df520  0a 10 a0 e1                                      mov r1, sl
005df524  00 60 a0 e1                                      mov r6, r0
005df528  a3 04 ff eb                                      bl #0x5a07bc
005df52c  00 00 56 e3                                      cmp r6, #0
005df530  04 60 07 e5                                      str r6, [r7, #-4]
005df534  00 30 96 15                                      ldrne r3, [r6]
005df538  04 80 88 e2                                      add r8, r8, #4
005df53c  01 30 83 12                                      addne r3, r3, #1
005df540  00 30 86 15                                      strne r3, [r6]
005df544  07 00 59 e1                                      cmp sb, r7
005df548  ef ff ff 1a                                      bne #0x5df50c
005df54c  04 00 a0 e1                                      mov r0, r4
005df550  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005df554  00 00 91 e5                                      ldr r0, [r1]
005df558  41 ff ff eb                                      bl #0x5df264
005df55c  50 00 bd e7                                      sbfx r0, r0, #0, #0x1e
005df560  00 00 50 e3                                      cmp r0, #0
005df564  f8 ff ff da                                      ble #0x5df54c
005df568  04 20 a0 e1                                      mov r2, r4
005df56c  06 30 95 e7                                      ldr r3, [r5, r6]
005df570  04 60 86 e2                                      add r6, r6, #4
005df574  00 00 53 e3                                      cmp r3, #0
005df578  08 30 82 e5                                      str r3, [r2, #8]
005df57c  00 10 93 15                                      ldrne r1, [r3]
005df580  04 20 82 e2                                      add r2, r2, #4
005df584  01 10 81 12                                      addne r1, r1, #1
005df588  00 10 83 15                                      strne r1, [r3]
005df58c  01 00 50 e2                                      subs r0, r0, #1
005df590  f5 ff ff 1a                                      bne #0x5df56c
005df594  04 00 a0 e1                                      mov r0, r4
005df598  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005df59c, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMapC1ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEERKNS3_IKNS0_14CVertexStreamsEEE
; demangled: glitch::video::CMaterialVertexAttributeMap::CMaterialVertexAttributeMap(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, boost::intrusive_ptr<glitch::video::CVertexStreams const> const&)
; decoder-mode: arm
005df59c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005df5a0  00 30 a0 e3                                      mov r3, #0
005df5a4  00 30 80 e5                                      str r3, [r0]
005df5a8  00 30 91 e5                                      ldr r3, [r1]
005df5ac  02 80 a0 e1                                      mov r8, r2
005df5b0  00 40 a0 e1                                      mov r4, r0
005df5b4  00 00 53 e3                                      cmp r3, #0
005df5b8  04 30 80 e5                                      str r3, [r0, #4]
005df5bc  00 20 93 15                                      ldrne r2, [r3]
005df5c0  08 60 84 e2                                      add r6, r4, #8
005df5c4  01 20 82 12                                      addne r2, r2, #1
005df5c8  00 20 83 15                                      strne r2, [r3]
005df5cc  00 00 91 e5                                      ldr r0, [r1]
005df5d0  23 ff ff eb                                      bl #0x5df264
005df5d4  00 71 86 e0                                      add r7, r6, r0, lsl #2
005df5d8  06 00 57 e1                                      cmp r7, r6
005df5dc  0e 00 00 0a                                      beq #0x5df61c
005df5e0  00 10 a0 e3                                      mov r1, #0
005df5e4  24 00 a0 e3                                      mov r0, #0x24
005df5e8  ef 52 fd eb                                      bl #0x5341ac
005df5ec  08 10 a0 e1                                      mov r1, r8
005df5f0  00 50 a0 e1                                      mov r5, r0
005df5f4  d7 04 ff eb                                      bl #0x5a0958
005df5f8  00 00 55 e3                                      cmp r5, #0
005df5fc  00 50 86 e5                                      str r5, [r6]
005df600  04 60 86 e2                                      add r6, r6, #4
005df604  f3 ff ff 0a                                      beq #0x5df5d8
005df608  00 30 95 e5                                      ldr r3, [r5]
005df60c  06 00 57 e1                                      cmp r7, r6
005df610  01 30 83 e2                                      add r3, r3, #1
005df614  00 30 85 e5                                      str r3, [r5]
005df618  f0 ff ff 1a                                      bne #0x5df5e0
005df61c  04 00 a0 e1                                      mov r0, r4
005df620  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005df624, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMap8allocateERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEERKNS3_IKNS0_14CVertexStreamsEEE
; demangled: glitch::video::CMaterialVertexAttributeMap::allocate(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, boost::intrusive_ptr<glitch::video::CVertexStreams const> const&)
; decoder-mode: arm
005df624  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005df628  00 50 a0 e1                                      mov r5, r0
005df62c  01 00 a0 e1                                      mov r0, r1
005df630  01 60 a0 e1                                      mov r6, r1
005df634  02 70 a0 e1                                      mov r7, r2
005df638  37 ff ff eb                                      bl #0x5df31c
005df63c  06 10 a0 e1                                      mov r1, r6
005df640  07 20 a0 e1                                      mov r2, r7
005df644  00 40 a0 e1                                      mov r4, r0
005df648  d3 ff ff eb                                      bl #0x5df59c
005df64c  00 00 54 e3                                      cmp r4, #0
005df650  00 40 85 e5                                      str r4, [r5]
005df654  00 30 94 15                                      ldrne r3, [r4]
005df658  05 00 a0 e1                                      mov r0, r5
005df65c  01 30 83 12                                      addne r3, r3, #1
005df660  00 30 84 15                                      strne r3, [r4]
005df664  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005df668, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMapC2ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEERKNS3_IKNS0_14CVertexStreamsEEE
; demangled: glitch::video::CMaterialVertexAttributeMap::CMaterialVertexAttributeMap(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, boost::intrusive_ptr<glitch::video::CVertexStreams const> const&)
; decoder-mode: arm
005df668  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005df66c  00 30 a0 e3                                      mov r3, #0
005df670  00 30 80 e5                                      str r3, [r0]
005df674  00 30 91 e5                                      ldr r3, [r1]
005df678  02 80 a0 e1                                      mov r8, r2
005df67c  00 40 a0 e1                                      mov r4, r0
005df680  00 00 53 e3                                      cmp r3, #0
005df684  04 30 80 e5                                      str r3, [r0, #4]
005df688  00 20 93 15                                      ldrne r2, [r3]
005df68c  08 60 84 e2                                      add r6, r4, #8
005df690  01 20 82 12                                      addne r2, r2, #1
005df694  00 20 83 15                                      strne r2, [r3]
005df698  00 00 91 e5                                      ldr r0, [r1]
005df69c  f0 fe ff eb                                      bl #0x5df264
005df6a0  00 71 86 e0                                      add r7, r6, r0, lsl #2
005df6a4  06 00 57 e1                                      cmp r7, r6
005df6a8  0e 00 00 0a                                      beq #0x5df6e8
005df6ac  00 10 a0 e3                                      mov r1, #0
005df6b0  24 00 a0 e3                                      mov r0, #0x24
005df6b4  bc 52 fd eb                                      bl #0x5341ac
005df6b8  08 10 a0 e1                                      mov r1, r8
005df6bc  00 50 a0 e1                                      mov r5, r0
005df6c0  a4 04 ff eb                                      bl #0x5a0958
005df6c4  00 00 55 e3                                      cmp r5, #0
005df6c8  00 50 86 e5                                      str r5, [r6]
005df6cc  04 60 86 e2                                      add r6, r6, #4
005df6d0  f3 ff ff 0a                                      beq #0x5df6a4
005df6d4  00 30 95 e5                                      ldr r3, [r5]
005df6d8  06 00 57 e1                                      cmp r7, r6
005df6dc  01 30 83 e2                                      add r3, r3, #1
005df6e0  00 30 85 e5                                      str r3, [r5]
005df6e4  f0 ff ff 1a                                      bne #0x5df6ac
005df6e8  04 00 a0 e1                                      mov r0, r4
005df6ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005df6f0, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMapD2Ev
; demangled: glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap()
; decoder-mode: arm
005df6f0  70 40 2d e9                                      push {r4, r5, r6, lr}
005df6f4  00 60 a0 e1                                      mov r6, r0
005df6f8  04 00 90 e5                                      ldr r0, [r0, #4]
005df6fc  d8 fe ff eb                                      bl #0x5df264
005df700  08 40 86 e2                                      add r4, r6, #8
005df704  00 51 84 e0                                      add r5, r4, r0, lsl #2
005df708  05 00 54 e1                                      cmp r4, r5
005df70c  0c 00 00 0a                                      beq #0x5df744
005df710  00 30 94 e5                                      ldr r3, [r4]
005df714  04 40 84 e2                                      add r4, r4, #4
005df718  00 00 53 e3                                      cmp r3, #0
005df71c  03 00 a0 e1                                      mov r0, r3
005df720  05 00 00 0a                                      beq #0x5df73c
005df724  00 20 93 e5                                      ldr r2, [r3]
005df728  01 20 42 e2                                      sub r2, r2, #1
005df72c  00 00 52 e3                                      cmp r2, #0
005df730  00 20 83 e5                                      str r2, [r3]
005df734  00 00 00 1a                                      bne #0x5df73c
005df738  dc ba f4 eb                                      bl #0x30e2b0
005df73c  04 00 55 e1                                      cmp r5, r4
005df740  f2 ff ff 1a                                      bne #0x5df710
005df744  04 00 86 e2                                      add r0, r6, #4
005df748  da ca f5 eb                                      bl #0x3522b8
005df74c  06 00 a0 e1                                      mov r0, r6
005df750  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005df754, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMapD1Ev
; demangled: glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap()
; decoder-mode: arm
005df754  70 40 2d e9                                      push {r4, r5, r6, lr}
005df758  00 60 a0 e1                                      mov r6, r0
005df75c  04 00 90 e5                                      ldr r0, [r0, #4]
005df760  bf fe ff eb                                      bl #0x5df264
005df764  08 40 86 e2                                      add r4, r6, #8
005df768  00 51 84 e0                                      add r5, r4, r0, lsl #2
005df76c  05 00 54 e1                                      cmp r4, r5
005df770  0c 00 00 0a                                      beq #0x5df7a8
005df774  00 30 94 e5                                      ldr r3, [r4]
005df778  04 40 84 e2                                      add r4, r4, #4
005df77c  00 00 53 e3                                      cmp r3, #0
005df780  03 00 a0 e1                                      mov r0, r3
005df784  05 00 00 0a                                      beq #0x5df7a0
005df788  00 20 93 e5                                      ldr r2, [r3]
005df78c  01 20 42 e2                                      sub r2, r2, #1
005df790  00 00 52 e3                                      cmp r2, #0
005df794  00 20 83 e5                                      str r2, [r3]
005df798  00 00 00 1a                                      bne #0x5df7a0
005df79c  c3 ba f4 eb                                      bl #0x30e2b0
005df7a0  04 00 55 e1                                      cmp r5, r4
005df7a4  f2 ff ff 1a                                      bne #0x5df774
005df7a8  04 00 86 e2                                      add r0, r6, #4
005df7ac  c1 ca f5 eb                                      bl #0x3522b8
005df7b0  06 00 a0 e1                                      mov r0, r6
005df7b4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005df7b8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMapC2ERKN5boost13intrusive_ptrINS0_17CMaterialRendererEEE
; demangled: glitch::video::CMaterialVertexAttributeMap::CMaterialVertexAttributeMap(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&)
; decoder-mode: arm
005df7b8  00 30 a0 e3                                      mov r3, #0
005df7bc  10 40 2d e9                                      push {r4, lr}
005df7c0  00 30 80 e5                                      str r3, [r0]
005df7c4  00 30 91 e5                                      ldr r3, [r1]
005df7c8  00 40 a0 e1                                      mov r4, r0
005df7cc  00 00 53 e3                                      cmp r3, #0
005df7d0  04 30 80 e5                                      str r3, [r0, #4]
005df7d4  00 20 93 15                                      ldrne r2, [r3]
005df7d8  01 20 82 12                                      addne r2, r2, #1
005df7dc  00 20 83 15                                      strne r2, [r3]
005df7e0  00 00 91 e5                                      ldr r0, [r1]
005df7e4  9e fe ff eb                                      bl #0x5df264
005df7e8  50 00 bd e7                                      sbfx r0, r0, #0, #0x1e
005df7ec  00 00 50 e3                                      cmp r0, #0
005df7f0  05 00 00 da                                      ble #0x5df80c
005df7f4  04 30 a0 e1                                      mov r3, r4
005df7f8  00 20 a0 e3                                      mov r2, #0
005df7fc  01 00 50 e2                                      subs r0, r0, #1
005df800  08 20 83 e5                                      str r2, [r3, #8]
005df804  04 30 83 e2                                      add r3, r3, #4
005df808  fb ff ff 1a                                      bne #0x5df7fc
005df80c  04 00 a0 e1                                      mov r0, r4
005df810  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005df814, declared_size=132, range_size=132, mode=arm
; class-group: glitch::video::CMaterialVertexAttributeMap
; alias: _ZN6glitch5video27CMaterialVertexAttributeMap3setEhhRKN5boost13intrusive_ptrINS0_19CVertexAttributeMapEEE
; demangled: glitch::video::CMaterialVertexAttributeMap::set(unsigned char, unsigned char, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const&)
; decoder-mode: arm
005df814  70 00 2d e9                                      push {r4, r5, r6}
005df818  04 c0 90 e5                                      ldr ip, [r0, #4]
005df81c  0c 50 a0 e3                                      mov r5, #0xc
005df820  00 30 93 e5                                      ldr r3, [r3]
005df824  18 40 9c e5                                      ldr r4, [ip, #0x18]
005df828  1c c0 9c e5                                      ldr ip, [ip, #0x1c]
005df82c  00 00 53 e3                                      cmp r3, #0
005df830  95 41 24 e0                                      mla r4, r5, r1, r4
005df834  c5 6e 04 e3                                      movw r6, #0x4ec5
005df838  08 10 94 e5                                      ldr r1, [r4, #8]
005df83c  34 40 a0 e3                                      mov r4, #0x34
005df840  ec 64 4c e3                                      movt r6, #0xc4ec
005df844  94 12 21 e0                                      mla r1, r4, r2, r1
005df848  00 20 93 15                                      ldrne r2, [r3]
005df84c  01 c0 6c e0                                      rsb ip, ip, r1
005df850  4c c1 a0 e1                                      asr ip, ip, #2
005df854  96 0c 06 e0                                      mul r6, r6, ip
005df858  01 20 82 12                                      addne r2, r2, #1
005df85c  00 20 83 15                                      strne r2, [r3]
005df860  08 50 80 e2                                      add r5, r0, #8
005df864  06 01 95 e7                                      ldr r0, [r5, r6, lsl #2]
005df868  06 31 85 e7                                      str r3, [r5, r6, lsl #2]
005df86c  00 00 50 e3                                      cmp r0, #0
005df870  06 00 00 0a                                      beq #0x5df890
005df874  00 30 90 e5                                      ldr r3, [r0]
005df878  01 30 43 e2                                      sub r3, r3, #1
005df87c  00 00 53 e3                                      cmp r3, #0
005df880  00 30 80 e5                                      str r3, [r0]
005df884  01 00 00 1a                                      bne #0x5df890
005df888  70 00 bd e8                                      pop {r4, r5, r6}
005df88c  87 ba f4 ea                                      b #0x30e2b0
005df890  70 00 bd e8                                      pop {r4, r5, r6}
005df894  1e ff 2f e1                                      bx lr
