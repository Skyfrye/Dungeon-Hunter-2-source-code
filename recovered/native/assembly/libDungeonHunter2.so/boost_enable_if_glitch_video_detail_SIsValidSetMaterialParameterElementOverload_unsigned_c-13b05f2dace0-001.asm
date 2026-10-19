; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005caf68, declared_size=304, range_size=304, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<unsigned char>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE19setParameterElementIhEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<unsigned char>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterElement<unsigned char>(unsigned short, unsigned int, unsigned char, unsigned char)
; decoder-mode: arm
005caf68  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005caf6c  00 50 a0 e1                                      mov r5, r0
005caf70  04 00 90 e5                                      ldr r0, [r0, #4]
005caf74  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
005caf78  03 60 a0 e1                                      mov r6, r3
005caf7c  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005caf80  04 40 8f e0                                      add r4, pc, r4
005caf84  01 00 5c e1                                      cmp ip, r1
005caf88  01 00 00 8a                                      bhi #0x5caf94
005caf8c  00 00 a0 e3                                      mov r0, #0
005caf90  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005caf94  20 30 90 e5                                      ldr r3, [r0, #0x20]
005caf98  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005caf9c  fa ff ff 0a                                      beq #0x5caf8c
005cafa0  e4 00 9f e5                                      ldr r0, [pc, #0xe4]
005cafa4  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cafa8  00 00 94 e7                                      ldr r0, [r4, r0]
005cafac  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005cafb0  00 00 50 e3                                      cmp r0, #0
005cafb4  f4 ff ff 1a                                      bne #0x5caf8c
005cafb8  d0 00 9f e5                                      ldr r0, [pc, #0xd0]
005cafbc  00 00 94 e7                                      ldr r0, [r4, r0]
005cafc0  03 00 d0 e7                                      ldrb r0, [r0, r3]
005cafc4  00 00 56 e1                                      cmp r6, r0
005cafc8  ef ff ff 2a                                      bhs #0x5caf8c
005cafcc  08 00 91 e5                                      ldr r0, [r1, #8]
005cafd0  00 00 52 e1                                      cmp r2, r0
005cafd4  ec ff ff 2a                                      bhs #0x5caf8c
005cafd8  0b 00 53 e3                                      cmp r3, #0xb
005cafdc  0d 00 00 0a                                      beq #0x5cb018
005cafe0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005cafe4  20 10 85 e2                                      add r1, r5, #0x20
005cafe8  20 00 dd e5                                      ldrb r0, [sp, #0x20]
005cafec  03 20 82 e0                                      add r2, r2, r3
005caff0  06 60 82 e0                                      add r6, r2, r6
005caff4  06 30 d1 e7                                      ldrb r3, [r1, r6]
005caff8  03 00 50 e1                                      cmp r0, r3
005caffc  00 30 e0 13                                      mvnne r3, #0
005cb000  0c 30 85 15                                      strne r3, [r5, #0xc]
005cb004  10 30 85 15                                      strne r3, [r5, #0x10]
005cb008  00 30 a0 11                                      movne r3, r0
005cb00c  06 30 c1 e7                                      strb r3, [r1, r6]
005cb010  01 00 a0 e3                                      mov r0, #1
005cb014  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cb018  0c 80 91 e5                                      ldr r8, [r1, #0xc]
005cb01c  20 a0 85 e2                                      add sl, r5, #0x20
005cb020  08 70 9a e7                                      ldr r7, [sl, r8]
005cb024  00 00 57 e3                                      cmp r7, #0
005cb028  0d 00 00 0a                                      beq #0x5cb064
005cb02c  00 30 a0 e3                                      mov r3, #0
005cb030  40 30 c7 e5                                      strb r3, [r7, #0x40]
005cb034  20 10 9d e5                                      ldr r1, [sp, #0x20]
005cb038  06 01 97 e7                                      ldr r0, [r7, r6, lsl #2]
005cb03c  d2 0b f5 eb                                      bl #0x30df8c
005cb040  00 00 50 e3                                      cmp r0, #0
005cb044  00 30 e0 03                                      mvneq r3, #0
005cb048  0c 30 85 05                                      streq r3, [r5, #0xc]
005cb04c  10 30 85 05                                      streq r3, [r5, #0x10]
005cb050  20 00 dd e5                                      ldrb r0, [sp, #0x20]
005cb054  a1 0c f5 eb                                      bl #0x30e2e0
005cb058  06 01 87 e7                                      str r0, [r7, r6, lsl #2]
005cb05c  01 00 a0 e3                                      mov r0, #1
005cb060  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cb064  07 10 a0 e1                                      mov r1, r7
005cb068  44 00 a0 e3                                      mov r0, #0x44
005cb06c  3d 15 f5 eb                                      bl #0x310568
005cb070  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
005cb074  08 00 8a e7                                      str r0, [sl, r8]
005cb078  03 10 94 e7                                      ldr r1, [r4, r3]
005cb07c  b1 ff ff eb                                      bl #0x5caf48
005cb080  08 70 9a e7                                      ldr r7, [sl, r8]
005cb084  e8 ff ff ea                                      b #0x5cb02c
; mapping-symbol data/literal pool
005cb088  10 9b 3c 00 ac 3b 00 00 ac 2b 00 00 30 28 00 00  .byte 0x10, 0x9b, 0x3c, 0x00, 0xac, 0x3b, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00, 0x30, 0x28, 0x00, 0x00
