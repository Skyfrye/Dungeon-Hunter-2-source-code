; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00319538, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<sfc::script::lua::Value>
; alias: _ZNSaIN3sfc6script3lua5ValueEE11_M_allocateEjRj
; demangled: std::allocator<sfc::script::lua::Value>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00319538  10 40 2d e9                                      push {r4, lr}
0031953c  92 34 02 e3                                      movw r3, #0x2492
00319540  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00319544  03 00 51 e1                                      cmp r1, r3
00319548  08 d0 4d e2                                      sub sp, sp, #8
0031954c  02 40 a0 e1                                      mov r4, r2
00319550  14 00 00 8a                                      bhi #0x3195a8
00319554  00 00 51 e3                                      cmp r1, #0
00319558  01 00 a0 01                                      moveq r0, r1
0031955c  01 00 00 1a                                      bne #0x319568
00319560  08 d0 8d e2                                      add sp, sp, #8
00319564  10 80 bd e8                                      pop {r4, pc}
00319568  70 00 a0 e3                                      mov r0, #0x70
0031956c  90 01 00 e0                                      mul r0, r0, r1
00319570  80 00 50 e3                                      cmp r0, #0x80
00319574  04 00 8d e5                                      str r0, [sp, #4]
00319578  08 00 00 8a                                      bhi #0x3195a0
0031957c  04 00 8d e2                                      add r0, sp, #4
00319580  4e be 0f eb                                      bl #0x708ec0
00319584  04 20 9d e5                                      ldr r2, [sp, #4]
00319588  26 39 04 e3                                      movw r3, #0x4926
0031958c  92 34 42 e3                                      movt r3, #0x2492
00319590  22 22 a0 e1                                      lsr r2, r2, #4
00319594  93 12 83 e0                                      umull r1, r3, r3, r2
00319598  00 30 84 e5                                      str r3, [r4]
0031959c  ef ff ff ea                                      b #0x319560
003195a0  ab db ff eb                                      bl #0x310454
003195a4  f6 ff ff ea                                      b #0x319584
003195a8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003195ac  00 00 8f e0                                      add r0, pc, r0
003195b0  c3 d2 ff eb                                      bl #0x30e0c4
003195b4  01 00 a0 e3                                      mov r0, #1
003195b8  22 d2 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003195bc  c4 4e 5a 00                                      .byte 0xc4, 0x4e, 0x5a, 0x00
