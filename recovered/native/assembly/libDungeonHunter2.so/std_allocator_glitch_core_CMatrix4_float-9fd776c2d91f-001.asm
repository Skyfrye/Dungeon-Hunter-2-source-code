; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00663b34, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<glitch::core::CMatrix4<float> >
; alias: _ZNSaIN6glitch4core8CMatrix4IfEEE10deallocateEPS2_j
; demangled: std::allocator<glitch::core::CMatrix4<float> >::deallocate(glitch::core::CMatrix4<float>*, unsigned int)
; decoder-mode: arm
00663b34  00 00 51 e2                                      subs r0, r1, #0
00663b38  1e ff 2f 01                                      bxeq lr
00663b3c  44 10 a0 e3                                      mov r1, #0x44
00663b40  91 02 01 e0                                      mul r1, r1, r2
00663b44  80 00 51 e3                                      cmp r1, #0x80
00663b48  00 00 00 8a                                      bhi #0x663b50
00663b4c  eb 94 02 ea                                      b #0x708f00
00663b50  d6 a9 f2 ea                                      b #0x30e2b0

; FUNCTION 0x0066be28, declared_size=132, range_size=132, mode=arm
; class-group: std::allocator<glitch::core::CMatrix4<float> >
; alias: _ZNSaIN6glitch4core8CMatrix4IfEEE11_M_allocateEjRj
; demangled: std::allocator<glitch::core::CMatrix4<float> >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0066be28  10 40 2d e9                                      push {r4, lr}
0066be2c  c3 33 0c e3                                      movw r3, #0xc3c3
0066be30  c3 33 40 e3                                      movt r3, #0x3c3
0066be34  03 00 51 e1                                      cmp r1, r3
0066be38  08 d0 4d e2                                      sub sp, sp, #8
0066be3c  02 40 a0 e1                                      mov r4, r2
0066be40  13 00 00 8a                                      bhi #0x66be94
0066be44  00 00 51 e3                                      cmp r1, #0
0066be48  01 00 a0 01                                      moveq r0, r1
0066be4c  0c 00 00 0a                                      beq #0x66be84
0066be50  44 00 a0 e3                                      mov r0, #0x44
0066be54  90 01 00 e0                                      mul r0, r0, r1
0066be58  80 00 50 e3                                      cmp r0, #0x80
0066be5c  04 00 8d e5                                      str r0, [sp, #4]
0066be60  09 00 00 8a                                      bhi #0x66be8c
0066be64  04 00 8d e2                                      add r0, sp, #4
0066be68  14 74 02 eb                                      bl #0x708ec0
0066be6c  04 20 9d e5                                      ldr r2, [sp, #4]
0066be70  f1 30 0f e3                                      movw r3, #0xf0f1
0066be74  f0 30 4f e3                                      movt r3, #0xf0f0
0066be78  93 12 83 e0                                      umull r1, r3, r3, r2
0066be7c  23 33 a0 e1                                      lsr r3, r3, #6
0066be80  00 30 84 e5                                      str r3, [r4]
0066be84  08 d0 8d e2                                      add sp, sp, #8
0066be88  10 80 bd e8                                      pop {r4, pc}
0066be8c  7e 8a f2 eb                                      bl #0x30e88c
0066be90  f5 ff ff ea                                      b #0x66be6c
0066be94  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0066be98  00 00 8f e0                                      add r0, pc, r0
0066be9c  88 88 f2 eb                                      bl #0x30e0c4
0066bea0  01 00 a0 e3                                      mov r0, #1
0066bea4  e7 87 f2 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0066bea8  d8 25 25 00                                      .byte 0xd8, 0x25, 0x25, 0x00
