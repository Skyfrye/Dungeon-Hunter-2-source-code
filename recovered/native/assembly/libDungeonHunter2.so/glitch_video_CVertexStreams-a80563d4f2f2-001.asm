; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0059aca8, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) [clone .clone.1]
; decoder-mode: arm
0059aca8  70 40 2d e9                                      push {r4, r5, r6, lr}
0059acac  00 30 92 e5                                      ldr r3, [r2]
0059acb0  02 50 a0 e1                                      mov r5, r2
0059acb4  00 60 a0 e1                                      mov r6, r0
0059acb8  00 00 53 e3                                      cmp r3, #0
0059acbc  04 20 93 15                                      ldrne r2, [r3, #4]
0059acc0  01 40 a0 e1                                      mov r4, r1
0059acc4  01 20 82 12                                      addne r2, r2, #1
0059acc8  04 20 83 15                                      strne r2, [r3, #4]
0059accc  00 00 91 e5                                      ldr r0, [r1]
0059acd0  00 30 81 e5                                      str r3, [r1]
0059acd4  00 00 50 e3                                      cmp r0, #0
0059acd8  00 00 00 0a                                      beq #0x59ace0
0059acdc  28 0a f6 eb                                      bl #0x31d584
0059ace0  04 30 95 e5                                      ldr r3, [r5, #4]
0059ace4  06 00 a0 e1                                      mov r0, r6
0059ace8  00 10 a0 e3                                      mov r1, #0
0059acec  04 30 84 e5                                      str r3, [r4, #4]
0059acf0  b8 30 d5 e1                                      ldrh r3, [r5, #8]
0059acf4  ba 30 c4 e1                                      strh r3, [r4, #0xa]
0059acf8  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
0059acfc  bc 30 c4 e1                                      strh r3, [r4, #0xc]
0059ad00  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
0059ad04  be 50 c4 e1                                      strh r5, [r4, #0xe]
0059ad08  70 40 bd e8                                      pop {r4, r5, r6, lr}
0059ad0c  ba 17 00 ea                                      b #0x5a0bfc

; FUNCTION 0x005a09e0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreamsD2Ev
; demangled: glitch::video::CVertexStreams::~CVertexStreams()
; decoder-mode: arm
005a09e0  70 40 2d e9                                      push {r4, r5, r6, lr}
005a09e4  10 50 90 e5                                      ldr r5, [r0, #0x10]
005a09e8  00 60 a0 e1                                      mov r6, r0
005a09ec  14 40 80 e2                                      add r4, r0, #0x14
005a09f0  05 00 54 e1                                      cmp r4, r5
005a09f4  06 00 00 0a                                      beq #0x5a0a14
005a09f8  00 00 94 e5                                      ldr r0, [r4]
005a09fc  10 40 84 e2                                      add r4, r4, #0x10
005a0a00  00 00 50 e3                                      cmp r0, #0
005a0a04  f9 ff ff 0a                                      beq #0x5a09f0
005a0a08  dd f2 f5 eb                                      bl #0x31d584
005a0a0c  05 00 54 e1                                      cmp r4, r5
005a0a10  f8 ff ff 1a                                      bne #0x5a09f8
005a0a14  06 00 a0 e1                                      mov r0, r6
005a0a18  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a0a1c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreamsD1Ev
; demangled: glitch::video::CVertexStreams::~CVertexStreams()
; decoder-mode: arm
005a0a1c  70 40 2d e9                                      push {r4, r5, r6, lr}
005a0a20  10 50 90 e5                                      ldr r5, [r0, #0x10]
005a0a24  00 60 a0 e1                                      mov r6, r0
005a0a28  14 40 80 e2                                      add r4, r0, #0x14
005a0a2c  05 00 54 e1                                      cmp r4, r5
005a0a30  06 00 00 0a                                      beq #0x5a0a50
005a0a34  00 00 94 e5                                      ldr r0, [r4]
005a0a38  10 40 84 e2                                      add r4, r4, #0x10
005a0a3c  00 00 50 e3                                      cmp r0, #0
005a0a40  f9 ff ff 0a                                      beq #0x5a0a2c
005a0a44  ce f2 f5 eb                                      bl #0x31d584
005a0a48  05 00 54 e1                                      cmp r4, r5
005a0a4c  f8 ff ff 1a                                      bne #0x5a0a34
005a0a50  06 00 a0 e1                                      mov r0, r6
005a0a54  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a0a58, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZNK6glitch5video14CVertexStreams22getActiveAttributeMaskEv
; demangled: glitch::video::CVertexStreams::getActiveAttributeMask() const
; decoder-mode: arm
005a0a58  10 20 90 e5                                      ldr r2, [r0, #0x10]
005a0a5c  14 30 80 e2                                      add r3, r0, #0x14
005a0a60  03 00 52 e1                                      cmp r2, r3
005a0a64  00 00 a0 03                                      moveq r0, #0
005a0a68  1e ff 2f 01                                      bxeq lr
005a0a6c  24 10 80 e2                                      add r1, r0, #0x24
005a0a70  02 20 61 e0                                      rsb r2, r1, r2
005a0a74  0f 20 c2 e3                                      bic r2, r2, #0xf
005a0a78  10 10 80 e2                                      add r1, r0, #0x10
005a0a7c  00 30 a0 e1                                      mov r3, r0
005a0a80  02 10 81 e0                                      add r1, r1, r2
005a0a84  00 00 a0 e3                                      mov r0, #0
005a0a88  01 c0 a0 e3                                      mov ip, #1
005a0a8c  14 20 93 e5                                      ldr r2, [r3, #0x14]
005a0a90  00 00 52 e3                                      cmp r2, #0
005a0a94  bc 21 d3 11                                      ldrhne r2, [r3, #0x1c]
005a0a98  10 30 83 e2                                      add r3, r3, #0x10
005a0a9c  1c 02 80 11                                      orrne r0, r0, ip, lsl r2
005a0aa0  01 00 53 e1                                      cmp r3, r1
005a0aa4  f8 ff ff 1a                                      bne #0x5a0a8c
005a0aa8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a0aac, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZNK6glitch5video14CVertexStreams9getStreamENS0_18E_VERTEX_ATTRIBUTEEPKNS0_13SVertexStreamES5_
; demangled: glitch::video::CVertexStreams::getStream(glitch::video::E_VERTEX_ATTRIBUTE, glitch::video::SVertexStream const*, glitch::video::SVertexStream const*) const
; decoder-mode: arm
005a0aac  03 00 52 e1                                      cmp r2, r3
005a0ab0  09 00 00 0a                                      beq #0x5a0adc
005a0ab4  b8 c0 d2 e1                                      ldrh ip, [r2, #8]
005a0ab8  01 00 5c e1                                      cmp ip, r1
005a0abc  03 00 00 ba                                      blt #0x5a0ad0
005a0ac0  0c 00 51 e1                                      cmp r1, ip
005a0ac4  10 20 90 15                                      ldrne r2, [r0, #0x10]
005a0ac8  02 00 a0 e1                                      mov r0, r2
005a0acc  1e ff 2f e1                                      bx lr
005a0ad0  10 20 82 e2                                      add r2, r2, #0x10
005a0ad4  02 00 53 e1                                      cmp r3, r2
005a0ad8  f5 ff ff 1a                                      bne #0x5a0ab4
005a0adc  b8 c0 d2 e1                                      ldrh ip, [r2, #8]
005a0ae0  0c 00 51 e1                                      cmp r1, ip
005a0ae4  10 20 90 15                                      ldrne r2, [r0, #0x10]
005a0ae8  02 00 a0 e1                                      mov r0, r2
005a0aec  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a0af0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9getStreamENS0_18E_VERTEX_ATTRIBUTEEPNS0_13SVertexStreamES4_
; demangled: glitch::video::CVertexStreams::getStream(glitch::video::E_VERTEX_ATTRIBUTE, glitch::video::SVertexStream*, glitch::video::SVertexStream*)
; decoder-mode: arm
005a0af0  03 00 52 e1                                      cmp r2, r3
005a0af4  09 00 00 0a                                      beq #0x5a0b20
005a0af8  b8 c0 d2 e1                                      ldrh ip, [r2, #8]
005a0afc  01 00 5c e1                                      cmp ip, r1
005a0b00  03 00 00 ba                                      blt #0x5a0b14
005a0b04  0c 00 51 e1                                      cmp r1, ip
005a0b08  10 20 90 15                                      ldrne r2, [r0, #0x10]
005a0b0c  02 00 a0 e1                                      mov r0, r2
005a0b10  1e ff 2f e1                                      bx lr
005a0b14  10 20 82 e2                                      add r2, r2, #0x10
005a0b18  02 00 53 e1                                      cmp r3, r2
005a0b1c  f5 ff ff 1a                                      bne #0x5a0af8
005a0b20  b8 c0 d2 e1                                      ldrh ip, [r2, #8]
005a0b24  0c 00 51 e1                                      cmp r1, ip
005a0b28  10 20 90 15                                      ldrne r2, [r0, #0x10]
005a0b2c  02 00 a0 e1                                      mov r0, r2
005a0b30  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a0b34, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9addOffsetEi
; demangled: glitch::video::CVertexStreams::addOffset(int)
; decoder-mode: arm
005a0b34  10 30 90 e5                                      ldr r3, [r0, #0x10]
005a0b38  14 20 80 e2                                      add r2, r0, #0x14
005a0b3c  02 00 53 e1                                      cmp r3, r2
005a0b40  1e ff 2f 01                                      bxeq lr
005a0b44  24 20 80 e2                                      add r2, r0, #0x24
005a0b48  03 30 62 e0                                      rsb r3, r2, r3
005a0b4c  0f 30 c3 e3                                      bic r3, r3, #0xf
005a0b50  10 20 80 e2                                      add r2, r0, #0x10
005a0b54  03 30 82 e0                                      add r3, r2, r3
005a0b58  18 20 90 e5                                      ldr r2, [r0, #0x18]
005a0b5c  01 20 82 e0                                      add r2, r2, r1
005a0b60  18 20 80 e5                                      str r2, [r0, #0x18]
005a0b64  10 00 80 e2                                      add r0, r0, #0x10
005a0b68  03 00 50 e1                                      cmp r0, r3
005a0b6c  f9 ff ff 1a                                      bne #0x5a0b58
005a0b70  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a0b74, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZNK6glitch5video14CVertexStreams13isHomogeneousEj
; demangled: glitch::video::CVertexStreams::isHomogeneous(unsigned int) const
; decoder-mode: arm
005a0b74  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005a0b78  04 50 90 e5                                      ldr r5, [r0, #4]
005a0b7c  00 80 a0 e1                                      mov r8, r0
005a0b80  05 50 11 e0                                      ands r5, r1, r5
005a0b84  18 00 00 0a                                      beq #0x5a0bec
005a0b88  00 40 a0 e3                                      mov r4, #0
005a0b8c  14 20 80 e2                                      add r2, r0, #0x14
005a0b90  04 a0 a0 e1                                      mov sl, r4
005a0b94  01 70 a0 e3                                      mov r7, #1
005a0b98  02 00 00 ea                                      b #0x5a0ba8
005a0b9c  00 00 55 e3                                      cmp r5, #0
005a0ba0  11 00 00 0a                                      beq #0x5a0bec
005a0ba4  01 40 84 e2                                      add r4, r4, #1
005a0ba8  17 64 a0 e1                                      lsl r6, r7, r4
005a0bac  05 00 16 e1                                      tst r6, r5
005a0bb0  f9 ff ff 0a                                      beq #0x5a0b9c
005a0bb4  04 10 a0 e1                                      mov r1, r4
005a0bb8  08 00 a0 e1                                      mov r0, r8
005a0bbc  10 30 98 e5                                      ldr r3, [r8, #0x10]
005a0bc0  b9 ff ff eb                                      bl #0x5a0aac
005a0bc4  00 00 5a e3                                      cmp sl, #0
005a0bc8  00 a0 90 05                                      ldreq sl, [r0]
005a0bcc  02 00 00 0a                                      beq #0x5a0bdc
005a0bd0  00 30 90 e5                                      ldr r3, [r0]
005a0bd4  03 00 5a e1                                      cmp sl, r3
005a0bd8  05 00 00 1a                                      bne #0x5a0bf4
005a0bdc  06 50 c5 e1                                      bic r5, r5, r6
005a0be0  00 00 55 e3                                      cmp r5, #0
005a0be4  10 20 80 e2                                      add r2, r0, #0x10
005a0be8  ed ff ff 1a                                      bne #0x5a0ba4
005a0bec  01 00 a0 e3                                      mov r0, #1
005a0bf0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005a0bf4  00 00 a0 e3                                      mov r0, #0
005a0bf8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005a0bfc, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams25updateHomogeneityInternalEb
; demangled: glitch::video::CVertexStreams::updateHomogeneityInternal(bool)
; decoder-mode: arm
005a0bfc  00 00 51 e3                                      cmp r1, #0
005a0c00  12 00 00 1a                                      bne #0x5a0c50
005a0c04  10 c0 90 e5                                      ldr ip, [r0, #0x10]
005a0c08  24 30 80 e2                                      add r3, r0, #0x24
005a0c0c  14 10 90 e5                                      ldr r1, [r0, #0x14]
005a0c10  0c 00 53 e1                                      cmp r3, ip
005a0c14  09 00 00 0a                                      beq #0x5a0c40
005a0c18  00 20 93 e5                                      ldr r2, [r3]
005a0c1c  10 30 83 e2                                      add r3, r3, #0x10
005a0c20  00 00 51 e3                                      cmp r1, #0
005a0c24  00 00 52 13                                      cmpne r2, #0
005a0c28  01 00 00 0a                                      beq #0x5a0c34
005a0c2c  02 00 51 e1                                      cmp r1, r2
005a0c30  06 00 00 1a                                      bne #0x5a0c50
005a0c34  0c 00 53 e1                                      cmp r3, ip
005a0c38  02 10 a0 e1                                      mov r1, r2
005a0c3c  f5 ff ff 1a                                      bne #0x5a0c18
005a0c40  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
005a0c44  01 30 83 e3                                      orr r3, r3, #1
005a0c48  be 30 c0 e1                                      strh r3, [r0, #0xe]
005a0c4c  1e ff 2f e1                                      bx lr
005a0c50  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
005a0c54  01 30 c3 e3                                      bic r3, r3, #1
005a0c58  be 30 c0 e1                                      strh r3, [r0, #0xe]
005a0c5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a0c60, declared_size=288, range_size=288, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams10setStreamsERKN5boost13intrusive_ptrIS1_EEjib
; demangled: glitch::video::CVertexStreams::setStreams(boost::intrusive_ptr<glitch::video::CVertexStreams> const&, unsigned int, int, bool)
; decoder-mode: arm
005a0c60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a0c64  01 b0 a0 e1                                      mov fp, r1
005a0c68  00 10 91 e5                                      ldr r1, [r1]
005a0c6c  04 80 90 e5                                      ldr r8, [r0, #4]
005a0c70  00 a0 a0 e1                                      mov sl, r0
005a0c74  04 00 91 e5                                      ldr r0, [r1, #4]
005a0c78  14 d0 4d e2                                      sub sp, sp, #0x14
005a0c7c  08 30 8d e5                                      str r3, [sp, #8]
005a0c80  38 30 dd e5                                      ldrb r3, [sp, #0x38]
005a0c84  00 80 08 e0                                      and r8, r8, r0
005a0c88  02 80 18 e0                                      ands r8, r8, r2
005a0c8c  0c 30 8d e5                                      str r3, [sp, #0xc]
005a0c90  37 00 00 0a                                      beq #0x5a0d74
005a0c94  14 10 81 e2                                      add r1, r1, #0x14
005a0c98  04 10 8d e5                                      str r1, [sp, #4]
005a0c9c  14 20 8a e2                                      add r2, sl, #0x14
005a0ca0  08 70 a0 e1                                      mov r7, r8
005a0ca4  00 40 a0 e3                                      mov r4, #0
005a0ca8  01 90 a0 e3                                      mov sb, #1
005a0cac  02 00 00 ea                                      b #0x5a0cbc
005a0cb0  00 00 57 e3                                      cmp r7, #0
005a0cb4  2b 00 00 0a                                      beq #0x5a0d68
005a0cb8  01 40 84 e2                                      add r4, r4, #1
005a0cbc  19 64 a0 e1                                      lsl r6, sb, r4
005a0cc0  08 00 16 e1                                      tst r6, r8
005a0cc4  f9 ff ff 0a                                      beq #0x5a0cb0
005a0cc8  04 10 a0 e1                                      mov r1, r4
005a0ccc  10 30 9a e5                                      ldr r3, [sl, #0x10]
005a0cd0  0a 00 a0 e1                                      mov r0, sl
005a0cd4  85 ff ff eb                                      bl #0x5a0af0
005a0cd8  00 50 a0 e1                                      mov r5, r0
005a0cdc  00 00 9b e5                                      ldr r0, [fp]
005a0ce0  04 10 a0 e1                                      mov r1, r4
005a0ce4  04 20 9d e5                                      ldr r2, [sp, #4]
005a0ce8  10 30 90 e5                                      ldr r3, [r0, #0x10]
005a0cec  6e ff ff eb                                      bl #0x5a0aac
005a0cf0  00 20 90 e5                                      ldr r2, [r0]
005a0cf4  00 30 a0 e1                                      mov r3, r0
005a0cf8  10 00 80 e2                                      add r0, r0, #0x10
005a0cfc  04 00 8d e5                                      str r0, [sp, #4]
005a0d00  00 00 52 e3                                      cmp r2, #0
005a0d04  04 10 92 15                                      ldrne r1, [r2, #4]
005a0d08  06 70 c7 e1                                      bic r7, r7, r6
005a0d0c  01 10 81 12                                      addne r1, r1, #1
005a0d10  04 10 82 15                                      strne r1, [r2, #4]
005a0d14  00 00 95 e5                                      ldr r0, [r5]
005a0d18  00 20 85 e5                                      str r2, [r5]
005a0d1c  00 00 50 e3                                      cmp r0, #0
005a0d20  02 00 00 0a                                      beq #0x5a0d30
005a0d24  00 30 8d e5                                      str r3, [sp]
005a0d28  15 f2 f5 eb                                      bl #0x31d584
005a0d2c  00 30 9d e5                                      ldr r3, [sp]
005a0d30  04 10 93 e5                                      ldr r1, [r3, #4]
005a0d34  00 00 57 e3                                      cmp r7, #0
005a0d38  10 20 85 e2                                      add r2, r5, #0x10
005a0d3c  04 10 85 e5                                      str r1, [r5, #4]
005a0d40  ba 00 d3 e1                                      ldrh r0, [r3, #0xa]
005a0d44  ba 00 c5 e1                                      strh r0, [r5, #0xa]
005a0d48  bc 00 d3 e1                                      ldrh r0, [r3, #0xc]
005a0d4c  bc 00 c5 e1                                      strh r0, [r5, #0xc]
005a0d50  08 00 9d e5                                      ldr r0, [sp, #8]
005a0d54  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
005a0d58  01 10 80 e0                                      add r1, r0, r1
005a0d5c  be 30 c5 e1                                      strh r3, [r5, #0xe]
005a0d60  04 10 85 e5                                      str r1, [r5, #4]
005a0d64  d3 ff ff 1a                                      bne #0x5a0cb8
005a0d68  0a 00 a0 e1                                      mov r0, sl
005a0d6c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005a0d70  a1 ff ff eb                                      bl #0x5a0bfc
005a0d74  08 00 a0 e1                                      mov r0, r8
005a0d78  14 d0 8d e2                                      add sp, sp, #0x14
005a0d7c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005a0d80, declared_size=164, range_size=164, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams20updateStatesInternalEb
; demangled: glitch::video::CVertexStreams::updateStatesInternal(bool)
; decoder-mode: arm
005a0d80  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
005a0d84  00 00 51 e3                                      cmp r1, #0
005a0d88  10 20 90 e5                                      ldr r2, [r0, #0x10]
005a0d8c  01 30 c3 13                                      bicne r3, r3, #1
005a0d90  03 38 a0 11                                      lslne r3, r3, #0x10
005a0d94  01 30 83 03                                      orreq r3, r3, #1
005a0d98  23 38 a0 11                                      lsrne r3, r3, #0x10
005a0d9c  14 10 80 e2                                      add r1, r0, #0x14
005a0da0  be 30 c0 e1                                      strh r3, [r0, #0xe]
005a0da4  01 00 52 e1                                      cmp r2, r1
005a0da8  02 30 83 e3                                      orr r3, r3, #2
005a0dac  04 40 2d e5                                      str r4, [sp, #-4]!
005a0db0  be 30 c0 e1                                      strh r3, [r0, #0xe]
005a0db4  18 00 00 0a                                      beq #0x5a0e1c
005a0db8  24 40 80 e2                                      add r4, r0, #0x24
005a0dbc  02 20 64 e0                                      rsb r2, r4, r2
005a0dc0  0f 20 c2 e3                                      bic r2, r2, #0xf
005a0dc4  10 40 80 e2                                      add r4, r0, #0x10
005a0dc8  02 40 84 e0                                      add r4, r4, r2
005a0dcc  00 10 a0 e3                                      mov r1, #0
005a0dd0  00 20 a0 e1                                      mov r2, r0
005a0dd4  14 30 92 e5                                      ldr r3, [r2, #0x14]
005a0dd8  10 20 82 e2                                      add r2, r2, #0x10
005a0ddc  00 00 53 e3                                      cmp r3, #0
005a0de0  0a 00 00 0a                                      beq #0x5a0e10
005a0de4  08 c0 93 e5                                      ldr ip, [r3, #8]
005a0de8  00 00 5c e3                                      cmp ip, #0
005a0dec  be c0 d0 01                                      ldrheq ip, [r0, #0xe]
005a0df0  02 c0 cc 03                                      biceq ip, ip, #2
005a0df4  be c0 c0 01                                      strheq ip, [r0, #0xe]
005a0df8  00 00 51 e3                                      cmp r1, #0
005a0dfc  03 00 00 0a                                      beq #0x5a0e10
005a0e00  03 00 51 e1                                      cmp r1, r3
005a0e04  be 10 d0 11                                      ldrhne r1, [r0, #0xe]
005a0e08  01 10 c1 13                                      bicne r1, r1, #1
005a0e0c  be 10 c0 11                                      strhne r1, [r0, #0xe]
005a0e10  04 00 52 e1                                      cmp r2, r4
005a0e14  03 10 a0 e1                                      mov r1, r3
005a0e18  ed ff ff 1a                                      bne #0x5a0dd4
005a0e1c  10 00 bd e8                                      ldm sp!, {r4}
005a0e20  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a0e24, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams12updateStatesEb
; demangled: glitch::video::CVertexStreams::updateStates(bool)
; decoder-mode: arm
005a0e24  d5 ff ff ea                                      b #0x5a0d80

; FUNCTION 0x005a0ec0, declared_size=292, range_size=292, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZNK6glitch5video14CVertexStreams18computeBoundingBoxEjjRNS_4core8aabbox3dIfEE
; demangled: glitch::video::CVertexStreams::computeBoundingBox(unsigned int, unsigned int, glitch::core::aabbox3d<float>&) const
; decoder-mode: arm
005a0ec0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a0ec4  00 50 a0 e1                                      mov r5, r0
005a0ec8  10 d0 4d e2                                      sub sp, sp, #0x10
005a0ecc  01 60 a0 e1                                      mov r6, r1
005a0ed0  14 00 90 e5                                      ldr r0, [r0, #0x14]
005a0ed4  00 10 a0 e3                                      mov r1, #0
005a0ed8  02 70 a0 e1                                      mov r7, r2
005a0edc  03 40 a0 e1                                      mov r4, r3
005a0ee0  fd 02 00 eb                                      bl #0x5a1adc
005a0ee4  14 c0 85 e2                                      add ip, r5, #0x14
005a0ee8  04 e0 9c e5                                      ldr lr, [ip, #4]
005a0eec  be 30 dc e1                                      ldrh r3, [ip, #0xe]
005a0ef0  bc 20 dc e1                                      ldrh r2, [ip, #0xc]
005a0ef4  0e e0 80 e0                                      add lr, r0, lr
005a0ef8  ba 10 dc e1                                      ldrh r1, [ip, #0xa]
005a0efc  93 e6 20 e0                                      mla r0, r3, r6, lr
005a0f00  07 60 66 e0                                      rsb r6, r6, r7
005a0f04  08 c0 8d e5                                      str ip, [sp, #8]
005a0f08  0c e0 8d e5                                      str lr, [sp, #0xc]
005a0f0c  00 60 8d e5                                      str r6, [sp]
005a0f10  04 40 8d e5                                      str r4, [sp, #4]
005a0f14  6c 0e 04 eb                                      bl #0x6a48cc
005a0f18  08 00 8d e2                                      add r0, sp, #8
005a0f1c  c1 ff ff eb                                      bl #0x5a0e28
005a0f20  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
005a0f24  04 00 13 e3                                      tst r3, #4
005a0f28  2b 00 00 0a                                      beq #0x5a0fdc
005a0f2c  10 60 95 e5                                      ldr r6, [r5, #0x10]
005a0f30  04 00 94 e5                                      ldr r0, [r4, #4]
005a0f34  04 10 96 e5                                      ldr r1, [r6, #4]
005a0f38  0c 70 86 e2                                      add r7, r6, #0xc
005a0f3c  8a b7 f5 eb                                      bl #0x30ed6c
005a0f40  04 10 97 e5                                      ldr r1, [r7, #4]
005a0f44  16 b7 f5 eb                                      bl #0x30eba4
005a0f48  08 10 96 e5                                      ldr r1, [r6, #8]
005a0f4c  00 80 a0 e1                                      mov r8, r0
005a0f50  08 00 94 e5                                      ldr r0, [r4, #8]
005a0f54  84 b7 f5 eb                                      bl #0x30ed6c
005a0f58  08 10 97 e5                                      ldr r1, [r7, #8]
005a0f5c  10 b7 f5 eb                                      bl #0x30eba4
005a0f60  00 10 96 e5                                      ldr r1, [r6]
005a0f64  00 70 a0 e1                                      mov r7, r0
005a0f68  00 00 94 e5                                      ldr r0, [r4]
005a0f6c  7e b7 f5 eb                                      bl #0x30ed6c
005a0f70  0c 10 96 e5                                      ldr r1, [r6, #0xc]
005a0f74  0a b7 f5 eb                                      bl #0x30eba4
005a0f78  08 70 84 e5                                      str r7, [r4, #8]
005a0f7c  00 00 84 e5                                      str r0, [r4]
005a0f80  04 80 84 e5                                      str r8, [r4, #4]
005a0f84  10 50 95 e5                                      ldr r5, [r5, #0x10]
005a0f88  10 00 94 e5                                      ldr r0, [r4, #0x10]
005a0f8c  04 10 95 e5                                      ldr r1, [r5, #4]
005a0f90  0c 60 85 e2                                      add r6, r5, #0xc
005a0f94  74 b7 f5 eb                                      bl #0x30ed6c
005a0f98  04 10 96 e5                                      ldr r1, [r6, #4]
005a0f9c  00 b7 f5 eb                                      bl #0x30eba4
005a0fa0  08 10 95 e5                                      ldr r1, [r5, #8]
005a0fa4  00 70 a0 e1                                      mov r7, r0
005a0fa8  14 00 94 e5                                      ldr r0, [r4, #0x14]
005a0fac  6e b7 f5 eb                                      bl #0x30ed6c
005a0fb0  08 10 96 e5                                      ldr r1, [r6, #8]
005a0fb4  fa b6 f5 eb                                      bl #0x30eba4
005a0fb8  00 10 95 e5                                      ldr r1, [r5]
005a0fbc  00 60 a0 e1                                      mov r6, r0
005a0fc0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005a0fc4  68 b7 f5 eb                                      bl #0x30ed6c
005a0fc8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
005a0fcc  f4 b6 f5 eb                                      bl #0x30eba4
005a0fd0  0c 00 84 e5                                      str r0, [r4, #0xc]
005a0fd4  10 70 84 e5                                      str r7, [r4, #0x10]
005a0fd8  14 60 84 e5                                      str r6, [r4, #0x14]
005a0fdc  10 d0 8d e2                                      add sp, sp, #0x10
005a0fe0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005a0fe4, declared_size=280, range_size=280, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams11copyStreamsERKN5boost13intrusive_ptrIKS1_EEjjij
; demangled: glitch::video::CVertexStreams::copyStreams(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, unsigned int, unsigned int, int, unsigned int)
; decoder-mode: arm
005a0fe4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a0fe8  1c d0 4d e2                                      sub sp, sp, #0x1c
005a0fec  0c 10 8d e5                                      str r1, [sp, #0xc]
005a0ff0  00 70 91 e5                                      ldr r7, [r1]
005a0ff4  04 b0 90 e5                                      ldr fp, [r0, #4]
005a0ff8  00 a0 a0 e1                                      mov sl, r0
005a0ffc  04 00 97 e5                                      ldr r0, [r7, #4]
005a1000  44 10 9d e5                                      ldr r1, [sp, #0x44]
005a1004  10 20 8d e5                                      str r2, [sp, #0x10]
005a1008  00 b0 0b e0                                      and fp, fp, r0
005a100c  01 b0 1b e0                                      ands fp, fp, r1
005a1010  14 30 8d e5                                      str r3, [sp, #0x14]
005a1014  28 00 00 0a                                      beq #0x5a10bc
005a1018  14 70 87 e2                                      add r7, r7, #0x14
005a101c  14 20 8a e2                                      add r2, sl, #0x14
005a1020  0b 50 a0 e1                                      mov r5, fp
005a1024  00 40 a0 e3                                      mov r4, #0
005a1028  01 90 a0 e3                                      mov sb, #1
005a102c  02 00 00 ea                                      b #0x5a103c
005a1030  00 00 55 e3                                      cmp r5, #0
005a1034  20 00 00 0a                                      beq #0x5a10bc
005a1038  01 40 84 e2                                      add r4, r4, #1
005a103c  19 64 a0 e1                                      lsl r6, sb, r4
005a1040  05 00 16 e1                                      tst r6, r5
005a1044  f9 ff ff 0a                                      beq #0x5a1030
005a1048  04 10 a0 e1                                      mov r1, r4
005a104c  10 30 9a e5                                      ldr r3, [sl, #0x10]
005a1050  0a 00 a0 e1                                      mov r0, sl
005a1054  a5 fe ff eb                                      bl #0x5a0af0
005a1058  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005a105c  00 80 a0 e1                                      mov r8, r0
005a1060  07 20 a0 e1                                      mov r2, r7
005a1064  00 00 91 e5                                      ldr r0, [r1]
005a1068  04 10 a0 e1                                      mov r1, r4
005a106c  10 30 90 e5                                      ldr r3, [r0, #0x10]
005a1070  8d fe ff eb                                      bl #0x5a0aac
005a1074  00 20 98 e5                                      ldr r2, [r8]
005a1078  00 70 a0 e1                                      mov r7, r0
005a107c  06 30 e0 e1                                      mvn r3, r6
005a1080  00 00 52 e3                                      cmp r2, #0
005a1084  06 00 00 0a                                      beq #0x5a10a4
005a1088  00 20 90 e5                                      ldr r2, [r0]
005a108c  00 00 52 e3                                      cmp r2, #0
005a1090  03 00 00 0a                                      beq #0x5a10a4
005a1094  ba 10 d8 e1                                      ldrh r1, [r8, #0xa]
005a1098  ba 20 d0 e1                                      ldrh r2, [r0, #0xa]
005a109c  02 00 51 e1                                      cmp r1, r2
005a10a0  08 00 00 0a                                      beq #0x5a10c8
005a10a4  03 50 05 e0                                      and r5, r5, r3
005a10a8  03 b0 0b e0                                      and fp, fp, r3
005a10ac  00 00 55 e3                                      cmp r5, #0
005a10b0  10 20 88 e2                                      add r2, r8, #0x10
005a10b4  10 70 87 e2                                      add r7, r7, #0x10
005a10b8  de ff ff 1a                                      bne #0x5a1038
005a10bc  0b 00 a0 e1                                      mov r0, fp
005a10c0  1c d0 8d e2                                      add sp, sp, #0x1c
005a10c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a10c8  bc 10 d8 e1                                      ldrh r1, [r8, #0xc]
005a10cc  bc 20 d0 e1                                      ldrh r2, [r0, #0xc]
005a10d0  02 00 51 e1                                      cmp r1, r2
005a10d4  f2 ff ff 1a                                      bne #0x5a10a4
005a10d8  40 c0 9d e5                                      ldr ip, [sp, #0x40]
005a10dc  08 00 a0 e1                                      mov r0, r8
005a10e0  07 10 a0 e1                                      mov r1, r7
005a10e4  10 20 9d e5                                      ldr r2, [sp, #0x10]
005a10e8  14 30 9d e5                                      ldr r3, [sp, #0x14]
005a10ec  00 c0 8d e5                                      str ip, [sp]
005a10f0  06 50 c5 e1                                      bic r5, r5, r6
005a10f4  77 03 00 eb                                      bl #0x5a1ed8
005a10f8  eb ff ff ea                                      b #0x5a10ac

; FUNCTION 0x005a113c, declared_size=308, range_size=308, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreamsC1EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE
; demangled: glitch::video::CVertexStreams::CVertexStreams(unsigned int, unsigned int, unsigned char, unsigned char, glitch::video::SVertexStream const*, glitch::core::vector3d<float> const*)
; decoder-mode: arm
005a113c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a1140  18 c0 dd e5                                      ldrb ip, [sp, #0x18]
005a1144  14 e0 80 e2                                      add lr, r0, #0x14
005a1148  00 40 a0 e1                                      mov r4, r0
005a114c  0c 02 8e e0                                      add r0, lr, ip, lsl #4
005a1150  08 10 84 e5                                      str r1, [r4, #8]
005a1154  00 00 5e e1                                      cmp lr, r0
005a1158  03 10 a0 e3                                      mov r1, #3
005a115c  00 e0 a0 e3                                      mov lr, #0
005a1160  00 e0 84 e5                                      str lr, [r4]
005a1164  04 20 84 e5                                      str r2, [r4, #4]
005a1168  0c 30 c4 e5                                      strb r3, [r4, #0xc]
005a116c  0d c0 c4 e5                                      strb ip, [r4, #0xd]
005a1170  be 10 c4 e1                                      strh r1, [r4, #0xe]
005a1174  10 00 84 e5                                      str r0, [r4, #0x10]
005a1178  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005a117c  20 10 9d e5                                      ldr r1, [sp, #0x20]
005a1180  2f 00 00 0a                                      beq #0x5a1244
005a1184  24 c0 84 e2                                      add ip, r4, #0x24
005a1188  00 00 6c e0                                      rsb r0, ip, r0
005a118c  0f 00 c0 e3                                      bic r0, r0, #0xf
005a1190  10 80 84 e2                                      add r8, r4, #0x10
005a1194  00 80 88 e0                                      add r8, r8, r0
005a1198  04 50 a0 e1                                      mov r5, r4
005a119c  01 c0 a0 e3                                      mov ip, #1
005a11a0  1c 0e 12 e0                                      ands r0, r2, ip, lsl lr
005a11a4  0e 00 a0 e1                                      mov r0, lr
005a11a8  03 00 00 1a                                      bne #0x5a11bc
005a11ac  01 00 80 e2                                      add r0, r0, #1
005a11b0  1c e0 12 e0                                      ands lr, r2, ip, lsl r0
005a11b4  00 e0 a0 e1                                      mov lr, r0
005a11b8  fb ff ff 0a                                      beq #0x5a11ac
005a11bc  00 00 56 e3                                      cmp r6, #0
005a11c0  15 00 00 0a                                      beq #0x5a121c
005a11c4  00 e0 96 e5                                      ldr lr, [r6]
005a11c8  14 e0 85 e5                                      str lr, [r5, #0x14]
005a11cc  00 00 5e e3                                      cmp lr, #0
005a11d0  04 70 9e 15                                      ldrne r7, [lr, #4]
005a11d4  01 70 87 12                                      addne r7, r7, #1
005a11d8  04 70 8e 15                                      strne r7, [lr, #4]
005a11dc  04 e0 96 e5                                      ldr lr, [r6, #4]
005a11e0  18 e0 85 e5                                      str lr, [r5, #0x18]
005a11e4  b8 e0 d6 e1                                      ldrh lr, [r6, #8]
005a11e8  bc e1 c5 e1                                      strh lr, [r5, #0x1c]
005a11ec  ba e0 d6 e1                                      ldrh lr, [r6, #0xa]
005a11f0  be e1 c5 e1                                      strh lr, [r5, #0x1e]
005a11f4  bc e0 d6 e1                                      ldrh lr, [r6, #0xc]
005a11f8  b0 e2 c5 e1                                      strh lr, [r5, #0x20]
005a11fc  be e0 d6 e1                                      ldrh lr, [r6, #0xe]
005a1200  10 60 86 e2                                      add r6, r6, #0x10
005a1204  b2 e2 c5 e1                                      strh lr, [r5, #0x22]
005a1208  10 50 85 e2                                      add r5, r5, #0x10
005a120c  08 00 55 e1                                      cmp r5, r8
005a1210  0b 00 00 0a                                      beq #0x5a1244
005a1214  01 e0 80 e2                                      add lr, r0, #1
005a1218  e0 ff ff ea                                      b #0x5a11a0
005a121c  bc e1 c5 e1                                      strh lr, [r5, #0x1c]
005a1220  ff e0 a0 e3                                      mov lr, #0xff
005a1224  14 60 85 e5                                      str r6, [r5, #0x14]
005a1228  18 60 85 e5                                      str r6, [r5, #0x18]
005a122c  be e1 c5 e1                                      strh lr, [r5, #0x1e]
005a1230  b0 62 c5 e1                                      strh r6, [r5, #0x20]
005a1234  b2 62 c5 e1                                      strh r6, [r5, #0x22]
005a1238  10 50 85 e2                                      add r5, r5, #0x10
005a123c  08 00 55 e1                                      cmp r5, r8
005a1240  f3 ff ff 1a                                      bne #0x5a1214
005a1244  18 20 a0 e3                                      mov r2, #0x18
005a1248  00 00 51 e3                                      cmp r1, #0
005a124c  93 22 22 e0                                      mla r2, r3, r2, r2
005a1250  03 00 00 0a                                      beq #0x5a1264
005a1254  10 00 94 e5                                      ldr r0, [r4, #0x10]
005a1258  82 b5 f5 eb                                      bl #0x30e868
005a125c  04 00 a0 e1                                      mov r0, r4
005a1260  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a1264  10 00 94 e5                                      ldr r0, [r4, #0x10]
005a1268  7c b4 f5 eb                                      bl #0x30e460
005a126c  fa ff ff ea                                      b #0x5a125c

; FUNCTION 0x005a1270, declared_size=160, range_size=160, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams8allocateEjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE
; demangled: glitch::video::CVertexStreams::allocate(unsigned int, unsigned int, unsigned char, unsigned char, glitch::video::SVertexStream const*, glitch::core::vector3d<float> const*)
; decoder-mode: arm
005a1270  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005a1274  1c d0 4d e2                                      sub sp, sp, #0x1c
005a1278  38 60 dd e5                                      ldrb r6, [sp, #0x38]
005a127c  03 70 a0 e1                                      mov r7, r3
005a1280  18 30 a0 e3                                      mov r3, #0x18
005a1284  97 33 2c e0                                      mla ip, r7, r3, r3
005a1288  06 32 a0 e1                                      lsl r3, r6, #4
005a128c  00 40 a0 e1                                      mov r4, r0
005a1290  14 00 83 e2                                      add r0, r3, #0x14
005a1294  00 30 a0 e3                                      mov r3, #0
005a1298  0c 00 80 e0                                      add r0, r0, ip
005a129c  01 80 a0 e1                                      mov r8, r1
005a12a0  00 30 84 e5                                      str r3, [r4]
005a12a4  03 10 a0 e1                                      mov r1, r3
005a12a8  02 a0 a0 e1                                      mov sl, r2
005a12ac  bd 4b fe eb                                      bl #0x5341a8
005a12b0  00 50 50 e2                                      subs r5, r0, #0
005a12b4  12 00 00 0a                                      beq #0x5a1304
005a12b8  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005a12bc  0a 20 a0 e1                                      mov r2, sl
005a12c0  07 30 a0 e1                                      mov r3, r7
005a12c4  04 c0 8d e5                                      str ip, [sp, #4]
005a12c8  40 c0 9d e5                                      ldr ip, [sp, #0x40]
005a12cc  08 10 a0 e1                                      mov r1, r8
005a12d0  00 60 8d e5                                      str r6, [sp]
005a12d4  08 c0 8d e5                                      str ip, [sp, #8]
005a12d8  97 ff ff eb                                      bl #0x5a113c
005a12dc  14 50 8d e5                                      str r5, [sp, #0x14]
005a12e0  00 30 95 e5                                      ldr r3, [r5]
005a12e4  18 00 8d e2                                      add r0, sp, #0x18
005a12e8  01 30 83 e2                                      add r3, r3, #1
005a12ec  00 30 85 e5                                      str r3, [r5]
005a12f0  00 20 94 e5                                      ldr r2, [r4]
005a12f4  14 30 9d e5                                      ldr r3, [sp, #0x14]
005a12f8  04 20 20 e5                                      str r2, [r0, #-4]!
005a12fc  00 30 84 e5                                      str r3, [r4]
005a1300  7d ff ff eb                                      bl #0x5a10fc
005a1304  04 00 a0 e1                                      mov r0, r4
005a1308  1c d0 8d e2                                      add sp, sp, #0x1c
005a130c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x005a1310, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZNK6glitch5video14CVertexStreams5cloneEv
; demangled: glitch::video::CVertexStreams::clone() const
; decoder-mode: arm
005a1310  70 40 2d e9                                      push {r4, r5, r6, lr}
005a1314  01 40 a0 e1                                      mov r4, r1
005a1318  0d 60 d4 e5                                      ldrb r6, [r4, #0xd]
005a131c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
005a1320  04 20 94 e5                                      ldr r2, [r4, #4]
005a1324  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
005a1328  10 d0 4d e2                                      sub sp, sp, #0x10
005a132c  08 10 91 e5                                      ldr r1, [r1, #8]
005a1330  00 50 a0 e1                                      mov r5, r0
005a1334  14 e0 84 e2                                      add lr, r4, #0x14
005a1338  40 40 8d e8                                      stm sp, {r6, lr}
005a133c  08 c0 8d e5                                      str ip, [sp, #8]
005a1340  ca ff ff eb                                      bl #0x5a1270
005a1344  00 30 95 e5                                      ldr r3, [r5]
005a1348  be 40 d4 e1                                      ldrh r4, [r4, #0xe]
005a134c  05 00 a0 e1                                      mov r0, r5
005a1350  be 40 c3 e1                                      strh r4, [r3, #0xe]
005a1354  10 d0 8d e2                                      add sp, sp, #0x10
005a1358  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a135c, declared_size=168, range_size=168, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams8allocateEj
; demangled: glitch::video::CVertexStreams::allocate(unsigned int)
; decoder-mode: arm
005a135c  10 40 2d e9                                      push {r4, lr}
005a1360  01 20 81 e3                                      orr r2, r1, #1
005a1364  10 d0 4d e2                                      sub sp, sp, #0x10
005a1368  00 40 a0 e1                                      mov r4, r0
005a136c  02 30 a0 e1                                      mov r3, r2
005a1370  01 10 a0 e3                                      mov r1, #1
005a1374  00 c0 a0 e3                                      mov ip, #0
005a1378  00 00 00 ea                                      b #0x5a1380
005a137c  81 10 a0 e1                                      lsl r1, r1, #1
005a1380  03 00 11 e1                                      tst r1, r3
005a1384  01 c0 8c 12                                      addne ip, ip, #1
005a1388  01 30 c3 11                                      bicne r3, r3, r1
005a138c  7c c0 ef 16                                      uxtbne ip, ip
005a1390  00 00 53 e3                                      cmp r3, #0
005a1394  f8 ff ff 1a                                      bne #0x5a137c
005a1398  ff 14 c2 e3                                      bic r1, r2, #0xff000000
005a139c  fe 18 c1 e3                                      bic r1, r1, #0xfe0000
005a13a0  01 10 c1 e3                                      bic r1, r1, #1
005a13a4  00 00 51 e3                                      cmp r1, #0
005a13a8  0b 00 00 0a                                      beq #0x5a13dc
005a13ac  02 e0 a0 e1                                      mov lr, r2
005a13b0  02 00 a0 e3                                      mov r0, #2
005a13b4  00 00 00 ea                                      b #0x5a13bc
005a13b8  80 00 a0 e1                                      lsl r0, r0, #1
005a13bc  0e 00 10 e1                                      tst r0, lr
005a13c0  00 e0 ce 11                                      bicne lr, lr, r0
005a13c4  ff 14 ce e3                                      bic r1, lr, #0xff000000
005a13c8  fe 18 c1 e3                                      bic r1, r1, #0xfe0000
005a13cc  01 10 c1 e3                                      bic r1, r1, #1
005a13d0  01 30 83 12                                      addne r3, r3, #1
005a13d4  00 00 51 e3                                      cmp r1, #0
005a13d8  f6 ff ff 1a                                      bne #0x5a13b8
005a13dc  00 e0 a0 e3                                      mov lr, #0
005a13e0  04 00 a0 e1                                      mov r0, r4
005a13e4  0e 10 a0 e1                                      mov r1, lr
005a13e8  73 30 ef e6                                      uxtb r3, r3
005a13ec  00 50 8d e8                                      stm sp, {ip, lr}
005a13f0  08 e0 8d e5                                      str lr, [sp, #8]
005a13f4  9d ff ff eb                                      bl #0x5a1270
005a13f8  04 00 a0 e1                                      mov r0, r4
005a13fc  10 d0 8d e2                                      add sp, sp, #0x10
005a1400  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a1404, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams8allocateEhj
; demangled: glitch::video::CVertexStreams::allocate(unsigned char, unsigned int)
; decoder-mode: arm
005a1404  10 40 2d e9                                      push {r4, lr}
005a1408  07 21 c2 e3                                      bic r2, r2, #0xc0000001
005a140c  00 30 51 e2                                      subs r3, r1, #0
005a1410  10 d0 4d e2                                      sub sp, sp, #0x10
005a1414  00 40 a0 e1                                      mov r4, r0
005a1418  01 20 82 e3                                      orr r2, r2, #1
005a141c  06 00 00 0a                                      beq #0x5a143c
005a1420  00 10 a0 e3                                      mov r1, #0
005a1424  02 c0 a0 e3                                      mov ip, #2
005a1428  1c 21 82 e1                                      orr r2, r2, ip, lsl r1
005a142c  01 10 81 e2                                      add r1, r1, #1
005a1430  71 00 ef e6                                      uxtb r0, r1
005a1434  00 00 53 e1                                      cmp r3, r0
005a1438  fa ff ff 8a                                      bhi #0x5a1428
005a143c  02 c0 a0 e1                                      mov ip, r2
005a1440  01 10 a0 e3                                      mov r1, #1
005a1444  00 e0 a0 e3                                      mov lr, #0
005a1448  00 00 00 ea                                      b #0x5a1450
005a144c  81 10 a0 e1                                      lsl r1, r1, #1
005a1450  01 00 1c e1                                      tst ip, r1
005a1454  01 e0 8e 12                                      addne lr, lr, #1
005a1458  01 c0 cc 11                                      bicne ip, ip, r1
005a145c  7e e0 ef 16                                      uxtbne lr, lr
005a1460  00 00 5c e3                                      cmp ip, #0
005a1464  f8 ff ff 1a                                      bne #0x5a144c
005a1468  04 00 a0 e1                                      mov r0, r4
005a146c  0c 10 a0 e1                                      mov r1, ip
005a1470  00 e0 8d e5                                      str lr, [sp]
005a1474  04 c0 8d e5                                      str ip, [sp, #4]
005a1478  08 c0 8d e5                                      str ip, [sp, #8]
005a147c  7b ff ff eb                                      bl #0x5a1270
005a1480  04 00 a0 e1                                      mov r0, r4
005a1484  10 d0 8d e2                                      add sp, sp, #0x10
005a1488  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a148c, declared_size=308, range_size=308, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreamsC2EjjhhPKNS0_13SVertexStreamEPKNS_4core8vector3dIfEE
; demangled: glitch::video::CVertexStreams::CVertexStreams(unsigned int, unsigned int, unsigned char, unsigned char, glitch::video::SVertexStream const*, glitch::core::vector3d<float> const*)
; decoder-mode: arm
005a148c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a1490  18 c0 dd e5                                      ldrb ip, [sp, #0x18]
005a1494  14 e0 80 e2                                      add lr, r0, #0x14
005a1498  00 40 a0 e1                                      mov r4, r0
005a149c  0c 02 8e e0                                      add r0, lr, ip, lsl #4
005a14a0  08 10 84 e5                                      str r1, [r4, #8]
005a14a4  00 00 5e e1                                      cmp lr, r0
005a14a8  03 10 a0 e3                                      mov r1, #3
005a14ac  00 e0 a0 e3                                      mov lr, #0
005a14b0  00 e0 84 e5                                      str lr, [r4]
005a14b4  04 20 84 e5                                      str r2, [r4, #4]
005a14b8  0c 30 c4 e5                                      strb r3, [r4, #0xc]
005a14bc  0d c0 c4 e5                                      strb ip, [r4, #0xd]
005a14c0  be 10 c4 e1                                      strh r1, [r4, #0xe]
005a14c4  10 00 84 e5                                      str r0, [r4, #0x10]
005a14c8  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005a14cc  20 10 9d e5                                      ldr r1, [sp, #0x20]
005a14d0  2f 00 00 0a                                      beq #0x5a1594
005a14d4  24 c0 84 e2                                      add ip, r4, #0x24
005a14d8  00 00 6c e0                                      rsb r0, ip, r0
005a14dc  0f 00 c0 e3                                      bic r0, r0, #0xf
005a14e0  10 80 84 e2                                      add r8, r4, #0x10
005a14e4  00 80 88 e0                                      add r8, r8, r0
005a14e8  04 50 a0 e1                                      mov r5, r4
005a14ec  01 c0 a0 e3                                      mov ip, #1
005a14f0  1c 0e 12 e0                                      ands r0, r2, ip, lsl lr
005a14f4  0e 00 a0 e1                                      mov r0, lr
005a14f8  03 00 00 1a                                      bne #0x5a150c
005a14fc  01 00 80 e2                                      add r0, r0, #1
005a1500  1c e0 12 e0                                      ands lr, r2, ip, lsl r0
005a1504  00 e0 a0 e1                                      mov lr, r0
005a1508  fb ff ff 0a                                      beq #0x5a14fc
005a150c  00 00 56 e3                                      cmp r6, #0
005a1510  15 00 00 0a                                      beq #0x5a156c
005a1514  00 e0 96 e5                                      ldr lr, [r6]
005a1518  14 e0 85 e5                                      str lr, [r5, #0x14]
005a151c  00 00 5e e3                                      cmp lr, #0
005a1520  04 70 9e 15                                      ldrne r7, [lr, #4]
005a1524  01 70 87 12                                      addne r7, r7, #1
005a1528  04 70 8e 15                                      strne r7, [lr, #4]
005a152c  04 e0 96 e5                                      ldr lr, [r6, #4]
005a1530  18 e0 85 e5                                      str lr, [r5, #0x18]
005a1534  b8 e0 d6 e1                                      ldrh lr, [r6, #8]
005a1538  bc e1 c5 e1                                      strh lr, [r5, #0x1c]
005a153c  ba e0 d6 e1                                      ldrh lr, [r6, #0xa]
005a1540  be e1 c5 e1                                      strh lr, [r5, #0x1e]
005a1544  bc e0 d6 e1                                      ldrh lr, [r6, #0xc]
005a1548  b0 e2 c5 e1                                      strh lr, [r5, #0x20]
005a154c  be e0 d6 e1                                      ldrh lr, [r6, #0xe]
005a1550  10 60 86 e2                                      add r6, r6, #0x10
005a1554  b2 e2 c5 e1                                      strh lr, [r5, #0x22]
005a1558  10 50 85 e2                                      add r5, r5, #0x10
005a155c  08 00 55 e1                                      cmp r5, r8
005a1560  0b 00 00 0a                                      beq #0x5a1594
005a1564  01 e0 80 e2                                      add lr, r0, #1
005a1568  e0 ff ff ea                                      b #0x5a14f0
005a156c  bc e1 c5 e1                                      strh lr, [r5, #0x1c]
005a1570  ff e0 a0 e3                                      mov lr, #0xff
005a1574  14 60 85 e5                                      str r6, [r5, #0x14]
005a1578  18 60 85 e5                                      str r6, [r5, #0x18]
005a157c  be e1 c5 e1                                      strh lr, [r5, #0x1e]
005a1580  b0 62 c5 e1                                      strh r6, [r5, #0x20]
005a1584  b2 62 c5 e1                                      strh r6, [r5, #0x22]
005a1588  10 50 85 e2                                      add r5, r5, #0x10
005a158c  08 00 55 e1                                      cmp r5, r8
005a1590  f3 ff ff 1a                                      bne #0x5a1564
005a1594  18 20 a0 e3                                      mov r2, #0x18
005a1598  00 00 51 e3                                      cmp r1, #0
005a159c  93 22 22 e0                                      mla r2, r3, r2, r2
005a15a0  03 00 00 0a                                      beq #0x5a15b4
005a15a4  10 00 94 e5                                      ldr r0, [r4, #0x10]
005a15a8  ae b4 f5 eb                                      bl #0x30e868
005a15ac  04 00 a0 e1                                      mov r0, r4
005a15b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a15b4  10 00 94 e5                                      ldr r0, [r4, #0x10]
005a15b8  a8 b3 f5 eb                                      bl #0x30e460
005a15bc  fa ff ff ea                                      b #0x5a15ac

; FUNCTION 0x005a15c0, declared_size=460, range_size=460, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams12setupStreamsERKN5boost13intrusive_ptrINS0_7IBufferEEEj
; demangled: glitch::video::CVertexStreams::setupStreams(boost::intrusive_ptr<glitch::video::IBuffer> const&, unsigned int)
; decoder-mode: arm
005a15c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a15c4  24 d0 4d e2                                      sub sp, sp, #0x24
005a15c8  0c 00 8d e5                                      str r0, [sp, #0xc]
005a15cc  10 50 90 e5                                      ldr r5, [r0, #0x10]
005a15d0  a8 41 9f e5                                      ldr r4, [pc, #0x1a8]
005a15d4  14 00 80 e2                                      add r0, r0, #0x14
005a15d8  05 00 50 e1                                      cmp r0, r5
005a15dc  04 40 8f e0                                      add r4, pc, r4
005a15e0  1c 00 8d e5                                      str r0, [sp, #0x1c]
005a15e4  10 10 8d e5                                      str r1, [sp, #0x10]
005a15e8  02 80 a0 e1                                      mov r8, r2
005a15ec  00 a0 a0 03                                      moveq sl, #0
005a15f0  5a 00 00 0a                                      beq #0x5a1760
005a15f4  88 21 9f e5                                      ldr r2, [pc, #0x188]
005a15f8  88 31 9f e5                                      ldr r3, [pc, #0x188]
005a15fc  00 a0 a0 e3                                      mov sl, #0
005a1600  14 20 8d e5                                      str r2, [sp, #0x14]
005a1604  18 30 8d e5                                      str r3, [sp, #0x18]
005a1608  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
005a160c  01 90 a0 e3                                      mov sb, #1
005a1610  0a b0 a0 e1                                      mov fp, sl
005a1614  04 50 8d e5                                      str r5, [sp, #4]
005a1618  08 40 8d e5                                      str r4, [sp, #8]
005a161c  2b 00 00 ea                                      b #0x5a16d0
005a1620  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005a1624  00 70 9c e5                                      ldr r7, [ip]
005a1628  00 00 57 e3                                      cmp r7, #0
005a162c  04 30 97 15                                      ldrne r3, [r7, #4]
005a1630  01 30 83 12                                      addne r3, r3, #1
005a1634  04 30 87 15                                      strne r3, [r7, #4]
005a1638  08 20 9d e5                                      ldr r2, [sp, #8]
005a163c  14 00 9d e5                                      ldr r0, [sp, #0x14]
005a1640  b8 30 d6 11                                      ldrhne r3, [r6, #8]
005a1644  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005a1648  00 10 92 e7                                      ldr r1, [r2, r0]
005a164c  03 31 a0 e1                                      lsl r3, r3, #2
005a1650  0c 20 92 e7                                      ldr r2, [r2, ip]
005a1654  b3 50 91 e1                                      ldrh r5, [r1, r3]
005a1658  00 00 57 e3                                      cmp r7, #0
005a165c  03 30 81 e0                                      add r3, r1, r3
005a1660  02 40 d3 e5                                      ldrb r4, [r3, #2]
005a1664  05 30 d2 e7                                      ldrb r3, [r2, r5]
005a1668  04 20 97 15                                      ldrne r2, [r7, #4]
005a166c  93 04 03 e0                                      mul r3, r3, r4
005a1670  01 20 82 12                                      addne r2, r2, #1
005a1674  04 20 87 15                                      strne r2, [r7, #4]
005a1678  00 00 96 e5                                      ldr r0, [r6]
005a167c  00 70 86 e5                                      str r7, [r6]
005a1680  00 00 50 e3                                      cmp r0, #0
005a1684  02 00 00 0a                                      beq #0x5a1694
005a1688  00 30 8d e5                                      str r3, [sp]
005a168c  bc ef f5 eb                                      bl #0x31d584
005a1690  00 30 9d e5                                      ldr r3, [sp]
005a1694  03 30 8a e0                                      add r3, sl, r3
005a1698  00 00 a0 e3                                      mov r0, #0
005a169c  00 00 57 e3                                      cmp r7, #0
005a16a0  04 a0 86 e5                                      str sl, [r6, #4]
005a16a4  ba 50 c6 e1                                      strh r5, [r6, #0xa]
005a16a8  bc 40 c6 e1                                      strh r4, [r6, #0xc]
005a16ac  be 00 c6 e1                                      strh r0, [r6, #0xe]
005a16b0  73 a0 ff e6                                      uxth sl, r3
005a16b4  01 00 00 0a                                      beq #0x5a16c0
005a16b8  07 00 a0 e1                                      mov r0, r7
005a16bc  b0 ef f5 eb                                      bl #0x31d584
005a16c0  04 c0 9d e5                                      ldr ip, [sp, #4]
005a16c4  10 60 86 e2                                      add r6, r6, #0x10
005a16c8  0c 00 56 e1                                      cmp r6, ip
005a16cc  10 00 00 0a                                      beq #0x5a1714
005a16d0  b8 30 d6 e1                                      ldrh r3, [r6, #8]
005a16d4  19 23 18 e0                                      ands r2, r8, sb, lsl r3
005a16d8  d0 ff ff 1a                                      bne #0x5a1620
005a16dc  00 00 96 e5                                      ldr r0, [r6]
005a16e0  00 20 86 e5                                      str r2, [r6]
005a16e4  00 00 50 e3                                      cmp r0, #0
005a16e8  00 00 00 0a                                      beq #0x5a16f0
005a16ec  a4 ef f5 eb                                      bl #0x31d584
005a16f0  ff 20 a0 e3                                      mov r2, #0xff
005a16f4  04 b0 86 e5                                      str fp, [r6, #4]
005a16f8  ba 20 c6 e1                                      strh r2, [r6, #0xa]
005a16fc  bc b0 c6 e1                                      strh fp, [r6, #0xc]
005a1700  be b0 c6 e1                                      strh fp, [r6, #0xe]
005a1704  04 c0 9d e5                                      ldr ip, [sp, #4]
005a1708  10 60 86 e2                                      add r6, r6, #0x10
005a170c  0c 00 56 e1                                      cmp r6, ip
005a1710  ee ff ff 1a                                      bne #0x5a16d0
005a1714  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005a1718  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005a171c  10 30 90 e5                                      ldr r3, [r0, #0x10]
005a1720  03 00 52 e1                                      cmp r2, r3
005a1724  0d 00 00 0a                                      beq #0x5a1760
005a1728  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005a172c  24 00 80 e2                                      add r0, r0, #0x24
005a1730  03 30 60 e0                                      rsb r3, r0, r3
005a1734  0f 30 c3 e3                                      bic r3, r3, #0xf
005a1738  10 00 8c e2                                      add r0, ip, #0x10
005a173c  03 00 80 e0                                      add r0, r0, r3
005a1740  01 10 a0 e3                                      mov r1, #1
005a1744  0c 30 a0 e1                                      mov r3, ip
005a1748  bc 21 d3 e1                                      ldrh r2, [r3, #0x1c]
005a174c  11 22 18 e0                                      ands r2, r8, r1, lsl r2
005a1750  b2 a2 c3 11                                      strhne sl, [r3, #0x22]
005a1754  10 30 83 e2                                      add r3, r3, #0x10
005a1758  00 00 53 e1                                      cmp r3, r0
005a175c  f9 ff ff 1a                                      bne #0x5a1748
005a1760  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005a1764  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005a1768  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
005a176c  0a 00 a0 e1                                      mov r0, sl
005a1770  01 30 83 e3                                      orr r3, r3, #1
005a1774  be 30 c2 e1                                      strh r3, [r2, #0xe]
005a1778  24 d0 8d e2                                      add sp, sp, #0x24
005a177c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005a1780  b4 34 3f 00 f0 1d 00 00 08 11 00 00              .byte 0xb4, 0x34, 0x3f, 0x00, 0xf0, 0x1d, 0x00, 0x00, 0x08, 0x11, 0x00, 0x00

; FUNCTION 0x005a178c, declared_size=236, range_size=236, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams12setupStreamsEPKNS0_17SVertexStreamDataEjb
; demangled: glitch::video::CVertexStreams::setupStreams(glitch::video::SVertexStreamData const*, unsigned int, bool)
; decoder-mode: arm
005a178c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a1790  10 50 90 e5                                      ldr r5, [r0, #0x10]
005a1794  04 70 90 e5                                      ldr r7, [r0, #4]
005a1798  00 40 a0 e1                                      mov r4, r0
005a179c  14 00 80 e2                                      add r0, r0, #0x14
005a17a0  00 00 55 e1                                      cmp r5, r0
005a17a4  07 70 02 e0                                      and r7, r2, r7
005a17a8  01 60 a0 e1                                      mov r6, r1
005a17ac  03 b0 a0 e1                                      mov fp, r3
005a17b0  2e 00 00 0a                                      beq #0x5a1870
005a17b4  24 80 84 e2                                      add r8, r4, #0x24
005a17b8  01 90 a0 e3                                      mov sb, #1
005a17bc  00 a0 a0 e3                                      mov sl, #0
005a17c0  10 00 00 ea                                      b #0x5a1808
005a17c4  10 00 18 e5                                      ldr r0, [r8, #-0x10]
005a17c8  10 30 08 e5                                      str r3, [r8, #-0x10]
005a17cc  00 00 50 e3                                      cmp r0, #0
005a17d0  00 00 00 0a                                      beq #0x5a17d8
005a17d4  6a ef f5 eb                                      bl #0x31d584
005a17d8  ff 30 a0 e3                                      mov r3, #0xff
005a17dc  0c a0 08 e5                                      str sl, [r8, #-0xc]
005a17e0  b6 30 48 e1                                      strh r3, [r8, #-6]
005a17e4  b4 a0 48 e1                                      strh sl, [r8, #-4]
005a17e8  b2 a0 48 e1                                      strh sl, [r8, #-2]
005a17ec  04 00 a0 e1                                      mov r0, r4
005a17f0  0b 10 a0 e1                                      mov r1, fp
005a17f4  00 fd ff eb                                      bl #0x5a0bfc
005a17f8  08 00 55 e1                                      cmp r5, r8
005a17fc  1b 00 00 0a                                      beq #0x5a1870
005a1800  10 60 86 e2                                      add r6, r6, #0x10
005a1804  10 80 88 e2                                      add r8, r8, #0x10
005a1808  b8 30 58 e1                                      ldrh r3, [r8, #-8]
005a180c  19 33 17 e0                                      ands r3, r7, sb, lsl r3
005a1810  eb ff ff 0a                                      beq #0x5a17c4
005a1814  00 30 96 e5                                      ldr r3, [r6]
005a1818  00 00 53 e3                                      cmp r3, #0
005a181c  04 20 93 15                                      ldrne r2, [r3, #4]
005a1820  01 20 82 12                                      addne r2, r2, #1
005a1824  04 20 83 15                                      strne r2, [r3, #4]
005a1828  10 00 18 e5                                      ldr r0, [r8, #-0x10]
005a182c  10 30 08 e5                                      str r3, [r8, #-0x10]
005a1830  00 00 50 e3                                      cmp r0, #0
005a1834  00 00 00 0a                                      beq #0x5a183c
005a1838  51 ef f5 eb                                      bl #0x31d584
005a183c  04 30 96 e5                                      ldr r3, [r6, #4]
005a1840  04 00 a0 e1                                      mov r0, r4
005a1844  0b 10 a0 e1                                      mov r1, fp
005a1848  0c 30 08 e5                                      str r3, [r8, #-0xc]
005a184c  b8 30 d6 e1                                      ldrh r3, [r6, #8]
005a1850  b6 30 48 e1                                      strh r3, [r8, #-6]
005a1854  bc 30 d6 e1                                      ldrh r3, [r6, #0xc]
005a1858  b4 30 48 e1                                      strh r3, [r8, #-4]
005a185c  be 30 d6 e1                                      ldrh r3, [r6, #0xe]
005a1860  b2 30 48 e1                                      strh r3, [r8, #-2]
005a1864  e4 fc ff eb                                      bl #0x5a0bfc
005a1868  08 00 55 e1                                      cmp r5, r8
005a186c  e3 ff ff 1a                                      bne #0x5a1800
005a1870  07 00 a0 e1                                      mov r0, r7
005a1874  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005abb58, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKS2_ib.clone.3
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStream const&, int, bool) [clone .clone.3]
; decoder-mode: arm
005abb58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005abb5c  02 50 a0 e1                                      mov r5, r2
005abb60  00 20 92 e5                                      ldr r2, [r2]
005abb64  03 70 a0 e1                                      mov r7, r3
005abb68  00 60 a0 e1                                      mov r6, r0
005abb6c  00 00 52 e3                                      cmp r2, #0
005abb70  04 30 92 15                                      ldrne r3, [r2, #4]
005abb74  01 40 a0 e1                                      mov r4, r1
005abb78  01 30 83 12                                      addne r3, r3, #1
005abb7c  04 30 82 15                                      strne r3, [r2, #4]
005abb80  00 00 91 e5                                      ldr r0, [r1]
005abb84  00 20 81 e5                                      str r2, [r1]
005abb88  00 00 50 e3                                      cmp r0, #0
005abb8c  00 00 00 0a                                      beq #0x5abb94
005abb90  7b c6 f5 eb                                      bl #0x31d584
005abb94  04 20 95 e5                                      ldr r2, [r5, #4]
005abb98  06 00 a0 e1                                      mov r0, r6
005abb9c  01 10 a0 e3                                      mov r1, #1
005abba0  04 20 84 e5                                      str r2, [r4, #4]
005abba4  ba 30 d5 e1                                      ldrh r3, [r5, #0xa]
005abba8  02 20 87 e0                                      add r2, r7, r2
005abbac  ba 30 c4 e1                                      strh r3, [r4, #0xa]
005abbb0  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
005abbb4  bc 30 c4 e1                                      strh r3, [r4, #0xc]
005abbb8  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
005abbbc  04 20 84 e5                                      str r2, [r4, #4]
005abbc0  be 50 c4 e1                                      strh r5, [r4, #0xe]
005abbc4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005abbc8  0b d4 ff ea                                      b #0x5a0bfc

; FUNCTION 0x005abbcc, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) [clone .clone.1]
; decoder-mode: arm
005abbcc  70 40 2d e9                                      push {r4, r5, r6, lr}
005abbd0  00 30 92 e5                                      ldr r3, [r2]
005abbd4  02 50 a0 e1                                      mov r5, r2
005abbd8  00 60 a0 e1                                      mov r6, r0
005abbdc  00 00 53 e3                                      cmp r3, #0
005abbe0  04 20 93 15                                      ldrne r2, [r3, #4]
005abbe4  01 40 a0 e1                                      mov r4, r1
005abbe8  01 20 82 12                                      addne r2, r2, #1
005abbec  04 20 83 15                                      strne r2, [r3, #4]
005abbf0  00 00 91 e5                                      ldr r0, [r1]
005abbf4  00 30 81 e5                                      str r3, [r1]
005abbf8  00 00 50 e3                                      cmp r0, #0
005abbfc  00 00 00 0a                                      beq #0x5abc04
005abc00  5f c6 f5 eb                                      bl #0x31d584
005abc04  04 30 95 e5                                      ldr r3, [r5, #4]
005abc08  06 00 a0 e1                                      mov r0, r6
005abc0c  00 10 a0 e3                                      mov r1, #0
005abc10  04 30 84 e5                                      str r3, [r4, #4]
005abc14  b8 30 d5 e1                                      ldrh r3, [r5, #8]
005abc18  ba 30 c4 e1                                      strh r3, [r4, #0xa]
005abc1c  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
005abc20  bc 30 c4 e1                                      strh r3, [r4, #0xc]
005abc24  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
005abc28  be 50 c4 e1                                      strh r5, [r4, #0xe]
005abc2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
005abc30  f1 d3 ff ea                                      b #0x5a0bfc

; FUNCTION 0x00647e78, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) [clone .clone.1]
; decoder-mode: arm
00647e78  70 40 2d e9                                      push {r4, r5, r6, lr}
00647e7c  00 30 92 e5                                      ldr r3, [r2]
00647e80  02 50 a0 e1                                      mov r5, r2
00647e84  00 60 a0 e1                                      mov r6, r0
00647e88  00 00 53 e3                                      cmp r3, #0
00647e8c  04 20 93 15                                      ldrne r2, [r3, #4]
00647e90  01 40 a0 e1                                      mov r4, r1
00647e94  01 20 82 12                                      addne r2, r2, #1
00647e98  04 20 83 15                                      strne r2, [r3, #4]
00647e9c  00 00 91 e5                                      ldr r0, [r1]
00647ea0  00 30 81 e5                                      str r3, [r1]
00647ea4  00 00 50 e3                                      cmp r0, #0
00647ea8  00 00 00 0a                                      beq #0x647eb0
00647eac  b4 55 f3 eb                                      bl #0x31d584
00647eb0  04 30 95 e5                                      ldr r3, [r5, #4]
00647eb4  06 00 a0 e1                                      mov r0, r6
00647eb8  01 10 a0 e3                                      mov r1, #1
00647ebc  04 30 84 e5                                      str r3, [r4, #4]
00647ec0  b8 30 d5 e1                                      ldrh r3, [r5, #8]
00647ec4  ba 30 c4 e1                                      strh r3, [r4, #0xa]
00647ec8  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
00647ecc  bc 30 c4 e1                                      strh r3, [r4, #0xc]
00647ed0  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
00647ed4  be 50 c4 e1                                      strh r5, [r4, #0xe]
00647ed8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00647edc  46 63 fd ea                                      b #0x5a0bfc

; FUNCTION 0x00647ee0, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKS2_ib.clone.2
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStream const&, int, bool) [clone .clone.2]
; decoder-mode: arm
00647ee0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00647ee4  02 50 a0 e1                                      mov r5, r2
00647ee8  00 20 92 e5                                      ldr r2, [r2]
00647eec  03 70 a0 e1                                      mov r7, r3
00647ef0  00 60 a0 e1                                      mov r6, r0
00647ef4  00 00 52 e3                                      cmp r2, #0
00647ef8  04 30 92 15                                      ldrne r3, [r2, #4]
00647efc  01 40 a0 e1                                      mov r4, r1
00647f00  01 30 83 12                                      addne r3, r3, #1
00647f04  04 30 82 15                                      strne r3, [r2, #4]
00647f08  00 00 91 e5                                      ldr r0, [r1]
00647f0c  00 20 81 e5                                      str r2, [r1]
00647f10  00 00 50 e3                                      cmp r0, #0
00647f14  00 00 00 0a                                      beq #0x647f1c
00647f18  99 55 f3 eb                                      bl #0x31d584
00647f1c  04 20 95 e5                                      ldr r2, [r5, #4]
00647f20  06 00 a0 e1                                      mov r0, r6
00647f24  01 10 a0 e3                                      mov r1, #1
00647f28  04 20 84 e5                                      str r2, [r4, #4]
00647f2c  ba 30 d5 e1                                      ldrh r3, [r5, #0xa]
00647f30  02 20 87 e0                                      add r2, r7, r2
00647f34  ba 30 c4 e1                                      strh r3, [r4, #0xa]
00647f38  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
00647f3c  bc 30 c4 e1                                      strh r3, [r4, #0xc]
00647f40  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
00647f44  04 20 84 e5                                      str r2, [r4, #4]
00647f48  be 50 c4 e1                                      strh r5, [r4, #0xe]
00647f4c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00647f50  29 63 fd ea                                      b #0x5a0bfc

; FUNCTION 0x00649eb4, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) [clone .clone.1]
; decoder-mode: arm
00649eb4  70 40 2d e9                                      push {r4, r5, r6, lr}
00649eb8  00 30 92 e5                                      ldr r3, [r2]
00649ebc  02 50 a0 e1                                      mov r5, r2
00649ec0  00 60 a0 e1                                      mov r6, r0
00649ec4  00 00 53 e3                                      cmp r3, #0
00649ec8  04 20 93 15                                      ldrne r2, [r3, #4]
00649ecc  01 40 a0 e1                                      mov r4, r1
00649ed0  01 20 82 12                                      addne r2, r2, #1
00649ed4  04 20 83 15                                      strne r2, [r3, #4]
00649ed8  00 00 91 e5                                      ldr r0, [r1]
00649edc  00 30 81 e5                                      str r3, [r1]
00649ee0  00 00 50 e3                                      cmp r0, #0
00649ee4  00 00 00 0a                                      beq #0x649eec
00649ee8  a5 4d f3 eb                                      bl #0x31d584
00649eec  04 30 95 e5                                      ldr r3, [r5, #4]
00649ef0  06 00 a0 e1                                      mov r0, r6
00649ef4  01 10 a0 e3                                      mov r1, #1
00649ef8  04 30 84 e5                                      str r3, [r4, #4]
00649efc  b8 30 d5 e1                                      ldrh r3, [r5, #8]
00649f00  ba 30 c4 e1                                      strh r3, [r4, #0xa]
00649f04  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
00649f08  bc 30 c4 e1                                      strh r3, [r4, #0xc]
00649f0c  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
00649f10  be 50 c4 e1                                      strh r5, [r4, #0xe]
00649f14  70 40 bd e8                                      pop {r4, r5, r6, lr}
00649f18  37 5b fd ea                                      b #0x5a0bfc

; FUNCTION 0x00663ca8, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams15setStreamBufferEPNS0_13SVertexStreamERKN5boost13intrusive_ptrINS0_7IBufferEEEb.clone.1
; demangled: glitch::video::CVertexStreams::setStreamBuffer(glitch::video::SVertexStream*, boost::intrusive_ptr<glitch::video::IBuffer> const&, bool) [clone .clone.1]
; decoder-mode: arm
00663ca8  10 40 2d e9                                      push {r4, lr}
00663cac  00 30 92 e5                                      ldr r3, [r2]
00663cb0  00 40 a0 e1                                      mov r4, r0
00663cb4  00 00 53 e3                                      cmp r3, #0
00663cb8  04 20 93 15                                      ldrne r2, [r3, #4]
00663cbc  01 20 82 12                                      addne r2, r2, #1
00663cc0  04 20 83 15                                      strne r2, [r3, #4]
00663cc4  00 00 91 e5                                      ldr r0, [r1]
00663cc8  00 30 81 e5                                      str r3, [r1]
00663ccc  00 00 50 e3                                      cmp r0, #0
00663cd0  00 00 00 0a                                      beq #0x663cd8
00663cd4  2a e6 f2 eb                                      bl #0x31d584
00663cd8  04 00 a0 e1                                      mov r0, r4
00663cdc  01 10 a0 e3                                      mov r1, #1
00663ce0  10 40 bd e8                                      pop {r4, lr}
00663ce4  c4 f3 fc ea                                      b #0x5a0bfc

; FUNCTION 0x0066f884, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) [clone .clone.1]
; decoder-mode: arm
0066f884  70 40 2d e9                                      push {r4, r5, r6, lr}
0066f888  00 30 92 e5                                      ldr r3, [r2]
0066f88c  02 50 a0 e1                                      mov r5, r2
0066f890  00 60 a0 e1                                      mov r6, r0
0066f894  00 00 53 e3                                      cmp r3, #0
0066f898  04 20 93 15                                      ldrne r2, [r3, #4]
0066f89c  01 40 a0 e1                                      mov r4, r1
0066f8a0  01 20 82 12                                      addne r2, r2, #1
0066f8a4  04 20 83 15                                      strne r2, [r3, #4]
0066f8a8  00 00 91 e5                                      ldr r0, [r1]
0066f8ac  00 30 81 e5                                      str r3, [r1]
0066f8b0  00 00 50 e3                                      cmp r0, #0
0066f8b4  00 00 00 0a                                      beq #0x66f8bc
0066f8b8  31 b7 f2 eb                                      bl #0x31d584
0066f8bc  04 30 95 e5                                      ldr r3, [r5, #4]
0066f8c0  06 00 a0 e1                                      mov r0, r6
0066f8c4  01 10 a0 e3                                      mov r1, #1
0066f8c8  04 30 84 e5                                      str r3, [r4, #4]
0066f8cc  b8 30 d5 e1                                      ldrh r3, [r5, #8]
0066f8d0  ba 30 c4 e1                                      strh r3, [r4, #0xa]
0066f8d4  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
0066f8d8  bc 30 c4 e1                                      strh r3, [r4, #0xc]
0066f8dc  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
0066f8e0  be 50 c4 e1                                      strh r5, [r4, #0xe]
0066f8e4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0066f8e8  c3 c4 fc ea                                      b #0x5a0bfc

; FUNCTION 0x00670d64, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) [clone .clone.1]
; decoder-mode: arm
00670d64  70 40 2d e9                                      push {r4, r5, r6, lr}
00670d68  00 30 92 e5                                      ldr r3, [r2]
00670d6c  02 50 a0 e1                                      mov r5, r2
00670d70  00 60 a0 e1                                      mov r6, r0
00670d74  00 00 53 e3                                      cmp r3, #0
00670d78  04 20 93 15                                      ldrne r2, [r3, #4]
00670d7c  01 40 a0 e1                                      mov r4, r1
00670d80  01 20 82 12                                      addne r2, r2, #1
00670d84  04 20 83 15                                      strne r2, [r3, #4]
00670d88  00 00 91 e5                                      ldr r0, [r1]
00670d8c  00 30 81 e5                                      str r3, [r1]
00670d90  00 00 50 e3                                      cmp r0, #0
00670d94  00 00 00 0a                                      beq #0x670d9c
00670d98  f9 b1 f2 eb                                      bl #0x31d584
00670d9c  04 30 95 e5                                      ldr r3, [r5, #4]
00670da0  06 00 a0 e1                                      mov r0, r6
00670da4  01 10 a0 e3                                      mov r1, #1
00670da8  04 30 84 e5                                      str r3, [r4, #4]
00670dac  b8 30 d5 e1                                      ldrh r3, [r5, #8]
00670db0  ba 30 c4 e1                                      strh r3, [r4, #0xa]
00670db4  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
00670db8  bc 30 c4 e1                                      strh r3, [r4, #0xc]
00670dbc  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
00670dc0  be 50 c4 e1                                      strh r5, [r4, #0xe]
00670dc4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00670dc8  8b bf fc ea                                      b #0x5a0bfc

; FUNCTION 0x006b6194, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.1
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) [clone .clone.1]
; decoder-mode: arm
006b6194  70 40 2d e9                                      push {r4, r5, r6, lr}
006b6198  00 30 92 e5                                      ldr r3, [r2]
006b619c  02 50 a0 e1                                      mov r5, r2
006b61a0  00 60 a0 e1                                      mov r6, r0
006b61a4  00 00 53 e3                                      cmp r3, #0
006b61a8  04 20 93 15                                      ldrne r2, [r3, #4]
006b61ac  01 40 a0 e1                                      mov r4, r1
006b61b0  01 20 82 12                                      addne r2, r2, #1
006b61b4  04 20 83 15                                      strne r2, [r3, #4]
006b61b8  00 00 91 e5                                      ldr r0, [r1]
006b61bc  00 30 81 e5                                      str r3, [r1]
006b61c0  00 00 50 e3                                      cmp r0, #0
006b61c4  00 00 00 0a                                      beq #0x6b61cc
006b61c8  ed 9c f1 eb                                      bl #0x31d584
006b61cc  04 30 95 e5                                      ldr r3, [r5, #4]
006b61d0  06 00 a0 e1                                      mov r0, r6
006b61d4  00 10 a0 e3                                      mov r1, #0
006b61d8  04 30 84 e5                                      str r3, [r4, #4]
006b61dc  b8 30 d5 e1                                      ldrh r3, [r5, #8]
006b61e0  ba 30 c4 e1                                      strh r3, [r4, #0xa]
006b61e4  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
006b61e8  bc 30 c4 e1                                      strh r3, [r4, #0xc]
006b61ec  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
006b61f0  be 50 c4 e1                                      strh r5, [r4, #0xe]
006b61f4  70 40 bd e8                                      pop {r4, r5, r6, lr}
006b61f8  7f aa fb ea                                      b #0x5a0bfc

; FUNCTION 0x006ce4d4, declared_size=104, range_size=104, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb.clone.3
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool) [clone .clone.3]
; decoder-mode: arm
006ce4d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006ce4d8  00 30 92 e5                                      ldr r3, [r2]
006ce4dc  02 50 a0 e1                                      mov r5, r2
006ce4e0  00 60 a0 e1                                      mov r6, r0
006ce4e4  00 00 53 e3                                      cmp r3, #0
006ce4e8  04 20 93 15                                      ldrne r2, [r3, #4]
006ce4ec  01 40 a0 e1                                      mov r4, r1
006ce4f0  01 20 82 12                                      addne r2, r2, #1
006ce4f4  04 20 83 15                                      strne r2, [r3, #4]
006ce4f8  00 00 91 e5                                      ldr r0, [r1]
006ce4fc  00 30 81 e5                                      str r3, [r1]
006ce500  00 00 50 e3                                      cmp r0, #0
006ce504  00 00 00 0a                                      beq #0x6ce50c
006ce508  1d 3c f1 eb                                      bl #0x31d584
006ce50c  04 30 95 e5                                      ldr r3, [r5, #4]
006ce510  06 00 a0 e1                                      mov r0, r6
006ce514  00 10 a0 e3                                      mov r1, #0
006ce518  04 30 84 e5                                      str r3, [r4, #4]
006ce51c  b8 30 d5 e1                                      ldrh r3, [r5, #8]
006ce520  ba 30 c4 e1                                      strh r3, [r4, #0xa]
006ce524  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
006ce528  bc 30 c4 e1                                      strh r3, [r4, #0xc]
006ce52c  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
006ce530  be 50 c4 e1                                      strh r5, [r4, #0xe]
006ce534  70 40 bd e8                                      pop {r4, r5, r6, lr}
006ce538  af 49 fb ea                                      b #0x5a0bfc

; FUNCTION 0x006dc848, declared_size=64, range_size=64, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams15setStreamBufferEPNS0_13SVertexStreamERKN5boost13intrusive_ptrINS0_7IBufferEEEb.clone.0
; demangled: glitch::video::CVertexStreams::setStreamBuffer(glitch::video::SVertexStream*, boost::intrusive_ptr<glitch::video::IBuffer> const&, bool) [clone .clone.0]
; decoder-mode: arm
006dc848  10 40 2d e9                                      push {r4, lr}
006dc84c  00 30 92 e5                                      ldr r3, [r2]
006dc850  00 40 a0 e1                                      mov r4, r0
006dc854  00 00 53 e3                                      cmp r3, #0
006dc858  04 20 93 15                                      ldrne r2, [r3, #4]
006dc85c  01 20 82 12                                      addne r2, r2, #1
006dc860  04 20 83 15                                      strne r2, [r3, #4]
006dc864  00 00 91 e5                                      ldr r0, [r1]
006dc868  00 30 81 e5                                      str r3, [r1]
006dc86c  00 00 50 e3                                      cmp r0, #0
006dc870  00 00 00 0a                                      beq #0x6dc878
006dc874  42 03 f1 eb                                      bl #0x31d584
006dc878  04 00 a0 e1                                      mov r0, r4
006dc87c  01 10 a0 e3                                      mov r1, #1
006dc880  10 40 bd e8                                      pop {r4, lr}
006dc884  dc 10 fb ea                                      b #0x5a0bfc

; FUNCTION 0x007d46fc, declared_size=108, range_size=108, mode=arm
; class-group: glitch::video::CVertexStreams
; alias: _ZN6glitch5video14CVertexStreams9setStreamEPNS0_13SVertexStreamERKNS0_17SVertexStreamDataEb
; demangled: glitch::video::CVertexStreams::setStream(glitch::video::SVertexStream*, glitch::video::SVertexStreamData const&, bool)
; decoder-mode: arm
007d46fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d4700  02 50 a0 e1                                      mov r5, r2
007d4704  00 20 92 e5                                      ldr r2, [r2]
007d4708  03 70 a0 e1                                      mov r7, r3
007d470c  00 60 a0 e1                                      mov r6, r0
007d4710  00 00 52 e3                                      cmp r2, #0
007d4714  04 30 92 15                                      ldrne r3, [r2, #4]
007d4718  01 40 a0 e1                                      mov r4, r1
007d471c  01 30 83 12                                      addne r3, r3, #1
007d4720  04 30 82 15                                      strne r3, [r2, #4]
007d4724  00 00 91 e5                                      ldr r0, [r1]
007d4728  00 20 81 e5                                      str r2, [r1]
007d472c  00 00 50 e3                                      cmp r0, #0
007d4730  00 00 00 0a                                      beq #0x7d4738
007d4734  92 23 ed eb                                      bl #0x31d584
007d4738  04 20 95 e5                                      ldr r2, [r5, #4]
007d473c  06 00 a0 e1                                      mov r0, r6
007d4740  07 10 a0 e1                                      mov r1, r7
007d4744  04 20 84 e5                                      str r2, [r4, #4]
007d4748  b8 30 d5 e1                                      ldrh r3, [r5, #8]
007d474c  ba 30 c4 e1                                      strh r3, [r4, #0xa]
007d4750  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
007d4754  bc 30 c4 e1                                      strh r3, [r4, #0xc]
007d4758  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
007d475c  be 50 c4 e1                                      strh r5, [r4, #0xe]
007d4760  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007d4764  24 31 f7 ea                                      b #0x5a0bfc
