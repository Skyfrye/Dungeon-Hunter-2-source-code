; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b2558, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::detail
; alias: _ZN6glitch5video6detail19getTextureParameterEPKhRKNS0_19SShaderParameterDefEPKNS0_12IVideoDriverE
; demangled: glitch::video::detail::getTextureParameter(unsigned char const*, glitch::video::SShaderParameterDef const&, glitch::video::IVideoDriver const*)
; decoder-mode: arm
005b2558  10 40 2d e9                                      push {r4, lr}
005b255c  0c c0 92 e5                                      ldr ip, [r2, #0xc]
005b2560  00 40 a0 e1                                      mov r4, r0
005b2564  0c 10 91 e7                                      ldr r1, [r1, ip]
005b2568  00 00 51 e3                                      cmp r1, #0
005b256c  00 10 80 e5                                      str r1, [r0]
005b2570  18 00 00 0a                                      beq #0x5b25d8
005b2574  04 00 91 e5                                      ldr r0, [r1, #4]
005b2578  01 00 80 e2                                      add r0, r0, #1
005b257c  04 00 81 e5                                      str r0, [r1, #4]
005b2580  00 10 94 e5                                      ldr r1, [r4]
005b2584  00 00 51 e3                                      cmp r1, #0
005b2588  12 00 00 0a                                      beq #0x5b25d8
005b258c  3f 10 d1 e5                                      ldrb r1, [r1, #0x3f]
005b2590  10 00 11 e3                                      tst r1, #0x10
005b2594  0d 00 00 0a                                      beq #0x5b25d0
005b2598  e0 00 93 e5                                      ldr r0, [r3, #0xe0]
005b259c  01 10 a0 e3                                      mov r1, #1
005b25a0  06 20 d2 e5                                      ldrb r2, [r2, #6]
005b25a4  0c 20 42 e2                                      sub r2, r2, #0xc
005b25a8  02 e7 00 eb                                      bl #0x5ec1b8
005b25ac  00 30 50 e2                                      subs r3, r0, #0
005b25b0  04 20 93 15                                      ldrne r2, [r3, #4]
005b25b4  01 20 82 12                                      addne r2, r2, #1
005b25b8  04 20 83 15                                      strne r2, [r3, #4]
005b25bc  00 00 94 e5                                      ldr r0, [r4]
005b25c0  00 30 84 e5                                      str r3, [r4]
005b25c4  00 00 50 e3                                      cmp r0, #0
005b25c8  00 00 00 0a                                      beq #0x5b25d0
005b25cc  ec ab f5 eb                                      bl #0x31d584
005b25d0  04 00 a0 e1                                      mov r0, r4
005b25d4  10 80 bd e8                                      pop {r4, pc}
005b25d8  e0 00 93 e5                                      ldr r0, [r3, #0xe0]
005b25dc  00 10 a0 e3                                      mov r1, #0
005b25e0  ee ff ff ea                                      b #0x5b25a0

; FUNCTION 0x005ba62c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::detail
; alias: _ZN6glitch5video6detail18getMatrixParameterEPKPKNS_4core8CMatrix4IfEERS4_
; demangled: glitch::video::detail::getMatrixParameter(glitch::core::CMatrix4<float> const* const*, glitch::core::CMatrix4<float>&)
; decoder-mode: arm
005ba62c  00 20 90 e5                                      ldr r2, [r0]
005ba630  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005ba634  00 00 52 e3                                      cmp r2, #0
005ba638  03 30 8f e0                                      add r3, pc, r3
005ba63c  03 00 00 0a                                      beq #0x5ba650
005ba640  01 00 a0 e1                                      mov r0, r1
005ba644  02 10 a0 e1                                      mov r1, r2
005ba648  41 20 a0 e3                                      mov r2, #0x41
005ba64c  85 50 f5 ea                                      b #0x30e868
005ba650  01 00 a0 e1                                      mov r0, r1
005ba654  0c 10 9f e5                                      ldr r1, [pc, #0xc]
005ba658  41 20 a0 e3                                      mov r2, #0x41
005ba65c  01 10 93 e7                                      ldr r1, [r3, r1]
005ba660  80 50 f5 ea                                      b #0x30e868
; mapping-symbol data/literal pool
005ba664  58 a4 3d 00 30 28 00 00                          .byte 0x58, 0xa4, 0x3d, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x005badb8, declared_size=172, range_size=172, mode=arm
; class-group: glitch::video::detail
; alias: _ZN6glitch5video6detail18setMatrixParameterEPPNS_4core8CMatrix4IfEERKS4_NS2_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEE
; demangled: glitch::video::detail::setMatrixParameter(glitch::core::CMatrix4<float>**, glitch::core::CMatrix4<float> const&, glitch::core::SAllocator<glitch::core::CMatrix4<float>, (glitch::memory::E_MEMORY_HINT)0>)
; decoder-mode: arm
005badb8  70 40 2d e9                                      push {r4, r5, r6, lr}
005badbc  00 40 a0 e1                                      mov r4, r0
005badc0  00 00 90 e5                                      ldr r0, [r0]
005badc4  90 30 9f e5                                      ldr r3, [pc, #0x90]
005badc8  01 50 a0 e1                                      mov r5, r1
005badcc  00 00 50 e3                                      cmp r0, #0
005badd0  03 30 8f e0                                      add r3, pc, r3
005badd4  0d 00 00 0a                                      beq #0x5bae10
005badd8  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
005baddc  00 00 52 e3                                      cmp r2, #0
005bade0  07 00 00 0a                                      beq #0x5bae04
005bade4  74 20 9f e5                                      ldr r2, [pc, #0x74]
005bade8  02 30 93 e7                                      ldr r3, [r3, r2]
005badec  00 20 93 e5                                      ldr r2, [r3]
005badf0  00 20 80 e5                                      str r2, [r0]
005badf4  00 00 83 e5                                      str r0, [r3]
005badf8  00 30 a0 e3                                      mov r3, #0
005badfc  00 30 84 e5                                      str r3, [r4]
005bae00  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bae04  41 20 a0 e3                                      mov r2, #0x41
005bae08  70 40 bd e8                                      pop {r4, r5, r6, lr}
005bae0c  95 4e f5 ea                                      b #0x30e868
005bae10  40 20 d1 e5                                      ldrb r2, [r1, #0x40]
005bae14  00 00 52 e3                                      cmp r2, #0
005bae18  0b 00 00 1a                                      bne #0x5bae4c
005bae1c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
005bae20  02 30 93 e7                                      ldr r3, [r3, r2]
005bae24  00 60 93 e5                                      ldr r6, [r3]
005bae28  00 00 56 e3                                      cmp r6, #0
005bae2c  07 00 00 0a                                      beq #0x5bae50
005bae30  00 20 96 e5                                      ldr r2, [r6]
005bae34  00 20 83 e5                                      str r2, [r3]
005bae38  05 10 a0 e1                                      mov r1, r5
005bae3c  06 00 a0 e1                                      mov r0, r6
005bae40  13 ff ff eb                                      bl #0x5baa94
005bae44  00 60 84 e5                                      str r6, [r4]
005bae48  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bae4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bae50  8a ff ff eb                                      bl #0x5bac80
005bae54  00 60 a0 e1                                      mov r6, r0
005bae58  f6 ff ff ea                                      b #0x5bae38
; mapping-symbol data/literal pool
005bae5c  c0 9c 3d 00 c0 3c 00 00                          .byte 0xc0, 0x9c, 0x3d, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005bb7ec, declared_size=280, range_size=280, mode=arm
; class-group: glitch::video::detail
; alias: _ZN6glitch5video6detail17setArrayParameterEPKNS0_19SShaderParameterDefEPN5boost13intrusive_ptrINS0_8ITextureEEEPKS8_i
; demangled: glitch::video::detail::setArrayParameter(glitch::video::SShaderParameterDef const*, boost::intrusive_ptr<glitch::video::ITexture>*, boost::intrusive_ptr<glitch::video::ITexture> const*, int)
; decoder-mode: arm
005bb7ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005bb7f0  08 50 90 e5                                      ldr r5, [r0, #8]
005bb7f4  1c d0 4d e2                                      sub sp, sp, #0x1c
005bb7f8  00 70 a0 e1                                      mov r7, r0
005bb7fc  00 00 55 e3                                      cmp r5, #0
005bb800  01 b0 a0 e1                                      mov fp, r1
005bb804  02 40 a0 e1                                      mov r4, r2
005bb808  03 80 a0 e1                                      mov r8, r3
005bb80c  34 00 00 0a                                      beq #0x5bb8e4
005bb810  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
005bb814  e4 a0 9f e5                                      ldr sl, [pc, #0xe4]
005bb818  00 60 a0 e3                                      mov r6, #0
005bb81c  03 30 8f e0                                      add r3, pc, r3
005bb820  0a a0 8f e0                                      add sl, pc, sl
005bb824  14 30 8d e5                                      str r3, [sp, #0x14]
005bb828  22 00 00 ea                                      b #0x5bb8b8
005bb82c  38 30 92 e5                                      ldr r3, [r2, #0x38]
005bb830  06 90 d7 e5                                      ldrb sb, [r7, #6]
005bb834  03 30 03 e2                                      and r3, r3, #3
005bb838  0c 30 83 e2                                      add r3, r3, #0xc
005bb83c  09 00 53 e1                                      cmp r3, sb
005bb840  29 00 00 0a                                      beq #0x5bb8ec
005bb844  00 20 97 e5                                      ldr r2, [r7]
005bb848  00 00 52 e3                                      cmp r2, #0
005bb84c  04 20 82 12                                      addne r2, r2, #4
005bb850  ff 00 59 e3                                      cmp sb, #0xff
005bb854  10 20 8d e5                                      str r2, [sp, #0x10]
005bb858  14 90 9d 05                                      ldreq sb, [sp, #0x14]
005bb85c  06 00 00 0a                                      beq #0x5bb87c
005bb860  00 00 a0 e3                                      mov r0, #0
005bb864  12 b2 00 eb                                      bl #0x5e80b4
005bb868  00 30 94 e5                                      ldr r3, [r4]
005bb86c  09 91 90 e7                                      ldr sb, [r0, sb, lsl #2]
005bb870  38 30 93 e5                                      ldr r3, [r3, #0x38]
005bb874  03 30 03 e2                                      and r3, r3, #3
005bb878  0c 30 83 e2                                      add r3, r3, #0xc
005bb87c  00 00 a0 e3                                      mov r0, #0
005bb880  0c 30 8d e5                                      str r3, [sp, #0xc]
005bb884  0a b2 00 eb                                      bl #0x5e80b4
005bb888  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005bb88c  10 20 9d e5                                      ldr r2, [sp, #0x10]
005bb890  0a 10 a0 e1                                      mov r1, sl
005bb894  03 c1 90 e7                                      ldr ip, [r0, r3, lsl #2]
005bb898  09 30 a0 e1                                      mov r3, sb
005bb89c  03 00 a0 e3                                      mov r0, #3
005bb8a0  00 c0 8d e5                                      str ip, [sp]
005bb8a4  e2 3d 01 eb                                      bl #0x60b034
005bb8a8  01 50 55 e2                                      subs r5, r5, #1
005bb8ac  04 60 86 e2                                      add r6, r6, #4
005bb8b0  0b 00 00 0a                                      beq #0x5bb8e4
005bb8b4  08 40 84 e0                                      add r4, r4, r8
005bb8b8  00 20 94 e5                                      ldr r2, [r4]
005bb8bc  00 00 52 e3                                      cmp r2, #0
005bb8c0  d9 ff ff 1a                                      bne #0x5bb82c
005bb8c4  06 00 9b e7                                      ldr r0, [fp, r6]
005bb8c8  06 20 8b e7                                      str r2, [fp, r6]
005bb8cc  00 00 50 e3                                      cmp r0, #0
005bb8d0  f4 ff ff 0a                                      beq #0x5bb8a8
005bb8d4  2a 87 f5 eb                                      bl #0x31d584
005bb8d8  01 50 55 e2                                      subs r5, r5, #1
005bb8dc  04 60 86 e2                                      add r6, r6, #4
005bb8e0  f3 ff ff 1a                                      bne #0x5bb8b4
005bb8e4  1c d0 8d e2                                      add sp, sp, #0x1c
005bb8e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005bb8ec  04 30 92 e5                                      ldr r3, [r2, #4]
005bb8f0  01 30 83 e2                                      add r3, r3, #1
005bb8f4  04 30 82 e5                                      str r3, [r2, #4]
005bb8f8  f1 ff ff ea                                      b #0x5bb8c4
; mapping-symbol data/literal pool
005bb8fc  44 ac 30 00 10 51 32 00                          .byte 0x44, 0xac, 0x30, 0x00, 0x10, 0x51, 0x32, 0x00

; FUNCTION 0x006dc688, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::detail
; alias: _ZN6glitch5video6detail10getStridesEjRKN5boost13intrusive_ptrINS0_14CVertexStreamsEEE
; demangled: glitch::video::detail::getStrides(unsigned int, boost::intrusive_ptr<glitch::video::CVertexStreams> const&)
; decoder-mode: arm
006dc688  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
006dc68c  60 30 9f e5                                      ldr r3, [pc, #0x60]
006dc690  00 20 50 e2                                      subs r2, r0, #0
006dc694  00 10 91 e5                                      ldr r1, [r1]
006dc698  03 30 8f e0                                      add r3, pc, r3
006dc69c  02 00 a0 01                                      moveq r0, r2
006dc6a0  11 00 00 0a                                      beq #0x6dc6ec
006dc6a4  4c 70 9f e5                                      ldr r7, [pc, #0x4c]
006dc6a8  00 00 a0 e3                                      mov r0, #0
006dc6ac  01 40 a0 e3                                      mov r4, #1
006dc6b0  bc c1 d1 e1                                      ldrh ip, [r1, #0x1c]
006dc6b4  14 cc a0 e1                                      lsl ip, r4, ip
006dc6b8  0c 00 12 e1                                      tst r2, ip
006dc6bc  07 00 00 0a                                      beq #0x6dc6e0
006dc6c0  be 51 d1 e1                                      ldrh r5, [r1, #0x1e]
006dc6c4  07 80 93 e7                                      ldr r8, [r3, r7]
006dc6c8  18 00 81 e5                                      str r0, [r1, #0x18]
006dc6cc  b0 62 d1 e1                                      ldrh r6, [r1, #0x20]
006dc6d0  05 50 d8 e7                                      ldrb r5, [r8, r5]
006dc6d4  0c 20 c2 e1                                      bic r2, r2, ip
006dc6d8  96 05 20 e0                                      mla r0, r6, r5, r0
006dc6dc  70 00 ff e6                                      uxth r0, r0
006dc6e0  00 00 52 e3                                      cmp r2, #0
006dc6e4  10 10 81 e2                                      add r1, r1, #0x10
006dc6e8  f0 ff ff 1a                                      bne #0x6dc6b0
006dc6ec  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
006dc6f0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006dc6f4  f8 83 2b 00 08 11 00 00                          .byte 0xf8, 0x83, 0x2b, 0x00, 0x08, 0x11, 0x00, 0x00

; FUNCTION 0x006dc888, declared_size=120, range_size=120, mode=arm
; class-group: glitch::video::detail
; alias: _ZN6glitch5video6detail12assignBufferERKN5boost13intrusive_ptrINS0_7IBufferEEEjijRKNS3_INS0_14CVertexStreamsEEE
; demangled: glitch::video::detail::assignBuffer(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int, int, unsigned int, boost::intrusive_ptr<glitch::video::CVertexStreams> const&)
; decoder-mode: arm
006dc888  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006dc88c  28 b0 9d e5                                      ldr fp, [sp, #0x28]
006dc890  00 50 53 e2                                      subs r5, r3, #0
006dc894  00 90 a0 e1                                      mov sb, r0
006dc898  01 80 a0 e1                                      mov r8, r1
006dc89c  02 a0 a0 e1                                      mov sl, r2
006dc8a0  00 40 9b e5                                      ldr r4, [fp]
006dc8a4  14 00 00 0a                                      beq #0x6dc8fc
006dc8a8  14 40 84 e2                                      add r4, r4, #0x14
006dc8ac  01 70 a0 e3                                      mov r7, #1
006dc8b0  02 00 00 ea                                      b #0x6dc8c0
006dc8b4  00 00 55 e3                                      cmp r5, #0
006dc8b8  0f 00 00 0a                                      beq #0x6dc8fc
006dc8bc  10 40 84 e2                                      add r4, r4, #0x10
006dc8c0  b8 60 d4 e1                                      ldrh r6, [r4, #8]
006dc8c4  17 66 a0 e1                                      lsl r6, r7, r6
006dc8c8  06 00 15 e1                                      tst r5, r6
006dc8cc  f8 ff ff 0a                                      beq #0x6dc8b4
006dc8d0  04 10 a0 e1                                      mov r1, r4
006dc8d4  00 00 9b e5                                      ldr r0, [fp]
006dc8d8  09 20 a0 e1                                      mov r2, sb
006dc8dc  d9 ff ff eb                                      bl #0x6dc848
006dc8e0  04 30 94 e5                                      ldr r3, [r4, #4]
006dc8e4  06 50 c5 e1                                      bic r5, r5, r6
006dc8e8  00 00 55 e3                                      cmp r5, #0
006dc8ec  0a 30 83 e0                                      add r3, r3, sl
006dc8f0  be 80 c4 e1                                      strh r8, [r4, #0xe]
006dc8f4  04 30 84 e5                                      str r3, [r4, #4]
006dc8f8  ef ff ff 1a                                      bne #0x6dc8bc
006dc8fc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006dc900, declared_size=288, range_size=288, mode=arm
; class-group: glitch::video::detail
; alias: _ZN6glitch5video6detail11clearBufferEjjRKN5boost13intrusive_ptrINS0_14CVertexStreamsEEE
; demangled: glitch::video::detail::clearBuffer(unsigned int, unsigned int, boost::intrusive_ptr<glitch::video::CVertexStreams> const&)
; decoder-mode: arm
006dc900  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006dc904  00 40 93 e5                                      ldr r4, [r3]
006dc908  03 80 a0 e1                                      mov r8, r3
006dc90c  01 30 a0 e3                                      mov r3, #1
006dc910  14 40 84 e2                                      add r4, r4, #0x14
006dc914  b8 50 d4 e1                                      ldrh r5, [r4, #8]
006dc918  0c d0 4d e2                                      sub sp, sp, #0xc
006dc91c  00 b0 a0 e1                                      mov fp, r0
006dc920  13 55 a0 e1                                      lsl r5, r3, r5
006dc924  02 00 15 e1                                      tst r5, r2
006dc928  01 c0 a0 e1                                      mov ip, r1
006dc92c  04 00 00 1a                                      bne #0x6dc944
006dc930  10 40 84 e2                                      add r4, r4, #0x10
006dc934  b8 50 d4 e1                                      ldrh r5, [r4, #8]
006dc938  13 55 a0 e1                                      lsl r5, r3, r5
006dc93c  02 00 15 e1                                      tst r5, r2
006dc940  fa ff ff 0a                                      beq #0x6dc930
006dc944  00 30 94 e5                                      ldr r3, [r4]
006dc948  05 50 c2 e1                                      bic r5, r2, r5
006dc94c  04 10 a0 e1                                      mov r1, r4
006dc950  00 30 8b e5                                      str r3, [fp]
006dc954  00 00 53 e3                                      cmp r3, #0
006dc958  04 20 93 15                                      ldrne r2, [r3, #4]
006dc95c  01 20 82 12                                      addne r2, r2, #1
006dc960  04 20 83 15                                      strne r2, [r3, #4]
006dc964  be a0 d4 e1                                      ldrh sl, [r4, #0xe]
006dc968  08 20 8d e2                                      add r2, sp, #8
006dc96c  00 30 a0 e3                                      mov r3, #0
006dc970  00 00 98 e5                                      ldr r0, [r8]
006dc974  04 30 22 e5                                      str r3, [r2, #-4]!
006dc978  9a 0c 0a e0                                      mul sl, sl, ip
006dc97c  b1 ff ff eb                                      bl #0x6dc848
006dc980  04 00 9d e5                                      ldr r0, [sp, #4]
006dc984  00 00 50 e3                                      cmp r0, #0
006dc988  00 00 00 0a                                      beq #0x6dc990
006dc98c  fc 02 f1 eb                                      bl #0x31d584
006dc990  04 30 94 e5                                      ldr r3, [r4, #4]
006dc994  00 00 55 e3                                      cmp r5, #0
006dc998  00 20 a0 e3                                      mov r2, #0
006dc99c  03 30 6a e0                                      rsb r3, sl, r3
006dc9a0  be 20 c4 e1                                      strh r2, [r4, #0xe]
006dc9a4  04 30 84 e5                                      str r3, [r4, #4]
006dc9a8  01 70 a0 13                                      movne r7, #1
006dc9ac  00 90 a0 13                                      movne sb, #0
006dc9b0  0d 60 a0 11                                      movne r6, sp
006dc9b4  01 00 00 1a                                      bne #0x6dc9c0
006dc9b8  15 00 00 ea                                      b #0x6dca14
006dc9bc  10 40 84 e2                                      add r4, r4, #0x10
006dc9c0  b8 30 d4 e1                                      ldrh r3, [r4, #8]
006dc9c4  04 10 a0 e1                                      mov r1, r4
006dc9c8  0d 20 a0 e1                                      mov r2, sp
006dc9cc  17 33 a0 e1                                      lsl r3, r7, r3
006dc9d0  03 00 15 e1                                      tst r5, r3
006dc9d4  0c 00 00 0a                                      beq #0x6dca0c
006dc9d8  00 00 98 e5                                      ldr r0, [r8]
006dc9dc  03 50 c5 e1                                      bic r5, r5, r3
006dc9e0  00 90 8d e5                                      str sb, [sp]
006dc9e4  97 ff ff eb                                      bl #0x6dc848
006dc9e8  00 00 9d e5                                      ldr r0, [sp]
006dc9ec  00 00 50 e3                                      cmp r0, #0
006dc9f0  00 00 00 0a                                      beq #0x6dc9f8
006dc9f4  e2 02 f1 eb                                      bl #0x31d584
006dc9f8  04 30 94 e5                                      ldr r3, [r4, #4]
006dc9fc  00 20 a0 e3                                      mov r2, #0
006dca00  be 20 c4 e1                                      strh r2, [r4, #0xe]
006dca04  03 30 6a e0                                      rsb r3, sl, r3
006dca08  04 30 84 e5                                      str r3, [r4, #4]
006dca0c  00 00 55 e3                                      cmp r5, #0
006dca10  e9 ff ff 1a                                      bne #0x6dc9bc
006dca14  0b 00 a0 e1                                      mov r0, fp
006dca18  0c d0 8d e2                                      add sp, sp, #0xc
006dca1c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
