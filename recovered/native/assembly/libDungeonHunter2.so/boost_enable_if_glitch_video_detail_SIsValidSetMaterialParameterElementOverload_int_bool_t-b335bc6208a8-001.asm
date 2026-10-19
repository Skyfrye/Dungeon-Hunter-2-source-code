; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d4154, declared_size=264, range_size=264, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE19setParameterElementIiEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterElement<int>(unsigned short, unsigned int, unsigned char, int)
; decoder-mode: arm
005d4154  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d4158  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d415c  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
005d4160  08 d0 4d e2                                      sub sp, sp, #8
005d4164  01 00 5c e1                                      cmp ip, r1
005d4168  04 40 8f e0                                      add r4, pc, r4
005d416c  20 50 9d e5                                      ldr r5, [sp, #0x20]
005d4170  08 00 00 9a                                      bls #0x5d4198
005d4174  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d4178  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d417c  05 00 00 0a                                      beq #0x5d4198
005d4180  c8 c0 9f e5                                      ldr ip, [pc, #0xc8]
005d4184  06 60 d1 e5                                      ldrb r6, [r1, #6]
005d4188  0c c0 94 e7                                      ldr ip, [r4, ip]
005d418c  06 c1 9c e7                                      ldr ip, [ip, r6, lsl #2]
005d4190  01 00 5c e3                                      cmp ip, #1
005d4194  02 00 00 0a                                      beq #0x5d41a4
005d4198  00 00 a0 e3                                      mov r0, #0
005d419c  08 d0 8d e2                                      add sp, sp, #8
005d41a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d41a4  a8 70 9f e5                                      ldr r7, [pc, #0xa8]
005d41a8  07 70 94 e7                                      ldr r7, [r4, r7]
005d41ac  06 70 d7 e7                                      ldrb r7, [r7, r6]
005d41b0  07 00 53 e1                                      cmp r3, r7
005d41b4  f7 ff ff 2a                                      bhs #0x5d4198
005d41b8  08 70 91 e5                                      ldr r7, [r1, #8]
005d41bc  07 00 52 e1                                      cmp r2, r7
005d41c0  f4 ff ff 2a                                      bhs #0x5d4198
005d41c4  0b 00 56 e3                                      cmp r6, #0xb
005d41c8  06 00 00 0a                                      beq #0x5d41e8
005d41cc  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005d41d0  24 10 90 e5                                      ldr r1, [r0, #0x24]
005d41d4  02 30 83 e0                                      add r3, r3, r2
005d41d8  03 31 84 e0                                      add r3, r4, r3, lsl #2
005d41dc  03 50 81 e7                                      str r5, [r1, r3]
005d41e0  0c 00 a0 e1                                      mov r0, ip
005d41e4  ec ff ff ea                                      b #0x5d419c
005d41e8  24 70 90 e5                                      ldr r7, [r0, #0x24]
005d41ec  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005d41f0  06 80 97 e7                                      ldr r8, [r7, r6]
005d41f4  00 00 58 e3                                      cmp r8, #0
005d41f8  08 00 00 0a                                      beq #0x5d4220
005d41fc  00 20 a0 e3                                      mov r2, #0
005d4200  40 20 c8 e5                                      strb r2, [r8, #0x40]
005d4204  05 00 a0 e1                                      mov r0, r5
005d4208  04 30 8d e5                                      str r3, [sp, #4]
005d420c  d4 e9 f4 eb                                      bl #0x30e964
005d4210  04 30 9d e5                                      ldr r3, [sp, #4]
005d4214  03 01 88 e7                                      str r0, [r8, r3, lsl #2]
005d4218  01 00 a0 e3                                      mov r0, #1
005d421c  de ff ff ea                                      b #0x5d419c
005d4220  08 10 a0 e1                                      mov r1, r8
005d4224  44 00 a0 e3                                      mov r0, #0x44
005d4228  04 30 8d e5                                      str r3, [sp, #4]
005d422c  cd f0 f4 eb                                      bl #0x310568
005d4230  20 20 9f e5                                      ldr r2, [pc, #0x20]
005d4234  06 00 87 e7                                      str r0, [r7, r6]
005d4238  02 10 94 e7                                      ldr r1, [r4, r2]
005d423c  7a ff ff eb                                      bl #0x5d402c
005d4240  06 80 97 e7                                      ldr r8, [r7, r6]
005d4244  04 30 9d e5                                      ldr r3, [sp, #4]
005d4248  eb ff ff ea                                      b #0x5d41fc
; mapping-symbol data/literal pool
005d424c  28 09 3c 00 ac 3b 00 00 ac 2b 00 00 30 28 00 00  .byte 0x28, 0x09, 0x3c, 0x00, 0xac, 0x3b, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00, 0x30, 0x28, 0x00, 0x00
