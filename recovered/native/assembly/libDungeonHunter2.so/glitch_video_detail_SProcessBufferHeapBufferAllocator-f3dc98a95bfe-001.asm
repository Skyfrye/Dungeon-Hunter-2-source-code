; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005abaa8, declared_size=176, range_size=176, mode=arm
; class-group: glitch::video::detail::SProcessBufferHeapBufferAllocator
; alias: _ZNK6glitch5video6detail33SProcessBufferHeapBufferAllocator7releaseERKN5boost13intrusive_ptrINS0_7IBufferEEE
; demangled: glitch::video::detail::SProcessBufferHeapBufferAllocator::release(boost::intrusive_ptr<glitch::video::IBuffer> const&) const
; decoder-mode: arm
005abaa8  70 40 2d e9                                      push {r4, r5, r6, lr}
005abaac  00 40 91 e5                                      ldr r4, [r1]
005abab0  01 50 a0 e1                                      mov r5, r1
005abab4  00 00 54 e3                                      cmp r4, #0
005abab8  04 30 94 15                                      ldrne r3, [r4, #4]
005ababc  04 00 a0 01                                      moveq r0, r4
005abac0  01 30 83 12                                      addne r3, r3, #1
005abac4  04 30 84 15                                      strne r3, [r4, #4]
005abac8  00 00 91 15                                      ldrne r0, [r1]
005abacc  04 10 a0 e3                                      mov r1, #4
005abad0  c6 d7 ff eb                                      bl #0x5a19f0
005abad4  00 60 a0 e1                                      mov r6, r0
005abad8  ea 22 fe eb                                      bl #0x534688
005abadc  00 00 56 e3                                      cmp r6, #0
005abae0  07 00 00 0a                                      beq #0x5abb04
005abae4  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005abae8  1f 20 03 e2                                      and r2, r3, #0x1f
005abaec  01 00 52 e3                                      cmp r2, #1
005abaf0  0d 00 00 9a                                      bls #0x5abb2c
005abaf4  01 20 42 e2                                      sub r2, r2, #1
005abaf8  1f 30 c3 e3                                      bic r3, r3, #0x1f
005abafc  03 30 82 e1                                      orr r3, r2, r3
005abb00  13 30 c4 e5                                      strb r3, [r4, #0x13]
005abb04  00 00 54 e3                                      cmp r4, #0
005abb08  01 00 00 0a                                      beq #0x5abb14
005abb0c  04 00 a0 e1                                      mov r0, r4
005abb10  9b c6 f5 eb                                      bl #0x31d584
005abb14  00 00 95 e5                                      ldr r0, [r5]
005abb18  00 10 a0 e3                                      mov r1, #0
005abb1c  01 20 a0 e1                                      mov r2, r1
005abb20  01 30 a0 e3                                      mov r3, #1
005abb24  70 40 bd e8                                      pop {r4, r5, r6, lr}
005abb28  61 d8 ff ea                                      b #0x5a1cb4
005abb2c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005abb30  20 00 13 e3                                      tst r3, #0x20
005abb34  02 00 00 1a                                      bne #0x5abb44
005abb38  00 30 a0 e3                                      mov r3, #0
005abb3c  13 30 c4 e5                                      strb r3, [r4, #0x13]
005abb40  ef ff ff ea                                      b #0x5abb04
005abb44  00 30 94 e5                                      ldr r3, [r4]
005abb48  04 00 a0 e1                                      mov r0, r4
005abb4c  0f e0 a0 e1                                      mov lr, pc
005abb50  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005abb54  f7 ff ff ea                                      b #0x5abb38
