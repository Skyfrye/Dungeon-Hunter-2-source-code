; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081caf8, declared_size=140, range_size=140, mode=arm
; class-group: std::allocator<tMemberInfo>
; alias: _ZNSaI11tMemberInfoE11_M_allocateEjRj
; demangled: std::allocator<tMemberInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0081caf8  10 40 2d e9                                      push {r4, lr}
0081cafc  c3 30 03 e3                                      movw r3, #0x30c3
0081cb00  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0081cb04  03 00 51 e1                                      cmp r1, r3
0081cb08  08 d0 4d e2                                      sub sp, sp, #8
0081cb0c  02 40 a0 e1                                      mov r4, r2
0081cb10  15 00 00 8a                                      bhi #0x81cb6c
0081cb14  00 00 51 e3                                      cmp r1, #0
0081cb18  01 00 a0 01                                      moveq r0, r1
0081cb1c  01 00 00 1a                                      bne #0x81cb28
0081cb20  08 d0 8d e2                                      add sp, sp, #8
0081cb24  10 80 bd e8                                      pop {r4, pc}
0081cb28  54 00 a0 e3                                      mov r0, #0x54
0081cb2c  90 01 00 e0                                      mul r0, r0, r1
0081cb30  80 00 50 e3                                      cmp r0, #0x80
0081cb34  04 00 8d e5                                      str r0, [sp, #4]
0081cb38  09 00 00 8a                                      bhi #0x81cb64
0081cb3c  04 00 8d e2                                      add r0, sp, #4
0081cb40  f4 85 02 eb                                      bl #0x8be318
0081cb44  04 20 9d e5                                      ldr r2, [sp, #4]
0081cb48  31 3c 00 e3                                      movw r3, #0xc31
0081cb4c  c3 30 43 e3                                      movt r3, #0x30c3
0081cb50  22 21 a0 e1                                      lsr r2, r2, #2
0081cb54  93 12 83 e0                                      umull r1, r3, r3, r2
0081cb58  23 31 a0 e1                                      lsr r3, r3, #2
0081cb5c  00 30 84 e5                                      str r3, [r4]
0081cb60  ee ff ff ea                                      b #0x81cb20
0081cb64  3a ce eb eb                                      bl #0x310454
0081cb68  f5 ff ff ea                                      b #0x81cb44
0081cb6c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0081cb70  00 00 8f e0                                      add r0, pc, r0
0081cb74  52 c5 eb eb                                      bl #0x30e0c4
0081cb78  01 00 a0 e3                                      mov r0, #1
0081cb7c  b1 c4 eb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0081cb80  00 19 0a 00                                      .byte 0x00, 0x19, 0x0a, 0x00
