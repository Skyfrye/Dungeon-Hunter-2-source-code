; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081aca8, declared_size=108, range_size=108, mode=arm
; class-group: std::allocator<tTRANSPORT_TYPE>
; alias: _ZNSaI15tTRANSPORT_TYPEE11_M_allocateEjRj
; demangled: std::allocator<tTRANSPORT_TYPE>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0081aca8  10 40 2d e9                                      push {r4, lr}
0081acac  07 01 71 e3                                      cmn r1, #0xc0000001
0081acb0  08 d0 4d e2                                      sub sp, sp, #8
0081acb4  02 40 a0 e1                                      mov r4, r2
0081acb8  0f 00 00 8a                                      bhi #0x81acfc
0081acbc  00 00 51 e3                                      cmp r1, #0
0081acc0  01 00 a0 01                                      moveq r0, r1
0081acc4  08 00 00 0a                                      beq #0x81acec
0081acc8  01 01 a0 e1                                      lsl r0, r1, #2
0081accc  80 00 50 e3                                      cmp r0, #0x80
0081acd0  04 00 8d e5                                      str r0, [sp, #4]
0081acd4  06 00 00 8a                                      bhi #0x81acf4
0081acd8  04 00 8d e2                                      add r0, sp, #4
0081acdc  8d 8d 02 eb                                      bl #0x8be318
0081ace0  04 30 9d e5                                      ldr r3, [sp, #4]
0081ace4  23 31 a0 e1                                      lsr r3, r3, #2
0081ace8  00 30 84 e5                                      str r3, [r4]
0081acec  08 d0 8d e2                                      add sp, sp, #8
0081acf0  10 80 bd e8                                      pop {r4, pc}
0081acf4  d6 d5 eb eb                                      bl #0x310454
0081acf8  f8 ff ff ea                                      b #0x81ace0
0081acfc  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0081ad00  00 00 8f e0                                      add r0, pc, r0
0081ad04  ee cc eb eb                                      bl #0x30e0c4
0081ad08  01 00 a0 e3                                      mov r0, #1
0081ad0c  4d cc eb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0081ad10  70 37 0a 00                                      .byte 0x70, 0x37, 0x0a, 0x00

; FUNCTION 0x0081ad14, declared_size=28, range_size=28, mode=arm
; class-group: std::allocator<tTRANSPORT_TYPE>
; alias: _ZNSaI15tTRANSPORT_TYPEE10deallocateEPS_j
; demangled: std::allocator<tTRANSPORT_TYPE>::deallocate(tTRANSPORT_TYPE*, unsigned int)
; decoder-mode: arm
0081ad14  00 00 51 e2                                      subs r0, r1, #0
0081ad18  1e ff 2f 01                                      bxeq lr
0081ad1c  02 11 a0 e1                                      lsl r1, r2, #2
0081ad20  80 00 51 e3                                      cmp r1, #0x80
0081ad24  00 00 00 8a                                      bhi #0x81ad2c
0081ad28  82 8d 02 ea                                      b #0x8be338
0081ad2c  c3 d5 eb ea                                      b #0x310440
