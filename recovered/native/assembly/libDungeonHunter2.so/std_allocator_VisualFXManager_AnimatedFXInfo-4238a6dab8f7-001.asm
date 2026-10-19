; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493b7c, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<VisualFXManager::AnimatedFXInfo>
; alias: _ZNSaIN15VisualFXManager14AnimatedFXInfoEE11_M_allocateEjRj
; demangled: std::allocator<VisualFXManager::AnimatedFXInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00493b7c  10 40 2d e9                                      push {r4, lr}
00493b80  aa 3a 0a e3                                      movw r3, #0xaaaa
00493b84  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00493b88  03 00 51 e1                                      cmp r1, r3
00493b8c  08 d0 4d e2                                      sub sp, sp, #8
00493b90  02 40 a0 e1                                      mov r4, r2
00493b94  14 00 00 8a                                      bhi #0x493bec
00493b98  00 00 51 e3                                      cmp r1, #0
00493b9c  01 00 a0 01                                      moveq r0, r1
00493ba0  01 00 00 1a                                      bne #0x493bac
00493ba4  08 d0 8d e2                                      add sp, sp, #8
00493ba8  10 80 bd e8                                      pop {r4, pc}
00493bac  18 00 a0 e3                                      mov r0, #0x18
00493bb0  90 01 00 e0                                      mul r0, r0, r1
00493bb4  80 00 50 e3                                      cmp r0, #0x80
00493bb8  04 00 8d e5                                      str r0, [sp, #4]
00493bbc  08 00 00 8a                                      bhi #0x493be4
00493bc0  04 00 8d e2                                      add r0, sp, #4
00493bc4  bd d4 09 eb                                      bl #0x708ec0
00493bc8  04 20 9d e5                                      ldr r2, [sp, #4]
00493bcc  ab 3a 0a e3                                      movw r3, #0xaaab
00493bd0  aa 3a 4a e3                                      movt r3, #0xaaaa
00493bd4  93 12 83 e0                                      umull r1, r3, r3, r2
00493bd8  23 32 a0 e1                                      lsr r3, r3, #4
00493bdc  00 30 84 e5                                      str r3, [r4]
00493be0  ef ff ff ea                                      b #0x493ba4
00493be4  1a f2 f9 eb                                      bl #0x310454
00493be8  f6 ff ff ea                                      b #0x493bc8
00493bec  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00493bf0  00 00 8f e0                                      add r0, pc, r0
00493bf4  32 e9 f9 eb                                      bl #0x30e0c4
00493bf8  01 00 a0 e3                                      mov r0, #1
00493bfc  91 e8 f9 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00493c00  80 a8 42 00                                      .byte 0x80, 0xa8, 0x42, 0x00
