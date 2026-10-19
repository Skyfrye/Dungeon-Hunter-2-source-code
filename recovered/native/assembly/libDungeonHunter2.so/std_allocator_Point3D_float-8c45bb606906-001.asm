; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00312e9c, declared_size=132, range_size=132, mode=arm
; class-group: std::allocator<Point3D<float> >
; alias: _ZNSaI7Point3DIfEE11_M_allocateEjRj
; demangled: std::allocator<Point3D<float> >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00312e9c  10 40 2d e9                                      push {r4, lr}
00312ea0  55 35 05 e3                                      movw r3, #0x5555
00312ea4  03 37 83 e1                                      orr r3, r3, r3, lsl #14
00312ea8  03 00 51 e1                                      cmp r1, r3
00312eac  08 d0 4d e2                                      sub sp, sp, #8
00312eb0  02 40 a0 e1                                      mov r4, r2
00312eb4  13 00 00 8a                                      bhi #0x312f08
00312eb8  00 00 51 e3                                      cmp r1, #0
00312ebc  01 00 a0 01                                      moveq r0, r1
00312ec0  0c 00 00 0a                                      beq #0x312ef8
00312ec4  0c 00 a0 e3                                      mov r0, #0xc
00312ec8  90 01 00 e0                                      mul r0, r0, r1
00312ecc  80 00 50 e3                                      cmp r0, #0x80
00312ed0  04 00 8d e5                                      str r0, [sp, #4]
00312ed4  09 00 00 8a                                      bhi #0x312f00
00312ed8  04 00 8d e2                                      add r0, sp, #4
00312edc  f7 d7 0f eb                                      bl #0x708ec0
00312ee0  04 20 9d e5                                      ldr r2, [sp, #4]
00312ee4  ab 3a 0a e3                                      movw r3, #0xaaab
00312ee8  aa 3a 4a e3                                      movt r3, #0xaaaa
00312eec  93 12 83 e0                                      umull r1, r3, r3, r2
00312ef0  a3 31 a0 e1                                      lsr r3, r3, #3
00312ef4  00 30 84 e5                                      str r3, [r4]
00312ef8  08 d0 8d e2                                      add sp, sp, #8
00312efc  10 80 bd e8                                      pop {r4, pc}
00312f00  53 f5 ff eb                                      bl #0x310454
00312f04  f5 ff ff ea                                      b #0x312ee0
00312f08  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00312f0c  00 00 8f e0                                      add r0, pc, r0
00312f10  6b ec ff eb                                      bl #0x30e0c4
00312f14  01 00 a0 e3                                      mov r0, #1
00312f18  ca eb ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00312f1c  64 b5 5a 00                                      .byte 0x64, 0xb5, 0x5a, 0x00

; FUNCTION 0x00312f20, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<Point3D<float> >
; alias: _ZNSaI7Point3DIfEE10deallocateEPS0_j
; demangled: std::allocator<Point3D<float> >::deallocate(Point3D<float>*, unsigned int)
; decoder-mode: arm
00312f20  00 00 51 e2                                      subs r0, r1, #0
00312f24  1e ff 2f 01                                      bxeq lr
00312f28  0c 10 a0 e3                                      mov r1, #0xc
00312f2c  91 02 01 e0                                      mul r1, r1, r2
00312f30  80 00 51 e3                                      cmp r1, #0x80
00312f34  00 00 00 8a                                      bhi #0x312f3c
00312f38  f0 d7 0f ea                                      b #0x708f00
00312f3c  3f f5 ff ea                                      b #0x310440
