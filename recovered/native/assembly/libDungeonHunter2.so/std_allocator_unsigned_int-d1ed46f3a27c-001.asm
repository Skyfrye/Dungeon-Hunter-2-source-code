; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003b453c, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<unsigned int>
; alias: _ZNSaIjE8allocateEjPKv
; demangled: std::allocator<unsigned int>::allocate(unsigned int, void const*)
; decoder-mode: arm
003b453c  04 e0 2d e5                                      str lr, [sp, #-4]!
003b4540  07 01 71 e3                                      cmn r1, #0xc0000001
003b4544  0c d0 4d e2                                      sub sp, sp, #0xc
003b4548  0d 00 00 8a                                      bhi #0x3b4584
003b454c  00 00 51 e3                                      cmp r1, #0
003b4550  01 00 a0 01                                      moveq r0, r1
003b4554  01 00 00 1a                                      bne #0x3b4560
003b4558  0c d0 8d e2                                      add sp, sp, #0xc
003b455c  00 80 bd e8                                      ldm sp!, {pc}
003b4560  01 01 a0 e1                                      lsl r0, r1, #2
003b4564  80 00 50 e3                                      cmp r0, #0x80
003b4568  04 00 8d e5                                      str r0, [sp, #4]
003b456c  02 00 00 8a                                      bhi #0x3b457c
003b4570  04 00 8d e2                                      add r0, sp, #4
003b4574  51 52 0d eb                                      bl #0x708ec0
003b4578  f6 ff ff ea                                      b #0x3b4558
003b457c  b4 6f fd eb                                      bl #0x310454
003b4580  f4 ff ff ea                                      b #0x3b4558
003b4584  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003b4588  00 00 8f e0                                      add r0, pc, r0
003b458c  cc 66 fd eb                                      bl #0x30e0c4
003b4590  01 00 a0 e3                                      mov r0, #1
003b4594  2b 66 fd eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003b4598  e8 9e 50 00                                      .byte 0xe8, 0x9e, 0x50, 0x00

; FUNCTION 0x005a4900, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<unsigned int>
; alias: _ZNSaIjE11_M_allocateEjRj
; demangled: std::allocator<unsigned int>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
005a4900  10 40 2d e9                                      push {r4, lr}
005a4904  07 01 71 e3                                      cmn r1, #0xc0000001
005a4908  08 d0 4d e2                                      sub sp, sp, #8
005a490c  02 40 a0 e1                                      mov r4, r2
005a4910  10 00 00 8a                                      bhi #0x5a4958
005a4914  00 00 51 e3                                      cmp r1, #0
005a4918  01 00 a0 01                                      moveq r0, r1
005a491c  01 00 00 1a                                      bne #0x5a4928
005a4920  08 d0 8d e2                                      add sp, sp, #8
005a4924  10 80 bd e8                                      pop {r4, pc}
005a4928  01 01 a0 e1                                      lsl r0, r1, #2
005a492c  80 00 50 e3                                      cmp r0, #0x80
005a4930  04 00 8d e5                                      str r0, [sp, #4]
005a4934  05 00 00 8a                                      bhi #0x5a4950
005a4938  04 00 8d e2                                      add r0, sp, #4
005a493c  5f 91 05 eb                                      bl #0x708ec0
005a4940  04 30 9d e5                                      ldr r3, [sp, #4]
005a4944  23 31 a0 e1                                      lsr r3, r3, #2
005a4948  00 30 84 e5                                      str r3, [r4]
005a494c  f3 ff ff ea                                      b #0x5a4920
005a4950  cd a7 f5 eb                                      bl #0x30e88c
005a4954  f9 ff ff ea                                      b #0x5a4940
005a4958  0c 00 9f e5                                      ldr r0, [pc, #0xc]
005a495c  00 00 8f e0                                      add r0, pc, r0
005a4960  d7 a5 f5 eb                                      bl #0x30e0c4
005a4964  01 00 a0 e3                                      mov r0, #1
005a4968  36 a5 f5 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
005a496c  14 9b 31 00                                      .byte 0x14, 0x9b, 0x31, 0x00
