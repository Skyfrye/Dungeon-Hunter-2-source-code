; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e48e4, declared_size=92, range_size=92, mode=arm
; class-group: glitch::video::IShader
; alias: _ZNK6glitch5video7IShader14getParameterIDENS0_23E_SHADER_PARAMETER_TYPEENS0_14E_SHADER_STAGEEt
; demangled: glitch::video::IShader::getParameterID(glitch::video::E_SHADER_PARAMETER_TYPE, glitch::video::E_SHADER_STAGE, unsigned short) const
; decoder-mode: arm
005e48e4  05 20 82 e2                                      add r2, r2, #5
005e48e8  82 c1 80 e0                                      add ip, r0, r2, lsl #3
005e48ec  b6 c0 dc e1                                      ldrh ip, [ip, #6]
005e48f0  0c 00 53 e1                                      cmp r3, ip
005e48f4  0f 00 00 2a                                      bhs #0x5e4938
005e48f8  82 21 90 e7                                      ldr r2, [r0, r2, lsl #3]
005e48fc  03 02 82 e0                                      add r0, r2, r3, lsl #4
005e4900  b4 00 d0 e1                                      ldrh r0, [r0, #4]
005e4904  00 00 51 e1                                      cmp r1, r0
005e4908  03 00 a0 01                                      moveq r0, r3
005e490c  03 00 a0 11                                      movne r0, r3
005e4910  03 00 00 1a                                      bne #0x5e4924
005e4914  1e ff 2f e1                                      bx lr
005e4918  b4 30 d3 e1                                      ldrh r3, [r3, #4]
005e491c  03 00 51 e1                                      cmp r1, r3
005e4920  1e ff 2f 01                                      bxeq lr
005e4924  01 00 80 e2                                      add r0, r0, #1
005e4928  70 00 ff e6                                      uxth r0, r0
005e492c  0c 00 50 e1                                      cmp r0, ip
005e4930  00 32 82 e0                                      add r3, r2, r0, lsl #4
005e4934  f7 ff ff 3a                                      blo #0x5e4918
005e4938  ff 0f 0f e3                                      movw r0, #0xffff
005e493c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e4940, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::IShader
; alias: _ZNK6glitch5video7IShader26getVertexAttributeDefIndexENS0_18E_VERTEX_ATTRIBUTEE
; demangled: glitch::video::IShader::getVertexAttributeDefIndex(glitch::video::E_VERTEX_ATTRIBUTE) const
; decoder-mode: arm
005e4940  24 30 90 e5                                      ldr r3, [r0, #0x24]
005e4944  3c 20 d0 e5                                      ldrb r2, [r0, #0x3c]
005e4948  82 21 83 e0                                      add r2, r3, r2, lsl #3
005e494c  02 00 53 e1                                      cmp r3, r2
005e4950  0b 00 00 0a                                      beq #0x5e4984
005e4954  b4 00 d3 e1                                      ldrh r0, [r3, #4]
005e4958  00 00 51 e1                                      cmp r1, r0
005e495c  00 00 a0 03                                      moveq r0, #0
005e4960  1e ff 2f 01                                      bxeq lr
005e4964  03 00 a0 e1                                      mov r0, r3
005e4968  02 00 00 ea                                      b #0x5e4978
005e496c  b4 c0 d0 e1                                      ldrh ip, [r0, #4]
005e4970  0c 00 51 e1                                      cmp r1, ip
005e4974  04 00 00 0a                                      beq #0x5e498c
005e4978  08 00 80 e2                                      add r0, r0, #8
005e497c  02 00 50 e1                                      cmp r0, r2
005e4980  f9 ff ff 1a                                      bne #0x5e496c
005e4984  ff 00 a0 e3                                      mov r0, #0xff
005e4988  1e ff 2f e1                                      bx lr
005e498c  00 00 63 e0                                      rsb r0, r3, r0
005e4990  d0 01 e7 e7                                      ubfx r0, r0, #3, #8
005e4994  1e ff 2f e1                                      bx lr

; FUNCTION 0x005e4998, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::IShader
; alias: _ZNK6glitch5video7IShader13getBatchBakerEv
; demangled: glitch::video::IShader::getBatchBaker() const
; decoder-mode: arm
005e4998  10 40 2d e9                                      push {r4, lr}
005e499c  08 30 91 e5                                      ldr r3, [r1, #8]
005e49a0  b0 24 d1 e1                                      ldrh r2, [r1, #0x40]
005e49a4  00 40 a0 e1                                      mov r4, r0
005e49a8  d8 10 93 e5                                      ldr r1, [r3, #0xd8]
005e49ac  79 ff ff eb                                      bl #0x5e4798
005e49b0  04 00 a0 e1                                      mov r0, r4
005e49b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e49b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::video::IShader
; alias: _ZNK6glitch5video7IShader16removeBatchBakerEv
; demangled: glitch::video::IShader::removeBatchBaker() const
; decoder-mode: arm
005e49b8  08 30 90 e5                                      ldr r3, [r0, #8]
005e49bc  b0 14 d0 e1                                      ldrh r1, [r0, #0x40]
005e49c0  d8 00 93 e5                                      ldr r0, [r3, #0xd8]
005e49c4  ab ff ff ea                                      b #0x5e4878

; FUNCTION 0x005e49e8, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::IShader
; alias: _ZN6glitch5video7IShaderD1Ev
; demangled: glitch::video::IShader::~IShader()
; decoder-mode: arm
005e49e8  54 20 9f e5                                      ldr r2, [pc, #0x54]
005e49ec  10 40 2d e9                                      push {r4, lr}
005e49f0  50 30 9f e5                                      ldr r3, [pc, #0x50]
005e49f4  02 20 8f e0                                      add r2, pc, r2
005e49f8  08 c0 90 e5                                      ldr ip, [r0, #8]
005e49fc  03 30 92 e7                                      ldr r3, [r2, r3]
005e4a00  00 40 a0 e1                                      mov r4, r0
005e4a04  00 10 a0 e1                                      mov r1, r0
005e4a08  08 30 83 e2                                      add r3, r3, #8
005e4a0c  00 30 80 e5                                      str r3, [r0]
005e4a10  00 30 9c e5                                      ldr r3, [ip]
005e4a14  0c 00 a0 e1                                      mov r0, ip
005e4a18  0f e0 a0 e1                                      mov lr, pc
005e4a1c  14 f2 93 e5                                      ldr pc, [r3, #0x214]
005e4a20  0c 30 84 e2                                      add r3, r4, #0xc
005e4a24  14 00 93 e5                                      ldr r0, [r3, #0x14]
005e4a28  03 00 50 e1                                      cmp r0, r3
005e4a2c  02 00 00 0a                                      beq #0x5e4a3c
005e4a30  00 00 50 e3                                      cmp r0, #0
005e4a34  00 00 00 0a                                      beq #0x5e4a3c
005e4a38  84 ae f4 eb                                      bl #0x310450
005e4a3c  04 00 a0 e1                                      mov r0, r4
005e4a40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005e4a44  9c 00 3b 00 7c 47 00 00                          .byte 0x9c, 0x00, 0x3b, 0x00, 0x7c, 0x47, 0x00, 0x00

; FUNCTION 0x005e4a4c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::video::IShader
; alias: _ZN6glitch5video7IShaderC1EtPKcPNS0_12IVideoDriverE
; demangled: glitch::video::IShader::IShader(unsigned short, char const*, glitch::video::IVideoDriver*)
; decoder-mode: arm
005e4a4c  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005e4a50  70 40 2d e9                                      push {r4, r5, r6, lr}
005e4a54  80 e0 9f e5                                      ldr lr, [pc, #0x80]
005e4a58  0c c0 8f e0                                      add ip, pc, ip
005e4a5c  00 50 a0 e3                                      mov r5, #0
005e4a60  0e e0 9c e7                                      ldr lr, [ip, lr]
005e4a64  08 d0 4d e2                                      sub sp, sp, #8
005e4a68  00 40 a0 e1                                      mov r4, r0
005e4a6c  08 e0 8e e2                                      add lr, lr, #8
005e4a70  08 30 80 e5                                      str r3, [r0, #8]
005e4a74  00 e0 80 e5                                      str lr, [r0]
005e4a78  01 60 a0 e1                                      mov r6, r1
005e4a7c  04 50 80 e5                                      str r5, [r0, #4]
005e4a80  02 10 a0 e1                                      mov r1, r2
005e4a84  0c 00 80 e2                                      add r0, r0, #0xc
005e4a88  04 20 8d e2                                      add r2, sp, #4
005e4a8c  6a 05 f5 eb                                      bl #0x32603c
005e4a90  30 30 84 e2                                      add r3, r4, #0x30
005e4a94  24 50 84 e5                                      str r5, [r4, #0x24]
005e4a98  28 50 84 e5                                      str r5, [r4, #0x28]
005e4a9c  bc 52 c4 e1                                      strh r5, [r4, #0x2c]
005e4aa0  be 52 c4 e1                                      strh r5, [r4, #0x2e]
005e4aa4  30 50 84 e5                                      str r5, [r4, #0x30]
005e4aa8  b6 50 c3 e1                                      strh r5, [r3, #6]
005e4aac  b4 50 c3 e1                                      strh r5, [r3, #4]
005e4ab0  00 30 e0 e3                                      mvn r3, #0
005e4ab4  3d 30 c4 e5                                      strb r3, [r4, #0x3d]
005e4ab8  01 30 a0 e3                                      mov r3, #1
005e4abc  38 50 84 e5                                      str r5, [r4, #0x38]
005e4ac0  3c 50 c4 e5                                      strb r5, [r4, #0x3c]
005e4ac4  3e 30 c4 e5                                      strb r3, [r4, #0x3e]
005e4ac8  b0 64 c4 e1                                      strh r6, [r4, #0x40]
005e4acc  04 00 a0 e1                                      mov r0, r4
005e4ad0  08 d0 8d e2                                      add sp, sp, #8
005e4ad4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005e4ad8  38 00 3b 00 7c 47 00 00                          .byte 0x38, 0x00, 0x3b, 0x00, 0x7c, 0x47, 0x00, 0x00

; FUNCTION 0x005e4ae0, declared_size=148, range_size=148, mode=arm
; class-group: glitch::video::IShader
; alias: _ZN6glitch5video7IShaderC2EtPKcPNS0_12IVideoDriverE
; demangled: glitch::video::IShader::IShader(unsigned short, char const*, glitch::video::IVideoDriver*)
; decoder-mode: arm
005e4ae0  84 c0 9f e5                                      ldr ip, [pc, #0x84]
005e4ae4  70 40 2d e9                                      push {r4, r5, r6, lr}
005e4ae8  80 e0 9f e5                                      ldr lr, [pc, #0x80]
005e4aec  0c c0 8f e0                                      add ip, pc, ip
005e4af0  00 50 a0 e3                                      mov r5, #0
005e4af4  0e e0 9c e7                                      ldr lr, [ip, lr]
005e4af8  08 d0 4d e2                                      sub sp, sp, #8
005e4afc  00 40 a0 e1                                      mov r4, r0
005e4b00  08 e0 8e e2                                      add lr, lr, #8
005e4b04  08 30 80 e5                                      str r3, [r0, #8]
005e4b08  00 e0 80 e5                                      str lr, [r0]
005e4b0c  01 60 a0 e1                                      mov r6, r1
005e4b10  04 50 80 e5                                      str r5, [r0, #4]
005e4b14  02 10 a0 e1                                      mov r1, r2
005e4b18  0c 00 80 e2                                      add r0, r0, #0xc
005e4b1c  04 20 8d e2                                      add r2, sp, #4
005e4b20  45 05 f5 eb                                      bl #0x32603c
005e4b24  30 30 84 e2                                      add r3, r4, #0x30
005e4b28  24 50 84 e5                                      str r5, [r4, #0x24]
005e4b2c  28 50 84 e5                                      str r5, [r4, #0x28]
005e4b30  bc 52 c4 e1                                      strh r5, [r4, #0x2c]
005e4b34  be 52 c4 e1                                      strh r5, [r4, #0x2e]
005e4b38  30 50 84 e5                                      str r5, [r4, #0x30]
005e4b3c  b6 50 c3 e1                                      strh r5, [r3, #6]
005e4b40  b4 50 c3 e1                                      strh r5, [r3, #4]
005e4b44  00 30 e0 e3                                      mvn r3, #0
005e4b48  3d 30 c4 e5                                      strb r3, [r4, #0x3d]
005e4b4c  01 30 a0 e3                                      mov r3, #1
005e4b50  38 50 84 e5                                      str r5, [r4, #0x38]
005e4b54  3c 50 c4 e5                                      strb r5, [r4, #0x3c]
005e4b58  3e 30 c4 e5                                      strb r3, [r4, #0x3e]
005e4b5c  b0 64 c4 e1                                      strh r6, [r4, #0x40]
005e4b60  04 00 a0 e1                                      mov r0, r4
005e4b64  08 d0 8d e2                                      add sp, sp, #8
005e4b68  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005e4b6c  a4 ff 3a 00 7c 47 00 00                          .byte 0xa4, 0xff, 0x3a, 0x00, 0x7c, 0x47, 0x00, 0x00

; FUNCTION 0x005e4b74, declared_size=164, range_size=164, mode=arm
; class-group: glitch::video::IShader
; alias: _ZNK6glitch5video7IShader14getParameterIDEPKcNS0_14E_SHADER_STAGEEt
; demangled: glitch::video::IShader::getParameterID(char const*, glitch::video::E_SHADER_STAGE, unsigned short) const
; decoder-mode: arm
005e4b74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e4b78  00 40 a0 e1                                      mov r4, r0
005e4b7c  01 00 a0 e1                                      mov r0, r1
005e4b80  00 10 a0 e3                                      mov r1, #0
005e4b84  03 60 a0 e1                                      mov r6, r3
005e4b88  02 50 a0 e1                                      mov r5, r2
005e4b8c  38 01 03 eb                                      bl #0x6a5074
005e4b90  00 00 50 e3                                      cmp r0, #0
005e4b94  ff 6f 0f 03                                      movweq r6, #0xffff
005e4b98  17 00 00 0a                                      beq #0x5e4bfc
005e4b9c  00 70 90 e5                                      ldr r7, [r0]
005e4ba0  05 50 85 e2                                      add r5, r5, #5
005e4ba4  00 10 a0 e1                                      mov r1, r0
005e4ba8  01 70 87 e2                                      add r7, r7, #1
005e4bac  04 70 81 e4                                      str r7, [r1], #4
005e4bb0  85 31 84 e0                                      add r3, r4, r5, lsl #3
005e4bb4  b6 c0 d3 e1                                      ldrh ip, [r3, #6]
005e4bb8  0c 00 56 e1                                      cmp r6, ip
005e4bbc  13 00 00 2a                                      bhs #0x5e4c10
005e4bc0  85 41 94 e7                                      ldr r4, [r4, r5, lsl #3]
005e4bc4  02 00 00 ea                                      b #0x5e4bd4
005e4bc8  72 60 ff e6                                      uxth r6, r2
005e4bcc  0c 00 56 e1                                      cmp r6, ip
005e4bd0  0e 00 00 2a                                      bhs #0x5e4c10
005e4bd4  06 32 94 e7                                      ldr r3, [r4, r6, lsl #4]
005e4bd8  01 20 86 e2                                      add r2, r6, #1
005e4bdc  00 00 53 e3                                      cmp r3, #0
005e4be0  04 30 83 12                                      addne r3, r3, #4
005e4be4  03 00 51 e1                                      cmp r1, r3
005e4be8  f6 ff ff 1a                                      bne #0x5e4bc8
005e4bec  01 70 47 e2                                      sub r7, r7, #1
005e4bf0  00 00 57 e3                                      cmp r7, #0
005e4bf4  00 70 80 e5                                      str r7, [r0]
005e4bf8  01 00 00 0a                                      beq #0x5e4c04
005e4bfc  06 00 a0 e1                                      mov r0, r6
005e4c00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005e4c04  64 00 03 eb                                      bl #0x6a4d9c
005e4c08  06 00 a0 e1                                      mov r0, r6
005e4c0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005e4c10  ff 6f 0f e3                                      movw r6, #0xffff
005e4c14  f4 ff ff ea                                      b #0x5e4bec

; FUNCTION 0x005e4c18, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::IShader
; alias: _ZN6glitch5video7IShaderD0Ev
; demangled: glitch::video::IShader::~IShader()
; decoder-mode: arm
005e4c18  10 40 2d e9                                      push {r4, lr}
005e4c1c  00 40 a0 e1                                      mov r4, r0
005e4c20  70 ff ff eb                                      bl #0x5e49e8
005e4c24  04 00 a0 e1                                      mov r0, r4
005e4c28  a0 a5 f4 eb                                      bl #0x30e2b0
005e4c2c  04 00 a0 e1                                      mov r0, r4
005e4c30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005e4f04, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::IShader
; alias: _ZN6glitch5video7IShaderD2Ev
; demangled: glitch::video::IShader::~IShader()
; decoder-mode: arm
005e4f04  54 20 9f e5                                      ldr r2, [pc, #0x54]
005e4f08  10 40 2d e9                                      push {r4, lr}
005e4f0c  50 30 9f e5                                      ldr r3, [pc, #0x50]
005e4f10  02 20 8f e0                                      add r2, pc, r2
005e4f14  08 c0 90 e5                                      ldr ip, [r0, #8]
005e4f18  03 30 92 e7                                      ldr r3, [r2, r3]
005e4f1c  00 40 a0 e1                                      mov r4, r0
005e4f20  00 10 a0 e1                                      mov r1, r0
005e4f24  08 30 83 e2                                      add r3, r3, #8
005e4f28  00 30 80 e5                                      str r3, [r0]
005e4f2c  00 30 9c e5                                      ldr r3, [ip]
005e4f30  0c 00 a0 e1                                      mov r0, ip
005e4f34  0f e0 a0 e1                                      mov lr, pc
005e4f38  14 f2 93 e5                                      ldr pc, [r3, #0x214]
005e4f3c  0c 30 84 e2                                      add r3, r4, #0xc
005e4f40  14 00 93 e5                                      ldr r0, [r3, #0x14]
005e4f44  03 00 50 e1                                      cmp r0, r3
005e4f48  02 00 00 0a                                      beq #0x5e4f58
005e4f4c  00 00 50 e3                                      cmp r0, #0
005e4f50  00 00 00 0a                                      beq #0x5e4f58
005e4f54  3d ad f4 eb                                      bl #0x310450
005e4f58  04 00 a0 e1                                      mov r0, r4
005e4f5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005e4f60  80 fb 3a 00 7c 47 00 00                          .byte 0x80, 0xfb, 0x3a, 0x00, 0x7c, 0x47, 0x00, 0x00

; FUNCTION 0x005e4f68, declared_size=544, range_size=544, mode=arm
; class-group: glitch::video::IShader
; alias: _ZN6glitch5video7IShader21deserializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::IShader::deserializeAttributes(glitch::io::IAttributes*)
; decoder-mode: arm
005e4f68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e4f6c  fc 61 9f e5                                      ldr r6, [pc, #0x1fc]
005e4f70  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
005e4f74  3c d0 4d e2                                      sub sp, sp, #0x3c
005e4f78  06 60 8f e0                                      add r6, pc, r6
005e4f7c  02 30 96 e7                                      ldr r3, [r6, r2]
005e4f80  08 20 8d e5                                      str r2, [sp, #8]
005e4f84  00 50 a0 e1                                      mov r5, r0
005e4f88  00 30 93 e5                                      ldr r3, [r3]
005e4f8c  e4 21 9f e5                                      ldr r2, [pc, #0x1e4]
005e4f90  14 70 8d e2                                      add r7, sp, #0x14
005e4f94  34 30 8d e5                                      str r3, [sp, #0x34]
005e4f98  28 c0 95 e5                                      ldr ip, [r5, #0x28]
005e4f9c  0c 80 80 e2                                      add r8, r0, #0xc
005e4fa0  00 30 91 e5                                      ldr r3, [r1]
005e4fa4  02 20 8f e0                                      add r2, pc, r2
005e4fa8  07 00 a0 e1                                      mov r0, r7
005e4fac  04 c0 8d e5                                      str ip, [sp, #4]
005e4fb0  01 40 a0 e1                                      mov r4, r1
005e4fb4  0f e0 a0 e1                                      mov lr, pc
005e4fb8  84 f0 93 e5                                      ldr pc, [r3, #0x84]
005e4fbc  07 00 58 e1                                      cmp r8, r7
005e4fc0  03 00 00 0a                                      beq #0x5e4fd4
005e4fc4  08 00 a0 e1                                      mov r0, r8
005e4fc8  28 10 9d e5                                      ldr r1, [sp, #0x28]
005e4fcc  24 20 9d e5                                      ldr r2, [sp, #0x24]
005e4fd0  ec ee f4 eb                                      bl #0x320b88
005e4fd4  28 00 9d e5                                      ldr r0, [sp, #0x28]
005e4fd8  07 00 50 e1                                      cmp r0, r7
005e4fdc  02 00 00 0a                                      beq #0x5e4fec
005e4fe0  00 00 50 e3                                      cmp r0, #0
005e4fe4  00 00 00 0a                                      beq #0x5e4fec
005e4fe8  18 ad f4 eb                                      bl #0x310450
005e4fec  88 11 9f e5                                      ldr r1, [pc, #0x188]
005e4ff0  00 30 94 e5                                      ldr r3, [r4]
005e4ff4  04 00 a0 e1                                      mov r0, r4
005e4ff8  01 10 8f e0                                      add r1, pc, r1
005e4ffc  0f e0 a0 e1                                      mov lr, pc
005e5000  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005e5004  24 70 95 e5                                      ldr r7, [r5, #0x24]
005e5008  3c 80 d5 e5                                      ldrb r8, [r5, #0x3c]
005e500c  00 30 a0 e3                                      mov r3, #0
005e5010  38 30 85 e5                                      str r3, [r5, #0x38]
005e5014  88 81 87 e0                                      add r8, r7, r8, lsl #3
005e5018  08 00 57 e1                                      cmp r7, r8
005e501c  0a 00 00 0a                                      beq #0x5e504c
005e5020  01 a0 a0 e3                                      mov sl, #1
005e5024  07 00 a0 e1                                      mov r0, r7
005e5028  04 10 a0 e1                                      mov r1, r4
005e502c  00 ff ff eb                                      bl #0x5e4c34
005e5030  b4 20 d7 e1                                      ldrh r2, [r7, #4]
005e5034  38 30 95 e5                                      ldr r3, [r5, #0x38]
005e5038  08 70 87 e2                                      add r7, r7, #8
005e503c  07 00 58 e1                                      cmp r8, r7
005e5040  1a 32 83 e1                                      orr r3, r3, sl, lsl r2
005e5044  38 30 85 e5                                      str r3, [r5, #0x38]
005e5048  f5 ff ff 1a                                      bne #0x5e5024
005e504c  00 30 94 e5                                      ldr r3, [r4]
005e5050  04 00 a0 e1                                      mov r0, r4
005e5054  0f e0 a0 e1                                      mov lr, pc
005e5058  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e505c  65 30 02 e3                                      movw r3, #0x2065
005e5060  30 30 40 e3                                      movt r3, #0x30
005e5064  30 30 8d e5                                      str r3, [sp, #0x30]
005e5068  10 31 9f e5                                      ldr r3, [pc, #0x110]
005e506c  53 24 07 e3                                      movw r2, #0x7453
005e5070  61 27 46 e3                                      movt r2, #0x6761
005e5074  03 30 8f e0                                      add r3, pc, r3
005e5078  0c 30 8d e5                                      str r3, [sp, #0xc]
005e507c  2c 20 8d e5                                      str r2, [sp, #0x2c]
005e5080  05 80 a0 e1                                      mov r8, r5
005e5084  01 90 a0 e3                                      mov sb, #1
005e5088  00 30 a0 e3                                      mov r3, #0
005e508c  2c b0 8d e2                                      add fp, sp, #0x2c
005e5090  30 30 83 e2                                      add r3, r3, #0x30
005e5094  32 30 cd e5                                      strb r3, [sp, #0x32]
005e5098  00 30 94 e5                                      ldr r3, [r4]
005e509c  04 00 a0 e1                                      mov r0, r4
005e50a0  0b 10 a0 e1                                      mov r1, fp
005e50a4  0f e0 a0 e1                                      mov lr, pc
005e50a8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005e50ac  04 20 9d e5                                      ldr r2, [sp, #4]
005e50b0  00 00 52 e3                                      cmp r2, #0
005e50b4  14 00 00 0a                                      beq #0x5e510c
005e50b8  00 30 94 e5                                      ldr r3, [r4]
005e50bc  04 00 a0 e1                                      mov r0, r4
005e50c0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005e50c4  0f e0 a0 e1                                      mov lr, pc
005e50c8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005e50cc  be a2 d8 e1                                      ldrh sl, [r8, #0x2e]
005e50d0  00 00 5a e3                                      cmp sl, #0
005e50d4  08 00 00 0a                                      beq #0x5e50fc
005e50d8  00 70 a0 e3                                      mov r7, #0
005e50dc  28 30 98 e5                                      ldr r3, [r8, #0x28]
005e50e0  77 00 ff e6                                      uxth r0, r7
005e50e4  04 10 a0 e1                                      mov r1, r4
005e50e8  01 70 87 e2                                      add r7, r7, #1
005e50ec  00 02 83 e0                                      add r0, r3, r0, lsl #4
005e50f0  39 ff ff eb                                      bl #0x5e4ddc
005e50f4  07 00 5a e1                                      cmp sl, r7
005e50f8  f7 ff ff ca                                      bgt #0x5e50dc
005e50fc  00 30 94 e5                                      ldr r3, [r4]
005e5100  04 00 a0 e1                                      mov r0, r4
005e5104  0f e0 a0 e1                                      mov lr, pc
005e5108  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e510c  00 30 94 e5                                      ldr r3, [r4]
005e5110  04 00 a0 e1                                      mov r0, r4
005e5114  0f e0 a0 e1                                      mov lr, pc
005e5118  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e511c  09 30 a0 e1                                      mov r3, sb
005e5120  01 90 89 e2                                      add sb, sb, #1
005e5124  03 00 59 e3                                      cmp sb, #3
005e5128  08 80 88 e2                                      add r8, r8, #8
005e512c  d7 ff ff 1a                                      bne #0x5e5090
005e5130  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
005e5134  00 30 94 e5                                      ldr r3, [r4]
005e5138  04 00 a0 e1                                      mov r0, r4
005e513c  01 10 8f e0                                      add r1, pc, r1
005e5140  0f e0 a0 e1                                      mov lr, pc
005e5144  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005e5148  08 c0 9d e5                                      ldr ip, [sp, #8]
005e514c  38 00 85 e5                                      str r0, [r5, #0x38]
005e5150  34 20 9d e5                                      ldr r2, [sp, #0x34]
005e5154  0c 30 96 e7                                      ldr r3, [r6, ip]
005e5158  00 30 93 e5                                      ldr r3, [r3]
005e515c  03 00 52 e1                                      cmp r2, r3
005e5160  01 00 00 1a                                      bne #0x5e516c
005e5164  3c d0 8d e2                                      add sp, sp, #0x3c
005e5168  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e516c  67 a4 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005e5170  18 fb 3a 00 ac 40 00 00 dc 6d 2e 00 90 db 2f 00  .byte 0x18, 0xfb, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x6d, 0x2e, 0x00, 0x90, 0xdb, 0x2f, 0x00
005e5180  2c db 2f 00 74 da 2f 00                          .byte 0x2c, 0xdb, 0x2f, 0x00, 0x74, 0xda, 0x2f, 0x00

; FUNCTION 0x005e5188, declared_size=520, range_size=520, mode=arm
; class-group: glitch::video::IShader
; alias: _ZNK6glitch5video7IShader19serializeAttributesEPNS_2io11IAttributesE
; demangled: glitch::video::IShader::serializeAttributes(glitch::io::IAttributes*) const
; decoder-mode: arm
005e5188  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e518c  dc 71 9f e5                                      ldr r7, [pc, #0x1dc]
005e5190  dc 21 9f e5                                      ldr r2, [pc, #0x1dc]
005e5194  01 40 a0 e1                                      mov r4, r1
005e5198  07 70 8f e0                                      add r7, pc, r7
005e519c  02 30 97 e7                                      ldr r3, [r7, r2]
005e51a0  d0 11 9f e5                                      ldr r1, [pc, #0x1d0]
005e51a4  2c d0 4d e2                                      sub sp, sp, #0x2c
005e51a8  00 30 93 e5                                      ldr r3, [r3]
005e51ac  00 50 a0 e1                                      mov r5, r0
005e51b0  04 20 8d e5                                      str r2, [sp, #4]
005e51b4  24 30 8d e5                                      str r3, [sp, #0x24]
005e51b8  01 10 8f e0                                      add r1, pc, r1
005e51bc  04 00 a0 e1                                      mov r0, r4
005e51c0  20 20 95 e5                                      ldr r2, [r5, #0x20]
005e51c4  01 30 a0 e3                                      mov r3, #1
005e51c8  00 c0 94 e5                                      ldr ip, [r4]
005e51cc  0f e0 a0 e1                                      mov lr, pc
005e51d0  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
005e51d4  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
005e51d8  00 30 94 e5                                      ldr r3, [r4]
005e51dc  04 00 a0 e1                                      mov r0, r4
005e51e0  01 10 8f e0                                      add r1, pc, r1
005e51e4  0f e0 a0 e1                                      mov lr, pc
005e51e8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005e51ec  24 60 95 e5                                      ldr r6, [r5, #0x24]
005e51f0  3c 80 d5 e5                                      ldrb r8, [r5, #0x3c]
005e51f4  88 81 86 e0                                      add r8, r6, r8, lsl #3
005e51f8  08 00 56 e1                                      cmp r6, r8
005e51fc  05 00 00 0a                                      beq #0x5e5218
005e5200  06 00 a0 e1                                      mov r0, r6
005e5204  04 10 a0 e1                                      mov r1, r4
005e5208  08 60 86 e2                                      add r6, r6, #8
005e520c  14 ff ff eb                                      bl #0x5e4e64
005e5210  08 00 56 e1                                      cmp r6, r8
005e5214  f9 ff ff 1a                                      bne #0x5e5200
005e5218  04 00 a0 e1                                      mov r0, r4
005e521c  00 30 94 e5                                      ldr r3, [r4]
005e5220  0f e0 a0 e1                                      mov lr, pc
005e5224  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e5228  50 11 9f e5                                      ldr r1, [pc, #0x150]
005e522c  04 00 a0 e1                                      mov r0, r4
005e5230  38 20 95 e5                                      ldr r2, [r5, #0x38]
005e5234  01 10 8f e0                                      add r1, pc, r1
005e5238  01 30 a0 e3                                      mov r3, #1
005e523c  00 c0 94 e5                                      ldr ip, [r4]
005e5240  0f e0 a0 e1                                      mov lr, pc
005e5244  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005e5248  34 11 9f e5                                      ldr r1, [pc, #0x134]
005e524c  34 81 9f e5                                      ldr r8, [pc, #0x134]
005e5250  34 a1 9f e5                                      ldr sl, [pc, #0x134]
005e5254  0c 30 8d e2                                      add r3, sp, #0xc
005e5258  08 20 8d e2                                      add r2, sp, #8
005e525c  03 00 a0 e1                                      mov r0, r3
005e5260  01 10 8f e0                                      add r1, pc, r1
005e5264  00 30 8d e5                                      str r3, [sp]
005e5268  08 80 8f e0                                      add r8, pc, r8
005e526c  72 03 f5 eb                                      bl #0x32603c
005e5270  0a a0 8f e0                                      add sl, pc, sl
005e5274  01 60 a0 e3                                      mov r6, #1
005e5278  00 20 a0 e3                                      mov r2, #0
005e527c  20 30 9d e5                                      ldr r3, [sp, #0x20]
005e5280  30 20 82 e2                                      add r2, r2, #0x30
005e5284  04 00 a0 e1                                      mov r0, r4
005e5288  06 20 c3 e5                                      strb r2, [r3, #6]
005e528c  20 10 9d e5                                      ldr r1, [sp, #0x20]
005e5290  00 30 94 e5                                      ldr r3, [r4]
005e5294  0f e0 a0 e1                                      mov lr, pc
005e5298  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005e529c  04 00 a0 e1                                      mov r0, r4
005e52a0  08 10 a0 e1                                      mov r1, r8
005e52a4  be 22 d5 e1                                      ldrh r2, [r5, #0x2e]
005e52a8  01 30 a0 e3                                      mov r3, #1
005e52ac  00 c0 94 e5                                      ldr ip, [r4]
005e52b0  0f e0 a0 e1                                      mov lr, pc
005e52b4  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005e52b8  00 30 94 e5                                      ldr r3, [r4]
005e52bc  04 00 a0 e1                                      mov r0, r4
005e52c0  0a 10 a0 e1                                      mov r1, sl
005e52c4  0f e0 a0 e1                                      mov lr, pc
005e52c8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
005e52cc  be b2 d5 e1                                      ldrh fp, [r5, #0x2e]
005e52d0  00 00 5b e3                                      cmp fp, #0
005e52d4  08 00 00 0a                                      beq #0x5e52fc
005e52d8  00 90 a0 e3                                      mov sb, #0
005e52dc  28 30 95 e5                                      ldr r3, [r5, #0x28]
005e52e0  79 00 ff e6                                      uxth r0, sb
005e52e4  04 10 a0 e1                                      mov r1, r4
005e52e8  01 90 89 e2                                      add sb, sb, #1
005e52ec  00 02 83 e0                                      add r0, r3, r0, lsl #4
005e52f0  71 fe ff eb                                      bl #0x5e4cbc
005e52f4  09 00 5b e1                                      cmp fp, sb
005e52f8  f7 ff ff ca                                      bgt #0x5e52dc
005e52fc  04 00 a0 e1                                      mov r0, r4
005e5300  00 30 94 e5                                      ldr r3, [r4]
005e5304  0f e0 a0 e1                                      mov lr, pc
005e5308  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e530c  00 30 94 e5                                      ldr r3, [r4]
005e5310  04 00 a0 e1                                      mov r0, r4
005e5314  0f e0 a0 e1                                      mov lr, pc
005e5318  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005e531c  06 20 a0 e1                                      mov r2, r6
005e5320  01 60 86 e2                                      add r6, r6, #1
005e5324  03 00 56 e3                                      cmp r6, #3
005e5328  08 50 85 e2                                      add r5, r5, #8
005e532c  d2 ff ff 1a                                      bne #0x5e527c
005e5330  20 00 9d e5                                      ldr r0, [sp, #0x20]
005e5334  00 20 9d e5                                      ldr r2, [sp]
005e5338  02 00 50 e1                                      cmp r0, r2
005e533c  02 00 00 0a                                      beq #0x5e534c
005e5340  00 00 50 e3                                      cmp r0, #0
005e5344  00 00 00 0a                                      beq #0x5e534c
005e5348  40 ac f4 eb                                      bl #0x310450
005e534c  04 20 9d e5                                      ldr r2, [sp, #4]
005e5350  02 30 97 e7                                      ldr r3, [r7, r2]
005e5354  24 20 9d e5                                      ldr r2, [sp, #0x24]
005e5358  00 30 93 e5                                      ldr r3, [r3]
005e535c  03 00 52 e1                                      cmp r2, r3
005e5360  01 00 00 1a                                      bne #0x5e536c
005e5364  2c d0 8d e2                                      add sp, sp, #0x2c
005e5368  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e536c  e7 a3 f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005e5370  f8 f8 3a 00 ac 40 00 00 c8 6b 2e 00 a8 d9 2f 00  .byte 0xf8, 0xf8, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0x6b, 0x2e, 0x00, 0xa8, 0xd9, 0x2f, 0x00
005e5380  7c d9 2f 00 68 d9 2f 00 00 b8 2f 00 18 b8 2f 00  .byte 0x7c, 0xd9, 0x2f, 0x00, 0x68, 0xd9, 0x2f, 0x00, 0x00, 0xb8, 0x2f, 0x00, 0x18, 0xb8, 0x2f, 0x00
