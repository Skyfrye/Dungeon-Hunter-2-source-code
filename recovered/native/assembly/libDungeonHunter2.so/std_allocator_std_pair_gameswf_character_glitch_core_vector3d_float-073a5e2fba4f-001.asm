; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00454494, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<std::pair<gameswf::character*, glitch::core::vector3d<float> > >
; alias: _ZNSaISt4pairIPN7gameswf9characterEN6glitch4core8vector3dIfEEEE11_M_allocateEjRj
; demangled: std::allocator<std::pair<gameswf::character*, glitch::core::vector3d<float> > >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00454494  10 40 2d e9                                      push {r4, lr}
00454498  1f 02 71 e3                                      cmn r1, #0xf0000001
0045449c  08 d0 4d e2                                      sub sp, sp, #8
004544a0  02 40 a0 e1                                      mov r4, r2
004544a4  10 00 00 8a                                      bhi #0x4544ec
004544a8  00 00 51 e3                                      cmp r1, #0
004544ac  01 00 a0 01                                      moveq r0, r1
004544b0  01 00 00 1a                                      bne #0x4544bc
004544b4  08 d0 8d e2                                      add sp, sp, #8
004544b8  10 80 bd e8                                      pop {r4, pc}
004544bc  01 02 a0 e1                                      lsl r0, r1, #4
004544c0  80 00 50 e3                                      cmp r0, #0x80
004544c4  04 00 8d e5                                      str r0, [sp, #4]
004544c8  05 00 00 8a                                      bhi #0x4544e4
004544cc  04 00 8d e2                                      add r0, sp, #4
004544d0  7a d2 0a eb                                      bl #0x708ec0
004544d4  04 30 9d e5                                      ldr r3, [sp, #4]
004544d8  23 32 a0 e1                                      lsr r3, r3, #4
004544dc  00 30 84 e5                                      str r3, [r4]
004544e0  f3 ff ff ea                                      b #0x4544b4
004544e4  da ef fa eb                                      bl #0x310454
004544e8  f9 ff ff ea                                      b #0x4544d4
004544ec  0c 00 9f e5                                      ldr r0, [pc, #0xc]
004544f0  00 00 8f e0                                      add r0, pc, r0
004544f4  f2 e6 fa eb                                      bl #0x30e0c4
004544f8  01 00 a0 e3                                      mov r0, #1
004544fc  51 e6 fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00454500  80 9f 46 00                                      .byte 0x80, 0x9f, 0x46, 0x00
