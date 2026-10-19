; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008429fc, declared_size=140, range_size=140, mode=arm
; class-group: std::allocator<channel>
; alias: _ZNSaI7channelE11_M_allocateEjRj
; demangled: std::allocator<channel>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
008429fc  10 40 2d e9                                      push {r4, lr}
00842a00  c3 30 03 e3                                      movw r3, #0x30c3
00842a04  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00842a08  03 00 51 e1                                      cmp r1, r3
00842a0c  08 d0 4d e2                                      sub sp, sp, #8
00842a10  02 40 a0 e1                                      mov r4, r2
00842a14  15 00 00 8a                                      bhi #0x842a70
00842a18  00 00 51 e3                                      cmp r1, #0
00842a1c  01 00 a0 01                                      moveq r0, r1
00842a20  01 00 00 1a                                      bne #0x842a2c
00842a24  08 d0 8d e2                                      add sp, sp, #8
00842a28  10 80 bd e8                                      pop {r4, pc}
00842a2c  54 00 a0 e3                                      mov r0, #0x54
00842a30  90 01 00 e0                                      mul r0, r0, r1
00842a34  80 00 50 e3                                      cmp r0, #0x80
00842a38  04 00 8d e5                                      str r0, [sp, #4]
00842a3c  09 00 00 8a                                      bhi #0x842a68
00842a40  04 00 8d e2                                      add r0, sp, #4
00842a44  33 ee 01 eb                                      bl #0x8be318
00842a48  04 20 9d e5                                      ldr r2, [sp, #4]
00842a4c  31 3c 00 e3                                      movw r3, #0xc31
00842a50  c3 30 43 e3                                      movt r3, #0x30c3
00842a54  22 21 a0 e1                                      lsr r2, r2, #2
00842a58  93 12 83 e0                                      umull r1, r3, r3, r2
00842a5c  23 31 a0 e1                                      lsr r3, r3, #2
00842a60  00 30 84 e5                                      str r3, [r4]
00842a64  ee ff ff ea                                      b #0x842a24
00842a68  87 2f eb eb                                      bl #0x30e88c
00842a6c  f5 ff ff ea                                      b #0x842a48
00842a70  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00842a74  00 00 8f e0                                      add r0, pc, r0
00842a78  91 2d eb eb                                      bl #0x30e0c4
00842a7c  01 00 a0 e3                                      mov r0, #1
00842a80  f0 2c eb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00842a84  fc b9 07 00                                      .byte 0xfc, 0xb9, 0x07, 0x00
