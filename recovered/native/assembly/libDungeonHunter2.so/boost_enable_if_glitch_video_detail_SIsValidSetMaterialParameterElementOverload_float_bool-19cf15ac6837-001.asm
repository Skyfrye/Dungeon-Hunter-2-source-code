; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cb1c4, declared_size=320, range_size=320, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE19setParameterElementIfEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterElement<float>(unsigned short, unsigned int, unsigned char, float)
; decoder-mode: arm
005cb1c4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005cb1c8  04 c0 90 e5                                      ldr ip, [r0, #4]
005cb1cc  00 50 a0 e1                                      mov r5, r0
005cb1d0  1c 41 9f e5                                      ldr r4, [pc, #0x11c]
005cb1d4  be 00 dc e1                                      ldrh r0, [ip, #0xe]
005cb1d8  0c d0 4d e2                                      sub sp, sp, #0xc
005cb1dc  04 40 8f e0                                      add r4, pc, r4
005cb1e0  01 00 50 e1                                      cmp r0, r1
005cb1e4  28 60 9d e5                                      ldr r6, [sp, #0x28]
005cb1e8  08 00 00 9a                                      bls #0x5cb210
005cb1ec  20 00 9c e5                                      ldr r0, [ip, #0x20]
005cb1f0  01 12 90 e0                                      adds r1, r0, r1, lsl #4
005cb1f4  05 00 00 0a                                      beq #0x5cb210
005cb1f8  f8 c0 9f e5                                      ldr ip, [pc, #0xf8]
005cb1fc  06 00 d1 e5                                      ldrb r0, [r1, #6]
005cb200  0c c0 94 e7                                      ldr ip, [r4, ip]
005cb204  00 c1 9c e7                                      ldr ip, [ip, r0, lsl #2]
005cb208  05 00 5c e3                                      cmp ip, #5
005cb20c  02 00 00 0a                                      beq #0x5cb21c
005cb210  00 00 a0 e3                                      mov r0, #0
005cb214  0c d0 8d e2                                      add sp, sp, #0xc
005cb218  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005cb21c  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
005cb220  0c c0 94 e7                                      ldr ip, [r4, ip]
005cb224  00 c0 dc e7                                      ldrb ip, [ip, r0]
005cb228  0c 00 53 e1                                      cmp r3, ip
005cb22c  f7 ff ff 2a                                      bhs #0x5cb210
005cb230  08 c0 91 e5                                      ldr ip, [r1, #8]
005cb234  0c 00 52 e1                                      cmp r2, ip
005cb238  f4 ff ff 2a                                      bhs #0x5cb210
005cb23c  0b 00 50 e3                                      cmp r0, #0xb
005cb240  0d 00 00 0a                                      beq #0x5cb27c
005cb244  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cb248  02 30 83 e0                                      add r3, r3, r2
005cb24c  20 70 85 e2                                      add r7, r5, #0x20
005cb250  03 41 81 e0                                      add r4, r1, r3, lsl #2
005cb254  04 10 97 e7                                      ldr r1, [r7, r4]
005cb258  06 00 a0 e1                                      mov r0, r6
005cb25c  4a 0b f5 eb                                      bl #0x30df8c
005cb260  00 00 50 e3                                      cmp r0, #0
005cb264  00 30 e0 03                                      mvneq r3, #0
005cb268  0c 30 85 05                                      streq r3, [r5, #0xc]
005cb26c  10 30 85 05                                      streq r3, [r5, #0x10]
005cb270  01 00 a0 e3                                      mov r0, #1
005cb274  04 60 87 e7                                      str r6, [r7, r4]
005cb278  e5 ff ff ea                                      b #0x5cb214
005cb27c  0c 80 91 e5                                      ldr r8, [r1, #0xc]
005cb280  20 a0 85 e2                                      add sl, r5, #0x20
005cb284  08 70 9a e7                                      ldr r7, [sl, r8]
005cb288  00 00 57 e3                                      cmp r7, #0
005cb28c  0d 00 00 0a                                      beq #0x5cb2c8
005cb290  00 20 a0 e3                                      mov r2, #0
005cb294  40 20 c7 e5                                      strb r2, [r7, #0x40]
005cb298  03 11 97 e7                                      ldr r1, [r7, r3, lsl #2]
005cb29c  06 00 a0 e1                                      mov r0, r6
005cb2a0  04 30 8d e5                                      str r3, [sp, #4]
005cb2a4  38 0b f5 eb                                      bl #0x30df8c
005cb2a8  04 30 9d e5                                      ldr r3, [sp, #4]
005cb2ac  00 00 50 e3                                      cmp r0, #0
005cb2b0  00 20 e0 03                                      mvneq r2, #0
005cb2b4  0c 20 85 05                                      streq r2, [r5, #0xc]
005cb2b8  10 20 85 05                                      streq r2, [r5, #0x10]
005cb2bc  01 00 a0 e3                                      mov r0, #1
005cb2c0  03 61 87 e7                                      str r6, [r7, r3, lsl #2]
005cb2c4  d2 ff ff ea                                      b #0x5cb214
005cb2c8  07 10 a0 e1                                      mov r1, r7
005cb2cc  44 00 a0 e3                                      mov r0, #0x44
005cb2d0  04 30 8d e5                                      str r3, [sp, #4]
005cb2d4  a3 14 f5 eb                                      bl #0x310568
005cb2d8  20 20 9f e5                                      ldr r2, [pc, #0x20]
005cb2dc  08 00 8a e7                                      str r0, [sl, r8]
005cb2e0  02 10 94 e7                                      ldr r1, [r4, r2]
005cb2e4  17 ff ff eb                                      bl #0x5caf48
005cb2e8  08 70 9a e7                                      ldr r7, [sl, r8]
005cb2ec  04 30 9d e5                                      ldr r3, [sp, #4]
005cb2f0  e6 ff ff ea                                      b #0x5cb290
; mapping-symbol data/literal pool
005cb2f4  b4 98 3c 00 ac 3b 00 00 ac 2b 00 00 30 28 00 00  .byte 0xb4, 0x98, 0x3c, 0x00, 0xac, 0x3b, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00, 0x30, 0x28, 0x00, 0x00
