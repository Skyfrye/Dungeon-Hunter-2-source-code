; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00466330, declared_size=84, range_size=84, mode=arm
; class-group: std::bitset<64u>
; alias: _ZNSt6bitsetILj64EE3setEji
; demangled: std::bitset<64u>::set(unsigned int, int)
; decoder-mode: arm
00466330  3f 00 51 e3                                      cmp r1, #0x3f
00466334  70 40 2d e9                                      push {r4, r5, r6, lr}
00466338  01 50 a0 e1                                      mov r5, r1
0046633c  00 40 a0 e1                                      mov r4, r0
00466340  02 60 a0 e1                                      mov r6, r2
00466344  09 00 00 8a                                      bhi #0x466370
00466348  a5 32 a0 e1                                      lsr r3, r5, #5
0046634c  03 21 94 e7                                      ldr r2, [r4, r3, lsl #2]
00466350  1f 50 05 e2                                      and r5, r5, #0x1f
00466354  00 00 56 e3                                      cmp r6, #0
00466358  01 10 a0 e3                                      mov r1, #1
0046635c  11 55 82 11                                      orrne r5, r2, r1, lsl r5
00466360  11 55 c2 01                                      biceq r5, r2, r1, lsl r5
00466364  04 00 a0 e1                                      mov r0, r4
00466368  03 51 84 e7                                      str r5, [r4, r3, lsl #2]
0046636c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00466370  08 00 9f e5                                      ldr r0, [pc, #8]
00466374  00 00 8f e0                                      add r0, pc, r0
00466378  cc 8a 0a eb                                      bl #0x708eb0
0046637c  f1 ff ff ea                                      b #0x466348
; mapping-symbol data/literal pool
00466380  54 b9 45 00                                      .byte 0x54, 0xb9, 0x45, 0x00
