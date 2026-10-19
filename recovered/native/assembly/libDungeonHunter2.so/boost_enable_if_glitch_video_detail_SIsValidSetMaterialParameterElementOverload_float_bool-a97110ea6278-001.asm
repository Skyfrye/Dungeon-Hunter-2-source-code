; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d425c, declared_size=244, range_size=244, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE19setParameterElementIfEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<float>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterElement<float>(unsigned short, unsigned int, unsigned char, float)
; decoder-mode: arm
005d425c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005d4260  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d4264  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
005d4268  0c d0 4d e2                                      sub sp, sp, #0xc
005d426c  01 00 5c e1                                      cmp ip, r1
005d4270  04 40 8f e0                                      add r4, pc, r4
005d4274  20 50 9d e5                                      ldr r5, [sp, #0x20]
005d4278  08 00 00 9a                                      bls #0x5d42a0
005d427c  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d4280  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d4284  05 00 00 0a                                      beq #0x5d42a0
005d4288  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
005d428c  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d4290  06 60 94 e7                                      ldr r6, [r4, r6]
005d4294  0c 61 96 e7                                      ldr r6, [r6, ip, lsl #2]
005d4298  05 00 56 e3                                      cmp r6, #5
005d429c  02 00 00 0a                                      beq #0x5d42ac
005d42a0  00 00 a0 e3                                      mov r0, #0
005d42a4  0c d0 8d e2                                      add sp, sp, #0xc
005d42a8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005d42ac  94 60 9f e5                                      ldr r6, [pc, #0x94]
005d42b0  06 60 94 e7                                      ldr r6, [r4, r6]
005d42b4  0c 60 d6 e7                                      ldrb r6, [r6, ip]
005d42b8  06 00 53 e1                                      cmp r3, r6
005d42bc  f7 ff ff 2a                                      bhs #0x5d42a0
005d42c0  08 60 91 e5                                      ldr r6, [r1, #8]
005d42c4  06 00 52 e1                                      cmp r2, r6
005d42c8  f4 ff ff 2a                                      bhs #0x5d42a0
005d42cc  0b 00 5c e3                                      cmp ip, #0xb
005d42d0  06 00 00 0a                                      beq #0x5d42f0
005d42d4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005d42d8  24 10 90 e5                                      ldr r1, [r0, #0x24]
005d42dc  02 30 83 e0                                      add r3, r3, r2
005d42e0  03 31 8c e0                                      add r3, ip, r3, lsl #2
005d42e4  03 50 81 e7                                      str r5, [r1, r3]
005d42e8  01 00 a0 e3                                      mov r0, #1
005d42ec  ec ff ff ea                                      b #0x5d42a4
005d42f0  24 70 90 e5                                      ldr r7, [r0, #0x24]
005d42f4  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005d42f8  06 10 97 e7                                      ldr r1, [r7, r6]
005d42fc  00 00 51 e3                                      cmp r1, #0
005d4300  04 00 00 0a                                      beq #0x5d4318
005d4304  00 20 a0 e3                                      mov r2, #0
005d4308  40 20 c1 e5                                      strb r2, [r1, #0x40]
005d430c  01 00 a0 e3                                      mov r0, #1
005d4310  03 51 81 e7                                      str r5, [r1, r3, lsl #2]
005d4314  e2 ff ff ea                                      b #0x5d42a4
005d4318  44 00 a0 e3                                      mov r0, #0x44
005d431c  04 30 8d e5                                      str r3, [sp, #4]
005d4320  90 f0 f4 eb                                      bl #0x310568
005d4324  20 20 9f e5                                      ldr r2, [pc, #0x20]
005d4328  06 00 87 e7                                      str r0, [r7, r6]
005d432c  02 10 94 e7                                      ldr r1, [r4, r2]
005d4330  3d ff ff eb                                      bl #0x5d402c
005d4334  06 10 97 e7                                      ldr r1, [r7, r6]
005d4338  04 30 9d e5                                      ldr r3, [sp, #4]
005d433c  f0 ff ff ea                                      b #0x5d4304
; mapping-symbol data/literal pool
005d4340  20 08 3c 00 ac 3b 00 00 ac 2b 00 00 30 28 00 00  .byte 0x20, 0x08, 0x3c, 0x00, 0xac, 0x3b, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00, 0x30, 0x28, 0x00, 0x00
