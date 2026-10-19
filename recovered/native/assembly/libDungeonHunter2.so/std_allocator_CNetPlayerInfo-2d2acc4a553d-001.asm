; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008110b8, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<CNetPlayerInfo*>
; alias: _ZNSaIP14CNetPlayerInfoE11_M_allocateEjRj
; demangled: std::allocator<CNetPlayerInfo*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
008110b8  10 40 2d e9                                      push {r4, lr}
008110bc  07 01 71 e3                                      cmn r1, #0xc0000001
008110c0  08 d0 4d e2                                      sub sp, sp, #8
008110c4  02 40 a0 e1                                      mov r4, r2
008110c8  10 00 00 8a                                      bhi #0x811110
008110cc  00 00 51 e3                                      cmp r1, #0
008110d0  01 00 a0 01                                      moveq r0, r1
008110d4  01 00 00 1a                                      bne #0x8110e0
008110d8  08 d0 8d e2                                      add sp, sp, #8
008110dc  10 80 bd e8                                      pop {r4, pc}
008110e0  01 01 a0 e1                                      lsl r0, r1, #2
008110e4  80 00 50 e3                                      cmp r0, #0x80
008110e8  04 00 8d e5                                      str r0, [sp, #4]
008110ec  05 00 00 8a                                      bhi #0x811108
008110f0  04 00 8d e2                                      add r0, sp, #4
008110f4  87 b4 02 eb                                      bl #0x8be318
008110f8  04 30 9d e5                                      ldr r3, [sp, #4]
008110fc  23 31 a0 e1                                      lsr r3, r3, #2
00811100  00 30 84 e5                                      str r3, [r4]
00811104  f3 ff ff ea                                      b #0x8110d8
00811108  d1 fc eb eb                                      bl #0x310454
0081110c  f9 ff ff ea                                      b #0x8110f8
00811110  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00811114  00 00 8f e0                                      add r0, pc, r0
00811118  e9 f3 eb eb                                      bl #0x30e0c4
0081111c  01 00 a0 e3                                      mov r0, #1
00811120  48 f3 eb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00811124  5c d3 0a 00                                      .byte 0x5c, 0xd3, 0x0a, 0x00
