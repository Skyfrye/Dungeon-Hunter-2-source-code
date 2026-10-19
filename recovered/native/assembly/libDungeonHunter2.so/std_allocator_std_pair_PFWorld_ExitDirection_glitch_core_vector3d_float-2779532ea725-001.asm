; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00522b94, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<std::pair<PFWorld::ExitDirection, glitch::core::vector3d<float> > >
; alias: _ZNSaISt4pairIN7PFWorld13ExitDirectionEN6glitch4core8vector3dIfEEEE11_M_allocateEjRj
; demangled: std::allocator<std::pair<PFWorld::ExitDirection, glitch::core::vector3d<float> > >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00522b94  10 40 2d e9                                      push {r4, lr}
00522b98  1f 02 71 e3                                      cmn r1, #0xf0000001
00522b9c  08 d0 4d e2                                      sub sp, sp, #8
00522ba0  02 40 a0 e1                                      mov r4, r2
00522ba4  10 00 00 8a                                      bhi #0x522bec
00522ba8  00 00 51 e3                                      cmp r1, #0
00522bac  01 00 a0 01                                      moveq r0, r1
00522bb0  01 00 00 1a                                      bne #0x522bbc
00522bb4  08 d0 8d e2                                      add sp, sp, #8
00522bb8  10 80 bd e8                                      pop {r4, pc}
00522bbc  01 02 a0 e1                                      lsl r0, r1, #4
00522bc0  80 00 50 e3                                      cmp r0, #0x80
00522bc4  04 00 8d e5                                      str r0, [sp, #4]
00522bc8  05 00 00 8a                                      bhi #0x522be4
00522bcc  04 00 8d e2                                      add r0, sp, #4
00522bd0  ba 98 07 eb                                      bl #0x708ec0
00522bd4  04 30 9d e5                                      ldr r3, [sp, #4]
00522bd8  23 32 a0 e1                                      lsr r3, r3, #4
00522bdc  00 30 84 e5                                      str r3, [r4]
00522be0  f3 ff ff ea                                      b #0x522bb4
00522be4  1a b6 f7 eb                                      bl #0x310454
00522be8  f9 ff ff ea                                      b #0x522bd4
00522bec  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00522bf0  00 00 8f e0                                      add r0, pc, r0
00522bf4  32 ad f7 eb                                      bl #0x30e0c4
00522bf8  01 00 a0 e3                                      mov r0, #1
00522bfc  91 ac f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00522c00  80 b8 39 00                                      .byte 0x80, 0xb8, 0x39, 0x00
