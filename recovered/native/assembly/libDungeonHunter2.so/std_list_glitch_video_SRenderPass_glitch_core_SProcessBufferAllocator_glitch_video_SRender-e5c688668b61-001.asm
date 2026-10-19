; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d8a2c, declared_size=152, range_size=152, mode=arm
; class-group: std::list<glitch::video::SRenderPass, glitch::core::SProcessBufferAllocator<glitch::video::SRenderPass> >
; alias: _ZNSt4listIN6glitch5video11SRenderPassENS0_4core23SProcessBufferAllocatorIS2_EEE6insertENSt4priv14_List_iteratorIS2_St16_Nonconst_traitsIS2_EEERKS2_
; demangled: std::list<glitch::video::SRenderPass, glitch::core::SProcessBufferAllocator<glitch::video::SRenderPass> >::insert(std::priv::_List_iterator<glitch::video::SRenderPass, std::_Nonconst_traits<glitch::video::SRenderPass> >, glitch::video::SRenderPass const&)
; decoder-mode: arm
005d8a2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d8a30  00 70 a0 e1                                      mov r7, r0
005d8a34  3c 00 a0 e3                                      mov r0, #0x3c
005d8a38  03 40 a0 e1                                      mov r4, r3
005d8a3c  02 80 a0 e1                                      mov r8, r2
005d8a40  eb 6e fd eb                                      bl #0x5345f4
005d8a44  04 60 a0 e1                                      mov r6, r4
005d8a48  08 50 80 e2                                      add r5, r0, #8
005d8a4c  00 c0 a0 e1                                      mov ip, r0
005d8a50  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
005d8a54  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
005d8a58  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
005d8a5c  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
005d8a60  20 30 94 e5                                      ldr r3, [r4, #0x20]
005d8a64  07 00 a0 e1                                      mov r0, r7
005d8a68  28 30 8c e5                                      str r3, [ip, #0x28]
005d8a6c  00 00 53 e3                                      cmp r3, #0
005d8a70  04 20 93 15                                      ldrne r2, [r3, #4]
005d8a74  01 20 82 12                                      addne r2, r2, #1
005d8a78  04 20 83 15                                      strne r2, [r3, #4]
005d8a7c  24 30 94 e5                                      ldr r3, [r4, #0x24]
005d8a80  2c 30 8c e5                                      str r3, [ip, #0x2c]
005d8a84  28 30 94 e5                                      ldr r3, [r4, #0x28]
005d8a88  30 30 8c e5                                      str r3, [ip, #0x30]
005d8a8c  bc 32 d4 e1                                      ldrh r3, [r4, #0x2c]
005d8a90  b4 33 cc e1                                      strh r3, [ip, #0x34]
005d8a94  be 32 d4 e1                                      ldrh r3, [r4, #0x2e]
005d8a98  b6 33 cc e1                                      strh r3, [ip, #0x36]
005d8a9c  30 30 d4 e5                                      ldrb r3, [r4, #0x30]
005d8aa0  38 30 cc e5                                      strb r3, [ip, #0x38]
005d8aa4  00 30 98 e5                                      ldr r3, [r8]
005d8aa8  04 20 93 e5                                      ldr r2, [r3, #4]
005d8aac  00 30 8c e5                                      str r3, [ip]
005d8ab0  04 20 8c e5                                      str r2, [ip, #4]
005d8ab4  00 c0 82 e5                                      str ip, [r2]
005d8ab8  04 c0 83 e5                                      str ip, [r3, #4]
005d8abc  00 c0 87 e5                                      str ip, [r7]
005d8ac0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
