; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ccf2c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<Character*>
; alias: _ZNSaIP9CharacterE11_M_allocateEjRj
; demangled: std::allocator<Character*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003ccf2c  10 40 2d e9                                      push {r4, lr}
003ccf30  07 01 71 e3                                      cmn r1, #0xc0000001
003ccf34  08 d0 4d e2                                      sub sp, sp, #8
003ccf38  02 40 a0 e1                                      mov r4, r2
003ccf3c  10 00 00 8a                                      bhi #0x3ccf84
003ccf40  00 00 51 e3                                      cmp r1, #0
003ccf44  01 00 a0 01                                      moveq r0, r1
003ccf48  01 00 00 1a                                      bne #0x3ccf54
003ccf4c  08 d0 8d e2                                      add sp, sp, #8
003ccf50  10 80 bd e8                                      pop {r4, pc}
003ccf54  01 01 a0 e1                                      lsl r0, r1, #2
003ccf58  80 00 50 e3                                      cmp r0, #0x80
003ccf5c  04 00 8d e5                                      str r0, [sp, #4]
003ccf60  05 00 00 8a                                      bhi #0x3ccf7c
003ccf64  04 00 8d e2                                      add r0, sp, #4
003ccf68  d4 ef 0c eb                                      bl #0x708ec0
003ccf6c  04 30 9d e5                                      ldr r3, [sp, #4]
003ccf70  23 31 a0 e1                                      lsr r3, r3, #2
003ccf74  00 30 84 e5                                      str r3, [r4]
003ccf78  f3 ff ff ea                                      b #0x3ccf4c
003ccf7c  34 0d fd eb                                      bl #0x310454
003ccf80  f9 ff ff ea                                      b #0x3ccf6c
003ccf84  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003ccf88  00 00 8f e0                                      add r0, pc, r0
003ccf8c  4c 04 fd eb                                      bl #0x30e0c4
003ccf90  01 00 a0 e3                                      mov r0, #1
003ccf94  ab 03 fd eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003ccf98  e8 14 4f 00                                      .byte 0xe8, 0x14, 0x4f, 0x00

; FUNCTION 0x003de0e4, declared_size=28, range_size=28, mode=arm
; class-group: std::allocator<Character*>
; alias: _ZNSaIP9CharacterE10deallocateEPS0_j
; demangled: std::allocator<Character*>::deallocate(Character**, unsigned int)
; decoder-mode: arm
003de0e4  00 00 51 e2                                      subs r0, r1, #0
003de0e8  1e ff 2f 01                                      bxeq lr
003de0ec  02 11 a0 e1                                      lsl r1, r2, #2
003de0f0  80 00 51 e3                                      cmp r1, #0x80
003de0f4  00 00 00 8a                                      bhi #0x3de0fc
003de0f8  80 ab 0c ea                                      b #0x708f00
003de0fc  cf c8 fc ea                                      b #0x310440
