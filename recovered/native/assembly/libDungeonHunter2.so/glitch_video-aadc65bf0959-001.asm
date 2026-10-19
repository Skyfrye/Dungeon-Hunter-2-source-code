; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a08f4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video23makeDefaultAttributeMapEPKNS0_14CVertexStreamsEPh
; demangled: glitch::video::makeDefaultAttributeMap(glitch::video::CVertexStreams const*, unsigned char*)
; decoder-mode: arm
005a08f4  70 40 2d e9                                      push {r4, r5, r6, lr}
005a08f8  01 40 a0 e1                                      mov r4, r1
005a08fc  00 50 a0 e1                                      mov r5, r0
005a0900  1e 20 a0 e3                                      mov r2, #0x1e
005a0904  ff 10 a0 e3                                      mov r1, #0xff
005a0908  04 00 a0 e1                                      mov r0, r4
005a090c  d3 b6 f5 eb                                      bl #0x30e460
005a0910  10 30 95 e5                                      ldr r3, [r5, #0x10]
005a0914  14 20 85 e2                                      add r2, r5, #0x14
005a0918  02 00 53 e1                                      cmp r3, r2
005a091c  0b 00 00 0a                                      beq #0x5a0950
005a0920  24 00 85 e2                                      add r0, r5, #0x24
005a0924  03 00 60 e0                                      rsb r0, r0, r3
005a0928  0f 00 c0 e3                                      bic r0, r0, #0xf
005a092c  10 00 80 e2                                      add r0, r0, #0x10
005a0930  00 30 a0 e3                                      mov r3, #0
005a0934  bc 21 d5 e1                                      ldrh r2, [r5, #0x1c]
005a0938  43 12 a0 e1                                      asr r1, r3, #4
005a093c  10 30 83 e2                                      add r3, r3, #0x10
005a0940  00 00 53 e1                                      cmp r3, r0
005a0944  02 10 c4 e7                                      strb r1, [r4, r2]
005a0948  10 50 85 e2                                      add r5, r5, #0x10
005a094c  f8 ff ff 1a                                      bne #0x5a0934
005a0950  04 00 a0 e1                                      mov r0, r4
005a0954  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a1878, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_12E_INDEX_TYPEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_INDEX_TYPE*)
; decoder-mode: arm
005a1878  04 00 9f e5                                      ldr r0, [pc, #4]
005a187c  00 00 8f e0                                      add r0, pc, r0
005a1880  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005a1884  68 9d 3f 00                                      .byte 0x68, 0x9d, 0x3f, 0x00

; FUNCTION 0x005a18a8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_12E_LIGHT_TYPEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_LIGHT_TYPE*)
; decoder-mode: arm
005a18a8  04 00 9f e5                                      ldr r0, [pc, #4]
005a18ac  00 00 8f e0                                      add r0, pc, r0
005a18b0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005a18b4  48 9d 3f 00                                      .byte 0x48, 0x9d, 0x3f, 0x00

; FUNCTION 0x005a18d8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_16E_PRIMITIVE_TYPEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_PRIMITIVE_TYPE*)
; decoder-mode: arm
005a18d8  04 00 9f e5                                      ldr r0, [pc, #4]
005a18dc  00 00 8f e0                                      add r0, pc, r0
005a18e0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005a18e4  2c 9d 3f 00                                      .byte 0x2c, 0x9d, 0x3f, 0x00

; FUNCTION 0x005a23f4, declared_size=192, range_size=192, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video23isVertexStreamHomolacedERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERi
; demangled: glitch::video::isVertexStreamHomolaced(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, int&)
; decoder-mode: arm
005a23f4  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
005a23f8  00 20 90 e5                                      ldr r2, [r0]
005a23fc  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
005a2400  10 70 92 e5                                      ldr r7, [r2, #0x10]
005a2404  14 20 82 e2                                      add r2, r2, #0x14
005a2408  03 30 8f e0                                      add r3, pc, r3
005a240c  07 00 52 e1                                      cmp r2, r7
005a2410  be 00 d2 e1                                      ldrh r0, [r2, #0xe]
005a2414  02 61 e0 03                                      mvneq r6, #0x80000000
005a2418  00 80 a0 03                                      moveq r8, #0
005a241c  06 c1 a0 03                                      moveq ip, #0x80000001
005a2420  02 61 e0 13                                      mvnne r6, #0x80000000
005a2424  00 80 a0 13                                      movne r8, #0
005a2428  06 51 a0 13                                      movne r5, #0x80000001
005a242c  04 00 00 1a                                      bne #0x5a2444
005a2430  0d 00 00 ea                                      b #0x5a246c
005a2434  be 40 d2 e1                                      ldrh r4, [r2, #0xe]
005a2438  0c 50 a0 e1                                      mov r5, ip
005a243c  00 00 54 e1                                      cmp r4, r0
005a2440  16 00 00 1a                                      bne #0x5a24a0
005a2444  04 40 92 e5                                      ldr r4, [r2, #4]
005a2448  04 00 56 e1                                      cmp r6, r4
005a244c  04 60 a0 a1                                      movge r6, r4
005a2450  05 00 54 e1                                      cmp r4, r5
005a2454  02 80 a0 c1                                      movgt r8, r2
005a2458  10 20 82 e2                                      add r2, r2, #0x10
005a245c  04 c0 a0 e1                                      mov ip, r4
005a2460  05 c0 a0 d1                                      movle ip, r5
005a2464  07 00 52 e1                                      cmp r2, r7
005a2468  f1 ff ff 1a                                      bne #0x5a2434
005a246c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
005a2470  00 60 81 e5                                      str r6, [r1]
005a2474  ba 10 d8 e1                                      ldrh r1, [r8, #0xa]
005a2478  02 30 93 e7                                      ldr r3, [r3, r2]
005a247c  bc 20 d8 e1                                      ldrh r2, [r8, #0xc]
005a2480  01 30 d3 e7                                      ldrb r3, [r3, r1]
005a2484  92 c3 2c e0                                      mla ip, r2, r3, ip
005a2488  0c 60 66 e0                                      rsb r6, r6, ip
005a248c  00 00 56 e1                                      cmp r6, r0
005a2490  00 00 a0 c3                                      movgt r0, #0
005a2494  01 00 a0 d3                                      movle r0, #1
005a2498  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
005a249c  1e ff 2f e1                                      bx lr
005a24a0  00 00 a0 e3                                      mov r0, #0
005a24a4  00 00 81 e5                                      str r0, [r1]
005a24a8  fa ff ff ea                                      b #0x5a2498
; mapping-symbol data/literal pool
005a24ac  88 26 3f 00 08 11 00 00                          .byte 0x88, 0x26, 0x3f, 0x00, 0x08, 0x11, 0x00, 0x00

; FUNCTION 0x005a2b18, declared_size=276, range_size=276, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video10copyVertexEtRKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS2_IS3_EEPKhRPhb
; demangled: glitch::video::copyVertex(unsigned short, boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, unsigned char const*, unsigned char*&, bool)
; decoder-mode: arm
005a2b18  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a2b1c  14 d0 4d e2                                      sub sp, sp, #0x14
005a2b20  3c 20 dd e5                                      ldrb r2, [sp, #0x3c]
005a2b24  f8 c0 9f e5                                      ldr ip, [pc, #0xf8]
005a2b28  08 00 8d e5                                      str r0, [sp, #8]
005a2b2c  00 00 52 e3                                      cmp r2, #0
005a2b30  0c c0 8f e0                                      add ip, pc, ip
005a2b34  04 c0 8d e5                                      str ip, [sp, #4]
005a2b38  01 40 a0 e1                                      mov r4, r1
005a2b3c  38 70 9d e5                                      ldr r7, [sp, #0x38]
005a2b40  2c 00 00 1a                                      bne #0x5a2bf8
005a2b44  00 50 91 e5                                      ldr r5, [r1]
005a2b48  10 20 95 e5                                      ldr r2, [r5, #0x10]
005a2b4c  14 30 85 e2                                      add r3, r5, #0x14
005a2b50  03 00 52 e1                                      cmp r2, r3
005a2b54  25 00 00 0a                                      beq #0x5a2bf0
005a2b58  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
005a2b5c  24 50 85 e2                                      add r5, r5, #0x24
005a2b60  0c 10 8d e5                                      str r1, [sp, #0xc]
005a2b64  10 60 15 e5                                      ldr r6, [r5, #-0x10]
005a2b68  01 10 a0 e3                                      mov r1, #1
005a2b6c  00 00 56 e2                                      subs r0, r6, #0
005a2b70  04 30 96 15                                      ldrne r3, [r6, #4]
005a2b74  01 30 83 10                                      addne r3, r3, r1
005a2b78  04 30 86 15                                      strne r3, [r6, #4]
005a2b7c  0c 90 15 e5                                      ldr sb, [r5, #-0xc]
005a2b80  b6 a0 55 e1                                      ldrh sl, [r5, #-6]
005a2b84  b4 80 55 e1                                      ldrh r8, [r5, #-4]
005a2b88  b2 b0 55 e1                                      ldrh fp, [r5, #-2]
005a2b8c  d2 fb ff eb                                      bl #0x5a1adc
005a2b90  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005a2b94  04 c0 9d e5                                      ldr ip, [sp, #4]
005a2b98  08 10 9d e5                                      ldr r1, [sp, #8]
005a2b9c  02 30 9c e7                                      ldr r3, [ip, r2]
005a2ba0  9b 91 29 e0                                      mla sb, fp, r1, sb
005a2ba4  0a 30 d3 e7                                      ldrb r3, [r3, sl]
005a2ba8  09 10 80 e0                                      add r1, r0, sb
005a2bac  00 00 97 e5                                      ldr r0, [r7]
005a2bb0  98 03 08 e0                                      mul r8, r8, r3
005a2bb4  08 20 a0 e1                                      mov r2, r8
005a2bb8  2a af f5 eb                                      bl #0x30e868
005a2bbc  00 30 97 e5                                      ldr r3, [r7]
005a2bc0  00 00 56 e3                                      cmp r6, #0
005a2bc4  06 00 a0 e1                                      mov r0, r6
005a2bc8  08 80 83 e0                                      add r8, r3, r8
005a2bcc  00 80 87 e5                                      str r8, [r7]
005a2bd0  00 00 00 0a                                      beq #0x5a2bd8
005a2bd4  6a ea f5 eb                                      bl #0x31d584
005a2bd8  00 20 94 e5                                      ldr r2, [r4]
005a2bdc  05 30 a0 e1                                      mov r3, r5
005a2be0  10 50 85 e2                                      add r5, r5, #0x10
005a2be4  10 20 92 e5                                      ldr r2, [r2, #0x10]
005a2be8  03 00 52 e1                                      cmp r2, r3
005a2bec  dc ff ff 1a                                      bne #0x5a2b64
005a2bf0  14 d0 8d e2                                      add sp, sp, #0x14
005a2bf4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a2bf8  00 20 91 e5                                      ldr r2, [r1]
005a2bfc  00 00 97 e5                                      ldr r0, [r7]
005a2c00  b2 42 d2 e1                                      ldrh r4, [r2, #0x22]
005a2c04  08 20 9d e5                                      ldr r2, [sp, #8]
005a2c08  94 32 21 e0                                      mla r1, r4, r2, r3
005a2c0c  04 20 a0 e1                                      mov r2, r4
005a2c10  14 af f5 eb                                      bl #0x30e868
005a2c14  00 30 97 e5                                      ldr r3, [r7]
005a2c18  04 40 83 e0                                      add r4, r3, r4
005a2c1c  00 40 87 e5                                      str r4, [r7]
005a2c20  f2 ff ff ea                                      b #0x5a2bf0
; mapping-symbol data/literal pool
005a2c24  60 1f 3f 00 08 11 00 00                          .byte 0x60, 0x1f, 0x3f, 0x00, 0x08, 0x11, 0x00, 0x00

; FUNCTION 0x005a33a8, declared_size=912, range_size=912, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video15distributeMeansEjRKNS_4core8aabbox3dIfEERSt6vectorINS1_8vector3dIfEENS1_10SAllocatorIS8_LNS_6memory13E_MEMORY_HINTE0EEEEjRj
; demangled: glitch::video::distributeMeans(unsigned int, glitch::core::aabbox3d<float> const&, std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> >&, unsigned int, unsigned int&)
; decoder-mode: arm
005a33a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a33ac  00 b0 50 e2                                      subs fp, r0, #0
005a33b0  5c d0 4d e2                                      sub sp, sp, #0x5c
005a33b4  01 70 a0 e1                                      mov r7, r1
005a33b8  02 60 a0 e1                                      mov r6, r2
005a33bc  03 50 a0 e1                                      mov r5, r3
005a33c0  80 40 9d e5                                      ldr r4, [sp, #0x80]
005a33c4  04 00 00 1a                                      bne #0x5a33dc
005a33c8  00 30 94 e5                                      ldr r3, [r4]
005a33cc  00 00 53 e3                                      cmp r3, #0
005a33d0  4d 00 00 1a                                      bne #0x5a350c
005a33d4  5c d0 8d e2                                      add sp, sp, #0x5c
005a33d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a33dc  00 30 94 e5                                      ldr r3, [r4]
005a33e0  00 00 53 e3                                      cmp r3, #0
005a33e4  fa ff ff 0a                                      beq #0x5a33d4
005a33e8  04 20 91 e5                                      ldr r2, [r1, #4]
005a33ec  10 30 91 e5                                      ldr r3, [r1, #0x10]
005a33f0  14 a0 91 e5                                      ldr sl, [r1, #0x14]
005a33f4  00 80 91 e5                                      ldr r8, [r1]
005a33f8  08 90 91 e5                                      ldr sb, [r1, #8]
005a33fc  0c 70 91 e5                                      ldr r7, [r1, #0xc]
005a3400  02 00 a0 e1                                      mov r0, r2
005a3404  03 10 a0 e1                                      mov r1, r3
005a3408  2c 20 8d e5                                      str r2, [sp, #0x2c]
005a340c  14 20 8d e5                                      str r2, [sp, #0x14]
005a3410  38 30 8d e5                                      str r3, [sp, #0x38]
005a3414  20 30 8d e5                                      str r3, [sp, #0x20]
005a3418  28 80 8d e5                                      str r8, [sp, #0x28]
005a341c  34 70 8d e5                                      str r7, [sp, #0x34]
005a3420  3c a0 8d e5                                      str sl, [sp, #0x3c]
005a3424  10 80 8d e5                                      str r8, [sp, #0x10]
005a3428  1c 70 8d e5                                      str r7, [sp, #0x1c]
005a342c  24 a0 8d e5                                      str sl, [sp, #0x24]
005a3430  30 90 8d e5                                      str sb, [sp, #0x30]
005a3434  18 90 8d e5                                      str sb, [sp, #0x18]
005a3438  d9 ad f5 eb                                      bl #0x30eba4
005a343c  3f 14 a0 e3                                      mov r1, #0x3f000000
005a3440  49 ae f5 eb                                      bl #0x30ed6c
005a3444  0a 10 a0 e1                                      mov r1, sl
005a3448  00 30 a0 e1                                      mov r3, r0
005a344c  09 00 a0 e1                                      mov r0, sb
005a3450  0c 30 8d e5                                      str r3, [sp, #0xc]
005a3454  d2 ad f5 eb                                      bl #0x30eba4
005a3458  3f 14 a0 e3                                      mov r1, #0x3f000000
005a345c  42 ae f5 eb                                      bl #0x30ed6c
005a3460  07 10 a0 e1                                      mov r1, r7
005a3464  00 a0 a0 e1                                      mov sl, r0
005a3468  08 00 a0 e1                                      mov r0, r8
005a346c  cc ad f5 eb                                      bl #0x30eba4
005a3470  3f 14 a0 e3                                      mov r1, #0x3f000000
005a3474  3c ae f5 eb                                      bl #0x30ed6c
005a3478  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005a347c  ab 8a 0a e3                                      movw r8, #0xaaab
005a3480  01 20 85 e2                                      add r2, r5, #1
005a3484  aa 8a 4a e3                                      movt r8, #0xaaaa
005a3488  4c 00 8d e5                                      str r0, [sp, #0x4c]
005a348c  50 30 8d e5                                      str r3, [sp, #0x50]
005a3490  54 a0 8d e5                                      str sl, [sp, #0x54]
005a3494  98 12 88 e0                                      umull r1, r8, r8, r2
005a3498  4c 10 8d e2                                      add r1, sp, #0x4c
005a349c  05 e1 91 e7                                      ldr lr, [r1, r5, lsl #2]
005a34a0  05 c1 a0 e1                                      lsl ip, r5, #2
005a34a4  28 10 8d e2                                      add r1, sp, #0x28
005a34a8  01 c0 8c e0                                      add ip, ip, r1
005a34ac  0c e0 8c e5                                      str lr, [ip, #0xc]
005a34b0  a8 80 a0 e1                                      lsr r8, r8, #1
005a34b4  40 00 8d e5                                      str r0, [sp, #0x40]
005a34b8  44 30 8d e5                                      str r3, [sp, #0x44]
005a34bc  48 a0 8d e5                                      str sl, [sp, #0x48]
005a34c0  40 30 8d e2                                      add r3, sp, #0x40
005a34c4  05 c1 93 e7                                      ldr ip, [r3, r5, lsl #2]
005a34c8  88 80 88 e0                                      add r8, r8, r8, lsl #1
005a34cc  02 80 68 e0                                      rsb r8, r8, r2
005a34d0  01 a0 4b e2                                      sub sl, fp, #1
005a34d4  10 70 8d e2                                      add r7, sp, #0x10
005a34d8  0a 00 a0 e1                                      mov r0, sl
005a34dc  06 20 a0 e1                                      mov r2, r6
005a34e0  08 30 a0 e1                                      mov r3, r8
005a34e4  05 c1 87 e7                                      str ip, [r7, r5, lsl #2]
005a34e8  00 40 8d e5                                      str r4, [sp]
005a34ec  ad ff ff eb                                      bl #0x5a33a8
005a34f0  0a 00 a0 e1                                      mov r0, sl
005a34f4  07 10 a0 e1                                      mov r1, r7
005a34f8  06 20 a0 e1                                      mov r2, r6
005a34fc  08 30 a0 e1                                      mov r3, r8
005a3500  00 40 8d e5                                      str r4, [sp]
005a3504  a7 ff ff eb                                      bl #0x5a33a8
005a3508  b1 ff ff ea                                      b #0x5a33d4
005a350c  25 ae f5 eb                                      bl #0x30eda8
005a3510  13 ad f5 eb                                      bl #0x30e964
005a3514  03 12 a0 e3                                      mov r1, #0x30000000
005a3518  13 ae f5 eb                                      bl #0x30ed6c
005a351c  00 b0 a0 e1                                      mov fp, r0
005a3520  20 ae f5 eb                                      bl #0x30eda8
005a3524  0e ad f5 eb                                      bl #0x30e964
005a3528  03 12 a0 e3                                      mov r1, #0x30000000
005a352c  0e ae f5 eb                                      bl #0x30ed6c
005a3530  00 90 a0 e1                                      mov sb, r0
005a3534  1b ae f5 eb                                      bl #0x30eda8
005a3538  09 ad f5 eb                                      bl #0x30e964
005a353c  03 12 a0 e3                                      mov r1, #0x30000000
005a3540  09 ae f5 eb                                      bl #0x30ed6c
005a3544  00 50 97 e5                                      ldr r5, [r7]
005a3548  00 a0 a0 e1                                      mov sl, r0
005a354c  0c 00 97 e5                                      ldr r0, [r7, #0xc]
005a3550  05 10 a0 e1                                      mov r1, r5
005a3554  94 ab f5 eb                                      bl #0x30e3ac
005a3558  00 10 a0 e1                                      mov r1, r0
005a355c  0b 00 a0 e1                                      mov r0, fp
005a3560  01 ae f5 eb                                      bl #0x30ed6c
005a3564  00 10 a0 e1                                      mov r1, r0
005a3568  05 00 a0 e1                                      mov r0, r5
005a356c  8c ad f5 eb                                      bl #0x30eba4
005a3570  04 80 97 e5                                      ldr r8, [r7, #4]
005a3574  00 b0 a0 e1                                      mov fp, r0
005a3578  10 00 97 e5                                      ldr r0, [r7, #0x10]
005a357c  08 10 a0 e1                                      mov r1, r8
005a3580  89 ab f5 eb                                      bl #0x30e3ac
005a3584  00 10 a0 e1                                      mov r1, r0
005a3588  09 00 a0 e1                                      mov r0, sb
005a358c  f6 ad f5 eb                                      bl #0x30ed6c
005a3590  00 10 a0 e1                                      mov r1, r0
005a3594  08 00 a0 e1                                      mov r0, r8
005a3598  81 ad f5 eb                                      bl #0x30eba4
005a359c  08 50 97 e5                                      ldr r5, [r7, #8]
005a35a0  00 80 a0 e1                                      mov r8, r0
005a35a4  14 00 97 e5                                      ldr r0, [r7, #0x14]
005a35a8  05 10 a0 e1                                      mov r1, r5
005a35ac  7e ab f5 eb                                      bl #0x30e3ac
005a35b0  00 10 a0 e1                                      mov r1, r0
005a35b4  0a 00 a0 e1                                      mov r0, sl
005a35b8  eb ad f5 eb                                      bl #0x30ed6c
005a35bc  00 10 a0 e1                                      mov r1, r0
005a35c0  05 00 a0 e1                                      mov r0, r5
005a35c4  76 ad f5 eb                                      bl #0x30eba4
005a35c8  28 00 96 e9                                      ldmib r6, {r3, r5}
005a35cc  00 70 a0 e1                                      mov r7, r0
005a35d0  05 00 53 e1                                      cmp r3, r5
005a35d4  09 00 00 0a                                      beq #0x5a3600
005a35d8  08 00 83 e5                                      str r0, [r3, #8]
005a35dc  00 b0 83 e5                                      str fp, [r3]
005a35e0  04 80 83 e5                                      str r8, [r3, #4]
005a35e4  04 30 96 e5                                      ldr r3, [r6, #4]
005a35e8  0c 30 83 e2                                      add r3, r3, #0xc
005a35ec  04 30 86 e5                                      str r3, [r6, #4]
005a35f0  00 30 94 e5                                      ldr r3, [r4]
005a35f4  01 30 43 e2                                      sub r3, r3, #1
005a35f8  00 30 84 e5                                      str r3, [r4]
005a35fc  74 ff ff ea                                      b #0x5a33d4
005a3600  00 20 96 e5                                      ldr r2, [r6]
005a3604  55 35 05 e3                                      movw r3, #0x5555
005a3608  03 37 83 e1                                      orr r3, r3, r3, lsl #14
005a360c  05 20 62 e0                                      rsb r2, r2, r5
005a3610  42 21 a0 e1                                      asr r2, r2, #2
005a3614  02 11 82 e0                                      add r1, r2, r2, lsl #2
005a3618  01 12 81 e0                                      add r1, r1, r1, lsl #4
005a361c  01 14 81 e0                                      add r1, r1, r1, lsl #8
005a3620  01 18 81 e0                                      add r1, r1, r1, lsl #16
005a3624  81 20 82 e0                                      add r2, r2, r1, lsl #1
005a3628  01 00 52 e3                                      cmp r2, #1
005a362c  02 10 82 20                                      addhs r1, r2, r2
005a3630  01 10 82 32                                      addlo r1, r2, #1
005a3634  03 00 51 e1                                      cmp r1, r3
005a3638  3c 00 00 8a                                      bhi #0x5a3730
005a363c  01 00 52 e1                                      cmp r2, r1
005a3640  3a 00 00 8a                                      bhi #0x5a3730
005a3644  0c a0 a0 e3                                      mov sl, #0xc
005a3648  9a 01 0a e0                                      mul sl, sl, r1
005a364c  0a 00 a0 e1                                      mov r0, sl
005a3650  00 10 a0 e3                                      mov r1, #0
005a3654  c3 b3 f5 eb                                      bl #0x310568
005a3658  00 30 96 e5                                      ldr r3, [r6]
005a365c  00 90 a0 e1                                      mov sb, r0
005a3660  05 20 63 e0                                      rsb r2, r3, r5
005a3664  42 21 a0 e1                                      asr r2, r2, #2
005a3668  02 c1 82 e0                                      add ip, r2, r2, lsl #2
005a366c  0c c2 8c e0                                      add ip, ip, ip, lsl #4
005a3670  0c c4 8c e0                                      add ip, ip, ip, lsl #8
005a3674  0c c8 8c e0                                      add ip, ip, ip, lsl #16
005a3678  8c c0 82 e0                                      add ip, r2, ip, lsl #1
005a367c  00 00 5c e3                                      cmp ip, #0
005a3680  00 50 a0 d1                                      movle r5, r0
005a3684  0d 00 00 da                                      ble #0x5a36c0
005a3688  0c 10 a0 e1                                      mov r1, ip
005a368c  00 20 a0 e1                                      mov r2, r0
005a3690  00 00 93 e5                                      ldr r0, [r3]
005a3694  01 10 51 e2                                      subs r1, r1, #1
005a3698  00 00 82 e5                                      str r0, [r2]
005a369c  04 00 93 e5                                      ldr r0, [r3, #4]
005a36a0  04 00 82 e5                                      str r0, [r2, #4]
005a36a4  08 00 93 e5                                      ldr r0, [r3, #8]
005a36a8  0c 30 83 e2                                      add r3, r3, #0xc
005a36ac  08 00 82 e5                                      str r0, [r2, #8]
005a36b0  0c 20 82 e2                                      add r2, r2, #0xc
005a36b4  f5 ff ff 1a                                      bne #0x5a3690
005a36b8  0c 50 a0 e3                                      mov r5, #0xc
005a36bc  95 9c 25 e0                                      mla r5, r5, ip, sb
005a36c0  00 b0 85 e5                                      str fp, [r5]
005a36c4  04 80 85 e5                                      str r8, [r5, #4]
005a36c8  08 70 85 e5                                      str r7, [r5, #8]
005a36cc  04 00 96 e5                                      ldr r0, [r6, #4]
005a36d0  00 30 96 e5                                      ldr r3, [r6]
005a36d4  0c 50 85 e2                                      add r5, r5, #0xc
005a36d8  03 00 50 e1                                      cmp r0, r3
005a36dc  0e 00 00 0a                                      beq #0x5a371c
005a36e0  0c 20 40 e2                                      sub r2, r0, #0xc
005a36e4  02 30 63 e0                                      rsb r3, r3, r2
005a36e8  23 31 a0 e1                                      lsr r3, r3, #2
005a36ec  03 21 83 e0                                      add r2, r3, r3, lsl #2
005a36f0  82 22 82 e0                                      add r2, r2, r2, lsl #5
005a36f4  82 20 83 e0                                      add r2, r3, r2, lsl #1
005a36f8  82 22 82 e0                                      add r2, r2, r2, lsl #5
005a36fc  82 17 a0 e1                                      lsl r1, r2, #0xf
005a3700  01 20 62 e0                                      rsb r2, r2, r1
005a3704  82 30 83 e0                                      add r3, r3, r2, lsl #1
005a3708  03 31 c3 e3                                      bic r3, r3, #0xc0000000
005a370c  0b 20 e0 e3                                      mvn r2, #0xb
005a3710  92 03 03 e0                                      mul r3, r2, r3
005a3714  02 30 83 e0                                      add r3, r3, r2
005a3718  03 00 80 e0                                      add r0, r0, r3
005a371c  0a a0 89 e0                                      add sl, sb, sl
005a3720  4a b3 f5 eb                                      bl #0x310450
005a3724  20 04 86 e9                                      stmib r6, {r5, sl}
005a3728  00 90 86 e5                                      str sb, [r6]
005a372c  af ff ff ea                                      b #0x5a35f0
005a3730  03 a0 e0 e3                                      mvn sl, #3
005a3734  c4 ff ff ea                                      b #0x5a364c

; FUNCTION 0x005a5860, declared_size=884, range_size=884, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video21spatialGridClusteringERSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS4_EEERKS2_IS7_IjNS_4core8aabbox3dIfEEENSD_10SAllocatorISG_LNS_6memory13E_MEMORY_HINTE0EEEERKNSD_8vector3dIfEE
; demangled: glitch::video::spatialGridClustering(std::map<unsigned int, std::vector<unsigned int, std::allocator<unsigned int> >, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >&, std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, glitch::core::SAllocator<std::pair<unsigned int, glitch::core::aabbox3d<float> >, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
005a5860  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a5864  50 33 9f e5                                      ldr r3, [pc, #0x350]
005a5868  50 c3 9f e5                                      ldr ip, [pc, #0x350]
005a586c  fc d0 4d e2                                      sub sp, sp, #0xfc
005a5870  03 30 8f e0                                      add r3, pc, r3
005a5874  14 30 8d e5                                      str r3, [sp, #0x14]
005a5878  0c 30 93 e7                                      ldr r3, [r3, ip]
005a587c  34 b0 8d e2                                      add fp, sp, #0x34
005a5880  40 40 8b e2                                      add r4, fp, #0x40
005a5884  00 30 93 e5                                      ldr r3, [r3]
005a5888  00 00 8d e5                                      str r0, [sp]
005a588c  04 00 a0 e1                                      mov r0, r4
005a5890  18 c0 8d e5                                      str ip, [sp, #0x18]
005a5894  01 60 a0 e1                                      mov r6, r1
005a5898  f4 30 8d e5                                      str r3, [sp, #0xf4]
005a589c  04 20 8d e5                                      str r2, [sp, #4]
005a58a0  a6 8d 05 eb                                      bl #0x708f40
005a58a4  14 e0 9d e5                                      ldr lr, [sp, #0x14]
005a58a8  14 23 9f e5                                      ldr r2, [pc, #0x314]
005a58ac  14 33 9f e5                                      ldr r3, [pc, #0x314]
005a58b0  00 80 a0 e3                                      mov r8, #0
005a58b4  02 20 9e e7                                      ldr r2, [lr, r2]
005a58b8  03 30 9e e7                                      ldr r3, [lr, r3]
005a58bc  b8 80 cd e5                                      strb r8, [sp, #0xb8]
005a58c0  04 10 92 e5                                      ldr r1, [r2, #4]
005a58c4  08 30 83 e2                                      add r3, r3, #8
005a58c8  74 30 8d e5                                      str r3, [sp, #0x74]
005a58cc  34 10 8d e5                                      str r1, [sp, #0x34]
005a58d0  bc 80 8d e5                                      str r8, [sp, #0xbc]
005a58d4  c0 80 8d e5                                      str r8, [sp, #0xc0]
005a58d8  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
005a58dc  08 20 92 e5                                      ldr r2, [r2, #8]
005a58e0  08 10 a0 e1                                      mov r1, r8
005a58e4  04 50 8b e2                                      add r5, fp, #4
005a58e8  03 20 8b e7                                      str r2, [fp, r3]
005a58ec  34 30 9d e5                                      ldr r3, [sp, #0x34]
005a58f0  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
005a58f4  00 00 8b e0                                      add r0, fp, r0
005a58f8  e9 f5 f5 eb                                      bl #0x3230a4
005a58fc  14 20 9d e5                                      ldr r2, [sp, #0x14]
005a5900  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
005a5904  10 10 a0 e3                                      mov r1, #0x10
005a5908  05 00 a0 e1                                      mov r0, r5
005a590c  03 30 92 e7                                      ldr r3, [r2, r3]
005a5910  20 20 83 e2                                      add r2, r3, #0x20
005a5914  0c 30 83 e2                                      add r3, r3, #0xc
005a5918  34 30 8d e5                                      str r3, [sp, #0x34]
005a591c  74 20 8d e5                                      str r2, [sp, #0x74]
005a5920  ee 1d f6 eb                                      bl #0x32d0e0
005a5924  05 10 a0 e1                                      mov r1, r5
005a5928  04 00 a0 e1                                      mov r0, r4
005a592c  dc f5 f5 eb                                      bl #0x3230a4
005a5930  0c 00 96 e8                                      ldm r6, {r2, r3}
005a5934  30 80 8d e5                                      str r8, [sp, #0x30]
005a5938  03 30 62 e0                                      rsb r3, r2, r3
005a593c  43 31 a0 e1                                      asr r3, r3, #2
005a5940  83 11 83 e0                                      add r1, r3, r3, lsl #3
005a5944  01 13 81 e0                                      add r1, r1, r1, lsl #6
005a5948  81 11 83 e0                                      add r1, r3, r1, lsl #3
005a594c  81 17 81 e0                                      add r1, r1, r1, lsl #15
005a5950  81 31 83 e0                                      add r3, r3, r1, lsl #3
005a5954  08 00 53 e1                                      cmp r3, r8
005a5958  7f 00 00 0a                                      beq #0x5a5b5c
005a595c  6c 72 9f e5                                      ldr r7, [pc, #0x26c]
005a5960  20 30 8d e2                                      add r3, sp, #0x20
005a5964  2c c0 8d e2                                      add ip, sp, #0x2c
005a5968  30 e0 8d e2                                      add lr, sp, #0x30
005a596c  10 50 8d e5                                      str r5, [sp, #0x10]
005a5970  07 70 8f e0                                      add r7, pc, r7
005a5974  08 30 8d e5                                      str r3, [sp, #8]
005a5978  dc 40 8d e2                                      add r4, sp, #0xdc
005a597c  c4 50 8d e2                                      add r5, sp, #0xc4
005a5980  0c c0 8d e5                                      str ip, [sp, #0xc]
005a5984  1c e0 8d e5                                      str lr, [sp, #0x1c]
005a5988  1c 10 a0 e3                                      mov r1, #0x1c
005a598c  91 28 28 e0                                      mla r8, r1, r8, r2
005a5990  14 10 98 e5                                      ldr r1, [r8, #0x14]
005a5994  08 00 98 e5                                      ldr r0, [r8, #8]
005a5998  81 a4 f5 eb                                      bl #0x30eba4
005a599c  3f 14 a0 e3                                      mov r1, #0x3f000000
005a59a0  f1 a4 f5 eb                                      bl #0x30ed6c
005a59a4  18 10 98 e5                                      ldr r1, [r8, #0x18]
005a59a8  00 90 a0 e1                                      mov sb, r0
005a59ac  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005a59b0  7b a4 f5 eb                                      bl #0x30eba4
005a59b4  3f 14 a0 e3                                      mov r1, #0x3f000000
005a59b8  eb a4 f5 eb                                      bl #0x30ed6c
005a59bc  10 10 98 e5                                      ldr r1, [r8, #0x10]
005a59c0  00 a0 a0 e1                                      mov sl, r0
005a59c4  04 00 98 e5                                      ldr r0, [r8, #4]
005a59c8  75 a4 f5 eb                                      bl #0x30eba4
005a59cc  3f 14 a0 e3                                      mov r1, #0x3f000000
005a59d0  e5 a4 f5 eb                                      bl #0x30ed6c
005a59d4  04 10 9d e5                                      ldr r1, [sp, #4]
005a59d8  20 00 8d e5                                      str r0, [sp, #0x20]
005a59dc  08 00 9d e5                                      ldr r0, [sp, #8]
005a59e0  24 90 8d e5                                      str sb, [sp, #0x24]
005a59e4  28 a0 8d e5                                      str sl, [sp, #0x28]
005a59e8  b1 f2 ff eb                                      bl #0x5a24b4
005a59ec  20 00 9d e5                                      ldr r0, [sp, #0x20]
005a59f0  b5 a2 f5 eb                                      bl #0x30e4cc
005a59f4  00 a0 a0 e1                                      mov sl, r0
005a59f8  24 00 9d e5                                      ldr r0, [sp, #0x24]
005a59fc  b2 a2 f5 eb                                      bl #0x30e4cc
005a5a00  00 80 a0 e1                                      mov r8, r0
005a5a04  28 00 9d e5                                      ldr r0, [sp, #0x28]
005a5a08  af a2 f5 eb                                      bl #0x30e4cc
005a5a0c  07 20 a0 e1                                      mov r2, r7
005a5a10  07 10 a0 e1                                      mov r1, r7
005a5a14  00 90 a0 e1                                      mov sb, r0
005a5a18  04 00 a0 e1                                      mov r0, r4
005a5a1c  ec 40 8d e5                                      str r4, [sp, #0xec]
005a5a20  f0 40 8d e5                                      str r4, [sp, #0xf0]
005a5a24  2f af f5 eb                                      bl #0x3116e8
005a5a28  10 00 9d e5                                      ldr r0, [sp, #0x10]
005a5a2c  04 10 a0 e1                                      mov r1, r4
005a5a30  0f f9 ff eb                                      bl #0x5a3e74
005a5a34  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
005a5a38  04 00 50 e1                                      cmp r0, r4
005a5a3c  06 00 00 0a                                      beq #0x5a5a5c
005a5a40  00 00 50 e3                                      cmp r0, #0
005a5a44  04 00 00 0a                                      beq #0x5a5a5c
005a5a48  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005a5a4c  01 10 60 e0                                      rsb r1, r0, r1
005a5a50  80 00 51 e3                                      cmp r1, #0x80
005a5a54  4b 00 00 8a                                      bhi #0x5a5b88
005a5a58  28 8d 05 eb                                      bl #0x708f00
005a5a5c  0a 10 a0 e1                                      mov r1, sl
005a5a60  0b 00 a0 e1                                      mov r0, fp
005a5a64  f4 a8 f5 eb                                      bl #0x30fe3c
005a5a68  08 10 a0 e1                                      mov r1, r8
005a5a6c  f2 a8 f5 eb                                      bl #0x30fe3c
005a5a70  09 10 a0 e1                                      mov r1, sb
005a5a74  f0 a8 f5 eb                                      bl #0x30fe3c
005a5a78  05 00 a0 e1                                      mov r0, r5
005a5a7c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
005a5a80  70 10 9d e5                                      ldr r1, [sp, #0x70]
005a5a84  d4 50 8d e5                                      str r5, [sp, #0xd4]
005a5a88  d8 50 8d e5                                      str r5, [sp, #0xd8]
005a5a8c  15 af f5 eb                                      bl #0x3116e8
005a5a90  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
005a5a94  d4 e0 9d e5                                      ldr lr, [sp, #0xd4]
005a5a98  0e 00 50 e1                                      cmp r0, lr
005a5a9c  00 20 a0 03                                      moveq r2, #0
005a5aa0  0a 00 00 0a                                      beq #0x5a5ad0
005a5aa4  00 10 a0 e1                                      mov r1, r0
005a5aa8  00 20 a0 e3                                      mov r2, #0
005a5aac  d1 c0 d1 e0                                      ldrsb ip, [r1], #1
005a5ab0  b9 39 07 e3                                      movw r3, #0x79b9
005a5ab4  37 3e 49 e3                                      movt r3, #0x9e37
005a5ab8  03 30 8c e0                                      add r3, ip, r3
005a5abc  02 33 83 e0                                      add r3, r3, r2, lsl #6
005a5ac0  22 31 83 e0                                      add r3, r3, r2, lsr #2
005a5ac4  0e 00 51 e1                                      cmp r1, lr
005a5ac8  03 20 22 e0                                      eor r2, r2, r3
005a5acc  f6 ff ff 1a                                      bne #0x5a5aac
005a5ad0  05 00 50 e1                                      cmp r0, r5
005a5ad4  2c 20 8d e5                                      str r2, [sp, #0x2c]
005a5ad8  06 00 00 0a                                      beq #0x5a5af8
005a5adc  00 00 50 e3                                      cmp r0, #0
005a5ae0  04 00 00 0a                                      beq #0x5a5af8
005a5ae4  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
005a5ae8  01 10 60 e0                                      rsb r1, r0, r1
005a5aec  80 00 51 e3                                      cmp r1, #0x80
005a5af0  26 00 00 8a                                      bhi #0x5a5b90
005a5af4  01 8d 05 eb                                      bl #0x708f00
005a5af8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005a5afc  00 00 9d e5                                      ldr r0, [sp]
005a5b00  10 ff ff eb                                      bl #0x5a5748
005a5b04  06 00 90 e9                                      ldmib r0, {r1, r2}
005a5b08  02 00 51 e1                                      cmp r1, r2
005a5b0c  26 00 00 0a                                      beq #0x5a5bac
005a5b10  30 20 9d e5                                      ldr r2, [sp, #0x30]
005a5b14  00 20 81 e5                                      str r2, [r1]
005a5b18  04 20 90 e5                                      ldr r2, [r0, #4]
005a5b1c  04 20 82 e2                                      add r2, r2, #4
005a5b20  04 20 80 e5                                      str r2, [r0, #4]
005a5b24  0c 00 96 e8                                      ldm r6, {r2, r3}
005a5b28  30 80 9d e5                                      ldr r8, [sp, #0x30]
005a5b2c  03 30 62 e0                                      rsb r3, r2, r3
005a5b30  43 31 a0 e1                                      asr r3, r3, #2
005a5b34  01 80 88 e2                                      add r8, r8, #1
005a5b38  83 11 83 e0                                      add r1, r3, r3, lsl #3
005a5b3c  30 80 8d e5                                      str r8, [sp, #0x30]
005a5b40  01 13 81 e0                                      add r1, r1, r1, lsl #6
005a5b44  81 11 83 e0                                      add r1, r3, r1, lsl #3
005a5b48  81 17 81 e0                                      add r1, r1, r1, lsl #15
005a5b4c  81 11 83 e0                                      add r1, r3, r1, lsl #3
005a5b50  00 10 61 e2                                      rsb r1, r1, #0
005a5b54  01 00 58 e1                                      cmp r8, r1
005a5b58  8a ff ff 3a                                      blo #0x5a5988
005a5b5c  0b 00 a0 e1                                      mov r0, fp
005a5b60  df f4 f5 eb                                      bl #0x322ee4
005a5b64  18 20 9d e5                                      ldr r2, [sp, #0x18]
005a5b68  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005a5b6c  02 30 9c e7                                      ldr r3, [ip, r2]
005a5b70  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
005a5b74  00 30 93 e5                                      ldr r3, [r3]
005a5b78  03 00 52 e1                                      cmp r2, r3
005a5b7c  0d 00 00 1a                                      bne #0x5a5bb8
005a5b80  fc d0 8d e2                                      add sp, sp, #0xfc
005a5b84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a5b88  c8 a1 f5 eb                                      bl #0x30e2b0
005a5b8c  b2 ff ff ea                                      b #0x5a5a5c
005a5b90  c6 a1 f5 eb                                      bl #0x30e2b0
005a5b94  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005a5b98  00 00 9d e5                                      ldr r0, [sp]
005a5b9c  e9 fe ff eb                                      bl #0x5a5748
005a5ba0  06 00 90 e9                                      ldmib r0, {r1, r2}
005a5ba4  02 00 51 e1                                      cmp r1, r2
005a5ba8  d8 ff ff 1a                                      bne #0x5a5b10
005a5bac  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005a5bb0  a7 fb ff eb                                      bl #0x5a4a54
005a5bb4  da ff ff ea                                      b #0x5a5b24
005a5bb8  d4 a1 f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005a5bbc  20 f2 3e 00 ac 40 00 00 2c 42 00 00 30 37 00 00  .byte 0x20, 0xf2, 0x3e, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x42, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00
005a5bcc  54 10 00 00 98 5e 32 00                          .byte 0x54, 0x10, 0x00, 0x00, 0x98, 0x5e, 0x32, 0x00

; FUNCTION 0x005a5bd4, declared_size=2452, range_size=2452, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video16kMeansClusteringERSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS4_EEERKS2_IS7_IjNS_4core8aabbox3dIfEEENSD_10SAllocatorISG_LNS_6memory13E_MEMORY_HINTE0EEEEjRKSF_
; demangled: glitch::video::kMeansClustering(std::map<unsigned int, std::vector<unsigned int, std::allocator<unsigned int> >, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >&, std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, glitch::core::SAllocator<std::pair<unsigned int, glitch::core::aabbox3d<float> >, (glitch::memory::E_MEMORY_HINT)0> > const&, unsigned int, glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
005a5bd4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a5bd8  01 00 52 e3                                      cmp r2, #1
005a5bdc  8c d0 4d e2                                      sub sp, sp, #0x8c
005a5be0  44 00 8d e5                                      str r0, [sp, #0x44]
005a5be4  28 10 8d e5                                      str r1, [sp, #0x28]
005a5be8  38 30 8d e5                                      str r3, [sp, #0x38]
005a5bec  01 40 a0 83                                      movhi r4, #1
005a5bf0  58 02 00 9a                                      bls #0x5a6558
005a5bf4  84 40 a0 e1                                      lsl r4, r4, #1
005a5bf8  04 00 52 e1                                      cmp r2, r4
005a5bfc  fc ff ff 8a                                      bhi #0x5a5bf4
005a5c00  04 50 a0 e1                                      mov r5, r4
005a5c04  00 70 e0 e3                                      mvn r7, #0
005a5c08  a5 50 b0 e1                                      lsrs r5, r5, #1
005a5c0c  01 70 87 e2                                      add r7, r7, #1
005a5c10  fc ff ff 1a                                      bne #0x5a5c08
005a5c14  28 10 9d e5                                      ldr r1, [sp, #0x28]
005a5c18  b7 6d 06 e3                                      movw r6, #0x6db7
005a5c1c  db 66 4b e3                                      movt r6, #0xb6db
005a5c20  00 30 91 e5                                      ldr r3, [r1]
005a5c24  04 00 91 e5                                      ldr r0, [r1, #4]
005a5c28  70 20 8d e2                                      add r2, sp, #0x70
005a5c2c  04 10 a0 e1                                      mov r1, r4
005a5c30  00 00 63 e0                                      rsb r0, r3, r0
005a5c34  40 01 a0 e1                                      asr r0, r0, #2
005a5c38  96 00 00 e0                                      mul r0, r6, r0
005a5c3c  2c 20 8d e5                                      str r2, [sp, #0x2c]
005a5c40  01 a4 f5 eb                                      bl #0x30ec4c
005a5c44  64 c0 8d e2                                      add ip, sp, #0x64
005a5c48  34 c0 8d e5                                      str ip, [sp, #0x34]
005a5c4c  00 c0 e0 e3                                      mvn ip, #0
005a5c50  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005a5c54  05 30 a0 e1                                      mov r3, r5
005a5c58  40 00 8d e5                                      str r0, [sp, #0x40]
005a5c5c  38 10 9d e5                                      ldr r1, [sp, #0x38]
005a5c60  07 00 a0 e1                                      mov r0, r7
005a5c64  84 c0 8d e5                                      str ip, [sp, #0x84]
005a5c68  84 c0 8d e2                                      add ip, sp, #0x84
005a5c6c  00 c0 8d e5                                      str ip, [sp]
005a5c70  70 50 8d e5                                      str r5, [sp, #0x70]
005a5c74  74 50 8d e5                                      str r5, [sp, #0x74]
005a5c78  78 50 8d e5                                      str r5, [sp, #0x78]
005a5c7c  c9 f5 ff eb                                      bl #0x5a33a8
005a5c80  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005a5c84  34 00 9d e5                                      ldr r0, [sp, #0x34]
005a5c88  c4 f2 ff eb                                      bl #0x5a27a0
005a5c8c  28 00 9d e5                                      ldr r0, [sp, #0x28]
005a5c90  4c 20 8d e2                                      add r2, sp, #0x4c
005a5c94  04 10 90 e5                                      ldr r1, [r0, #4]
005a5c98  00 30 90 e5                                      ldr r3, [r0]
005a5c9c  58 00 8d e2                                      add r0, sp, #0x58
005a5ca0  3c 20 8d e5                                      str r2, [sp, #0x3c]
005a5ca4  01 10 63 e0                                      rsb r1, r3, r1
005a5ca8  41 11 a0 e1                                      asr r1, r1, #2
005a5cac  96 01 01 e0                                      mul r1, r6, r1
005a5cb0  2e fb ff eb                                      bl #0x5a4970
005a5cb4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005a5cb8  04 10 a0 e1                                      mov r1, r4
005a5cbc  30 50 8d e5                                      str r5, [sp, #0x30]
005a5cc0  b7 fb ff eb                                      bl #0x5a4ba4
005a5cc4  00 20 a0 e3                                      mov r2, #0
005a5cc8  02 10 a0 e1                                      mov r1, r2
005a5ccc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005a5cd0  00 c0 a0 e3                                      mov ip, #0
005a5cd4  01 10 81 e2                                      add r1, r1, #1
005a5cd8  02 c0 83 e7                                      str ip, [r3, r2]
005a5cdc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005a5ce0  02 01 e0 e3                                      mvn r0, #0x80000000
005a5ce4  02 05 40 e2                                      sub r0, r0, #0x800000
005a5ce8  02 30 83 e0                                      add r3, r3, r2
005a5cec  02 c5 e0 e3                                      mvn ip, #0x800000
005a5cf0  04 00 51 e1                                      cmp r1, r4
005a5cf4  0c 00 83 e5                                      str r0, [r3, #0xc]
005a5cf8  10 c0 83 e5                                      str ip, [r3, #0x10]
005a5cfc  14 c0 83 e5                                      str ip, [r3, #0x14]
005a5d00  18 c0 83 e5                                      str ip, [r3, #0x18]
005a5d04  04 00 83 e5                                      str r0, [r3, #4]
005a5d08  08 00 83 e5                                      str r0, [r3, #8]
005a5d0c  1c 20 82 e2                                      add r2, r2, #0x1c
005a5d10  ed ff ff 1a                                      bne #0x5a5ccc
005a5d14  28 00 9d e5                                      ldr r0, [sp, #0x28]
005a5d18  00 50 90 e5                                      ldr r5, [r0]
005a5d1c  04 30 90 e5                                      ldr r3, [r0, #4]
005a5d20  03 30 65 e0                                      rsb r3, r5, r3
005a5d24  43 31 a0 e1                                      asr r3, r3, #2
005a5d28  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a5d2c  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a5d30  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a5d34  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a5d38  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a5d3c  00 00 53 e3                                      cmp r3, #0
005a5d40  ae 00 00 0a                                      beq #0x5a6000
005a5d44  00 10 a0 e3                                      mov r1, #0
005a5d48  18 40 8d e5                                      str r4, [sp, #0x18]
005a5d4c  20 10 8d e5                                      str r1, [sp, #0x20]
005a5d50  24 10 8d e5                                      str r1, [sp, #0x24]
005a5d54  05 40 a0 e1                                      mov r4, r5
005a5d58  20 20 9d e5                                      ldr r2, [sp, #0x20]
005a5d5c  02 91 e0 e3                                      mvn sb, #0x80000000
005a5d60  02 95 49 e2                                      sub sb, sb, #0x800000
005a5d64  02 40 84 e0                                      add r4, r4, r2
005a5d68  10 10 94 e5                                      ldr r1, [r4, #0x10]
005a5d6c  04 00 94 e5                                      ldr r0, [r4, #4]
005a5d70  8b a3 f5 eb                                      bl #0x30eba4
005a5d74  3f 14 a0 e3                                      mov r1, #0x3f000000
005a5d78  fb a3 f5 eb                                      bl #0x30ed6c
005a5d7c  14 10 94 e5                                      ldr r1, [r4, #0x14]
005a5d80  00 b0 a0 e1                                      mov fp, r0
005a5d84  08 00 94 e5                                      ldr r0, [r4, #8]
005a5d88  85 a3 f5 eb                                      bl #0x30eba4
005a5d8c  3f 14 a0 e3                                      mov r1, #0x3f000000
005a5d90  f5 a3 f5 eb                                      bl #0x30ed6c
005a5d94  14 00 8d e5                                      str r0, [sp, #0x14]
005a5d98  18 10 94 e5                                      ldr r1, [r4, #0x18]
005a5d9c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005a5da0  7f a3 f5 eb                                      bl #0x30eba4
005a5da4  3f 14 a0 e3                                      mov r1, #0x3f000000
005a5da8  ef a3 f5 eb                                      bl #0x30ed6c
005a5dac  70 70 9d e5                                      ldr r7, [sp, #0x70]
005a5db0  00 40 a0 e3                                      mov r4, #0
005a5db4  08 00 8d e5                                      str r0, [sp, #8]
005a5db8  04 50 a0 e1                                      mov r5, r4
005a5dbc  1c 40 8d e5                                      str r4, [sp, #0x1c]
005a5dc0  04 10 97 e7                                      ldr r1, [r7, r4]
005a5dc4  0b 00 a0 e1                                      mov r0, fp
005a5dc8  77 a1 f5 eb                                      bl #0x30e3ac
005a5dcc  04 60 87 e0                                      add r6, r7, r4
005a5dd0  00 a0 a0 e1                                      mov sl, r0
005a5dd4  04 10 96 e5                                      ldr r1, [r6, #4]
005a5dd8  14 00 9d e5                                      ldr r0, [sp, #0x14]
005a5ddc  72 a1 f5 eb                                      bl #0x30e3ac
005a5de0  08 10 96 e5                                      ldr r1, [r6, #8]
005a5de4  00 80 a0 e1                                      mov r8, r0
005a5de8  08 00 9d e5                                      ldr r0, [sp, #8]
005a5dec  6e a1 f5 eb                                      bl #0x30e3ac
005a5df0  0a 10 a0 e1                                      mov r1, sl
005a5df4  00 60 a0 e1                                      mov r6, r0
005a5df8  0a 00 a0 e1                                      mov r0, sl
005a5dfc  da a3 f5 eb                                      bl #0x30ed6c
005a5e00  08 10 a0 e1                                      mov r1, r8
005a5e04  00 a0 a0 e1                                      mov sl, r0
005a5e08  08 00 a0 e1                                      mov r0, r8
005a5e0c  d6 a3 f5 eb                                      bl #0x30ed6c
005a5e10  00 10 a0 e1                                      mov r1, r0
005a5e14  0a 00 a0 e1                                      mov r0, sl
005a5e18  61 a3 f5 eb                                      bl #0x30eba4
005a5e1c  06 10 a0 e1                                      mov r1, r6
005a5e20  00 80 a0 e1                                      mov r8, r0
005a5e24  06 00 a0 e1                                      mov r0, r6
005a5e28  cf a3 f5 eb                                      bl #0x30ed6c
005a5e2c  00 10 a0 e1                                      mov r1, r0
005a5e30  08 00 a0 e1                                      mov r0, r8
005a5e34  5a a3 f5 eb                                      bl #0x30eba4
005a5e38  00 60 a0 e1                                      mov r6, r0
005a5e3c  06 10 a0 e1                                      mov r1, r6
005a5e40  09 00 a0 e1                                      mov r0, sb
005a5e44  2b a1 f5 eb                                      bl #0x30e2f8
005a5e48  18 30 9d e5                                      ldr r3, [sp, #0x18]
005a5e4c  00 00 50 e3                                      cmp r0, #0
005a5e50  1c 50 8d 15                                      strne r5, [sp, #0x1c]
005a5e54  01 50 85 e2                                      add r5, r5, #1
005a5e58  06 90 a0 11                                      movne sb, r6
005a5e5c  03 00 55 e1                                      cmp r5, r3
005a5e60  0c 40 84 e2                                      add r4, r4, #0xc
005a5e64  d5 ff ff 1a                                      bne #0x5a5dc0
005a5e68  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005a5e6c  58 20 9d e5                                      ldr r2, [sp, #0x58]
005a5e70  24 10 9d e5                                      ldr r1, [sp, #0x24]
005a5e74  1c c0 a0 e3                                      mov ip, #0x1c
005a5e78  9c 00 03 e0                                      mul r3, ip, r0
005a5e7c  01 01 82 e7                                      str r0, [r2, r1, lsl #2]
005a5e80  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005a5e84  03 10 92 e7                                      ldr r1, [r2, r3]
005a5e88  01 10 81 e2                                      add r1, r1, #1
005a5e8c  03 10 82 e7                                      str r1, [r2, r3]
005a5e90  28 20 9d e5                                      ldr r2, [sp, #0x28]
005a5e94  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005a5e98  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
005a5e9c  00 50 92 e5                                      ldr r5, [r2]
005a5ea0  03 40 84 e0                                      add r4, r4, r3
005a5ea4  0c 50 85 e0                                      add r5, r5, ip
005a5ea8  10 80 95 e5                                      ldr r8, [r5, #0x10]
005a5eac  10 10 94 e5                                      ldr r1, [r4, #0x10]
005a5eb0  08 00 a0 e1                                      mov r0, r8
005a5eb4  0f a1 f5 eb                                      bl #0x30e2f8
005a5eb8  14 70 95 e5                                      ldr r7, [r5, #0x14]
005a5ebc  00 00 50 e3                                      cmp r0, #0
005a5ec0  18 60 95 e5                                      ldr r6, [r5, #0x18]
005a5ec4  14 10 94 e5                                      ldr r1, [r4, #0x14]
005a5ec8  10 80 84 15                                      strne r8, [r4, #0x10]
005a5ecc  07 00 a0 e1                                      mov r0, r7
005a5ed0  08 a1 f5 eb                                      bl #0x30e2f8
005a5ed4  00 00 50 e3                                      cmp r0, #0
005a5ed8  18 10 94 e5                                      ldr r1, [r4, #0x18]
005a5edc  14 70 84 15                                      strne r7, [r4, #0x14]
005a5ee0  06 00 a0 e1                                      mov r0, r6
005a5ee4  03 a1 f5 eb                                      bl #0x30e2f8
005a5ee8  00 00 50 e3                                      cmp r0, #0
005a5eec  04 10 94 e5                                      ldr r1, [r4, #4]
005a5ef0  18 60 84 15                                      strne r6, [r4, #0x18]
005a5ef4  08 00 a0 e1                                      mov r0, r8
005a5ef8  03 a2 f5 eb                                      bl #0x30e70c
005a5efc  00 00 50 e3                                      cmp r0, #0
005a5f00  08 10 94 e5                                      ldr r1, [r4, #8]
005a5f04  04 80 84 15                                      strne r8, [r4, #4]
005a5f08  07 00 a0 e1                                      mov r0, r7
005a5f0c  fe a1 f5 eb                                      bl #0x30e70c
005a5f10  00 00 50 e3                                      cmp r0, #0
005a5f14  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a5f18  08 70 84 15                                      strne r7, [r4, #8]
005a5f1c  06 00 a0 e1                                      mov r0, r6
005a5f20  f9 a1 f5 eb                                      bl #0x30e70c
005a5f24  00 00 50 e3                                      cmp r0, #0
005a5f28  0c 60 84 15                                      strne r6, [r4, #0xc]
005a5f2c  04 70 95 e5                                      ldr r7, [r5, #4]
005a5f30  10 10 94 e5                                      ldr r1, [r4, #0x10]
005a5f34  0c 60 95 e5                                      ldr r6, [r5, #0xc]
005a5f38  07 00 a0 e1                                      mov r0, r7
005a5f3c  ed a0 f5 eb                                      bl #0x30e2f8
005a5f40  08 50 95 e5                                      ldr r5, [r5, #8]
005a5f44  00 00 50 e3                                      cmp r0, #0
005a5f48  14 10 94 e5                                      ldr r1, [r4, #0x14]
005a5f4c  10 70 84 15                                      strne r7, [r4, #0x10]
005a5f50  05 00 a0 e1                                      mov r0, r5
005a5f54  e7 a0 f5 eb                                      bl #0x30e2f8
005a5f58  00 00 50 e3                                      cmp r0, #0
005a5f5c  18 10 94 e5                                      ldr r1, [r4, #0x18]
005a5f60  14 50 84 15                                      strne r5, [r4, #0x14]
005a5f64  06 00 a0 e1                                      mov r0, r6
005a5f68  e2 a0 f5 eb                                      bl #0x30e2f8
005a5f6c  00 00 50 e3                                      cmp r0, #0
005a5f70  18 60 84 15                                      strne r6, [r4, #0x18]
005a5f74  07 00 a0 e1                                      mov r0, r7
005a5f78  04 10 94 e5                                      ldr r1, [r4, #4]
005a5f7c  e2 a1 f5 eb                                      bl #0x30e70c
005a5f80  00 00 50 e3                                      cmp r0, #0
005a5f84  08 10 94 e5                                      ldr r1, [r4, #8]
005a5f88  04 70 84 15                                      strne r7, [r4, #4]
005a5f8c  05 00 a0 e1                                      mov r0, r5
005a5f90  dd a1 f5 eb                                      bl #0x30e70c
005a5f94  00 00 50 e3                                      cmp r0, #0
005a5f98  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a5f9c  08 50 84 15                                      strne r5, [r4, #8]
005a5fa0  06 00 a0 e1                                      mov r0, r6
005a5fa4  d8 a1 f5 eb                                      bl #0x30e70c
005a5fa8  00 00 50 e3                                      cmp r0, #0
005a5fac  0c 60 84 15                                      strne r6, [r4, #0xc]
005a5fb0  28 00 9d e5                                      ldr r0, [sp, #0x28]
005a5fb4  20 20 9d e5                                      ldr r2, [sp, #0x20]
005a5fb8  24 10 9d e5                                      ldr r1, [sp, #0x24]
005a5fbc  00 40 90 e5                                      ldr r4, [r0]
005a5fc0  04 30 90 e5                                      ldr r3, [r0, #4]
005a5fc4  1c 20 82 e2                                      add r2, r2, #0x1c
005a5fc8  20 20 8d e5                                      str r2, [sp, #0x20]
005a5fcc  03 30 64 e0                                      rsb r3, r4, r3
005a5fd0  43 31 a0 e1                                      asr r3, r3, #2
005a5fd4  01 10 81 e2                                      add r1, r1, #1
005a5fd8  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a5fdc  24 10 8d e5                                      str r1, [sp, #0x24]
005a5fe0  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a5fe4  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a5fe8  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a5fec  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a5ff0  00 30 63 e2                                      rsb r3, r3, #0
005a5ff4  03 00 51 e1                                      cmp r1, r3
005a5ff8  56 ff ff 3a                                      blo #0x5a5d58
005a5ffc  18 40 9d e5                                      ldr r4, [sp, #0x18]
005a6000  00 30 a0 e3                                      mov r3, #0
005a6004  03 20 a0 e1                                      mov r2, r3
005a6008  70 00 9d e5                                      ldr r0, [sp, #0x70]
005a600c  01 20 82 e2                                      add r2, r2, #1
005a6010  00 c0 a0 e3                                      mov ip, #0
005a6014  03 10 80 e0                                      add r1, r0, r3
005a6018  04 00 52 e1                                      cmp r2, r4
005a601c  03 c0 80 e7                                      str ip, [r0, r3]
005a6020  08 c0 81 e5                                      str ip, [r1, #8]
005a6024  04 c0 81 e5                                      str ip, [r1, #4]
005a6028  0c 30 83 e2                                      add r3, r3, #0xc
005a602c  f5 ff ff 1a                                      bne #0x5a6008
005a6030  28 00 9d e5                                      ldr r0, [sp, #0x28]
005a6034  00 50 90 e5                                      ldr r5, [r0]
005a6038  04 30 90 e5                                      ldr r3, [r0, #4]
005a603c  03 30 65 e0                                      rsb r3, r5, r3
005a6040  43 31 a0 e1                                      asr r3, r3, #2
005a6044  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a6048  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a604c  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a6050  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a6054  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a6058  00 00 53 e3                                      cmp r3, #0
005a605c  37 00 00 0a                                      beq #0x5a6140
005a6060  00 a0 a0 e3                                      mov sl, #0
005a6064  08 40 8d e5                                      str r4, [sp, #8]
005a6068  0a 60 a0 e1                                      mov r6, sl
005a606c  05 40 a0 e1                                      mov r4, r5
005a6070  00 80 a0 e1                                      mov r8, r0
005a6074  58 30 9d e5                                      ldr r3, [sp, #0x58]
005a6078  0a 40 84 e0                                      add r4, r4, sl
005a607c  0c 20 a0 e3                                      mov r2, #0xc
005a6080  06 51 93 e7                                      ldr r5, [r3, r6, lsl #2]
005a6084  14 10 94 e5                                      ldr r1, [r4, #0x14]
005a6088  08 00 94 e5                                      ldr r0, [r4, #8]
005a608c  92 05 05 e0                                      mul r5, r2, r5
005a6090  c3 a2 f5 eb                                      bl #0x30eba4
005a6094  3f 14 a0 e3                                      mov r1, #0x3f000000
005a6098  33 a3 f5 eb                                      bl #0x30ed6c
005a609c  18 10 94 e5                                      ldr r1, [r4, #0x18]
005a60a0  00 b0 a0 e1                                      mov fp, r0
005a60a4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005a60a8  bd a2 f5 eb                                      bl #0x30eba4
005a60ac  3f 14 a0 e3                                      mov r1, #0x3f000000
005a60b0  2d a3 f5 eb                                      bl #0x30ed6c
005a60b4  10 10 94 e5                                      ldr r1, [r4, #0x10]
005a60b8  00 90 a0 e1                                      mov sb, r0
005a60bc  04 00 94 e5                                      ldr r0, [r4, #4]
005a60c0  b7 a2 f5 eb                                      bl #0x30eba4
005a60c4  3f 14 a0 e3                                      mov r1, #0x3f000000
005a60c8  27 a3 f5 eb                                      bl #0x30ed6c
005a60cc  70 70 9d e5                                      ldr r7, [sp, #0x70]
005a60d0  00 10 a0 e1                                      mov r1, r0
005a60d4  01 60 86 e2                                      add r6, r6, #1
005a60d8  05 00 97 e7                                      ldr r0, [r7, r5]
005a60dc  b0 a2 f5 eb                                      bl #0x30eba4
005a60e0  05 00 87 e7                                      str r0, [r7, r5]
005a60e4  05 50 87 e0                                      add r5, r7, r5
005a60e8  0b 10 a0 e1                                      mov r1, fp
005a60ec  04 00 95 e5                                      ldr r0, [r5, #4]
005a60f0  ab a2 f5 eb                                      bl #0x30eba4
005a60f4  09 10 a0 e1                                      mov r1, sb
005a60f8  04 00 85 e5                                      str r0, [r5, #4]
005a60fc  08 00 95 e5                                      ldr r0, [r5, #8]
005a6100  a7 a2 f5 eb                                      bl #0x30eba4
005a6104  08 00 85 e5                                      str r0, [r5, #8]
005a6108  00 40 98 e5                                      ldr r4, [r8]
005a610c  04 30 98 e5                                      ldr r3, [r8, #4]
005a6110  1c a0 8a e2                                      add sl, sl, #0x1c
005a6114  03 30 64 e0                                      rsb r3, r4, r3
005a6118  43 31 a0 e1                                      asr r3, r3, #2
005a611c  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a6120  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a6124  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a6128  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a612c  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a6130  00 30 63 e2                                      rsb r3, r3, #0
005a6134  03 00 56 e1                                      cmp r6, r3
005a6138  cd ff ff 3a                                      blo #0x5a6074
005a613c  08 40 9d e5                                      ldr r4, [sp, #8]
005a6140  00 80 a0 e3                                      mov r8, #0
005a6144  08 50 a0 e1                                      mov r5, r8
005a6148  08 a0 a0 e1                                      mov sl, r8
005a614c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005a6150  70 60 9d e5                                      ldr r6, [sp, #0x70]
005a6154  01 a0 8a e2                                      add sl, sl, #1
005a6158  08 00 93 e7                                      ldr r0, [r3, r8]
005a615c  5f a0 f5 eb                                      bl #0x30e2e0
005a6160  00 10 a0 e1                                      mov r1, r0
005a6164  fe 05 a0 e3                                      mov r0, #0x3f800000
005a6168  c9 a2 f5 eb                                      bl #0x30ec94
005a616c  00 70 a0 e1                                      mov r7, r0
005a6170  00 10 a0 e1                                      mov r1, r0
005a6174  05 00 96 e7                                      ldr r0, [r6, r5]
005a6178  fb a2 f5 eb                                      bl #0x30ed6c
005a617c  05 00 86 e7                                      str r0, [r6, r5]
005a6180  05 60 86 e0                                      add r6, r6, r5
005a6184  04 00 96 e5                                      ldr r0, [r6, #4]
005a6188  07 10 a0 e1                                      mov r1, r7
005a618c  f6 a2 f5 eb                                      bl #0x30ed6c
005a6190  07 10 a0 e1                                      mov r1, r7
005a6194  04 00 86 e5                                      str r0, [r6, #4]
005a6198  08 00 96 e5                                      ldr r0, [r6, #8]
005a619c  f2 a2 f5 eb                                      bl #0x30ed6c
005a61a0  04 00 5a e1                                      cmp sl, r4
005a61a4  08 00 86 e5                                      str r0, [r6, #8]
005a61a8  0c 50 85 e2                                      add r5, r5, #0xc
005a61ac  1c 80 88 e2                                      add r8, r8, #0x1c
005a61b0  e5 ff ff 1a                                      bne #0x5a614c
005a61b4  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005a61b8  00 50 a0 e3                                      mov r5, #0
005a61bc  00 00 a0 e3                                      mov r0, #0
005a61c0  00 10 a0 e3                                      mov r1, #0
005a61c4  14 40 8d e5                                      str r4, [sp, #0x14]
005a61c8  70 b0 9d e5                                      ldr fp, [sp, #0x70]
005a61cc  f8 00 cd e1                                      strd r0, r1, [sp, #8]
005a61d0  05 60 a0 e1                                      mov r6, r5
005a61d4  0c 40 a0 e1                                      mov r4, ip
005a61d8  03 00 00 ea                                      b #0x5a61ec
005a61dc  14 10 9d e5                                      ldr r1, [sp, #0x14]
005a61e0  0c 50 85 e2                                      add r5, r5, #0xc
005a61e4  01 00 56 e1                                      cmp r6, r1
005a61e8  31 00 00 0a                                      beq #0x5a62b4
005a61ec  05 10 94 e7                                      ldr r1, [r4, r5]
005a61f0  05 00 9b e7                                      ldr r0, [fp, r5]
005a61f4  6c a0 f5 eb                                      bl #0x30e3ac
005a61f8  05 70 8b e0                                      add r7, fp, r5
005a61fc  05 80 84 e0                                      add r8, r4, r5
005a6200  04 10 98 e5                                      ldr r1, [r8, #4]
005a6204  00 90 a0 e1                                      mov sb, r0
005a6208  04 00 97 e5                                      ldr r0, [r7, #4]
005a620c  66 a0 f5 eb                                      bl #0x30e3ac
005a6210  08 10 98 e5                                      ldr r1, [r8, #8]
005a6214  00 a0 a0 e1                                      mov sl, r0
005a6218  08 00 97 e5                                      ldr r0, [r7, #8]
005a621c  62 a0 f5 eb                                      bl #0x30e3ac
005a6220  09 10 a0 e1                                      mov r1, sb
005a6224  00 70 a0 e1                                      mov r7, r0
005a6228  09 00 a0 e1                                      mov r0, sb
005a622c  ce a2 f5 eb                                      bl #0x30ed6c
005a6230  0a 10 a0 e1                                      mov r1, sl
005a6234  00 80 a0 e1                                      mov r8, r0
005a6238  0a 00 a0 e1                                      mov r0, sl
005a623c  ca a2 f5 eb                                      bl #0x30ed6c
005a6240  00 10 a0 e1                                      mov r1, r0
005a6244  08 00 a0 e1                                      mov r0, r8
005a6248  55 a2 f5 eb                                      bl #0x30eba4
005a624c  07 10 a0 e1                                      mov r1, r7
005a6250  00 80 a0 e1                                      mov r8, r0
005a6254  07 00 a0 e1                                      mov r0, r7
005a6258  c3 a2 f5 eb                                      bl #0x30ed6c
005a625c  00 10 a0 e1                                      mov r1, r0
005a6260  08 00 a0 e1                                      mov r0, r8
005a6264  4e a2 f5 eb                                      bl #0x30eba4
005a6268  8d a1 f5 eb                                      bl #0x30e8a4
005a626c  00 20 a0 e1                                      mov r2, r0
005a6270  01 30 a0 e1                                      mov r3, r1
005a6274  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
005a6278  31 a2 f5 eb                                      bl #0x30eb44
005a627c  7b 24 01 e3                                      movw r2, #0x147b
005a6280  e1 3a 07 e3                                      movw r3, #0x7ae1
005a6284  ae 27 44 e3                                      movt r2, #0x47ae
005a6288  84 3f 43 e3                                      movt r3, #0x3f84
005a628c  f8 00 cd e1                                      strd r0, r1, [sp, #8]
005a6290  f2 9e f5 eb                                      bl #0x30de60
005a6294  00 00 50 e3                                      cmp r0, #0
005a6298  01 60 86 e2                                      add r6, r6, #1
005a629c  ce ff ff 0a                                      beq #0x5a61dc
005a62a0  34 00 9d e5                                      ldr r0, [sp, #0x34]
005a62a4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005a62a8  14 40 9d e5                                      ldr r4, [sp, #0x14]
005a62ac  8c f1 ff eb                                      bl #0x5a28e4
005a62b0  83 fe ff ea                                      b #0x5a5cc4
005a62b4  34 00 9d e5                                      ldr r0, [sp, #0x34]
005a62b8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005a62bc  14 40 9d e5                                      ldr r4, [sp, #0x14]
005a62c0  87 f1 ff eb                                      bl #0x5a28e4
005a62c4  70 30 9d e5                                      ldr r3, [sp, #0x70]
005a62c8  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005a62cc  74 20 9d e5                                      ldr r2, [sp, #0x74]
005a62d0  40 80 9d e5                                      ldr r8, [sp, #0x40]
005a62d4  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
005a62d8  01 c0 8c e2                                      add ip, ip, #1
005a62dc  02 00 53 e1                                      cmp r3, r2
005a62e0  00 50 a0 e3                                      mov r5, #0
005a62e4  30 c0 8d e5                                      str ip, [sp, #0x30]
005a62e8  74 30 8d 15                                      strne r3, [sp, #0x74]
005a62ec  05 60 a0 e1                                      mov r6, r5
005a62f0  80 70 8d e2                                      add r7, sp, #0x80
005a62f4  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
005a62f8  08 10 a0 e1                                      mov r1, r8
005a62fc  05 00 99 e7                                      ldr r0, [sb, r5]
005a6300  51 a2 f5 eb                                      bl #0x30ec4c
005a6304  00 00 50 e3                                      cmp r0, #0
005a6308  05 90 89 e0                                      add sb, sb, r5
005a630c  80 00 8d e5                                      str r0, [sp, #0x80]
005a6310  0e 00 00 0a                                      beq #0x5a6350
005a6314  01 00 50 e3                                      cmp r0, #1
005a6318  00 30 a0 01                                      moveq r3, r0
005a631c  03 00 00 0a                                      beq #0x5a6330
005a6320  01 30 a0 e3                                      mov r3, #1
005a6324  83 30 a0 e1                                      lsl r3, r3, #1
005a6328  03 00 50 e1                                      cmp r0, r3
005a632c  fc ff ff 8a                                      bhi #0x5a6324
005a6330  00 00 e0 e3                                      mvn r0, #0
005a6334  a3 30 b0 e1                                      lsrs r3, r3, #1
005a6338  01 00 80 e2                                      add r0, r0, #1
005a633c  fc ff ff 1a                                      bne #0x5a6334
005a6340  04 10 89 e2                                      add r1, sb, #4
005a6344  0a 20 a0 e1                                      mov r2, sl
005a6348  00 70 8d e5                                      str r7, [sp]
005a634c  15 f4 ff eb                                      bl #0x5a33a8
005a6350  01 60 86 e2                                      add r6, r6, #1
005a6354  04 00 56 e1                                      cmp r6, r4
005a6358  1c 50 85 e2                                      add r5, r5, #0x1c
005a635c  e4 ff ff 1a                                      bne #0x5a62f4
005a6360  70 20 9d e5                                      ldr r2, [sp, #0x70]
005a6364  74 10 9d e5                                      ldr r1, [sp, #0x74]
005a6368  ab 3a 0a e3                                      movw r3, #0xaaab
005a636c  aa 3a 4a e3                                      movt r3, #0xaaaa
005a6370  01 20 62 e0                                      rsb r2, r2, r1
005a6374  42 21 a0 e1                                      asr r2, r2, #2
005a6378  93 42 62 e0                                      mls r2, r3, r2, r4
005a637c  00 00 52 e3                                      cmp r2, #0
005a6380  7c 20 8d e5                                      str r2, [sp, #0x7c]
005a6384  0f 00 00 0a                                      beq #0x5a63c8
005a6388  01 00 52 e3                                      cmp r2, #1
005a638c  02 30 a0 01                                      moveq r3, r2
005a6390  03 00 00 0a                                      beq #0x5a63a4
005a6394  01 30 a0 e3                                      mov r3, #1
005a6398  83 30 a0 e1                                      lsl r3, r3, #1
005a639c  03 00 52 e1                                      cmp r2, r3
005a63a0  fc ff ff 8a                                      bhi #0x5a6398
005a63a4  00 00 e0 e3                                      mvn r0, #0
005a63a8  a3 30 b0 e1                                      lsrs r3, r3, #1
005a63ac  01 00 80 e2                                      add r0, r0, #1
005a63b0  fc ff ff 1a                                      bne #0x5a63a8
005a63b4  7c c0 8d e2                                      add ip, sp, #0x7c
005a63b8  38 10 9d e5                                      ldr r1, [sp, #0x38]
005a63bc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005a63c0  00 c0 8d e5                                      str ip, [sp]
005a63c4  f7 f3 ff eb                                      bl #0x5a33a8
005a63c8  34 00 9d e5                                      ldr r0, [sp, #0x34]
005a63cc  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005a63d0  43 f1 ff eb                                      bl #0x5a28e4
005a63d4  30 20 9d e5                                      ldr r2, [sp, #0x30]
005a63d8  05 00 52 e3                                      cmp r2, #5
005a63dc  38 fe ff 1a                                      bne #0x5a5cc4
005a63e0  28 30 9d e5                                      ldr r3, [sp, #0x28]
005a63e4  04 10 93 e5                                      ldr r1, [r3, #4]
005a63e8  00 20 93 e5                                      ldr r2, [r3]
005a63ec  b7 3d 06 e3                                      movw r3, #0x6db7
005a63f0  db 36 4b e3                                      movt r3, #0xb6db
005a63f4  01 20 62 e0                                      rsb r2, r2, r1
005a63f8  42 21 a0 e1                                      asr r2, r2, #2
005a63fc  93 02 02 e0                                      mul r2, r3, r2
005a6400  00 30 a0 e3                                      mov r3, #0
005a6404  03 00 52 e1                                      cmp r2, r3
005a6408  7c 30 8d e5                                      str r3, [sp, #0x7c]
005a640c  20 00 00 0a                                      beq #0x5a6494
005a6410  7c 40 8d e2                                      add r4, sp, #0x7c
005a6414  28 50 9d e5                                      ldr r5, [sp, #0x28]
005a6418  13 00 00 ea                                      b #0x5a646c
005a641c  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
005a6420  00 20 81 e5                                      str r2, [r1]
005a6424  04 20 90 e5                                      ldr r2, [r0, #4]
005a6428  04 20 82 e2                                      add r2, r2, #4
005a642c  04 20 80 e5                                      str r2, [r0, #4]
005a6430  00 30 95 e5                                      ldr r3, [r5]
005a6434  04 20 95 e5                                      ldr r2, [r5, #4]
005a6438  02 20 63 e0                                      rsb r2, r3, r2
005a643c  42 21 a0 e1                                      asr r2, r2, #2
005a6440  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
005a6444  82 11 82 e0                                      add r1, r2, r2, lsl #3
005a6448  01 13 81 e0                                      add r1, r1, r1, lsl #6
005a644c  01 30 83 e2                                      add r3, r3, #1
005a6450  81 11 82 e0                                      add r1, r2, r1, lsl #3
005a6454  7c 30 8d e5                                      str r3, [sp, #0x7c]
005a6458  81 17 81 e0                                      add r1, r1, r1, lsl #15
005a645c  81 21 82 e0                                      add r2, r2, r1, lsl #3
005a6460  00 20 62 e2                                      rsb r2, r2, #0
005a6464  02 00 53 e1                                      cmp r3, r2
005a6468  09 00 00 2a                                      bhs #0x5a6494
005a646c  58 10 9d e5                                      ldr r1, [sp, #0x58]
005a6470  44 00 9d e5                                      ldr r0, [sp, #0x44]
005a6474  03 11 81 e0                                      add r1, r1, r3, lsl #2
005a6478  b2 fc ff eb                                      bl #0x5a5748
005a647c  06 00 90 e9                                      ldmib r0, {r1, r2}
005a6480  02 00 51 e1                                      cmp r1, r2
005a6484  e4 ff ff 1a                                      bne #0x5a641c
005a6488  04 20 a0 e1                                      mov r2, r4
005a648c  70 f9 ff eb                                      bl #0x5a4a54
005a6490  e6 ff ff ea                                      b #0x5a6430
005a6494  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
005a6498  d5 f5 ff eb                                      bl #0x5a3bf4
005a649c  58 00 9d e5                                      ldr r0, [sp, #0x58]
005a64a0  00 00 50 e3                                      cmp r0, #0
005a64a4  05 00 00 0a                                      beq #0x5a64c0
005a64a8  60 10 9d e5                                      ldr r1, [sp, #0x60]
005a64ac  01 10 60 e0                                      rsb r1, r0, r1
005a64b0  03 10 c1 e3                                      bic r1, r1, #3
005a64b4  80 00 51 e3                                      cmp r1, #0x80
005a64b8  28 00 00 8a                                      bhi #0x5a6560
005a64bc  8f 8a 05 eb                                      bl #0x708f00
005a64c0  68 30 9d e5                                      ldr r3, [sp, #0x68]
005a64c4  64 00 9d e5                                      ldr r0, [sp, #0x64]
005a64c8  00 00 53 e1                                      cmp r3, r0
005a64cc  0a 00 00 0a                                      beq #0x5a64fc
005a64d0  0c 10 43 e2                                      sub r1, r3, #0xc
005a64d4  01 10 60 e0                                      rsb r1, r0, r1
005a64d8  ab 2a 0a e3                                      movw r2, #0xaaab
005a64dc  21 11 a0 e1                                      lsr r1, r1, #2
005a64e0  aa 2a 42 e3                                      movt r2, #0x2aaa
005a64e4  92 01 02 e0                                      mul r2, r2, r1
005a64e8  0b 10 e0 e3                                      mvn r1, #0xb
005a64ec  03 21 c2 e3                                      bic r2, r2, #0xc0000000
005a64f0  91 02 02 e0                                      mul r2, r1, r2
005a64f4  01 20 82 e0                                      add r2, r2, r1
005a64f8  02 30 83 e0                                      add r3, r3, r2
005a64fc  00 00 53 e3                                      cmp r3, #0
005a6500  00 00 00 0a                                      beq #0x5a6508
005a6504  d1 a7 f5 eb                                      bl #0x310450
005a6508  74 30 9d e5                                      ldr r3, [sp, #0x74]
005a650c  70 00 9d e5                                      ldr r0, [sp, #0x70]
005a6510  00 00 53 e1                                      cmp r3, r0
005a6514  0a 00 00 0a                                      beq #0x5a6544
005a6518  0c 10 43 e2                                      sub r1, r3, #0xc
005a651c  01 10 60 e0                                      rsb r1, r0, r1
005a6520  ab 2a 0a e3                                      movw r2, #0xaaab
005a6524  21 11 a0 e1                                      lsr r1, r1, #2
005a6528  aa 2a 42 e3                                      movt r2, #0x2aaa
005a652c  92 01 02 e0                                      mul r2, r2, r1
005a6530  0b 10 e0 e3                                      mvn r1, #0xb
005a6534  03 21 c2 e3                                      bic r2, r2, #0xc0000000
005a6538  91 02 02 e0                                      mul r2, r1, r2
005a653c  01 20 82 e0                                      add r2, r2, r1
005a6540  02 30 83 e0                                      add r3, r3, r2
005a6544  00 00 53 e3                                      cmp r3, #0
005a6548  00 00 00 0a                                      beq #0x5a6550
005a654c  bf a7 f5 eb                                      bl #0x310450
005a6550  8c d0 8d e2                                      add sp, sp, #0x8c
005a6554  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a6558  01 40 a0 e3                                      mov r4, #1
005a655c  a7 fd ff ea                                      b #0x5a5c00
005a6560  52 9f f5 eb                                      bl #0x30e2b0
005a6564  d5 ff ff ea                                      b #0x5a64c0

; FUNCTION 0x005a6568, declared_size=1080, range_size=1080, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video16kdTreeClusteringERSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS4_EEERKS2_IS7_IjNS_4core8aabbox3dIfEEENSD_10SAllocatorISG_LNS_6memory13E_MEMORY_HINTE0EEEEjRKSF_
; demangled: glitch::video::kdTreeClustering(std::map<unsigned int, std::vector<unsigned int, std::allocator<unsigned int> >, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, std::vector<unsigned int, std::allocator<unsigned int> > > > >&, std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, glitch::core::SAllocator<std::pair<unsigned int, glitch::core::aabbox3d<float> >, (glitch::memory::E_MEMORY_HINT)0> > const&, unsigned int, glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
005a6568  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a656c  04 40 91 e5                                      ldr r4, [r1, #4]
005a6570  00 60 91 e5                                      ldr r6, [r1]
005a6574  02 90 a0 e1                                      mov sb, r2
005a6578  b4 d0 4d e2                                      sub sp, sp, #0xb4
005a657c  04 20 66 e0                                      rsb r2, r6, r4
005a6580  42 21 a0 e1                                      asr r2, r2, #2
005a6584  18 00 8d e5                                      str r0, [sp, #0x18]
005a6588  82 01 82 e0                                      add r0, r2, r2, lsl #3
005a658c  03 50 a0 e1                                      mov r5, r3
005a6590  00 03 80 e0                                      add r0, r0, r0, lsl #6
005a6594  01 70 a0 e1                                      mov r7, r1
005a6598  80 31 82 e0                                      add r3, r2, r0, lsl #3
005a659c  09 10 a0 e1                                      mov r1, sb
005a65a0  83 37 83 e0                                      add r3, r3, r3, lsl #15
005a65a4  83 21 82 e0                                      add r2, r2, r3, lsl #3
005a65a8  00 00 62 e2                                      rsb r0, r2, #0
005a65ac  80 00 80 e0                                      add r0, r0, r0, lsl #1
005a65b0  a5 a1 f5 eb                                      bl #0x30ec4c
005a65b4  00 00 50 e3                                      cmp r0, #0
005a65b8  00 30 e0 03                                      mvneq r3, #0
005a65bc  03 00 00 0a                                      beq #0x5a65d0
005a65c0  00 30 e0 e3                                      mvn r3, #0
005a65c4  a0 00 b0 e1                                      lsrs r0, r0, #1
005a65c8  01 30 83 e2                                      add r3, r3, #1
005a65cc  fc ff ff 1a                                      bne #0x5a65c4
005a65d0  14 00 95 e5                                      ldr r0, [r5, #0x14]
005a65d4  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005a65d8  00 c0 95 e5                                      ldr ip, [r5]
005a65dc  14 00 8d e5                                      str r0, [sp, #0x14]
005a65e0  04 a0 95 e5                                      ldr sl, [r5, #4]
005a65e4  08 b0 95 e5                                      ldr fp, [r5, #8]
005a65e8  1c 80 a0 e3                                      mov r8, #0x1c
005a65ec  10 50 95 e5                                      ldr r5, [r5, #0x10]
005a65f0  50 80 8d e5                                      str r8, [sp, #0x50]
005a65f4  14 80 9d e5                                      ldr r8, [sp, #0x14]
005a65f8  01 30 83 e2                                      add r3, r3, #1
005a65fc  02 10 a0 e1                                      mov r1, r2
005a6600  20 e0 a0 e3                                      mov lr, #0x20
005a6604  70 50 8d e5                                      str r5, [sp, #0x70]
005a6608  0c 00 a0 e1                                      mov r0, ip
005a660c  00 50 a0 e3                                      mov r5, #0
005a6610  5c 30 8d e5                                      str r3, [sp, #0x5c]
005a6614  6c 20 8d e5                                      str r2, [sp, #0x6c]
005a6618  0c 30 8d e5                                      str r3, [sp, #0xc]
005a661c  58 e0 8d e5                                      str lr, [sp, #0x58]
005a6620  54 e0 8d e5                                      str lr, [sp, #0x54]
005a6624  60 c0 8d e5                                      str ip, [sp, #0x60]
005a6628  64 a0 8d e5                                      str sl, [sp, #0x64]
005a662c  68 b0 8d e5                                      str fp, [sp, #0x68]
005a6630  74 80 8d e5                                      str r8, [sp, #0x74]
005a6634  28 50 8d e5                                      str r5, [sp, #0x28]
005a6638  2c 50 8d e5                                      str r5, [sp, #0x2c]
005a663c  30 50 8d e5                                      str r5, [sp, #0x30]
005a6640  38 50 8d e5                                      str r5, [sp, #0x38]
005a6644  3c 50 8d e5                                      str r5, [sp, #0x3c]
005a6648  44 50 8d e5                                      str r5, [sp, #0x44]
005a664c  48 50 8d e5                                      str r5, [sp, #0x48]
005a6650  4c 50 8d e5                                      str r5, [sp, #0x4c]
005a6654  78 50 8d e5                                      str r5, [sp, #0x78]
005a6658  51 a1 f5 eb                                      bl #0x30eba4
005a665c  3f 14 a0 e3                                      mov r1, #0x3f000000
005a6660  c1 a1 f5 eb                                      bl #0x30ed6c
005a6664  04 20 66 e0                                      rsb r2, r6, r4
005a6668  42 21 a0 e1                                      asr r2, r2, #2
005a666c  34 00 8d e5                                      str r0, [sp, #0x34]
005a6670  82 01 82 e0                                      add r0, r2, r2, lsl #3
005a6674  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005a6678  00 03 80 e0                                      add r0, r0, r0, lsl #6
005a667c  06 10 a0 e1                                      mov r1, r6
005a6680  80 01 82 e0                                      add r0, r2, r0, lsl #3
005a6684  40 50 cd e5                                      strb r5, [sp, #0x40]
005a6688  80 07 80 e0                                      add r0, r0, r0, lsl #15
005a668c  80 21 82 e0                                      add r2, r2, r0, lsl #3
005a6690  00 20 62 e2                                      rsb r2, r2, #0
005a6694  05 00 52 e1                                      cmp r2, r5
005a6698  02 30 a0 01                                      moveq r3, r2
005a669c  28 40 8d 02                                      addeq r4, sp, #0x28
005a66a0  19 00 00 0a                                      beq #0x5a670c
005a66a4  28 40 8d e2                                      add r4, sp, #0x28
005a66a8  05 60 a0 e1                                      mov r6, r5
005a66ac  38 80 84 e2                                      add r8, r4, #0x38
005a66b0  00 00 00 ea                                      b #0x5a66b8
005a66b4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
005a66b8  05 10 81 e0                                      add r1, r1, r5
005a66bc  04 00 a0 e1                                      mov r0, r4
005a66c0  04 20 a0 e1                                      mov r2, r4
005a66c4  00 80 8d e5                                      str r8, [sp]
005a66c8  94 f2 ff eb                                      bl #0x5a3120
005a66cc  06 00 97 e8                                      ldm r7, {r1, r2}
005a66d0  78 30 9d e5                                      ldr r3, [sp, #0x78]
005a66d4  01 60 86 e2                                      add r6, r6, #1
005a66d8  02 20 61 e0                                      rsb r2, r1, r2
005a66dc  42 21 a0 e1                                      asr r2, r2, #2
005a66e0  01 30 83 e2                                      add r3, r3, #1
005a66e4  82 01 82 e0                                      add r0, r2, r2, lsl #3
005a66e8  78 30 8d e5                                      str r3, [sp, #0x78]
005a66ec  00 03 80 e0                                      add r0, r0, r0, lsl #6
005a66f0  1c 50 85 e2                                      add r5, r5, #0x1c
005a66f4  80 01 82 e0                                      add r0, r2, r0, lsl #3
005a66f8  80 07 80 e0                                      add r0, r0, r0, lsl #15
005a66fc  80 21 82 e0                                      add r2, r2, r0, lsl #3
005a6700  00 20 62 e2                                      rsb r2, r2, #0
005a6704  02 00 56 e1                                      cmp r6, r2
005a6708  e9 ff ff 3a                                      blo #0x5a66b4
005a670c  ab 2a 0a e3                                      movw r2, #0xaaab
005a6710  aa 2a 4a e3                                      movt r2, #0xaaaa
005a6714  92 09 87 e0                                      umull r0, r7, r2, sb
005a6718  a4 80 8d e2                                      add r8, sp, #0xa4
005a671c  a8 00 8d e2                                      add r0, sp, #0xa8
005a6720  00 10 a0 e3                                      mov r1, #0
005a6724  a7 70 a0 e1                                      lsr r7, r7, #1
005a6728  bf 94 a0 e3                                      mov sb, #0xbf000000
005a672c  10 80 8d e5                                      str r8, [sp, #0x10]
005a6730  14 00 8d e5                                      str r0, [sp, #0x14]
005a6734  98 80 8d e2                                      add r8, sp, #0x98
005a6738  ac 00 8d e2                                      add r0, sp, #0xac
005a673c  00 00 53 e3                                      cmp r3, #0
005a6740  01 20 a0 e1                                      mov r2, r1
005a6744  98 10 8d e5                                      str r1, [sp, #0x98]
005a6748  9c 10 8d e5                                      str r1, [sp, #0x9c]
005a674c  a0 10 8d e5                                      str r1, [sp, #0xa0]
005a6750  01 50 a0 e1                                      mov r5, r1
005a6754  02 95 89 e2                                      add sb, sb, #0x800000
005a6758  01 b0 a0 e1                                      mov fp, r1
005a675c  7c 60 8d e2                                      add r6, sp, #0x7c
005a6760  1c 80 8d e5                                      str r8, [sp, #0x1c]
005a6764  20 00 8d e5                                      str r0, [sp, #0x20]
005a6768  07 a0 a0 e1                                      mov sl, r7
005a676c  3c 00 00 0a                                      beq #0x5a6864
005a6770  01 00 52 e1                                      cmp r2, r1
005a6774  9c 10 8d 15                                      strne r1, [sp, #0x9c]
005a6778  04 00 a0 e1                                      mov r0, r4
005a677c  10 10 9d e5                                      ldr r1, [sp, #0x10]
005a6780  14 20 9d e5                                      ldr r2, [sp, #0x14]
005a6784  04 30 a0 e1                                      mov r3, r4
005a6788  a8 90 8d e5                                      str sb, [sp, #0xa8]
005a678c  a4 b0 8d e5                                      str fp, [sp, #0xa4]
005a6790  58 ef ff eb                                      bl #0x5a24f8
005a6794  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
005a6798  04 00 a0 e1                                      mov r0, r4
005a679c  06 10 a0 e1                                      mov r1, r6
005a67a0  00 c0 93 e5                                      ldr ip, [r3]
005a67a4  04 20 a0 e1                                      mov r2, r4
005a67a8  7c c0 8d e5                                      str ip, [sp, #0x7c]
005a67ac  04 c0 93 e5                                      ldr ip, [r3, #4]
005a67b0  80 c0 8d e5                                      str ip, [sp, #0x80]
005a67b4  08 c0 93 e5                                      ldr ip, [r3, #8]
005a67b8  84 c0 8d e5                                      str ip, [sp, #0x84]
005a67bc  0c c0 93 e5                                      ldr ip, [r3, #0xc]
005a67c0  88 c0 8d e5                                      str ip, [sp, #0x88]
005a67c4  10 c0 93 e5                                      ldr ip, [r3, #0x10]
005a67c8  8c c0 8d e5                                      str ip, [sp, #0x8c]
005a67cc  14 c0 93 e5                                      ldr ip, [r3, #0x14]
005a67d0  90 c0 8d e5                                      str ip, [sp, #0x90]
005a67d4  18 30 93 e5                                      ldr r3, [r3, #0x18]
005a67d8  94 30 8d e5                                      str r3, [sp, #0x94]
005a67dc  34 f7 ff eb                                      bl #0x5a44b4
005a67e0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005a67e4  04 00 a0 e1                                      mov r0, r4
005a67e8  0a 10 a0 e1                                      mov r1, sl
005a67ec  06 20 a0 e1                                      mov r2, r6
005a67f0  0e fa ff eb                                      bl #0x5a5030
005a67f4  20 10 9d e5                                      ldr r1, [sp, #0x20]
005a67f8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005a67fc  ac 50 8d e5                                      str r5, [sp, #0xac]
005a6800  d0 fb ff eb                                      bl #0x5a5748
005a6804  0a 00 90 e9                                      ldmib r0, {r1, r3}
005a6808  00 70 a0 e1                                      mov r7, r0
005a680c  01 50 85 e2                                      add r5, r5, #1
005a6810  03 00 51 e1                                      cmp r1, r3
005a6814  5b 00 00 0a                                      beq #0x5a6988
005a6818  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
005a681c  00 30 81 e5                                      str r3, [r1]
005a6820  04 30 90 e5                                      ldr r3, [r0, #4]
005a6824  04 30 83 e2                                      add r3, r3, #4
005a6828  04 30 80 e5                                      str r3, [r0, #4]
005a682c  98 10 9d e5                                      ldr r1, [sp, #0x98]
005a6830  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
005a6834  02 30 61 e0                                      rsb r3, r1, r2
005a6838  43 31 a0 e1                                      asr r3, r3, #2
005a683c  83 01 83 e0                                      add r0, r3, r3, lsl #3
005a6840  00 03 80 e0                                      add r0, r0, r0, lsl #6
005a6844  80 01 83 e0                                      add r0, r3, r0, lsl #3
005a6848  80 07 80 e0                                      add r0, r0, r0, lsl #15
005a684c  80 01 83 e0                                      add r0, r3, r0, lsl #3
005a6850  00 00 50 e3                                      cmp r0, #0
005a6854  29 00 00 1a                                      bne #0x5a6900
005a6858  78 30 9d e5                                      ldr r3, [sp, #0x78]
005a685c  00 00 53 e3                                      cmp r3, #0
005a6860  c2 ff ff 1a                                      bne #0x5a6770
005a6864  01 00 52 e1                                      cmp r2, r1
005a6868  01 00 a0 e1                                      mov r0, r1
005a686c  0a 00 00 0a                                      beq #0x5a689c
005a6870  1c 30 42 e2                                      sub r3, r2, #0x1c
005a6874  03 10 61 e0                                      rsb r1, r1, r3
005a6878  b7 3d 06 e3                                      movw r3, #0x6db7
005a687c  21 11 a0 e1                                      lsr r1, r1, #2
005a6880  db 36 43 e3                                      movt r3, #0x36db
005a6884  93 01 03 e0                                      mul r3, r3, r1
005a6888  1b 10 e0 e3                                      mvn r1, #0x1b
005a688c  03 31 c3 e3                                      bic r3, r3, #0xc0000000
005a6890  91 03 01 e0                                      mul r1, r1, r3
005a6894  1c 10 41 e2                                      sub r1, r1, #0x1c
005a6898  01 10 82 e0                                      add r1, r2, r1
005a689c  00 00 51 e3                                      cmp r1, #0
005a68a0  00 00 00 0a                                      beq #0x5a68a8
005a68a4  e9 a6 f5 eb                                      bl #0x310450
005a68a8  1c 00 84 e2                                      add r0, r4, #0x1c
005a68ac  14 f4 ff eb                                      bl #0x5a3904
005a68b0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005a68b4  28 00 9d e5                                      ldr r0, [sp, #0x28]
005a68b8  00 00 53 e1                                      cmp r3, r0
005a68bc  0a 00 00 0a                                      beq #0x5a68ec
005a68c0  1c 10 43 e2                                      sub r1, r3, #0x1c
005a68c4  01 10 60 e0                                      rsb r1, r0, r1
005a68c8  b7 2d 06 e3                                      movw r2, #0x6db7
005a68cc  21 11 a0 e1                                      lsr r1, r1, #2
005a68d0  db 26 43 e3                                      movt r2, #0x36db
005a68d4  92 01 02 e0                                      mul r2, r2, r1
005a68d8  1b 10 e0 e3                                      mvn r1, #0x1b
005a68dc  03 21 c2 e3                                      bic r2, r2, #0xc0000000
005a68e0  91 02 02 e0                                      mul r2, r1, r2
005a68e4  01 20 82 e0                                      add r2, r2, r1
005a68e8  02 30 83 e0                                      add r3, r3, r2
005a68ec  00 00 53 e3                                      cmp r3, #0
005a68f0  00 00 00 0a                                      beq #0x5a68f8
005a68f4  d5 a6 f5 eb                                      bl #0x310450
005a68f8  b4 d0 8d e2                                      add sp, sp, #0xb4
005a68fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a6900  00 80 a0 e3                                      mov r8, #0
005a6904  24 50 8d e5                                      str r5, [sp, #0x24]
005a6908  08 50 a0 e1                                      mov r5, r8
005a690c  08 10 81 e0                                      add r1, r1, r8
005a6910  04 20 a0 e1                                      mov r2, r4
005a6914  04 00 a0 e1                                      mov r0, r4
005a6918  e5 f6 ff eb                                      bl #0x5a44b4
005a691c  06 00 97 e9                                      ldmib r7, {r1, r2}
005a6920  98 30 9d e5                                      ldr r3, [sp, #0x98]
005a6924  02 00 51 e1                                      cmp r1, r2
005a6928  08 20 83 e0                                      add r2, r3, r8
005a692c  18 00 00 0a                                      beq #0x5a6994
005a6930  08 30 93 e7                                      ldr r3, [r3, r8]
005a6934  00 30 81 e5                                      str r3, [r1]
005a6938  04 30 97 e5                                      ldr r3, [r7, #4]
005a693c  04 30 83 e2                                      add r3, r3, #4
005a6940  04 30 87 e5                                      str r3, [r7, #4]
005a6944  98 10 9d e5                                      ldr r1, [sp, #0x98]
005a6948  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
005a694c  01 50 85 e2                                      add r5, r5, #1
005a6950  1c 80 88 e2                                      add r8, r8, #0x1c
005a6954  02 30 61 e0                                      rsb r3, r1, r2
005a6958  43 31 a0 e1                                      asr r3, r3, #2
005a695c  83 01 83 e0                                      add r0, r3, r3, lsl #3
005a6960  00 03 80 e0                                      add r0, r0, r0, lsl #6
005a6964  80 01 83 e0                                      add r0, r3, r0, lsl #3
005a6968  80 07 80 e0                                      add r0, r0, r0, lsl #15
005a696c  80 31 83 e0                                      add r3, r3, r0, lsl #3
005a6970  00 30 63 e2                                      rsb r3, r3, #0
005a6974  03 00 55 e1                                      cmp r5, r3
005a6978  e3 ff ff 3a                                      blo #0x5a690c
005a697c  24 50 9d e5                                      ldr r5, [sp, #0x24]
005a6980  78 30 9d e5                                      ldr r3, [sp, #0x78]
005a6984  b4 ff ff ea                                      b #0x5a685c
005a6988  06 20 a0 e1                                      mov r2, r6
005a698c  30 f8 ff eb                                      bl #0x5a4a54
005a6990  a5 ff ff ea                                      b #0x5a682c
005a6994  07 00 a0 e1                                      mov r0, r7
005a6998  2d f8 ff eb                                      bl #0x5a4a54
005a699c  e8 ff ff ea                                      b #0x5a6944

; FUNCTION 0x005a8ad0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_13E_ORIENTATIONE
; demangled: glitch::video::getStringsInternal(glitch::video::E_ORIENTATION*)
; decoder-mode: arm
005a8ad0  04 00 9f e5                                      ldr r0, [pc, #4]
005a8ad4  00 00 8f e0                                      add r0, pc, r0
005a8ad8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005a8adc  fc e8 3a 00                                      .byte 0xfc, 0xe8, 0x3a, 0x00

; FUNCTION 0x005b5dac, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video21createOpenGLES2DriverEPNS_7IDeviceE
; demangled: glitch::video::createOpenGLES2Driver(glitch::IDevice*)
; decoder-mode: arm
005b5dac  70 40 2d e9                                      push {r4, r5, r6, lr}
005b5db0  00 10 a0 e3                                      mov r1, #0
005b5db4  00 50 a0 e1                                      mov r5, r0
005b5db8  f4 0d 00 e3                                      movw r0, #0xdf4
005b5dbc  fa f8 fd eb                                      bl #0x5341ac
005b5dc0  05 10 a0 e1                                      mov r1, r5
005b5dc4  00 40 a0 e1                                      mov r4, r0
005b5dc8  ea ff ff eb                                      bl #0x5b5d78
005b5dcc  d4 10 94 e5                                      ldr r1, [r4, #0xd4]
005b5dd0  04 00 a0 e1                                      mov r0, r4
005b5dd4  6b 20 d1 e5                                      ldrb r2, [r1, #0x6b]
005b5dd8  60 10 81 e2                                      add r1, r1, #0x60
005b5ddc  46 f7 ff eb                                      bl #0x5b3afc
005b5de0  00 50 50 e2                                      subs r5, r0, #0
005b5de4  01 00 00 0a                                      beq #0x5b5df0
005b5de8  04 00 a0 e1                                      mov r0, r4
005b5dec  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b5df0  04 00 a0 e1                                      mov r0, r4
005b5df4  e2 9d f5 eb                                      bl #0x31d584
005b5df8  05 00 a0 e1                                      mov r0, r5
005b5dfc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005b9b38, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video16createNullDriverEPNS_7IDeviceE
; demangled: glitch::video::createNullDriver(glitch::IDevice*)
; decoder-mode: arm
005b9b38  70 40 2d e9                                      push {r4, r5, r6, lr}
005b9b3c  00 10 a0 e3                                      mov r1, #0
005b9b40  00 50 a0 e1                                      mov r5, r0
005b9b44  8b 0f a0 e3                                      mov r0, #0x22c
005b9b48  97 e9 fd eb                                      bl #0x5341ac
005b9b4c  05 10 a0 e1                                      mov r1, r5
005b9b50  00 40 a0 e1                                      mov r4, r0
005b9b54  98 ff ff eb                                      bl #0x5b99bc
005b9b58  04 00 a0 e1                                      mov r0, r4
005b9b5c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005df898, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_15E_MATERIAL_TYPEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_MATERIAL_TYPE*)
; decoder-mode: arm
005df898  04 00 9f e5                                      ldr r0, [pc, #4]
005df89c  00 00 8f e0                                      add r0, pc, r0
005df8a0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005df8a4  5c 7b 37 00                                      .byte 0x5c, 0x7b, 0x37, 0x00

; FUNCTION 0x005e1828, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_14initEb
; demangled: glitch::video::(anonymous namespace)::init(bool)
; decoder-mode: arm
005e1828  70 40 2d e9                                      push {r4, r5, r6, lr}
005e182c  00 40 50 e2                                      subs r4, r0, #0
005e1830  12 00 00 1a                                      bne #0x5e1880
005e1834  48 50 9f e5                                      ldr r5, [pc, #0x48]
005e1838  04 60 a0 e1                                      mov r6, r4
005e183c  05 50 8f e0                                      add r5, pc, r5
005e1840  01 00 00 ea                                      b #0x5e184c
005e1844  fc 00 54 e3                                      cmp r4, #0xfc
005e1848  0c 00 00 0a                                      beq #0x5e1880
005e184c  04 00 95 e7                                      ldr r0, [r5, r4]
005e1850  04 60 85 e7                                      str r6, [r5, r4]
005e1854  04 40 84 e2                                      add r4, r4, #4
005e1858  00 00 50 e3                                      cmp r0, #0
005e185c  f8 ff ff 0a                                      beq #0x5e1844
005e1860  00 30 90 e5                                      ldr r3, [r0]
005e1864  01 30 43 e2                                      sub r3, r3, #1
005e1868  00 00 53 e3                                      cmp r3, #0
005e186c  00 30 80 e5                                      str r3, [r0]
005e1870  f3 ff ff 1a                                      bne #0x5e1844
005e1874  48 0d 03 eb                                      bl #0x6a4d9c
005e1878  fc 00 54 e3                                      cmp r4, #0xfc
005e187c  f2 ff ff 1a                                      bne #0x5e184c
005e1880  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005e1884  34 52 41 00                                      .byte 0x34, 0x52, 0x41, 0x00

; FUNCTION 0x005e2284, declared_size=9492, range_size=9492, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video24guessShaderParameterTypeEPKc
; demangled: glitch::video::guessShaderParameterType(char const*)
; decoder-mode: arm
005e2284  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e2288  84 32 9f e5                                      ldr r3, [pc, #0x284]
005e228c  84 42 9f e5                                      ldr r4, [pc, #0x284]
005e2290  73 de 4d e2                                      sub sp, sp, #0x730
005e2294  03 30 8f e0                                      add r3, pc, r3
005e2298  10 51 93 e5                                      ldr r5, [r3, #0x110]
005e229c  04 d0 4d e2                                      sub sp, sp, #4
005e22a0  04 40 8f e0                                      add r4, pc, r4
005e22a4  01 50 15 e2                                      ands r5, r5, #1
005e22a8  0c 00 8d e5                                      str r0, [sp, #0xc]
005e22ac  5d 00 00 0a                                      beq #0x5e2428
005e22b0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005e22b4  e6 ae f4 eb                                      bl #0x30de54
005e22b8  00 60 a0 e1                                      mov r6, r0
005e22bc  e4 47 fd eb                                      bl #0x534254
005e22c0  00 70 a0 e1                                      mov r7, r0
005e22c4  01 00 a0 e3                                      mov r0, #1
005e22c8  e6 47 fd eb                                      bl #0x534268
005e22cc  01 00 86 e2                                      add r0, r6, #1
005e22d0  c7 48 fd eb                                      bl #0x5345f4
005e22d4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005e22d8  00 50 a0 e1                                      mov r5, r0
005e22dc  06 60 83 e0                                      add r6, r3, r6
005e22e0  06 00 53 e1                                      cmp r3, r6
005e22e4  00 00 a0 01                                      moveq r0, r0
005e22e8  18 00 00 0a                                      beq #0x5e2350
005e22ec  28 e2 9f e5                                      ldr lr, [pc, #0x228]
005e22f0  28 82 9f e5                                      ldr r8, [pc, #0x228]
005e22f4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005e22f8  05 00 a0 e1                                      mov r0, r5
005e22fc  00 10 a0 e3                                      mov r1, #0
005e2300  d0 20 d3 e1                                      ldrsb r2, [r3]
005e2304  5b 00 52 e3                                      cmp r2, #0x5b
005e2308  01 10 81 02                                      addeq r1, r1, #1
005e230c  0c 00 00 0a                                      beq #0x5e2344
005e2310  5d 00 52 e3                                      cmp r2, #0x5d
005e2314  01 10 41 02                                      subeq r1, r1, #1
005e2318  09 00 00 0a                                      beq #0x5e2344
005e231c  00 00 51 e3                                      cmp r1, #0
005e2320  07 00 00 1a                                      bne #0x5e2344
005e2324  01 00 72 e3                                      cmn r2, #1
005e2328  3c 00 00 0a                                      beq #0x5e2420
005e232c  0e c0 94 e7                                      ldr ip, [r4, lr]
005e2330  00 c0 9c e5                                      ldr ip, [ip]
005e2334  72 c0 ec e6                                      uxtab ip, ip, r2
005e2338  01 c0 dc e5                                      ldrb ip, [ip, #1]
005e233c  04 00 1c e3                                      tst ip, #4
005e2340  31 00 00 0a                                      beq #0x5e240c
005e2344  01 30 83 e2                                      add r3, r3, #1
005e2348  06 00 53 e1                                      cmp r3, r6
005e234c  eb ff ff 1a                                      bne #0x5e2300
005e2350  cc 61 9f e5                                      ldr r6, [pc, #0x1cc]
005e2354  00 30 a0 e3                                      mov r3, #0
005e2358  00 30 c0 e5                                      strb r3, [r0]
005e235c  06 60 8f e0                                      add r6, pc, r6
005e2360  18 41 96 e5                                      ldr r4, [r6, #0x118]
005e2364  03 00 54 e1                                      cmp r4, r3
005e2368  45 4f 86 02                                      addeq r4, r6, #0x114
005e236c  16 00 00 0a                                      beq #0x5e23cc
005e2370  45 6f 86 e2                                      add r6, r6, #0x114
005e2374  00 00 00 ea                                      b #0x5e237c
005e2378  03 40 a0 e1                                      mov r4, r3
005e237c  10 00 94 e5                                      ldr r0, [r4, #0x10]
005e2380  05 10 a0 e1                                      mov r1, r5
005e2384  e4 af f4 eb                                      bl #0x30e31c
005e2388  00 00 50 e3                                      cmp r0, #0
005e238c  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
005e2390  08 30 94 a5                                      ldrge r3, [r4, #8]
005e2394  06 40 a0 b1                                      movlt r4, r6
005e2398  04 60 a0 e1                                      mov r6, r4
005e239c  00 00 53 e3                                      cmp r3, #0
005e23a0  f4 ff ff 1a                                      bne #0x5e2378
005e23a4  7c 61 9f e5                                      ldr r6, [pc, #0x17c]
005e23a8  06 60 8f e0                                      add r6, pc, r6
005e23ac  45 6f 86 e2                                      add r6, r6, #0x114
005e23b0  06 00 54 e1                                      cmp r4, r6
005e23b4  04 00 00 0a                                      beq #0x5e23cc
005e23b8  10 10 94 e5                                      ldr r1, [r4, #0x10]
005e23bc  05 00 a0 e1                                      mov r0, r5
005e23c0  d5 af f4 eb                                      bl #0x30e31c
005e23c4  00 00 50 e3                                      cmp r0, #0
005e23c8  06 40 a0 b1                                      movlt r4, r6
005e23cc  58 31 9f e5                                      ldr r3, [pc, #0x158]
005e23d0  03 30 8f e0                                      add r3, pc, r3
005e23d4  45 3f 83 e2                                      add r3, r3, #0x114
005e23d8  03 00 54 e1                                      cmp r4, r3
005e23dc  ff 40 a0 03                                      moveq r4, #0xff
005e23e0  14 40 94 15                                      ldrne r4, [r4, #0x14]
005e23e4  00 00 55 e3                                      cmp r5, #0
005e23e8  01 00 00 0a                                      beq #0x5e23f4
005e23ec  05 00 a0 e1                                      mov r0, r5
005e23f0  a4 48 fd eb                                      bl #0x534688
005e23f4  07 00 a0 e1                                      mov r0, r7
005e23f8  9a 47 fd eb                                      bl #0x534268
005e23fc  04 00 a0 e1                                      mov r0, r4
005e2400  cd df 8d e2                                      add sp, sp, #0x334
005e2404  01 db 8d e2                                      add sp, sp, #0x400
005e2408  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e240c  ff 00 52 e3                                      cmp r2, #0xff
005e2410  08 c0 94 97                                      ldrls ip, [r4, r8]
005e2414  00 c0 9c 95                                      ldrls ip, [ip]
005e2418  82 20 8c 90                                      addls r2, ip, r2, lsl #1
005e241c  f2 20 d2 91                                      ldrshls r2, [r2, #2]
005e2420  01 20 c0 e4                                      strb r2, [r0], #1
005e2424  c6 ff ff ea                                      b #0x5e2344
005e2428  11 0e 83 e2                                      add r0, r3, #0x110
005e242c  ce b0 f4 eb                                      bl #0x30e76c
005e2430  00 00 50 e3                                      cmp r0, #0
005e2434  9d ff ff 0a                                      beq #0x5e22b0
005e2438  30 60 8d e2                                      add r6, sp, #0x30
005e243c  04 60 46 e2                                      sub r6, r6, #4
005e2440  05 10 a0 e1                                      mov r1, r5
005e2444  06 00 a0 e1                                      mov r0, r6
005e2448  2c 50 8d e5                                      str r5, [sp, #0x2c]
005e244c  30 50 8d e5                                      str r5, [sp, #0x30]
005e2450  34 50 8d e5                                      str r5, [sp, #0x34]
005e2454  38 50 8d e5                                      str r5, [sp, #0x38]
005e2458  3c 50 8d e5                                      str r5, [sp, #0x3c]
005e245c  40 50 8d e5                                      str r5, [sp, #0x40]
005e2460  44 50 8d e5                                      str r5, [sp, #0x44]
005e2464  48 50 8d e5                                      str r5, [sp, #0x48]
005e2468  4c 50 8d e5                                      str r5, [sp, #0x4c]
005e246c  50 50 8d e5                                      str r5, [sp, #0x50]
005e2470  62 fe ff eb                                      bl #0x5e1e00
005e2474  44 10 9d e5                                      ldr r1, [sp, #0x44]
005e2478  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
005e247c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005e2480  08 10 41 e2                                      sub r1, r1, #8
005e2484  03 30 8f e0                                      add r3, pc, r3
005e2488  01 00 52 e1                                      cmp r2, r1
005e248c  32 10 a0 e3                                      mov r1, #0x32
005e2490  88 10 8d e5                                      str r1, [sp, #0x88]
005e2494  84 30 8d e5                                      str r3, [sp, #0x84]
005e2498  4c 08 00 0a                                      beq #0x5e45d0
005e249c  00 30 82 e5                                      str r3, [r2]
005e24a0  88 30 9d e5                                      ldr r3, [sp, #0x88]
005e24a4  90 b0 8d e2                                      add fp, sp, #0x90
005e24a8  04 30 82 e5                                      str r3, [r2, #4]
005e24ac  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005e24b0  08 30 83 e2                                      add r3, r3, #8
005e24b4  3c 30 8d e5                                      str r3, [sp, #0x3c]
005e24b8  60 30 8d e2                                      add r3, sp, #0x60
005e24bc  0c 30 43 e2                                      sub r3, r3, #0xc
005e24c0  03 00 a0 e1                                      mov r0, r3
005e24c4  06 10 a0 e1                                      mov r1, r6
005e24c8  1c 30 8d e5                                      str r3, [sp, #0x1c]
005e24cc  76 fe ff eb                                      bl #0x5e1eac
005e24d0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005e24d4  34 20 9d e5                                      ldr r2, [sp, #0x34]
005e24d8  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
005e24dc  38 00 9d e5                                      ldr r0, [sp, #0x38]
005e24e0  03 00 51 e1                                      cmp r1, r3
005e24e4  9a 00 00 0a                                      beq #0x5e2754
005e24e8  08 30 83 e2                                      add r3, r3, #8
005e24ec  02 00 53 e1                                      cmp r3, r2
005e24f0  04 00 00 0a                                      beq #0x5e2508
005e24f4  03 00 51 e1                                      cmp r1, r3
005e24f8  08 30 83 e2                                      add r3, r3, #8
005e24fc  94 00 00 0a                                      beq #0x5e2754
005e2500  03 00 52 e1                                      cmp r2, r3
005e2504  fa ff ff 1a                                      bne #0x5e24f4
005e2508  04 30 b0 e5                                      ldr r3, [r0, #4]!
005e250c  80 20 83 e2                                      add r2, r3, #0x80
005e2510  f2 ff ff ea                                      b #0x5e24e0
; mapping-symbol data/literal pool
005e2514  dc 47 41 00 f0 27 3b 00 dc 1d 00 00 e0 36 00 00  .byte 0xdc, 0x47, 0x41, 0x00, 0xf0, 0x27, 0x3b, 0x00, 0xdc, 0x1d, 0x00, 0x00, 0xe0, 0x36, 0x00, 0x00
005e2524  14 47 41 00 c8 46 41 00 a0 46 41 00 bc f5 2f 00  .byte 0x14, 0x47, 0x41, 0x00, 0xc8, 0x46, 0x41, 0x00, 0xa0, 0x46, 0x41, 0x00, 0xbc, 0xf5, 0x2f, 0x00
005e2534  e4 f2 2f 00 dc f2 2f 00 c8 f2 2f 00 c4 f2 2f 00  .byte 0xe4, 0xf2, 0x2f, 0x00, 0xdc, 0xf2, 0x2f, 0x00, 0xc8, 0xf2, 0x2f, 0x00, 0xc4, 0xf2, 0x2f, 0x00
005e2544  a8 f2 2f 00 a4 f2 2f 00 94 f2 2f 00 78 f2 2f 00  .byte 0xa8, 0xf2, 0x2f, 0x00, 0xa4, 0xf2, 0x2f, 0x00, 0x94, 0xf2, 0x2f, 0x00, 0x78, 0xf2, 0x2f, 0x00
005e2554  74 f2 2f 00 60 f2 2f 00 48 f2 2f 00 30 f2 2f 00  .byte 0x74, 0xf2, 0x2f, 0x00, 0x60, 0xf2, 0x2f, 0x00, 0x48, 0xf2, 0x2f, 0x00, 0x30, 0xf2, 0x2f, 0x00
005e2564  28 f2 2f 00 20 f2 2f 00 20 f2 2f 00 18 f2 2f 00  .byte 0x28, 0xf2, 0x2f, 0x00, 0x20, 0xf2, 0x2f, 0x00, 0x20, 0xf2, 0x2f, 0x00, 0x18, 0xf2, 0x2f, 0x00
005e2574  0c f2 2f 00 0c f2 2f 00 0c f2 2f 00 04 f2 2f 00  .byte 0x0c, 0xf2, 0x2f, 0x00, 0x0c, 0xf2, 0x2f, 0x00, 0x0c, 0xf2, 0x2f, 0x00, 0x04, 0xf2, 0x2f, 0x00
005e2584  0c f2 2f 00 04 f2 2f 00 08 f2 2f 00 00 f2 2f 00  .byte 0x0c, 0xf2, 0x2f, 0x00, 0x04, 0xf2, 0x2f, 0x00, 0x08, 0xf2, 0x2f, 0x00, 0x00, 0xf2, 0x2f, 0x00
005e2594  f0 f1 2f 00 e8 f1 2f 00 d8 f1 2f 00 d0 f1 2f 00  .byte 0xf0, 0xf1, 0x2f, 0x00, 0xe8, 0xf1, 0x2f, 0x00, 0xd8, 0xf1, 0x2f, 0x00, 0xd0, 0xf1, 0x2f, 0x00
005e25a4  cc f1 2f 00 c4 f1 2f 00 bc f1 2f 00 b8 f1 2f 00  .byte 0xcc, 0xf1, 0x2f, 0x00, 0xc4, 0xf1, 0x2f, 0x00, 0xbc, 0xf1, 0x2f, 0x00, 0xb8, 0xf1, 0x2f, 0x00
005e25b4  ac f1 2f 00 94 f1 2f 00 8c f1 2f 00 8c f1 2f 00  .byte 0xac, 0xf1, 0x2f, 0x00, 0x94, 0xf1, 0x2f, 0x00, 0x8c, 0xf1, 0x2f, 0x00, 0x8c, 0xf1, 0x2f, 0x00
005e25c4  84 f1 2f 00 84 f1 2f 00 7c f1 2f 00 7c f1 2f 00  .byte 0x84, 0xf1, 0x2f, 0x00, 0x84, 0xf1, 0x2f, 0x00, 0x7c, 0xf1, 0x2f, 0x00, 0x7c, 0xf1, 0x2f, 0x00
005e25d4  7c f1 2f 00 74 f1 2f 00 74 f1 2f 00 70 f1 2f 00  .byte 0x7c, 0xf1, 0x2f, 0x00, 0x74, 0xf1, 0x2f, 0x00, 0x74, 0xf1, 0x2f, 0x00, 0x70, 0xf1, 0x2f, 0x00
005e25e4  e0 ee 2f 00 48 f1 2f 00 4c f1 2f 00 3c f1 2f 00  .byte 0xe0, 0xee, 0x2f, 0x00, 0x48, 0xf1, 0x2f, 0x00, 0x4c, 0xf1, 0x2f, 0x00, 0x3c, 0xf1, 0x2f, 0x00
005e25f4  34 f1 2f 00 24 f1 2f 00 1c f1 2f 00 10 f1 2f 00  .byte 0x34, 0xf1, 0x2f, 0x00, 0x24, 0xf1, 0x2f, 0x00, 0x1c, 0xf1, 0x2f, 0x00, 0x10, 0xf1, 0x2f, 0x00
005e2604  08 f1 2f 00 38 f3 2f 00 30 f3 2f 00 c0 f0 2f 00  .byte 0x08, 0xf1, 0x2f, 0x00, 0x38, 0xf3, 0x2f, 0x00, 0x30, 0xf3, 0x2f, 0x00, 0xc0, 0xf0, 0x2f, 0x00
005e2614  b4 f0 2f 00 fc f3 2f 00 84 f0 2f 00 78 f0 2f 00  .byte 0xb4, 0xf0, 0x2f, 0x00, 0xfc, 0xf3, 0x2f, 0x00, 0x84, 0xf0, 0x2f, 0x00, 0x78, 0xf0, 0x2f, 0x00
005e2624  70 f0 2f 00 6c f0 2f 00 54 f0 2f 00 34 f0 2f 00  .byte 0x70, 0xf0, 0x2f, 0x00, 0x6c, 0xf0, 0x2f, 0x00, 0x54, 0xf0, 0x2f, 0x00, 0x34, 0xf0, 0x2f, 0x00
005e2634  28 f0 2f 00 20 f0 2f 00 1c f0 2f 00 0c f0 2f 00  .byte 0x28, 0xf0, 0x2f, 0x00, 0x20, 0xf0, 0x2f, 0x00, 0x1c, 0xf0, 0x2f, 0x00, 0x0c, 0xf0, 0x2f, 0x00
005e2644  fc ef 2f 00 ec ef 2f 00 d8 ef 2f 00 d0 ef 2f 00  .byte 0xfc, 0xef, 0x2f, 0x00, 0xec, 0xef, 0x2f, 0x00, 0xd8, 0xef, 0x2f, 0x00, 0xd0, 0xef, 0x2f, 0x00
005e2654  58 ef 2f 00 94 ef 2f 00 84 ef 2f 00 74 ef 2f 00  .byte 0x58, 0xef, 0x2f, 0x00, 0x94, 0xef, 0x2f, 0x00, 0x84, 0xef, 0x2f, 0x00, 0x74, 0xef, 0x2f, 0x00
005e2664  64 ef 2f 00 54 ef 2f 00 3c ef 2f 00 2c ef 2f 00  .byte 0x64, 0xef, 0x2f, 0x00, 0x54, 0xef, 0x2f, 0x00, 0x3c, 0xef, 0x2f, 0x00, 0x2c, 0xef, 0x2f, 0x00
005e2674  24 ef 2f 00 0c ef 2f 00 fc ee 2f 00 f0 ee 2f 00  .byte 0x24, 0xef, 0x2f, 0x00, 0x0c, 0xef, 0x2f, 0x00, 0xfc, 0xee, 0x2f, 0x00, 0xf0, 0xee, 0x2f, 0x00
005e2684  ec ee 2f 00 e4 ee 2f 00 dc ee 2f 00 c8 ee 2f 00  .byte 0xec, 0xee, 0x2f, 0x00, 0xe4, 0xee, 0x2f, 0x00, 0xdc, 0xee, 0x2f, 0x00, 0xc8, 0xee, 0x2f, 0x00
005e2694  48 f1 2f 00 38 f1 2f 00 7c ee 2f 00 74 ee 2f 00  .byte 0x48, 0xf1, 0x2f, 0x00, 0x38, 0xf1, 0x2f, 0x00, 0x7c, 0xee, 0x2f, 0x00, 0x74, 0xee, 0x2f, 0x00
005e26a4  74 ee 2f 00 6c ee 2f 00 70 ee 2f 00 6c ee 2f 00  .byte 0x74, 0xee, 0x2f, 0x00, 0x6c, 0xee, 0x2f, 0x00, 0x70, 0xee, 0x2f, 0x00, 0x6c, 0xee, 0x2f, 0x00
005e26b4  68 ee 2f 00 6c ee 2f 00 68 ee 2f 00 64 ee 2f 00  .byte 0x68, 0xee, 0x2f, 0x00, 0x6c, 0xee, 0x2f, 0x00, 0x68, 0xee, 0x2f, 0x00, 0x64, 0xee, 0x2f, 0x00
005e26c4  68 ee 2f 00 58 ee 2f 00 54 ee 2f 00 48 ee 2f 00  .byte 0x68, 0xee, 0x2f, 0x00, 0x58, 0xee, 0x2f, 0x00, 0x54, 0xee, 0x2f, 0x00, 0x48, 0xee, 0x2f, 0x00
005e26d4  3c ee 2f 00 38 ee 2f 00 28 ee 2f 00 1c ee 2f 00  .byte 0x3c, 0xee, 0x2f, 0x00, 0x38, 0xee, 0x2f, 0x00, 0x28, 0xee, 0x2f, 0x00, 0x1c, 0xee, 0x2f, 0x00
005e26e4  10 ee 2f 00 14 ee 2f 00 08 ee 2f 00 0c ee 2f 00  .byte 0x10, 0xee, 0x2f, 0x00, 0x14, 0xee, 0x2f, 0x00, 0x08, 0xee, 0x2f, 0x00, 0x0c, 0xee, 0x2f, 0x00
005e26f4  fc ed 2f 00 f0 ed 2f 00 e4 ed 2f 00 d0 ed 2f 00  .byte 0xfc, 0xed, 0x2f, 0x00, 0xf0, 0xed, 0x2f, 0x00, 0xe4, 0xed, 0x2f, 0x00, 0xd0, 0xed, 0x2f, 0x00
005e2704  c0 ed 2f 00 f8 e6 2f 00 ec e6 2f 00 80 ed 2f 00  .byte 0xc0, 0xed, 0x2f, 0x00, 0xf8, 0xe6, 0x2f, 0x00, 0xec, 0xe6, 0x2f, 0x00, 0x80, 0xed, 0x2f, 0x00
005e2714  70 ed 2f 00 68 ed 2f 00 60 ed 2f 00 58 ed 2f 00  .byte 0x70, 0xed, 0x2f, 0x00, 0x68, 0xed, 0x2f, 0x00, 0x60, 0xed, 0x2f, 0x00, 0x58, 0xed, 0x2f, 0x00
005e2724  54 ed 2f 00 4c ed 2f 00 3c ed 2f 00 38 ed 2f 00  .byte 0x54, 0xed, 0x2f, 0x00, 0x4c, 0xed, 0x2f, 0x00, 0x3c, 0xed, 0x2f, 0x00, 0x38, 0xed, 0x2f, 0x00
005e2734  30 ed 2f 00 20 ed 2f 00 18 ed 2f 00 08 ed 2f 00  .byte 0x30, 0xed, 0x2f, 0x00, 0x20, 0xed, 0x2f, 0x00, 0x18, 0xed, 0x2f, 0x00, 0x08, 0xed, 0x2f, 0x00
005e2744  00 ed 2f 00 00 ed 2f 00 f8 ec 2f 00 f0 ec 2f 00  .byte 0x00, 0xed, 0x2f, 0x00, 0x00, 0xed, 0x2f, 0x00, 0xf8, 0xec, 0x2f, 0x00, 0xf0, 0xec, 0x2f, 0x00
; decoder-mode: arm
005e2754  06 00 a0 e1                                      mov r0, r6
005e2758  6f fd ff eb                                      bl #0x5e1d1c
005e275c  30 12 1f e5                                      ldr r1, [pc, #-0x230]
005e2760  32 50 a0 e3                                      mov r5, #0x32
005e2764  73 2e 8d e2                                      add r2, sp, #0x730
005e2768  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005e276c  01 10 8f e0                                      add r1, pc, r1
005e2770  04 50 22 e5                                      str r5, [r2, #-4]!
005e2774  ac fe ff eb                                      bl #0x5e222c
005e2778  48 32 1f e5                                      ldr r3, [pc, #-0x248]
005e277c  19 1d 8d e2                                      add r1, sp, #0x640
005e2780  04 10 81 e2                                      add r1, r1, #4
005e2784  03 30 8f e0                                      add r3, pc, r3
005e2788  00 60 a0 e1                                      mov r6, r0
005e278c  44 36 8d e5                                      str r3, [sp, #0x644]
005e2790  48 56 8d e5                                      str r5, [sp, #0x648]
005e2794  66 fe ff eb                                      bl #0x5e2134
005e2798  64 12 1f e5                                      ldr r1, [pc, #-0x264]
005e279c  73 2e 8d e2                                      add r2, sp, #0x730
005e27a0  08 50 22 e5                                      str r5, [r2, #-8]!
005e27a4  06 00 a0 e1                                      mov r0, r6
005e27a8  01 10 8f e0                                      add r1, pc, r1
005e27ac  9e fe ff eb                                      bl #0x5e222c
005e27b0  78 32 1f e5                                      ldr r3, [pc, #-0x278]
005e27b4  63 1e 8d e2                                      add r1, sp, #0x630
005e27b8  0c 10 81 e2                                      add r1, r1, #0xc
005e27bc  03 30 8f e0                                      add r3, pc, r3
005e27c0  00 60 a0 e1                                      mov r6, r0
005e27c4  3c 36 8d e5                                      str r3, [sp, #0x63c]
005e27c8  40 56 8d e5                                      str r5, [sp, #0x640]
005e27cc  58 fe ff eb                                      bl #0x5e2134
005e27d0  94 12 1f e5                                      ldr r1, [pc, #-0x294]
005e27d4  73 2e 8d e2                                      add r2, sp, #0x730
005e27d8  0c 50 22 e5                                      str r5, [r2, #-0xc]!
005e27dc  06 00 a0 e1                                      mov r0, r6
005e27e0  01 10 8f e0                                      add r1, pc, r1
005e27e4  64 fe ff eb                                      bl #0x5e217c
005e27e8  a8 32 1f e5                                      ldr r3, [pc, #-0x2a8]
005e27ec  63 1e 8d e2                                      add r1, sp, #0x630
005e27f0  04 10 81 e2                                      add r1, r1, #4
005e27f4  03 30 8f e0                                      add r3, pc, r3
005e27f8  00 60 a0 e1                                      mov r6, r0
005e27fc  38 56 8d e5                                      str r5, [sp, #0x638]
005e2800  34 36 8d e5                                      str r3, [sp, #0x634]
005e2804  4a fe ff eb                                      bl #0x5e2134
005e2808  c4 32 1f e5                                      ldr r3, [pc, #-0x2c4]
005e280c  62 1e 8d e2                                      add r1, sp, #0x620
005e2810  06 00 a0 e1                                      mov r0, r6
005e2814  03 30 8f e0                                      add r3, pc, r3
005e2818  0c 10 81 e2                                      add r1, r1, #0xc
005e281c  2c 36 8d e5                                      str r3, [sp, #0x62c]
005e2820  30 56 8d e5                                      str r5, [sp, #0x630]
005e2824  42 fe ff eb                                      bl #0x5e2134
005e2828  e0 12 1f e5                                      ldr r1, [pc, #-0x2e0]
005e282c  73 2e 8d e2                                      add r2, sp, #0x730
005e2830  10 50 22 e5                                      str r5, [r2, #-0x10]!
005e2834  06 00 a0 e1                                      mov r0, r6
005e2838  01 10 8f e0                                      add r1, pc, r1
005e283c  4e fe ff eb                                      bl #0x5e217c
005e2840  f4 32 1f e5                                      ldr r3, [pc, #-0x2f4]
005e2844  62 1e 8d e2                                      add r1, sp, #0x620
005e2848  04 10 81 e2                                      add r1, r1, #4
005e284c  03 30 8f e0                                      add r3, pc, r3
005e2850  00 60 a0 e1                                      mov r6, r0
005e2854  28 56 8d e5                                      str r5, [sp, #0x628]
005e2858  24 36 8d e5                                      str r3, [sp, #0x624]
005e285c  34 fe ff eb                                      bl #0x5e2134
005e2860  10 33 1f e5                                      ldr r3, [pc, #-0x310]
005e2864  61 1e 8d e2                                      add r1, sp, #0x610
005e2868  27 50 a0 e3                                      mov r5, #0x27
005e286c  06 00 a0 e1                                      mov r0, r6
005e2870  03 30 8f e0                                      add r3, pc, r3
005e2874  0c 10 81 e2                                      add r1, r1, #0xc
005e2878  1c 36 8d e5                                      str r3, [sp, #0x61c]
005e287c  20 56 8d e5                                      str r5, [sp, #0x620]
005e2880  2b fe ff eb                                      bl #0x5e2134
005e2884  30 33 1f e5                                      ldr r3, [pc, #-0x330]
005e2888  61 1e 8d e2                                      add r1, sp, #0x610
005e288c  06 00 a0 e1                                      mov r0, r6
005e2890  03 30 8f e0                                      add r3, pc, r3
005e2894  04 10 81 e2                                      add r1, r1, #4
005e2898  14 36 8d e5                                      str r3, [sp, #0x614]
005e289c  18 56 8d e5                                      str r5, [sp, #0x618]
005e28a0  23 fe ff eb                                      bl #0x5e2134
005e28a4  4c 33 1f e5                                      ldr r3, [pc, #-0x34c]
005e28a8  06 1c 8d e2                                      add r1, sp, #0x600
005e28ac  06 00 a0 e1                                      mov r0, r6
005e28b0  03 30 8f e0                                      add r3, pc, r3
005e28b4  0c 10 81 e2                                      add r1, r1, #0xc
005e28b8  0c 36 8d e5                                      str r3, [sp, #0x60c]
005e28bc  10 56 8d e5                                      str r5, [sp, #0x610]
005e28c0  1b fe ff eb                                      bl #0x5e2134
005e28c4  68 33 1f e5                                      ldr r3, [pc, #-0x368]
005e28c8  06 1c 8d e2                                      add r1, sp, #0x600
005e28cc  06 00 a0 e1                                      mov r0, r6
005e28d0  03 30 8f e0                                      add r3, pc, r3
005e28d4  04 10 81 e2                                      add r1, r1, #4
005e28d8  04 36 8d e5                                      str r3, [sp, #0x604]
005e28dc  08 56 8d e5                                      str r5, [sp, #0x608]
005e28e0  13 fe ff eb                                      bl #0x5e2134
005e28e4  84 33 1f e5                                      ldr r3, [pc, #-0x384]
005e28e8  5f 1e 8d e2                                      add r1, sp, #0x5f0
005e28ec  06 00 a0 e1                                      mov r0, r6
005e28f0  03 30 8f e0                                      add r3, pc, r3
005e28f4  0c 10 81 e2                                      add r1, r1, #0xc
005e28f8  fc 35 8d e5                                      str r3, [sp, #0x5fc]
005e28fc  00 56 8d e5                                      str r5, [sp, #0x600]
005e2900  0b fe ff eb                                      bl #0x5e2134
005e2904  a0 33 1f e5                                      ldr r3, [pc, #-0x3a0]
005e2908  5f 1e 8d e2                                      add r1, sp, #0x5f0
005e290c  06 00 a0 e1                                      mov r0, r6
005e2910  03 30 8f e0                                      add r3, pc, r3
005e2914  04 10 81 e2                                      add r1, r1, #4
005e2918  f4 35 8d e5                                      str r3, [sp, #0x5f4]
005e291c  f8 55 8d e5                                      str r5, [sp, #0x5f8]
005e2920  03 fe ff eb                                      bl #0x5e2134
005e2924  bc 33 1f e5                                      ldr r3, [pc, #-0x3bc]
005e2928  5e 1e 8d e2                                      add r1, sp, #0x5e0
005e292c  06 00 a0 e1                                      mov r0, r6
005e2930  03 30 8f e0                                      add r3, pc, r3
005e2934  0c 10 81 e2                                      add r1, r1, #0xc
005e2938  ec 35 8d e5                                      str r3, [sp, #0x5ec]
005e293c  f0 55 8d e5                                      str r5, [sp, #0x5f0]
005e2940  fb fd ff eb                                      bl #0x5e2134
005e2944  d8 33 1f e5                                      ldr r3, [pc, #-0x3d8]
005e2948  5e 1e 8d e2                                      add r1, sp, #0x5e0
005e294c  31 50 a0 e3                                      mov r5, #0x31
005e2950  06 00 a0 e1                                      mov r0, r6
005e2954  03 30 8f e0                                      add r3, pc, r3
005e2958  04 10 81 e2                                      add r1, r1, #4
005e295c  e4 35 8d e5                                      str r3, [sp, #0x5e4]
005e2960  e8 55 8d e5                                      str r5, [sp, #0x5e8]
005e2964  f2 fd ff eb                                      bl #0x5e2134
005e2968  f8 33 1f e5                                      ldr r3, [pc, #-0x3f8]
005e296c  5d 1e 8d e2                                      add r1, sp, #0x5d0
005e2970  06 00 a0 e1                                      mov r0, r6
005e2974  03 30 8f e0                                      add r3, pc, r3
005e2978  0c 10 81 e2                                      add r1, r1, #0xc
005e297c  dc 35 8d e5                                      str r3, [sp, #0x5dc]
005e2980  e0 55 8d e5                                      str r5, [sp, #0x5e0]
005e2984  ea fd ff eb                                      bl #0x5e2134
005e2988  14 34 1f e5                                      ldr r3, [pc, #-0x414]
005e298c  5d 1e 8d e2                                      add r1, sp, #0x5d0
005e2990  06 00 a0 e1                                      mov r0, r6
005e2994  03 30 8f e0                                      add r3, pc, r3
005e2998  04 10 81 e2                                      add r1, r1, #4
005e299c  d4 35 8d e5                                      str r3, [sp, #0x5d4]
005e29a0  d8 55 8d e5                                      str r5, [sp, #0x5d8]
005e29a4  e2 fd ff eb                                      bl #0x5e2134
005e29a8  30 34 1f e5                                      ldr r3, [pc, #-0x430]
005e29ac  17 1d 8d e2                                      add r1, sp, #0x5c0
005e29b0  06 00 a0 e1                                      mov r0, r6
005e29b4  03 30 8f e0                                      add r3, pc, r3
005e29b8  0c 10 81 e2                                      add r1, r1, #0xc
005e29bc  cc 35 8d e5                                      str r3, [sp, #0x5cc]
005e29c0  d0 55 8d e5                                      str r5, [sp, #0x5d0]
005e29c4  da fd ff eb                                      bl #0x5e2134
005e29c8  4c 34 1f e5                                      ldr r3, [pc, #-0x44c]
005e29cc  17 1d 8d e2                                      add r1, sp, #0x5c0
005e29d0  06 00 a0 e1                                      mov r0, r6
005e29d4  03 30 8f e0                                      add r3, pc, r3
005e29d8  04 10 81 e2                                      add r1, r1, #4
005e29dc  c4 35 8d e5                                      str r3, [sp, #0x5c4]
005e29e0  c8 55 8d e5                                      str r5, [sp, #0x5c8]
005e29e4  d2 fd ff eb                                      bl #0x5e2134
005e29e8  68 34 1f e5                                      ldr r3, [pc, #-0x468]
005e29ec  5b 1e 8d e2                                      add r1, sp, #0x5b0
005e29f0  06 00 a0 e1                                      mov r0, r6
005e29f4  03 30 8f e0                                      add r3, pc, r3
005e29f8  0c 10 81 e2                                      add r1, r1, #0xc
005e29fc  bc 35 8d e5                                      str r3, [sp, #0x5bc]
005e2a00  c0 55 8d e5                                      str r5, [sp, #0x5c0]
005e2a04  ca fd ff eb                                      bl #0x5e2134
005e2a08  84 14 1f e5                                      ldr r1, [pc, #-0x484]
005e2a0c  2b 50 a0 e3                                      mov r5, #0x2b
005e2a10  73 2e 8d e2                                      add r2, sp, #0x730
005e2a14  14 50 22 e5                                      str r5, [r2, #-0x14]!
005e2a18  01 10 8f e0                                      add r1, pc, r1
005e2a1c  06 00 a0 e1                                      mov r0, r6
005e2a20  01 fe ff eb                                      bl #0x5e222c
005e2a24  9c 34 1f e5                                      ldr r3, [pc, #-0x49c]
005e2a28  5b 1e 8d e2                                      add r1, sp, #0x5b0
005e2a2c  04 10 81 e2                                      add r1, r1, #4
005e2a30  03 30 8f e0                                      add r3, pc, r3
005e2a34  00 60 a0 e1                                      mov r6, r0
005e2a38  b4 35 8d e5                                      str r3, [sp, #0x5b4]
005e2a3c  b8 55 8d e5                                      str r5, [sp, #0x5b8]
005e2a40  bb fd ff eb                                      bl #0x5e2134
005e2a44  b8 14 1f e5                                      ldr r1, [pc, #-0x4b8]
005e2a48  73 2e 8d e2                                      add r2, sp, #0x730
005e2a4c  18 50 22 e5                                      str r5, [r2, #-0x18]!
005e2a50  01 10 8f e0                                      add r1, pc, r1
005e2a54  06 00 a0 e1                                      mov r0, r6
005e2a58  f3 fd ff eb                                      bl #0x5e222c
005e2a5c  cc 34 1f e5                                      ldr r3, [pc, #-0x4cc]
005e2a60  5a 1e 8d e2                                      add r1, sp, #0x5a0
005e2a64  0c 10 81 e2                                      add r1, r1, #0xc
005e2a68  03 30 8f e0                                      add r3, pc, r3
005e2a6c  ac 35 8d e5                                      str r3, [sp, #0x5ac]
005e2a70  00 60 a0 e1                                      mov r6, r0
005e2a74  b0 55 8d e5                                      str r5, [sp, #0x5b0]
005e2a78  ad fd ff eb                                      bl #0x5e2134
005e2a7c  e8 14 1f e5                                      ldr r1, [pc, #-0x4e8]
005e2a80  73 2e 8d e2                                      add r2, sp, #0x730
005e2a84  1c 50 22 e5                                      str r5, [r2, #-0x1c]!
005e2a88  01 10 8f e0                                      add r1, pc, r1
005e2a8c  06 00 a0 e1                                      mov r0, r6
005e2a90  b9 fd ff eb                                      bl #0x5e217c
005e2a94  fc 14 1f e5                                      ldr r1, [pc, #-0x4fc]
005e2a98  73 2e 8d e2                                      add r2, sp, #0x730
005e2a9c  20 50 22 e5                                      str r5, [r2, #-0x20]!
005e2aa0  01 10 8f e0                                      add r1, pc, r1
005e2aa4  ca fd ff eb                                      bl #0x5e21d4
005e2aa8  0c 35 1f e5                                      ldr r3, [pc, #-0x50c]
005e2aac  5a 1e 8d e2                                      add r1, sp, #0x5a0
005e2ab0  04 10 81 e2                                      add r1, r1, #4
005e2ab4  03 30 8f e0                                      add r3, pc, r3
005e2ab8  a4 35 8d e5                                      str r3, [sp, #0x5a4]
005e2abc  00 60 a0 e1                                      mov r6, r0
005e2ac0  a8 55 8d e5                                      str r5, [sp, #0x5a8]
005e2ac4  9a fd ff eb                                      bl #0x5e2134
005e2ac8  28 15 1f e5                                      ldr r1, [pc, #-0x528]
005e2acc  73 2e 8d e2                                      add r2, sp, #0x730
005e2ad0  24 50 22 e5                                      str r5, [r2, #-0x24]!
005e2ad4  01 10 8f e0                                      add r1, pc, r1
005e2ad8  06 00 a0 e1                                      mov r0, r6
005e2adc  a6 fd ff eb                                      bl #0x5e217c
005e2ae0  3c 15 1f e5                                      ldr r1, [pc, #-0x53c]
005e2ae4  73 2e 8d e2                                      add r2, sp, #0x730
005e2ae8  28 50 22 e5                                      str r5, [r2, #-0x28]!
005e2aec  01 10 8f e0                                      add r1, pc, r1
005e2af0  b7 fd ff eb                                      bl #0x5e21d4
005e2af4  4c 35 1f e5                                      ldr r3, [pc, #-0x54c]
005e2af8  59 1e 8d e2                                      add r1, sp, #0x590
005e2afc  0c 10 81 e2                                      add r1, r1, #0xc
005e2b00  03 30 8f e0                                      add r3, pc, r3
005e2b04  00 60 a0 e1                                      mov r6, r0
005e2b08  a0 55 8d e5                                      str r5, [sp, #0x5a0]
005e2b0c  9c 35 8d e5                                      str r3, [sp, #0x59c]
005e2b10  87 fd ff eb                                      bl #0x5e2134
005e2b14  68 35 1f e5                                      ldr r3, [pc, #-0x568]
005e2b18  59 1e 8d e2                                      add r1, sp, #0x590
005e2b1c  35 50 a0 e3                                      mov r5, #0x35
005e2b20  06 00 a0 e1                                      mov r0, r6
005e2b24  03 30 8f e0                                      add r3, pc, r3
005e2b28  04 10 81 e2                                      add r1, r1, #4
005e2b2c  94 35 8d e5                                      str r3, [sp, #0x594]
005e2b30  98 55 8d e5                                      str r5, [sp, #0x598]
005e2b34  7e fd ff eb                                      bl #0x5e2134
005e2b38  88 35 1f e5                                      ldr r3, [pc, #-0x588]
005e2b3c  16 1d 8d e2                                      add r1, sp, #0x580
005e2b40  06 00 a0 e1                                      mov r0, r6
005e2b44  03 30 8f e0                                      add r3, pc, r3
005e2b48  0c 10 81 e2                                      add r1, r1, #0xc
005e2b4c  8c 35 8d e5                                      str r3, [sp, #0x58c]
005e2b50  90 55 8d e5                                      str r5, [sp, #0x590]
005e2b54  76 fd ff eb                                      bl #0x5e2134
005e2b58  a4 35 1f e5                                      ldr r3, [pc, #-0x5a4]
005e2b5c  16 1d 8d e2                                      add r1, sp, #0x580
005e2b60  06 00 a0 e1                                      mov r0, r6
005e2b64  03 30 8f e0                                      add r3, pc, r3
005e2b68  04 10 81 e2                                      add r1, r1, #4
005e2b6c  84 35 8d e5                                      str r3, [sp, #0x584]
005e2b70  88 55 8d e5                                      str r5, [sp, #0x588]
005e2b74  6e fd ff eb                                      bl #0x5e2134
005e2b78  c0 35 1f e5                                      ldr r3, [pc, #-0x5c0]
005e2b7c  57 1e 8d e2                                      add r1, sp, #0x570
005e2b80  06 00 a0 e1                                      mov r0, r6
005e2b84  03 30 8f e0                                      add r3, pc, r3
005e2b88  0c 10 81 e2                                      add r1, r1, #0xc
005e2b8c  7c 35 8d e5                                      str r3, [sp, #0x57c]
005e2b90  80 55 8d e5                                      str r5, [sp, #0x580]
005e2b94  66 fd ff eb                                      bl #0x5e2134
005e2b98  dc 35 1f e5                                      ldr r3, [pc, #-0x5dc]
005e2b9c  57 1e 8d e2                                      add r1, sp, #0x570
005e2ba0  06 00 a0 e1                                      mov r0, r6
005e2ba4  03 30 8f e0                                      add r3, pc, r3
005e2ba8  04 10 81 e2                                      add r1, r1, #4
005e2bac  74 35 8d e5                                      str r3, [sp, #0x574]
005e2bb0  78 55 8d e5                                      str r5, [sp, #0x578]
005e2bb4  5e fd ff eb                                      bl #0x5e2134
005e2bb8  f8 35 1f e5                                      ldr r3, [pc, #-0x5f8]
005e2bbc  56 1e 8d e2                                      add r1, sp, #0x560
005e2bc0  06 00 a0 e1                                      mov r0, r6
005e2bc4  03 30 8f e0                                      add r3, pc, r3
005e2bc8  0c 10 81 e2                                      add r1, r1, #0xc
005e2bcc  6c 35 8d e5                                      str r3, [sp, #0x56c]
005e2bd0  70 55 8d e5                                      str r5, [sp, #0x570]
005e2bd4  56 fd ff eb                                      bl #0x5e2134
005e2bd8  14 36 1f e5                                      ldr r3, [pc, #-0x614]
005e2bdc  56 1e 8d e2                                      add r1, sp, #0x560
005e2be0  06 00 a0 e1                                      mov r0, r6
005e2be4  03 30 8f e0                                      add r3, pc, r3
005e2be8  04 10 81 e2                                      add r1, r1, #4
005e2bec  64 35 8d e5                                      str r3, [sp, #0x564]
005e2bf0  68 55 8d e5                                      str r5, [sp, #0x568]
005e2bf4  4e fd ff eb                                      bl #0x5e2134
005e2bf8  30 36 1f e5                                      ldr r3, [pc, #-0x630]
005e2bfc  55 1e 8d e2                                      add r1, sp, #0x550
005e2c00  06 00 a0 e1                                      mov r0, r6
005e2c04  03 30 8f e0                                      add r3, pc, r3
005e2c08  0c 10 81 e2                                      add r1, r1, #0xc
005e2c0c  5c 35 8d e5                                      str r3, [sp, #0x55c]
005e2c10  60 55 8d e5                                      str r5, [sp, #0x560]
005e2c14  46 fd ff eb                                      bl #0x5e2134
005e2c18  4c 36 1f e5                                      ldr r3, [pc, #-0x64c]
005e2c1c  55 1e 8d e2                                      add r1, sp, #0x550
005e2c20  06 00 a0 e1                                      mov r0, r6
005e2c24  03 30 8f e0                                      add r3, pc, r3
005e2c28  04 10 81 e2                                      add r1, r1, #4
005e2c2c  54 35 8d e5                                      str r3, [sp, #0x554]
005e2c30  58 55 8d e5                                      str r5, [sp, #0x558]
005e2c34  3e fd ff eb                                      bl #0x5e2134
005e2c38  68 36 1f e5                                      ldr r3, [pc, #-0x668]
005e2c3c  15 1d 8d e2                                      add r1, sp, #0x540
005e2c40  06 00 a0 e1                                      mov r0, r6
005e2c44  03 30 8f e0                                      add r3, pc, r3
005e2c48  0c 10 81 e2                                      add r1, r1, #0xc
005e2c4c  4c 35 8d e5                                      str r3, [sp, #0x54c]
005e2c50  50 55 8d e5                                      str r5, [sp, #0x550]
005e2c54  36 fd ff eb                                      bl #0x5e2134
005e2c58  84 36 1f e5                                      ldr r3, [pc, #-0x684]
005e2c5c  15 1d 8d e2                                      add r1, sp, #0x540
005e2c60  06 00 a0 e1                                      mov r0, r6
005e2c64  03 30 8f e0                                      add r3, pc, r3
005e2c68  04 10 81 e2                                      add r1, r1, #4
005e2c6c  44 35 8d e5                                      str r3, [sp, #0x544]
005e2c70  48 55 8d e5                                      str r5, [sp, #0x548]
005e2c74  2e fd ff eb                                      bl #0x5e2134
005e2c78  a0 36 1f e5                                      ldr r3, [pc, #-0x6a0]
005e2c7c  53 1e 8d e2                                      add r1, sp, #0x530
005e2c80  2f 50 a0 e3                                      mov r5, #0x2f
005e2c84  06 00 a0 e1                                      mov r0, r6
005e2c88  03 30 8f e0                                      add r3, pc, r3
005e2c8c  0c 10 81 e2                                      add r1, r1, #0xc
005e2c90  3c 35 8d e5                                      str r3, [sp, #0x53c]
005e2c94  40 55 8d e5                                      str r5, [sp, #0x540]
005e2c98  25 fd ff eb                                      bl #0x5e2134
005e2c9c  c0 36 1f e5                                      ldr r3, [pc, #-0x6c0]
005e2ca0  53 1e 8d e2                                      add r1, sp, #0x530
005e2ca4  06 00 a0 e1                                      mov r0, r6
005e2ca8  03 30 8f e0                                      add r3, pc, r3
005e2cac  04 10 81 e2                                      add r1, r1, #4
005e2cb0  34 35 8d e5                                      str r3, [sp, #0x534]
005e2cb4  38 55 8d e5                                      str r5, [sp, #0x538]
005e2cb8  1d fd ff eb                                      bl #0x5e2134
005e2cbc  dc 36 1f e5                                      ldr r3, [pc, #-0x6dc]
005e2cc0  52 1e 8d e2                                      add r1, sp, #0x520
005e2cc4  06 00 a0 e1                                      mov r0, r6
005e2cc8  03 30 8f e0                                      add r3, pc, r3
005e2ccc  0c 10 81 e2                                      add r1, r1, #0xc
005e2cd0  2c 35 8d e5                                      str r3, [sp, #0x52c]
005e2cd4  30 55 8d e5                                      str r5, [sp, #0x530]
005e2cd8  15 fd ff eb                                      bl #0x5e2134
005e2cdc  f8 36 1f e5                                      ldr r3, [pc, #-0x6f8]
005e2ce0  52 1e 8d e2                                      add r1, sp, #0x520
005e2ce4  36 50 a0 e3                                      mov r5, #0x36
005e2ce8  06 00 a0 e1                                      mov r0, r6
005e2cec  03 30 8f e0                                      add r3, pc, r3
005e2cf0  04 10 81 e2                                      add r1, r1, #4
005e2cf4  24 35 8d e5                                      str r3, [sp, #0x524]
005e2cf8  28 55 8d e5                                      str r5, [sp, #0x528]
005e2cfc  0c fd ff eb                                      bl #0x5e2134
005e2d00  18 37 1f e5                                      ldr r3, [pc, #-0x718]
005e2d04  51 1e 8d e2                                      add r1, sp, #0x510
005e2d08  06 00 a0 e1                                      mov r0, r6
005e2d0c  03 30 8f e0                                      add r3, pc, r3
005e2d10  0c 10 81 e2                                      add r1, r1, #0xc
005e2d14  1c 35 8d e5                                      str r3, [sp, #0x51c]
005e2d18  20 55 8d e5                                      str r5, [sp, #0x520]
005e2d1c  04 fd ff eb                                      bl #0x5e2134
005e2d20  34 37 1f e5                                      ldr r3, [pc, #-0x734]
005e2d24  51 1e 8d e2                                      add r1, sp, #0x510
005e2d28  06 00 a0 e1                                      mov r0, r6
005e2d2c  03 30 8f e0                                      add r3, pc, r3
005e2d30  04 10 81 e2                                      add r1, r1, #4
005e2d34  14 35 8d e5                                      str r3, [sp, #0x514]
005e2d38  18 55 8d e5                                      str r5, [sp, #0x518]
005e2d3c  fc fc ff eb                                      bl #0x5e2134
005e2d40  50 17 1f e5                                      ldr r1, [pc, #-0x750]
005e2d44  73 2e 8d e2                                      add r2, sp, #0x730
005e2d48  2c 50 22 e5                                      str r5, [r2, #-0x2c]!
005e2d4c  01 10 8f e0                                      add r1, pc, r1
005e2d50  06 00 a0 e1                                      mov r0, r6
005e2d54  34 fd ff eb                                      bl #0x5e222c
005e2d58  64 37 1f e5                                      ldr r3, [pc, #-0x764]
005e2d5c  05 1c 8d e2                                      add r1, sp, #0x500
005e2d60  0c 10 81 e2                                      add r1, r1, #0xc
005e2d64  03 30 8f e0                                      add r3, pc, r3
005e2d68  00 60 a0 e1                                      mov r6, r0
005e2d6c  10 55 8d e5                                      str r5, [sp, #0x510]
005e2d70  0c 35 8d e5                                      str r3, [sp, #0x50c]
005e2d74  ee fc ff eb                                      bl #0x5e2134
005e2d78  80 37 1f e5                                      ldr r3, [pc, #-0x780]
005e2d7c  05 1c 8d e2                                      add r1, sp, #0x500
005e2d80  2a 50 a0 e3                                      mov r5, #0x2a
005e2d84  06 00 a0 e1                                      mov r0, r6
005e2d88  03 30 8f e0                                      add r3, pc, r3
005e2d8c  04 10 81 e2                                      add r1, r1, #4
005e2d90  04 35 8d e5                                      str r3, [sp, #0x504]
005e2d94  08 55 8d e5                                      str r5, [sp, #0x508]
005e2d98  e5 fc ff eb                                      bl #0x5e2134
005e2d9c  a0 37 1f e5                                      ldr r3, [pc, #-0x7a0]
005e2da0  4f 1e 8d e2                                      add r1, sp, #0x4f0
005e2da4  06 00 a0 e1                                      mov r0, r6
005e2da8  03 30 8f e0                                      add r3, pc, r3
005e2dac  0c 10 81 e2                                      add r1, r1, #0xc
005e2db0  fc 34 8d e5                                      str r3, [sp, #0x4fc]
005e2db4  00 55 8d e5                                      str r5, [sp, #0x500]
005e2db8  dd fc ff eb                                      bl #0x5e2134
005e2dbc  bc 37 1f e5                                      ldr r3, [pc, #-0x7bc]
005e2dc0  4f 1e 8d e2                                      add r1, sp, #0x4f0
005e2dc4  06 00 a0 e1                                      mov r0, r6
005e2dc8  03 30 8f e0                                      add r3, pc, r3
005e2dcc  04 10 81 e2                                      add r1, r1, #4
005e2dd0  f4 34 8d e5                                      str r3, [sp, #0x4f4]
005e2dd4  f8 54 8d e5                                      str r5, [sp, #0x4f8]
005e2dd8  d5 fc ff eb                                      bl #0x5e2134
005e2ddc  d8 37 1f e5                                      ldr r3, [pc, #-0x7d8]
005e2de0  4e 1e 8d e2                                      add r1, sp, #0x4e0
005e2de4  06 00 a0 e1                                      mov r0, r6
005e2de8  03 30 8f e0                                      add r3, pc, r3
005e2dec  0c 10 81 e2                                      add r1, r1, #0xc
005e2df0  ec 34 8d e5                                      str r3, [sp, #0x4ec]
005e2df4  f0 54 8d e5                                      str r5, [sp, #0x4f0]
005e2df8  cd fc ff eb                                      bl #0x5e2134
005e2dfc  f4 37 1f e5                                      ldr r3, [pc, #-0x7f4]
005e2e00  4e 1e 8d e2                                      add r1, sp, #0x4e0
005e2e04  06 00 a0 e1                                      mov r0, r6
005e2e08  03 30 8f e0                                      add r3, pc, r3
005e2e0c  04 10 81 e2                                      add r1, r1, #4
005e2e10  e4 34 8d e5                                      str r3, [sp, #0x4e4]
005e2e14  e8 54 8d e5                                      str r5, [sp, #0x4e8]
005e2e18  c5 fc ff eb                                      bl #0x5e2134
005e2e1c  10 38 1f e5                                      ldr r3, [pc, #-0x810]
005e2e20  4d 1e 8d e2                                      add r1, sp, #0x4d0
005e2e24  2e 50 a0 e3                                      mov r5, #0x2e
005e2e28  06 00 a0 e1                                      mov r0, r6
005e2e2c  03 30 8f e0                                      add r3, pc, r3
005e2e30  0c 10 81 e2                                      add r1, r1, #0xc
005e2e34  dc 34 8d e5                                      str r3, [sp, #0x4dc]
005e2e38  e0 54 8d e5                                      str r5, [sp, #0x4e0]
005e2e3c  bc fc ff eb                                      bl #0x5e2134
005e2e40  30 38 1f e5                                      ldr r3, [pc, #-0x830]
005e2e44  4d 1e 8d e2                                      add r1, sp, #0x4d0
005e2e48  06 00 a0 e1                                      mov r0, r6
005e2e4c  03 30 8f e0                                      add r3, pc, r3
005e2e50  04 10 81 e2                                      add r1, r1, #4
005e2e54  d4 34 8d e5                                      str r3, [sp, #0x4d4]
005e2e58  d8 54 8d e5                                      str r5, [sp, #0x4d8]
005e2e5c  b4 fc ff eb                                      bl #0x5e2134
005e2e60  4c 38 1f e5                                      ldr r3, [pc, #-0x84c]
005e2e64  13 1d 8d e2                                      add r1, sp, #0x4c0
005e2e68  06 00 a0 e1                                      mov r0, r6
005e2e6c  03 30 8f e0                                      add r3, pc, r3
005e2e70  0c 10 81 e2                                      add r1, r1, #0xc
005e2e74  cc 34 8d e5                                      str r3, [sp, #0x4cc]
005e2e78  d0 54 8d e5                                      str r5, [sp, #0x4d0]
005e2e7c  ac fc ff eb                                      bl #0x5e2134
005e2e80  68 18 1f e5                                      ldr r1, [pc, #-0x868]
005e2e84  2d 50 a0 e3                                      mov r5, #0x2d
005e2e88  73 2e 8d e2                                      add r2, sp, #0x730
005e2e8c  30 50 22 e5                                      str r5, [r2, #-0x30]!
005e2e90  01 10 8f e0                                      add r1, pc, r1
005e2e94  06 00 a0 e1                                      mov r0, r6
005e2e98  b7 fc ff eb                                      bl #0x5e217c
005e2e9c  80 18 1f e5                                      ldr r1, [pc, #-0x880]
005e2ea0  73 2e 8d e2                                      add r2, sp, #0x730
005e2ea4  34 50 22 e5                                      str r5, [r2, #-0x34]!
005e2ea8  01 10 8f e0                                      add r1, pc, r1
005e2eac  b2 fc ff eb                                      bl #0x5e217c
005e2eb0  90 78 1f e5                                      ldr r7, [pc, #-0x890]
005e2eb4  13 1d 8d e2                                      add r1, sp, #0x4c0
005e2eb8  04 10 81 e2                                      add r1, r1, #4
005e2ebc  07 70 8f e0                                      add r7, pc, r7
005e2ec0  00 60 a0 e1                                      mov r6, r0
005e2ec4  c4 74 8d e5                                      str r7, [sp, #0x4c4]
005e2ec8  c8 54 8d e5                                      str r5, [sp, #0x4c8]
005e2ecc  98 fc ff eb                                      bl #0x5e2134
005e2ed0  ac 38 1f e5                                      ldr r3, [pc, #-0x8ac]
005e2ed4  4b 1e 8d e2                                      add r1, sp, #0x4b0
005e2ed8  06 00 a0 e1                                      mov r0, r6
005e2edc  03 30 8f e0                                      add r3, pc, r3
005e2ee0  0c 10 81 e2                                      add r1, r1, #0xc
005e2ee4  bc 34 8d e5                                      str r3, [sp, #0x4bc]
005e2ee8  c0 54 8d e5                                      str r5, [sp, #0x4c0]
005e2eec  90 fc ff eb                                      bl #0x5e2134
005e2ef0  4b 1e 8d e2                                      add r1, sp, #0x4b0
005e2ef4  06 00 a0 e1                                      mov r0, r6
005e2ef8  04 10 81 e2                                      add r1, r1, #4
005e2efc  b4 74 8d e5                                      str r7, [sp, #0x4b4]
005e2f00  b8 54 8d e5                                      str r5, [sp, #0x4b8]
005e2f04  8a fc ff eb                                      bl #0x5e2134
005e2f08  e0 38 1f e5                                      ldr r3, [pc, #-0x8e0]
005e2f0c  4a 1e 8d e2                                      add r1, sp, #0x4a0
005e2f10  06 00 a0 e1                                      mov r0, r6
005e2f14  03 30 8f e0                                      add r3, pc, r3
005e2f18  0c 10 81 e2                                      add r1, r1, #0xc
005e2f1c  ac 34 8d e5                                      str r3, [sp, #0x4ac]
005e2f20  b0 54 8d e5                                      str r5, [sp, #0x4b0]
005e2f24  82 fc ff eb                                      bl #0x5e2134
005e2f28  fc 18 1f e5                                      ldr r1, [pc, #-0x8fc]
005e2f2c  26 50 a0 e3                                      mov r5, #0x26
005e2f30  73 2e 8d e2                                      add r2, sp, #0x730
005e2f34  38 50 22 e5                                      str r5, [r2, #-0x38]!
005e2f38  01 10 8f e0                                      add r1, pc, r1
005e2f3c  06 00 a0 e1                                      mov r0, r6
005e2f40  a3 fc ff eb                                      bl #0x5e21d4
005e2f44  14 19 1f e5                                      ldr r1, [pc, #-0x914]
005e2f48  73 2e 8d e2                                      add r2, sp, #0x730
005e2f4c  3c 50 22 e5                                      str r5, [r2, #-0x3c]!
005e2f50  01 10 8f e0                                      add r1, pc, r1
005e2f54  9e fc ff eb                                      bl #0x5e21d4
005e2f58  24 39 1f e5                                      ldr r3, [pc, #-0x924]
005e2f5c  4a 1e 8d e2                                      add r1, sp, #0x4a0
005e2f60  04 10 81 e2                                      add r1, r1, #4
005e2f64  03 30 8f e0                                      add r3, pc, r3
005e2f68  00 60 a0 e1                                      mov r6, r0
005e2f6c  a8 54 8d e5                                      str r5, [sp, #0x4a8]
005e2f70  a4 34 8d e5                                      str r3, [sp, #0x4a4]
005e2f74  6e fc ff eb                                      bl #0x5e2134
005e2f78  40 39 1f e5                                      ldr r3, [pc, #-0x940]
005e2f7c  49 1e 8d e2                                      add r1, sp, #0x490
005e2f80  06 00 a0 e1                                      mov r0, r6
005e2f84  03 30 8f e0                                      add r3, pc, r3
005e2f88  0c 10 81 e2                                      add r1, r1, #0xc
005e2f8c  9c 34 8d e5                                      str r3, [sp, #0x49c]
005e2f90  a0 54 8d e5                                      str r5, [sp, #0x4a0]
005e2f94  66 fc ff eb                                      bl #0x5e2134
005e2f98  5c 39 1f e5                                      ldr r3, [pc, #-0x95c]
005e2f9c  49 1e 8d e2                                      add r1, sp, #0x490
005e2fa0  06 00 a0 e1                                      mov r0, r6
005e2fa4  03 30 8f e0                                      add r3, pc, r3
005e2fa8  04 10 81 e2                                      add r1, r1, #4
005e2fac  94 34 8d e5                                      str r3, [sp, #0x494]
005e2fb0  98 54 8d e5                                      str r5, [sp, #0x498]
005e2fb4  5e fc ff eb                                      bl #0x5e2134
005e2fb8  78 39 1f e5                                      ldr r3, [pc, #-0x978]
005e2fbc  12 1d 8d e2                                      add r1, sp, #0x480
005e2fc0  06 00 a0 e1                                      mov r0, r6
005e2fc4  03 30 8f e0                                      add r3, pc, r3
005e2fc8  0c 10 81 e2                                      add r1, r1, #0xc
005e2fcc  8c 34 8d e5                                      str r3, [sp, #0x48c]
005e2fd0  90 54 8d e5                                      str r5, [sp, #0x490]
005e2fd4  56 fc ff eb                                      bl #0x5e2134
005e2fd8  94 19 1f e5                                      ldr r1, [pc, #-0x994]
005e2fdc  73 2e 8d e2                                      add r2, sp, #0x730
005e2fe0  24 50 a0 e3                                      mov r5, #0x24
005e2fe4  40 50 22 e5                                      str r5, [r2, #-0x40]!
005e2fe8  01 10 8f e0                                      add r1, pc, r1
005e2fec  06 00 a0 e1                                      mov r0, r6
005e2ff0  61 fc ff eb                                      bl #0x5e217c
005e2ff4  ac 39 1f e5                                      ldr r3, [pc, #-0x9ac]
005e2ff8  12 1d 8d e2                                      add r1, sp, #0x480
005e2ffc  04 10 81 e2                                      add r1, r1, #4
005e3000  03 30 8f e0                                      add r3, pc, r3
005e3004  00 60 a0 e1                                      mov r6, r0
005e3008  88 54 8d e5                                      str r5, [sp, #0x488]
005e300c  84 34 8d e5                                      str r3, [sp, #0x484]
005e3010  47 fc ff eb                                      bl #0x5e2134
005e3014  c8 39 1f e5                                      ldr r3, [pc, #-0x9c8]
005e3018  47 1e 8d e2                                      add r1, sp, #0x470
005e301c  06 00 a0 e1                                      mov r0, r6
005e3020  03 30 8f e0                                      add r3, pc, r3
005e3024  0c 10 81 e2                                      add r1, r1, #0xc
005e3028  7c 34 8d e5                                      str r3, [sp, #0x47c]
005e302c  80 54 8d e5                                      str r5, [sp, #0x480]
005e3030  3f fc ff eb                                      bl #0x5e2134
005e3034  e4 39 1f e5                                      ldr r3, [pc, #-0x9e4]
005e3038  47 1e 8d e2                                      add r1, sp, #0x470
005e303c  28 50 a0 e3                                      mov r5, #0x28
005e3040  06 00 a0 e1                                      mov r0, r6
005e3044  03 30 8f e0                                      add r3, pc, r3
005e3048  04 10 81 e2                                      add r1, r1, #4
005e304c  74 34 8d e5                                      str r3, [sp, #0x474]
005e3050  78 54 8d e5                                      str r5, [sp, #0x478]
005e3054  36 fc ff eb                                      bl #0x5e2134
005e3058  04 3a 1f e5                                      ldr r3, [pc, #-0xa04]
005e305c  46 1e 8d e2                                      add r1, sp, #0x460
005e3060  06 00 a0 e1                                      mov r0, r6
005e3064  03 30 8f e0                                      add r3, pc, r3
005e3068  0c 10 81 e2                                      add r1, r1, #0xc
005e306c  6c 34 8d e5                                      str r3, [sp, #0x46c]
005e3070  70 54 8d e5                                      str r5, [sp, #0x470]
005e3074  2e fc ff eb                                      bl #0x5e2134
005e3078  20 3a 1f e5                                      ldr r3, [pc, #-0xa20]
005e307c  46 1e 8d e2                                      add r1, sp, #0x460
005e3080  06 00 a0 e1                                      mov r0, r6
005e3084  03 30 8f e0                                      add r3, pc, r3
005e3088  04 10 81 e2                                      add r1, r1, #4
005e308c  64 34 8d e5                                      str r3, [sp, #0x464]
005e3090  68 54 8d e5                                      str r5, [sp, #0x468]
005e3094  26 fc ff eb                                      bl #0x5e2134
005e3098  3c 3a 1f e5                                      ldr r3, [pc, #-0xa3c]
005e309c  45 1e 8d e2                                      add r1, sp, #0x450
005e30a0  06 00 a0 e1                                      mov r0, r6
005e30a4  03 30 8f e0                                      add r3, pc, r3
005e30a8  0c 10 81 e2                                      add r1, r1, #0xc
005e30ac  5c 34 8d e5                                      str r3, [sp, #0x45c]
005e30b0  60 54 8d e5                                      str r5, [sp, #0x460]
005e30b4  1e fc ff eb                                      bl #0x5e2134
005e30b8  58 3a 1f e5                                      ldr r3, [pc, #-0xa58]
005e30bc  45 1e 8d e2                                      add r1, sp, #0x450
005e30c0  06 00 a0 e1                                      mov r0, r6
005e30c4  03 30 8f e0                                      add r3, pc, r3
005e30c8  04 10 81 e2                                      add r1, r1, #4
005e30cc  54 34 8d e5                                      str r3, [sp, #0x454]
005e30d0  58 54 8d e5                                      str r5, [sp, #0x458]
005e30d4  16 fc ff eb                                      bl #0x5e2134
005e30d8  74 3a 1f e5                                      ldr r3, [pc, #-0xa74]
005e30dc  11 1d 8d e2                                      add r1, sp, #0x440
005e30e0  06 00 a0 e1                                      mov r0, r6
005e30e4  03 30 8f e0                                      add r3, pc, r3
005e30e8  0c 10 81 e2                                      add r1, r1, #0xc
005e30ec  4c 34 8d e5                                      str r3, [sp, #0x44c]
005e30f0  50 54 8d e5                                      str r5, [sp, #0x450]
005e30f4  0e fc ff eb                                      bl #0x5e2134
005e30f8  90 1a 1f e5                                      ldr r1, [pc, #-0xa90]
005e30fc  73 2e 8d e2                                      add r2, sp, #0x730
005e3100  44 50 22 e5                                      str r5, [r2, #-0x44]!
005e3104  01 10 8f e0                                      add r1, pc, r1
005e3108  06 00 a0 e1                                      mov r0, r6
005e310c  30 fc ff eb                                      bl #0x5e21d4
005e3110  a4 3a 1f e5                                      ldr r3, [pc, #-0xaa4]
005e3114  11 1d 8d e2                                      add r1, sp, #0x440
005e3118  04 10 81 e2                                      add r1, r1, #4
005e311c  03 30 8f e0                                      add r3, pc, r3
005e3120  00 60 a0 e1                                      mov r6, r0
005e3124  48 54 8d e5                                      str r5, [sp, #0x448]
005e3128  44 34 8d e5                                      str r3, [sp, #0x444]
005e312c  00 fc ff eb                                      bl #0x5e2134
005e3130  c0 3a 1f e5                                      ldr r3, [pc, #-0xac0]
005e3134  43 1e 8d e2                                      add r1, sp, #0x430
005e3138  06 00 a0 e1                                      mov r0, r6
005e313c  03 30 8f e0                                      add r3, pc, r3
005e3140  0c 10 81 e2                                      add r1, r1, #0xc
005e3144  3c 34 8d e5                                      str r3, [sp, #0x43c]
005e3148  40 54 8d e5                                      str r5, [sp, #0x440]
005e314c  f8 fb ff eb                                      bl #0x5e2134
005e3150  dc 1a 1f e5                                      ldr r1, [pc, #-0xadc]
005e3154  73 2e 8d e2                                      add r2, sp, #0x730
005e3158  48 50 22 e5                                      str r5, [r2, #-0x48]!
005e315c  01 10 8f e0                                      add r1, pc, r1
005e3160  06 00 a0 e1                                      mov r0, r6
005e3164  1a fc ff eb                                      bl #0x5e21d4
005e3168  f0 1a 1f e5                                      ldr r1, [pc, #-0xaf0]
005e316c  25 50 a0 e3                                      mov r5, #0x25
005e3170  73 2e 8d e2                                      add r2, sp, #0x730
005e3174  4c 50 22 e5                                      str r5, [r2, #-0x4c]!
005e3178  01 10 8f e0                                      add r1, pc, r1
005e317c  2a fc ff eb                                      bl #0x5e222c
005e3180  04 3b 1f e5                                      ldr r3, [pc, #-0xb04]
005e3184  43 1e 8d e2                                      add r1, sp, #0x430
005e3188  04 10 81 e2                                      add r1, r1, #4
005e318c  03 30 8f e0                                      add r3, pc, r3
005e3190  00 60 a0 e1                                      mov r6, r0
005e3194  34 34 8d e5                                      str r3, [sp, #0x434]
005e3198  38 54 8d e5                                      str r5, [sp, #0x438]
005e319c  e4 fb ff eb                                      bl #0x5e2134
005e31a0  20 1b 1f e5                                      ldr r1, [pc, #-0xb20]
005e31a4  73 2e 8d e2                                      add r2, sp, #0x730
005e31a8  50 50 22 e5                                      str r5, [r2, #-0x50]!
005e31ac  01 10 8f e0                                      add r1, pc, r1
005e31b0  06 00 a0 e1                                      mov r0, r6
005e31b4  f0 fb ff eb                                      bl #0x5e217c
005e31b8  34 3b 1f e5                                      ldr r3, [pc, #-0xb34]
005e31bc  42 1e 8d e2                                      add r1, sp, #0x420
005e31c0  33 50 a0 e3                                      mov r5, #0x33
005e31c4  03 30 8f e0                                      add r3, pc, r3
005e31c8  0c 10 81 e2                                      add r1, r1, #0xc
005e31cc  00 60 a0 e1                                      mov r6, r0
005e31d0  2c 34 8d e5                                      str r3, [sp, #0x42c]
005e31d4  30 54 8d e5                                      str r5, [sp, #0x430]
005e31d8  d5 fb ff eb                                      bl #0x5e2134
005e31dc  54 1b 1f e5                                      ldr r1, [pc, #-0xb54]
005e31e0  73 2e 8d e2                                      add r2, sp, #0x730
005e31e4  54 50 22 e5                                      str r5, [r2, #-0x54]!
005e31e8  01 10 8f e0                                      add r1, pc, r1
005e31ec  06 00 a0 e1                                      mov r0, r6
005e31f0  f7 fb ff eb                                      bl #0x5e21d4
005e31f4  68 3b 1f e5                                      ldr r3, [pc, #-0xb68]
005e31f8  42 1e 8d e2                                      add r1, sp, #0x420
005e31fc  04 10 81 e2                                      add r1, r1, #4
005e3200  03 30 8f e0                                      add r3, pc, r3
005e3204  00 60 a0 e1                                      mov r6, r0
005e3208  28 54 8d e5                                      str r5, [sp, #0x428]
005e320c  24 34 8d e5                                      str r3, [sp, #0x424]
005e3210  c7 fb ff eb                                      bl #0x5e2134
005e3214  84 3b 1f e5                                      ldr r3, [pc, #-0xb84]
005e3218  41 1e 8d e2                                      add r1, sp, #0x410
005e321c  06 00 a0 e1                                      mov r0, r6
005e3220  03 30 8f e0                                      add r3, pc, r3
005e3224  0c 10 81 e2                                      add r1, r1, #0xc
005e3228  1c 34 8d e5                                      str r3, [sp, #0x41c]
005e322c  20 54 8d e5                                      str r5, [sp, #0x420]
005e3230  bf fb ff eb                                      bl #0x5e2134
005e3234  a0 3b 1f e5                                      ldr r3, [pc, #-0xba0]
005e3238  41 1e 8d e2                                      add r1, sp, #0x410
005e323c  2c 50 a0 e3                                      mov r5, #0x2c
005e3240  06 00 a0 e1                                      mov r0, r6
005e3244  03 30 8f e0                                      add r3, pc, r3
005e3248  04 10 81 e2                                      add r1, r1, #4
005e324c  14 34 8d e5                                      str r3, [sp, #0x414]
005e3250  18 54 8d e5                                      str r5, [sp, #0x418]
005e3254  b6 fb ff eb                                      bl #0x5e2134
005e3258  c0 3b 1f e5                                      ldr r3, [pc, #-0xbc0]
005e325c  01 1b 8d e2                                      add r1, sp, #0x400
005e3260  06 00 a0 e1                                      mov r0, r6
005e3264  03 30 8f e0                                      add r3, pc, r3
005e3268  0c 10 81 e2                                      add r1, r1, #0xc
005e326c  0c 34 8d e5                                      str r3, [sp, #0x40c]
005e3270  10 54 8d e5                                      str r5, [sp, #0x410]
005e3274  ae fb ff eb                                      bl #0x5e2134
005e3278  dc 3b 1f e5                                      ldr r3, [pc, #-0xbdc]
005e327c  01 1b 8d e2                                      add r1, sp, #0x400
005e3280  06 00 a0 e1                                      mov r0, r6
005e3284  03 30 8f e0                                      add r3, pc, r3
005e3288  04 10 81 e2                                      add r1, r1, #4
005e328c  04 34 8d e5                                      str r3, [sp, #0x404]
005e3290  08 54 8d e5                                      str r5, [sp, #0x408]
005e3294  a6 fb ff eb                                      bl #0x5e2134
005e3298  f8 3b 1f e5                                      ldr r3, [pc, #-0xbf8]
005e329c  06 00 a0 e1                                      mov r0, r6
005e32a0  ff 1f 8d e2                                      add r1, sp, #0x3fc
005e32a4  03 30 8f e0                                      add r3, pc, r3
005e32a8  fc 33 8d e5                                      str r3, [sp, #0x3fc]
005e32ac  00 54 8d e5                                      str r5, [sp, #0x400]
005e32b0  9f fb ff eb                                      bl #0x5e2134
005e32b4  10 3c 1f e5                                      ldr r3, [pc, #-0xc10]
005e32b8  06 00 a0 e1                                      mov r0, r6
005e32bc  fd 1f 8d e2                                      add r1, sp, #0x3f4
005e32c0  03 30 8f e0                                      add r3, pc, r3
005e32c4  f4 33 8d e5                                      str r3, [sp, #0x3f4]
005e32c8  f8 53 8d e5                                      str r5, [sp, #0x3f8]
005e32cc  98 fb ff eb                                      bl #0x5e2134
005e32d0  28 3c 1f e5                                      ldr r3, [pc, #-0xc28]
005e32d4  06 00 a0 e1                                      mov r0, r6
005e32d8  fb 1f 8d e2                                      add r1, sp, #0x3ec
005e32dc  03 30 8f e0                                      add r3, pc, r3
005e32e0  ec 33 8d e5                                      str r3, [sp, #0x3ec]
005e32e4  f0 53 8d e5                                      str r5, [sp, #0x3f0]
005e32e8  91 fb ff eb                                      bl #0x5e2134
005e32ec  40 3c 1f e5                                      ldr r3, [pc, #-0xc40]
005e32f0  06 00 a0 e1                                      mov r0, r6
005e32f4  f9 1f 8d e2                                      add r1, sp, #0x3e4
005e32f8  03 30 8f e0                                      add r3, pc, r3
005e32fc  e4 33 8d e5                                      str r3, [sp, #0x3e4]
005e3300  e8 53 8d e5                                      str r5, [sp, #0x3e8]
005e3304  8a fb ff eb                                      bl #0x5e2134
005e3308  58 3c 1f e5                                      ldr r3, [pc, #-0xc58]
005e330c  06 00 a0 e1                                      mov r0, r6
005e3310  f7 1f 8d e2                                      add r1, sp, #0x3dc
005e3314  03 30 8f e0                                      add r3, pc, r3
005e3318  dc 33 8d e5                                      str r3, [sp, #0x3dc]
005e331c  e0 53 8d e5                                      str r5, [sp, #0x3e0]
005e3320  83 fb ff eb                                      bl #0x5e2134
005e3324  70 3c 1f e5                                      ldr r3, [pc, #-0xc70]
005e3328  06 00 a0 e1                                      mov r0, r6
005e332c  f5 1f 8d e2                                      add r1, sp, #0x3d4
005e3330  03 30 8f e0                                      add r3, pc, r3
005e3334  d4 33 8d e5                                      str r3, [sp, #0x3d4]
005e3338  d8 53 8d e5                                      str r5, [sp, #0x3d8]
005e333c  7c fb ff eb                                      bl #0x5e2134
005e3340  88 3c 1f e5                                      ldr r3, [pc, #-0xc88]
005e3344  06 00 a0 e1                                      mov r0, r6
005e3348  f3 1f 8d e2                                      add r1, sp, #0x3cc
005e334c  03 30 8f e0                                      add r3, pc, r3
005e3350  cc 33 8d e5                                      str r3, [sp, #0x3cc]
005e3354  d0 53 8d e5                                      str r5, [sp, #0x3d0]
005e3358  75 fb ff eb                                      bl #0x5e2134
005e335c  a0 3c 1f e5                                      ldr r3, [pc, #-0xca0]
005e3360  37 50 a0 e3                                      mov r5, #0x37
005e3364  06 00 a0 e1                                      mov r0, r6
005e3368  03 30 8f e0                                      add r3, pc, r3
005e336c  f1 1f 8d e2                                      add r1, sp, #0x3c4
005e3370  c4 33 8d e5                                      str r3, [sp, #0x3c4]
005e3374  c8 53 8d e5                                      str r5, [sp, #0x3c8]
005e3378  6d fb ff eb                                      bl #0x5e2134
005e337c  bc 3c 1f e5                                      ldr r3, [pc, #-0xcbc]
005e3380  06 00 a0 e1                                      mov r0, r6
005e3384  ef 1f 8d e2                                      add r1, sp, #0x3bc
005e3388  03 30 8f e0                                      add r3, pc, r3
005e338c  bc 33 8d e5                                      str r3, [sp, #0x3bc]
005e3390  c0 53 8d e5                                      str r5, [sp, #0x3c0]
005e3394  66 fb ff eb                                      bl #0x5e2134
005e3398  d4 3c 1f e5                                      ldr r3, [pc, #-0xcd4]
005e339c  06 00 a0 e1                                      mov r0, r6
005e33a0  ed 1f 8d e2                                      add r1, sp, #0x3b4
005e33a4  03 30 8f e0                                      add r3, pc, r3
005e33a8  b4 33 8d e5                                      str r3, [sp, #0x3b4]
005e33ac  b8 53 8d e5                                      str r5, [sp, #0x3b8]
005e33b0  5f fb ff eb                                      bl #0x5e2134
005e33b4  ec 3c 1f e5                                      ldr r3, [pc, #-0xcec]
005e33b8  06 00 a0 e1                                      mov r0, r6
005e33bc  eb 1f 8d e2                                      add r1, sp, #0x3ac
005e33c0  03 30 8f e0                                      add r3, pc, r3
005e33c4  ac 33 8d e5                                      str r3, [sp, #0x3ac]
005e33c8  b0 53 8d e5                                      str r5, [sp, #0x3b0]
005e33cc  58 fb ff eb                                      bl #0x5e2134
005e33d0  04 3d 1f e5                                      ldr r3, [pc, #-0xd04]
005e33d4  06 00 a0 e1                                      mov r0, r6
005e33d8  e9 1f 8d e2                                      add r1, sp, #0x3a4
005e33dc  03 30 8f e0                                      add r3, pc, r3
005e33e0  a4 33 8d e5                                      str r3, [sp, #0x3a4]
005e33e4  a8 53 8d e5                                      str r5, [sp, #0x3a8]
005e33e8  51 fb ff eb                                      bl #0x5e2134
005e33ec  1c 3d 1f e5                                      ldr r3, [pc, #-0xd1c]
005e33f0  30 50 a0 e3                                      mov r5, #0x30
005e33f4  06 00 a0 e1                                      mov r0, r6
005e33f8  03 30 8f e0                                      add r3, pc, r3
005e33fc  e7 1f 8d e2                                      add r1, sp, #0x39c
005e3400  9c 33 8d e5                                      str r3, [sp, #0x39c]
005e3404  a0 53 8d e5                                      str r5, [sp, #0x3a0]
005e3408  49 fb ff eb                                      bl #0x5e2134
005e340c  38 3d 1f e5                                      ldr r3, [pc, #-0xd38]
005e3410  06 00 a0 e1                                      mov r0, r6
005e3414  e5 1f 8d e2                                      add r1, sp, #0x394
005e3418  03 30 8f e0                                      add r3, pc, r3
005e341c  94 33 8d e5                                      str r3, [sp, #0x394]
005e3420  98 53 8d e5                                      str r5, [sp, #0x398]
005e3424  42 fb ff eb                                      bl #0x5e2134
005e3428  50 3d 1f e5                                      ldr r3, [pc, #-0xd50]
005e342c  06 00 a0 e1                                      mov r0, r6
005e3430  e3 1f 8d e2                                      add r1, sp, #0x38c
005e3434  03 30 8f e0                                      add r3, pc, r3
005e3438  8c 33 8d e5                                      str r3, [sp, #0x38c]
005e343c  90 53 8d e5                                      str r5, [sp, #0x390]
005e3440  3b fb ff eb                                      bl #0x5e2134
005e3444  68 3d 1f e5                                      ldr r3, [pc, #-0xd68]
005e3448  06 00 a0 e1                                      mov r0, r6
005e344c  e1 1f 8d e2                                      add r1, sp, #0x384
005e3450  03 30 8f e0                                      add r3, pc, r3
005e3454  84 33 8d e5                                      str r3, [sp, #0x384]
005e3458  88 53 8d e5                                      str r5, [sp, #0x388]
005e345c  34 fb ff eb                                      bl #0x5e2134
005e3460  80 3d 1f e5                                      ldr r3, [pc, #-0xd80]
005e3464  06 00 a0 e1                                      mov r0, r6
005e3468  df 1f 8d e2                                      add r1, sp, #0x37c
005e346c  03 30 8f e0                                      add r3, pc, r3
005e3470  7c 33 8d e5                                      str r3, [sp, #0x37c]
005e3474  80 53 8d e5                                      str r5, [sp, #0x380]
005e3478  2d fb ff eb                                      bl #0x5e2134
005e347c  98 3d 1f e5                                      ldr r3, [pc, #-0xd98]
005e3480  06 00 a0 e1                                      mov r0, r6
005e3484  dd 1f 8d e2                                      add r1, sp, #0x374
005e3488  03 30 8f e0                                      add r3, pc, r3
005e348c  74 33 8d e5                                      str r3, [sp, #0x374]
005e3490  78 53 8d e5                                      str r5, [sp, #0x378]
005e3494  26 fb ff eb                                      bl #0x5e2134
005e3498  b0 3d 1f e5                                      ldr r3, [pc, #-0xdb0]
005e349c  23 50 a0 e3                                      mov r5, #0x23
005e34a0  06 00 a0 e1                                      mov r0, r6
005e34a4  03 30 8f e0                                      add r3, pc, r3
005e34a8  db 1f 8d e2                                      add r1, sp, #0x36c
005e34ac  6c 33 8d e5                                      str r3, [sp, #0x36c]
005e34b0  70 53 8d e5                                      str r5, [sp, #0x370]
005e34b4  1e fb ff eb                                      bl #0x5e2134
005e34b8  cc 3d 1f e5                                      ldr r3, [pc, #-0xdcc]
005e34bc  06 00 a0 e1                                      mov r0, r6
005e34c0  d9 1f 8d e2                                      add r1, sp, #0x364
005e34c4  03 30 8f e0                                      add r3, pc, r3
005e34c8  64 33 8d e5                                      str r3, [sp, #0x364]
005e34cc  68 53 8d e5                                      str r5, [sp, #0x368]
005e34d0  17 fb ff eb                                      bl #0x5e2134
005e34d4  e4 3d 1f e5                                      ldr r3, [pc, #-0xde4]
005e34d8  06 00 a0 e1                                      mov r0, r6
005e34dc  d7 1f 8d e2                                      add r1, sp, #0x35c
005e34e0  03 30 8f e0                                      add r3, pc, r3
005e34e4  5c 33 8d e5                                      str r3, [sp, #0x35c]
005e34e8  60 53 8d e5                                      str r5, [sp, #0x360]
005e34ec  10 fb ff eb                                      bl #0x5e2134
005e34f0  fc 3d 1f e5                                      ldr r3, [pc, #-0xdfc]
005e34f4  06 00 a0 e1                                      mov r0, r6
005e34f8  d5 1f 8d e2                                      add r1, sp, #0x354
005e34fc  03 30 8f e0                                      add r3, pc, r3
005e3500  54 33 8d e5                                      str r3, [sp, #0x354]
005e3504  58 53 8d e5                                      str r5, [sp, #0x358]
005e3508  09 fb ff eb                                      bl #0x5e2134
005e350c  14 3e 1f e5                                      ldr r3, [pc, #-0xe14]
005e3510  29 50 a0 e3                                      mov r5, #0x29
005e3514  06 00 a0 e1                                      mov r0, r6
005e3518  03 30 8f e0                                      add r3, pc, r3
005e351c  d3 1f 8d e2                                      add r1, sp, #0x34c
005e3520  4c 33 8d e5                                      str r3, [sp, #0x34c]
005e3524  50 53 8d e5                                      str r5, [sp, #0x350]
005e3528  01 fb ff eb                                      bl #0x5e2134
005e352c  30 1e 1f e5                                      ldr r1, [pc, #-0xe30]
005e3530  73 2e 8d e2                                      add r2, sp, #0x730
005e3534  58 50 22 e5                                      str r5, [r2, #-0x58]!
005e3538  01 10 8f e0                                      add r1, pc, r1
005e353c  06 00 a0 e1                                      mov r0, r6
005e3540  0d fb ff eb                                      bl #0x5e217c
005e3544  44 3e 1f e5                                      ldr r3, [pc, #-0xe44]
005e3548  d1 1f 8d e2                                      add r1, sp, #0x344
005e354c  00 60 a0 e1                                      mov r6, r0
005e3550  03 30 8f e0                                      add r3, pc, r3
005e3554  48 53 8d e5                                      str r5, [sp, #0x348]
005e3558  44 33 8d e5                                      str r3, [sp, #0x344]
005e355c  f4 fa ff eb                                      bl #0x5e2134
005e3560  5c 3e 1f e5                                      ldr r3, [pc, #-0xe5c]
005e3564  06 00 a0 e1                                      mov r0, r6
005e3568  cf 1f 8d e2                                      add r1, sp, #0x33c
005e356c  03 30 8f e0                                      add r3, pc, r3
005e3570  3c 33 8d e5                                      str r3, [sp, #0x33c]
005e3574  40 53 8d e5                                      str r5, [sp, #0x340]
005e3578  ed fa ff eb                                      bl #0x5e2134
005e357c  74 3e 1f e5                                      ldr r3, [pc, #-0xe74]
005e3580  06 00 a0 e1                                      mov r0, r6
005e3584  cd 1f 8d e2                                      add r1, sp, #0x334
005e3588  03 30 8f e0                                      add r3, pc, r3
005e358c  34 33 8d e5                                      str r3, [sp, #0x334]
005e3590  38 53 8d e5                                      str r5, [sp, #0x338]
005e3594  e6 fa ff eb                                      bl #0x5e2134
005e3598  8c 1e 1f e5                                      ldr r1, [pc, #-0xe8c]
005e359c  34 50 a0 e3                                      mov r5, #0x34
005e35a0  73 2e 8d e2                                      add r2, sp, #0x730
005e35a4  5c 50 22 e5                                      str r5, [r2, #-0x5c]!
005e35a8  01 10 8f e0                                      add r1, pc, r1
005e35ac  06 00 a0 e1                                      mov r0, r6
005e35b0  1d fb ff eb                                      bl #0x5e222c
005e35b4  a4 3e 1f e5                                      ldr r3, [pc, #-0xea4]
005e35b8  73 6e 8d e2                                      add r6, sp, #0x730
005e35bc  00 54 26 e5                                      str r5, [r6, #-0x400]!
005e35c0  03 30 8f e0                                      add r3, pc, r3
005e35c4  04 10 46 e2                                      sub r1, r6, #4
005e35c8  00 70 a0 e1                                      mov r7, r0
005e35cc  2c 33 8d e5                                      str r3, [sp, #0x32c]
005e35d0  d7 fa ff eb                                      bl #0x5e2134
005e35d4  c0 1e 1f e5                                      ldr r1, [pc, #-0xec0]
005e35d8  73 2e 8d e2                                      add r2, sp, #0x730
005e35dc  60 50 22 e5                                      str r5, [r2, #-0x60]!
005e35e0  01 10 8f e0                                      add r1, pc, r1
005e35e4  07 00 a0 e1                                      mov r0, r7
005e35e8  0f fb ff eb                                      bl #0x5e222c
005e35ec  d4 3e 1f e5                                      ldr r3, [pc, #-0xed4]
005e35f0  0c 10 46 e2                                      sub r1, r6, #0xc
005e35f4  00 70 a0 e1                                      mov r7, r0
005e35f8  03 30 8f e0                                      add r3, pc, r3
005e35fc  24 33 8d e5                                      str r3, [sp, #0x324]
005e3600  28 53 8d e5                                      str r5, [sp, #0x328]
005e3604  ca fa ff eb                                      bl #0x5e2134
005e3608  ec 1e 1f e5                                      ldr r1, [pc, #-0xeec]
005e360c  73 2e 8d e2                                      add r2, sp, #0x730
005e3610  64 50 22 e5                                      str r5, [r2, #-0x64]!
005e3614  01 10 8f e0                                      add r1, pc, r1
005e3618  07 00 a0 e1                                      mov r0, r7
005e361c  d6 fa ff eb                                      bl #0x5e217c
005e3620  00 3f 1f e5                                      ldr r3, [pc, #-0xf00]
005e3624  73 7e 8d e2                                      add r7, sp, #0x730
005e3628  10 54 27 e5                                      str r5, [r7, #-0x410]!
005e362c  03 30 8f e0                                      add r3, pc, r3
005e3630  04 10 47 e2                                      sub r1, r7, #4
005e3634  00 60 a0 e1                                      mov r6, r0
005e3638  1c 33 8d e5                                      str r3, [sp, #0x31c]
005e363c  bc fa ff eb                                      bl #0x5e2134
005e3640  1c 3f 1f e5                                      ldr r3, [pc, #-0xf1c]
005e3644  0c 10 47 e2                                      sub r1, r7, #0xc
005e3648  06 00 a0 e1                                      mov r0, r6
005e364c  03 30 8f e0                                      add r3, pc, r3
005e3650  14 33 8d e5                                      str r3, [sp, #0x314]
005e3654  18 53 8d e5                                      str r5, [sp, #0x318]
005e3658  b5 fa ff eb                                      bl #0x5e2134
005e365c  34 1f 1f e5                                      ldr r1, [pc, #-0xf34]
005e3660  73 2e 8d e2                                      add r2, sp, #0x730
005e3664  68 50 22 e5                                      str r5, [r2, #-0x68]!
005e3668  01 10 8f e0                                      add r1, pc, r1
005e366c  06 00 a0 e1                                      mov r0, r6
005e3670  c1 fa ff eb                                      bl #0x5e217c
005e3674  48 3f 1f e5                                      ldr r3, [pc, #-0xf48]
005e3678  73 7e 8d e2                                      add r7, sp, #0x730
005e367c  20 54 27 e5                                      str r5, [r7, #-0x420]!
005e3680  03 30 8f e0                                      add r3, pc, r3
005e3684  04 10 47 e2                                      sub r1, r7, #4
005e3688  00 60 a0 e1                                      mov r6, r0
005e368c  0c 33 8d e5                                      str r3, [sp, #0x30c]
005e3690  a7 fa ff eb                                      bl #0x5e2134
005e3694  64 3f 1f e5                                      ldr r3, [pc, #-0xf64]
005e3698  0c 10 47 e2                                      sub r1, r7, #0xc
005e369c  06 00 a0 e1                                      mov r0, r6
005e36a0  03 30 8f e0                                      add r3, pc, r3
005e36a4  04 33 8d e5                                      str r3, [sp, #0x304]
005e36a8  08 53 8d e5                                      str r5, [sp, #0x308]
005e36ac  a0 fa ff eb                                      bl #0x5e2134
005e36b0  7c 3f 1f e5                                      ldr r3, [pc, #-0xf7c]
005e36b4  38 70 a0 e3                                      mov r7, #0x38
005e36b8  73 5e 8d e2                                      add r5, sp, #0x730
005e36bc  30 74 25 e5                                      str r7, [r5, #-0x430]!
005e36c0  03 30 8f e0                                      add r3, pc, r3
005e36c4  06 00 a0 e1                                      mov r0, r6
005e36c8  04 10 45 e2                                      sub r1, r5, #4
005e36cc  fc 32 8d e5                                      str r3, [sp, #0x2fc]
005e36d0  97 fa ff eb                                      bl #0x5e2134
005e36d4  9c 1f 1f e5                                      ldr r1, [pc, #-0xf9c]
005e36d8  73 2e 8d e2                                      add r2, sp, #0x730
005e36dc  6c 70 22 e5                                      str r7, [r2, #-0x6c]!
005e36e0  01 10 8f e0                                      add r1, pc, r1
005e36e4  06 00 a0 e1                                      mov r0, r6
005e36e8  b9 fa ff eb                                      bl #0x5e21d4
005e36ec  b0 3f 1f e5                                      ldr r3, [pc, #-0xfb0]
005e36f0  0c 10 45 e2                                      sub r1, r5, #0xc
005e36f4  00 60 a0 e1                                      mov r6, r0
005e36f8  03 30 8f e0                                      add r3, pc, r3
005e36fc  f4 32 8d e5                                      str r3, [sp, #0x2f4]
005e3700  f8 72 8d e5                                      str r7, [sp, #0x2f8]
005e3704  8a fa ff eb                                      bl #0x5e2134
005e3708  c8 1f 1f e5                                      ldr r1, [pc, #-0xfc8]
005e370c  21 50 a0 e3                                      mov r5, #0x21
005e3710  73 2e 8d e2                                      add r2, sp, #0x730
005e3714  70 50 22 e5                                      str r5, [r2, #-0x70]!
005e3718  01 10 8f e0                                      add r1, pc, r1
005e371c  06 00 a0 e1                                      mov r0, r6
005e3720  ab fa ff eb                                      bl #0x5e21d4
005e3724  e0 1f 1f e5                                      ldr r1, [pc, #-0xfe0]
005e3728  73 2e 8d e2                                      add r2, sp, #0x730
005e372c  74 50 22 e5                                      str r5, [r2, #-0x74]!
005e3730  01 10 8f e0                                      add r1, pc, r1
005e3734  a6 fa ff eb                                      bl #0x5e21d4
005e3738  f0 3f 1f e5                                      ldr r3, [pc, #-0xff0]
005e373c  73 6e 8d e2                                      add r6, sp, #0x730
005e3740  22 20 a0 e3                                      mov r2, #0x22
005e3744  40 24 26 e5                                      str r2, [r6, #-0x440]!
005e3748  03 30 8f e0                                      add r3, pc, r3
005e374c  04 10 46 e2                                      sub r1, r6, #4
005e3750  00 50 a0 e1                                      mov r5, r0
005e3754  ec 32 8d e5                                      str r3, [sp, #0x2ec]
005e3758  75 fa ff eb                                      bl #0x5e2134
005e375c  80 3e 9f e5                                      ldr r3, [pc, #0xe80]
005e3760  0c 10 46 e2                                      sub r1, r6, #0xc
005e3764  05 00 a0 e1                                      mov r0, r5
005e3768  03 30 8f e0                                      add r3, pc, r3
005e376c  3c 60 a0 e3                                      mov r6, #0x3c
005e3770  e4 32 8d e5                                      str r3, [sp, #0x2e4]
005e3774  e8 62 8d e5                                      str r6, [sp, #0x2e8]
005e3778  6d fa ff eb                                      bl #0x5e2134
005e377c  64 1e 9f e5                                      ldr r1, [pc, #0xe64]
005e3780  73 2e 8d e2                                      add r2, sp, #0x730
005e3784  78 60 22 e5                                      str r6, [r2, #-0x78]!
005e3788  01 10 8f e0                                      add r1, pc, r1
005e378c  05 00 a0 e1                                      mov r0, r5
005e3790  8f fa ff eb                                      bl #0x5e21d4
005e3794  50 3e 9f e5                                      ldr r3, [pc, #0xe50]
005e3798  3a 50 a0 e3                                      mov r5, #0x3a
005e379c  73 6e 8d e2                                      add r6, sp, #0x730
005e37a0  50 54 26 e5                                      str r5, [r6, #-0x450]!
005e37a4  03 30 8f e0                                      add r3, pc, r3
005e37a8  04 10 46 e2                                      sub r1, r6, #4
005e37ac  00 70 a0 e1                                      mov r7, r0
005e37b0  dc 32 8d e5                                      str r3, [sp, #0x2dc]
005e37b4  5e fa ff eb                                      bl #0x5e2134
005e37b8  30 3e 9f e5                                      ldr r3, [pc, #0xe30]
005e37bc  0c 10 46 e2                                      sub r1, r6, #0xc
005e37c0  07 00 a0 e1                                      mov r0, r7
005e37c4  03 30 8f e0                                      add r3, pc, r3
005e37c8  d4 32 8d e5                                      str r3, [sp, #0x2d4]
005e37cc  d8 52 8d e5                                      str r5, [sp, #0x2d8]
005e37d0  57 fa ff eb                                      bl #0x5e2134
005e37d4  18 3e 9f e5                                      ldr r3, [pc, #0xe18]
005e37d8  73 6e 8d e2                                      add r6, sp, #0x730
005e37dc  60 54 26 e5                                      str r5, [r6, #-0x460]!
005e37e0  03 30 8f e0                                      add r3, pc, r3
005e37e4  07 00 a0 e1                                      mov r0, r7
005e37e8  04 10 46 e2                                      sub r1, r6, #4
005e37ec  cc 32 8d e5                                      str r3, [sp, #0x2cc]
005e37f0  4f fa ff eb                                      bl #0x5e2134
005e37f4  fc 1d 9f e5                                      ldr r1, [pc, #0xdfc]
005e37f8  73 2e 8d e2                                      add r2, sp, #0x730
005e37fc  7c 50 22 e5                                      str r5, [r2, #-0x7c]!
005e3800  01 10 8f e0                                      add r1, pc, r1
005e3804  07 00 a0 e1                                      mov r0, r7
005e3808  71 fa ff eb                                      bl #0x5e21d4
005e380c  e8 3d 9f e5                                      ldr r3, [pc, #0xde8]
005e3810  0c 10 46 e2                                      sub r1, r6, #0xc
005e3814  00 70 a0 e1                                      mov r7, r0
005e3818  03 30 8f e0                                      add r3, pc, r3
005e381c  c8 52 8d e5                                      str r5, [sp, #0x2c8]
005e3820  c4 32 8d e5                                      str r3, [sp, #0x2c4]
005e3824  42 fa ff eb                                      bl #0x5e2134
005e3828  d0 3d 9f e5                                      ldr r3, [pc, #0xdd0]
005e382c  73 6e 8d e2                                      add r6, sp, #0x730
005e3830  70 54 26 e5                                      str r5, [r6, #-0x470]!
005e3834  03 30 8f e0                                      add r3, pc, r3
005e3838  07 00 a0 e1                                      mov r0, r7
005e383c  04 10 46 e2                                      sub r1, r6, #4
005e3840  bc 32 8d e5                                      str r3, [sp, #0x2bc]
005e3844  3a fa ff eb                                      bl #0x5e2134
005e3848  b4 3d 9f e5                                      ldr r3, [pc, #0xdb4]
005e384c  0c 10 46 e2                                      sub r1, r6, #0xc
005e3850  07 00 a0 e1                                      mov r0, r7
005e3854  03 30 8f e0                                      add r3, pc, r3
005e3858  b4 32 8d e5                                      str r3, [sp, #0x2b4]
005e385c  b8 52 8d e5                                      str r5, [sp, #0x2b8]
005e3860  33 fa ff eb                                      bl #0x5e2134
005e3864  9c 1d 9f e5                                      ldr r1, [pc, #0xd9c]
005e3868  73 2e 8d e2                                      add r2, sp, #0x730
005e386c  80 50 22 e5                                      str r5, [r2, #-0x80]!
005e3870  01 10 8f e0                                      add r1, pc, r1
005e3874  07 00 a0 e1                                      mov r0, r7
005e3878  3f fa ff eb                                      bl #0x5e217c
005e387c  88 1d 9f e5                                      ldr r1, [pc, #0xd88]
005e3880  73 2e 8d e2                                      add r2, sp, #0x730
005e3884  39 30 a0 e3                                      mov r3, #0x39
005e3888  84 30 22 e5                                      str r3, [r2, #-0x84]!
005e388c  01 10 8f e0                                      add r1, pc, r1
005e3890  65 fa ff eb                                      bl #0x5e222c
005e3894  74 3d 9f e5                                      ldr r3, [pc, #0xd74]
005e3898  73 6e 8d e2                                      add r6, sp, #0x730
005e389c  3e 70 a0 e3                                      mov r7, #0x3e
005e38a0  80 74 26 e5                                      str r7, [r6, #-0x480]!
005e38a4  03 30 8f e0                                      add r3, pc, r3
005e38a8  04 10 46 e2                                      sub r1, r6, #4
005e38ac  00 50 a0 e1                                      mov r5, r0
005e38b0  ac 32 8d e5                                      str r3, [sp, #0x2ac]
005e38b4  1e fa ff eb                                      bl #0x5e2134
005e38b8  54 1d 9f e5                                      ldr r1, [pc, #0xd54]
005e38bc  73 2e 8d e2                                      add r2, sp, #0x730
005e38c0  88 70 22 e5                                      str r7, [r2, #-0x88]!
005e38c4  01 10 8f e0                                      add r1, pc, r1
005e38c8  05 00 a0 e1                                      mov r0, r5
005e38cc  2a fa ff eb                                      bl #0x5e217c
005e38d0  40 3d 9f e5                                      ldr r3, [pc, #0xd40]
005e38d4  0c 10 46 e2                                      sub r1, r6, #0xc
005e38d8  00 50 a0 e1                                      mov r5, r0
005e38dc  03 30 8f e0                                      add r3, pc, r3
005e38e0  a4 32 8d e5                                      str r3, [sp, #0x2a4]
005e38e4  00 30 a0 e3                                      mov r3, #0
005e38e8  a8 32 8d e5                                      str r3, [sp, #0x2a8]
005e38ec  10 fa ff eb                                      bl #0x5e2134
005e38f0  24 3d 9f e5                                      ldr r3, [pc, #0xd24]
005e38f4  73 6e 8d e2                                      add r6, sp, #0x730
005e38f8  3d 70 a0 e3                                      mov r7, #0x3d
005e38fc  90 74 26 e5                                      str r7, [r6, #-0x490]!
005e3900  03 30 8f e0                                      add r3, pc, r3
005e3904  05 00 a0 e1                                      mov r0, r5
005e3908  04 10 46 e2                                      sub r1, r6, #4
005e390c  9c 32 8d e5                                      str r3, [sp, #0x29c]
005e3910  07 fa ff eb                                      bl #0x5e2134
005e3914  04 3d 9f e5                                      ldr r3, [pc, #0xd04]
005e3918  0c 10 46 e2                                      sub r1, r6, #0xc
005e391c  05 00 a0 e1                                      mov r0, r5
005e3920  03 30 8f e0                                      add r3, pc, r3
005e3924  94 32 8d e5                                      str r3, [sp, #0x294]
005e3928  98 72 8d e5                                      str r7, [sp, #0x298]
005e392c  00 fa ff eb                                      bl #0x5e2134
005e3930  ec 3c 9f e5                                      ldr r3, [pc, #0xcec]
005e3934  3b 20 a0 e3                                      mov r2, #0x3b
005e3938  73 6e 8d e2                                      add r6, sp, #0x730
005e393c  a0 24 26 e5                                      str r2, [r6, #-0x4a0]!
005e3940  03 30 8f e0                                      add r3, pc, r3
005e3944  05 00 a0 e1                                      mov r0, r5
005e3948  04 10 46 e2                                      sub r1, r6, #4
005e394c  8c 32 8d e5                                      str r3, [sp, #0x28c]
005e3950  f7 f9 ff eb                                      bl #0x5e2134
005e3954  cc 3c 9f e5                                      ldr r3, [pc, #0xccc]
005e3958  18 80 a0 e3                                      mov r8, #0x18
005e395c  0c 10 46 e2                                      sub r1, r6, #0xc
005e3960  03 30 8f e0                                      add r3, pc, r3
005e3964  05 00 a0 e1                                      mov r0, r5
005e3968  84 32 8d e5                                      str r3, [sp, #0x284]
005e396c  88 82 8d e5                                      str r8, [sp, #0x288]
005e3970  ef f9 ff eb                                      bl #0x5e2134
005e3974  b0 3c 9f e5                                      ldr r3, [pc, #0xcb0]
005e3978  73 6e 8d e2                                      add r6, sp, #0x730
005e397c  b0 84 26 e5                                      str r8, [r6, #-0x4b0]!
005e3980  03 30 8f e0                                      add r3, pc, r3
005e3984  05 00 a0 e1                                      mov r0, r5
005e3988  04 10 46 e2                                      sub r1, r6, #4
005e398c  7c 32 8d e5                                      str r3, [sp, #0x27c]
005e3990  e7 f9 ff eb                                      bl #0x5e2134
005e3994  94 3c 9f e5                                      ldr r3, [pc, #0xc94]
005e3998  0c 10 46 e2                                      sub r1, r6, #0xc
005e399c  05 00 a0 e1                                      mov r0, r5
005e39a0  03 30 8f e0                                      add r3, pc, r3
005e39a4  74 32 8d e5                                      str r3, [sp, #0x274]
005e39a8  78 82 8d e5                                      str r8, [sp, #0x278]
005e39ac  e0 f9 ff eb                                      bl #0x5e2134
005e39b0  7c 3c 9f e5                                      ldr r3, [pc, #0xc7c]
005e39b4  73 6e 8d e2                                      add r6, sp, #0x730
005e39b8  78 7c 9f e5                                      ldr r7, [pc, #0xc78]
005e39bc  c0 84 26 e5                                      str r8, [r6, #-0x4c0]!
005e39c0  03 30 8f e0                                      add r3, pc, r3
005e39c4  05 00 a0 e1                                      mov r0, r5
005e39c8  04 10 46 e2                                      sub r1, r6, #4
005e39cc  6c 32 8d e5                                      str r3, [sp, #0x26c]
005e39d0  07 70 8f e0                                      add r7, pc, r7
005e39d4  d6 f9 ff eb                                      bl #0x5e2134
005e39d8  0c 10 46 e2                                      sub r1, r6, #0xc
005e39dc  05 00 a0 e1                                      mov r0, r5
005e39e0  14 60 a0 e3                                      mov r6, #0x14
005e39e4  64 72 8d e5                                      str r7, [sp, #0x264]
005e39e8  68 62 8d e5                                      str r6, [sp, #0x268]
005e39ec  d0 f9 ff eb                                      bl #0x5e2134
005e39f0  44 3c 9f e5                                      ldr r3, [pc, #0xc44]
005e39f4  73 8e 8d e2                                      add r8, sp, #0x730
005e39f8  d0 64 28 e5                                      str r6, [r8, #-0x4d0]!
005e39fc  03 30 8f e0                                      add r3, pc, r3
005e3a00  05 00 a0 e1                                      mov r0, r5
005e3a04  04 10 48 e2                                      sub r1, r8, #4
005e3a08  5c 32 8d e5                                      str r3, [sp, #0x25c]
005e3a0c  c8 f9 ff eb                                      bl #0x5e2134
005e3a10  28 3c 9f e5                                      ldr r3, [pc, #0xc28]
005e3a14  0c 10 48 e2                                      sub r1, r8, #0xc
005e3a18  05 00 a0 e1                                      mov r0, r5
005e3a1c  03 30 8f e0                                      add r3, pc, r3
005e3a20  54 32 8d e5                                      str r3, [sp, #0x254]
005e3a24  58 62 8d e5                                      str r6, [sp, #0x258]
005e3a28  c1 f9 ff eb                                      bl #0x5e2134
005e3a2c  10 3c 9f e5                                      ldr r3, [pc, #0xc10]
005e3a30  73 8e 8d e2                                      add r8, sp, #0x730
005e3a34  e0 64 28 e5                                      str r6, [r8, #-0x4e0]!
005e3a38  03 30 8f e0                                      add r3, pc, r3
005e3a3c  05 00 a0 e1                                      mov r0, r5
005e3a40  04 10 48 e2                                      sub r1, r8, #4
005e3a44  4c 32 8d e5                                      str r3, [sp, #0x24c]
005e3a48  b9 f9 ff eb                                      bl #0x5e2134
005e3a4c  0c 10 48 e2                                      sub r1, r8, #0xc
005e3a50  05 00 a0 e1                                      mov r0, r5
005e3a54  44 72 8d e5                                      str r7, [sp, #0x244]
005e3a58  48 62 8d e5                                      str r6, [sp, #0x248]
005e3a5c  b4 f9 ff eb                                      bl #0x5e2134
005e3a60  e0 3b 9f e5                                      ldr r3, [pc, #0xbe0]
005e3a64  1a 60 a0 e3                                      mov r6, #0x1a
005e3a68  73 7e 8d e2                                      add r7, sp, #0x730
005e3a6c  f0 64 27 e5                                      str r6, [r7, #-0x4f0]!
005e3a70  03 30 8f e0                                      add r3, pc, r3
005e3a74  05 00 a0 e1                                      mov r0, r5
005e3a78  04 10 47 e2                                      sub r1, r7, #4
005e3a7c  3c 32 8d e5                                      str r3, [sp, #0x23c]
005e3a80  ab f9 ff eb                                      bl #0x5e2134
005e3a84  c0 3b 9f e5                                      ldr r3, [pc, #0xbc0]
005e3a88  0c 10 47 e2                                      sub r1, r7, #0xc
005e3a8c  05 00 a0 e1                                      mov r0, r5
005e3a90  03 30 8f e0                                      add r3, pc, r3
005e3a94  34 32 8d e5                                      str r3, [sp, #0x234]
005e3a98  38 62 8d e5                                      str r6, [sp, #0x238]
005e3a9c  a4 f9 ff eb                                      bl #0x5e2134
005e3aa0  a8 3b 9f e5                                      ldr r3, [pc, #0xba8]
005e3aa4  73 7e 8d e2                                      add r7, sp, #0x730
005e3aa8  00 65 27 e5                                      str r6, [r7, #-0x500]!
005e3aac  03 30 8f e0                                      add r3, pc, r3
005e3ab0  05 00 a0 e1                                      mov r0, r5
005e3ab4  04 10 47 e2                                      sub r1, r7, #4
005e3ab8  2c 32 8d e5                                      str r3, [sp, #0x22c]
005e3abc  9c f9 ff eb                                      bl #0x5e2134
005e3ac0  8c 3b 9f e5                                      ldr r3, [pc, #0xb8c]
005e3ac4  0c 10 47 e2                                      sub r1, r7, #0xc
005e3ac8  05 00 a0 e1                                      mov r0, r5
005e3acc  03 30 8f e0                                      add r3, pc, r3
005e3ad0  24 32 8d e5                                      str r3, [sp, #0x224]
005e3ad4  28 62 8d e5                                      str r6, [sp, #0x228]
005e3ad8  95 f9 ff eb                                      bl #0x5e2134
005e3adc  74 3b 9f e5                                      ldr r3, [pc, #0xb74]
005e3ae0  16 60 a0 e3                                      mov r6, #0x16
005e3ae4  73 7e 8d e2                                      add r7, sp, #0x730
005e3ae8  10 65 27 e5                                      str r6, [r7, #-0x510]!
005e3aec  03 30 8f e0                                      add r3, pc, r3
005e3af0  05 00 a0 e1                                      mov r0, r5
005e3af4  04 10 47 e2                                      sub r1, r7, #4
005e3af8  1c 32 8d e5                                      str r3, [sp, #0x21c]
005e3afc  8c f9 ff eb                                      bl #0x5e2134
005e3b00  54 3b 9f e5                                      ldr r3, [pc, #0xb54]
005e3b04  0c 10 47 e2                                      sub r1, r7, #0xc
005e3b08  05 00 a0 e1                                      mov r0, r5
005e3b0c  03 30 8f e0                                      add r3, pc, r3
005e3b10  14 32 8d e5                                      str r3, [sp, #0x214]
005e3b14  18 62 8d e5                                      str r6, [sp, #0x218]
005e3b18  85 f9 ff eb                                      bl #0x5e2134
005e3b1c  3c 3b 9f e5                                      ldr r3, [pc, #0xb3c]
005e3b20  73 7e 8d e2                                      add r7, sp, #0x730
005e3b24  20 65 27 e5                                      str r6, [r7, #-0x520]!
005e3b28  03 30 8f e0                                      add r3, pc, r3
005e3b2c  05 00 a0 e1                                      mov r0, r5
005e3b30  04 10 47 e2                                      sub r1, r7, #4
005e3b34  0c 32 8d e5                                      str r3, [sp, #0x20c]
005e3b38  7d f9 ff eb                                      bl #0x5e2134
005e3b3c  20 3b 9f e5                                      ldr r3, [pc, #0xb20]
005e3b40  0c 10 47 e2                                      sub r1, r7, #0xc
005e3b44  05 00 a0 e1                                      mov r0, r5
005e3b48  03 30 8f e0                                      add r3, pc, r3
005e3b4c  04 32 8d e5                                      str r3, [sp, #0x204]
005e3b50  08 62 8d e5                                      str r6, [sp, #0x208]
005e3b54  76 f9 ff eb                                      bl #0x5e2134
005e3b58  08 1b 9f e5                                      ldr r1, [pc, #0xb08]
005e3b5c  73 2e 8d e2                                      add r2, sp, #0x730
005e3b60  17 60 a0 e3                                      mov r6, #0x17
005e3b64  8c 60 22 e5                                      str r6, [r2, #-0x8c]!
005e3b68  01 10 8f e0                                      add r1, pc, r1
005e3b6c  05 00 a0 e1                                      mov r0, r5
005e3b70  81 f9 ff eb                                      bl #0x5e217c
005e3b74  f0 3a 9f e5                                      ldr r3, [pc, #0xaf0]
005e3b78  73 7e 8d e2                                      add r7, sp, #0x730
005e3b7c  30 65 27 e5                                      str r6, [r7, #-0x530]!
005e3b80  03 30 8f e0                                      add r3, pc, r3
005e3b84  04 10 47 e2                                      sub r1, r7, #4
005e3b88  00 50 a0 e1                                      mov r5, r0
005e3b8c  fc 31 8d e5                                      str r3, [sp, #0x1fc]
005e3b90  67 f9 ff eb                                      bl #0x5e2134
005e3b94  d4 3a 9f e5                                      ldr r3, [pc, #0xad4]
005e3b98  0c 10 47 e2                                      sub r1, r7, #0xc
005e3b9c  05 00 a0 e1                                      mov r0, r5
005e3ba0  03 30 8f e0                                      add r3, pc, r3
005e3ba4  f4 31 8d e5                                      str r3, [sp, #0x1f4]
005e3ba8  f8 61 8d e5                                      str r6, [sp, #0x1f8]
005e3bac  60 f9 ff eb                                      bl #0x5e2134
005e3bb0  bc 3a 9f e5                                      ldr r3, [pc, #0xabc]
005e3bb4  73 7e 8d e2                                      add r7, sp, #0x730
005e3bb8  40 65 27 e5                                      str r6, [r7, #-0x540]!
005e3bbc  03 30 8f e0                                      add r3, pc, r3
005e3bc0  05 00 a0 e1                                      mov r0, r5
005e3bc4  04 10 47 e2                                      sub r1, r7, #4
005e3bc8  ec 31 8d e5                                      str r3, [sp, #0x1ec]
005e3bcc  58 f9 ff eb                                      bl #0x5e2134
005e3bd0  a0 3a 9f e5                                      ldr r3, [pc, #0xaa0]
005e3bd4  0c 10 47 e2                                      sub r1, r7, #0xc
005e3bd8  05 00 a0 e1                                      mov r0, r5
005e3bdc  03 30 8f e0                                      add r3, pc, r3
005e3be0  e4 31 8d e5                                      str r3, [sp, #0x1e4]
005e3be4  e8 61 8d e5                                      str r6, [sp, #0x1e8]
005e3be8  51 f9 ff eb                                      bl #0x5e2134
005e3bec  88 3a 9f e5                                      ldr r3, [pc, #0xa88]
005e3bf0  15 70 a0 e3                                      mov r7, #0x15
005e3bf4  73 6e 8d e2                                      add r6, sp, #0x730
005e3bf8  50 75 26 e5                                      str r7, [r6, #-0x550]!
005e3bfc  03 30 8f e0                                      add r3, pc, r3
005e3c00  05 00 a0 e1                                      mov r0, r5
005e3c04  04 10 46 e2                                      sub r1, r6, #4
005e3c08  dc 31 8d e5                                      str r3, [sp, #0x1dc]
005e3c0c  48 f9 ff eb                                      bl #0x5e2134
005e3c10  68 3a 9f e5                                      ldr r3, [pc, #0xa68]
005e3c14  0c 10 46 e2                                      sub r1, r6, #0xc
005e3c18  05 00 a0 e1                                      mov r0, r5
005e3c1c  03 30 8f e0                                      add r3, pc, r3
005e3c20  d4 31 8d e5                                      str r3, [sp, #0x1d4]
005e3c24  d8 71 8d e5                                      str r7, [sp, #0x1d8]
005e3c28  41 f9 ff eb                                      bl #0x5e2134
005e3c2c  50 3a 9f e5                                      ldr r3, [pc, #0xa50]
005e3c30  73 6e 8d e2                                      add r6, sp, #0x730
005e3c34  4c 8a 9f e5                                      ldr r8, [pc, #0xa4c]
005e3c38  60 75 26 e5                                      str r7, [r6, #-0x560]!
005e3c3c  03 30 8f e0                                      add r3, pc, r3
005e3c40  05 00 a0 e1                                      mov r0, r5
005e3c44  04 10 46 e2                                      sub r1, r6, #4
005e3c48  cc 31 8d e5                                      str r3, [sp, #0x1cc]
005e3c4c  08 80 8f e0                                      add r8, pc, r8
005e3c50  37 f9 ff eb                                      bl #0x5e2134
005e3c54  0c 10 46 e2                                      sub r1, r6, #0xc
005e3c58  05 00 a0 e1                                      mov r0, r5
005e3c5c  13 60 a0 e3                                      mov r6, #0x13
005e3c60  c4 81 8d e5                                      str r8, [sp, #0x1c4]
005e3c64  c8 61 8d e5                                      str r6, [sp, #0x1c8]
005e3c68  31 f9 ff eb                                      bl #0x5e2134
005e3c6c  18 3a 9f e5                                      ldr r3, [pc, #0xa18]
005e3c70  73 7e 8d e2                                      add r7, sp, #0x730
005e3c74  70 65 27 e5                                      str r6, [r7, #-0x570]!
005e3c78  03 30 8f e0                                      add r3, pc, r3
005e3c7c  05 00 a0 e1                                      mov r0, r5
005e3c80  04 10 47 e2                                      sub r1, r7, #4
005e3c84  bc 31 8d e5                                      str r3, [sp, #0x1bc]
005e3c88  29 f9 ff eb                                      bl #0x5e2134
005e3c8c  fc 39 9f e5                                      ldr r3, [pc, #0x9fc]
005e3c90  0c 10 47 e2                                      sub r1, r7, #0xc
005e3c94  05 00 a0 e1                                      mov r0, r5
005e3c98  03 30 8f e0                                      add r3, pc, r3
005e3c9c  b4 31 8d e5                                      str r3, [sp, #0x1b4]
005e3ca0  b8 61 8d e5                                      str r6, [sp, #0x1b8]
005e3ca4  22 f9 ff eb                                      bl #0x5e2134
005e3ca8  e4 19 9f e5                                      ldr r1, [pc, #0x9e4]
005e3cac  73 2e 8d e2                                      add r2, sp, #0x730
005e3cb0  90 60 22 e5                                      str r6, [r2, #-0x90]!
005e3cb4  01 10 8f e0                                      add r1, pc, r1
005e3cb8  05 00 a0 e1                                      mov r0, r5
005e3cbc  5a f9 ff eb                                      bl #0x5e222c
005e3cc0  73 7e 8d e2                                      add r7, sp, #0x730
005e3cc4  80 65 27 e5                                      str r6, [r7, #-0x580]!
005e3cc8  04 10 47 e2                                      sub r1, r7, #4
005e3ccc  00 50 a0 e1                                      mov r5, r0
005e3cd0  ac 81 8d e5                                      str r8, [sp, #0x1ac]
005e3cd4  16 f9 ff eb                                      bl #0x5e2134
005e3cd8  b8 39 9f e5                                      ldr r3, [pc, #0x9b8]
005e3cdc  0c 10 47 e2                                      sub r1, r7, #0xc
005e3ce0  05 00 a0 e1                                      mov r0, r5
005e3ce4  19 70 a0 e3                                      mov r7, #0x19
005e3ce8  03 30 8f e0                                      add r3, pc, r3
005e3cec  a4 31 8d e5                                      str r3, [sp, #0x1a4]
005e3cf0  a8 71 8d e5                                      str r7, [sp, #0x1a8]
005e3cf4  0e f9 ff eb                                      bl #0x5e2134
005e3cf8  9c 39 9f e5                                      ldr r3, [pc, #0x99c]
005e3cfc  73 6e 8d e2                                      add r6, sp, #0x730
005e3d00  90 75 26 e5                                      str r7, [r6, #-0x590]!
005e3d04  03 30 8f e0                                      add r3, pc, r3
005e3d08  05 00 a0 e1                                      mov r0, r5
005e3d0c  04 10 46 e2                                      sub r1, r6, #4
005e3d10  9c 31 8d e5                                      str r3, [sp, #0x19c]
005e3d14  06 f9 ff eb                                      bl #0x5e2134
005e3d18  80 39 9f e5                                      ldr r3, [pc, #0x980]
005e3d1c  0c 10 46 e2                                      sub r1, r6, #0xc
005e3d20  05 00 a0 e1                                      mov r0, r5
005e3d24  03 30 8f e0                                      add r3, pc, r3
005e3d28  94 31 8d e5                                      str r3, [sp, #0x194]
005e3d2c  98 71 8d e5                                      str r7, [sp, #0x198]
005e3d30  ff f8 ff eb                                      bl #0x5e2134
005e3d34  68 39 9f e5                                      ldr r3, [pc, #0x968]
005e3d38  73 6e 8d e2                                      add r6, sp, #0x730
005e3d3c  a0 75 26 e5                                      str r7, [r6, #-0x5a0]!
005e3d40  03 30 8f e0                                      add r3, pc, r3
005e3d44  05 00 a0 e1                                      mov r0, r5
005e3d48  04 10 46 e2                                      sub r1, r6, #4
005e3d4c  8c 31 8d e5                                      str r3, [sp, #0x18c]
005e3d50  f7 f8 ff eb                                      bl #0x5e2134
005e3d54  4c 39 9f e5                                      ldr r3, [pc, #0x94c]
005e3d58  1f 70 a0 e3                                      mov r7, #0x1f
005e3d5c  0c 10 46 e2                                      sub r1, r6, #0xc
005e3d60  03 30 8f e0                                      add r3, pc, r3
005e3d64  05 00 a0 e1                                      mov r0, r5
005e3d68  84 31 8d e5                                      str r3, [sp, #0x184]
005e3d6c  88 71 8d e5                                      str r7, [sp, #0x188]
005e3d70  ef f8 ff eb                                      bl #0x5e2134
005e3d74  30 39 9f e5                                      ldr r3, [pc, #0x930]
005e3d78  73 6e 8d e2                                      add r6, sp, #0x730
005e3d7c  b0 75 26 e5                                      str r7, [r6, #-0x5b0]!
005e3d80  03 30 8f e0                                      add r3, pc, r3
005e3d84  05 00 a0 e1                                      mov r0, r5
005e3d88  04 10 46 e2                                      sub r1, r6, #4
005e3d8c  7c 31 8d e5                                      str r3, [sp, #0x17c]
005e3d90  e7 f8 ff eb                                      bl #0x5e2134
005e3d94  14 39 9f e5                                      ldr r3, [pc, #0x914]
005e3d98  0c 10 46 e2                                      sub r1, r6, #0xc
005e3d9c  05 00 a0 e1                                      mov r0, r5
005e3da0  03 30 8f e0                                      add r3, pc, r3
005e3da4  74 31 8d e5                                      str r3, [sp, #0x174]
005e3da8  78 71 8d e5                                      str r7, [sp, #0x178]
005e3dac  e0 f8 ff eb                                      bl #0x5e2134
005e3db0  fc 38 9f e5                                      ldr r3, [pc, #0x8fc]
005e3db4  1e 60 a0 e3                                      mov r6, #0x1e
005e3db8  73 7e 8d e2                                      add r7, sp, #0x730
005e3dbc  c0 65 27 e5                                      str r6, [r7, #-0x5c0]!
005e3dc0  03 30 8f e0                                      add r3, pc, r3
005e3dc4  05 00 a0 e1                                      mov r0, r5
005e3dc8  04 10 47 e2                                      sub r1, r7, #4
005e3dcc  6c 31 8d e5                                      str r3, [sp, #0x16c]
005e3dd0  d7 f8 ff eb                                      bl #0x5e2134
005e3dd4  dc 18 9f e5                                      ldr r1, [pc, #0x8dc]
005e3dd8  73 2e 8d e2                                      add r2, sp, #0x730
005e3ddc  94 60 22 e5                                      str r6, [r2, #-0x94]!
005e3de0  01 10 8f e0                                      add r1, pc, r1
005e3de4  05 00 a0 e1                                      mov r0, r5
005e3de8  f9 f8 ff eb                                      bl #0x5e21d4
005e3dec  c8 18 9f e5                                      ldr r1, [pc, #0x8c8]
005e3df0  73 2e 8d e2                                      add r2, sp, #0x730
005e3df4  98 60 22 e5                                      str r6, [r2, #-0x98]!
005e3df8  01 10 8f e0                                      add r1, pc, r1
005e3dfc  0a f9 ff eb                                      bl #0x5e222c
005e3e00  b8 18 9f e5                                      ldr r1, [pc, #0x8b8]
005e3e04  73 2e 8d e2                                      add r2, sp, #0x730
005e3e08  9c 60 22 e5                                      str r6, [r2, #-0x9c]!
005e3e0c  01 10 8f e0                                      add r1, pc, r1
005e3e10  ef f8 ff eb                                      bl #0x5e21d4
005e3e14  a8 18 9f e5                                      ldr r1, [pc, #0x8a8]
005e3e18  73 2e 8d e2                                      add r2, sp, #0x730
005e3e1c  a0 60 22 e5                                      str r6, [r2, #-0xa0]!
005e3e20  01 10 8f e0                                      add r1, pc, r1
005e3e24  00 f9 ff eb                                      bl #0x5e222c
005e3e28  98 18 9f e5                                      ldr r1, [pc, #0x898]
005e3e2c  73 2e 8d e2                                      add r2, sp, #0x730
005e3e30  1d 60 a0 e3                                      mov r6, #0x1d
005e3e34  a4 60 22 e5                                      str r6, [r2, #-0xa4]!
005e3e38  01 10 8f e0                                      add r1, pc, r1
005e3e3c  ce f8 ff eb                                      bl #0x5e217c
005e3e40  84 38 9f e5                                      ldr r3, [pc, #0x884]
005e3e44  0c 10 47 e2                                      sub r1, r7, #0xc
005e3e48  00 50 a0 e1                                      mov r5, r0
005e3e4c  03 30 8f e0                                      add r3, pc, r3
005e3e50  68 61 8d e5                                      str r6, [sp, #0x168]
005e3e54  64 31 8d e5                                      str r3, [sp, #0x164]
005e3e58  b5 f8 ff eb                                      bl #0x5e2134
005e3e5c  6c 38 9f e5                                      ldr r3, [pc, #0x86c]
005e3e60  73 7e 8d e2                                      add r7, sp, #0x730
005e3e64  d0 65 27 e5                                      str r6, [r7, #-0x5d0]!
005e3e68  03 30 8f e0                                      add r3, pc, r3
005e3e6c  05 00 a0 e1                                      mov r0, r5
005e3e70  04 10 47 e2                                      sub r1, r7, #4
005e3e74  5c 31 8d e5                                      str r3, [sp, #0x15c]
005e3e78  ad f8 ff eb                                      bl #0x5e2134
005e3e7c  50 38 9f e5                                      ldr r3, [pc, #0x850]
005e3e80  0c 10 47 e2                                      sub r1, r7, #0xc
005e3e84  05 00 a0 e1                                      mov r0, r5
005e3e88  03 70 a0 e3                                      mov r7, #3
005e3e8c  03 30 8f e0                                      add r3, pc, r3
005e3e90  54 31 8d e5                                      str r3, [sp, #0x154]
005e3e94  58 71 8d e5                                      str r7, [sp, #0x158]
005e3e98  a5 f8 ff eb                                      bl #0x5e2134
005e3e9c  34 38 9f e5                                      ldr r3, [pc, #0x834]
005e3ea0  73 6e 8d e2                                      add r6, sp, #0x730
005e3ea4  e0 75 26 e5                                      str r7, [r6, #-0x5e0]!
005e3ea8  03 30 8f e0                                      add r3, pc, r3
005e3eac  05 00 a0 e1                                      mov r0, r5
005e3eb0  04 10 46 e2                                      sub r1, r6, #4
005e3eb4  4c 31 8d e5                                      str r3, [sp, #0x14c]
005e3eb8  9d f8 ff eb                                      bl #0x5e2134
005e3ebc  18 18 9f e5                                      ldr r1, [pc, #0x818]
005e3ec0  73 2e 8d e2                                      add r2, sp, #0x730
005e3ec4  a8 70 22 e5                                      str r7, [r2, #-0xa8]!
005e3ec8  01 10 8f e0                                      add r1, pc, r1
005e3ecc  05 00 a0 e1                                      mov r0, r5
005e3ed0  d5 f8 ff eb                                      bl #0x5e222c
005e3ed4  04 38 9f e5                                      ldr r3, [pc, #0x804]
005e3ed8  0c 10 46 e2                                      sub r1, r6, #0xc
005e3edc  00 50 a0 e1                                      mov r5, r0
005e3ee0  03 30 8f e0                                      add r3, pc, r3
005e3ee4  44 31 8d e5                                      str r3, [sp, #0x144]
005e3ee8  04 30 a0 e3                                      mov r3, #4
005e3eec  48 31 8d e5                                      str r3, [sp, #0x148]
005e3ef0  8f f8 ff eb                                      bl #0x5e2134
005e3ef4  e8 37 9f e5                                      ldr r3, [pc, #0x7e8]
005e3ef8  73 6e 8d e2                                      add r6, sp, #0x730
005e3efc  02 70 a0 e3                                      mov r7, #2
005e3f00  f0 75 26 e5                                      str r7, [r6, #-0x5f0]!
005e3f04  03 30 8f e0                                      add r3, pc, r3
005e3f08  05 00 a0 e1                                      mov r0, r5
005e3f0c  04 10 46 e2                                      sub r1, r6, #4
005e3f10  3c 31 8d e5                                      str r3, [sp, #0x13c]
005e3f14  86 f8 ff eb                                      bl #0x5e2134
005e3f18  c8 37 9f e5                                      ldr r3, [pc, #0x7c8]
005e3f1c  0c 10 46 e2                                      sub r1, r6, #0xc
005e3f20  05 00 a0 e1                                      mov r0, r5
005e3f24  03 30 8f e0                                      add r3, pc, r3
005e3f28  34 31 8d e5                                      str r3, [sp, #0x134]
005e3f2c  38 71 8d e5                                      str r7, [sp, #0x138]
005e3f30  7f f8 ff eb                                      bl #0x5e2134
005e3f34  b0 37 9f e5                                      ldr r3, [pc, #0x7b0]
005e3f38  73 6e 8d e2                                      add r6, sp, #0x730
005e3f3c  08 70 a0 e3                                      mov r7, #8
005e3f40  00 76 26 e5                                      str r7, [r6, #-0x600]!
005e3f44  03 30 8f e0                                      add r3, pc, r3
005e3f48  05 00 a0 e1                                      mov r0, r5
005e3f4c  04 10 46 e2                                      sub r1, r6, #4
005e3f50  2c 31 8d e5                                      str r3, [sp, #0x12c]
005e3f54  76 f8 ff eb                                      bl #0x5e2134
005e3f58  90 17 9f e5                                      ldr r1, [pc, #0x790]
005e3f5c  73 2e 8d e2                                      add r2, sp, #0x730
005e3f60  ac 70 22 e5                                      str r7, [r2, #-0xac]!
005e3f64  01 10 8f e0                                      add r1, pc, r1
005e3f68  05 00 a0 e1                                      mov r0, r5
005e3f6c  ae f8 ff eb                                      bl #0x5e222c
005e3f70  7c 37 9f e5                                      ldr r3, [pc, #0x77c]
005e3f74  0c 10 46 e2                                      sub r1, r6, #0xc
005e3f78  07 60 a0 e3                                      mov r6, #7
005e3f7c  03 30 8f e0                                      add r3, pc, r3
005e3f80  00 50 a0 e1                                      mov r5, r0
005e3f84  24 31 8d e5                                      str r3, [sp, #0x124]
005e3f88  28 61 8d e5                                      str r6, [sp, #0x128]
005e3f8c  68 f8 ff eb                                      bl #0x5e2134
005e3f90  60 17 9f e5                                      ldr r1, [pc, #0x760]
005e3f94  73 2e 8d e2                                      add r2, sp, #0x730
005e3f98  b0 60 22 e5                                      str r6, [r2, #-0xb0]!
005e3f9c  01 10 8f e0                                      add r1, pc, r1
005e3fa0  05 00 a0 e1                                      mov r0, r5
005e3fa4  a0 f8 ff eb                                      bl #0x5e222c
005e3fa8  4c 37 9f e5                                      ldr r3, [pc, #0x74c]
005e3fac  73 5e 8d e2                                      add r5, sp, #0x730
005e3fb0  06 70 a0 e3                                      mov r7, #6
005e3fb4  10 76 25 e5                                      str r7, [r5, #-0x610]!
005e3fb8  03 30 8f e0                                      add r3, pc, r3
005e3fbc  04 10 45 e2                                      sub r1, r5, #4
005e3fc0  00 60 a0 e1                                      mov r6, r0
005e3fc4  1c 31 8d e5                                      str r3, [sp, #0x11c]
005e3fc8  59 f8 ff eb                                      bl #0x5e2134
005e3fcc  2c 17 9f e5                                      ldr r1, [pc, #0x72c]
005e3fd0  73 2e 8d e2                                      add r2, sp, #0x730
005e3fd4  b4 70 22 e5                                      str r7, [r2, #-0xb4]!
005e3fd8  01 10 8f e0                                      add r1, pc, r1
005e3fdc  06 00 a0 e1                                      mov r0, r6
005e3fe0  7b f8 ff eb                                      bl #0x5e21d4
005e3fe4  18 37 9f e5                                      ldr r3, [pc, #0x718]
005e3fe8  0c 10 45 e2                                      sub r1, r5, #0xc
005e3fec  05 50 a0 e3                                      mov r5, #5
005e3ff0  03 30 8f e0                                      add r3, pc, r3
005e3ff4  00 60 a0 e1                                      mov r6, r0
005e3ff8  14 31 8d e5                                      str r3, [sp, #0x114]
005e3ffc  18 51 8d e5                                      str r5, [sp, #0x118]
005e4000  4b f8 ff eb                                      bl #0x5e2134
005e4004  fc 16 9f e5                                      ldr r1, [pc, #0x6fc]
005e4008  73 2e 8d e2                                      add r2, sp, #0x730
005e400c  b8 50 22 e5                                      str r5, [r2, #-0xb8]!
005e4010  01 10 8f e0                                      add r1, pc, r1
005e4014  06 00 a0 e1                                      mov r0, r6
005e4018  6d f8 ff eb                                      bl #0x5e21d4
005e401c  e8 36 9f e5                                      ldr r3, [pc, #0x6e8]
005e4020  09 70 a0 e3                                      mov r7, #9
005e4024  73 6e 8d e2                                      add r6, sp, #0x730
005e4028  20 76 26 e5                                      str r7, [r6, #-0x620]!
005e402c  03 30 8f e0                                      add r3, pc, r3
005e4030  04 10 46 e2                                      sub r1, r6, #4
005e4034  00 50 a0 e1                                      mov r5, r0
005e4038  0c 31 8d e5                                      str r3, [sp, #0x10c]
005e403c  3c f8 ff eb                                      bl #0x5e2134
005e4040  c8 36 9f e5                                      ldr r3, [pc, #0x6c8]
005e4044  0c 10 46 e2                                      sub r1, r6, #0xc
005e4048  05 00 a0 e1                                      mov r0, r5
005e404c  03 30 8f e0                                      add r3, pc, r3
005e4050  04 31 8d e5                                      str r3, [sp, #0x104]
005e4054  08 71 8d e5                                      str r7, [sp, #0x108]
005e4058  35 f8 ff eb                                      bl #0x5e2134
005e405c  b0 16 9f e5                                      ldr r1, [pc, #0x6b0]
005e4060  73 2e 8d e2                                      add r2, sp, #0x730
005e4064  bc 70 22 e5                                      str r7, [r2, #-0xbc]!
005e4068  01 10 8f e0                                      add r1, pc, r1
005e406c  05 00 a0 e1                                      mov r0, r5
005e4070  6d f8 ff eb                                      bl #0x5e222c
005e4074  9c 16 9f e5                                      ldr r1, [pc, #0x69c]
005e4078  73 2e 8d e2                                      add r2, sp, #0x730
005e407c  0f 60 a0 e3                                      mov r6, #0xf
005e4080  c0 60 22 e5                                      str r6, [r2, #-0xc0]!
005e4084  01 10 8f e0                                      add r1, pc, r1
005e4088  3b f8 ff eb                                      bl #0x5e217c
005e408c  88 36 9f e5                                      ldr r3, [pc, #0x688]
005e4090  73 7e 8d e2                                      add r7, sp, #0x730
005e4094  30 66 27 e5                                      str r6, [r7, #-0x630]!
005e4098  03 30 8f e0                                      add r3, pc, r3
005e409c  04 10 47 e2                                      sub r1, r7, #4
005e40a0  00 50 a0 e1                                      mov r5, r0
005e40a4  fc 30 8d e5                                      str r3, [sp, #0xfc]
005e40a8  21 f8 ff eb                                      bl #0x5e2134
005e40ac  6c 36 9f e5                                      ldr r3, [pc, #0x66c]
005e40b0  0c 10 47 e2                                      sub r1, r7, #0xc
005e40b4  05 00 a0 e1                                      mov r0, r5
005e40b8  0d 70 a0 e3                                      mov r7, #0xd
005e40bc  03 30 8f e0                                      add r3, pc, r3
005e40c0  f4 30 8d e5                                      str r3, [sp, #0xf4]
005e40c4  f8 70 8d e5                                      str r7, [sp, #0xf8]
005e40c8  19 f8 ff eb                                      bl #0x5e2134
005e40cc  50 36 9f e5                                      ldr r3, [pc, #0x650]
005e40d0  73 6e 8d e2                                      add r6, sp, #0x730
005e40d4  40 76 26 e5                                      str r7, [r6, #-0x640]!
005e40d8  03 30 8f e0                                      add r3, pc, r3
005e40dc  05 00 a0 e1                                      mov r0, r5
005e40e0  04 10 46 e2                                      sub r1, r6, #4
005e40e4  ec 30 8d e5                                      str r3, [sp, #0xec]
005e40e8  11 f8 ff eb                                      bl #0x5e2134
005e40ec  34 36 9f e5                                      ldr r3, [pc, #0x634]
005e40f0  0c 10 46 e2                                      sub r1, r6, #0xc
005e40f4  0e 70 a0 e3                                      mov r7, #0xe
005e40f8  03 30 8f e0                                      add r3, pc, r3
005e40fc  05 00 a0 e1                                      mov r0, r5
005e4100  e4 30 8d e5                                      str r3, [sp, #0xe4]
005e4104  e8 70 8d e5                                      str r7, [sp, #0xe8]
005e4108  09 f8 ff eb                                      bl #0x5e2134
005e410c  18 36 9f e5                                      ldr r3, [pc, #0x618]
005e4110  73 6e 8d e2                                      add r6, sp, #0x730
005e4114  50 76 26 e5                                      str r7, [r6, #-0x650]!
005e4118  03 30 8f e0                                      add r3, pc, r3
005e411c  05 00 a0 e1                                      mov r0, r5
005e4120  04 10 46 e2                                      sub r1, r6, #4
005e4124  dc 30 8d e5                                      str r3, [sp, #0xdc]
005e4128  01 f8 ff eb                                      bl #0x5e2134
005e412c  fc 15 9f e5                                      ldr r1, [pc, #0x5fc]
005e4130  0b 70 a0 e3                                      mov r7, #0xb
005e4134  73 2e 8d e2                                      add r2, sp, #0x730
005e4138  c4 70 22 e5                                      str r7, [r2, #-0xc4]!
005e413c  01 10 8f e0                                      add r1, pc, r1
005e4140  05 00 a0 e1                                      mov r0, r5
005e4144  38 f8 ff eb                                      bl #0x5e222c
005e4148  e4 15 9f e5                                      ldr r1, [pc, #0x5e4]
005e414c  73 2e 8d e2                                      add r2, sp, #0x730
005e4150  c8 70 22 e5                                      str r7, [r2, #-0xc8]!
005e4154  01 10 8f e0                                      add r1, pc, r1
005e4158  1d f8 ff eb                                      bl #0x5e21d4
005e415c  d4 15 9f e5                                      ldr r1, [pc, #0x5d4]
005e4160  73 2e 8d e2                                      add r2, sp, #0x730
005e4164  0c 50 a0 e3                                      mov r5, #0xc
005e4168  cc 50 22 e5                                      str r5, [r2, #-0xcc]!
005e416c  01 10 8f e0                                      add r1, pc, r1
005e4170  17 f8 ff eb                                      bl #0x5e21d4
005e4174  c0 35 9f e5                                      ldr r3, [pc, #0x5c0]
005e4178  0c 10 46 e2                                      sub r1, r6, #0xc
005e417c  00 70 a0 e1                                      mov r7, r0
005e4180  03 30 8f e0                                      add r3, pc, r3
005e4184  d8 50 8d e5                                      str r5, [sp, #0xd8]
005e4188  d4 30 8d e5                                      str r3, [sp, #0xd4]
005e418c  e8 f7 ff eb                                      bl #0x5e2134
005e4190  a8 35 9f e5                                      ldr r3, [pc, #0x5a8]
005e4194  73 5e 8d e2                                      add r5, sp, #0x730
005e4198  20 60 a0 e3                                      mov r6, #0x20
005e419c  60 66 25 e5                                      str r6, [r5, #-0x660]!
005e41a0  03 30 8f e0                                      add r3, pc, r3
005e41a4  07 00 a0 e1                                      mov r0, r7
005e41a8  04 10 45 e2                                      sub r1, r5, #4
005e41ac  cc 30 8d e5                                      str r3, [sp, #0xcc]
005e41b0  df f7 ff eb                                      bl #0x5e2134
005e41b4  88 15 9f e5                                      ldr r1, [pc, #0x588]
005e41b8  73 2e 8d e2                                      add r2, sp, #0x730
005e41bc  d0 60 22 e5                                      str r6, [r2, #-0xd0]!
005e41c0  01 10 8f e0                                      add r1, pc, r1
005e41c4  07 00 a0 e1                                      mov r0, r7
005e41c8  eb f7 ff eb                                      bl #0x5e217c
005e41cc  74 35 9f e5                                      ldr r3, [pc, #0x574]
005e41d0  0c 10 45 e2                                      sub r1, r5, #0xc
005e41d4  1c 50 a0 e3                                      mov r5, #0x1c
005e41d8  03 30 8f e0                                      add r3, pc, r3
005e41dc  00 70 a0 e1                                      mov r7, r0
005e41e0  c4 30 8d e5                                      str r3, [sp, #0xc4]
005e41e4  c8 50 8d e5                                      str r5, [sp, #0xc8]
005e41e8  d1 f7 ff eb                                      bl #0x5e2134
005e41ec  58 35 9f e5                                      ldr r3, [pc, #0x558]
005e41f0  73 6e 8d e2                                      add r6, sp, #0x730
005e41f4  70 56 26 e5                                      str r5, [r6, #-0x670]!
005e41f8  03 30 8f e0                                      add r3, pc, r3
005e41fc  07 00 a0 e1                                      mov r0, r7
005e4200  04 10 46 e2                                      sub r1, r6, #4
005e4204  bc 30 8d e5                                      str r3, [sp, #0xbc]
005e4208  c9 f7 ff eb                                      bl #0x5e2134
005e420c  3c 15 9f e5                                      ldr r1, [pc, #0x53c]
005e4210  73 2e 8d e2                                      add r2, sp, #0x730
005e4214  d4 50 22 e5                                      str r5, [r2, #-0xd4]!
005e4218  01 10 8f e0                                      add r1, pc, r1
005e421c  07 00 a0 e1                                      mov r0, r7
005e4220  eb f7 ff eb                                      bl #0x5e21d4
005e4224  28 15 9f e5                                      ldr r1, [pc, #0x528]
005e4228  73 2e 8d e2                                      add r2, sp, #0x730
005e422c  d8 50 22 e5                                      str r5, [r2, #-0xd8]!
005e4230  01 10 8f e0                                      add r1, pc, r1
005e4234  fc f7 ff eb                                      bl #0x5e222c
005e4238  18 35 9f e5                                      ldr r3, [pc, #0x518]
005e423c  0c 10 46 e2                                      sub r1, r6, #0xc
005e4240  00 70 a0 e1                                      mov r7, r0
005e4244  03 30 8f e0                                      add r3, pc, r3
005e4248  b8 50 8d e5                                      str r5, [sp, #0xb8]
005e424c  b4 30 8d e5                                      str r3, [sp, #0xb4]
005e4250  b7 f7 ff eb                                      bl #0x5e2134
005e4254  00 35 9f e5                                      ldr r3, [pc, #0x500]
005e4258  73 6e 8d e2                                      add r6, sp, #0x730
005e425c  80 56 26 e5                                      str r5, [r6, #-0x680]!
005e4260  03 30 8f e0                                      add r3, pc, r3
005e4264  07 00 a0 e1                                      mov r0, r7
005e4268  04 10 46 e2                                      sub r1, r6, #4
005e426c  ac 30 8d e5                                      str r3, [sp, #0xac]
005e4270  af f7 ff eb                                      bl #0x5e2134
005e4274  e4 14 9f e5                                      ldr r1, [pc, #0x4e4]
005e4278  73 2e 8d e2                                      add r2, sp, #0x730
005e427c  dc 50 22 e5                                      str r5, [r2, #-0xdc]!
005e4280  01 10 8f e0                                      add r1, pc, r1
005e4284  07 00 a0 e1                                      mov r0, r7
005e4288  d1 f7 ff eb                                      bl #0x5e21d4
005e428c  d0 14 9f e5                                      ldr r1, [pc, #0x4d0]
005e4290  73 2e 8d e2                                      add r2, sp, #0x730
005e4294  e0 50 22 e5                                      str r5, [r2, #-0xe0]!
005e4298  01 10 8f e0                                      add r1, pc, r1
005e429c  e2 f7 ff eb                                      bl #0x5e222c
005e42a0  c0 34 9f e5                                      ldr r3, [pc, #0x4c0]
005e42a4  0c 10 46 e2                                      sub r1, r6, #0xc
005e42a8  0a 60 a0 e3                                      mov r6, #0xa
005e42ac  03 30 8f e0                                      add r3, pc, r3
005e42b0  00 70 a0 e1                                      mov r7, r0
005e42b4  a4 30 8d e5                                      str r3, [sp, #0xa4]
005e42b8  a8 60 8d e5                                      str r6, [sp, #0xa8]
005e42bc  9c f7 ff eb                                      bl #0x5e2134
005e42c0  a4 34 9f e5                                      ldr r3, [pc, #0x4a4]
005e42c4  73 5e 8d e2                                      add r5, sp, #0x730
005e42c8  90 66 25 e5                                      str r6, [r5, #-0x690]!
005e42cc  03 30 8f e0                                      add r3, pc, r3
005e42d0  07 00 a0 e1                                      mov r0, r7
005e42d4  04 10 45 e2                                      sub r1, r5, #4
005e42d8  9c 30 8d e5                                      str r3, [sp, #0x9c]
005e42dc  94 f7 ff eb                                      bl #0x5e2134
005e42e0  88 14 9f e5                                      ldr r1, [pc, #0x488]
005e42e4  73 2e 8d e2                                      add r2, sp, #0x730
005e42e8  10 30 a0 e3                                      mov r3, #0x10
005e42ec  e4 30 22 e5                                      str r3, [r2, #-0xe4]!
005e42f0  01 10 8f e0                                      add r1, pc, r1
005e42f4  07 00 a0 e1                                      mov r0, r7
005e42f8  cb f7 ff eb                                      bl #0x5e222c
005e42fc  70 34 9f e5                                      ldr r3, [pc, #0x470]
005e4300  0c 10 45 e2                                      sub r1, r5, #0xc
005e4304  00 a0 a0 e1                                      mov sl, r0
005e4308  03 30 8f e0                                      add r3, pc, r3
005e430c  94 30 8d e5                                      str r3, [sp, #0x94]
005e4310  11 30 a0 e3                                      mov r3, #0x11
005e4314  98 30 8d e5                                      str r3, [sp, #0x98]
005e4318  85 f7 ff eb                                      bl #0x5e2134
005e431c  54 34 9f e5                                      ldr r3, [pc, #0x454]
005e4320  54 94 9f e5                                      ldr sb, [pc, #0x454]
005e4324  54 74 9f e5                                      ldr r7, [pc, #0x454]
005e4328  03 30 8f e0                                      add r3, pc, r3
005e432c  09 90 8f e0                                      add sb, pc, sb
005e4330  00 60 a0 e3                                      mov r6, #0
005e4334  04 b0 4b e2                                      sub fp, fp, #4
005e4338  07 20 83 e2                                      add r2, r3, #7
005e433c  10 30 8d e5                                      str r3, [sp, #0x10]
005e4340  18 b0 8d e5                                      str fp, [sp, #0x18]
005e4344  06 80 a0 e1                                      mov r8, r6
005e4348  14 20 8d e5                                      str r2, [sp, #0x14]
005e434c  08 90 8d e5                                      str sb, [sp, #8]
005e4350  78 30 ff e6                                      uxth r3, r8
005e4354  ff 00 53 e3                                      cmp r3, #0xff
005e4358  87 00 00 1a                                      bne #0x5e457c
005e435c  14 20 9d e5                                      ldr r2, [sp, #0x14]
005e4360  10 b0 9d e5                                      ldr fp, [sp, #0x10]
005e4364  08 00 a0 e3                                      mov r0, #8
005e4368  07 30 a0 e3                                      mov r3, #7
005e436c  04 20 8d e5                                      str r2, [sp, #4]
005e4370  00 30 8d e5                                      str r3, [sp]
005e4374  9e 40 fd eb                                      bl #0x5345f4
005e4378  04 20 9d e5                                      ldr r2, [sp, #4]
005e437c  00 50 a0 e1                                      mov r5, r0
005e4380  00 30 9d e5                                      ldr r3, [sp]
005e4384  0b 00 52 e1                                      cmp r2, fp
005e4388  0b 00 00 0a                                      beq #0x5e43bc
005e438c  02 20 6b e0                                      rsb r2, fp, r2
005e4390  00 10 a0 e3                                      mov r1, #0
005e4394  d1 00 9b e1                                      ldrsb r0, [fp, r1]
005e4398  ff 00 50 e3                                      cmp r0, #0xff
005e439c  07 c0 94 97                                      ldrls ip, [r4, r7]
005e43a0  00 c0 9c 95                                      ldrls ip, [ip]
005e43a4  80 00 8c 90                                      addls r0, ip, r0, lsl #1
005e43a8  f2 00 d0 91                                      ldrshls r0, [r0, #2]
005e43ac  01 00 c5 e7                                      strb r0, [r5, r1]
005e43b0  01 10 81 e2                                      add r1, r1, #1
005e43b4  02 00 51 e1                                      cmp r1, r2
005e43b8  f5 ff ff 1a                                      bne #0x5e4394
005e43bc  00 20 a0 e3                                      mov r2, #0
005e43c0  03 20 c5 e7                                      strb r2, [r5, r3]
005e43c4  05 00 a0 e1                                      mov r0, r5
005e43c8  01 10 a0 e3                                      mov r1, #1
005e43cc  28 03 03 eb                                      bl #0x6a5074
005e43d0  00 b0 50 e2                                      subs fp, r0, #0
005e43d4  00 30 9b 15                                      ldrne r3, [fp]
005e43d8  02 30 83 12                                      addne r3, r3, #2
005e43dc  00 30 8b 15                                      strne r3, [fp]
005e43e0  06 00 99 e7                                      ldr r0, [sb, r6]
005e43e4  06 b0 89 e7                                      str fp, [sb, r6]
005e43e8  00 00 50 e3                                      cmp r0, #0
005e43ec  04 00 00 0a                                      beq #0x5e4404
005e43f0  00 30 90 e5                                      ldr r3, [r0]
005e43f4  01 30 43 e2                                      sub r3, r3, #1
005e43f8  00 00 53 e3                                      cmp r3, #0
005e43fc  00 30 80 e5                                      str r3, [r0]
005e4400  66 00 00 0a                                      beq #0x5e45a0
005e4404  00 00 5b e3                                      cmp fp, #0
005e4408  04 00 00 0a                                      beq #0x5e4420
005e440c  00 30 9b e5                                      ldr r3, [fp]
005e4410  01 30 43 e2                                      sub r3, r3, #1
005e4414  00 00 53 e3                                      cmp r3, #0
005e4418  00 30 8b e5                                      str r3, [fp]
005e441c  61 00 00 0a                                      beq #0x5e45a8
005e4420  08 20 9d e5                                      ldr r2, [sp, #8]
005e4424  06 30 92 e7                                      ldr r3, [r2, r6]
005e4428  90 80 8d e5                                      str r8, [sp, #0x90]
005e442c  00 00 53 e3                                      cmp r3, #0
005e4430  04 30 83 12                                      addne r3, r3, #4
005e4434  00 00 55 e3                                      cmp r5, #0
005e4438  8c 30 8d e5                                      str r3, [sp, #0x8c]
005e443c  01 00 00 0a                                      beq #0x5e4448
005e4440  05 00 a0 e1                                      mov r0, r5
005e4444  8f 40 fd eb                                      bl #0x534688
005e4448  18 20 9a e5                                      ldr r2, [sl, #0x18]
005e444c  10 30 9a e5                                      ldr r3, [sl, #0x10]
005e4450  08 20 42 e2                                      sub r2, r2, #8
005e4454  02 00 53 e1                                      cmp r3, r2
005e4458  55 00 00 0a                                      beq #0x5e45b4
005e445c  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
005e4460  00 20 83 e5                                      str r2, [r3]
005e4464  90 20 9d e5                                      ldr r2, [sp, #0x90]
005e4468  04 20 83 e5                                      str r2, [r3, #4]
005e446c  10 30 9a e5                                      ldr r3, [sl, #0x10]
005e4470  08 30 83 e2                                      add r3, r3, #8
005e4474  10 30 8a e5                                      str r3, [sl, #0x10]
005e4478  04 60 86 e2                                      add r6, r6, #4
005e447c  fc 00 56 e3                                      cmp r6, #0xfc
005e4480  01 80 88 e2                                      add r8, r8, #1
005e4484  b1 ff ff 1a                                      bne #0x5e4350
005e4488  f4 32 9f e5                                      ldr r3, [pc, #0x2f4]
005e448c  f4 82 9f e5                                      ldr r8, [pc, #0x2f4]
005e4490  00 10 a0 e3                                      mov r1, #0
005e4494  03 30 8f e0                                      add r3, pc, r3
005e4498  03 20 a0 e1                                      mov r2, r3
005e449c  10 90 9a e5                                      ldr sb, [sl, #0x10]
005e44a0  0c b0 9a e5                                      ldr fp, [sl, #0xc]
005e44a4  08 60 9a e5                                      ldr r6, [sl, #8]
005e44a8  00 50 9a e5                                      ldr r5, [sl]
005e44ac  08 80 8f e0                                      add r8, pc, r8
005e44b0  14 11 e2 e5                                      strb r1, [r2, #0x114]!
005e44b4  80 70 8d e2                                      add r7, sp, #0x80
005e44b8  24 11 83 e5                                      str r1, [r3, #0x124]
005e44bc  20 21 83 e5                                      str r2, [r3, #0x120]
005e44c0  18 11 83 e5                                      str r1, [r3, #0x118]
005e44c4  1c 21 83 e5                                      str r2, [r3, #0x11c]
005e44c8  45 8f 88 e2                                      add r8, r8, #0x114
005e44cc  04 70 47 e2                                      sub r7, r7, #4
005e44d0  20 a0 8d e2                                      add sl, sp, #0x20
005e44d4  08 00 00 ea                                      b #0x5e44fc
005e44d8  00 30 95 e5                                      ldr r3, [r5]
005e44dc  7c 30 8d e5                                      str r3, [sp, #0x7c]
005e44e0  04 30 95 e5                                      ldr r3, [r5, #4]
005e44e4  08 50 85 e2                                      add r5, r5, #8
005e44e8  80 30 8d e5                                      str r3, [sp, #0x80]
005e44ec  9c f5 ff eb                                      bl #0x5e1b64
005e44f0  05 00 56 e1                                      cmp r6, r5
005e44f4  04 50 bb 05                                      ldreq r5, [fp, #4]!
005e44f8  80 60 85 02                                      addeq r6, r5, #0x80
005e44fc  09 00 55 e1                                      cmp r5, sb
005e4500  0a 00 a0 e1                                      mov r0, sl
005e4504  08 10 a0 e1                                      mov r1, r8
005e4508  07 20 a0 e1                                      mov r2, r7
005e450c  f1 ff ff 1a                                      bne #0x5e44d8
005e4510  74 52 9f e5                                      ldr r5, [pc, #0x274]
005e4514  05 50 8f e0                                      add r5, pc, r5
005e4518  11 0e 85 e2                                      add r0, r5, #0x110
005e451c  46 a9 f4 eb                                      bl #0x30ea3c
005e4520  68 32 9f e5                                      ldr r3, [pc, #0x268]
005e4524  45 0f 85 e2                                      add r0, r5, #0x114
005e4528  03 10 94 e7                                      ldr r1, [r4, r3]
005e452c  60 32 9f e5                                      ldr r3, [pc, #0x260]
005e4530  03 20 94 e7                                      ldr r2, [r4, r3]
005e4534  72 a7 f4 eb                                      bl #0x30e304
005e4538  54 30 9d e5                                      ldr r3, [sp, #0x54]
005e453c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005e4540  64 10 9d e5                                      ldr r1, [sp, #0x64]
005e4544  60 00 9d e5                                      ldr r0, [sp, #0x60]
005e4548  03 00 51 e1                                      cmp r1, r3
005e454c  1c 00 00 0a                                      beq #0x5e45c4
005e4550  08 30 83 e2                                      add r3, r3, #8
005e4554  02 00 53 e1                                      cmp r3, r2
005e4558  04 00 00 0a                                      beq #0x5e4570
005e455c  03 00 51 e1                                      cmp r1, r3
005e4560  08 30 83 e2                                      add r3, r3, #8
005e4564  16 00 00 0a                                      beq #0x5e45c4
005e4568  03 00 52 e1                                      cmp r2, r3
005e456c  fa ff ff 1a                                      bne #0x5e455c
005e4570  04 30 b0 e5                                      ldr r3, [r0, #4]!
005e4574  80 20 83 e2                                      add r2, r3, #0x80
005e4578  f2 ff ff ea                                      b #0x5e4548
005e457c  00 00 a0 e3                                      mov r0, #0
005e4580  c7 0e 00 eb                                      bl #0x5e80a4
005e4584  06 b0 90 e7                                      ldr fp, [r0, r6]
005e4588  0b 00 a0 e1                                      mov r0, fp
005e458c  30 a6 f4 eb                                      bl #0x30de54
005e4590  00 30 a0 e1                                      mov r3, r0
005e4594  03 20 8b e0                                      add r2, fp, r3
005e4598  01 00 80 e2                                      add r0, r0, #1
005e459c  72 ff ff ea                                      b #0x5e436c
005e45a0  fd 01 03 eb                                      bl #0x6a4d9c
005e45a4  96 ff ff ea                                      b #0x5e4404
005e45a8  0b 00 a0 e1                                      mov r0, fp
005e45ac  fa 01 03 eb                                      bl #0x6a4d9c
005e45b0  9a ff ff ea                                      b #0x5e4420
005e45b4  0a 00 a0 e1                                      mov r0, sl
005e45b8  18 10 9d e5                                      ldr r1, [sp, #0x18]
005e45bc  79 f6 ff eb                                      bl #0x5e1fa8
005e45c0  ac ff ff ea                                      b #0x5e4478
005e45c4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005e45c8  d3 f5 ff eb                                      bl #0x5e1d1c
005e45cc  37 f7 ff ea                                      b #0x5e22b0
005e45d0  90 b0 8d e2                                      add fp, sp, #0x90
005e45d4  06 00 a0 e1                                      mov r0, r6
005e45d8  0c 10 4b e2                                      sub r1, fp, #0xc
005e45dc  71 f6 ff eb                                      bl #0x5e1fa8
005e45e0  b4 f7 ff ea                                      b #0x5e24b8
; mapping-symbol data/literal pool
005e45e4  e0 ec 2f 00 d8 ec 2f 00 cc ec 2f 00 b4 ec 2f 00  .byte 0xe0, 0xec, 0x2f, 0x00, 0xd8, 0xec, 0x2f, 0x00, 0xcc, 0xec, 0x2f, 0x00, 0xb4, 0xec, 0x2f, 0x00
005e45f4  a0 ec 2f 00 90 ec 2f 00 88 ec 2f 00 7c ec 2f 00  .byte 0xa0, 0xec, 0x2f, 0x00, 0x90, 0xec, 0x2f, 0x00, 0x88, 0xec, 0x2f, 0x00, 0x7c, 0xec, 0x2f, 0x00
005e4604  6c ec 2f 00 60 ec 2f 00 54 ec 2f 00 4c ec 2f 00  .byte 0x6c, 0xec, 0x2f, 0x00, 0x60, 0xec, 0x2f, 0x00, 0x54, 0xec, 0x2f, 0x00, 0x4c, 0xec, 0x2f, 0x00
005e4614  34 ec 2f 00 2c ec 2f 00 18 ec 2f 00 10 ec 2f 00  .byte 0x34, 0xec, 0x2f, 0x00, 0x2c, 0xec, 0x2f, 0x00, 0x18, 0xec, 0x2f, 0x00, 0x10, 0xec, 0x2f, 0x00
005e4624  08 ec 2f 00 f8 eb 2f 00 f0 eb 2f 00 e8 eb 2f 00  .byte 0x08, 0xec, 0x2f, 0x00, 0xf8, 0xeb, 0x2f, 0x00, 0xf0, 0xeb, 0x2f, 0x00, 0xe8, 0xeb, 0x2f, 0x00
005e4634  e0 eb 2f 00 e8 eb 2f 00 cc eb 2f 00 bc eb 2f 00  .byte 0xe0, 0xeb, 0x2f, 0x00, 0xe8, 0xeb, 0x2f, 0x00, 0xcc, 0xeb, 0x2f, 0x00, 0xbc, 0xeb, 0x2f, 0x00
005e4644  b0 eb 2f 00 88 eb 2f 00 80 eb 2f 00 7c eb 2f 00  .byte 0xb0, 0xeb, 0x2f, 0x00, 0x88, 0xeb, 0x2f, 0x00, 0x80, 0xeb, 0x2f, 0x00, 0x7c, 0xeb, 0x2f, 0x00
005e4654  6c eb 2f 00 64 eb 2f 00 5c eb 2f 00 58 eb 2f 00  .byte 0x6c, 0xeb, 0x2f, 0x00, 0x64, 0xeb, 0x2f, 0x00, 0x5c, 0xeb, 0x2f, 0x00, 0x58, 0xeb, 0x2f, 0x00
005e4664  50 eb 2f 00 48 eb 2f 00 40 eb 2f 00 38 eb 2f 00  .byte 0x50, 0xeb, 0x2f, 0x00, 0x48, 0xeb, 0x2f, 0x00, 0x40, 0xeb, 0x2f, 0x00, 0x38, 0xeb, 0x2f, 0x00
005e4674  34 eb 2f 00 2c eb 2f 00 24 eb 2f 00 1c eb 2f 00  .byte 0x34, 0xeb, 0x2f, 0x00, 0x2c, 0xeb, 0x2f, 0x00, 0x24, 0xeb, 0x2f, 0x00, 0x1c, 0xeb, 0x2f, 0x00
005e4684  14 eb 2f 00 1c eb 2f 00 00 eb 2f 00 f0 ea 2f 00  .byte 0x14, 0xeb, 0x2f, 0x00, 0x1c, 0xeb, 0x2f, 0x00, 0x00, 0xeb, 0x2f, 0x00, 0xf0, 0xea, 0x2f, 0x00
005e4694  e4 ea 2f 00 c0 ea 2f 00 bc ea 2f 00 b4 ea 2f 00  .byte 0xe4, 0xea, 0x2f, 0x00, 0xc0, 0xea, 0x2f, 0x00, 0xbc, 0xea, 0x2f, 0x00, 0xb4, 0xea, 0x2f, 0x00
005e46a4  b0 ea 2f 00 a8 ea 2f 00 c0 e5 2d 00 78 ea 2f 00  .byte 0xb0, 0xea, 0x2f, 0x00, 0xa8, 0xea, 0x2f, 0x00, 0xc0, 0xe5, 0x2d, 0x00, 0x78, 0xea, 0x2f, 0x00
005e46b4  68 ea 2f 00 58 ea 2f 00 50 ea 2f 00 4c ea 2f 00  .byte 0x68, 0xea, 0x2f, 0x00, 0x58, 0xea, 0x2f, 0x00, 0x50, 0xea, 0x2f, 0x00, 0x4c, 0xea, 0x2f, 0x00
005e46c4  48 ea 2f 00 40 ea 2f 00 3c ea 2f 00 30 ea 2f 00  .byte 0x48, 0xea, 0x2f, 0x00, 0x40, 0xea, 0x2f, 0x00, 0x3c, 0xea, 0x2f, 0x00, 0x30, 0xea, 0x2f, 0x00
005e46d4  1c ea 2f 00 10 ea 2f 00 00 ea 2f 00 f8 e9 2f 00  .byte 0x1c, 0xea, 0x2f, 0x00, 0x10, 0xea, 0x2f, 0x00, 0x00, 0xea, 0x2f, 0x00, 0xf8, 0xe9, 0x2f, 0x00
005e46e4  14 8e 30 00 c4 e9 2f 00 ac e9 2f 00 a4 e9 2f 00  .byte 0x14, 0x8e, 0x30, 0x00, 0xc4, 0xe9, 0x2f, 0x00, 0xac, 0xe9, 0x2f, 0x00, 0xa4, 0xe9, 0x2f, 0x00
005e46f4  9c e9 2f 00 94 e9 2f 00 88 e9 2f 00 80 e9 2f 00  .byte 0x9c, 0xe9, 0x2f, 0x00, 0x94, 0xe9, 0x2f, 0x00, 0x88, 0xe9, 0x2f, 0x00, 0x80, 0xe9, 0x2f, 0x00
005e4704  78 e9 2f 00 70 e9 2f 00 64 e9 2f 00 5c e9 2f 00  .byte 0x78, 0xe9, 0x2f, 0x00, 0x70, 0xe9, 0x2f, 0x00, 0x64, 0xe9, 0x2f, 0x00, 0x5c, 0xe9, 0x2f, 0x00
005e4714  50 e9 2f 00 44 e9 2f 00 40 e9 2f 00 2c e9 2f 00  .byte 0x50, 0xe9, 0x2f, 0x00, 0x44, 0xe9, 0x2f, 0x00, 0x40, 0xe9, 0x2f, 0x00, 0x2c, 0xe9, 0x2f, 0x00
005e4724  28 e9 2f 00 20 e9 2f 00 10 e9 2f 00 fc e8 2f 00  .byte 0x28, 0xe9, 0x2f, 0x00, 0x20, 0xe9, 0x2f, 0x00, 0x10, 0xe9, 0x2f, 0x00, 0xfc, 0xe8, 0x2f, 0x00
005e4734  f4 e8 2f 00 ec e8 2f 00 e8 e8 2f 00 d8 e8 2f 00  .byte 0xf4, 0xe8, 0x2f, 0x00, 0xec, 0xe8, 0x2f, 0x00, 0xe8, 0xe8, 0x2f, 0x00, 0xd8, 0xe8, 0x2f, 0x00
005e4744  c8 e8 2f 00 c0 e8 2f 00 b8 e8 2f 00 b0 e8 2f 00  .byte 0xc8, 0xe8, 0x2f, 0x00, 0xc0, 0xe8, 0x2f, 0x00, 0xb8, 0xe8, 0x2f, 0x00, 0xb0, 0xe8, 0x2f, 0x00
005e4754  a8 e8 2f 00 a4 e8 2f 00 a0 e8 2f 00 98 e8 2f 00  .byte 0xa8, 0xe8, 0x2f, 0x00, 0xa4, 0xe8, 0x2f, 0x00, 0xa0, 0xe8, 0x2f, 0x00, 0x98, 0xe8, 0x2f, 0x00
005e4764  90 e8 2f 00 8c e8 2f 00 7c e8 2f 00 68 e8 2f 00  .byte 0x90, 0xe8, 0x2f, 0x00, 0x8c, 0xe8, 0x2f, 0x00, 0x7c, 0xe8, 0x2f, 0x00, 0x68, 0xe8, 0x2f, 0x00
005e4774  60 e8 2f 00 38 21 2e 00 44 27 41 00 e0 36 00 00  .byte 0x60, 0xe8, 0x2f, 0x00, 0x38, 0x21, 0x2e, 0x00, 0x44, 0x27, 0x41, 0x00, 0xe0, 0x36, 0x00, 0x00
005e4784  dc 25 41 00 c4 25 41 00 5c 25 41 00 10 3a 00 00  .byte 0xdc, 0x25, 0x41, 0x00, 0xc4, 0x25, 0x41, 0x00, 0x5c, 0x25, 0x41, 0x00, 0x10, 0x3a, 0x00, 0x00
005e4794  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x005e7974, declared_size=476, range_size=476, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video21getLightParameterNameEPKc
; demangled: glitch::video::getLightParameterName(char const*)
; decoder-mode: arm
005e7974  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e7978  01 50 a0 e1                                      mov r5, r1
005e797c  00 60 a0 e1                                      mov r6, r0
005e7980  33 32 fd eb                                      bl #0x534254
005e7984  00 80 a0 e1                                      mov r8, r0
005e7988  01 00 a0 e3                                      mov r0, #1
005e798c  35 32 fd eb                                      bl #0x534268
005e7990  05 00 a0 e1                                      mov r0, r5
005e7994  2e 99 f4 eb                                      bl #0x30de54
005e7998  00 a0 a0 e1                                      mov sl, r0
005e799c  01 00 80 e2                                      add r0, r0, #1
005e79a0  13 33 fd eb                                      bl #0x5345f4
005e79a4  8c 71 9f e5                                      ldr r7, [pc, #0x18c]
005e79a8  00 40 a0 e1                                      mov r4, r0
005e79ac  0a 00 85 e0                                      add r0, r5, sl
005e79b0  00 00 55 e1                                      cmp r5, r0
005e79b4  07 70 8f e0                                      add r7, pc, r7
005e79b8  0c 00 00 0a                                      beq #0x5e79f0
005e79bc  78 c1 9f e5                                      ldr ip, [pc, #0x178]
005e79c0  00 00 65 e0                                      rsb r0, r5, r0
005e79c4  00 30 a0 e3                                      mov r3, #0
005e79c8  d3 20 95 e1                                      ldrsb r2, [r5, r3]
005e79cc  ff 00 52 e3                                      cmp r2, #0xff
005e79d0  0c 10 97 97                                      ldrls r1, [r7, ip]
005e79d4  00 10 91 95                                      ldrls r1, [r1]
005e79d8  82 20 81 90                                      addls r2, r1, r2, lsl #1
005e79dc  f2 20 d2 91                                      ldrshls r2, [r2, #2]
005e79e0  03 20 c4 e7                                      strb r2, [r4, r3]
005e79e4  01 30 83 e2                                      add r3, r3, #1
005e79e8  00 00 53 e1                                      cmp r3, r0
005e79ec  f5 ff ff 1a                                      bne #0x5e79c8
005e79f0  48 11 9f e5                                      ldr r1, [pc, #0x148]
005e79f4  00 30 a0 e3                                      mov r3, #0
005e79f8  0a 30 c4 e7                                      strb r3, [r4, sl]
005e79fc  01 10 8f e0                                      add r1, pc, r1
005e7a00  04 00 a0 e1                                      mov r0, r4
005e7a04  72 9c f4 eb                                      bl #0x30ebd4
005e7a08  00 00 50 e3                                      cmp r0, #0
005e7a0c  00 00 86 05                                      streq r0, [r6]
005e7a10  30 00 00 0a                                      beq #0x5e7ad8
005e7a14  05 10 d0 e5                                      ldrb r1, [r0, #5]
005e7a18  05 50 80 e2                                      add r5, r0, #5
005e7a1c  00 00 51 e3                                      cmp r1, #0
005e7a20  37 00 00 0a                                      beq #0x5e7b04
005e7a24  18 31 9f e5                                      ldr r3, [pc, #0x118]
005e7a28  03 30 97 e7                                      ldr r3, [r7, r3]
005e7a2c  00 20 93 e5                                      ldr r2, [r3]
005e7a30  71 30 af e6                                      sxtb r3, r1
005e7a34  01 00 73 e3                                      cmn r3, #1
005e7a38  73 00 e2 e6                                      uxtab r0, r2, r3
005e7a3c  2d 00 00 0a                                      beq #0x5e7af8
005e7a40  01 30 d0 e5                                      ldrb r3, [r0, #1]
005e7a44  04 00 13 e3                                      tst r3, #4
005e7a48  2a 00 00 0a                                      beq #0x5e7af8
005e7a4c  00 00 51 e3                                      cmp r1, #0
005e7a50  2b 00 00 0a                                      beq #0x5e7b04
005e7a54  d0 30 d5 e1                                      ldrsb r3, [r5]
005e7a58  01 00 73 e3                                      cmn r3, #1
005e7a5c  33 00 00 0a                                      beq #0x5e7b30
005e7a60  73 30 e2 e6                                      uxtab r3, r2, r3
005e7a64  01 30 d3 e5                                      ldrb r3, [r3, #1]
005e7a68  04 00 13 e3                                      tst r3, #4
005e7a6c  05 70 a0 11                                      movne r7, r5
005e7a70  2e 00 00 0a                                      beq #0x5e7b30
005e7a74  d1 30 f7 e1                                      ldrsb r3, [r7, #1]!
005e7a78  01 00 73 e3                                      cmn r3, #1
005e7a7c  73 10 e2 e6                                      uxtab r1, r2, r3
005e7a80  02 00 00 0a                                      beq #0x5e7a90
005e7a84  01 30 d1 e5                                      ldrb r3, [r1, #1]
005e7a88  04 00 13 e3                                      tst r3, #4
005e7a8c  f8 ff ff 1a                                      bne #0x5e7a74
005e7a90  07 70 65 e0                                      rsb r7, r5, r7
005e7a94  ac 10 9f e5                                      ldr r1, [pc, #0xac]
005e7a98  06 20 a0 e3                                      mov r2, #6
005e7a9c  04 00 a0 e1                                      mov r0, r4
005e7aa0  01 10 8f e0                                      add r1, pc, r1
005e7aa4  6f 9b f4 eb                                      bl #0x30e868
005e7aa8  05 10 a0 e1                                      mov r1, r5
005e7aac  07 20 a0 e1                                      mov r2, r7
005e7ab0  05 00 80 e2                                      add r0, r0, #5
005e7ab4  da 98 f4 eb                                      bl #0x30de24
005e7ab8  00 30 a0 e3                                      mov r3, #0
005e7abc  07 30 c0 e7                                      strb r3, [r0, r7]
005e7ac0  01 10 a0 e3                                      mov r1, #1
005e7ac4  04 00 a0 e1                                      mov r0, r4
005e7ac8  69 f5 02 eb                                      bl #0x6a5074
005e7acc  00 00 50 e3                                      cmp r0, #0
005e7ad0  00 00 86 e5                                      str r0, [r6]
005e7ad4  11 00 00 1a                                      bne #0x5e7b20
005e7ad8  00 00 54 e3                                      cmp r4, #0
005e7adc  01 00 00 0a                                      beq #0x5e7ae8
005e7ae0  04 00 a0 e1                                      mov r0, r4
005e7ae4  e7 32 fd eb                                      bl #0x534688
005e7ae8  08 00 a0 e1                                      mov r0, r8
005e7aec  dd 31 fd eb                                      bl #0x534268
005e7af0  06 00 a0 e1                                      mov r0, r6
005e7af4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e7af8  01 10 f5 e5                                      ldrb r1, [r5, #1]!
005e7afc  00 00 51 e3                                      cmp r1, #0
005e7b00  ca ff ff 1a                                      bne #0x5e7a30
005e7b04  40 00 9f e5                                      ldr r0, [pc, #0x40]
005e7b08  01 10 a0 e3                                      mov r1, #1
005e7b0c  00 00 8f e0                                      add r0, pc, r0
005e7b10  57 f5 02 eb                                      bl #0x6a5074
005e7b14  00 00 50 e3                                      cmp r0, #0
005e7b18  00 00 86 e5                                      str r0, [r6]
005e7b1c  ed ff ff 0a                                      beq #0x5e7ad8
005e7b20  00 30 90 e5                                      ldr r3, [r0]
005e7b24  01 30 83 e2                                      add r3, r3, #1
005e7b28  00 30 80 e5                                      str r3, [r0]
005e7b2c  e9 ff ff ea                                      b #0x5e7ad8
005e7b30  00 70 a0 e3                                      mov r7, #0
005e7b34  d6 ff ff ea                                      b #0x5e7a94
; mapping-symbol data/literal pool
005e7b38  dc d0 3a 00 e0 36 00 00 34 b1 2f 00 dc 1d 00 00  .byte 0xdc, 0xd0, 0x3a, 0x00, 0xe0, 0x36, 0x00, 0x00, 0x34, 0xb1, 0x2f, 0x00, 0xdc, 0x1d, 0x00, 0x00
005e7b48  90 b0 2f 00 24 b0 2f 00                          .byte 0x90, 0xb0, 0x2f, 0x00, 0x24, 0xb0, 0x2f, 0x00

; FUNCTION 0x005e7b50, declared_size=688, range_size=688, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video14sortParametersEPNS0_19SShaderParameterDefEt
; demangled: glitch::video::sortParameters(glitch::video::SShaderParameterDef*, unsigned short)
; decoder-mode: arm
005e7b50  00 00 51 e3                                      cmp r1, #0
005e7b54  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e7b58  00 b0 a0 e1                                      mov fp, r0
005e7b5c  01 90 a0 01                                      moveq sb, r1
005e7b60  01 00 00 1a                                      bne #0x5e7b6c
005e7b64  09 00 a0 e1                                      mov r0, sb
005e7b68  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e7b6c  01 92 a0 e1                                      lsl sb, r1, #4
005e7b70  09 00 a0 e1                                      mov r0, sb
005e7b74  9e 32 fd eb                                      bl #0x5345f4
005e7b78  00 a0 a0 e1                                      mov sl, r0
005e7b7c  29 02 a0 e1                                      lsr r0, sb, #4
005e7b80  00 00 50 e3                                      cmp r0, #0
005e7b84  15 00 00 da                                      ble #0x5e7be0
005e7b88  10 20 8b e2                                      add r2, fp, #0x10
005e7b8c  10 30 8a e2                                      add r3, sl, #0x10
005e7b90  10 10 12 e5                                      ldr r1, [r2, #-0x10]
005e7b94  10 10 03 e5                                      str r1, [r3, #-0x10]
005e7b98  00 00 51 e3                                      cmp r1, #0
005e7b9c  00 c0 91 15                                      ldrne ip, [r1]
005e7ba0  01 c0 8c 12                                      addne ip, ip, #1
005e7ba4  00 c0 81 15                                      strne ip, [r1]
005e7ba8  bc 10 52 e1                                      ldrh r1, [r2, #-0xc]
005e7bac  01 00 50 e2                                      subs r0, r0, #1
005e7bb0  bc 10 43 e1                                      strh r1, [r3, #-0xc]
005e7bb4  0a 10 52 e5                                      ldrb r1, [r2, #-0xa]
005e7bb8  0a 10 43 e5                                      strb r1, [r3, #-0xa]
005e7bbc  09 10 52 e5                                      ldrb r1, [r2, #-9]
005e7bc0  09 10 43 e5                                      strb r1, [r3, #-9]
005e7bc4  08 10 12 e5                                      ldr r1, [r2, #-8]
005e7bc8  08 10 03 e5                                      str r1, [r3, #-8]
005e7bcc  04 10 12 e5                                      ldr r1, [r2, #-4]
005e7bd0  10 20 82 e2                                      add r2, r2, #0x10
005e7bd4  04 10 03 e5                                      str r1, [r3, #-4]
005e7bd8  10 30 83 e2                                      add r3, r3, #0x10
005e7bdc  eb ff ff 1a                                      bne #0x5e7b90
005e7be0  09 90 8a e0                                      add sb, sl, sb
005e7be4  0a 00 59 e1                                      cmp sb, sl
005e7be8  00 90 a0 03                                      moveq sb, #0
005e7bec  7a 00 00 0a                                      beq #0x5e7ddc
005e7bf0  0a 40 a0 e1                                      mov r4, sl
005e7bf4  0b 70 a0 e1                                      mov r7, fp
005e7bf8  0a 60 a0 e1                                      mov r6, sl
005e7bfc  1f 00 00 ea                                      b #0x5e7c80
005e7c00  00 30 94 e5                                      ldr r3, [r4]
005e7c04  10 50 87 e2                                      add r5, r7, #0x10
005e7c08  00 00 53 e3                                      cmp r3, #0
005e7c0c  00 20 93 15                                      ldrne r2, [r3]
005e7c10  01 20 82 12                                      addne r2, r2, #1
005e7c14  00 20 83 15                                      strne r2, [r3]
005e7c18  00 00 97 e5                                      ldr r0, [r7]
005e7c1c  00 30 87 e5                                      str r3, [r7]
005e7c20  00 00 50 e3                                      cmp r0, #0
005e7c24  05 00 00 0a                                      beq #0x5e7c40
005e7c28  00 30 90 e5                                      ldr r3, [r0]
005e7c2c  01 30 43 e2                                      sub r3, r3, #1
005e7c30  00 00 53 e3                                      cmp r3, #0
005e7c34  00 30 80 e5                                      str r3, [r0]
005e7c38  00 00 00 1a                                      bne #0x5e7c40
005e7c3c  56 f4 02 eb                                      bl #0x6a4d9c
005e7c40  b4 30 d4 e1                                      ldrh r3, [r4, #4]
005e7c44  06 80 a0 e1                                      mov r8, r6
005e7c48  b4 30 c7 e1                                      strh r3, [r7, #4]
005e7c4c  06 30 d4 e5                                      ldrb r3, [r4, #6]
005e7c50  06 30 c7 e5                                      strb r3, [r7, #6]
005e7c54  07 30 d4 e5                                      ldrb r3, [r4, #7]
005e7c58  07 30 c7 e5                                      strb r3, [r7, #7]
005e7c5c  08 30 94 e5                                      ldr r3, [r4, #8]
005e7c60  08 30 87 e5                                      str r3, [r7, #8]
005e7c64  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005e7c68  10 40 84 e2                                      add r4, r4, #0x10
005e7c6c  04 00 59 e1                                      cmp sb, r4
005e7c70  0c 30 87 e5                                      str r3, [r7, #0xc]
005e7c74  23 00 00 0a                                      beq #0x5e7d08
005e7c78  05 70 a0 e1                                      mov r7, r5
005e7c7c  08 60 a0 e1                                      mov r6, r8
005e7c80  b4 30 d4 e1                                      ldrh r3, [r4, #4]
005e7c84  22 30 43 e2                                      sub r3, r3, #0x22
005e7c88  1c 00 53 e3                                      cmp r3, #0x1c
005e7c8c  db ff ff 9a                                      bls #0x5e7c00
005e7c90  00 30 94 e5                                      ldr r3, [r4]
005e7c94  10 80 86 e2                                      add r8, r6, #0x10
005e7c98  00 00 53 e3                                      cmp r3, #0
005e7c9c  00 20 93 15                                      ldrne r2, [r3]
005e7ca0  01 20 82 12                                      addne r2, r2, #1
005e7ca4  00 20 83 15                                      strne r2, [r3]
005e7ca8  00 00 96 e5                                      ldr r0, [r6]
005e7cac  00 30 86 e5                                      str r3, [r6]
005e7cb0  00 00 50 e3                                      cmp r0, #0
005e7cb4  05 00 00 0a                                      beq #0x5e7cd0
005e7cb8  00 30 90 e5                                      ldr r3, [r0]
005e7cbc  01 30 43 e2                                      sub r3, r3, #1
005e7cc0  00 00 53 e3                                      cmp r3, #0
005e7cc4  00 30 80 e5                                      str r3, [r0]
005e7cc8  00 00 00 1a                                      bne #0x5e7cd0
005e7ccc  32 f4 02 eb                                      bl #0x6a4d9c
005e7cd0  b4 10 d4 e1                                      ldrh r1, [r4, #4]
005e7cd4  07 50 a0 e1                                      mov r5, r7
005e7cd8  b4 10 c6 e1                                      strh r1, [r6, #4]
005e7cdc  06 30 d4 e5                                      ldrb r3, [r4, #6]
005e7ce0  06 30 c6 e5                                      strb r3, [r6, #6]
005e7ce4  07 30 d4 e5                                      ldrb r3, [r4, #7]
005e7ce8  07 30 c6 e5                                      strb r3, [r6, #7]
005e7cec  08 30 94 e5                                      ldr r3, [r4, #8]
005e7cf0  08 30 86 e5                                      str r3, [r6, #8]
005e7cf4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005e7cf8  10 40 84 e2                                      add r4, r4, #0x10
005e7cfc  04 00 59 e1                                      cmp sb, r4
005e7d00  0c 30 86 e5                                      str r3, [r6, #0xc]
005e7d04  db ff ff 1a                                      bne #0x5e7c78
005e7d08  08 70 6a e0                                      rsb r7, sl, r8
005e7d0c  47 72 a0 e1                                      asr r7, r7, #4
005e7d10  05 b0 6b e0                                      rsb fp, fp, r5
005e7d14  00 00 57 e3                                      cmp r7, #0
005e7d18  5b 92 ef e7                                      ubfx sb, fp, #4, #0x10
005e7d1c  34 00 00 da                                      ble #0x5e7df4
005e7d20  10 50 85 e2                                      add r5, r5, #0x10
005e7d24  10 60 8a e2                                      add r6, sl, #0x10
005e7d28  10 30 16 e5                                      ldr r3, [r6, #-0x10]
005e7d2c  00 00 53 e3                                      cmp r3, #0
005e7d30  00 20 93 15                                      ldrne r2, [r3]
005e7d34  01 20 82 12                                      addne r2, r2, #1
005e7d38  00 20 83 15                                      strne r2, [r3]
005e7d3c  10 00 15 e5                                      ldr r0, [r5, #-0x10]
005e7d40  10 30 05 e5                                      str r3, [r5, #-0x10]
005e7d44  00 00 50 e3                                      cmp r0, #0
005e7d48  05 00 00 0a                                      beq #0x5e7d64
005e7d4c  00 30 90 e5                                      ldr r3, [r0]
005e7d50  01 30 43 e2                                      sub r3, r3, #1
005e7d54  00 00 53 e3                                      cmp r3, #0
005e7d58  00 30 80 e5                                      str r3, [r0]
005e7d5c  00 00 00 1a                                      bne #0x5e7d64
005e7d60  0d f4 02 eb                                      bl #0x6a4d9c
005e7d64  bc 30 56 e1                                      ldrh r3, [r6, #-0xc]
005e7d68  01 70 57 e2                                      subs r7, r7, #1
005e7d6c  bc 30 45 e1                                      strh r3, [r5, #-0xc]
005e7d70  0a 30 56 e5                                      ldrb r3, [r6, #-0xa]
005e7d74  0a 30 45 e5                                      strb r3, [r5, #-0xa]
005e7d78  09 30 56 e5                                      ldrb r3, [r6, #-9]
005e7d7c  09 30 45 e5                                      strb r3, [r5, #-9]
005e7d80  08 30 16 e5                                      ldr r3, [r6, #-8]
005e7d84  08 30 05 e5                                      str r3, [r5, #-8]
005e7d88  04 30 16 e5                                      ldr r3, [r6, #-4]
005e7d8c  10 60 86 e2                                      add r6, r6, #0x10
005e7d90  04 30 05 e5                                      str r3, [r5, #-4]
005e7d94  10 50 85 e2                                      add r5, r5, #0x10
005e7d98  e2 ff ff 1a                                      bne #0x5e7d28
005e7d9c  0a 50 a0 e1                                      mov r5, sl
005e7da0  01 00 00 ea                                      b #0x5e7dac
005e7da4  05 00 54 e1                                      cmp r4, r5
005e7da8  0b 00 00 0a                                      beq #0x5e7ddc
005e7dac  00 00 95 e5                                      ldr r0, [r5]
005e7db0  10 50 85 e2                                      add r5, r5, #0x10
005e7db4  00 00 50 e3                                      cmp r0, #0
005e7db8  f9 ff ff 0a                                      beq #0x5e7da4
005e7dbc  00 30 90 e5                                      ldr r3, [r0]
005e7dc0  01 30 43 e2                                      sub r3, r3, #1
005e7dc4  00 00 53 e3                                      cmp r3, #0
005e7dc8  00 30 80 e5                                      str r3, [r0]
005e7dcc  f4 ff ff 1a                                      bne #0x5e7da4
005e7dd0  f1 f3 02 eb                                      bl #0x6a4d9c
005e7dd4  05 00 54 e1                                      cmp r4, r5
005e7dd8  f3 ff ff 1a                                      bne #0x5e7dac
005e7ddc  00 00 5a e3                                      cmp sl, #0
005e7de0  5f ff ff 0a                                      beq #0x5e7b64
005e7de4  0a 00 a0 e1                                      mov r0, sl
005e7de8  26 32 fd eb                                      bl #0x534688
005e7dec  09 00 a0 e1                                      mov r0, sb
005e7df0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e7df4  04 00 5a e1                                      cmp sl, r4
005e7df8  e7 ff ff 1a                                      bne #0x5e7d9c
005e7dfc  f6 ff ff ea                                      b #0x5e7ddc

; FUNCTION 0x005e7e00, declared_size=384, range_size=384, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18guessSubIdFromNameEPKcS2_
; demangled: glitch::video::guessSubIdFromName(char const*, char const*)
; decoder-mode: arm
005e7e00  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e7e04  00 40 a0 e1                                      mov r4, r0
005e7e08  01 70 a0 e1                                      mov r7, r1
005e7e0c  10 31 fd eb                                      bl #0x534254
005e7e10  00 80 a0 e1                                      mov r8, r0
005e7e14  01 00 a0 e3                                      mov r0, #1
005e7e18  12 31 fd eb                                      bl #0x534268
005e7e1c  04 00 a0 e1                                      mov r0, r4
005e7e20  0b 98 f4 eb                                      bl #0x30de54
005e7e24  00 a0 a0 e1                                      mov sl, r0
005e7e28  01 00 80 e2                                      add r0, r0, #1
005e7e2c  f0 31 fd eb                                      bl #0x5345f4
005e7e30  3c 61 9f e5                                      ldr r6, [pc, #0x13c]
005e7e34  00 50 a0 e1                                      mov r5, r0
005e7e38  0a 00 84 e0                                      add r0, r4, sl
005e7e3c  00 00 54 e1                                      cmp r4, r0
005e7e40  06 60 8f e0                                      add r6, pc, r6
005e7e44  0c 00 00 0a                                      beq #0x5e7e7c
005e7e48  28 c1 9f e5                                      ldr ip, [pc, #0x128]
005e7e4c  00 00 64 e0                                      rsb r0, r4, r0
005e7e50  00 30 a0 e3                                      mov r3, #0
005e7e54  d3 20 94 e1                                      ldrsb r2, [r4, r3]
005e7e58  ff 00 52 e3                                      cmp r2, #0xff
005e7e5c  0c 10 96 97                                      ldrls r1, [r6, ip]
005e7e60  00 10 91 95                                      ldrls r1, [r1]
005e7e64  82 20 81 90                                      addls r2, r1, r2, lsl #1
005e7e68  f2 20 d2 91                                      ldrshls r2, [r2, #2]
005e7e6c  03 20 c5 e7                                      strb r2, [r5, r3]
005e7e70  01 30 83 e2                                      add r3, r3, #1
005e7e74  00 00 53 e1                                      cmp r3, r0
005e7e78  f5 ff ff 1a                                      bne #0x5e7e54
005e7e7c  00 30 a0 e3                                      mov r3, #0
005e7e80  0a 30 c5 e7                                      strb r3, [r5, sl]
005e7e84  05 00 a0 e1                                      mov r0, r5
005e7e88  07 10 a0 e1                                      mov r1, r7
005e7e8c  50 9b f4 eb                                      bl #0x30ebd4
005e7e90  00 40 50 e2                                      subs r4, r0, #0
005e7e94  32 00 00 0a                                      beq #0x5e7f64
005e7e98  07 00 a0 e1                                      mov r0, r7
005e7e9c  ec 97 f4 eb                                      bl #0x30de54
005e7ea0  00 20 d4 e7                                      ldrb r2, [r4, r0]
005e7ea4  00 10 84 e0                                      add r1, r4, r0
005e7ea8  00 00 52 e3                                      cmp r2, #0
005e7eac  2c 00 00 0a                                      beq #0x5e7f64
005e7eb0  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
005e7eb4  03 30 96 e7                                      ldr r3, [r6, r3]
005e7eb8  00 00 93 e5                                      ldr r0, [r3]
005e7ebc  72 30 af e6                                      sxtb r3, r2
005e7ec0  01 00 73 e3                                      cmn r3, #1
005e7ec4  73 c0 e0 e6                                      uxtab ip, r0, r3
005e7ec8  22 00 00 0a                                      beq #0x5e7f58
005e7ecc  01 30 dc e5                                      ldrb r3, [ip, #1]
005e7ed0  04 00 13 e3                                      tst r3, #4
005e7ed4  1f 00 00 0a                                      beq #0x5e7f58
005e7ed8  00 00 52 e3                                      cmp r2, #0
005e7edc  20 00 00 0a                                      beq #0x5e7f64
005e7ee0  00 30 d1 e5                                      ldrb r3, [r1]
005e7ee4  73 20 af e6                                      sxtb r2, r3
005e7ee8  01 00 72 e3                                      cmn r2, #1
005e7eec  1e 00 00 0a                                      beq #0x5e7f6c
005e7ef0  72 20 e0 e6                                      uxtab r2, r0, r2
005e7ef4  01 20 d2 e5                                      ldrb r2, [r2, #1]
005e7ef8  04 00 12 e3                                      tst r2, #4
005e7efc  1a 00 00 0a                                      beq #0x5e7f6c
005e7f00  00 40 a0 e3                                      mov r4, #0
005e7f04  0a e0 a0 e3                                      mov lr, #0xa
005e7f08  9e 34 24 e0                                      mla r4, lr, r4, r3
005e7f0c  01 30 d1 e5                                      ldrb r3, [r1, #1]
005e7f10  30 40 44 e2                                      sub r4, r4, #0x30
005e7f14  ff 40 04 e2                                      and r4, r4, #0xff
005e7f18  73 20 af e6                                      sxtb r2, r3
005e7f1c  01 00 72 e3                                      cmn r2, #1
005e7f20  72 c0 e0 e6                                      uxtab ip, r0, r2
005e7f24  03 00 00 0a                                      beq #0x5e7f38
005e7f28  01 20 dc e5                                      ldrb r2, [ip, #1]
005e7f2c  01 10 81 e2                                      add r1, r1, #1
005e7f30  04 00 12 e3                                      tst r2, #4
005e7f34  f3 ff ff 1a                                      bne #0x5e7f08
005e7f38  00 00 55 e3                                      cmp r5, #0
005e7f3c  01 00 00 0a                                      beq #0x5e7f48
005e7f40  05 00 a0 e1                                      mov r0, r5
005e7f44  cf 31 fd eb                                      bl #0x534688
005e7f48  08 00 a0 e1                                      mov r0, r8
005e7f4c  c5 30 fd eb                                      bl #0x534268
005e7f50  04 00 a0 e1                                      mov r0, r4
005e7f54  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e7f58  01 20 f1 e5                                      ldrb r2, [r1, #1]!
005e7f5c  00 00 52 e3                                      cmp r2, #0
005e7f60  d5 ff ff 1a                                      bne #0x5e7ebc
005e7f64  ff 40 a0 e3                                      mov r4, #0xff
005e7f68  f2 ff ff ea                                      b #0x5e7f38
005e7f6c  00 40 a0 e3                                      mov r4, #0
005e7f70  f0 ff ff ea                                      b #0x5e7f38
; mapping-symbol data/literal pool
005e7f74  50 cc 3a 00 e0 36 00 00 dc 1d 00 00              .byte 0x50, 0xcc, 0x3a, 0x00, 0xe0, 0x36, 0x00, 0x00, 0xdc, 0x1d, 0x00, 0x00

; FUNCTION 0x005e7f80, declared_size=292, range_size=292, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18guessSubIdFromNameEPKcNS0_23E_SHADER_PARAMETER_TYPEE
; demangled: glitch::video::guessSubIdFromName(char const*, glitch::video::E_SHADER_PARAMETER_TYPE)
; decoder-mode: arm
005e7f80  13 30 41 e2                                      sub r3, r1, #0x13
005e7f84  08 00 53 e3                                      cmp r3, #8
005e7f88  10 40 2d e9                                      push {r4, lr}
005e7f8c  00 40 a0 e1                                      mov r4, r0
005e7f90  0b 00 00 9a                                      bls #0x5e7fc4
005e7f94  20 00 51 e3                                      cmp r1, #0x20
005e7f98  23 00 00 0a                                      beq #0x5e802c
005e7f9c  0e 00 51 e3                                      cmp r1, #0xe
005e7fa0  2d 00 00 0a                                      beq #0x5e805c
005e7fa4  1d 30 41 e2                                      sub r3, r1, #0x1d
005e7fa8  02 00 53 e3                                      cmp r3, #2
005e7fac  0a 00 00 9a                                      bls #0x5e7fdc
005e7fb0  21 00 51 e3                                      cmp r1, #0x21
005e7fb4  02 00 51 13                                      cmpne r1, #2
005e7fb8  0e 00 00 0a                                      beq #0x5e7ff8
005e7fbc  ff 00 a0 e3                                      mov r0, #0xff
005e7fc0  10 80 bd e8                                      pop {r4, pc}
005e7fc4  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
005e7fc8  01 10 8f e0                                      add r1, pc, r1
005e7fcc  8b ff ff eb                                      bl #0x5e7e00
005e7fd0  ff 00 50 e3                                      cmp r0, #0xff
005e7fd4  05 00 00 0a                                      beq #0x5e7ff0
005e7fd8  10 80 bd e8                                      pop {r4, pc}
005e7fdc  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
005e7fe0  01 10 8f e0                                      add r1, pc, r1
005e7fe4  85 ff ff eb                                      bl #0x5e7e00
005e7fe8  ff 00 50 e3                                      cmp r0, #0xff
005e7fec  f9 ff ff 1a                                      bne #0x5e7fd8
005e7ff0  00 00 a0 e3                                      mov r0, #0
005e7ff4  10 80 bd e8                                      pop {r4, pc}
005e7ff8  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
005e7ffc  01 10 8f e0                                      add r1, pc, r1
005e8000  7e ff ff eb                                      bl #0x5e7e00
005e8004  ff 00 50 e3                                      cmp r0, #0xff
005e8008  f2 ff ff 1a                                      bne #0x5e7fd8
005e800c  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
005e8010  04 00 a0 e1                                      mov r0, r4
005e8014  01 10 8f e0                                      add r1, pc, r1
005e8018  78 ff ff eb                                      bl #0x5e7e00
005e801c  ff 00 50 e3                                      cmp r0, #0xff
005e8020  ec ff ff 1a                                      bne #0x5e7fd8
005e8024  00 00 a0 e3                                      mov r0, #0
005e8028  f1 ff ff ea                                      b #0x5e7ff4
005e802c  60 10 9f e5                                      ldr r1, [pc, #0x60]
005e8030  01 10 8f e0                                      add r1, pc, r1
005e8034  71 ff ff eb                                      bl #0x5e7e00
005e8038  ff 00 50 e3                                      cmp r0, #0xff
005e803c  e5 ff ff 1a                                      bne #0x5e7fd8
005e8040  50 10 9f e5                                      ldr r1, [pc, #0x50]
005e8044  04 00 a0 e1                                      mov r0, r4
005e8048  01 10 8f e0                                      add r1, pc, r1
005e804c  6b ff ff eb                                      bl #0x5e7e00
005e8050  ff 00 50 e3                                      cmp r0, #0xff
005e8054  df ff ff 1a                                      bne #0x5e7fd8
005e8058  e4 ff ff ea                                      b #0x5e7ff0
005e805c  38 10 9f e5                                      ldr r1, [pc, #0x38]
005e8060  01 10 8f e0                                      add r1, pc, r1
005e8064  65 ff ff eb                                      bl #0x5e7e00
005e8068  ff 00 50 e3                                      cmp r0, #0xff
005e806c  d9 ff ff 1a                                      bne #0x5e7fd8
005e8070  28 10 9f e5                                      ldr r1, [pc, #0x28]
005e8074  04 00 a0 e1                                      mov r0, r4
005e8078  01 10 8f e0                                      add r1, pc, r1
005e807c  10 40 bd e8                                      pop {r4, lr}
005e8080  5e ff ff ea                                      b #0x5e7e00
; mapping-symbol data/literal pool
005e8084  68 ab 2f 00 08 4f 30 00 ec a8 2f 00 04 4d 30 00  .byte 0x68, 0xab, 0x2f, 0x00, 0x08, 0x4f, 0x30, 0x00, 0xec, 0xa8, 0x2f, 0x00, 0x04, 0x4d, 0x30, 0x00
005e8094  48 aa 2f 00 40 aa 2f 00 c8 a9 2f 00 a0 a9 2f 00  .byte 0x48, 0xaa, 0x2f, 0x00, 0x40, 0xaa, 0x2f, 0x00, 0xc8, 0xa9, 0x2f, 0x00, 0xa0, 0xa9, 0x2f, 0x00

; FUNCTION 0x005e80a4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_23E_SHADER_PARAMETER_TYPEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_SHADER_PARAMETER_TYPE*)
; decoder-mode: arm
005e80a4  04 00 9f e5                                      ldr r0, [pc, #4]
005e80a8  00 00 8f e0                                      add r0, pc, r0
005e80ac  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005e80b0  88 35 3b 00                                      .byte 0x88, 0x35, 0x3b, 0x00

; FUNCTION 0x005e80b4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_29E_SHADER_PARAMETER_VALUE_TYPEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_SHADER_PARAMETER_VALUE_TYPE*)
; decoder-mode: arm
005e80b4  08 00 9f e5                                      ldr r0, [pc, #8]
005e80b8  00 00 8f e0                                      add r0, pc, r0
005e80bc  01 0c 80 e2                                      add r0, r0, #0x100
005e80c0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005e80c4  78 35 3b 00                                      .byte 0x78, 0x35, 0x3b, 0x00

; FUNCTION 0x005ed944, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_14E_PIXEL_FORMATE
; demangled: glitch::video::getStringsInternal(glitch::video::E_PIXEL_FORMAT*)
; decoder-mode: arm
005ed944  04 00 9f e5                                      ldr r0, [pc, #4]
005ed948  00 00 8f e0                                      add r0, pc, r0
005ed94c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005ed950  20 9b 36 00                                      .byte 0x20, 0x9b, 0x36, 0x00

; FUNCTION 0x005fda68, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_14E_TEXTURE_TYPEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_TEXTURE_TYPE*)
; decoder-mode: arm
005fda68  04 00 9f e5                                      ldr r0, [pc, #4]
005fda6c  00 00 8f e0                                      add r0, pc, r0
005fda70  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005fda74  14 dd 39 00                                      .byte 0x14, 0xdd, 0x39, 0x00

; FUNCTION 0x005fda78, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_16E_TEXTURE_LAYOUTE
; demangled: glitch::video::getStringsInternal(glitch::video::E_TEXTURE_LAYOUT*)
; decoder-mode: arm
005fda78  08 00 9f e5                                      ldr r0, [pc, #8]
005fda7c  00 00 8f e0                                      add r0, pc, r0
005fda80  14 00 80 e2                                      add r0, r0, #0x14
005fda84  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005fda88  04 dd 39 00                                      .byte 0x04, 0xdd, 0x39, 0x00

; FUNCTION 0x005fda8c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_23E_TEXTURE_CUBE_MAP_FACEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_TEXTURE_CUBE_MAP_FACE*)
; decoder-mode: arm
005fda8c  08 00 9f e5                                      ldr r0, [pc, #8]
005fda90  00 00 8f e0                                      add r0, pc, r0
005fda94  28 00 80 e2                                      add r0, r0, #0x28
005fda98  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005fda9c  f0 dc 39 00                                      .byte 0xf0, 0xdc, 0x39, 0x00

; FUNCTION 0x005fdaa0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_21E_TEXTURE_FILTER_TYPEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_TEXTURE_FILTER_TYPE*)
; decoder-mode: arm
005fdaa0  08 00 9f e5                                      ldr r0, [pc, #8]
005fdaa4  00 00 8f e0                                      add r0, pc, r0
005fdaa8  44 00 80 e2                                      add r0, r0, #0x44
005fdaac  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005fdab0  dc dc 39 00                                      .byte 0xdc, 0xdc, 0x39, 0x00

; FUNCTION 0x005fdab4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_15E_TEXTURE_CLAMPE
; demangled: glitch::video::getStringsInternal(glitch::video::E_TEXTURE_CLAMP*)
; decoder-mode: arm
005fdab4  08 00 9f e5                                      ldr r0, [pc, #8]
005fdab8  00 00 8f e0                                      add r0, pc, r0
005fdabc  60 00 80 e2                                      add r0, r0, #0x60
005fdac0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005fdac4  c8 dc 39 00                                      .byte 0xc8, 0xdc, 0x39, 0x00

; FUNCTION 0x005ff358, declared_size=332, range_size=332, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_133executeBlit_TextureBlend_16_to_16EPKNS1_8SBlitJobE
; demangled: glitch::video::(anonymous namespace)::executeBlit_TextureBlend_16_to_16(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
005ff358  f0 05 2d e9                                      push {r4, r5, r6, r7, r8, sl}
005ff35c  34 60 90 e5                                      ldr r6, [r0, #0x34]
005ff360  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
005ff364  30 10 90 e5                                      ldr r1, [r0, #0x30]
005ff368  01 30 46 e2                                      sub r3, r6, #1
005ff36c  56 80 a0 e7                                      sbfx r8, r6, #0, #1
005ff370  03 80 18 e0                                      ands r8, r8, r3
005ff374  c6 60 a0 e1                                      asr r6, r6, #1
005ff378  28 00 00 0a                                      beq #0x5ff420
005ff37c  38 30 90 e5                                      ldr r3, [r0, #0x38]
005ff380  00 00 53 e3                                      cmp r3, #0
005ff384  88 80 a0 11                                      lslne r8, r8, #1
005ff388  00 70 a0 13                                      movne r7, #0
005ff38c  26 00 00 0a                                      beq #0x5ff42c
005ff390  00 00 56 e3                                      cmp r6, #0
005ff394  00 20 a0 13                                      movne r2, #0
005ff398  02 c0 a0 11                                      movne ip, r2
005ff39c  0e 00 00 0a                                      beq #0x5ff3dc
005ff3a0  02 40 95 e7                                      ldr r4, [r5, r2]
005ff3a4  00 30 08 e3                                      movw r3, #0x8000
005ff3a8  00 30 48 e3                                      movt r3, #0x8000
005ff3ac  03 30 04 e0                                      and r3, r4, r3
005ff3b0  02 a0 91 e7                                      ldr sl, [r1, r2]
005ff3b4  a3 37 a0 e1                                      lsr r3, r3, #0xf
005ff3b8  02 39 43 e2                                      sub r3, r3, #0x8000
005ff3bc  06 31 43 e2                                      sub r3, r3, #0x80000001
005ff3c0  0a 30 03 e0                                      and r3, r3, sl
005ff3c4  01 c0 8c e2                                      add ip, ip, #1
005ff3c8  04 40 83 e1                                      orr r4, r3, r4
005ff3cc  0c 00 56 e1                                      cmp r6, ip
005ff3d0  02 40 81 e7                                      str r4, [r1, r2]
005ff3d4  04 20 82 e2                                      add r2, r2, #4
005ff3d8  f0 ff ff 1a                                      bne #0x5ff3a0
005ff3dc  b8 30 95 e1                                      ldrh r3, [r5, r8]
005ff3e0  b8 c0 91 e1                                      ldrh ip, [r1, r8]
005ff3e4  01 70 87 e2                                      add r7, r7, #1
005ff3e8  a3 27 a0 e1                                      lsr r2, r3, #0xf
005ff3ec  7f 2c 82 e2                                      add r2, r2, #0x7f00
005ff3f0  ff 20 82 e2                                      add r2, r2, #0xff
005ff3f4  0c 20 02 e0                                      and r2, r2, ip
005ff3f8  03 30 82 e1                                      orr r3, r2, r3
005ff3fc  b8 30 81 e1                                      strh r3, [r1, r8]
005ff400  38 30 90 e5                                      ldr r3, [r0, #0x38]
005ff404  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
005ff408  40 20 90 e5                                      ldr r2, [r0, #0x40]
005ff40c  07 00 53 e1                                      cmp r3, r7
005ff410  05 00 00 0a                                      beq #0x5ff42c
005ff414  0c 50 85 e0                                      add r5, r5, ip
005ff418  02 10 81 e0                                      add r1, r1, r2
005ff41c  db ff ff ea                                      b #0x5ff390
005ff420  38 30 90 e5                                      ldr r3, [r0, #0x38]
005ff424  00 00 53 e3                                      cmp r3, #0
005ff428  09 00 00 1a                                      bne #0x5ff454
005ff42c  f0 05 bd e8                                      pop {r4, r5, r6, r7, r8, sl}
005ff430  1e ff 2f e1                                      bx lr
005ff434  38 30 90 e5                                      ldr r3, [r0, #0x38]
005ff438  01 80 88 e2                                      add r8, r8, #1
005ff43c  08 00 53 e1                                      cmp r3, r8
005ff440  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
005ff444  40 20 90 e5                                      ldr r2, [r0, #0x40]
005ff448  f7 ff ff 0a                                      beq #0x5ff42c
005ff44c  0c 50 85 e0                                      add r5, r5, ip
005ff450  02 10 81 e0                                      add r1, r1, r2
005ff454  00 00 56 e3                                      cmp r6, #0
005ff458  00 20 a0 13                                      movne r2, #0
005ff45c  02 c0 a0 11                                      movne ip, r2
005ff460  f4 ff ff 0a                                      beq #0x5ff438
005ff464  02 40 95 e7                                      ldr r4, [r5, r2]
005ff468  00 30 08 e3                                      movw r3, #0x8000
005ff46c  00 30 48 e3                                      movt r3, #0x8000
005ff470  03 30 04 e0                                      and r3, r4, r3
005ff474  02 70 91 e7                                      ldr r7, [r1, r2]
005ff478  a3 37 a0 e1                                      lsr r3, r3, #0xf
005ff47c  02 39 43 e2                                      sub r3, r3, #0x8000
005ff480  06 31 43 e2                                      sub r3, r3, #0x80000001
005ff484  07 30 03 e0                                      and r3, r3, r7
005ff488  01 c0 8c e2                                      add ip, ip, #1
005ff48c  04 40 83 e1                                      orr r4, r3, r4
005ff490  0c 00 56 e1                                      cmp r6, ip
005ff494  02 40 81 e7                                      str r4, [r1, r2]
005ff498  04 20 82 e2                                      add r2, r2, #4
005ff49c  f0 ff ff 1a                                      bne #0x5ff464
005ff4a0  e3 ff ff ea                                      b #0x5ff434

; FUNCTION 0x005ff4a4, declared_size=216, range_size=216, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_138executeBlit_TextureBlendColor_16_to_16EPKNS1_8SBlitJobE
; demangled: glitch::video::(anonymous namespace)::executeBlit_TextureBlendColor_16_to_16(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
005ff4a4  38 30 90 e5                                      ldr r3, [r0, #0x38]
005ff4a8  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005ff4ac  00 00 53 e3                                      cmp r3, #0
005ff4b0  2c 90 90 e5                                      ldr sb, [r0, #0x2c]
005ff4b4  30 40 90 e5                                      ldr r4, [r0, #0x30]
005ff4b8  2d 00 00 0a                                      beq #0x5ff574
005ff4bc  34 20 90 e5                                      ldr r2, [r0, #0x34]
005ff4c0  00 b0 a0 e3                                      mov fp, #0
005ff4c4  00 00 52 e3                                      cmp r2, #0
005ff4c8  00 30 a0 13                                      movne r3, #0
005ff4cc  03 c0 a0 11                                      movne ip, r3
005ff4d0  1f 00 00 0a                                      beq #0x5ff554
005ff4d4  b3 20 99 e1                                      ldrh r2, [sb, r3]
005ff4d8  b8 12 d0 e1                                      ldrh r1, [r0, #0x28]
005ff4dc  b3 50 94 e1                                      ldrh r5, [r4, r3]
005ff4e0  3e 7e 02 e2                                      and r7, r2, #0x3e0
005ff4e4  3e 6e 01 e2                                      and r6, r1, #0x3e0
005ff4e8  1f 8b 02 e2                                      and r8, r2, #0x7c00
005ff4ec  97 06 06 e0                                      mul r6, r7, r6
005ff4f0  1f 7b 01 e2                                      and r7, r1, #0x7c00
005ff4f4  98 07 07 e0                                      mul r7, r8, r7
005ff4f8  1f a0 02 e2                                      and sl, r2, #0x1f
005ff4fc  1f 80 01 e2                                      and r8, r1, #0x1f
005ff500  3e 69 06 e2                                      and r6, r6, #0xf8000
005ff504  9a 08 0a e0                                      mul sl, sl, r8
005ff508  3e 74 07 e2                                      and r7, r7, #0x3e000000
005ff50c  46 65 a0 e1                                      asr r6, r6, #0xa
005ff510  02 20 01 e0                                      and r2, r1, r2
005ff514  02 29 02 e2                                      and r2, r2, #0x8000
005ff518  a7 87 86 e1                                      orr r8, r6, r7, lsr #15
005ff51c  02 80 88 e1                                      orr r8, r8, r2
005ff520  aa 82 88 e1                                      orr r8, r8, sl, lsr #5
005ff524  01 c0 8c e2                                      add ip, ip, #1
005ff528  a8 27 a0 e1                                      lsr r2, r8, #0xf
005ff52c  7f 2c 82 e2                                      add r2, r2, #0x7f00
005ff530  ff 20 82 e2                                      add r2, r2, #0xff
005ff534  05 50 02 e0                                      and r5, r2, r5
005ff538  08 80 85 e1                                      orr r8, r5, r8
005ff53c  b3 80 84 e1                                      strh r8, [r4, r3]
005ff540  34 20 90 e5                                      ldr r2, [r0, #0x34]
005ff544  02 30 83 e2                                      add r3, r3, #2
005ff548  0c 00 52 e1                                      cmp r2, ip
005ff54c  e0 ff ff 1a                                      bne #0x5ff4d4
005ff550  38 30 90 e5                                      ldr r3, [r0, #0x38]
005ff554  01 b0 8b e2                                      add fp, fp, #1
005ff558  0b 00 53 e1                                      cmp r3, fp
005ff55c  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
005ff560  40 10 90 e5                                      ldr r1, [r0, #0x40]
005ff564  02 00 00 0a                                      beq #0x5ff574
005ff568  0c 90 89 e0                                      add sb, sb, ip
005ff56c  01 40 84 e0                                      add r4, r4, r1
005ff570  d3 ff ff ea                                      b #0x5ff4c4
005ff574  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
005ff578  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ff57c, declared_size=188, range_size=188, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_131executeBlit_ColorAlpha_16_to_16EPKNS1_8SBlitJobE
; demangled: glitch::video::(anonymous namespace)::executeBlit_ColorAlpha_16_to_16(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
005ff57c  38 20 90 e5                                      ldr r2, [r0, #0x38]
005ff580  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
005ff584  00 00 52 e3                                      cmp r2, #0
005ff588  30 70 90 e5                                      ldr r7, [r0, #0x30]
005ff58c  27 00 00 0a                                      beq #0x5ff630
005ff590  34 30 90 e5                                      ldr r3, [r0, #0x34]
005ff594  00 80 a0 e3                                      mov r8, #0
005ff598  00 00 53 e3                                      cmp r3, #0
005ff59c  00 10 a0 13                                      movne r1, #0
005ff5a0  01 c0 a0 11                                      movne ip, r1
005ff5a4  1c 00 00 0a                                      beq #0x5ff61c
005ff5a8  b1 40 97 e1                                      ldrh r4, [r7, r1]
005ff5ac  b8 62 d0 e1                                      ldrh r6, [r0, #0x28]
005ff5b0  ba 52 d0 e1                                      ldrh r5, [r0, #0x2a]
005ff5b4  3e 3e c4 e3                                      bic r3, r4, #0x3e0
005ff5b8  3e 2e c6 e3                                      bic r2, r6, #0x3e0
005ff5bc  83 38 a0 e1                                      lsl r3, r3, #0x11
005ff5c0  82 28 a0 e1                                      lsl r2, r2, #0x11
005ff5c4  a3 38 a0 e1                                      lsr r3, r3, #0x11
005ff5c8  a2 28 a0 e1                                      lsr r2, r2, #0x11
005ff5cc  02 20 63 e0                                      rsb r2, r3, r2
005ff5d0  95 02 02 e0                                      mul r2, r5, r2
005ff5d4  3e 4e 04 e2                                      and r4, r4, #0x3e0
005ff5d8  3e 6e 06 e2                                      and r6, r6, #0x3e0
005ff5dc  06 60 64 e0                                      rsb r6, r4, r6
005ff5e0  95 06 05 e0                                      mul r5, r5, r6
005ff5e4  a2 32 83 e0                                      add r3, r3, r2, lsr #5
005ff5e8  3e 3e c3 e3                                      bic r3, r3, #0x3e0
005ff5ec  83 38 a0 e1                                      lsl r3, r3, #0x11
005ff5f0  a5 42 84 e0                                      add r4, r4, r5, lsr #5
005ff5f4  3e 4e 04 e2                                      and r4, r4, #0x3e0
005ff5f8  a3 38 a0 e1                                      lsr r3, r3, #0x11
005ff5fc  03 30 84 e1                                      orr r3, r4, r3
005ff600  b1 30 87 e1                                      strh r3, [r7, r1]
005ff604  34 30 90 e5                                      ldr r3, [r0, #0x34]
005ff608  01 c0 8c e2                                      add ip, ip, #1
005ff60c  02 10 81 e2                                      add r1, r1, #2
005ff610  0c 00 53 e1                                      cmp r3, ip
005ff614  e3 ff ff 1a                                      bne #0x5ff5a8
005ff618  38 20 90 e5                                      ldr r2, [r0, #0x38]
005ff61c  01 80 88 e2                                      add r8, r8, #1
005ff620  08 00 52 e1                                      cmp r2, r8
005ff624  40 10 90 e5                                      ldr r1, [r0, #0x40]
005ff628  01 70 87 10                                      addne r7, r7, r1
005ff62c  d9 ff ff 1a                                      bne #0x5ff598
005ff630  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
005ff634  1e ff 2f e1                                      bx lr

; FUNCTION 0x00600948, declared_size=1236, range_size=1236, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_14blitENS1_8eBlitterEPNS0_6CImageEPKNS_4core4rectIiEEPKNS5_10position2dIiEES4_S9_j
; demangled: glitch::video::(anonymous namespace)::blit(glitch::video::(anonymous namespace)::eBlitter, glitch::video::CImage*, glitch::core::rect<int> const*, glitch::core::position2d<int> const*, glitch::video::CImage*, glitch::core::rect<int> const*, unsigned int)
; decoder-mode: arm
00600948  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060094c  6c d0 4d e2                                      sub sp, sp, #0x6c
00600950  90 60 9d e5                                      ldr r6, [sp, #0x90]
00600954  84 44 9f e5                                      ldr r4, [pc, #0x484]
00600958  01 50 a0 e1                                      mov r5, r1
0060095c  00 00 56 e3                                      cmp r6, #0
00600960  27 70 a0 03                                      moveq r7, #0x27
00600964  20 70 96 15                                      ldrne r7, [r6, #0x20]
00600968  01 00 40 e2                                      sub r0, r0, #1
0060096c  00 00 55 e3                                      cmp r5, #0
00600970  04 40 8f e0                                      add r4, pc, r4
00600974  94 10 9d e5                                      ldr r1, [sp, #0x94]
00600978  27 c0 a0 03                                      moveq ip, #0x27
0060097c  20 c0 95 15                                      ldrne ip, [r5, #0x20]
00600980  03 00 50 e3                                      cmp r0, #3
00600984  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
00600988  03 00 00 ea                                      b #0x60099c
0060098c  30 00 00 ea                                      b #0x600a54
00600990  24 00 00 ea                                      b #0x600a28
00600994  13 00 00 ea                                      b #0x6009e8
00600998  02 00 00 ea                                      b #0x6009a8
0060099c  00 00 a0 e3                                      mov r0, #0
006009a0  6c d0 8d e2                                      add sp, sp, #0x6c
006009a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006009a8  08 00 5c e3                                      cmp ip, #8
006009ac  08 00 57 03                                      cmpeq r7, #8
006009b0  c3 00 00 0a                                      beq #0x600cc4
006009b4  0c 00 5c e3                                      cmp ip, #0xc
006009b8  0c 00 57 03                                      cmpeq r7, #0xc
006009bc  fb 00 00 0a                                      beq #0x600db0
006009c0  0d 00 5c e3                                      cmp ip, #0xd
006009c4  0d 00 57 03                                      cmpeq r7, #0xd
006009c8  f4 00 00 0a                                      beq #0x600da0
006009cc  0e 00 5c e3                                      cmp ip, #0xe
006009d0  0e 00 57 03                                      cmpeq r7, #0xe
006009d4  f0 ff ff 1a                                      bne #0x60099c
006009d8  04 04 9f e5                                      ldr r0, [pc, #0x404]
006009dc  00 00 8f e0                                      add r0, pc, r0
006009e0  14 00 8d e5                                      str r0, [sp, #0x14]
006009e4  22 00 00 ea                                      b #0x600a74
006009e8  08 00 5c e3                                      cmp ip, #8
006009ec  08 00 57 03                                      cmpeq r7, #8
006009f0  af 00 00 0a                                      beq #0x600cb4
006009f4  0c 00 5c e3                                      cmp ip, #0xc
006009f8  0c 00 57 03                                      cmpeq r7, #0xc
006009fc  ef 00 00 0a                                      beq #0x600dc0
00600a00  0d 00 5c e3                                      cmp ip, #0xd
00600a04  0d 00 57 03                                      cmpeq r7, #0xd
00600a08  e0 00 00 0a                                      beq #0x600d90
00600a0c  0e 00 5c e3                                      cmp ip, #0xe
00600a10  0e 00 57 03                                      cmpeq r7, #0xe
00600a14  e0 ff ff 1a                                      bne #0x60099c
00600a18  c8 03 9f e5                                      ldr r0, [pc, #0x3c8]
00600a1c  00 00 8f e0                                      add r0, pc, r0
00600a20  14 00 8d e5                                      str r0, [sp, #0x14]
00600a24  12 00 00 ea                                      b #0x600a74
00600a28  08 00 5c e3                                      cmp ip, #8
00600a2c  cf 00 00 0a                                      beq #0x600d70
00600a30  0c 00 5c e3                                      cmp ip, #0xc
00600a34  e5 00 00 0a                                      beq #0x600dd0
00600a38  0d c0 4c e2                                      sub ip, ip, #0xd
00600a3c  01 00 5c e3                                      cmp ip, #1
00600a40  d5 ff ff 8a                                      bhi #0x60099c
00600a44  a0 03 9f e5                                      ldr r0, [pc, #0x3a0]
00600a48  00 00 8f e0                                      add r0, pc, r0
00600a4c  14 00 8d e5                                      str r0, [sp, #0x14]
00600a50  07 00 00 ea                                      b #0x600a74
00600a54  08 00 5c e3                                      cmp ip, #8
00600a58  c8 00 00 0a                                      beq #0x600d80
00600a5c  0c 00 5c e3                                      cmp ip, #0xc
00600a60  0e 00 5c 13                                      cmpne ip, #0xe
00600a64  cc ff ff 1a                                      bne #0x60099c
00600a68  80 03 9f e5                                      ldr r0, [pc, #0x380]
00600a6c  00 00 8f e0                                      add r0, pc, r0
00600a70  14 00 8d e5                                      str r0, [sp, #0x14]
00600a74  00 00 51 e3                                      cmp r1, #0
00600a78  a7 00 00 0a                                      beq #0x600d1c
00600a7c  00 80 91 e5                                      ldr r8, [r1]
00600a80  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00600a84  00 80 8d e5                                      str r8, [sp]
00600a88  04 a0 91 e5                                      ldr sl, [r1, #4]
00600a8c  04 a0 8d e5                                      str sl, [sp, #4]
00600a90  04 c0 9d e5                                      ldr ip, [sp, #4]
00600a94  08 a0 91 e5                                      ldr sl, [r1, #8]
00600a98  00 00 6c e0                                      rsb r0, ip, r0
00600a9c  10 00 8d e5                                      str r0, [sp, #0x10]
00600aa0  0a a0 68 e0                                      rsb sl, r8, sl
00600aa4  00 00 52 e3                                      cmp r2, #0
00600aa8  90 00 00 0a                                      beq #0x600cf0
00600aac  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00600ab0  08 10 8d e5                                      str r1, [sp, #8]
00600ab4  01 0a 92 e8                                      ldm r2, {r0, sb, fp}
00600ab8  00 00 53 e3                                      cmp r3, #0
00600abc  84 00 00 0a                                      beq #0x600cd4
00600ac0  04 10 93 e5                                      ldr r1, [r3, #4]
00600ac4  00 20 93 e5                                      ldr r2, [r3]
00600ac8  09 70 61 e0                                      rsb r7, r1, sb
00600acc  00 30 62 e0                                      rsb r3, r2, r0
00600ad0  c7 7f a0 e1                                      asr r7, r7, #0x1f
00600ad4  c3 3f a0 e1                                      asr r3, r3, #0x1f
00600ad8  01 80 07 e0                                      and r8, r7, r1
00600adc  02 c0 03 e0                                      and ip, r3, r2
00600ae0  0c 80 8d e5                                      str r8, [sp, #0xc]
00600ae4  0a a0 82 e0                                      add sl, r2, sl
00600ae8  0b 80 6a e0                                      rsb r8, sl, fp
00600aec  00 00 53 e3                                      cmp r3, #0
00600af0  c8 8f a0 e1                                      asr r8, r8, #0x1f
00600af4  00 30 a0 01                                      moveq r3, r0
00600af8  00 30 a0 13                                      movne r3, #0
00600afc  00 00 58 e3                                      cmp r8, #0
00600b00  00 a0 a0 13                                      movne sl, #0
00600b04  0b 80 08 e0                                      and r8, r8, fp
00600b08  0c 30 83 e1                                      orr r3, r3, ip
00600b0c  08 c0 8a e1                                      orr ip, sl, r8
00600b10  0c 00 53 e1                                      cmp r3, ip
00600b14  a0 ff ff aa                                      bge #0x60099c
00600b18  10 a0 9d e5                                      ldr sl, [sp, #0x10]
00600b1c  00 00 57 e3                                      cmp r7, #0
00600b20  09 70 a0 01                                      moveq r7, sb
00600b24  0a 00 81 e0                                      add r0, r1, sl
00600b28  08 a0 9d e5                                      ldr sl, [sp, #8]
00600b2c  00 70 a0 13                                      movne r7, #0
00600b30  0a 80 60 e0                                      rsb r8, r0, sl
00600b34  c8 8f a0 e1                                      asr r8, r8, #0x1f
00600b38  00 00 58 e3                                      cmp r8, #0
00600b3c  0a 80 08 e0                                      and r8, r8, sl
00600b40  0c a0 9d e5                                      ldr sl, [sp, #0xc]
00600b44  00 00 a0 13                                      movne r0, #0
00600b48  08 80 80 e1                                      orr r8, r0, r8
00600b4c  0a 70 87 e1                                      orr r7, r7, sl
00600b50  08 00 57 e1                                      cmp r7, r8
00600b54  90 ff ff aa                                      bge #0x60099c
00600b58  01 04 9d e8                                      ldm sp, {r0, sl}
00600b5c  08 90 67 e0                                      rsb sb, r7, r8
00600b60  00 20 62 e0                                      rsb r2, r2, r0
00600b64  03 b0 82 e0                                      add fp, r2, r3
00600b68  0a 10 61 e0                                      rsb r1, r1, sl
00600b6c  0c a0 63 e0                                      rsb sl, r3, ip
00600b70  07 10 81 e0                                      add r1, r1, r7
00600b74  0b 00 8a e0                                      add r0, sl, fp
00600b78  00 10 8d e5                                      str r1, [sp]
00600b7c  04 00 8d e5                                      str r0, [sp, #4]
00600b80  20 00 95 e5                                      ldr r0, [r5, #0x20]
00600b84  20 c0 8d e5                                      str ip, [sp, #0x20]
00600b88  18 30 8d e5                                      str r3, [sp, #0x18]
00600b8c  08 10 9d e8                                      ldm sp, {r3, ip}
00600b90  01 e0 89 e0                                      add lr, sb, r1
00600b94  64 20 8d e2                                      add r2, sp, #0x64
00600b98  0c 10 a0 e3                                      mov r1, #0xc
00600b9c  30 c0 8d e5                                      str ip, [sp, #0x30]
00600ba0  34 e0 8d e5                                      str lr, [sp, #0x34]
00600ba4  1c 70 8d e5                                      str r7, [sp, #0x1c]
00600ba8  24 80 8d e5                                      str r8, [sp, #0x24]
00600bac  2c 30 8d e5                                      str r3, [sp, #0x2c]
00600bb0  4c a0 8d e5                                      str sl, [sp, #0x4c]
00600bb4  50 90 8d e5                                      str sb, [sp, #0x50]
00600bb8  28 b0 8d e5                                      str fp, [sp, #0x28]
00600bbc  83 b3 ff eb                                      bl #0x5ed9d0
00600bc0  98 30 9d e5                                      ldr r3, [sp, #0x98]
00600bc4  64 10 dd e5                                      ldrb r1, [sp, #0x64]
00600bc8  18 00 8d e2                                      add r0, sp, #0x18
00600bcc  38 30 8d e5                                      str r3, [sp, #0x38]
00600bd0  20 30 80 e2                                      add r3, r0, #0x20
00600bd4  01 20 d3 e7                                      ldrb r2, [r3, r1]
00600bd8  65 e0 dd e5                                      ldrb lr, [sp, #0x65]
00600bdc  67 c0 dd e5                                      ldrb ip, [sp, #0x67]
00600be0  3c 20 8d e5                                      str r2, [sp, #0x3c]
00600be4  0e 70 d3 e7                                      ldrb r7, [r3, lr]
00600be8  66 80 dd e5                                      ldrb r8, [sp, #0x66]
00600bec  01 e0 d3 e7                                      ldrb lr, [r3, r1]
00600bf0  0c c0 d3 e7                                      ldrb ip, [r3, ip]
00600bf4  f8 10 07 e2                                      and r1, r7, #0xf8
00600bf8  08 30 d3 e7                                      ldrb r3, [r3, r8]
00600bfc  80 e0 0e e2                                      and lr, lr, #0x80
00600c00  81 13 a0 e1                                      lsl r1, r1, #7
00600c04  0e 14 81 e1                                      orr r1, r1, lr, lsl #8
00600c08  ac 11 81 e1                                      orr r1, r1, ip, lsr #3
00600c0c  f8 30 03 e2                                      and r3, r3, #0xf8
00600c10  03 31 81 e1                                      orr r3, r1, r3, lsl #2
00600c14  a2 21 a0 e1                                      lsr r2, r2, #3
00600c18  00 00 56 e3                                      cmp r6, #0
00600c1c  b0 34 cd e1                                      strh r3, [sp, #0x40]
00600c20  b2 24 cd e1                                      strh r2, [sp, #0x42]
00600c24  47 00 00 0a                                      beq #0x600d48
00600c28  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
00600c2c  20 c0 96 e5                                      ldr ip, [r6, #0x20]
00600c30  28 e0 a0 e3                                      mov lr, #0x28
00600c34  03 20 94 e7                                      ldr r2, [r4, r3]
00600c38  18 10 96 e5                                      ldr r1, [r6, #0x18]
00600c3c  9e 2c 2c e0                                      mla ip, lr, ip, r2
00600c40  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
00600c44  15 20 dc e5                                      ldrb r2, [ip, #0x15]
00600c48  08 c0 96 e5                                      ldr ip, [r6, #8]
00600c4c  9e 01 0e e0                                      mul lr, lr, r1
00600c50  54 10 8d e5                                      str r1, [sp, #0x54]
00600c54  28 10 9d e5                                      ldr r1, [sp, #0x28]
00600c58  5c 20 8d e5                                      str r2, [sp, #0x5c]
00600c5c  91 e2 21 e0                                      mla r1, r1, r2, lr
00600c60  01 20 8c e0                                      add r2, ip, r1
00600c64  44 20 8d e5                                      str r2, [sp, #0x44]
00600c68  20 10 95 e5                                      ldr r1, [r5, #0x20]
00600c6c  03 30 94 e7                                      ldr r3, [r4, r3]
00600c70  28 c0 a0 e3                                      mov ip, #0x28
00600c74  18 20 95 e5                                      ldr r2, [r5, #0x18]
00600c78  9c 31 21 e0                                      mla r1, ip, r1, r3
00600c7c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00600c80  15 30 d1 e5                                      ldrb r3, [r1, #0x15]
00600c84  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00600c88  08 c0 95 e5                                      ldr ip, [r5, #8]
00600c8c  58 20 8d e5                                      str r2, [sp, #0x58]
00600c90  91 02 01 e0                                      mul r1, r1, r2
00600c94  60 30 8d e5                                      str r3, [sp, #0x60]
00600c98  9e 13 21 e0                                      mla r1, lr, r3, r1
00600c9c  14 80 9d e5                                      ldr r8, [sp, #0x14]
00600ca0  01 20 8c e0                                      add r2, ip, r1
00600ca4  48 20 8d e5                                      str r2, [sp, #0x48]
00600ca8  38 ff 2f e1                                      blx r8
00600cac  01 00 a0 e3                                      mov r0, #1
00600cb0  3a ff ff ea                                      b #0x6009a0
00600cb4  3c 01 9f e5                                      ldr r0, [pc, #0x13c]
00600cb8  00 00 8f e0                                      add r0, pc, r0
00600cbc  14 00 8d e5                                      str r0, [sp, #0x14]
00600cc0  6b ff ff ea                                      b #0x600a74
00600cc4  30 01 9f e5                                      ldr r0, [pc, #0x130]
00600cc8  00 00 8f e0                                      add r0, pc, r0
00600ccc  14 00 8d e5                                      str r0, [sp, #0x14]
00600cd0  67 ff ff ea                                      b #0x600a74
00600cd4  0c 30 8d e5                                      str r3, [sp, #0xc]
00600cd8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00600cdc  c0 3f a0 e1                                      asr r3, r0, #0x1f
00600ce0  c9 7f a0 e1                                      asr r7, sb, #0x1f
00600ce4  0c 20 a0 e1                                      mov r2, ip
00600ce8  0c 10 a0 e1                                      mov r1, ip
00600cec  7c ff ff ea                                      b #0x600ae4
00600cf0  00 00 55 e3                                      cmp r5, #0
00600cf4  14 80 95 15                                      ldrne r8, [r5, #0x14]
00600cf8  02 00 a0 11                                      movne r0, r2
00600cfc  10 b0 95 15                                      ldrne fp, [r5, #0x10]
00600d00  05 00 a0 01                                      moveq r0, r5
00600d04  05 90 a0 01                                      moveq sb, r5
00600d08  05 b0 a0 01                                      moveq fp, r5
00600d0c  08 50 8d 05                                      streq r5, [sp, #8]
00600d10  08 80 8d 15                                      strne r8, [sp, #8]
00600d14  00 90 a0 11                                      movne sb, r0
00600d18  66 ff ff ea                                      b #0x600ab8
00600d1c  00 00 56 e3                                      cmp r6, #0
00600d20  14 00 96 15                                      ldrne r0, [r6, #0x14]
00600d24  10 a0 96 15                                      ldrne sl, [r6, #0x10]
00600d28  10 60 8d 05                                      streq r6, [sp, #0x10]
00600d2c  06 a0 a0 01                                      moveq sl, r6
00600d30  00 60 8d 05                                      streq r6, [sp]
00600d34  04 60 8d 05                                      streq r6, [sp, #4]
00600d38  10 00 8d 15                                      strne r0, [sp, #0x10]
00600d3c  00 10 8d 15                                      strne r1, [sp]
00600d40  04 10 8d 15                                      strne r1, [sp, #4]
00600d44  56 ff ff ea                                      b #0x600aa4
00600d48  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00600d4c  20 10 95 e5                                      ldr r1, [r5, #0x20]
00600d50  28 c0 a0 e3                                      mov ip, #0x28
00600d54  03 20 94 e7                                      ldr r2, [r4, r3]
00600d58  9c 21 22 e0                                      mla r2, ip, r1, r2
00600d5c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
00600d60  15 20 d2 e5                                      ldrb r2, [r2, #0x15]
00600d64  9c 02 02 e0                                      mul r2, ip, r2
00600d68  54 20 8d e5                                      str r2, [sp, #0x54]
00600d6c  be ff ff ea                                      b #0x600c6c
00600d70  88 00 9f e5                                      ldr r0, [pc, #0x88]
00600d74  00 00 8f e0                                      add r0, pc, r0
00600d78  14 00 8d e5                                      str r0, [sp, #0x14]
00600d7c  3c ff ff ea                                      b #0x600a74
00600d80  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
00600d84  00 00 8f e0                                      add r0, pc, r0
00600d88  14 00 8d e5                                      str r0, [sp, #0x14]
00600d8c  38 ff ff ea                                      b #0x600a74
00600d90  70 00 9f e5                                      ldr r0, [pc, #0x70]
00600d94  00 00 8f e0                                      add r0, pc, r0
00600d98  14 00 8d e5                                      str r0, [sp, #0x14]
00600d9c  34 ff ff ea                                      b #0x600a74
00600da0  64 00 9f e5                                      ldr r0, [pc, #0x64]
00600da4  00 00 8f e0                                      add r0, pc, r0
00600da8  14 00 8d e5                                      str r0, [sp, #0x14]
00600dac  30 ff ff ea                                      b #0x600a74
00600db0  58 00 9f e5                                      ldr r0, [pc, #0x58]
00600db4  00 00 8f e0                                      add r0, pc, r0
00600db8  14 00 8d e5                                      str r0, [sp, #0x14]
00600dbc  2c ff ff ea                                      b #0x600a74
00600dc0  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00600dc4  00 00 8f e0                                      add r0, pc, r0
00600dc8  14 00 8d e5                                      str r0, [sp, #0x14]
00600dcc  28 ff ff ea                                      b #0x600a74
00600dd0  40 00 9f e5                                      ldr r0, [pc, #0x40]
00600dd4  00 00 8f e0                                      add r0, pc, r0
00600dd8  14 00 8d e5                                      str r0, [sp, #0x14]
00600ddc  24 ff ff ea                                      b #0x600a74
; mapping-symbol data/literal pool
00600de0  20 41 39 00 54 f4 ff ff d4 f1 ff ff 00 f6 ff ff  .byte 0x20, 0x41, 0x39, 0x00, 0x54, 0xf4, 0xff, 0xff, 0xd4, 0xf1, 0xff, 0xff, 0x00, 0xf6, 0xff, 0xff
00600df0  14 20 00 00 34 1f 00 00 98 e6 ff ff d4 e7 ff ff  .byte 0x14, 0x20, 0x00, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x98, 0xe6, 0xff, 0xff, 0xd4, 0xe7, 0xff, 0xff
00600e00  00 e8 ff ff a0 1d 00 00 5c ee ff ff 8c f0 ff ff  .byte 0x00, 0xe8, 0xff, 0xff, 0xa0, 0x1d, 0x00, 0x00, 0x5c, 0xee, 0xff, 0xff, 0x8c, 0xf0, 0xff, 0xff
00600e10  20 ef ff ff 4c ed ff ff b4 f1 ff ff              .byte 0x20, 0xef, 0xff, 0xff, 0x4c, 0xed, 0xff, 0xff, 0xb4, 0xf1, 0xff, 0xff

; FUNCTION 0x00602a88, declared_size=164, range_size=164, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_126executeBlit_Color_32_to_32EPKNS1_8SBlitJobE
; demangled: glitch::video::(anonymous namespace)::executeBlit_Color_32_to_32(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
00602a88  38 30 90 e5                                      ldr r3, [r0, #0x38]
00602a8c  70 00 2d e9                                      push {r4, r5, r6}
00602a90  00 00 53 e3                                      cmp r3, #0
00602a94  30 50 90 e5                                      ldr r5, [r0, #0x30]
00602a98  21 00 00 0a                                      beq #0x602b24
00602a9c  00 60 a0 e3                                      mov r6, #0
00602aa0  3c 40 90 e5                                      ldr r4, [r0, #0x3c]
00602aa4  20 20 90 e5                                      ldr r2, [r0, #0x20]
00602aa8  a4 c2 b0 e1                                      lsrs ip, r4, #5
00602aac  05 c0 a0 01                                      moveq ip, r5
00602ab0  0d 00 00 0a                                      beq #0x602aec
00602ab4  0c 10 a0 e1                                      mov r1, ip
00602ab8  05 30 a0 e1                                      mov r3, r5
00602abc  01 10 51 e2                                      subs r1, r1, #1
00602ac0  00 20 83 e5                                      str r2, [r3]
00602ac4  04 20 83 e5                                      str r2, [r3, #4]
00602ac8  08 20 83 e5                                      str r2, [r3, #8]
00602acc  0c 20 83 e5                                      str r2, [r3, #0xc]
00602ad0  10 20 83 e5                                      str r2, [r3, #0x10]
00602ad4  14 20 83 e5                                      str r2, [r3, #0x14]
00602ad8  18 20 83 e5                                      str r2, [r3, #0x18]
00602adc  1c 20 83 e5                                      str r2, [r3, #0x1c]
00602ae0  20 30 83 e2                                      add r3, r3, #0x20
00602ae4  f4 ff ff 1a                                      bne #0x602abc
00602ae8  8c c2 85 e0                                      add ip, r5, ip, lsl #5
00602aec  54 31 e2 e7                                      ubfx r3, r4, #2, #3
00602af0  00 00 53 e3                                      cmp r3, #0
00602af4  04 00 00 0a                                      beq #0x602b0c
00602af8  00 10 a0 e3                                      mov r1, #0
00602afc  01 30 53 e2                                      subs r3, r3, #1
00602b00  01 20 8c e7                                      str r2, [ip, r1]
00602b04  04 10 81 e2                                      add r1, r1, #4
00602b08  fb ff ff 1a                                      bne #0x602afc
00602b0c  38 30 90 e5                                      ldr r3, [r0, #0x38]
00602b10  01 60 86 e2                                      add r6, r6, #1
00602b14  40 20 90 e5                                      ldr r2, [r0, #0x40]
00602b18  06 00 53 e1                                      cmp r3, r6
00602b1c  02 50 85 10                                      addne r5, r5, r2
00602b20  de ff ff 1a                                      bne #0x602aa0
00602b24  70 00 bd e8                                      pop {r4, r5, r6}
00602b28  1e ff 2f e1                                      bx lr

; FUNCTION 0x00602b2c, declared_size=344, range_size=344, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_126executeBlit_Color_16_to_16EPKNS1_8SBlitJobE
; demangled: glitch::video::(anonymous namespace)::executeBlit_Color_16_to_16(glitch::video::(anonymous namespace)::SBlitJob const*)
; decoder-mode: arm
00602b2c  f0 05 2d e9                                      push {r4, r5, r6, r7, r8, sl}
00602b30  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
00602b34  b8 72 d0 e1                                      ldrh r7, [r0, #0x28]
00602b38  30 40 90 e5                                      ldr r4, [r0, #0x30]
00602b3c  03 60 15 e2                                      ands r6, r5, #3
00602b40  07 38 87 e1                                      orr r3, r7, r7, lsl #16
00602b44  23 00 00 1a                                      bne #0x602bd8
00602b48  38 20 90 e5                                      ldr r2, [r0, #0x38]
00602b4c  00 00 52 e3                                      cmp r2, #0
00602b50  24 00 00 0a                                      beq #0x602be8
00602b54  a5 72 b0 e1                                      lsrs r7, r5, #5
00602b58  04 c0 a0 e1                                      mov ip, r4
00602b5c  0d 00 00 0a                                      beq #0x602b98
00602b60  07 10 a0 e1                                      mov r1, r7
00602b64  04 20 a0 e1                                      mov r2, r4
00602b68  01 10 51 e2                                      subs r1, r1, #1
00602b6c  00 30 82 e5                                      str r3, [r2]
00602b70  04 30 82 e5                                      str r3, [r2, #4]
00602b74  08 30 82 e5                                      str r3, [r2, #8]
00602b78  0c 30 82 e5                                      str r3, [r2, #0xc]
00602b7c  10 30 82 e5                                      str r3, [r2, #0x10]
00602b80  14 30 82 e5                                      str r3, [r2, #0x14]
00602b84  18 30 82 e5                                      str r3, [r2, #0x18]
00602b88  1c 30 82 e5                                      str r3, [r2, #0x1c]
00602b8c  20 20 82 e2                                      add r2, r2, #0x20
00602b90  f4 ff ff 1a                                      bne #0x602b68
00602b94  87 c2 84 e0                                      add ip, r4, r7, lsl #5
00602b98  55 21 e2 e7                                      ubfx r2, r5, #2, #3
00602b9c  00 00 52 e3                                      cmp r2, #0
00602ba0  04 00 00 0a                                      beq #0x602bb8
00602ba4  00 10 a0 e3                                      mov r1, #0
00602ba8  01 20 52 e2                                      subs r2, r2, #1
00602bac  01 30 8c e7                                      str r3, [ip, r1]
00602bb0  04 10 81 e2                                      add r1, r1, #4
00602bb4  fb ff ff 1a                                      bne #0x602ba8
00602bb8  38 20 90 e5                                      ldr r2, [r0, #0x38]
00602bbc  01 60 86 e2                                      add r6, r6, #1
00602bc0  40 10 90 e5                                      ldr r1, [r0, #0x40]
00602bc4  06 00 52 e1                                      cmp r2, r6
00602bc8  06 00 00 0a                                      beq #0x602be8
00602bcc  01 40 84 e0                                      add r4, r4, r1
00602bd0  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
00602bd4  de ff ff ea                                      b #0x602b54
00602bd8  38 20 90 e5                                      ldr r2, [r0, #0x38]
00602bdc  34 80 90 e5                                      ldr r8, [r0, #0x34]
00602be0  00 00 52 e3                                      cmp r2, #0
00602be4  01 00 00 1a                                      bne #0x602bf0
00602be8  f0 05 bd e8                                      pop {r4, r5, r6, r7, r8, sl}
00602bec  1e ff 2f e1                                      bx lr
00602bf0  01 80 48 e2                                      sub r8, r8, #1
00602bf4  88 80 a0 e1                                      lsl r8, r8, #1
00602bf8  00 60 a0 e3                                      mov r6, #0
00602bfc  a5 a2 b0 e1                                      lsrs sl, r5, #5
00602c00  04 c0 a0 e1                                      mov ip, r4
00602c04  0d 00 00 0a                                      beq #0x602c40
00602c08  0a 10 a0 e1                                      mov r1, sl
00602c0c  04 20 a0 e1                                      mov r2, r4
00602c10  01 10 51 e2                                      subs r1, r1, #1
00602c14  00 30 82 e5                                      str r3, [r2]
00602c18  04 30 82 e5                                      str r3, [r2, #4]
00602c1c  08 30 82 e5                                      str r3, [r2, #8]
00602c20  0c 30 82 e5                                      str r3, [r2, #0xc]
00602c24  10 30 82 e5                                      str r3, [r2, #0x10]
00602c28  14 30 82 e5                                      str r3, [r2, #0x14]
00602c2c  18 30 82 e5                                      str r3, [r2, #0x18]
00602c30  1c 30 82 e5                                      str r3, [r2, #0x1c]
00602c34  20 20 82 e2                                      add r2, r2, #0x20
00602c38  f4 ff ff 1a                                      bne #0x602c10
00602c3c  8a c2 84 e0                                      add ip, r4, sl, lsl #5
00602c40  55 21 e2 e7                                      ubfx r2, r5, #2, #3
00602c44  00 00 52 e3                                      cmp r2, #0
00602c48  04 00 00 0a                                      beq #0x602c60
00602c4c  00 10 a0 e3                                      mov r1, #0
00602c50  01 20 52 e2                                      subs r2, r2, #1
00602c54  01 30 8c e7                                      str r3, [ip, r1]
00602c58  04 10 81 e2                                      add r1, r1, #4
00602c5c  fb ff ff 1a                                      bne #0x602c50
00602c60  b8 70 84 e1                                      strh r7, [r4, r8]
00602c64  38 20 90 e5                                      ldr r2, [r0, #0x38]
00602c68  01 60 86 e2                                      add r6, r6, #1
00602c6c  40 10 90 e5                                      ldr r1, [r0, #0x40]
00602c70  06 00 52 e1                                      cmp r2, r6
00602c74  db ff ff 0a                                      beq #0x602be8
00602c78  01 40 84 e0                                      add r4, r4, r1
00602c7c  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
00602c80  dd ff ff ea                                      b #0x602bfc

; FUNCTION 0x00602dc4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video20createImageLoaderATCEv
; demangled: glitch::video::createImageLoaderATC()
; decoder-mode: arm
00602dc4  10 40 2d e9                                      push {r4, lr}
00602dc8  00 10 a0 e3                                      mov r1, #0
00602dcc  08 00 a0 e3                                      mov r0, #8
00602dd0  f5 c4 fc eb                                      bl #0x5341ac
00602dd4  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00602dd8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00602ddc  01 10 a0 e3                                      mov r1, #1
00602de0  04 40 8f e0                                      add r4, pc, r4
00602de4  03 30 94 e7                                      ldr r3, [r4, r3]
00602de8  04 10 80 e5                                      str r1, [r0, #4]
00602dec  08 30 83 e2                                      add r3, r3, #8
00602df0  00 30 80 e5                                      str r3, [r0]
00602df4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00602df8  b0 1c 39 00 ec 37 00 00                          .byte 0xb0, 0x1c, 0x39, 0x00, 0xec, 0x37, 0x00, 0x00

; FUNCTION 0x00603480, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video20createImageLoaderBMPEv
; demangled: glitch::video::createImageLoaderBMP()
; decoder-mode: arm
00603480  10 40 2d e9                                      push {r4, lr}
00603484  00 10 a0 e3                                      mov r1, #0
00603488  08 00 a0 e3                                      mov r0, #8
0060348c  46 c3 fc eb                                      bl #0x5341ac
00603490  00 40 a0 e1                                      mov r4, r0
00603494  c4 ff ff eb                                      bl #0x6033ac
00603498  04 00 a0 e1                                      mov r0, r4
0060349c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006041cc, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_113readDDSHeaderEPNS_2io9IReadFileERNS1_23SDDSSurfaceFormatHeaderE
; demangled: glitch::video::(anonymous namespace)::readDDSHeader(glitch::io::IReadFile*, glitch::video::(anonymous namespace)::SDDSSurfaceFormatHeader&)
; decoder-mode: arm
006041cc  70 40 2d e9                                      push {r4, r5, r6, lr}
006041d0  00 20 a0 e3                                      mov r2, #0
006041d4  00 40 a0 e1                                      mov r4, r0
006041d8  01 50 a0 e1                                      mov r5, r1
006041dc  00 30 90 e5                                      ldr r3, [r0]
006041e0  04 10 a0 e3                                      mov r1, #4
006041e4  0f e0 a0 e1                                      mov lr, pc
006041e8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006041ec  00 30 94 e5                                      ldr r3, [r4]
006041f0  04 00 a0 e1                                      mov r0, r4
006041f4  05 10 a0 e1                                      mov r1, r5
006041f8  7c 20 a0 e3                                      mov r2, #0x7c
006041fc  0f e0 a0 e1                                      mov lr, pc
00604200  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00604204  00 30 95 e5                                      ldr r3, [r5]
00604208  03 00 50 e1                                      cmp r0, r3
0060420c  01 00 00 0a                                      beq #0x604218
00604210  00 00 a0 e3                                      mov r0, #0
00604214  70 80 bd e8                                      pop {r4, r5, r6, pc}
00604218  48 00 95 e5                                      ldr r0, [r5, #0x48]
0060421c  20 00 50 e3                                      cmp r0, #0x20
00604220  00 00 a0 13                                      movne r0, #0
00604224  01 00 a0 03                                      moveq r0, #1
00604228  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00604344, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video20createImageLoaderDDSEv
; demangled: glitch::video::createImageLoaderDDS()
; decoder-mode: arm
00604344  10 40 2d e9                                      push {r4, lr}
00604348  00 10 a0 e3                                      mov r1, #0
0060434c  08 00 a0 e3                                      mov r0, #8
00604350  95 bf fc eb                                      bl #0x5341ac
00604354  00 40 a0 e1                                      mov r4, r0
00604358  cd ff ff eb                                      bl #0x604294
0060435c  04 00 a0 e1                                      mov r0, r4
00604360  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00604bc0, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video20createImageLoaderJPGEv
; demangled: glitch::video::createImageLoaderJPG()
; decoder-mode: arm
00604bc0  10 40 2d e9                                      push {r4, lr}
00604bc4  00 10 a0 e3                                      mov r1, #0
00604bc8  08 00 a0 e3                                      mov r0, #8
00604bcc  76 bd fc eb                                      bl #0x5341ac
00604bd0  00 40 a0 e1                                      mov r4, r0
00604bd4  b3 ff ff eb                                      bl #0x604aa8
00604bd8  04 00 a0 e1                                      mov r0, r4
00604bdc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060500c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video20createImageLoaderPNGEv
; demangled: glitch::video::createImageLoaderPNG()
; decoder-mode: arm
0060500c  10 40 2d e9                                      push {r4, lr}
00605010  00 10 a0 e3                                      mov r1, #0
00605014  08 00 a0 e3                                      mov r0, #8
00605018  63 bc fc eb                                      bl #0x5341ac
0060501c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00605020  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00605024  01 10 a0 e3                                      mov r1, #1
00605028  04 40 8f e0                                      add r4, pc, r4
0060502c  03 30 94 e7                                      ldr r3, [r4, r3]
00605030  04 10 80 e5                                      str r1, [r0, #4]
00605034  08 30 83 e2                                      add r3, r3, #8
00605038  00 30 80 e5                                      str r3, [r0]
0060503c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00605040  68 fa 38 00 fc 36 00 00                          .byte 0x68, 0xfa, 0x38, 0x00, 0xfc, 0x36, 0x00, 0x00

; FUNCTION 0x0060564c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_118png_cpexcept_errorEP14png_struct_defPKc
; demangled: glitch::video::(anonymous namespace)::png_cpexcept_error(png_struct_def*, char const*)
; decoder-mode: arm
0060564c  10 40 2d e9                                      push {r4, lr}
00605650  00 40 a0 e1                                      mov r4, r0
00605654  14 00 9f e5                                      ldr r0, [pc, #0x14]
00605658  03 20 a0 e3                                      mov r2, #3
0060565c  00 00 8f e0                                      add r0, pc, r0
00605660  a0 15 00 eb                                      bl #0x60ace8
00605664  04 00 a0 e1                                      mov r0, r4
00605668  01 10 a0 e3                                      mov r1, #1
0060566c  c0 23 f4 eb                                      bl #0x30e574
; mapping-symbol data/literal pool
00605670  9c f2 2d 00                                      .byte 0x9c, 0xf2, 0x2d, 0x00

; FUNCTION 0x006056d4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18user_read_data_fcnEP14png_struct_defPhj
; demangled: glitch::video::user_read_data_fcn(png_struct_def*, unsigned char*, unsigned int)
; decoder-mode: arm
006056d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006056d8  14 31 90 e5                                      ldr r3, [r0, #0x114]
006056dc  00 40 a0 e1                                      mov r4, r0
006056e0  02 50 a0 e1                                      mov r5, r2
006056e4  03 00 a0 e1                                      mov r0, r3
006056e8  00 30 93 e5                                      ldr r3, [r3]
006056ec  0f e0 a0 e1                                      mov lr, pc
006056f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006056f4  05 00 50 e1                                      cmp r0, r5
006056f8  04 00 00 0a                                      beq #0x605710
006056fc  10 10 9f e5                                      ldr r1, [pc, #0x10]
00605700  04 00 a0 e1                                      mov r0, r4
00605704  01 10 8f e0                                      add r1, pc, r1
00605708  70 40 bd e8                                      pop {r4, r5, r6, lr}
0060570c  b8 fd 01 ea                                      b #0x684df4
00605710  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00605714  14 f2 2d 00                                      .byte 0x14, 0xf2, 0x2d, 0x00

; FUNCTION 0x006057c0, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video20createImageLoaderPVREv
; demangled: glitch::video::createImageLoaderPVR()
; decoder-mode: arm
006057c0  10 40 2d e9                                      push {r4, lr}
006057c4  00 10 a0 e3                                      mov r1, #0
006057c8  08 00 a0 e3                                      mov r0, #8
006057cc  76 ba fc eb                                      bl #0x5341ac
006057d0  00 40 a0 e1                                      mov r4, r0
006057d4  e4 ff ff eb                                      bl #0x60576c
006057d8  04 00 a0 e1                                      mov r0, r4
006057dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006058a4, declared_size=620, range_size=620, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_113readPVRHeaderEPNS_2io9IReadFileERNS1_10SPVRHeaderERb
; demangled: glitch::video::(anonymous namespace)::readPVRHeader(glitch::io::IReadFile*, glitch::video::(anonymous namespace)::SPVRHeader&, bool&)
; decoder-mode: arm
006058a4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006058a8  4c 52 9f e5                                      ldr r5, [pc, #0x24c]
006058ac  4c 82 9f e5                                      ldr r8, [pc, #0x24c]
006058b0  1c d0 4d e2                                      sub sp, sp, #0x1c
006058b4  05 50 8f e0                                      add r5, pc, r5
006058b8  08 30 95 e7                                      ldr r3, [r5, r8]
006058bc  01 70 a0 e1                                      mov r7, r1
006058c0  00 10 a0 e3                                      mov r1, #0
006058c4  00 c0 93 e5                                      ldr ip, [r3]
006058c8  02 a0 a0 e1                                      mov sl, r2
006058cc  00 30 90 e5                                      ldr r3, [r0]
006058d0  01 20 a0 e1                                      mov r2, r1
006058d4  14 c0 8d e5                                      str ip, [sp, #0x14]
006058d8  00 40 a0 e1                                      mov r4, r0
006058dc  0f e0 a0 e1                                      mov lr, pc
006058e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006058e4  00 30 a0 e3                                      mov r3, #0
006058e8  00 30 ca e5                                      strb r3, [sl]
006058ec  0c 60 8d e2                                      add r6, sp, #0xc
006058f0  13 30 cd e5                                      strb r3, [sp, #0x13]
006058f4  0c 30 cd e5                                      strb r3, [sp, #0xc]
006058f8  0d 30 cd e5                                      strb r3, [sp, #0xd]
006058fc  0e 30 cd e5                                      strb r3, [sp, #0xe]
00605900  0f 30 cd e5                                      strb r3, [sp, #0xf]
00605904  10 30 cd e5                                      strb r3, [sp, #0x10]
00605908  11 30 cd e5                                      strb r3, [sp, #0x11]
0060590c  12 30 cd e5                                      strb r3, [sp, #0x12]
00605910  06 10 a0 e1                                      mov r1, r6
00605914  08 20 a0 e3                                      mov r2, #8
00605918  00 30 94 e5                                      ldr r3, [r4]
0060591c  04 00 a0 e1                                      mov r0, r4
00605920  0f e0 a0 e1                                      mov lr, pc
00605924  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00605928  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
0060592c  06 00 a0 e1                                      mov r0, r6
00605930  08 20 a0 e3                                      mov r2, #8
00605934  01 10 8f e0                                      add r1, pc, r1
00605938  cf 24 f4 eb                                      bl #0x30ec7c
0060593c  00 00 50 e3                                      cmp r0, #0
00605940  11 00 00 1a                                      bne #0x60598c
00605944  00 30 94 e5                                      ldr r3, [r4]
00605948  04 00 a0 e1                                      mov r0, r4
0060594c  07 10 a0 e1                                      mov r1, r7
00605950  34 20 a0 e3                                      mov r2, #0x34
00605954  0f e0 a0 e1                                      mov lr, pc
00605958  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060595c  01 30 a0 e3                                      mov r3, #1
00605960  34 00 50 e3                                      cmp r0, #0x34
00605964  00 30 ca e5                                      strb r3, [sl]
00605968  14 00 00 0a                                      beq #0x6059c0
0060596c  00 00 a0 e3                                      mov r0, #0
00605970  08 30 95 e7                                      ldr r3, [r5, r8]
00605974  14 20 9d e5                                      ldr r2, [sp, #0x14]
00605978  00 30 93 e5                                      ldr r3, [r3]
0060597c  03 00 52 e1                                      cmp r2, r3
00605980  5c 00 00 1a                                      bne #0x605af8
00605984  1c d0 8d e2                                      add sp, sp, #0x1c
00605988  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0060598c  06 10 a0 e1                                      mov r1, r6
00605990  08 20 a0 e3                                      mov r2, #8
00605994  07 00 a0 e1                                      mov r0, r7
00605998  b2 23 f4 eb                                      bl #0x30e868
0060599c  00 30 94 e5                                      ldr r3, [r4]
006059a0  04 00 a0 e1                                      mov r0, r4
006059a4  08 10 87 e2                                      add r1, r7, #8
006059a8  2c 20 a0 e3                                      mov r2, #0x2c
006059ac  0f e0 a0 e1                                      mov lr, pc
006059b0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006059b4  08 00 80 e2                                      add r0, r0, #8
006059b8  34 00 50 e3                                      cmp r0, #0x34
006059bc  ea ff ff 1a                                      bne #0x60596c
006059c0  40 11 9f e5                                      ldr r1, [pc, #0x140]
006059c4  2c 00 87 e2                                      add r0, r7, #0x2c
006059c8  04 20 a0 e3                                      mov r2, #4
006059cc  01 10 8f e0                                      add r1, pc, r1
006059d0  a9 24 f4 eb                                      bl #0x30ec7c
006059d4  00 00 50 e3                                      cmp r0, #0
006059d8  e3 ff ff 1a                                      bne #0x60596c
006059dc  00 30 97 e5                                      ldr r3, [r7]
006059e0  34 00 53 e3                                      cmp r3, #0x34
006059e4  e0 ff ff 1a                                      bne #0x60596c
006059e8  10 00 97 e5                                      ldr r0, [r7, #0x10]
006059ec  01 3c 10 e2                                      ands r3, r0, #0x100
006059f0  02 00 00 0a                                      beq #0x605a00
006059f4  0c 20 97 e5                                      ldr r2, [r7, #0xc]
006059f8  00 00 52 e3                                      cmp r2, #0
006059fc  da ff ff 0a                                      beq #0x60596c
00605a00  01 0a 10 e3                                      tst r0, #0x1000
00605a04  30 00 00 1a                                      bne #0x605acc
00605a08  00 00 53 e3                                      cmp r3, #0
00605a0c  32 00 00 0a                                      beq #0x605adc
00605a10  08 30 97 e5                                      ldr r3, [r7, #8]
00605a14  00 00 53 e3                                      cmp r3, #0
00605a18  00 20 e0 03                                      mvneq r2, #0
00605a1c  03 00 00 0a                                      beq #0x605a30
00605a20  00 20 e0 e3                                      mvn r2, #0
00605a24  a3 30 b0 e1                                      lsrs r3, r3, #1
00605a28  01 20 82 e2                                      add r2, r2, #1
00605a2c  fc ff ff 1a                                      bne #0x605a24
00605a30  04 30 97 e5                                      ldr r3, [r7, #4]
00605a34  08 20 8d e5                                      str r2, [sp, #8]
00605a38  00 00 53 e3                                      cmp r3, #0
00605a3c  00 10 e0 03                                      mvneq r1, #0
00605a40  03 00 00 0a                                      beq #0x605a54
00605a44  00 10 e0 e3                                      mvn r1, #0
00605a48  a3 30 b0 e1                                      lsrs r3, r3, #1
00605a4c  01 10 81 e2                                      add r1, r1, #1
00605a50  fc ff ff 1a                                      bne #0x605a48
00605a54  01 09 10 e3                                      tst r0, #0x4000
00605a58  04 10 8d e5                                      str r1, [sp, #4]
00605a5c  20 00 00 1a                                      bne #0x605ae4
00605a60  01 30 a0 e3                                      mov r3, #1
00605a64  00 00 e0 e3                                      mvn r0, #0
00605a68  a3 30 b0 e1                                      lsrs r3, r3, #1
00605a6c  01 00 80 e2                                      add r0, r0, #1
00605a70  fc ff ff 1a                                      bne #0x605a68
00605a74  02 00 51 e1                                      cmp r1, r2
00605a78  01 20 a0 81                                      movhi r2, r1
00605a7c  04 30 8d 82                                      addhi r3, sp, #4
00605a80  08 30 8d 92                                      addls r3, sp, #8
00605a84  00 00 52 e1                                      cmp r2, r0
00605a88  0d 30 a0 31                                      movlo r3, sp
00605a8c  00 00 8d e5                                      str r0, [sp]
00605a90  00 20 93 e5                                      ldr r2, [r3]
00605a94  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00605a98  03 00 52 e1                                      cmp r2, r3
00605a9c  0e 00 00 0a                                      beq #0x605adc
00605aa0  00 30 94 e5                                      ldr r3, [r4]
00605aa4  04 00 a0 e1                                      mov r0, r4
00605aa8  0f e0 a0 e1                                      mov lr, pc
00605aac  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00605ab0  54 10 9f e5                                      ldr r1, [pc, #0x54]
00605ab4  00 20 a0 e1                                      mov r2, r0
00605ab8  03 00 a0 e3                                      mov r0, #3
00605abc  01 10 8f e0                                      add r1, pc, r1
00605ac0  5b 15 00 eb                                      bl #0x60b034
00605ac4  00 00 a0 e3                                      mov r0, #0
00605ac8  a8 ff ff ea                                      b #0x605970
00605acc  30 20 97 e5                                      ldr r2, [r7, #0x30]
00605ad0  06 00 52 e3                                      cmp r2, #6
00605ad4  a4 ff ff 1a                                      bne #0x60596c
00605ad8  ca ff ff ea                                      b #0x605a08
00605adc  01 00 a0 e3                                      mov r0, #1
00605ae0  a2 ff ff ea                                      b #0x605970
00605ae4  30 30 97 e5                                      ldr r3, [r7, #0x30]
00605ae8  00 00 53 e3                                      cmp r3, #0
00605aec  00 00 e0 03                                      mvneq r0, #0
00605af0  db ff ff 1a                                      bne #0x605a64
00605af4  de ff ff ea                                      b #0x605a74
00605af8  04 22 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00605afc  dc f1 38 00 ac 40 00 00 f4 ef 2d 00 6c ef 2d 00  .byte 0xdc, 0xf1, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0xef, 0x2d, 0x00, 0x6c, 0xef, 0x2d, 0x00
00605b0c  84 ee 2d 00                                      .byte 0x84, 0xee, 0x2d, 0x00

; FUNCTION 0x0060632c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video20createImageLoaderTGAEv
; demangled: glitch::video::createImageLoaderTGA()
; decoder-mode: arm
0060632c  10 40 2d e9                                      push {r4, lr}
00606330  00 10 a0 e3                                      mov r1, #0
00606334  08 00 a0 e3                                      mov r0, #8
00606338  9b b7 fc eb                                      bl #0x5341ac
0060633c  1c 40 9f e5                                      ldr r4, [pc, #0x1c]
00606340  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00606344  01 10 a0 e3                                      mov r1, #1
00606348  04 40 8f e0                                      add r4, pc, r4
0060634c  03 30 94 e7                                      ldr r3, [r4, r3]
00606350  04 10 80 e5                                      str r1, [r0, #4]
00606354  08 30 83 e2                                      add r3, r3, #8
00606358  00 30 80 e5                                      str r3, [r0]
0060635c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00606360  48 e7 38 00 50 21 00 00                          .byte 0x48, 0xe7, 0x38, 0x00, 0x50, 0x21, 0x00, 0x00

; FUNCTION 0x006068b8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_121jpeg_init_destinationEP20jpeg_compress_struct
; demangled: glitch::video::(anonymous namespace)::jpeg_init_destination(jpeg_compress_struct*)
; decoder-mode: arm
006068b8  18 30 90 e5                                      ldr r3, [r0, #0x18]
006068bc  01 1a a0 e3                                      mov r1, #0x1000
006068c0  18 20 83 e2                                      add r2, r3, #0x18
006068c4  04 10 83 e5                                      str r1, [r3, #4]
006068c8  00 20 83 e5                                      str r2, [r3]
006068cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006068d0, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_124jpeg_empty_output_bufferEP20jpeg_compress_struct
; demangled: glitch::video::(anonymous namespace)::jpeg_empty_output_buffer(jpeg_compress_struct*)
; decoder-mode: arm
006068d0  70 40 2d e9                                      push {r4, r5, r6, lr}
006068d4  18 40 90 e5                                      ldr r4, [r0, #0x18]
006068d8  00 50 a0 e1                                      mov r5, r0
006068dc  01 2a a0 e3                                      mov r2, #0x1000
006068e0  14 30 94 e5                                      ldr r3, [r4, #0x14]
006068e4  18 60 84 e2                                      add r6, r4, #0x18
006068e8  06 10 a0 e1                                      mov r1, r6
006068ec  03 00 a0 e1                                      mov r0, r3
006068f0  00 30 93 e5                                      ldr r3, [r3]
006068f4  0f e0 a0 e1                                      mov lr, pc
006068f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006068fc  01 0a 50 e3                                      cmp r0, #0x1000
00606900  06 00 00 0a                                      beq #0x606920
00606904  00 30 95 e5                                      ldr r3, [r5]
00606908  25 20 a0 e3                                      mov r2, #0x25
0060690c  05 00 a0 e1                                      mov r0, r5
00606910  14 20 83 e5                                      str r2, [r3, #0x14]
00606914  00 30 95 e5                                      ldr r3, [r5]
00606918  0f e0 a0 e1                                      mov lr, pc
0060691c  00 f0 93 e5                                      ldr pc, [r3]
00606920  01 3a a0 e3                                      mov r3, #0x1000
00606924  04 30 84 e5                                      str r3, [r4, #4]
00606928  00 60 84 e5                                      str r6, [r4]
0060692c  01 00 a0 e3                                      mov r0, #1
00606930  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00606934, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_121jpeg_term_destinationEP20jpeg_compress_struct
; demangled: glitch::video::(anonymous namespace)::jpeg_term_destination(jpeg_compress_struct*)
; decoder-mode: arm
00606934  70 40 2d e9                                      push {r4, r5, r6, lr}
00606938  18 10 90 e5                                      ldr r1, [r0, #0x18]
0060693c  00 40 a0 e1                                      mov r4, r0
00606940  04 50 91 e5                                      ldr r5, [r1, #4]
00606944  14 30 91 e5                                      ldr r3, [r1, #0x14]
00606948  18 10 81 e2                                      add r1, r1, #0x18
0060694c  01 5a 65 e2                                      rsb r5, r5, #0x1000
00606950  03 00 a0 e1                                      mov r0, r3
00606954  05 20 a0 e1                                      mov r2, r5
00606958  00 30 93 e5                                      ldr r3, [r3]
0060695c  0f e0 a0 e1                                      mov lr, pc
00606960  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00606964  00 00 55 e1                                      cmp r5, r0
00606968  06 00 00 0a                                      beq #0x606988
0060696c  00 30 94 e5                                      ldr r3, [r4]
00606970  25 20 a0 e3                                      mov r2, #0x25
00606974  04 00 a0 e1                                      mov r0, r4
00606978  14 20 83 e5                                      str r2, [r3, #0x14]
0060697c  00 30 94 e5                                      ldr r3, [r4]
00606980  0f e0 a0 e1                                      mov lr, pc
00606984  00 f0 93 e5                                      ldr pc, [r3]
00606988  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00606d10, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video20createImageWriterJPGEv
; demangled: glitch::video::createImageWriterJPG()
; decoder-mode: arm
00606d10  10 40 2d e9                                      push {r4, lr}
00606d14  00 10 a0 e3                                      mov r1, #0
00606d18  08 00 a0 e3                                      mov r0, #8
00606d1c  22 b5 fc eb                                      bl #0x5341ac
00606d20  00 40 a0 e1                                      mov r4, r0
00606d24  24 ff ff eb                                      bl #0x6069bc
00606d28  04 00 a0 e1                                      mov r0, r4
00606d2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00607208, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_118png_cpexcept_errorEP14png_struct_defPKc
; demangled: glitch::video::(anonymous namespace)::png_cpexcept_error(png_struct_def*, char const*)
; decoder-mode: arm
00607208  10 40 2d e9                                      push {r4, lr}
0060720c  00 40 a0 e1                                      mov r4, r0
00607210  14 00 9f e5                                      ldr r0, [pc, #0x14]
00607214  03 20 a0 e3                                      mov r2, #3
00607218  00 00 8f e0                                      add r0, pc, r0
0060721c  b1 0e 00 eb                                      bl #0x60ace8
00607220  04 00 a0 e1                                      mov r0, r4
00607224  01 10 a0 e3                                      mov r1, #1
00607228  d1 1c f4 eb                                      bl #0x30e574
; mapping-symbol data/literal pool
0060722c  e0 d6 2d 00                                      .byte 0xe0, 0xd6, 0x2d, 0x00

; FUNCTION 0x0060727c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video19user_write_data_fcnEP14png_struct_defPhj
; demangled: glitch::video::user_write_data_fcn(png_struct_def*, unsigned char*, unsigned int)
; decoder-mode: arm
0060727c  70 40 2d e9                                      push {r4, r5, r6, lr}
00607280  14 31 90 e5                                      ldr r3, [r0, #0x114]
00607284  00 40 a0 e1                                      mov r4, r0
00607288  02 50 a0 e1                                      mov r5, r2
0060728c  03 00 a0 e1                                      mov r0, r3
00607290  00 30 93 e5                                      ldr r3, [r3]
00607294  0f e0 a0 e1                                      mov lr, pc
00607298  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060729c  05 00 50 e1                                      cmp r0, r5
006072a0  04 00 00 0a                                      beq #0x6072b8
006072a4  10 10 9f e5                                      ldr r1, [pc, #0x10]
006072a8  04 00 a0 e1                                      mov r0, r4
006072ac  01 10 8f e0                                      add r1, pc, r1
006072b0  70 40 bd e8                                      pop {r4, r5, r6, lr}
006072b4  ce f6 01 ea                                      b #0x684df4
006072b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006072bc  34 d9 2d 00                                      .byte 0x34, 0xd9, 0x2d, 0x00

; FUNCTION 0x006072c0, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video20createImageWriterPNGEv
; demangled: glitch::video::createImageWriterPNG()
; decoder-mode: arm
006072c0  10 40 2d e9                                      push {r4, lr}
006072c4  00 10 a0 e3                                      mov r1, #0
006072c8  08 00 a0 e3                                      mov r0, #8
006072cc  b6 b3 fc eb                                      bl #0x5341ac
006072d0  00 40 a0 e1                                      mov r4, r0
006072d4  a0 fe ff eb                                      bl #0x606d5c
006072d8  04 00 a0 e1                                      mov r0, r4
006072dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060762c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video20createImageWriterTGAEv
; demangled: glitch::video::createImageWriterTGA()
; decoder-mode: arm
0060762c  10 40 2d e9                                      push {r4, lr}
00607630  00 10 a0 e3                                      mov r1, #0
00607634  08 00 a0 e3                                      mov r0, #8
00607638  db b2 fc eb                                      bl #0x5341ac
0060763c  00 40 a0 e1                                      mov r4, r0
00607640  31 ff ff eb                                      bl #0x60730c
00607644  04 00 a0 e1                                      mov r0, r4
00607648  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00607704, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_119IMappedWholeLoadingD1Ev
; demangled: glitch::video::(anonymous namespace)::IMappedWholeLoading::~IMappedWholeLoading()
; decoder-mode: arm
00607704  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00607708  10 40 2d e9                                      push {r4, lr}
0060770c  03 30 8f e0                                      add r3, pc, r3
00607710  08 30 83 e2                                      add r3, r3, #8
00607714  00 40 a0 e1                                      mov r4, r0
00607718  00 30 80 e5                                      str r3, [r0]
0060771c  f6 ff ff eb                                      bl #0x6076fc
00607720  04 00 a0 e1                                      mov r0, r4
00607724  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00607728  fc fd 34 00                                      .byte 0xfc, 0xfd, 0x34, 0x00

; FUNCTION 0x0060772c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_115CPerFaceLoadingD1Ev
; demangled: glitch::video::(anonymous namespace)::CPerFaceLoading::~CPerFaceLoading()
; decoder-mode: arm
0060772c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00607730  10 40 2d e9                                      push {r4, lr}
00607734  03 30 8f e0                                      add r3, pc, r3
00607738  08 30 83 e2                                      add r3, r3, #8
0060773c  00 40 a0 e1                                      mov r4, r0
00607740  00 30 80 e5                                      str r3, [r0]
00607744  ec ff ff eb                                      bl #0x6076fc
00607748  04 00 a0 e1                                      mov r0, r4
0060774c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00607750  d4 fd 34 00                                      .byte 0xd4, 0xfd, 0x34, 0x00

; FUNCTION 0x00607754, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_113CWholeLoadingD1Ev
; demangled: glitch::video::(anonymous namespace)::CWholeLoading::~CWholeLoading()
; decoder-mode: arm
00607754  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00607758  10 40 2d e9                                      push {r4, lr}
0060775c  03 30 8f e0                                      add r3, pc, r3
00607760  08 30 83 e2                                      add r3, r3, #8
00607764  00 40 a0 e1                                      mov r4, r0
00607768  00 30 80 e5                                      str r3, [r0]
0060776c  e2 ff ff eb                                      bl #0x6076fc
00607770  04 00 a0 e1                                      mov r0, r4
00607774  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00607778  ac fd 34 00                                      .byte 0xac, 0xfd, 0x34, 0x00

; FUNCTION 0x0060777c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_121CPerLevelRemapLoadingD1Ev
; demangled: glitch::video::(anonymous namespace)::CPerLevelRemapLoading::~CPerLevelRemapLoading()
; decoder-mode: arm
0060777c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00607780  10 40 2d e9                                      push {r4, lr}
00607784  03 30 8f e0                                      add r3, pc, r3
00607788  50 30 83 e2                                      add r3, r3, #0x50
0060778c  00 40 a0 e1                                      mov r4, r0
00607790  00 30 80 e5                                      str r3, [r0]
00607794  d8 ff ff eb                                      bl #0x6076fc
00607798  04 00 a0 e1                                      mov r0, r4
0060779c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006077a0  84 fd 34 00                                      .byte 0x84, 0xfd, 0x34, 0x00

; FUNCTION 0x0060791c, declared_size=272, range_size=272, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_119IMappedWholeLoading7processENS0_23E_TEXTURE_CUBE_MAP_FACEEh
; demangled: glitch::video::(anonymous namespace)::IMappedWholeLoading::process(glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)
; decoder-mode: arm
0060791c  00 00 51 e3                                      cmp r1, #0
00607920  00 00 52 d3                                      cmple r2, #0
00607924  70 40 2d e9                                      push {r4, r5, r6, lr}
00607928  02 50 a0 e1                                      mov r5, r2
0060792c  00 40 a0 e1                                      mov r4, r0
00607930  24 00 00 0a                                      beq #0x6079c8
00607934  21 20 d0 e5                                      ldrb r2, [r0, #0x21]
00607938  10 30 90 e5                                      ldr r3, [r0, #0x10]
0060793c  01 00 52 e3                                      cmp r2, #1
00607940  00 00 93 e5                                      ldr r0, [r3]
00607944  25 00 00 0a                                      beq #0x6079e0
00607948  00 00 55 e3                                      cmp r5, #0
0060794c  3e 10 d0 05                                      ldrbeq r1, [r0, #0x3e]
00607950  30 20 90 e5                                      ldr r2, [r0, #0x30]
00607954  01 10 45 12                                      subne r1, r5, #1
00607958  01 10 41 02                                      subeq r1, r1, #1
0060795c  71 10 ef e6                                      uxtb r1, r1
00607960  01 c0 81 e2                                      add ip, r1, #1
00607964  0c c1 92 e7                                      ldr ip, [r2, ip, lsl #2]
00607968  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
0060796c  0c 20 62 e0                                      rsb r2, r2, ip
00607970  00 00 55 e3                                      cmp r5, #0
00607974  15 00 00 1a                                      bne #0x6079d0
00607978  04 c0 93 e5                                      ldr ip, [r3, #4]
0060797c  14 e0 94 e5                                      ldr lr, [r4, #0x14]
00607980  0e e0 6c e0                                      rsb lr, ip, lr
00607984  7f e0 8e e2                                      add lr, lr, #0x7f
00607988  02 20 8e e0                                      add r2, lr, r2
0060798c  7f 20 02 e2                                      and r2, r2, #0x7f
00607990  02 c0 8c e0                                      add ip, ip, r2
00607994  18 c0 84 e5                                      str ip, [r4, #0x18]
00607998  08 30 93 e5                                      ldr r3, [r3, #8]
0060799c  00 00 53 e3                                      cmp r3, #0
006079a0  1b 00 00 0a                                      beq #0x607a14
006079a4  04 00 a0 e1                                      mov r0, r4
006079a8  ba ff ff eb                                      bl #0x607898
006079ac  14 30 94 e5                                      ldr r3, [r4, #0x14]
006079b0  05 10 a0 e1                                      mov r1, r5
006079b4  00 30 83 e0                                      add r3, r3, r0
006079b8  14 30 84 e5                                      str r3, [r4, #0x14]
006079bc  04 00 a0 e1                                      mov r0, r4
006079c0  7f ff ff eb                                      bl #0x6077c4
006079c4  1c 00 84 e5                                      str r0, [r4, #0x1c]
006079c8  01 00 a0 e3                                      mov r0, #1
006079cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
006079d0  18 c0 94 e5                                      ldr ip, [r4, #0x18]
006079d4  02 20 8c e0                                      add r2, ip, r2
006079d8  18 20 84 e5                                      str r2, [r4, #0x18]
006079dc  ed ff ff ea                                      b #0x607998
006079e0  3f 10 d0 e5                                      ldrb r1, [r0, #0x3f]
006079e4  02 10 01 e2                                      and r1, r1, #2
006079e8  71 10 ef e6                                      uxtb r1, r1
006079ec  00 00 51 e3                                      cmp r1, #0
006079f0  30 c0 90 15                                      ldrne ip, [r0, #0x30]
006079f4  3e c0 d0 05                                      ldrbeq ip, [r0, #0x3e]
006079f8  30 20 90 05                                      ldreq r2, [r0, #0x30]
006079fc  00 20 9c 15                                      ldrne r2, [ip]
00607a00  04 c0 9c 15                                      ldrne ip, [ip, #4]
00607a04  00 10 a0 13                                      movne r1, #0
00607a08  0c 21 92 07                                      ldreq r2, [r2, ip, lsl #2]
00607a0c  0c 20 62 10                                      rsbne r2, r2, ip
00607a10  d6 ff ff ea                                      b #0x607970
00607a14  18 30 94 e5                                      ldr r3, [r4, #0x18]
00607a18  05 10 a0 e1                                      mov r1, r5
00607a1c  14 30 84 e5                                      str r3, [r4, #0x14]
00607a20  b7 8a ff eb                                      bl #0x5ea504
00607a24  1c 00 84 e5                                      str r0, [r4, #0x1c]
00607a28  e6 ff ff ea                                      b #0x6079c8

; FUNCTION 0x00607de0, declared_size=448, range_size=448, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_121CPerLevelRemapLoading7processENS0_23E_TEXTURE_CUBE_MAP_FACEEh
; demangled: glitch::video::(anonymous namespace)::CPerLevelRemapLoading::process(glitch::video::E_TEXTURE_CUBE_MAP_FACE, unsigned char)
; decoder-mode: arm
00607de0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00607de4  00 00 51 e3                                      cmp r1, #0
00607de8  00 00 52 d3                                      cmple r2, #0
00607dec  10 d0 4d e2                                      sub sp, sp, #0x10
00607df0  02 60 a0 e1                                      mov r6, r2
00607df4  00 40 a0 e1                                      mov r4, r0
00607df8  30 00 00 0a                                      beq #0x607ec0
00607dfc  10 00 90 e5                                      ldr r0, [r0, #0x10]
00607e00  00 50 90 e5                                      ldr r5, [r0]
00607e04  00 00 55 e3                                      cmp r5, #0
00607e08  0c 50 8d e5                                      str r5, [sp, #0xc]
00607e0c  04 30 95 15                                      ldrne r3, [r5, #4]
00607e10  42 c0 d5 e5                                      ldrb ip, [r5, #0x42]
00607e14  01 30 83 12                                      addne r3, r3, #1
00607e18  04 30 85 15                                      strne r3, [r5, #4]
00607e1c  ac c2 a0 e1                                      lsr ip, ip, #5
00607e20  01 30 a0 e1                                      mov r3, r1
00607e24  0c 10 8d e2                                      add r1, sp, #0xc
00607e28  00 c0 8d e5                                      str ip, [sp]
00607e2c  7c fe ff eb                                      bl #0x607824
00607e30  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00607e34  00 00 50 e3                                      cmp r0, #0
00607e38  00 00 00 0a                                      beq #0x607e40
00607e3c  d0 55 f4 eb                                      bl #0x31d584
00607e40  10 30 94 e5                                      ldr r3, [r4, #0x10]
00607e44  04 00 93 e5                                      ldr r0, [r3, #4]
00607e48  00 00 50 e3                                      cmp r0, #0
00607e4c  01 30 a0 03                                      moveq r3, #1
00607e50  18 00 84 e5                                      str r0, [r4, #0x18]
00607e54  20 30 c4 05                                      strbeq r3, [r4, #0x20]
00607e58  0c 00 00 0a                                      beq #0x607e90
00607e5c  3e 20 d5 e5                                      ldrb r2, [r5, #0x3e]
00607e60  01 00 52 e3                                      cmp r2, #1
00607e64  17 00 00 9a                                      bls #0x607ec8
00607e68  00 80 a0 e3                                      mov r8, #0
00607e6c  08 30 93 e5                                      ldr r3, [r3, #8]
00607e70  00 00 53 e3                                      cmp r3, #0
00607e74  2a 00 00 0a                                      beq #0x607f24
00607e78  00 00 58 e3                                      cmp r8, #0
00607e7c  05 00 00 da                                      ble #0x607e98
00607e80  14 30 94 e5                                      ldr r3, [r4, #0x14]
00607e84  01 00 a0 e3                                      mov r0, #1
00607e88  08 80 83 e0                                      add r8, r3, r8
00607e8c  14 80 84 e5                                      str r8, [r4, #0x14]
00607e90  10 d0 8d e2                                      add sp, sp, #0x10
00607e94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00607e98  06 10 a0 e1                                      mov r1, r6
00607e9c  04 00 a0 e1                                      mov r0, r4
00607ea0  47 fe ff eb                                      bl #0x6077c4
00607ea4  06 10 a0 e1                                      mov r1, r6
00607ea8  1c 00 84 e5                                      str r0, [r4, #0x1c]
00607eac  04 00 a0 e1                                      mov r0, r4
00607eb0  14 50 94 e5                                      ldr r5, [r4, #0x14]
00607eb4  77 fe ff eb                                      bl #0x607898
00607eb8  00 00 85 e0                                      add r0, r5, r0
00607ebc  14 00 84 e5                                      str r0, [r4, #0x14]
00607ec0  01 00 a0 e3                                      mov r0, #1
00607ec4  f1 ff ff ea                                      b #0x607e90
00607ec8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00607ecc  1c 20 d2 e5                                      ldrb r2, [r2, #0x1c]
00607ed0  00 00 52 e3                                      cmp r2, #0
00607ed4  e3 ff ff 0a                                      beq #0x607e68
00607ed8  21 20 d4 e5                                      ldrb r2, [r4, #0x21]
00607edc  01 00 52 e3                                      cmp r2, #1
00607ee0  e0 ff ff 9a                                      bls #0x607e68
00607ee4  01 70 a0 e3                                      mov r7, #1
00607ee8  00 80 a0 e3                                      mov r8, #0
00607eec  07 10 a0 e1                                      mov r1, r7
00607ef0  04 00 a0 e1                                      mov r0, r4
00607ef4  32 fe ff eb                                      bl #0x6077c4
00607ef8  07 10 a0 e1                                      mov r1, r7
00607efc  04 00 a0 e1                                      mov r0, r4
00607f00  64 fe ff eb                                      bl #0x607898
00607f04  21 30 d4 e5                                      ldrb r3, [r4, #0x21]
00607f08  01 70 87 e2                                      add r7, r7, #1
00607f0c  77 70 ef e6                                      uxtb r7, r7
00607f10  07 00 53 e1                                      cmp r3, r7
00607f14  00 80 88 e0                                      add r8, r8, r0
00607f18  f3 ff ff 8a                                      bhi #0x607eec
00607f1c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00607f20  d1 ff ff ea                                      b #0x607e6c
00607f24  00 00 58 e3                                      cmp r8, #0
00607f28  08 00 00 da                                      ble #0x607f50
00607f2c  04 30 94 e5                                      ldr r3, [r4, #4]
00607f30  08 10 a0 e1                                      mov r1, r8
00607f34  01 20 a0 e3                                      mov r2, #1
00607f38  03 00 a0 e1                                      mov r0, r3
00607f3c  00 30 93 e5                                      ldr r3, [r3]
00607f40  0f e0 a0 e1                                      mov lr, pc
00607f44  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00607f48  00 00 50 e3                                      cmp r0, #0
00607f4c  09 00 00 0a                                      beq #0x607f78
00607f50  30 30 95 e5                                      ldr r3, [r5, #0x30]
00607f54  01 20 86 e2                                      add r2, r6, #1
00607f58  04 00 a0 e1                                      mov r0, r4
00607f5c  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
00607f60  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
00607f64  18 10 94 e5                                      ldr r1, [r4, #0x18]
00607f68  02 20 63 e0                                      rsb r2, r3, r2
00607f6c  6a ff ff eb                                      bl #0x607d1c
00607f70  00 00 50 e3                                      cmp r0, #0
00607f74  01 00 00 1a                                      bne #0x607f80
00607f78  00 00 a0 e3                                      mov r0, #0
00607f7c  c3 ff ff ea                                      b #0x607e90
00607f80  05 00 a0 e1                                      mov r0, r5
00607f84  06 10 a0 e1                                      mov r1, r6
00607f88  5d 89 ff eb                                      bl #0x5ea504
00607f8c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00607f90  1c 00 84 e5                                      str r0, [r4, #0x1c]
00607f94  01 00 a0 e3                                      mov r0, #1
00607f98  14 30 84 e5                                      str r3, [r4, #0x14]
00607f9c  bb ff ff ea                                      b #0x607e90

; FUNCTION 0x00607fa0, declared_size=168, range_size=168, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_121CPerLevelRemapLoading10preprocessEv
; demangled: glitch::video::(anonymous namespace)::CPerLevelRemapLoading::preprocess()
; decoder-mode: arm
00607fa0  70 40 2d e9                                      push {r4, r5, r6, lr}
00607fa4  10 30 90 e5                                      ldr r3, [r0, #0x10]
00607fa8  00 40 a0 e1                                      mov r4, r0
00607fac  14 50 90 e5                                      ldr r5, [r0, #0x14]
00607fb0  08 20 93 e5                                      ldr r2, [r3, #8]
00607fb4  00 00 52 e3                                      cmp r2, #0
00607fb8  1a 00 00 0a                                      beq #0x608028
00607fbc  08 30 90 e5                                      ldr r3, [r0, #8]
00607fc0  03 00 a0 e1                                      mov r0, r3
00607fc4  00 30 93 e5                                      ldr r3, [r3]
00607fc8  0f e0 a0 e1                                      mov lr, pc
00607fcc  08 f0 93 e5                                      ldr pc, [r3, #8]
00607fd0  00 20 a0 e1                                      mov r2, r0
00607fd4  05 10 a0 e1                                      mov r1, r5
00607fd8  04 00 a0 e1                                      mov r0, r4
00607fdc  4e ff ff eb                                      bl #0x607d1c
00607fe0  00 00 50 e3                                      cmp r0, #0
00607fe4  0e 00 00 0a                                      beq #0x608024
00607fe8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00607fec  00 00 93 e5                                      ldr r0, [r3]
00607ff0  3e 20 d0 e5                                      ldrb r2, [r0, #0x3e]
00607ff4  01 00 52 e3                                      cmp r2, #1
00607ff8  01 00 00 9a                                      bls #0x608004
00607ffc  01 00 a0 e3                                      mov r0, #1
00608000  70 80 bd e8                                      pop {r4, r5, r6, pc}
00608004  08 10 93 e5                                      ldr r1, [r3, #8]
00608008  00 00 51 e3                                      cmp r1, #0
0060800c  0a 00 00 0a                                      beq #0x60803c
00608010  04 00 a0 e1                                      mov r0, r4
00608014  00 10 a0 e3                                      mov r1, #0
00608018  e9 fd ff eb                                      bl #0x6077c4
0060801c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00608020  01 00 a0 e3                                      mov r0, #1
00608024  70 80 bd e8                                      pop {r4, r5, r6, pc}
00608028  00 30 93 e5                                      ldr r3, [r3]
0060802c  30 30 93 e5                                      ldr r3, [r3, #0x30]
00608030  0c 00 93 e8                                      ldm r3, {r2, r3}
00608034  03 20 62 e0                                      rsb r2, r2, r3
00608038  e5 ff ff ea                                      b #0x607fd4
0060803c  30 89 ff eb                                      bl #0x5ea504
00608040  1c 00 84 e5                                      str r0, [r4, #0x1c]
00608044  ec ff ff ea                                      b #0x607ffc

; FUNCTION 0x00608138, declared_size=36, range_size=36, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_119IMappedWholeLoading10preprocessEv
; demangled: glitch::video::(anonymous namespace)::IMappedWholeLoading::preprocess()
; decoder-mode: arm
00608138  10 40 2d e9                                      push {r4, lr}
0060813c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00608140  00 00 93 e5                                      ldr r0, [r3]
00608144  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00608148  00 00 53 e3                                      cmp r3, #0
0060814c  00 00 00 0a                                      beq #0x608154
00608150  bc ff ff eb                                      bl #0x608048
00608154  01 00 a0 e3                                      mov r0, #1
00608158  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060815c, declared_size=48, range_size=48, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_119IMappedWholeLoadingD0Ev
; demangled: glitch::video::(anonymous namespace)::IMappedWholeLoading::~IMappedWholeLoading()
; decoder-mode: arm
0060815c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00608160  10 40 2d e9                                      push {r4, lr}
00608164  03 30 8f e0                                      add r3, pc, r3
00608168  08 30 83 e2                                      add r3, r3, #8
0060816c  00 40 a0 e1                                      mov r4, r0
00608170  00 30 80 e5                                      str r3, [r0]
00608174  60 fd ff eb                                      bl #0x6076fc
00608178  04 00 a0 e1                                      mov r0, r4
0060817c  4b 18 f4 eb                                      bl #0x30e2b0
00608180  04 00 a0 e1                                      mov r0, r4
00608184  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00608188  a4 f3 34 00                                      .byte 0xa4, 0xf3, 0x34, 0x00

; FUNCTION 0x0060818c, declared_size=48, range_size=48, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_121CPerLevelRemapLoadingD0Ev
; demangled: glitch::video::(anonymous namespace)::CPerLevelRemapLoading::~CPerLevelRemapLoading()
; decoder-mode: arm
0060818c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00608190  10 40 2d e9                                      push {r4, lr}
00608194  03 30 8f e0                                      add r3, pc, r3
00608198  50 30 83 e2                                      add r3, r3, #0x50
0060819c  00 40 a0 e1                                      mov r4, r0
006081a0  00 30 80 e5                                      str r3, [r0]
006081a4  54 fd ff eb                                      bl #0x6076fc
006081a8  04 00 a0 e1                                      mov r0, r4
006081ac  3f 18 f4 eb                                      bl #0x30e2b0
006081b0  04 00 a0 e1                                      mov r0, r4
006081b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006081b8  74 f3 34 00                                      .byte 0x74, 0xf3, 0x34, 0x00

; FUNCTION 0x006081bc, declared_size=48, range_size=48, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_115CPerFaceLoadingD0Ev
; demangled: glitch::video::(anonymous namespace)::CPerFaceLoading::~CPerFaceLoading()
; decoder-mode: arm
006081bc  24 30 9f e5                                      ldr r3, [pc, #0x24]
006081c0  10 40 2d e9                                      push {r4, lr}
006081c4  03 30 8f e0                                      add r3, pc, r3
006081c8  08 30 83 e2                                      add r3, r3, #8
006081cc  00 40 a0 e1                                      mov r4, r0
006081d0  00 30 80 e5                                      str r3, [r0]
006081d4  48 fd ff eb                                      bl #0x6076fc
006081d8  04 00 a0 e1                                      mov r0, r4
006081dc  33 18 f4 eb                                      bl #0x30e2b0
006081e0  04 00 a0 e1                                      mov r0, r4
006081e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006081e8  44 f3 34 00                                      .byte 0x44, 0xf3, 0x34, 0x00

; FUNCTION 0x006081ec, declared_size=48, range_size=48, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_113CWholeLoadingD0Ev
; demangled: glitch::video::(anonymous namespace)::CWholeLoading::~CWholeLoading()
; decoder-mode: arm
006081ec  24 30 9f e5                                      ldr r3, [pc, #0x24]
006081f0  10 40 2d e9                                      push {r4, lr}
006081f4  03 30 8f e0                                      add r3, pc, r3
006081f8  08 30 83 e2                                      add r3, r3, #8
006081fc  00 40 a0 e1                                      mov r4, r0
00608200  00 30 80 e5                                      str r3, [r0]
00608204  3c fd ff eb                                      bl #0x6076fc
00608208  04 00 a0 e1                                      mov r0, r4
0060820c  27 18 f4 eb                                      bl #0x30e2b0
00608210  04 00 a0 e1                                      mov r0, r4
00608214  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00608218  14 f3 34 00                                      .byte 0x14, 0xf3, 0x34, 0x00

; FUNCTION 0x0060821c, declared_size=236, range_size=236, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_115CPerFaceLoading10preprocessEv
; demangled: glitch::video::(anonymous namespace)::CPerFaceLoading::preprocess()
; decoder-mode: arm
0060821c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00608220  10 30 90 e5                                      ldr r3, [r0, #0x10]
00608224  00 60 a0 e1                                      mov r6, r0
00608228  00 40 93 e5                                      ldr r4, [r3]
0060822c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00608230  00 00 53 e3                                      cmp r3, #0
00608234  04 00 00 0a                                      beq #0x60824c
00608238  04 00 a0 e1                                      mov r0, r4
0060823c  81 ff ff eb                                      bl #0x608048
00608240  10 30 96 e5                                      ldr r3, [r6, #0x10]
00608244  00 40 93 e5                                      ldr r4, [r3]
00608248  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0060824c  38 80 94 e5                                      ldr r8, [r4, #0x38]
00608250  01 50 a0 e3                                      mov r5, #1
00608254  03 70 a0 e1                                      mov r7, r3
00608258  03 80 08 e2                                      and r8, r8, #3
0060825c  02 00 58 e3                                      cmp r8, #2
00608260  00 00 a0 e3                                      mov r0, #0
00608264  06 80 a0 03                                      moveq r8, #6
00608268  05 80 a0 11                                      movne r8, r5
0060826c  0f 00 00 ea                                      b #0x6082b0
00608270  30 c0 94 e5                                      ldr ip, [r4, #0x30]
00608274  14 10 96 e5                                      ldr r1, [r6, #0x14]
00608278  04 10 9c e8                                      ldm ip, {r2, ip}
0060827c  0c 20 62 e0                                      rsb r2, r2, ip
00608280  92 30 23 e0                                      mla r3, r2, r0, r3
00608284  06 00 a0 e1                                      mov r0, r6
00608288  03 30 67 e0                                      rsb r3, r7, r3
0060828c  03 10 81 e0                                      add r1, r1, r3
00608290  a1 fe ff eb                                      bl #0x607d1c
00608294  00 00 50 e3                                      cmp r0, #0
00608298  16 00 00 0a                                      beq #0x6082f8
0060829c  08 00 55 e1                                      cmp r5, r8
006082a0  15 00 00 aa                                      bge #0x6082fc
006082a4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
006082a8  05 00 a0 e1                                      mov r0, r5
006082ac  01 50 85 e2                                      add r5, r5, #1
006082b0  3f 20 d4 e5                                      ldrb r2, [r4, #0x3f]
006082b4  02 00 12 e3                                      tst r2, #2
006082b8  ec ff ff 1a                                      bne #0x608270
006082bc  30 20 94 e5                                      ldr r2, [r4, #0x30]
006082c0  3e e0 d4 e5                                      ldrb lr, [r4, #0x3e]
006082c4  14 10 96 e5                                      ldr r1, [r6, #0x14]
006082c8  00 c0 92 e5                                      ldr ip, [r2]
006082cc  0e 21 92 e7                                      ldr r2, [r2, lr, lsl #2]
006082d0  7f e0 82 e2                                      add lr, r2, #0x7f
006082d4  7f e0 ce e3                                      bic lr, lr, #0x7f
006082d8  9e c0 20 e0                                      mla r0, lr, r0, ip
006082dc  00 30 83 e0                                      add r3, r3, r0
006082e0  03 30 67 e0                                      rsb r3, r7, r3
006082e4  03 10 81 e0                                      add r1, r1, r3
006082e8  06 00 a0 e1                                      mov r0, r6
006082ec  8a fe ff eb                                      bl #0x607d1c
006082f0  00 00 50 e3                                      cmp r0, #0
006082f4  e8 ff ff 1a                                      bne #0x60829c
006082f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006082fc  10 30 96 e5                                      ldr r3, [r6, #0x10]
00608300  0c 00 d3 e5                                      ldrb r0, [r3, #0xc]
00608304  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00608308, declared_size=200, range_size=200, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12_GLOBAL__N_113CWholeLoading10preprocessEv
; demangled: glitch::video::(anonymous namespace)::CWholeLoading::preprocess()
; decoder-mode: arm
00608308  70 40 2d e9                                      push {r4, r5, r6, lr}
0060830c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00608310  00 40 a0 e1                                      mov r4, r0
00608314  00 00 93 e5                                      ldr r0, [r3]
00608318  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
0060831c  00 00 52 e3                                      cmp r2, #0
00608320  01 00 00 0a                                      beq #0x60832c
00608324  47 ff ff eb                                      bl #0x608048
00608328  10 30 94 e5                                      ldr r3, [r4, #0x10]
0060832c  08 20 93 e5                                      ldr r2, [r3, #8]
00608330  14 50 94 e5                                      ldr r5, [r4, #0x14]
00608334  00 00 52 e3                                      cmp r2, #0
00608338  0c 00 00 0a                                      beq #0x608370
0060833c  08 30 94 e5                                      ldr r3, [r4, #8]
00608340  03 00 a0 e1                                      mov r0, r3
00608344  00 30 93 e5                                      ldr r3, [r3]
00608348  0f e0 a0 e1                                      mov lr, pc
0060834c  08 f0 93 e5                                      ldr pc, [r3, #8]
00608350  00 20 a0 e1                                      mov r2, r0
00608354  05 10 a0 e1                                      mov r1, r5
00608358  04 00 a0 e1                                      mov r0, r4
0060835c  6e fe ff eb                                      bl #0x607d1c
00608360  00 00 50 e3                                      cmp r0, #0
00608364  10 30 94 15                                      ldrne r3, [r4, #0x10]
00608368  0c 00 d3 15                                      ldrbne r0, [r3, #0xc]
0060836c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00608370  00 30 93 e5                                      ldr r3, [r3]
00608374  38 00 93 e5                                      ldr r0, [r3, #0x38]
00608378  3f 10 d3 e5                                      ldrb r1, [r3, #0x3f]
0060837c  03 00 00 e2                                      and r0, r0, #3
00608380  02 00 50 e3                                      cmp r0, #2
00608384  05 00 a0 03                                      moveq r0, #5
00608388  00 00 a0 13                                      movne r0, #0
0060838c  02 00 11 e3                                      tst r1, #2
00608390  07 00 00 0a                                      beq #0x6083b4
00608394  30 10 93 e5                                      ldr r1, [r3, #0x30]
00608398  04 20 91 e5                                      ldr r2, [r1, #4]
0060839c  00 30 91 e5                                      ldr r3, [r1]
006083a0  02 30 63 e0                                      rsb r3, r3, r2
006083a4  7f 20 83 e2                                      add r2, r3, #0x7f
006083a8  7f 20 c2 e3                                      bic r2, r2, #0x7f
006083ac  92 30 22 e0                                      mla r2, r2, r0, r3
006083b0  e7 ff ff ea                                      b #0x608354
006083b4  30 20 93 e5                                      ldr r2, [r3, #0x30]
006083b8  3e 30 d3 e5                                      ldrb r3, [r3, #0x3e]
006083bc  03 31 92 e7                                      ldr r3, [r2, r3, lsl #2]
006083c0  7f 20 83 e2                                      add r2, r3, #0x7f
006083c4  7f 20 c2 e3                                      bic r2, r2, #0x7f
006083c8  92 30 22 e0                                      mla r2, r2, r0, r3
006083cc  e0 ff ff ea                                      b #0x608354

; FUNCTION 0x006db0ec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_13E_BUFFER_TYPEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_BUFFER_TYPE*)
; decoder-mode: arm
006db0ec  04 00 9f e5                                      ldr r0, [pc, #4]
006db0f0  00 00 8f e0                                      add r0, pc, r0
006db0f4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db0f8  78 28 2c 00                                      .byte 0x78, 0x28, 0x2c, 0x00

; FUNCTION 0x006db0fc, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_14E_BUFFER_USAGEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_BUFFER_USAGE*)
; decoder-mode: arm
006db0fc  08 00 9f e5                                      ldr r0, [pc, #8]
006db100  00 00 8f e0                                      add r0, pc, r0
006db104  18 00 80 e2                                      add r0, r0, #0x18
006db108  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db10c  68 28 2c 00                                      .byte 0x68, 0x28, 0x2c, 0x00

; FUNCTION 0x006db130, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_14E_BLEND_FACTORE
; demangled: glitch::video::getStringsInternal(glitch::video::E_BLEND_FACTOR*)
; decoder-mode: arm
006db130  04 00 9f e5                                      ldr r0, [pc, #4]
006db134  00 00 8f e0                                      add r0, pc, r0
006db138  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db13c  64 28 2c 00                                      .byte 0x64, 0x28, 0x2c, 0x00

; FUNCTION 0x006db140, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_16E_BLEND_EQUATIONE
; demangled: glitch::video::getStringsInternal(glitch::video::E_BLEND_EQUATION*)
; decoder-mode: arm
006db140  08 00 9f e5                                      ldr r0, [pc, #8]
006db144  00 00 8f e0                                      add r0, pc, r0
006db148  44 00 80 e2                                      add r0, r0, #0x44
006db14c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db150  54 28 2c 00                                      .byte 0x54, 0x28, 0x2c, 0x00

; FUNCTION 0x006db154, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_11E_FACE_SIDEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_FACE_SIDE*)
; decoder-mode: arm
006db154  08 00 9f e5                                      ldr r0, [pc, #8]
006db158  00 00 8f e0                                      add r0, pc, r0
006db15c  60 00 80 e2                                      add r0, r0, #0x60
006db160  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db164  40 28 2c 00                                      .byte 0x40, 0x28, 0x2c, 0x00

; FUNCTION 0x006db168, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_14E_FACE_WINDINGE
; demangled: glitch::video::getStringsInternal(glitch::video::E_FACE_WINDING*)
; decoder-mode: arm
006db168  08 00 9f e5                                      ldr r0, [pc, #8]
006db16c  00 00 8f e0                                      add r0, pc, r0
006db170  70 00 80 e2                                      add r0, r0, #0x70
006db174  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db178  2c 28 2c 00                                      .byte 0x2c, 0x28, 0x2c, 0x00

; FUNCTION 0x006db17c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_14E_COMPARE_FUNCE
; demangled: glitch::video::getStringsInternal(glitch::video::E_COMPARE_FUNC*)
; decoder-mode: arm
006db17c  08 00 9f e5                                      ldr r0, [pc, #8]
006db180  00 00 8f e0                                      add r0, pc, r0
006db184  7c 00 80 e2                                      add r0, r0, #0x7c
006db188  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db18c  18 28 2c 00                                      .byte 0x18, 0x28, 0x2c, 0x00

; FUNCTION 0x006db190, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_14E_POLYGON_MODEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_POLYGON_MODE*)
; decoder-mode: arm
006db190  08 00 9f e5                                      ldr r0, [pc, #8]
006db194  00 00 8f e0                                      add r0, pc, r0
006db198  a4 00 80 e2                                      add r0, r0, #0xa4
006db19c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db1a0  04 28 2c 00                                      .byte 0x04, 0x28, 0x2c, 0x00

; FUNCTION 0x006db1a4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_12E_STENCIL_OPE
; demangled: glitch::video::getStringsInternal(glitch::video::E_STENCIL_OP*)
; decoder-mode: arm
006db1a4  08 00 9f e5                                      ldr r0, [pc, #8]
006db1a8  00 00 8f e0                                      add r0, pc, r0
006db1ac  b4 00 80 e2                                      add r0, r0, #0xb4
006db1b0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db1b4  f0 27 2c 00                                      .byte 0xf0, 0x27, 0x2c, 0x00

; FUNCTION 0x006db1d8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_18E_VERTEX_ATTRIBUTEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_VERTEX_ATTRIBUTE*)
; decoder-mode: arm
006db1d8  04 00 9f e5                                      ldr r0, [pc, #4]
006db1dc  00 00 8f e0                                      add r0, pc, r0
006db1e0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db1e4  98 28 2c 00                                      .byte 0x98, 0x28, 0x2c, 0x00

; FUNCTION 0x006db1e8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_29E_VERTEX_ATTRIBUTE_VALUE_TYPEE
; demangled: glitch::video::getStringsInternal(glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE*)
; decoder-mode: arm
006db1e8  08 00 9f e5                                      ldr r0, [pc, #8]
006db1ec  00 00 8f e0                                      add r0, pc, r0
006db1f0  7c 00 80 e2                                      add r0, r0, #0x7c
006db1f4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006db1f8  88 28 2c 00                                      .byte 0x88, 0x28, 0x2c, 0x00

; FUNCTION 0x006dbb50, declared_size=2452, range_size=2452, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video26guessShaderVertexAttributeEPKc
; demangled: glitch::video::guessShaderVertexAttribute(char const*)
; decoder-mode: arm
006dbb50  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006dbb54  a4 38 9f e5                                      ldr r3, [pc, #0x8a4]
006dbb58  a4 68 9f e5                                      ldr r6, [pc, #0x8a4]
006dbb5c  79 df 4d e2                                      sub sp, sp, #0x1e4
006dbb60  03 30 8f e0                                      add r3, pc, r3
006dbb64  0c 50 93 e5                                      ldr r5, [r3, #0xc]
006dbb68  06 60 8f e0                                      add r6, pc, r6
006dbb6c  00 40 a0 e1                                      mov r4, r0
006dbb70  01 50 15 e2                                      ands r5, r5, #1
006dbb74  4c 00 00 0a                                      beq #0x6dbcac
006dbb78  2e 10 a0 e3                                      mov r1, #0x2e
006dbb7c  04 00 a0 e1                                      mov r0, r4
006dbb80  28 cc f0 eb                                      bl #0x30ec28
006dbb84  00 00 50 e3                                      cmp r0, #0
006dbb88  01 40 80 12                                      addne r4, r0, #1
006dbb8c  04 00 a0 e1                                      mov r0, r4
006dbb90  af c8 f0 eb                                      bl #0x30de54
006dbb94  00 80 a0 e1                                      mov r8, r0
006dbb98  ad 61 f9 eb                                      bl #0x534254
006dbb9c  00 70 a0 e1                                      mov r7, r0
006dbba0  01 00 a0 e3                                      mov r0, #1
006dbba4  af 61 f9 eb                                      bl #0x534268
006dbba8  01 00 88 e2                                      add r0, r8, #1
006dbbac  90 62 f9 eb                                      bl #0x5345f4
006dbbb0  00 50 a0 e1                                      mov r5, r0
006dbbb4  08 00 84 e0                                      add r0, r4, r8
006dbbb8  00 00 54 e1                                      cmp r4, r0
006dbbbc  0c 00 00 0a                                      beq #0x6dbbf4
006dbbc0  40 c8 9f e5                                      ldr ip, [pc, #0x840]
006dbbc4  00 00 64 e0                                      rsb r0, r4, r0
006dbbc8  00 30 a0 e3                                      mov r3, #0
006dbbcc  d3 20 94 e1                                      ldrsb r2, [r4, r3]
006dbbd0  ff 00 52 e3                                      cmp r2, #0xff
006dbbd4  0c 10 96 97                                      ldrls r1, [r6, ip]
006dbbd8  00 10 91 95                                      ldrls r1, [r1]
006dbbdc  82 20 81 90                                      addls r2, r1, r2, lsl #1
006dbbe0  f2 20 d2 91                                      ldrshls r2, [r2, #2]
006dbbe4  03 20 c5 e7                                      strb r2, [r5, r3]
006dbbe8  01 30 83 e2                                      add r3, r3, #1
006dbbec  00 00 53 e1                                      cmp r3, r0
006dbbf0  f5 ff ff 1a                                      bne #0x6dbbcc
006dbbf4  10 68 9f e5                                      ldr r6, [pc, #0x810]
006dbbf8  00 30 a0 e3                                      mov r3, #0
006dbbfc  08 30 c5 e7                                      strb r3, [r5, r8]
006dbc00  06 60 8f e0                                      add r6, pc, r6
006dbc04  14 40 96 e5                                      ldr r4, [r6, #0x14]
006dbc08  03 00 54 e1                                      cmp r4, r3
006dbc0c  10 40 86 02                                      addeq r4, r6, #0x10
006dbc10  16 00 00 0a                                      beq #0x6dbc70
006dbc14  10 60 86 e2                                      add r6, r6, #0x10
006dbc18  00 00 00 ea                                      b #0x6dbc20
006dbc1c  03 40 a0 e1                                      mov r4, r3
006dbc20  10 00 94 e5                                      ldr r0, [r4, #0x10]
006dbc24  05 10 a0 e1                                      mov r1, r5
006dbc28  bb c9 f0 eb                                      bl #0x30e31c
006dbc2c  00 00 50 e3                                      cmp r0, #0
006dbc30  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
006dbc34  08 30 94 a5                                      ldrge r3, [r4, #8]
006dbc38  06 40 a0 b1                                      movlt r4, r6
006dbc3c  04 60 a0 e1                                      mov r6, r4
006dbc40  00 00 53 e3                                      cmp r3, #0
006dbc44  f4 ff ff 1a                                      bne #0x6dbc1c
006dbc48  c0 67 9f e5                                      ldr r6, [pc, #0x7c0]
006dbc4c  06 60 8f e0                                      add r6, pc, r6
006dbc50  10 60 86 e2                                      add r6, r6, #0x10
006dbc54  06 00 54 e1                                      cmp r4, r6
006dbc58  04 00 00 0a                                      beq #0x6dbc70
006dbc5c  10 10 94 e5                                      ldr r1, [r4, #0x10]
006dbc60  05 00 a0 e1                                      mov r0, r5
006dbc64  ac c9 f0 eb                                      bl #0x30e31c
006dbc68  00 00 50 e3                                      cmp r0, #0
006dbc6c  06 40 a0 b1                                      movlt r4, r6
006dbc70  9c 37 9f e5                                      ldr r3, [pc, #0x79c]
006dbc74  03 30 8f e0                                      add r3, pc, r3
006dbc78  10 30 83 e2                                      add r3, r3, #0x10
006dbc7c  03 00 54 e1                                      cmp r4, r3
006dbc80  ff 40 a0 03                                      moveq r4, #0xff
006dbc84  14 40 94 15                                      ldrne r4, [r4, #0x14]
006dbc88  00 00 55 e3                                      cmp r5, #0
006dbc8c  01 00 00 0a                                      beq #0x6dbc98
006dbc90  05 00 a0 e1                                      mov r0, r5
006dbc94  7b 62 f9 eb                                      bl #0x534688
006dbc98  07 00 a0 e1                                      mov r0, r7
006dbc9c  71 61 f9 eb                                      bl #0x534268
006dbca0  04 00 a0 e1                                      mov r0, r4
006dbca4  79 df 8d e2                                      add sp, sp, #0x1e4
006dbca8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006dbcac  0c 00 83 e2                                      add r0, r3, #0xc
006dbcb0  ad ca f0 eb                                      bl #0x30e76c
006dbcb4  00 00 50 e3                                      cmp r0, #0
006dbcb8  ae ff ff 0a                                      beq #0x6dbb78
006dbcbc  18 80 8d e2                                      add r8, sp, #0x18
006dbcc0  05 10 a0 e1                                      mov r1, r5
006dbcc4  08 00 a0 e1                                      mov r0, r8
006dbcc8  18 50 8d e5                                      str r5, [sp, #0x18]
006dbccc  1c 50 8d e5                                      str r5, [sp, #0x1c]
006dbcd0  20 50 8d e5                                      str r5, [sp, #0x20]
006dbcd4  24 50 8d e5                                      str r5, [sp, #0x24]
006dbcd8  28 50 8d e5                                      str r5, [sp, #0x28]
006dbcdc  2c 50 8d e5                                      str r5, [sp, #0x2c]
006dbce0  30 50 8d e5                                      str r5, [sp, #0x30]
006dbce4  34 50 8d e5                                      str r5, [sp, #0x34]
006dbce8  38 50 8d e5                                      str r5, [sp, #0x38]
006dbcec  3c 50 8d e5                                      str r5, [sp, #0x3c]
006dbcf0  b7 fe ff eb                                      bl #0x6db7d4
006dbcf4  30 10 9d e5                                      ldr r1, [sp, #0x30]
006dbcf8  18 37 9f e5                                      ldr r3, [pc, #0x718]
006dbcfc  28 20 9d e5                                      ldr r2, [sp, #0x28]
006dbd00  08 10 41 e2                                      sub r1, r1, #8
006dbd04  03 30 8f e0                                      add r3, pc, r3
006dbd08  01 00 52 e1                                      cmp r2, r1
006dbd0c  74 50 8d e5                                      str r5, [sp, #0x74]
006dbd10  70 30 8d e5                                      str r3, [sp, #0x70]
006dbd14  b5 01 00 0a                                      beq #0x6dc3f0
006dbd18  00 30 82 e5                                      str r3, [r2]
006dbd1c  74 30 9d e5                                      ldr r3, [sp, #0x74]
006dbd20  04 30 82 e5                                      str r3, [r2, #4]
006dbd24  28 30 9d e5                                      ldr r3, [sp, #0x28]
006dbd28  08 30 83 e2                                      add r3, r3, #8
006dbd2c  28 30 8d e5                                      str r3, [sp, #0x28]
006dbd30  40 70 8d e2                                      add r7, sp, #0x40
006dbd34  08 10 a0 e1                                      mov r1, r8
006dbd38  07 00 a0 e1                                      mov r0, r7
006dbd3c  cf fe ff eb                                      bl #0x6db880
006dbd40  18 30 9d e5                                      ldr r3, [sp, #0x18]
006dbd44  20 20 9d e5                                      ldr r2, [sp, #0x20]
006dbd48  28 10 9d e5                                      ldr r1, [sp, #0x28]
006dbd4c  24 00 9d e5                                      ldr r0, [sp, #0x24]
006dbd50  03 00 51 e1                                      cmp r1, r3
006dbd54  0a 00 00 0a                                      beq #0x6dbd84
006dbd58  08 30 83 e2                                      add r3, r3, #8
006dbd5c  02 00 53 e1                                      cmp r3, r2
006dbd60  04 00 00 0a                                      beq #0x6dbd78
006dbd64  03 00 51 e1                                      cmp r1, r3
006dbd68  08 30 83 e2                                      add r3, r3, #8
006dbd6c  04 00 00 0a                                      beq #0x6dbd84
006dbd70  03 00 52 e1                                      cmp r2, r3
006dbd74  fa ff ff 1a                                      bne #0x6dbd64
006dbd78  04 30 b0 e5                                      ldr r3, [r0, #4]!
006dbd7c  80 20 83 e2                                      add r2, r3, #0x80
006dbd80  f2 ff ff ea                                      b #0x6dbd50
006dbd84  08 00 a0 e1                                      mov r0, r8
006dbd88  58 fe ff eb                                      bl #0x6db6f0
006dbd8c  88 36 9f e5                                      ldr r3, [pc, #0x688]
006dbd90  00 50 a0 e3                                      mov r5, #0
006dbd94  07 00 a0 e1                                      mov r0, r7
006dbd98  03 30 8f e0                                      add r3, pc, r3
006dbd9c  76 1f 8d e2                                      add r1, sp, #0x1d8
006dbda0  d8 31 8d e5                                      str r3, [sp, #0x1d8]
006dbda4  dc 51 8d e5                                      str r5, [sp, #0x1dc]
006dbda8  56 ff ff eb                                      bl #0x6dbb08
006dbdac  6c 36 9f e5                                      ldr r3, [pc, #0x66c]
006dbdb0  07 00 a0 e1                                      mov r0, r7
006dbdb4  1d 1e 8d e2                                      add r1, sp, #0x1d0
006dbdb8  03 30 8f e0                                      add r3, pc, r3
006dbdbc  d0 31 8d e5                                      str r3, [sp, #0x1d0]
006dbdc0  d4 51 8d e5                                      str r5, [sp, #0x1d4]
006dbdc4  4f ff ff eb                                      bl #0x6dbb08
006dbdc8  54 36 9f e5                                      ldr r3, [pc, #0x654]
006dbdcc  07 00 a0 e1                                      mov r0, r7
006dbdd0  72 1f 8d e2                                      add r1, sp, #0x1c8
006dbdd4  03 30 8f e0                                      add r3, pc, r3
006dbdd8  c8 31 8d e5                                      str r3, [sp, #0x1c8]
006dbddc  cc 51 8d e5                                      str r5, [sp, #0x1cc]
006dbde0  48 ff ff eb                                      bl #0x6dbb08
006dbde4  3c 36 9f e5                                      ldr r3, [pc, #0x63c]
006dbde8  11 80 a0 e3                                      mov r8, #0x11
006dbdec  07 00 a0 e1                                      mov r0, r7
006dbdf0  03 30 8f e0                                      add r3, pc, r3
006dbdf4  07 1d 8d e2                                      add r1, sp, #0x1c0
006dbdf8  c0 31 8d e5                                      str r3, [sp, #0x1c0]
006dbdfc  c4 81 8d e5                                      str r8, [sp, #0x1c4]
006dbe00  40 ff ff eb                                      bl #0x6dbb08
006dbe04  20 36 9f e5                                      ldr r3, [pc, #0x620]
006dbe08  07 00 a0 e1                                      mov r0, r7
006dbe0c  6e 1f 8d e2                                      add r1, sp, #0x1b8
006dbe10  03 30 8f e0                                      add r3, pc, r3
006dbe14  b8 31 8d e5                                      str r3, [sp, #0x1b8]
006dbe18  bc 81 8d e5                                      str r8, [sp, #0x1bc]
006dbe1c  39 ff ff eb                                      bl #0x6dbb08
006dbe20  08 36 9f e5                                      ldr r3, [pc, #0x608]
006dbe24  14 80 a0 e3                                      mov r8, #0x14
006dbe28  07 00 a0 e1                                      mov r0, r7
006dbe2c  03 30 8f e0                                      add r3, pc, r3
006dbe30  1b 1e 8d e2                                      add r1, sp, #0x1b0
006dbe34  b0 31 8d e5                                      str r3, [sp, #0x1b0]
006dbe38  b4 81 8d e5                                      str r8, [sp, #0x1b4]
006dbe3c  31 ff ff eb                                      bl #0x6dbb08
006dbe40  ec 35 9f e5                                      ldr r3, [pc, #0x5ec]
006dbe44  07 00 a0 e1                                      mov r0, r7
006dbe48  6a 1f 8d e2                                      add r1, sp, #0x1a8
006dbe4c  03 30 8f e0                                      add r3, pc, r3
006dbe50  a8 31 8d e5                                      str r3, [sp, #0x1a8]
006dbe54  ac 81 8d e5                                      str r8, [sp, #0x1ac]
006dbe58  2a ff ff eb                                      bl #0x6dbb08
006dbe5c  d4 35 9f e5                                      ldr r3, [pc, #0x5d4]
006dbe60  07 00 a0 e1                                      mov r0, r7
006dbe64  1a 1e 8d e2                                      add r1, sp, #0x1a0
006dbe68  03 30 8f e0                                      add r3, pc, r3
006dbe6c  a0 31 8d e5                                      str r3, [sp, #0x1a0]
006dbe70  a4 81 8d e5                                      str r8, [sp, #0x1a4]
006dbe74  23 ff ff eb                                      bl #0x6dbb08
006dbe78  bc 35 9f e5                                      ldr r3, [pc, #0x5bc]
006dbe7c  07 00 a0 e1                                      mov r0, r7
006dbe80  66 1f 8d e2                                      add r1, sp, #0x198
006dbe84  03 30 8f e0                                      add r3, pc, r3
006dbe88  98 31 8d e5                                      str r3, [sp, #0x198]
006dbe8c  15 30 a0 e3                                      mov r3, #0x15
006dbe90  9c 31 8d e5                                      str r3, [sp, #0x19c]
006dbe94  1b ff ff eb                                      bl #0x6dbb08
006dbe98  a0 35 9f e5                                      ldr r3, [pc, #0x5a0]
006dbe9c  07 00 a0 e1                                      mov r0, r7
006dbea0  19 1e 8d e2                                      add r1, sp, #0x190
006dbea4  03 30 8f e0                                      add r3, pc, r3
006dbea8  90 31 8d e5                                      str r3, [sp, #0x190]
006dbeac  16 30 a0 e3                                      mov r3, #0x16
006dbeb0  94 31 8d e5                                      str r3, [sp, #0x194]
006dbeb4  13 ff ff eb                                      bl #0x6dbb08
006dbeb8  84 35 9f e5                                      ldr r3, [pc, #0x584]
006dbebc  07 00 a0 e1                                      mov r0, r7
006dbec0  62 1f 8d e2                                      add r1, sp, #0x188
006dbec4  03 30 8f e0                                      add r3, pc, r3
006dbec8  88 31 8d e5                                      str r3, [sp, #0x188]
006dbecc  17 30 a0 e3                                      mov r3, #0x17
006dbed0  8c 31 8d e5                                      str r3, [sp, #0x18c]
006dbed4  0b ff ff eb                                      bl #0x6dbb08
006dbed8  68 35 9f e5                                      ldr r3, [pc, #0x568]
006dbedc  18 80 a0 e3                                      mov r8, #0x18
006dbee0  07 00 a0 e1                                      mov r0, r7
006dbee4  03 30 8f e0                                      add r3, pc, r3
006dbee8  06 1d 8d e2                                      add r1, sp, #0x180
006dbeec  80 31 8d e5                                      str r3, [sp, #0x180]
006dbef0  84 81 8d e5                                      str r8, [sp, #0x184]
006dbef4  03 ff ff eb                                      bl #0x6dbb08
006dbef8  4c 35 9f e5                                      ldr r3, [pc, #0x54c]
006dbefc  07 00 a0 e1                                      mov r0, r7
006dbf00  5e 1f 8d e2                                      add r1, sp, #0x178
006dbf04  03 30 8f e0                                      add r3, pc, r3
006dbf08  78 31 8d e5                                      str r3, [sp, #0x178]
006dbf0c  7c 81 8d e5                                      str r8, [sp, #0x17c]
006dbf10  fc fe ff eb                                      bl #0x6dbb08
006dbf14  34 35 9f e5                                      ldr r3, [pc, #0x534]
006dbf18  07 00 a0 e1                                      mov r0, r7
006dbf1c  17 1e 8d e2                                      add r1, sp, #0x170
006dbf20  03 30 8f e0                                      add r3, pc, r3
006dbf24  70 31 8d e5                                      str r3, [sp, #0x170]
006dbf28  74 81 8d e5                                      str r8, [sp, #0x174]
006dbf2c  f5 fe ff eb                                      bl #0x6dbb08
006dbf30  1c 35 9f e5                                      ldr r3, [pc, #0x51c]
006dbf34  07 00 a0 e1                                      mov r0, r7
006dbf38  5a 1f 8d e2                                      add r1, sp, #0x168
006dbf3c  03 30 8f e0                                      add r3, pc, r3
006dbf40  68 31 8d e5                                      str r3, [sp, #0x168]
006dbf44  19 30 a0 e3                                      mov r3, #0x19
006dbf48  6c 31 8d e5                                      str r3, [sp, #0x16c]
006dbf4c  ed fe ff eb                                      bl #0x6dbb08
006dbf50  00 35 9f e5                                      ldr r3, [pc, #0x500]
006dbf54  07 00 a0 e1                                      mov r0, r7
006dbf58  16 1e 8d e2                                      add r1, sp, #0x160
006dbf5c  03 30 8f e0                                      add r3, pc, r3
006dbf60  60 31 8d e5                                      str r3, [sp, #0x160]
006dbf64  1a 30 a0 e3                                      mov r3, #0x1a
006dbf68  64 31 8d e5                                      str r3, [sp, #0x164]
006dbf6c  e5 fe ff eb                                      bl #0x6dbb08
006dbf70  e4 34 9f e5                                      ldr r3, [pc, #0x4e4]
006dbf74  07 00 a0 e1                                      mov r0, r7
006dbf78  56 1f 8d e2                                      add r1, sp, #0x158
006dbf7c  03 30 8f e0                                      add r3, pc, r3
006dbf80  58 31 8d e5                                      str r3, [sp, #0x158]
006dbf84  1b 30 a0 e3                                      mov r3, #0x1b
006dbf88  5c 31 8d e5                                      str r3, [sp, #0x15c]
006dbf8c  dd fe ff eb                                      bl #0x6dbb08
006dbf90  c8 34 9f e5                                      ldr r3, [pc, #0x4c8]
006dbf94  12 80 a0 e3                                      mov r8, #0x12
006dbf98  07 00 a0 e1                                      mov r0, r7
006dbf9c  03 30 8f e0                                      add r3, pc, r3
006dbfa0  15 1e 8d e2                                      add r1, sp, #0x150
006dbfa4  50 31 8d e5                                      str r3, [sp, #0x150]
006dbfa8  54 81 8d e5                                      str r8, [sp, #0x154]
006dbfac  d5 fe ff eb                                      bl #0x6dbb08
006dbfb0  ac 34 9f e5                                      ldr r3, [pc, #0x4ac]
006dbfb4  07 00 a0 e1                                      mov r0, r7
006dbfb8  52 1f 8d e2                                      add r1, sp, #0x148
006dbfbc  03 30 8f e0                                      add r3, pc, r3
006dbfc0  48 31 8d e5                                      str r3, [sp, #0x148]
006dbfc4  4c 81 8d e5                                      str r8, [sp, #0x14c]
006dbfc8  ce fe ff eb                                      bl #0x6dbb08
006dbfcc  94 34 9f e5                                      ldr r3, [pc, #0x494]
006dbfd0  07 00 a0 e1                                      mov r0, r7
006dbfd4  05 1d 8d e2                                      add r1, sp, #0x140
006dbfd8  03 30 8f e0                                      add r3, pc, r3
006dbfdc  40 31 8d e5                                      str r3, [sp, #0x140]
006dbfe0  44 81 8d e5                                      str r8, [sp, #0x144]
006dbfe4  c7 fe ff eb                                      bl #0x6dbb08
006dbfe8  7c 34 9f e5                                      ldr r3, [pc, #0x47c]
006dbfec  13 80 a0 e3                                      mov r8, #0x13
006dbff0  07 00 a0 e1                                      mov r0, r7
006dbff4  03 30 8f e0                                      add r3, pc, r3
006dbff8  4e 1f 8d e2                                      add r1, sp, #0x138
006dbffc  38 31 8d e5                                      str r3, [sp, #0x138]
006dc000  3c 81 8d e5                                      str r8, [sp, #0x13c]
006dc004  bf fe ff eb                                      bl #0x6dbb08
006dc008  60 34 9f e5                                      ldr r3, [pc, #0x460]
006dc00c  07 00 a0 e1                                      mov r0, r7
006dc010  13 1e 8d e2                                      add r1, sp, #0x130
006dc014  03 30 8f e0                                      add r3, pc, r3
006dc018  30 31 8d e5                                      str r3, [sp, #0x130]
006dc01c  34 81 8d e5                                      str r8, [sp, #0x134]
006dc020  b8 fe ff eb                                      bl #0x6dbb08
006dc024  48 34 9f e5                                      ldr r3, [pc, #0x448]
006dc028  07 00 a0 e1                                      mov r0, r7
006dc02c  4a 1f 8d e2                                      add r1, sp, #0x128
006dc030  03 30 8f e0                                      add r3, pc, r3
006dc034  28 31 8d e5                                      str r3, [sp, #0x128]
006dc038  2c 81 8d e5                                      str r8, [sp, #0x12c]
006dc03c  b1 fe ff eb                                      bl #0x6dbb08
006dc040  30 34 9f e5                                      ldr r3, [pc, #0x430]
006dc044  01 80 a0 e3                                      mov r8, #1
006dc048  07 00 a0 e1                                      mov r0, r7
006dc04c  03 30 8f e0                                      add r3, pc, r3
006dc050  12 1e 8d e2                                      add r1, sp, #0x120
006dc054  20 31 8d e5                                      str r3, [sp, #0x120]
006dc058  24 81 8d e5                                      str r8, [sp, #0x124]
006dc05c  a9 fe ff eb                                      bl #0x6dbb08
006dc060  14 34 9f e5                                      ldr r3, [pc, #0x414]
006dc064  07 00 a0 e1                                      mov r0, r7
006dc068  46 1f 8d e2                                      add r1, sp, #0x118
006dc06c  03 30 8f e0                                      add r3, pc, r3
006dc070  18 31 8d e5                                      str r3, [sp, #0x118]
006dc074  1c 81 8d e5                                      str r8, [sp, #0x11c]
006dc078  a2 fe ff eb                                      bl #0x6dbb08
006dc07c  fc 33 9f e5                                      ldr r3, [pc, #0x3fc]
006dc080  02 b0 a0 e3                                      mov fp, #2
006dc084  07 00 a0 e1                                      mov r0, r7
006dc088  03 30 8f e0                                      add r3, pc, r3
006dc08c  11 1e 8d e2                                      add r1, sp, #0x110
006dc090  10 31 8d e5                                      str r3, [sp, #0x110]
006dc094  14 b1 8d e5                                      str fp, [sp, #0x114]
006dc098  9a fe ff eb                                      bl #0x6dbb08
006dc09c  e0 33 9f e5                                      ldr r3, [pc, #0x3e0]
006dc0a0  03 90 a0 e3                                      mov sb, #3
006dc0a4  07 00 a0 e1                                      mov r0, r7
006dc0a8  03 30 8f e0                                      add r3, pc, r3
006dc0ac  42 1f 8d e2                                      add r1, sp, #0x108
006dc0b0  08 31 8d e5                                      str r3, [sp, #0x108]
006dc0b4  0c 91 8d e5                                      str sb, [sp, #0x10c]
006dc0b8  92 fe ff eb                                      bl #0x6dbb08
006dc0bc  c4 33 9f e5                                      ldr r3, [pc, #0x3c4]
006dc0c0  04 a0 a0 e3                                      mov sl, #4
006dc0c4  07 00 a0 e1                                      mov r0, r7
006dc0c8  03 30 8f e0                                      add r3, pc, r3
006dc0cc  01 1c 8d e2                                      add r1, sp, #0x100
006dc0d0  00 31 8d e5                                      str r3, [sp, #0x100]
006dc0d4  04 a1 8d e5                                      str sl, [sp, #0x104]
006dc0d8  8a fe ff eb                                      bl #0x6dbb08
006dc0dc  a8 23 9f e5                                      ldr r2, [pc, #0x3a8]
006dc0e0  05 30 a0 e3                                      mov r3, #5
006dc0e4  07 00 a0 e1                                      mov r0, r7
006dc0e8  02 20 8f e0                                      add r2, pc, r2
006dc0ec  f8 10 8d e2                                      add r1, sp, #0xf8
006dc0f0  fc 30 8d e5                                      str r3, [sp, #0xfc]
006dc0f4  04 30 8d e5                                      str r3, [sp, #4]
006dc0f8  f8 20 8d e5                                      str r2, [sp, #0xf8]
006dc0fc  81 fe ff eb                                      bl #0x6dbb08
006dc100  88 23 9f e5                                      ldr r2, [pc, #0x388]
006dc104  07 00 a0 e1                                      mov r0, r7
006dc108  f0 10 8d e2                                      add r1, sp, #0xf0
006dc10c  02 20 8f e0                                      add r2, pc, r2
006dc110  f0 20 8d e5                                      str r2, [sp, #0xf0]
006dc114  06 20 a0 e3                                      mov r2, #6
006dc118  f4 20 8d e5                                      str r2, [sp, #0xf4]
006dc11c  79 fe ff eb                                      bl #0x6dbb08
006dc120  6c 23 9f e5                                      ldr r2, [pc, #0x36c]
006dc124  07 c0 a0 e3                                      mov ip, #7
006dc128  07 00 a0 e1                                      mov r0, r7
006dc12c  02 20 8f e0                                      add r2, pc, r2
006dc130  e8 10 8d e2                                      add r1, sp, #0xe8
006dc134  ec c0 8d e5                                      str ip, [sp, #0xec]
006dc138  00 c0 8d e5                                      str ip, [sp]
006dc13c  e8 20 8d e5                                      str r2, [sp, #0xe8]
006dc140  70 fe ff eb                                      bl #0x6dbb08
006dc144  4c 23 9f e5                                      ldr r2, [pc, #0x34c]
006dc148  07 00 a0 e1                                      mov r0, r7
006dc14c  e0 10 8d e2                                      add r1, sp, #0xe0
006dc150  02 20 8f e0                                      add r2, pc, r2
006dc154  e0 20 8d e5                                      str r2, [sp, #0xe0]
006dc158  08 20 a0 e3                                      mov r2, #8
006dc15c  e4 20 8d e5                                      str r2, [sp, #0xe4]
006dc160  68 fe ff eb                                      bl #0x6dbb08
006dc164  30 23 9f e5                                      ldr r2, [pc, #0x330]
006dc168  07 00 a0 e1                                      mov r0, r7
006dc16c  d8 10 8d e2                                      add r1, sp, #0xd8
006dc170  02 20 8f e0                                      add r2, pc, r2
006dc174  d8 20 8d e5                                      str r2, [sp, #0xd8]
006dc178  dc 80 8d e5                                      str r8, [sp, #0xdc]
006dc17c  61 fe ff eb                                      bl #0x6dbb08
006dc180  18 23 9f e5                                      ldr r2, [pc, #0x318]
006dc184  07 00 a0 e1                                      mov r0, r7
006dc188  d0 10 8d e2                                      add r1, sp, #0xd0
006dc18c  02 20 8f e0                                      add r2, pc, r2
006dc190  d0 20 8d e5                                      str r2, [sp, #0xd0]
006dc194  d4 80 8d e5                                      str r8, [sp, #0xd4]
006dc198  5a fe ff eb                                      bl #0x6dbb08
006dc19c  00 23 9f e5                                      ldr r2, [pc, #0x300]
006dc1a0  07 00 a0 e1                                      mov r0, r7
006dc1a4  c8 10 8d e2                                      add r1, sp, #0xc8
006dc1a8  02 20 8f e0                                      add r2, pc, r2
006dc1ac  c8 20 8d e5                                      str r2, [sp, #0xc8]
006dc1b0  cc b0 8d e5                                      str fp, [sp, #0xcc]
006dc1b4  53 fe ff eb                                      bl #0x6dbb08
006dc1b8  e8 22 9f e5                                      ldr r2, [pc, #0x2e8]
006dc1bc  07 00 a0 e1                                      mov r0, r7
006dc1c0  c0 10 8d e2                                      add r1, sp, #0xc0
006dc1c4  02 20 8f e0                                      add r2, pc, r2
006dc1c8  c0 20 8d e5                                      str r2, [sp, #0xc0]
006dc1cc  c4 90 8d e5                                      str sb, [sp, #0xc4]
006dc1d0  4c fe ff eb                                      bl #0x6dbb08
006dc1d4  d0 22 9f e5                                      ldr r2, [pc, #0x2d0]
006dc1d8  07 00 a0 e1                                      mov r0, r7
006dc1dc  b8 10 8d e2                                      add r1, sp, #0xb8
006dc1e0  02 20 8f e0                                      add r2, pc, r2
006dc1e4  b8 20 8d e5                                      str r2, [sp, #0xb8]
006dc1e8  bc a0 8d e5                                      str sl, [sp, #0xbc]
006dc1ec  45 fe ff eb                                      bl #0x6dbb08
006dc1f0  b8 22 9f e5                                      ldr r2, [pc, #0x2b8]
006dc1f4  04 30 9d e5                                      ldr r3, [sp, #4]
006dc1f8  07 00 a0 e1                                      mov r0, r7
006dc1fc  02 20 8f e0                                      add r2, pc, r2
006dc200  b0 10 8d e2                                      add r1, sp, #0xb0
006dc204  b0 20 8d e5                                      str r2, [sp, #0xb0]
006dc208  b4 30 8d e5                                      str r3, [sp, #0xb4]
006dc20c  3d fe ff eb                                      bl #0x6dbb08
006dc210  9c 32 9f e5                                      ldr r3, [pc, #0x29c]
006dc214  07 00 a0 e1                                      mov r0, r7
006dc218  a8 10 8d e2                                      add r1, sp, #0xa8
006dc21c  03 30 8f e0                                      add r3, pc, r3
006dc220  a8 30 8d e5                                      str r3, [sp, #0xa8]
006dc224  06 30 a0 e3                                      mov r3, #6
006dc228  ac 30 8d e5                                      str r3, [sp, #0xac]
006dc22c  35 fe ff eb                                      bl #0x6dbb08
006dc230  80 32 9f e5                                      ldr r3, [pc, #0x280]
006dc234  00 c0 9d e5                                      ldr ip, [sp]
006dc238  07 00 a0 e1                                      mov r0, r7
006dc23c  03 30 8f e0                                      add r3, pc, r3
006dc240  a0 10 8d e2                                      add r1, sp, #0xa0
006dc244  a4 c0 8d e5                                      str ip, [sp, #0xa4]
006dc248  a0 30 8d e5                                      str r3, [sp, #0xa0]
006dc24c  2d fe ff eb                                      bl #0x6dbb08
006dc250  64 32 9f e5                                      ldr r3, [pc, #0x264]
006dc254  08 20 a0 e3                                      mov r2, #8
006dc258  07 00 a0 e1                                      mov r0, r7
006dc25c  03 30 8f e0                                      add r3, pc, r3
006dc260  98 10 8d e2                                      add r1, sp, #0x98
006dc264  9c 20 8d e5                                      str r2, [sp, #0x9c]
006dc268  98 30 8d e5                                      str r3, [sp, #0x98]
006dc26c  25 fe ff eb                                      bl #0x6dbb08
006dc270  48 32 9f e5                                      ldr r3, [pc, #0x248]
006dc274  1c 80 a0 e3                                      mov r8, #0x1c
006dc278  07 00 a0 e1                                      mov r0, r7
006dc27c  03 30 8f e0                                      add r3, pc, r3
006dc280  90 10 8d e2                                      add r1, sp, #0x90
006dc284  90 30 8d e5                                      str r3, [sp, #0x90]
006dc288  94 80 8d e5                                      str r8, [sp, #0x94]
006dc28c  1d fe ff eb                                      bl #0x6dbb08
006dc290  2c 32 9f e5                                      ldr r3, [pc, #0x22c]
006dc294  07 00 a0 e1                                      mov r0, r7
006dc298  88 10 8d e2                                      add r1, sp, #0x88
006dc29c  03 30 8f e0                                      add r3, pc, r3
006dc2a0  88 30 8d e5                                      str r3, [sp, #0x88]
006dc2a4  8c 80 8d e5                                      str r8, [sp, #0x8c]
006dc2a8  16 fe ff eb                                      bl #0x6dbb08
006dc2ac  14 32 9f e5                                      ldr r3, [pc, #0x214]
006dc2b0  1d 80 a0 e3                                      mov r8, #0x1d
006dc2b4  07 00 a0 e1                                      mov r0, r7
006dc2b8  03 30 8f e0                                      add r3, pc, r3
006dc2bc  80 10 8d e2                                      add r1, sp, #0x80
006dc2c0  80 30 8d e5                                      str r3, [sp, #0x80]
006dc2c4  84 80 8d e5                                      str r8, [sp, #0x84]
006dc2c8  0e fe ff eb                                      bl #0x6dbb08
006dc2cc  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
006dc2d0  07 00 a0 e1                                      mov r0, r7
006dc2d4  78 10 8d e2                                      add r1, sp, #0x78
006dc2d8  03 30 8f e0                                      add r3, pc, r3
006dc2dc  78 30 8d e5                                      str r3, [sp, #0x78]
006dc2e0  7c 80 8d e5                                      str r8, [sp, #0x7c]
006dc2e4  07 fe ff eb                                      bl #0x6dbb08
006dc2e8  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
006dc2ec  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006dc2f0  dc a1 9f e5                                      ldr sl, [pc, #0x1dc]
006dc2f4  03 30 8f e0                                      add r3, pc, r3
006dc2f8  0c 20 8d e5                                      str r2, [sp, #0xc]
006dc2fc  03 20 a0 e1                                      mov r2, r3
006dc300  10 50 e2 e5                                      strb r5, [r2, #0x10]!
006dc304  20 50 83 e5                                      str r5, [r3, #0x20]
006dc308  14 50 83 e5                                      str r5, [r3, #0x14]
006dc30c  0a a0 8f e0                                      add sl, pc, sl
006dc310  1c 20 83 e5                                      str r2, [r3, #0x1c]
006dc314  18 20 83 e5                                      str r2, [r3, #0x18]
006dc318  68 30 8d e2                                      add r3, sp, #0x68
006dc31c  10 a0 8a e2                                      add sl, sl, #0x10
006dc320  48 80 9d e5                                      ldr r8, [sp, #0x48]
006dc324  40 50 9d e5                                      ldr r5, [sp, #0x40]
006dc328  50 90 9d e5                                      ldr sb, [sp, #0x50]
006dc32c  10 b0 8d e2                                      add fp, sp, #0x10
006dc330  08 30 8d e5                                      str r3, [sp, #8]
006dc334  0a 00 00 ea                                      b #0x6dc364
006dc338  00 30 95 e5                                      ldr r3, [r5]
006dc33c  68 30 8d e5                                      str r3, [sp, #0x68]
006dc340  04 30 95 e5                                      ldr r3, [r5, #4]
006dc344  08 50 85 e2                                      add r5, r5, #8
006dc348  6c 30 8d e5                                      str r3, [sp, #0x6c]
006dc34c  71 fc ff eb                                      bl #0x6db518
006dc350  08 00 55 e1                                      cmp r5, r8
006dc354  0c 20 9d 05                                      ldreq r2, [sp, #0xc]
006dc358  04 50 b2 05                                      ldreq r5, [r2, #4]!
006dc35c  0c 20 8d 05                                      streq r2, [sp, #0xc]
006dc360  80 80 85 02                                      addeq r8, r5, #0x80
006dc364  05 00 59 e1                                      cmp sb, r5
006dc368  0b 00 a0 e1                                      mov r0, fp
006dc36c  0a 10 a0 e1                                      mov r1, sl
006dc370  08 20 9d e5                                      ldr r2, [sp, #8]
006dc374  ef ff ff 1a                                      bne #0x6dc338
006dc378  58 51 9f e5                                      ldr r5, [pc, #0x158]
006dc37c  05 50 8f e0                                      add r5, pc, r5
006dc380  0c 00 85 e2                                      add r0, r5, #0xc
006dc384  ac c9 f0 eb                                      bl #0x30ea3c
006dc388  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
006dc38c  10 00 85 e2                                      add r0, r5, #0x10
006dc390  03 10 96 e7                                      ldr r1, [r6, r3]
006dc394  44 31 9f e5                                      ldr r3, [pc, #0x144]
006dc398  03 20 96 e7                                      ldr r2, [r6, r3]
006dc39c  d8 c7 f0 eb                                      bl #0x30e304
006dc3a0  40 30 9d e5                                      ldr r3, [sp, #0x40]
006dc3a4  48 20 9d e5                                      ldr r2, [sp, #0x48]
006dc3a8  50 10 9d e5                                      ldr r1, [sp, #0x50]
006dc3ac  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006dc3b0  03 00 51 e1                                      cmp r1, r3
006dc3b4  0a 00 00 0a                                      beq #0x6dc3e4
006dc3b8  08 30 83 e2                                      add r3, r3, #8
006dc3bc  02 00 53 e1                                      cmp r3, r2
006dc3c0  04 00 00 0a                                      beq #0x6dc3d8
006dc3c4  03 00 51 e1                                      cmp r1, r3
006dc3c8  08 30 83 e2                                      add r3, r3, #8
006dc3cc  04 00 00 0a                                      beq #0x6dc3e4
006dc3d0  03 00 52 e1                                      cmp r2, r3
006dc3d4  fa ff ff 1a                                      bne #0x6dc3c4
006dc3d8  04 30 b0 e5                                      ldr r3, [r0, #4]!
006dc3dc  80 20 83 e2                                      add r2, r3, #0x80
006dc3e0  f2 ff ff ea                                      b #0x6dc3b0
006dc3e4  07 00 a0 e1                                      mov r0, r7
006dc3e8  c0 fc ff eb                                      bl #0x6db6f0
006dc3ec  e1 fd ff ea                                      b #0x6dbb78
006dc3f0  08 00 a0 e1                                      mov r0, r8
006dc3f4  70 10 8d e2                                      add r1, sp, #0x70
006dc3f8  5f fd ff eb                                      bl #0x6db97c
006dc3fc  4b fe ff ea                                      b #0x6dbd30
; mapping-symbol data/literal pool
006dc400  14 c7 31 00 28 8f 2b 00 e0 36 00 00 74 c6 31 00  .byte 0x14, 0xc7, 0x31, 0x00, 0x28, 0x8f, 0x2b, 0x00, 0xe0, 0x36, 0x00, 0x00, 0x74, 0xc6, 0x31, 0x00
006dc410  28 c6 31 00 00 c6 31 00 34 fb 20 00 a8 fa 20 00  .byte 0x28, 0xc6, 0x31, 0x00, 0x00, 0xc6, 0x31, 0x00, 0x34, 0xfb, 0x20, 0x00, 0xa8, 0xfa, 0x20, 0x00
006dc420  70 64 1e 00 74 fa 20 00 88 13 20 00 48 fa 20 00  .byte 0x70, 0x64, 0x1e, 0x00, 0x74, 0xfa, 0x20, 0x00, 0x88, 0x13, 0x20, 0x00, 0x48, 0xfa, 0x20, 0x00
006dc430  34 fa 20 00 1c fa 20 00 10 fa 20 00 04 fa 20 00  .byte 0x34, 0xfa, 0x20, 0x00, 0x1c, 0xfa, 0x20, 0x00, 0x10, 0xfa, 0x20, 0x00, 0x04, 0xfa, 0x20, 0x00
006dc440  f4 f9 20 00 e4 f9 20 00 d4 f9 20 00 c4 f9 20 00  .byte 0xf4, 0xf9, 0x20, 0x00, 0xe4, 0xf9, 0x20, 0x00, 0xd4, 0xf9, 0x20, 0x00, 0xc4, 0xf9, 0x20, 0x00
006dc450  b8 f9 20 00 ac f9 20 00 9c f9 20 00 8c f9 20 00  .byte 0xb8, 0xf9, 0x20, 0x00, 0xac, 0xf9, 0x20, 0x00, 0x9c, 0xf9, 0x20, 0x00, 0x8c, 0xf9, 0x20, 0x00
006dc460  7c f9 20 00 a4 6b 20 00 48 f9 20 00 34 f9 20 00  .byte 0x7c, 0xf9, 0x20, 0x00, 0xa4, 0x6b, 0x20, 0x00, 0x48, 0xf9, 0x20, 0x00, 0x34, 0xf9, 0x20, 0x00
006dc470  1c f9 20 00 10 f9 20 00 04 f9 20 00 ec f8 20 00  .byte 0x1c, 0xf9, 0x20, 0x00, 0x10, 0xf9, 0x20, 0x00, 0x04, 0xf9, 0x20, 0x00, 0xec, 0xf8, 0x20, 0x00
006dc480  d8 f8 20 00 c0 f8 20 00 a8 f8 20 00 90 f8 20 00  .byte 0xd8, 0xf8, 0x20, 0x00, 0xc0, 0xf8, 0x20, 0x00, 0xa8, 0xf8, 0x20, 0x00, 0x90, 0xf8, 0x20, 0x00
006dc490  74 f8 20 00 5c f8 20 00 40 f8 20 00 28 f8 20 00  .byte 0x74, 0xf8, 0x20, 0x00, 0x5c, 0xf8, 0x20, 0x00, 0x40, 0xf8, 0x20, 0x00, 0x28, 0xf8, 0x20, 0x00
006dc4a0  1c f8 20 00 10 f8 20 00 04 f8 20 00 f8 f7 20 00  .byte 0x1c, 0xf8, 0x20, 0x00, 0x10, 0xf8, 0x20, 0x00, 0x04, 0xf8, 0x20, 0x00, 0xf8, 0xf7, 0x20, 0x00
006dc4b0  ec f7 20 00 dc f7 20 00 cc f7 20 00 bc f7 20 00  .byte 0xec, 0xf7, 0x20, 0x00, 0xdc, 0xf7, 0x20, 0x00, 0xcc, 0xf7, 0x20, 0x00, 0xbc, 0xf7, 0x20, 0x00
006dc4c0  ac f7 20 00 9c f7 20 00 90 f7 20 00 80 f7 20 00  .byte 0xac, 0xf7, 0x20, 0x00, 0x9c, 0xf7, 0x20, 0x00, 0x90, 0xf7, 0x20, 0x00, 0x80, 0xf7, 0x20, 0x00
006dc4d0  80 bf 31 00 68 bf 31 00 f8 be 31 00 3c 11 00 00  .byte 0x80, 0xbf, 0x31, 0x00, 0x68, 0xbf, 0x31, 0x00, 0xf8, 0xbe, 0x31, 0x00, 0x3c, 0x11, 0x00, 0x00
006dc4e0  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x006de848, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video18getStringsInternalEPNS0_14E_GL_EXTENSIONE
; demangled: glitch::video::getStringsInternal(glitch::video::E_GL_EXTENSION*)
; decoder-mode: arm
006de848  04 00 9f e5                                      ldr r0, [pc, #4]
006de84c  00 00 8f e0                                      add r0, pc, r0
006de850  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006de854  b8 93 27 00                                      .byte 0xb8, 0x93, 0x27, 0x00

; FUNCTION 0x007d4f34, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video
; alias: _ZN6glitch5video12setColorMaskERKN5boost13intrusive_ptrINS0_9CMaterialEEEbbbb.clone.4
; demangled: glitch::video::setColorMask(boost::intrusive_ptr<glitch::video::CMaterial> const&, bool, bool, bool, bool) [clone .clone.4]
; decoder-mode: arm
007d4f34  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007d4f38  00 40 a0 e1                                      mov r4, r0
007d4f3c  0c d0 4d e2                                      sub sp, sp, #0xc
007d4f40  00 00 90 e5                                      ldr r0, [r0]
007d4f44  03 50 a0 e1                                      mov r5, r3
007d4f48  01 70 a0 e1                                      mov r7, r1
007d4f4c  02 60 a0 e1                                      mov r6, r2
007d4f50  77 c3 f7 eb                                      bl #0x5c5d34
007d4f54  00 30 94 e5                                      ldr r3, [r4]
007d4f58  01 e0 a0 e3                                      mov lr, #1
007d4f5c  07 10 a0 e1                                      mov r1, r7
007d4f60  04 00 93 e5                                      ldr r0, [r3, #4]
007d4f64  06 20 a0 e1                                      mov r2, r6
007d4f68  05 30 a0 e1                                      mov r3, r5
007d4f6c  04 c0 90 e5                                      ldr ip, [r0, #4]
007d4f70  0c 00 a0 e1                                      mov r0, ip
007d4f74  00 c0 9c e5                                      ldr ip, [ip]
007d4f78  00 e0 8d e5                                      str lr, [sp]
007d4f7c  0f e0 a0 e1                                      mov lr, pc
007d4f80  d4 f0 9c e5                                      ldr pc, [ip, #0xd4]
007d4f84  0c d0 8d e2                                      add sp, sp, #0xc
007d4f88  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
