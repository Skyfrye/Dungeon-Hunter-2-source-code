; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004133f4, declared_size=140, range_size=140, mode=arm
; class-group: std::allocator<Dragable>
; alias: _ZNSaI8DragableE11_M_allocateEjRj
; demangled: std::allocator<Dragable>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
004133f4  10 40 2d e9                                      push {r4, lr}
004133f8  c3 30 03 e3                                      movw r3, #0x30c3
004133fc  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00413400  03 00 51 e1                                      cmp r1, r3
00413404  08 d0 4d e2                                      sub sp, sp, #8
00413408  02 40 a0 e1                                      mov r4, r2
0041340c  15 00 00 8a                                      bhi #0x413468
00413410  00 00 51 e3                                      cmp r1, #0
00413414  01 00 a0 01                                      moveq r0, r1
00413418  01 00 00 1a                                      bne #0x413424
0041341c  08 d0 8d e2                                      add sp, sp, #8
00413420  10 80 bd e8                                      pop {r4, pc}
00413424  54 00 a0 e3                                      mov r0, #0x54
00413428  90 01 00 e0                                      mul r0, r0, r1
0041342c  80 00 50 e3                                      cmp r0, #0x80
00413430  04 00 8d e5                                      str r0, [sp, #4]
00413434  09 00 00 8a                                      bhi #0x413460
00413438  04 00 8d e2                                      add r0, sp, #4
0041343c  9f d6 0b eb                                      bl #0x708ec0
00413440  04 20 9d e5                                      ldr r2, [sp, #4]
00413444  31 3c 00 e3                                      movw r3, #0xc31
00413448  c3 30 43 e3                                      movt r3, #0x30c3
0041344c  22 21 a0 e1                                      lsr r2, r2, #2
00413450  93 12 83 e0                                      umull r1, r3, r3, r2
00413454  23 31 a0 e1                                      lsr r3, r3, #2
00413458  00 30 84 e5                                      str r3, [r4]
0041345c  ee ff ff ea                                      b #0x41341c
00413460  fb f3 fb eb                                      bl #0x310454
00413464  f5 ff ff ea                                      b #0x413440
00413468  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0041346c  00 00 8f e0                                      add r0, pc, r0
00413470  13 eb fb eb                                      bl #0x30e0c4
00413474  01 00 a0 e3                                      mov r0, #1
00413478  72 ea fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0041347c  04 b0 4a 00                                      .byte 0x04, 0xb0, 0x4a, 0x00
