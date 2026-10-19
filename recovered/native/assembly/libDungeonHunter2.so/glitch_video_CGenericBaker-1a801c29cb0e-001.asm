; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00608958, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CGenericBaker
; alias: _ZNK6glitch5video13CGenericBaker21getVertexAttributeMapEv
; demangled: glitch::video::CGenericBaker::getVertexAttributeMap() const
; decoder-mode: arm
00608958  0c 00 80 e2                                      add r0, r0, #0xc
0060895c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00609a18, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::CGenericBaker
; alias: _ZN6glitch5video13CGenericBakerD1Ev
; demangled: glitch::video::CGenericBaker::~CGenericBaker()
; decoder-mode: arm
00609a18  48 30 9f e5                                      ldr r3, [pc, #0x48]
00609a1c  48 20 9f e5                                      ldr r2, [pc, #0x48]
00609a20  10 40 2d e9                                      push {r4, lr}
00609a24  03 30 8f e0                                      add r3, pc, r3
00609a28  02 20 93 e7                                      ldr r2, [r3, r2]
00609a2c  00 40 a0 e1                                      mov r4, r0
00609a30  08 20 82 e2                                      add r2, r2, #8
00609a34  14 20 80 e4                                      str r2, [r0], #0x14
00609a38  6a 1c f4 eb                                      bl #0x310be8
00609a3c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00609a40  00 00 50 e3                                      cmp r0, #0
00609a44  05 00 00 0a                                      beq #0x609a60
00609a48  00 30 90 e5                                      ldr r3, [r0]
00609a4c  01 30 43 e2                                      sub r3, r3, #1
00609a50  00 00 53 e3                                      cmp r3, #0
00609a54  00 30 80 e5                                      str r3, [r0]
00609a58  00 00 00 1a                                      bne #0x609a60
00609a5c  13 12 f4 eb                                      bl #0x30e2b0
00609a60  04 00 a0 e1                                      mov r0, r4
00609a64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00609a68  6c b0 38 00 1c 0a 00 00                          .byte 0x6c, 0xb0, 0x38, 0x00, 0x1c, 0x0a, 0x00, 0x00

; FUNCTION 0x00609a70, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CGenericBaker
; alias: _ZN6glitch5video13CGenericBakerD0Ev
; demangled: glitch::video::CGenericBaker::~CGenericBaker()
; decoder-mode: arm
00609a70  10 40 2d e9                                      push {r4, lr}
00609a74  00 40 a0 e1                                      mov r4, r0
00609a78  e6 ff ff eb                                      bl #0x609a18
00609a7c  04 00 a0 e1                                      mov r0, r4
00609a80  0a 12 f4 eb                                      bl #0x30e2b0
00609a84  04 00 a0 e1                                      mov r0, r4
00609a88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00609a8c, declared_size=280, range_size=280, mode=arm
; class-group: glitch::video::CGenericBaker
; alias: _ZNK6glitch5video13CGenericBaker14initParametersERKN5boost13intrusive_ptrIKNS0_9CMaterialEEEh
; demangled: glitch::video::CGenericBaker::initParameters(boost::intrusive_ptr<glitch::video::CMaterial const> const&, unsigned char) const
; decoder-mode: arm
00609a8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00609a90  00 30 91 e5                                      ldr r3, [r1]
00609a94  00 a0 a0 e1                                      mov sl, r0
00609a98  01 50 a0 e1                                      mov r5, r1
00609a9c  04 10 93 e5                                      ldr r1, [r3, #4]
00609aa0  14 30 ba e5                                      ldr r3, [sl, #0x14]!
00609aa4  0c d0 4d e2                                      sub sp, sp, #0xc
00609aa8  18 10 91 e5                                      ldr r1, [r1, #0x18]
00609aac  04 30 93 e5                                      ldr r3, [r3, #4]
00609ab0  00 60 a0 e1                                      mov r6, r0
00609ab4  00 00 a0 e3                                      mov r0, #0
00609ab8  00 00 8d e5                                      str r0, [sp]
00609abc  18 c0 93 e5                                      ldr ip, [r3, #0x18]
00609ac0  0c 00 a0 e3                                      mov r0, #0xc
00609ac4  90 12 22 e0                                      mla r2, r0, r2, r1
00609ac8  08 c0 9c e5                                      ldr ip, [ip, #8]
00609acc  08 30 92 e5                                      ldr r3, [r2, #8]
00609ad0  04 c0 8d e5                                      str ip, [sp, #4]
00609ad4  24 70 93 e5                                      ldr r7, [r3, #0x24]
00609ad8  24 80 9c e5                                      ldr r8, [ip, #0x24]
00609adc  03 00 9d e8                                      ldm sp, {r0, r1}
00609ae0  20 30 91 e5                                      ldr r3, [r1, #0x20]
00609ae4  05 20 80 e2                                      add r2, r0, #5
00609ae8  82 31 83 e0                                      add r3, r3, r2, lsl #3
00609aec  b4 20 d3 e1                                      ldrh r2, [r3, #4]
00609af0  b6 30 d3 e1                                      ldrh r3, [r3, #6]
00609af4  03 30 62 e0                                      rsb r3, r2, r3
00609af8  73 30 ff e6                                      uxth r3, r3
00609afc  00 00 53 e3                                      cmp r3, #0
00609b00  20 00 00 0a                                      beq #0x609b88
00609b04  01 b0 43 e2                                      sub fp, r3, #1
00609b08  7b b0 ff e6                                      uxth fp, fp
00609b0c  01 b0 8b e2                                      add fp, fp, #1
00609b10  8b b0 a0 e1                                      lsl fp, fp, #1
00609b14  00 40 a0 e3                                      mov r4, #0
00609b18  14 30 96 e5                                      ldr r3, [r6, #0x14]
00609b1c  b4 10 98 e1                                      ldrh r1, [r8, r4]
00609b20  00 20 a0 e3                                      mov r2, #0
00609b24  04 30 93 e5                                      ldr r3, [r3, #4]
00609b28  00 c0 a0 e3                                      mov ip, #0
00609b2c  be 00 d3 e1                                      ldrh r0, [r3, #0xe]
00609b30  01 00 50 e1                                      cmp r0, r1
00609b34  00 00 95 e5                                      ldr r0, [r5]
00609b38  20 20 93 85                                      ldrhi r2, [r3, #0x20]
00609b3c  b4 30 97 e1                                      ldrh r3, [r7, r4]
00609b40  04 00 90 e5                                      ldr r0, [r0, #4]
00609b44  01 22 82 80                                      addhi r2, r2, r1, lsl #4
00609b48  02 40 84 e2                                      add r4, r4, #2
00609b4c  be 90 d0 e1                                      ldrh sb, [r0, #0xe]
00609b50  03 00 59 e1                                      cmp sb, r3
00609b54  20 c0 90 85                                      ldrhi ip, [r0, #0x20]
00609b58  0a 00 a0 e1                                      mov r0, sl
00609b5c  03 c2 8c 80                                      addhi ip, ip, r3, lsl #4
00609b60  00 00 52 e3                                      cmp r2, #0
00609b64  05 20 a0 e1                                      mov r2, r5
00609b68  02 00 00 0a                                      beq #0x609b78
00609b6c  00 00 5c e3                                      cmp ip, #0
00609b70  00 00 00 0a                                      beq #0x609b78
00609b74  4e 5f 02 eb                                      bl #0x6a18b4
00609b78  0b 00 54 e1                                      cmp r4, fp
00609b7c  e5 ff ff 1a                                      bne #0x609b18
00609b80  04 70 87 e0                                      add r7, r7, r4
00609b84  04 80 88 e0                                      add r8, r8, r4
00609b88  00 10 9d e5                                      ldr r1, [sp]
00609b8c  01 10 81 e2                                      add r1, r1, #1
00609b90  02 00 51 e3                                      cmp r1, #2
00609b94  00 10 8d e5                                      str r1, [sp]
00609b98  cf ff ff 1a                                      bne #0x609adc
00609b9c  0c d0 8d e2                                      add sp, sp, #0xc
00609ba0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00609ba4, declared_size=388, range_size=388, mode=arm
; class-group: glitch::video::CGenericBaker
; alias: _ZNK6glitch5video13CGenericBaker21configureAppendBufferERKN5boost13intrusive_ptrINS_5scene17CAppendMeshBufferEEE
; demangled: glitch::video::CGenericBaker::configureAppendBuffer(boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> const&) const
; decoder-mode: arm
00609ba4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00609ba8  00 60 a0 e1                                      mov r6, r0
00609bac  08 d0 4d e2                                      sub sp, sp, #8
00609bb0  00 00 91 e5                                      ldr r0, [r1]
00609bb4  01 70 a0 e1                                      mov r7, r1
00609bb8  fd bb 02 eb                                      bl #0x6b8bb4
00609bbc  08 30 96 e5                                      ldr r3, [r6, #8]
00609bc0  3c 50 d3 e5                                      ldrb r5, [r3, #0x3c]
00609bc4  24 40 93 e5                                      ldr r4, [r3, #0x24]
00609bc8  85 51 b0 e1                                      lsls r5, r5, #3
00609bcc  3a 00 00 0a                                      beq #0x609cbc
00609bd0  08 40 84 e2                                      add r4, r4, #8
00609bd4  00 50 a0 e3                                      mov r5, #0
00609bd8  04 a0 a0 e3                                      mov sl, #4
00609bdc  03 80 a0 e3                                      mov r8, #3
00609be0  02 90 a0 e3                                      mov sb, #2
00609be4  b4 10 54 e1                                      ldrh r1, [r4, #-4]
00609be8  01 30 a0 e1                                      mov r3, r1
00609bec  1b 00 51 e3                                      cmp r1, #0x1b
00609bf0  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
00609bf4  25 00 00 ea                                      b #0x609c90
00609bf8  1a 00 00 ea                                      b #0x609c68
00609bfc  33 00 00 ea                                      b #0x609cd0
00609c00  32 00 00 ea                                      b #0x609cd0
00609c04  31 00 00 ea                                      b #0x609cd0
00609c08  30 00 00 ea                                      b #0x609cd0
00609c0c  2f 00 00 ea                                      b #0x609cd0
00609c10  2e 00 00 ea                                      b #0x609cd0
00609c14  2d 00 00 ea                                      b #0x609cd0
00609c18  2c 00 00 ea                                      b #0x609cd0
00609c1c  2b 00 00 ea                                      b #0x609cd0
00609c20  2a 00 00 ea                                      b #0x609cd0
00609c24  29 00 00 ea                                      b #0x609cd0
00609c28  28 00 00 ea                                      b #0x609cd0
00609c2c  27 00 00 ea                                      b #0x609cd0
00609c30  26 00 00 ea                                      b #0x609cd0
00609c34  25 00 00 ea                                      b #0x609cd0
00609c38  24 00 00 ea                                      b #0x609cd0
00609c3c  09 00 00 ea                                      b #0x609c68
00609c40  2d 00 00 ea                                      b #0x609cfc
00609c44  2c 00 00 ea                                      b #0x609cfc
00609c48  06 00 00 ea                                      b #0x609c68
00609c4c  05 00 00 ea                                      b #0x609c68
00609c50  04 00 00 ea                                      b #0x609c68
00609c54  03 00 00 ea                                      b #0x609c68
00609c58  02 00 00 ea                                      b #0x609c68
00609c5c  01 00 00 ea                                      b #0x609c68
00609c60  00 00 00 ea                                      b #0x609c68
00609c64  ff ff ff ea                                      b #0x609c68
00609c68  00 00 97 e5                                      ldr r0, [r7]
00609c6c  71 10 ef e6                                      uxtb r1, r1
00609c70  05 20 a0 e1                                      mov r2, r5
00609c74  06 30 a0 e3                                      mov r3, #6
00609c78  00 80 8d e5                                      str r8, [sp]
00609c7c  33 bb 02 eb                                      bl #0x6b8950
00609c80  b4 10 54 e1                                      ldrh r1, [r4, #-4]
00609c84  0c 50 85 e2                                      add r5, r5, #0xc
00609c88  75 50 ff e6                                      uxth r5, r5
00609c8c  01 30 a0 e1                                      mov r3, r1
00609c90  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00609c94  04 20 a0 e1                                      mov r2, r4
00609c98  08 40 84 e2                                      add r4, r4, #8
00609c9c  03 30 80 e0                                      add r3, r0, r3
00609ca0  04 10 c3 e5                                      strb r1, [r3, #4]
00609ca4  08 30 96 e5                                      ldr r3, [r6, #8]
00609ca8  24 10 93 e5                                      ldr r1, [r3, #0x24]
00609cac  3c 30 d3 e5                                      ldrb r3, [r3, #0x3c]
00609cb0  83 31 81 e0                                      add r3, r1, r3, lsl #3
00609cb4  03 00 52 e1                                      cmp r2, r3
00609cb8  c9 ff ff 1a                                      bne #0x609be4
00609cbc  00 00 97 e5                                      ldr r0, [r7]
00609cc0  05 10 a0 e1                                      mov r1, r5
00609cc4  08 d0 8d e2                                      add sp, sp, #8
00609cc8  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00609ccc  d8 ba 02 ea                                      b #0x6b8834
00609cd0  00 00 97 e5                                      ldr r0, [r7]
00609cd4  71 10 ef e6                                      uxtb r1, r1
00609cd8  05 20 a0 e1                                      mov r2, r5
00609cdc  06 30 a0 e3                                      mov r3, #6
00609ce0  00 90 8d e5                                      str sb, [sp]
00609ce4  19 bb 02 eb                                      bl #0x6b8950
00609ce8  b4 10 54 e1                                      ldrh r1, [r4, #-4]
00609cec  08 50 85 e2                                      add r5, r5, #8
00609cf0  75 50 ff e6                                      uxth r5, r5
00609cf4  01 30 a0 e1                                      mov r3, r1
00609cf8  e4 ff ff ea                                      b #0x609c90
00609cfc  00 00 97 e5                                      ldr r0, [r7]
00609d00  71 10 ef e6                                      uxtb r1, r1
00609d04  05 20 a0 e1                                      mov r2, r5
00609d08  01 30 a0 e3                                      mov r3, #1
00609d0c  00 a0 8d e5                                      str sl, [sp]
00609d10  0e bb 02 eb                                      bl #0x6b8950
00609d14  b4 10 54 e1                                      ldrh r1, [r4, #-4]
00609d18  04 50 85 e2                                      add r5, r5, #4
00609d1c  75 50 ff e6                                      uxth r5, r5
00609d20  01 30 a0 e1                                      mov r3, r1
00609d24  d9 ff ff ea                                      b #0x609c90

; FUNCTION 0x00609d28, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::CGenericBaker
; alias: _ZN6glitch5video13CGenericBakerC1EPKNS0_7IShaderE
; demangled: glitch::video::CGenericBaker::CGenericBaker(glitch::video::IShader const*)
; decoder-mode: arm
00609d28  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00609d2c  70 40 2d e9                                      push {r4, r5, r6, lr}
00609d30  78 20 9f e5                                      ldr r2, [pc, #0x78]
00609d34  03 30 8f e0                                      add r3, pc, r3
00609d38  08 d0 4d e2                                      sub sp, sp, #8
00609d3c  02 20 93 e7                                      ldr r2, [r3, r2]
00609d40  00 40 a0 e1                                      mov r4, r0
00609d44  08 50 8d e2                                      add r5, sp, #8
00609d48  08 20 82 e2                                      add r2, r2, #8
00609d4c  00 00 a0 e3                                      mov r0, #0
00609d50  00 20 84 e5                                      str r2, [r4]
00609d54  03 00 84 e9                                      stmib r4, {r0, r1}
00609d58  00 10 a0 e1                                      mov r1, r0
00609d5c  04 00 25 e5                                      str r0, [r5, #-4]!
00609d60  24 00 a0 e3                                      mov r0, #0x24
00609d64  10 a9 fc eb                                      bl #0x5341ac
00609d68  05 10 a0 e1                                      mov r1, r5
00609d6c  00 60 a0 e1                                      mov r6, r0
00609d70  f8 5a fe eb                                      bl #0x5a0958
00609d74  00 00 56 e3                                      cmp r6, #0
00609d78  0c 60 84 e5                                      str r6, [r4, #0xc]
00609d7c  00 30 96 15                                      ldrne r3, [r6]
00609d80  05 00 a0 e1                                      mov r0, r5
00609d84  01 30 83 12                                      addne r3, r3, #1
00609d88  00 30 86 15                                      strne r3, [r6]
00609d8c  7f 53 f5 eb                                      bl #0x35eb90
00609d90  00 30 a0 e3                                      mov r3, #0
00609d94  14 30 84 e5                                      str r3, [r4, #0x14]
00609d98  00 30 e0 e3                                      mvn r3, #0
00609d9c  b0 31 c4 e1                                      strh r3, [r4, #0x10]
00609da0  04 00 a0 e1                                      mov r0, r4
00609da4  08 d0 8d e2                                      add sp, sp, #8
00609da8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00609dac  5c ad 38 00 1c 0a 00 00                          .byte 0x5c, 0xad, 0x38, 0x00, 0x1c, 0x0a, 0x00, 0x00

; FUNCTION 0x00609db4, declared_size=140, range_size=140, mode=arm
; class-group: glitch::video::CGenericBaker
; alias: _ZN6glitch5video13CGenericBakerC2EPKNS0_7IShaderE
; demangled: glitch::video::CGenericBaker::CGenericBaker(glitch::video::IShader const*)
; decoder-mode: arm
00609db4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00609db8  70 40 2d e9                                      push {r4, r5, r6, lr}
00609dbc  78 20 9f e5                                      ldr r2, [pc, #0x78]
00609dc0  03 30 8f e0                                      add r3, pc, r3
00609dc4  08 d0 4d e2                                      sub sp, sp, #8
00609dc8  02 20 93 e7                                      ldr r2, [r3, r2]
00609dcc  00 40 a0 e1                                      mov r4, r0
00609dd0  08 50 8d e2                                      add r5, sp, #8
00609dd4  08 20 82 e2                                      add r2, r2, #8
00609dd8  00 00 a0 e3                                      mov r0, #0
00609ddc  00 20 84 e5                                      str r2, [r4]
00609de0  03 00 84 e9                                      stmib r4, {r0, r1}
00609de4  00 10 a0 e1                                      mov r1, r0
00609de8  04 00 25 e5                                      str r0, [r5, #-4]!
00609dec  24 00 a0 e3                                      mov r0, #0x24
00609df0  ed a8 fc eb                                      bl #0x5341ac
00609df4  05 10 a0 e1                                      mov r1, r5
00609df8  00 60 a0 e1                                      mov r6, r0
00609dfc  d5 5a fe eb                                      bl #0x5a0958
00609e00  00 00 56 e3                                      cmp r6, #0
00609e04  0c 60 84 e5                                      str r6, [r4, #0xc]
00609e08  00 30 96 15                                      ldrne r3, [r6]
00609e0c  05 00 a0 e1                                      mov r0, r5
00609e10  01 30 83 12                                      addne r3, r3, #1
00609e14  00 30 86 15                                      strne r3, [r6]
00609e18  5c 53 f5 eb                                      bl #0x35eb90
00609e1c  00 30 a0 e3                                      mov r3, #0
00609e20  14 30 84 e5                                      str r3, [r4, #0x14]
00609e24  00 30 e0 e3                                      mvn r3, #0
00609e28  b0 31 c4 e1                                      strh r3, [r4, #0x10]
00609e2c  04 00 a0 e1                                      mov r0, r4
00609e30  08 d0 8d e2                                      add sp, sp, #8
00609e34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00609e38  d0 ac 38 00 1c 0a 00 00                          .byte 0xd0, 0xac, 0x38, 0x00, 0x1c, 0x0a, 0x00, 0x00

; FUNCTION 0x00609e40, declared_size=840, range_size=840, mode=arm
; class-group: glitch::video::CGenericBaker
; alias: _ZNK6glitch5video13CGenericBaker16getBatchMaterialERKN5boost13intrusive_ptrIKNS0_9CMaterialEEEh
; demangled: glitch::video::CGenericBaker::getBatchMaterial(boost::intrusive_ptr<glitch::video::CMaterial const> const&, unsigned char) const
; decoder-mode: arm
00609e40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00609e44  28 43 9f e5                                      ldr r4, [pc, #0x328]
00609e48  28 93 9f e5                                      ldr sb, [pc, #0x328]
00609e4c  02 80 a0 e1                                      mov r8, r2
00609e50  04 40 8f e0                                      add r4, pc, r4
00609e54  09 c0 94 e7                                      ldr ip, [r4, sb]
00609e58  00 20 92 e5                                      ldr r2, [r2]
00609e5c  64 d0 4d e2                                      sub sp, sp, #0x64
00609e60  00 c0 9c e5                                      ldr ip, [ip]
00609e64  01 50 a0 e1                                      mov r5, r1
00609e68  b0 11 d1 e1                                      ldrh r1, [r1, #0x10]
00609e6c  5c c0 8d e5                                      str ip, [sp, #0x5c]
00609e70  04 70 92 e5                                      ldr r7, [r2, #4]
00609e74  ff 2f 0f e3                                      movw r2, #0xffff
00609e78  02 00 51 e1                                      cmp r1, r2
00609e7c  04 20 97 e5                                      ldr r2, [r7, #4]
00609e80  00 b0 a0 e1                                      mov fp, r0
00609e84  03 60 a0 e1                                      mov r6, r3
00609e88  dc 20 92 e5                                      ldr r2, [r2, #0xdc]
00609e8c  04 20 8d e5                                      str r2, [sp, #4]
00609e90  28 00 00 0a                                      beq #0x609f38
00609e94  18 30 97 e5                                      ldr r3, [r7, #0x18]
00609e98  14 70 95 e5                                      ldr r7, [r5, #0x14]
00609e9c  0c 20 a0 e3                                      mov r2, #0xc
00609ea0  92 36 23 e0                                      mla r3, r2, r6, r3
00609ea4  04 a0 97 e5                                      ldr sl, [r7, #4]
00609ea8  08 30 93 e5                                      ldr r3, [r3, #8]
00609eac  20 20 a0 e3                                      mov r2, #0x20
00609eb0  18 10 9a e5                                      ldr r1, [sl, #0x18]
00609eb4  03 00 a0 e1                                      mov r0, r3
00609eb8  08 10 91 e5                                      ldr r1, [r1, #8]
00609ebc  00 30 8d e5                                      str r3, [sp]
00609ec0  c6 11 f4 eb                                      bl #0x30e5e0
00609ec4  00 00 50 e3                                      cmp r0, #0
00609ec8  00 30 9d e5                                      ldr r3, [sp]
00609ecc  13 00 00 1a                                      bne #0x609f20
00609ed0  07 00 a0 e1                                      mov r0, r7
00609ed4  96 ef fe eb                                      bl #0x5c5d34
00609ed8  06 20 a0 e1                                      mov r2, r6
00609edc  05 00 a0 e1                                      mov r0, r5
00609ee0  08 10 a0 e1                                      mov r1, r8
00609ee4  e8 fe ff eb                                      bl #0x609a8c
00609ee8  14 30 95 e5                                      ldr r3, [r5, #0x14]
00609eec  0b 00 a0 e1                                      mov r0, fp
00609ef0  00 00 53 e3                                      cmp r3, #0
00609ef4  00 30 8b e5                                      str r3, [fp]
00609ef8  00 20 93 15                                      ldrne r2, [r3]
00609efc  01 20 82 12                                      addne r2, r2, #1
00609f00  00 20 83 15                                      strne r2, [r3]
00609f04  09 30 94 e7                                      ldr r3, [r4, sb]
00609f08  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00609f0c  00 30 93 e5                                      ldr r3, [r3]
00609f10  03 00 52 e1                                      cmp r2, r3
00609f14  95 00 00 1a                                      bne #0x60a170
00609f18  64 d0 8d e2                                      add sp, sp, #0x64
00609f1c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00609f20  00 10 a0 e3                                      mov r1, #0
00609f24  0a 00 a0 e1                                      mov r0, sl
00609f28  01 20 a0 e1                                      mov r2, r1
00609f2c  40 24 ff eb                                      bl #0x5d3034
00609f30  14 70 95 e5                                      ldr r7, [r5, #0x14]
00609f34  e5 ff ff ea                                      b #0x609ed0
00609f38  2c 10 8d e2                                      add r1, sp, #0x2c
00609f3c  01 00 a0 e1                                      mov r0, r1
00609f40  08 10 8d e5                                      str r1, [sp, #8]
00609f44  10 10 a0 e3                                      mov r1, #0x10
00609f48  3c 00 8d e5                                      str r0, [sp, #0x3c]
00609f4c  40 00 8d e5                                      str r0, [sp, #0x40]
00609f50  94 5a f4 eb                                      bl #0x3209a8
00609f54  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00609f58  00 a0 a0 e3                                      mov sl, #0
00609f5c  18 12 9f e5                                      ldr r1, [pc, #0x218]
00609f60  00 a0 c3 e5                                      strb sl, [r3]
00609f64  43 28 00 e3                                      movw r2, #0x843
00609f68  14 50 8d e5                                      str r5, [sp, #0x14]
00609f6c  08 50 9d e5                                      ldr r5, [sp, #8]
00609f70  21 24 48 e3                                      movt r2, #0x8421
00609f74  0c 70 8d e5                                      str r7, [sp, #0xc]
00609f78  10 b0 8d e5                                      str fp, [sp, #0x10]
00609f7c  01 70 a0 e1                                      mov r7, r1
00609f80  02 b0 a0 e1                                      mov fp, r2
00609f84  87 13 f4 eb                                      bl #0x30eda8
00609f88  a0 20 a0 e1                                      lsr r2, r0, #1
00609f8c  9b 32 82 e0                                      umull r3, r2, fp, r2
00609f90  3e 10 a0 e3                                      mov r1, #0x3e
00609f94  22 22 a0 e1                                      lsr r2, r2, #4
00609f98  91 02 60 e0                                      mls r0, r1, r2, r0
00609f9c  07 30 94 e7                                      ldr r3, [r4, r7]
00609fa0  01 a0 8a e2                                      add sl, sl, #1
00609fa4  d0 10 93 e1                                      ldrsb r1, [r3, r0]
00609fa8  05 00 a0 e1                                      mov r0, r5
00609fac  fd af f8 eb                                      bl #0x435fa8
00609fb0  14 00 5a e3                                      cmp sl, #0x14
00609fb4  f2 ff ff 1a                                      bne #0x609f84
00609fb8  40 10 9d e5                                      ldr r1, [sp, #0x40]
00609fbc  44 a0 8d e2                                      add sl, sp, #0x44
00609fc0  54 a0 8d e5                                      str sl, [sp, #0x54]
00609fc4  01 00 a0 e1                                      mov r0, r1
00609fc8  00 10 8d e5                                      str r1, [sp]
00609fcc  58 a0 8d e5                                      str sl, [sp, #0x58]
00609fd0  9f 0f f4 eb                                      bl #0x30de54
00609fd4  00 10 9d e5                                      ldr r1, [sp]
00609fd8  0c 70 9d e5                                      ldr r7, [sp, #0xc]
00609fdc  10 b0 9d e5                                      ldr fp, [sp, #0x10]
00609fe0  00 20 81 e0                                      add r2, r1, r0
00609fe4  0a 00 a0 e1                                      mov r0, sl
00609fe8  14 50 9d e5                                      ldr r5, [sp, #0x14]
00609fec  00 70 f4 eb                                      bl #0x325ff4
00609ff0  40 00 9d e5                                      ldr r0, [sp, #0x40]
00609ff4  08 20 9d e5                                      ldr r2, [sp, #8]
00609ff8  02 00 50 e1                                      cmp r0, r2
00609ffc  02 00 00 0a                                      beq #0x60a00c
0060a000  00 00 50 e3                                      cmp r0, #0
0060a004  00 00 00 0a                                      beq #0x60a00c
0060a008  10 19 f4 eb                                      bl #0x310450
0060a00c  18 30 97 e5                                      ldr r3, [r7, #0x18]
0060a010  0c 20 a0 e3                                      mov r2, #0xc
0060a014  58 10 9d e5                                      ldr r1, [sp, #0x58]
0060a018  92 36 23 e0                                      mla r3, r2, r6, r3
0060a01c  04 00 9d e5                                      ldr r0, [sp, #4]
0060a020  08 30 93 e5                                      ldr r3, [r3, #8]
0060a024  01 20 a0 e3                                      mov r2, #1
0060a028  00 30 8d e5                                      str r3, [sp]
0060a02c  ae 4e ff eb                                      bl #0x5ddaec
0060a030  48 11 9f e5                                      ldr r1, [pc, #0x148]
0060a034  01 20 a0 e3                                      mov r2, #1
0060a038  04 00 9d e5                                      ldr r0, [sp, #4]
0060a03c  01 10 8f e0                                      add r1, pc, r1
0060a040  f1 4d ff eb                                      bl #0x5dd80c
0060a044  08 20 95 e5                                      ldr r2, [r5, #8]
0060a048  00 30 9d e5                                      ldr r3, [sp]
0060a04c  00 00 52 e3                                      cmp r2, #0
0060a050  28 20 8d e5                                      str r2, [sp, #0x28]
0060a054  04 10 92 15                                      ldrne r1, [r2, #4]
0060a058  01 10 81 12                                      addne r1, r1, #1
0060a05c  04 10 82 15                                      strne r1, [r2, #4]
0060a060  04 00 9d e5                                      ldr r0, [sp, #4]
0060a064  03 20 a0 e1                                      mov r2, r3
0060a068  28 10 8d e2                                      add r1, sp, #0x28
0060a06c  ae 4b ff eb                                      bl #0x5dcf2c
0060a070  28 00 9d e5                                      ldr r0, [sp, #0x28]
0060a074  00 00 50 e3                                      cmp r0, #0
0060a078  00 00 00 0a                                      beq #0x60a080
0060a07c  40 4d f4 eb                                      bl #0x31d584
0060a080  06 10 a0 e1                                      mov r1, r6
0060a084  00 20 a0 e3                                      mov r2, #0
0060a088  07 00 a0 e1                                      mov r0, r7
0060a08c  a0 27 ff eb                                      bl #0x5d3f14
0060a090  01 10 a0 e3                                      mov r1, #1
0060a094  00 20 a0 e1                                      mov r2, r0
0060a098  04 00 9d e5                                      ldr r0, [sp, #4]
0060a09c  70 4d ff eb                                      bl #0x5dd664
0060a0a0  04 00 9d e5                                      ldr r0, [sp, #4]
0060a0a4  42 4f ff eb                                      bl #0x5dddb4
0060a0a8  58 10 9d e5                                      ldr r1, [sp, #0x58]
0060a0ac  04 00 9d e5                                      ldr r0, [sp, #4]
0060a0b0  03 3e ff eb                                      bl #0x5d98c4
0060a0b4  b0 01 c5 e1                                      strh r0, [r5, #0x10]
0060a0b8  04 10 9d e5                                      ldr r1, [sp, #4]
0060a0bc  18 30 91 e5                                      ldr r3, [r1, #0x18]
0060a0c0  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0060a0c4  02 20 63 e0                                      rsb r2, r3, r2
0060a0c8  c2 01 50 e1                                      cmp r0, r2, asr #3
0060a0cc  80 31 83 30                                      addlo r3, r3, r0, lsl #3
0060a0d0  ac 30 9f 25                                      ldrhs r3, [pc, #0xac]
0060a0d4  03 30 94 27                                      ldrhs r3, [r4, r3]
0060a0d8  00 00 93 e5                                      ldr r0, [r3]
0060a0dc  20 70 8d e2                                      add r7, sp, #0x20
0060a0e0  00 00 50 e3                                      cmp r0, #0
0060a0e4  24 00 8d e5                                      str r0, [sp, #0x24]
0060a0e8  00 30 90 15                                      ldrne r3, [r0]
0060a0ec  01 30 83 12                                      addne r3, r3, #1
0060a0f0  00 30 80 15                                      strne r3, [r0]
0060a0f4  24 00 9d 15                                      ldrne r0, [sp, #0x24]
0060a0f8  a2 2e ff eb                                      bl #0x5d5b88
0060a0fc  b0 21 d5 e1                                      ldrh r2, [r5, #0x10]
0060a100  04 10 9d e5                                      ldr r1, [sp, #4]
0060a104  07 00 a0 e1                                      mov r0, r7
0060a108  00 30 a0 e3                                      mov r3, #0
0060a10c  f4 4b ff eb                                      bl #0x5dd0e4
0060a110  20 30 9d e5                                      ldr r3, [sp, #0x20]
0060a114  60 00 8d e2                                      add r0, sp, #0x60
0060a118  1c 30 8d e5                                      str r3, [sp, #0x1c]
0060a11c  00 00 53 e3                                      cmp r3, #0
0060a120  00 20 93 15                                      ldrne r2, [r3]
0060a124  01 20 82 12                                      addne r2, r2, #1
0060a128  00 20 83 15                                      strne r2, [r3]
0060a12c  1c 30 9d 15                                      ldrne r3, [sp, #0x1c]
0060a130  14 20 95 e5                                      ldr r2, [r5, #0x14]
0060a134  14 30 85 e5                                      str r3, [r5, #0x14]
0060a138  44 20 20 e5                                      str r2, [r0, #-0x44]!
0060a13c  a9 1a f4 eb                                      bl #0x310be8
0060a140  07 00 a0 e1                                      mov r0, r7
0060a144  a7 1a f4 eb                                      bl #0x310be8
0060a148  24 00 8d e2                                      add r0, sp, #0x24
0060a14c  59 20 f5 eb                                      bl #0x3522b8
0060a150  58 00 9d e5                                      ldr r0, [sp, #0x58]
0060a154  0a 00 50 e1                                      cmp r0, sl
0060a158  74 ff ff 0a                                      beq #0x609f30
0060a15c  00 00 50 e3                                      cmp r0, #0
0060a160  72 ff ff 0a                                      beq #0x609f30
0060a164  b9 18 f4 eb                                      bl #0x310450
0060a168  14 70 95 e5                                      ldr r7, [r5, #0x14]
0060a16c  57 ff ff ea                                      b #0x609ed0
0060a170  66 10 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0060a174  40 ac 38 00 ac 40 00 00 a4 31 00 00 0c 55 2d 00  .byte 0x40, 0xac, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0x31, 0x00, 0x00, 0x0c, 0x55, 0x2d, 0x00
0060a184  dc 30 00 00                                      .byte 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x0060a188, declared_size=324, range_size=324, mode=arm
; class-group: glitch::video::CGenericBaker
; alias: _ZNK6glitch5video13CGenericBaker12isCompatibleERKN5boost13intrusive_ptrIKNS0_9CMaterialEEEh
; demangled: glitch::video::CGenericBaker::isCompatible(boost::intrusive_ptr<glitch::video::CMaterial const> const&, unsigned char) const
; decoder-mode: arm
0060a188  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060a18c  00 50 91 e5                                      ldr r5, [r1]
0060a190  0c d0 4d e2                                      sub sp, sp, #0xc
0060a194  02 40 a0 e1                                      mov r4, r2
0060a198  00 00 55 e3                                      cmp r5, #0
0060a19c  05 00 a0 01                                      moveq r0, r5
0060a1a0  0e 00 00 0a                                      beq #0x60a1e0
0060a1a4  14 60 90 e5                                      ldr r6, [r0, #0x14]
0060a1a8  10 30 96 e5                                      ldr r3, [r6, #0x10]
0060a1ac  01 00 13 e3                                      tst r3, #1
0060a1b0  3a 00 00 1a                                      bne #0x60a2a0
0060a1b4  10 20 95 e5                                      ldr r2, [r5, #0x10]
0060a1b8  18 30 96 e5                                      ldr r3, [r6, #0x18]
0060a1bc  32 24 a0 e1                                      lsr r2, r2, r4
0060a1c0  01 00 12 e3                                      tst r2, #1
0060a1c4  00 70 93 e5                                      ldr r7, [r3]
0060a1c8  2c 00 00 1a                                      bne #0x60a280
0060a1cc  18 30 95 e5                                      ldr r3, [r5, #0x18]
0060a1d0  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0060a1d4  03 00 57 e1                                      cmp r7, r3
0060a1d8  02 00 00 0a                                      beq #0x60a1e8
0060a1dc  00 00 a0 e3                                      mov r0, #0
0060a1e0  0c d0 8d e2                                      add sp, sp, #0xc
0060a1e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0060a1e8  04 30 95 e5                                      ldr r3, [r5, #4]
0060a1ec  04 20 96 e5                                      ldr r2, [r6, #4]
0060a1f0  0c 10 a0 e3                                      mov r1, #0xc
0060a1f4  18 30 93 e5                                      ldr r3, [r3, #0x18]
0060a1f8  18 20 92 e5                                      ldr r2, [r2, #0x18]
0060a1fc  91 34 23 e0                                      mla r3, r1, r4, r3
0060a200  04 10 d2 e5                                      ldrb r1, [r2, #4]
0060a204  04 a0 d3 e5                                      ldrb sl, [r3, #4]
0060a208  0a 00 51 e1                                      cmp r1, sl
0060a20c  f2 ff ff 1a                                      bne #0x60a1dc
0060a210  00 00 5a e3                                      cmp sl, #0
0060a214  25 00 00 0a                                      beq #0x60a2b0
0060a218  08 70 92 e5                                      ldr r7, [r2, #8]
0060a21c  08 80 93 e5                                      ldr r8, [r3, #8]
0060a220  20 20 97 e5                                      ldr r2, [r7, #0x20]
0060a224  20 30 98 e5                                      ldr r3, [r8, #0x20]
0060a228  03 00 52 e1                                      cmp r2, r3
0060a22c  ea ff ff 1a                                      bne #0x60a1dc
0060a230  01 b0 4a e2                                      sub fp, sl, #1
0060a234  7b b0 ef e6                                      uxtb fp, fp
0060a238  34 90 a0 e3                                      mov sb, #0x34
0060a23c  9b 99 2b e0                                      mla fp, fp, sb, sb
0060a240  08 10 a0 e1                                      mov r1, r8
0060a244  07 00 a0 e1                                      mov r0, r7
0060a248  20 20 a0 e3                                      mov r2, #0x20
0060a24c  e3 10 f4 eb                                      bl #0x30e5e0
0060a250  00 00 50 e3                                      cmp r0, #0
0060a254  e0 ff ff 1a                                      bne #0x60a1dc
0060a258  0b 00 59 e1                                      cmp sb, fp
0060a25c  09 00 87 e0                                      add r0, r7, sb
0060a260  09 10 88 e0                                      add r1, r8, sb
0060a264  11 00 00 0a                                      beq #0x60a2b0
0060a268  20 20 90 e5                                      ldr r2, [r0, #0x20]
0060a26c  20 30 91 e5                                      ldr r3, [r1, #0x20]
0060a270  34 90 89 e2                                      add sb, sb, #0x34
0060a274  03 00 52 e1                                      cmp r2, r3
0060a278  d7 ff ff 1a                                      bne #0x60a1dc
0060a27c  f1 ff ff ea                                      b #0x60a248
0060a280  05 00 a0 e1                                      mov r0, r5
0060a284  04 10 a0 e1                                      mov r1, r4
0060a288  52 ef fe eb                                      bl #0x5c5fd8
0060a28c  18 30 95 e5                                      ldr r3, [r5, #0x18]
0060a290  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0060a294  03 00 57 e1                                      cmp r7, r3
0060a298  cf ff ff 1a                                      bne #0x60a1dc
0060a29c  d1 ff ff ea                                      b #0x60a1e8
0060a2a0  06 00 a0 e1                                      mov r0, r6
0060a2a4  00 10 a0 e3                                      mov r1, #0
0060a2a8  4a ef fe eb                                      bl #0x5c5fd8
0060a2ac  c0 ff ff ea                                      b #0x60a1b4
0060a2b0  06 00 a0 e1                                      mov r0, r6
0060a2b4  0a 20 a0 e1                                      mov r2, sl
0060a2b8  05 30 a0 e1                                      mov r3, r5
0060a2bc  00 10 a0 e3                                      mov r1, #0
0060a2c0  00 40 8d e5                                      str r4, [sp]
0060a2c4  18 01 ff eb                                      bl #0x5ca72c
0060a2c8  c4 ff ff ea                                      b #0x60a1e0

; FUNCTION 0x0060ab18, declared_size=172, range_size=172, mode=arm
; class-group: glitch::video::CGenericBaker
; alias: _ZNK6glitch5video13CGenericBaker4bakeERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPKNS0_9CMaterialEhPKhRKNS3_IS4_EERS9_SE_SG_PKNS0_12IVideoDriverEjjjjjjj
; demangled: glitch::video::CGenericBaker::bake(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CMaterial const*, unsigned char, unsigned char const*, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, glitch::video::CPrimitiveStream&, glitch::video::CMaterial const*, unsigned char const*, glitch::video::IVideoDriver const*, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int) const
; decoder-mode: arm
0060ab18  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060ab1c  1c d0 4d e2                                      sub sp, sp, #0x1c
0060ab20  58 00 9d e5                                      ldr r0, [sp, #0x58]
0060ab24  5c 40 9d e5                                      ldr r4, [sp, #0x5c]
0060ab28  6c 50 9d e5                                      ldr r5, [sp, #0x6c]
0060ab2c  74 c0 9d e5                                      ldr ip, [sp, #0x74]
0060ab30  10 00 8d e5                                      str r0, [sp, #0x10]
0060ab34  40 00 dd e5                                      ldrb r0, [sp, #0x40]
0060ab38  70 e0 9d e5                                      ldr lr, [sp, #0x70]
0060ab3c  14 c0 8d e5                                      str ip, [sp, #0x14]
0060ab40  0c 00 8d e5                                      str r0, [sp, #0xc]
0060ab44  05 c0 64 e0                                      rsb ip, r4, r5
0060ab48  01 60 a0 e1                                      mov r6, r1
0060ab4c  03 b0 a0 e1                                      mov fp, r3
0060ab50  64 10 9d e5                                      ldr r1, [sp, #0x64]
0060ab54  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0060ab58  02 00 a0 e1                                      mov r0, r2
0060ab5c  68 20 9d e5                                      ldr r2, [sp, #0x68]
0060ab60  44 70 9d e5                                      ldr r7, [sp, #0x44]
0060ab64  60 80 9d e5                                      ldr r8, [sp, #0x60]
0060ab68  48 90 9d e5                                      ldr sb, [sp, #0x48]
0060ab6c  54 a0 9d e5                                      ldr sl, [sp, #0x54]
0060ab70  04 c0 8d e5                                      str ip, [sp, #4]
0060ab74  00 e0 8d e5                                      str lr, [sp]
0060ab78  cd 5c 02 eb                                      bl #0x6a1eb4
0060ab7c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0060ab80  75 50 ff e6                                      uxth r5, r5
0060ab84  07 00 a0 e1                                      mov r0, r7
0060ab88  4c c0 8d e5                                      str ip, [sp, #0x4c]
0060ab8c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0060ab90  06 10 a0 e1                                      mov r1, r6
0060ab94  74 20 ff e6                                      uxth r2, r4
0060ab98  50 c0 8d e5                                      str ip, [sp, #0x50]
0060ab9c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0060aba0  78 30 ff e6                                      uxth r3, r8
0060aba4  40 a0 8d e5                                      str sl, [sp, #0x40]
0060aba8  44 90 8d e5                                      str sb, [sp, #0x44]
0060abac  48 b0 8d e5                                      str fp, [sp, #0x48]
0060abb0  54 50 8d e5                                      str r5, [sp, #0x54]
0060abb4  58 c0 8d e5                                      str ip, [sp, #0x58]
0060abb8  1c d0 8d e2                                      add sp, sp, #0x1c
0060abbc  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060abc0  ef fd ff ea                                      b #0x60a384
