; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d404c, declared_size=264, range_size=264, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<unsigned char>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_17CMaterialRendererENS_24ISharedMemoryBlockHeaderIS3_EEE19setParameterElementIhEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<unsigned char>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterialRenderer, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialRenderer> >::setParameterElement<unsigned char>(unsigned short, unsigned int, unsigned char, unsigned char)
; decoder-mode: arm
005d404c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d4050  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
005d4054  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
005d4058  08 d0 4d e2                                      sub sp, sp, #8
005d405c  01 00 5c e1                                      cmp ip, r1
005d4060  04 40 8f e0                                      add r4, pc, r4
005d4064  20 50 dd e5                                      ldrb r5, [sp, #0x20]
005d4068  19 00 00 9a                                      bls #0x5d40d4
005d406c  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005d4070  01 12 9c e0                                      adds r1, ip, r1, lsl #4
005d4074  16 00 00 0a                                      beq #0x5d40d4
005d4078  c8 60 9f e5                                      ldr r6, [pc, #0xc8]
005d407c  06 c0 d1 e5                                      ldrb ip, [r1, #6]
005d4080  06 60 94 e7                                      ldr r6, [r4, r6]
005d4084  0c 61 96 e7                                      ldr r6, [r6, ip, lsl #2]
005d4088  00 00 56 e3                                      cmp r6, #0
005d408c  10 00 00 1a                                      bne #0x5d40d4
005d4090  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
005d4094  06 60 94 e7                                      ldr r6, [r4, r6]
005d4098  0c 60 d6 e7                                      ldrb r6, [r6, ip]
005d409c  06 00 53 e1                                      cmp r3, r6
005d40a0  0b 00 00 2a                                      bhs #0x5d40d4
005d40a4  08 60 91 e5                                      ldr r6, [r1, #8]
005d40a8  06 00 52 e1                                      cmp r2, r6
005d40ac  08 00 00 2a                                      bhs #0x5d40d4
005d40b0  0b 00 5c e3                                      cmp ip, #0xb
005d40b4  09 00 00 0a                                      beq #0x5d40e0
005d40b8  24 c0 90 e5                                      ldr ip, [r0, #0x24]
005d40bc  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005d40c0  01 00 a0 e3                                      mov r0, #1
005d40c4  03 30 8c e0                                      add r3, ip, r3
005d40c8  02 20 83 e0                                      add r2, r3, r2
005d40cc  01 50 c2 e7                                      strb r5, [r2, r1]
005d40d0  00 00 00 ea                                      b #0x5d40d8
005d40d4  00 00 a0 e3                                      mov r0, #0
005d40d8  08 d0 8d e2                                      add sp, sp, #8
005d40dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005d40e0  24 70 90 e5                                      ldr r7, [r0, #0x24]
005d40e4  0c 60 91 e5                                      ldr r6, [r1, #0xc]
005d40e8  06 80 97 e7                                      ldr r8, [r7, r6]
005d40ec  00 00 58 e3                                      cmp r8, #0
005d40f0  08 00 00 0a                                      beq #0x5d4118
005d40f4  00 20 a0 e3                                      mov r2, #0
005d40f8  40 20 c8 e5                                      strb r2, [r8, #0x40]
005d40fc  05 00 a0 e1                                      mov r0, r5
005d4100  04 30 8d e5                                      str r3, [sp, #4]
005d4104  75 e8 f4 eb                                      bl #0x30e2e0
005d4108  04 30 9d e5                                      ldr r3, [sp, #4]
005d410c  03 01 88 e7                                      str r0, [r8, r3, lsl #2]
005d4110  01 00 a0 e3                                      mov r0, #1
005d4114  ef ff ff ea                                      b #0x5d40d8
005d4118  08 10 a0 e1                                      mov r1, r8
005d411c  44 00 a0 e3                                      mov r0, #0x44
005d4120  04 30 8d e5                                      str r3, [sp, #4]
005d4124  0f f1 f4 eb                                      bl #0x310568
005d4128  20 20 9f e5                                      ldr r2, [pc, #0x20]
005d412c  06 00 87 e7                                      str r0, [r7, r6]
005d4130  02 10 94 e7                                      ldr r1, [r4, r2]
005d4134  bc ff ff eb                                      bl #0x5d402c
005d4138  06 80 97 e7                                      ldr r8, [r7, r6]
005d413c  04 30 9d e5                                      ldr r3, [sp, #4]
005d4140  eb ff ff ea                                      b #0x5d40f4
; mapping-symbol data/literal pool
005d4144  30 0a 3c 00 ac 3b 00 00 ac 2b 00 00 30 28 00 00  .byte 0x30, 0x0a, 0x3c, 0x00, 0xac, 0x3b, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00, 0x30, 0x28, 0x00, 0x00
