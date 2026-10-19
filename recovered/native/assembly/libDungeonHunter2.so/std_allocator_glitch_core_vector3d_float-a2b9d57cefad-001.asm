; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ff978, declared_size=132, range_size=132, mode=arm
; class-group: std::allocator<glitch::core::vector3d<float> >
; alias: _ZNSaIN6glitch4core8vector3dIfEEE11_M_allocateEjRj
; demangled: std::allocator<glitch::core::vector3d<float> >::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
006ff978  10 40 2d e9                                      push {r4, lr}
006ff97c  55 35 05 e3                                      movw r3, #0x5555
006ff980  03 37 83 e1                                      orr r3, r3, r3, lsl #14
006ff984  03 00 51 e1                                      cmp r1, r3
006ff988  08 d0 4d e2                                      sub sp, sp, #8
006ff98c  02 40 a0 e1                                      mov r4, r2
006ff990  13 00 00 8a                                      bhi #0x6ff9e4
006ff994  00 00 51 e3                                      cmp r1, #0
006ff998  01 00 a0 01                                      moveq r0, r1
006ff99c  0c 00 00 0a                                      beq #0x6ff9d4
006ff9a0  0c 00 a0 e3                                      mov r0, #0xc
006ff9a4  90 01 00 e0                                      mul r0, r0, r1
006ff9a8  80 00 50 e3                                      cmp r0, #0x80
006ff9ac  04 00 8d e5                                      str r0, [sp, #4]
006ff9b0  09 00 00 8a                                      bhi #0x6ff9dc
006ff9b4  04 00 8d e2                                      add r0, sp, #4
006ff9b8  40 25 00 eb                                      bl #0x708ec0
006ff9bc  04 20 9d e5                                      ldr r2, [sp, #4]
006ff9c0  ab 3a 0a e3                                      movw r3, #0xaaab
006ff9c4  aa 3a 4a e3                                      movt r3, #0xaaaa
006ff9c8  93 12 83 e0                                      umull r1, r3, r3, r2
006ff9cc  a3 31 a0 e1                                      lsr r3, r3, #3
006ff9d0  00 30 84 e5                                      str r3, [r4]
006ff9d4  08 d0 8d e2                                      add sp, sp, #8
006ff9d8  10 80 bd e8                                      pop {r4, pc}
006ff9dc  aa 3b f0 eb                                      bl #0x30e88c
006ff9e0  f5 ff ff ea                                      b #0x6ff9bc
006ff9e4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
006ff9e8  00 00 8f e0                                      add r0, pc, r0
006ff9ec  b4 39 f0 eb                                      bl #0x30e0c4
006ff9f0  01 00 a0 e3                                      mov r0, #1
006ff9f4  13 39 f0 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
006ff9f8  88 ea 1b 00                                      .byte 0x88, 0xea, 0x1b, 0x00

; FUNCTION 0x006ff9fc, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<glitch::core::vector3d<float> >
; alias: _ZNSaIN6glitch4core8vector3dIfEEE10deallocateEPS2_j
; demangled: std::allocator<glitch::core::vector3d<float> >::deallocate(glitch::core::vector3d<float>*, unsigned int)
; decoder-mode: arm
006ff9fc  00 00 51 e2                                      subs r0, r1, #0
006ffa00  1e ff 2f 01                                      bxeq lr
006ffa04  0c 10 a0 e3                                      mov r1, #0xc
006ffa08  91 02 01 e0                                      mul r1, r1, r2
006ffa0c  80 00 51 e3                                      cmp r1, #0x80
006ffa10  00 00 00 8a                                      bhi #0x6ffa18
006ffa14  39 25 00 ea                                      b #0x708f00
006ffa18  24 3a f0 ea                                      b #0x30e2b0
