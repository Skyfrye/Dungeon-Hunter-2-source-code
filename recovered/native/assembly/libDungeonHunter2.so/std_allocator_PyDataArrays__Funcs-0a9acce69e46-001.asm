; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004afae0, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<PyDataArrays::_Funcs>
; alias: _ZNSaIN12PyDataArrays6_FuncsEE11_M_allocateEjRj
; demangled: std::allocator<PyDataArrays::_Funcs>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
004afae0  10 40 2d e9                                      push {r4, lr}
004afae4  1e 02 71 e3                                      cmn r1, #0xe0000001
004afae8  08 d0 4d e2                                      sub sp, sp, #8
004afaec  02 40 a0 e1                                      mov r4, r2
004afaf0  10 00 00 8a                                      bhi #0x4afb38
004afaf4  00 00 51 e3                                      cmp r1, #0
004afaf8  01 00 a0 01                                      moveq r0, r1
004afafc  01 00 00 1a                                      bne #0x4afb08
004afb00  08 d0 8d e2                                      add sp, sp, #8
004afb04  10 80 bd e8                                      pop {r4, pc}
004afb08  81 01 a0 e1                                      lsl r0, r1, #3
004afb0c  80 00 50 e3                                      cmp r0, #0x80
004afb10  04 00 8d e5                                      str r0, [sp, #4]
004afb14  05 00 00 8a                                      bhi #0x4afb30
004afb18  04 00 8d e2                                      add r0, sp, #4
004afb1c  e7 64 09 eb                                      bl #0x708ec0
004afb20  04 30 9d e5                                      ldr r3, [sp, #4]
004afb24  a3 31 a0 e1                                      lsr r3, r3, #3
004afb28  00 30 84 e5                                      str r3, [r4]
004afb2c  f3 ff ff ea                                      b #0x4afb00
004afb30  47 82 f9 eb                                      bl #0x310454
004afb34  f9 ff ff ea                                      b #0x4afb20
004afb38  0c 00 9f e5                                      ldr r0, [pc, #0xc]
004afb3c  00 00 8f e0                                      add r0, pc, r0
004afb40  5f 79 f9 eb                                      bl #0x30e0c4
004afb44  01 00 a0 e3                                      mov r0, #1
004afb48  be 78 f9 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
004afb4c  34 e9 40 00                                      .byte 0x34, 0xe9, 0x40, 0x00
