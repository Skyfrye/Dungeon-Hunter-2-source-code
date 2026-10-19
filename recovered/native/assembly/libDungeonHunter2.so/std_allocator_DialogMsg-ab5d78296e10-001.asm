; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00433a40, declared_size=140, range_size=140, mode=arm
; class-group: std::allocator<DialogMsg>
; alias: _ZNSaI9DialogMsgE11_M_allocateEjRj
; demangled: std::allocator<DialogMsg>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00433a40  10 40 2d e9                                      push {r4, lr}
00433a44  d7 30 05 e3                                      movw r3, #0x50d7
00433a48  5e 33 40 e3                                      movt r3, #0x35e
00433a4c  03 00 51 e1                                      cmp r1, r3
00433a50  08 d0 4d e2                                      sub sp, sp, #8
00433a54  02 40 a0 e1                                      mov r4, r2
00433a58  15 00 00 8a                                      bhi #0x433ab4
00433a5c  00 00 51 e3                                      cmp r1, #0
00433a60  01 00 a0 01                                      moveq r0, r1
00433a64  01 00 00 1a                                      bne #0x433a70
00433a68  08 d0 8d e2                                      add sp, sp, #8
00433a6c  10 80 bd e8                                      pop {r4, pc}
00433a70  4c 00 a0 e3                                      mov r0, #0x4c
00433a74  90 01 00 e0                                      mul r0, r0, r1
00433a78  80 00 50 e3                                      cmp r0, #0x80
00433a7c  04 00 8d e5                                      str r0, [sp, #4]
00433a80  09 00 00 8a                                      bhi #0x433aac
00433a84  04 00 8d e2                                      add r0, sp, #4
00433a88  0c 55 0b eb                                      bl #0x708ec0
00433a8c  04 20 9d e5                                      ldr r2, [sp, #4]
00433a90  bd 36 08 e3                                      movw r3, #0x86bd
00433a94  f2 3a 41 e3                                      movt r3, #0x1af2
00433a98  22 21 a0 e1                                      lsr r2, r2, #2
00433a9c  93 12 83 e0                                      umull r1, r3, r3, r2
00433aa0  a3 30 a0 e1                                      lsr r3, r3, #1
00433aa4  00 30 84 e5                                      str r3, [r4]
00433aa8  ee ff ff ea                                      b #0x433a68
00433aac  68 72 fb eb                                      bl #0x310454
00433ab0  f5 ff ff ea                                      b #0x433a8c
00433ab4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00433ab8  00 00 8f e0                                      add r0, pc, r0
00433abc  80 69 fb eb                                      bl #0x30e0c4
00433ac0  01 00 a0 e3                                      mov r0, #1
00433ac4  df 68 fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00433ac8  b8 a9 48 00                                      .byte 0xb8, 0xa9, 0x48, 0x00

; FUNCTION 0x0045b634, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<DialogMsg>
; alias: _ZNSaI9DialogMsgE8allocateEjPKv.clone.13
; demangled: std::allocator<DialogMsg>::allocate(unsigned int, void const*) [clone .clone.13]
; decoder-mode: arm
0045b634  04 e0 2d e5                                      str lr, [sp, #-4]!
0045b638  0c d0 4d e2                                      sub sp, sp, #0xc
0045b63c  08 00 8d e2                                      add r0, sp, #8
0045b640  4c 30 a0 e3                                      mov r3, #0x4c
0045b644  04 30 20 e5                                      str r3, [r0, #-4]!
0045b648  1c b6 0a eb                                      bl #0x708ec0
0045b64c  0c d0 8d e2                                      add sp, sp, #0xc
0045b650  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00480b0c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<DialogMsg>
; alias: _ZNSaI9DialogMsgE8allocateEjPKv.clone.9
; demangled: std::allocator<DialogMsg>::allocate(unsigned int, void const*) [clone .clone.9]
; decoder-mode: arm
00480b0c  04 e0 2d e5                                      str lr, [sp, #-4]!
00480b10  0c d0 4d e2                                      sub sp, sp, #0xc
00480b14  08 00 8d e2                                      add r0, sp, #8
00480b18  4c 30 a0 e3                                      mov r3, #0x4c
00480b1c  04 30 20 e5                                      str r3, [r0, #-4]!
00480b20  e6 20 0a eb                                      bl #0x708ec0
00480b24  0c d0 8d e2                                      add sp, sp, #0xc
00480b28  00 80 bd e8                                      ldm sp!, {pc}
