; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a2938, declared_size=336, range_size=336, mode=arm
; class-group: glitch::core::SBufferData& std::map<boost::intrusive_ptr<glitch::video::IBuffer const>, glitch::core::SBufferData, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >
; alias: _ZNSt3mapIN5boost13intrusive_ptrIKN6glitch5video7IBufferEEENS2_4core11SBufferDataESt4lessIS6_ESaISt4pairIKS6_S8_EEEixINS1_IS4_EEEERS8_RKT_
; demangled: glitch::core::SBufferData& std::map<boost::intrusive_ptr<glitch::video::IBuffer const>, glitch::core::SBufferData, std::less<boost::intrusive_ptr<glitch::video::IBuffer const> >, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::IBuffer const> const, glitch::core::SBufferData> > >::operator[]<boost::intrusive_ptr<glitch::video::IBuffer> >(boost::intrusive_ptr<glitch::video::IBuffer> const&)
; decoder-mode: arm
006a2938  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006a293c  04 50 90 e5                                      ldr r5, [r0, #4]
006a2940  1c d0 4d e2                                      sub sp, sp, #0x1c
006a2944  00 60 a0 e1                                      mov r6, r0
006a2948  00 00 55 e3                                      cmp r5, #0
006a294c  01 a0 a0 e1                                      mov sl, r1
006a2950  49 00 00 0a                                      beq #0x6a2a7c
006a2954  00 40 91 e5                                      ldr r4, [r1]
006a2958  00 80 a0 e1                                      mov r8, r0
006a295c  06 00 00 ea                                      b #0x6a297c
006a2960  0c 30 95 e5                                      ldr r3, [r5, #0xc]
006a2964  08 50 a0 e1                                      mov r5, r8
006a2968  00 40 9a e5                                      ldr r4, [sl]
006a296c  00 00 53 e3                                      cmp r3, #0
006a2970  05 80 a0 e1                                      mov r8, r5
006a2974  0e 00 00 0a                                      beq #0x6a29b4
006a2978  03 50 a0 e1                                      mov r5, r3
006a297c  00 00 54 e2                                      subs r0, r4, #0
006a2980  07 00 00 0a                                      beq #0x6a29a4
006a2984  04 30 94 e5                                      ldr r3, [r4, #4]
006a2988  01 30 83 e2                                      add r3, r3, #1
006a298c  04 30 84 e5                                      str r3, [r4, #4]
006a2990  10 70 95 e5                                      ldr r7, [r5, #0x10]
006a2994  fa ea f1 eb                                      bl #0x31d584
006a2998  04 00 57 e1                                      cmp r7, r4
006a299c  ef ff ff 3a                                      blo #0x6a2960
006a29a0  00 40 9a e5                                      ldr r4, [sl]
006a29a4  08 30 95 e5                                      ldr r3, [r5, #8]
006a29a8  05 80 a0 e1                                      mov r8, r5
006a29ac  00 00 53 e3                                      cmp r3, #0
006a29b0  f0 ff ff 1a                                      bne #0x6a2978
006a29b4  05 00 56 e1                                      cmp r6, r5
006a29b8  0c 00 00 0a                                      beq #0x6a29f0
006a29bc  00 00 54 e3                                      cmp r4, #0
006a29c0  04 30 94 15                                      ldrne r3, [r4, #4]
006a29c4  05 70 a0 e1                                      mov r7, r5
006a29c8  01 30 83 12                                      addne r3, r3, #1
006a29cc  04 30 84 15                                      strne r3, [r4, #4]
006a29d0  00 00 54 e3                                      cmp r4, #0
006a29d4  10 80 95 e5                                      ldr r8, [r5, #0x10]
006a29d8  01 00 00 0a                                      beq #0x6a29e4
006a29dc  04 00 a0 e1                                      mov r0, r4
006a29e0  e7 ea f1 eb                                      bl #0x31d584
006a29e4  04 00 58 e1                                      cmp r8, r4
006a29e8  20 00 00 9a                                      bls #0x6a2a70
006a29ec  00 40 9a e5                                      ldr r4, [sl]
006a29f0  00 00 54 e3                                      cmp r4, #0
006a29f4  04 30 94 15                                      ldrne r3, [r4, #4]
006a29f8  00 c0 a0 e3                                      mov ip, #0
006a29fc  14 00 8d e2                                      add r0, sp, #0x14
006a2a00  01 30 83 12                                      addne r3, r3, #1
006a2a04  04 30 84 15                                      strne r3, [r4, #4]
006a2a08  00 00 54 e3                                      cmp r4, #0
006a2a0c  04 40 8d e5                                      str r4, [sp, #4]
006a2a10  04 30 94 15                                      ldrne r3, [r4, #4]
006a2a14  06 10 a0 e1                                      mov r1, r6
006a2a18  10 20 8d e2                                      add r2, sp, #0x10
006a2a1c  01 30 83 12                                      addne r3, r3, #1
006a2a20  04 30 84 15                                      strne r3, [r4, #4]
006a2a24  04 30 8d e2                                      add r3, sp, #4
006a2a28  be c0 cd e1                                      strh ip, [sp, #0xe]
006a2a2c  10 50 8d e5                                      str r5, [sp, #0x10]
006a2a30  08 c0 8d e5                                      str ip, [sp, #8]
006a2a34  bc c0 cd e1                                      strh ip, [sp, #0xc]
006a2a38  e1 fe ff eb                                      bl #0x6a25c4
006a2a3c  08 00 9d e5                                      ldr r0, [sp, #8]
006a2a40  14 70 9d e5                                      ldr r7, [sp, #0x14]
006a2a44  00 00 50 e3                                      cmp r0, #0
006a2a48  00 00 00 0a                                      beq #0x6a2a50
006a2a4c  cc ea f1 eb                                      bl #0x31d584
006a2a50  04 00 9d e5                                      ldr r0, [sp, #4]
006a2a54  00 00 50 e3                                      cmp r0, #0
006a2a58  00 00 00 0a                                      beq #0x6a2a60
006a2a5c  c8 ea f1 eb                                      bl #0x31d584
006a2a60  00 00 54 e3                                      cmp r4, #0
006a2a64  01 00 00 0a                                      beq #0x6a2a70
006a2a68  04 00 a0 e1                                      mov r0, r4
006a2a6c  c4 ea f1 eb                                      bl #0x31d584
006a2a70  14 00 87 e2                                      add r0, r7, #0x14
006a2a74  1c d0 8d e2                                      add sp, sp, #0x1c
006a2a78  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006a2a7c  00 40 91 e5                                      ldr r4, [r1]
006a2a80  00 50 a0 e1                                      mov r5, r0
006a2a84  ca ff ff ea                                      b #0x6a29b4
