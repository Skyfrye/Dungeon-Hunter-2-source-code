; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00819730, declared_size=140, range_size=140, mode=arm
; class-group: std::allocator<CRoomSearchFilter::tSearchFilterBin>
; alias: _ZNSaIN17CRoomSearchFilter16tSearchFilterBinEE11_M_allocateEjRj
; demangled: std::allocator<CRoomSearchFilter::tSearchFilterBin>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00819730  10 40 2d e9                                      push {r4, lr}
00819734  d7 30 05 e3                                      movw r3, #0x50d7
00819738  5e 33 40 e3                                      movt r3, #0x35e
0081973c  03 00 51 e1                                      cmp r1, r3
00819740  08 d0 4d e2                                      sub sp, sp, #8
00819744  02 40 a0 e1                                      mov r4, r2
00819748  15 00 00 8a                                      bhi #0x8197a4
0081974c  00 00 51 e3                                      cmp r1, #0
00819750  01 00 a0 01                                      moveq r0, r1
00819754  01 00 00 1a                                      bne #0x819760
00819758  08 d0 8d e2                                      add sp, sp, #8
0081975c  10 80 bd e8                                      pop {r4, pc}
00819760  4c 00 a0 e3                                      mov r0, #0x4c
00819764  90 01 00 e0                                      mul r0, r0, r1
00819768  80 00 50 e3                                      cmp r0, #0x80
0081976c  04 00 8d e5                                      str r0, [sp, #4]
00819770  09 00 00 8a                                      bhi #0x81979c
00819774  04 00 8d e2                                      add r0, sp, #4
00819778  e6 92 02 eb                                      bl #0x8be318
0081977c  04 20 9d e5                                      ldr r2, [sp, #4]
00819780  bd 36 08 e3                                      movw r3, #0x86bd
00819784  f2 3a 41 e3                                      movt r3, #0x1af2
00819788  22 21 a0 e1                                      lsr r2, r2, #2
0081978c  93 12 83 e0                                      umull r1, r3, r3, r2
00819790  a3 30 a0 e1                                      lsr r3, r3, #1
00819794  00 30 84 e5                                      str r3, [r4]
00819798  ee ff ff ea                                      b #0x819758
0081979c  2c db eb eb                                      bl #0x310454
008197a0  f5 ff ff ea                                      b #0x81977c
008197a4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
008197a8  00 00 8f e0                                      add r0, pc, r0
008197ac  44 d2 eb eb                                      bl #0x30e0c4
008197b0  01 00 a0 e3                                      mov r0, #1
008197b4  a3 d1 eb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
008197b8  c8 4c 0a 00                                      .byte 0xc8, 0x4c, 0x0a, 0x00
