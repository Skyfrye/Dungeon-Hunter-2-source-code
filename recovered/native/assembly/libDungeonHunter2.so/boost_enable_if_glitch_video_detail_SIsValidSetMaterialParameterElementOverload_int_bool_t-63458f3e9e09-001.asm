; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005cb098, declared_size=300, range_size=300, mode=arm
; class-group: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >
; alias: _ZN6glitch5video6detail19IMaterialParametersINS0_9CMaterialENS_24ISharedMemoryBlockHeaderIS3_EEE19setParameterElementIiEEN5boost9enable_ifINS1_43SIsValidSetMaterialParameterElementOverloadIT_EEbE4typeEtjhSB_
; demangled: boost::enable_if<glitch::video::detail::SIsValidSetMaterialParameterElementOverload<int>, bool>::type glitch::video::detail::IMaterialParameters<glitch::video::CMaterial, glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial> >::setParameterElement<int>(unsigned short, unsigned int, unsigned char, int)
; decoder-mode: arm
005cb098  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005cb09c  04 c0 90 e5                                      ldr ip, [r0, #4]
005cb0a0  00 50 a0 e1                                      mov r5, r0
005cb0a4  08 41 9f e5                                      ldr r4, [pc, #0x108]
005cb0a8  be 00 dc e1                                      ldrh r0, [ip, #0xe]
005cb0ac  03 70 a0 e1                                      mov r7, r3
005cb0b0  04 40 8f e0                                      add r4, pc, r4
005cb0b4  01 00 50 e1                                      cmp r0, r1
005cb0b8  20 60 9d e5                                      ldr r6, [sp, #0x20]
005cb0bc  01 00 00 8a                                      bhi #0x5cb0c8
005cb0c0  00 00 a0 e3                                      mov r0, #0
005cb0c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cb0c8  20 30 9c e5                                      ldr r3, [ip, #0x20]
005cb0cc  01 12 93 e0                                      adds r1, r3, r1, lsl #4
005cb0d0  fa ff ff 0a                                      beq #0x5cb0c0
005cb0d4  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
005cb0d8  06 30 d1 e5                                      ldrb r3, [r1, #6]
005cb0dc  00 00 94 e7                                      ldr r0, [r4, r0]
005cb0e0  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
005cb0e4  01 00 50 e3                                      cmp r0, #1
005cb0e8  f4 ff ff 1a                                      bne #0x5cb0c0
005cb0ec  c8 00 9f e5                                      ldr r0, [pc, #0xc8]
005cb0f0  00 00 94 e7                                      ldr r0, [r4, r0]
005cb0f4  03 00 d0 e7                                      ldrb r0, [r0, r3]
005cb0f8  00 00 57 e1                                      cmp r7, r0
005cb0fc  ef ff ff 2a                                      bhs #0x5cb0c0
005cb100  08 00 91 e5                                      ldr r0, [r1, #8]
005cb104  00 00 52 e1                                      cmp r2, r0
005cb108  ec ff ff 2a                                      bhs #0x5cb0c0
005cb10c  0b 00 53 e3                                      cmp r3, #0xb
005cb110  0b 00 00 0a                                      beq #0x5cb144
005cb114  0c 10 91 e5                                      ldr r1, [r1, #0xc]
005cb118  02 20 87 e0                                      add r2, r7, r2
005cb11c  20 30 85 e2                                      add r3, r5, #0x20
005cb120  02 21 81 e0                                      add r2, r1, r2, lsl #2
005cb124  02 10 93 e7                                      ldr r1, [r3, r2]
005cb128  01 00 a0 e3                                      mov r0, #1
005cb12c  01 00 56 e1                                      cmp r6, r1
005cb130  00 10 e0 13                                      mvnne r1, #0
005cb134  0c 10 85 15                                      strne r1, [r5, #0xc]
005cb138  10 10 85 15                                      strne r1, [r5, #0x10]
005cb13c  02 60 83 e7                                      str r6, [r3, r2]
005cb140  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cb144  0c a0 91 e5                                      ldr sl, [r1, #0xc]
005cb148  20 90 85 e2                                      add sb, r5, #0x20
005cb14c  0a 80 99 e7                                      ldr r8, [sb, sl]
005cb150  00 00 58 e3                                      cmp r8, #0
005cb154  0d 00 00 0a                                      beq #0x5cb190
005cb158  00 30 a0 e3                                      mov r3, #0
005cb15c  40 30 c8 e5                                      strb r3, [r8, #0x40]
005cb160  07 01 98 e7                                      ldr r0, [r8, r7, lsl #2]
005cb164  06 10 a0 e1                                      mov r1, r6
005cb168  87 0b f5 eb                                      bl #0x30df8c
005cb16c  00 00 50 e3                                      cmp r0, #0
005cb170  00 30 e0 03                                      mvneq r3, #0
005cb174  0c 30 85 05                                      streq r3, [r5, #0xc]
005cb178  10 30 85 05                                      streq r3, [r5, #0x10]
005cb17c  06 00 a0 e1                                      mov r0, r6
005cb180  f7 0d f5 eb                                      bl #0x30e964
005cb184  07 01 88 e7                                      str r0, [r8, r7, lsl #2]
005cb188  01 00 a0 e3                                      mov r0, #1
005cb18c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005cb190  08 10 a0 e1                                      mov r1, r8
005cb194  44 00 a0 e3                                      mov r0, #0x44
005cb198  f2 14 f5 eb                                      bl #0x310568
005cb19c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
005cb1a0  0a 00 89 e7                                      str r0, [sb, sl]
005cb1a4  03 10 94 e7                                      ldr r1, [r4, r3]
005cb1a8  66 ff ff eb                                      bl #0x5caf48
005cb1ac  0a 80 99 e7                                      ldr r8, [sb, sl]
005cb1b0  e8 ff ff ea                                      b #0x5cb158
; mapping-symbol data/literal pool
005cb1b4  e0 99 3c 00 ac 3b 00 00 ac 2b 00 00 30 28 00 00  .byte 0xe0, 0x99, 0x3c, 0x00, 0xac, 0x3b, 0x00, 0x00, 0xac, 0x2b, 0x00, 0x00, 0x30, 0x28, 0x00, 0x00
