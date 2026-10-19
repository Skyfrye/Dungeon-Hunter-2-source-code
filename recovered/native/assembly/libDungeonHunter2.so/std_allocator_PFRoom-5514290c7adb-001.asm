; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00522c04, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<PFRoom*>
; alias: _ZNSaIP6PFRoomE11_M_allocateEjRj
; demangled: std::allocator<PFRoom*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00522c04  10 40 2d e9                                      push {r4, lr}
00522c08  07 01 71 e3                                      cmn r1, #0xc0000001
00522c0c  08 d0 4d e2                                      sub sp, sp, #8
00522c10  02 40 a0 e1                                      mov r4, r2
00522c14  10 00 00 8a                                      bhi #0x522c5c
00522c18  00 00 51 e3                                      cmp r1, #0
00522c1c  01 00 a0 01                                      moveq r0, r1
00522c20  01 00 00 1a                                      bne #0x522c2c
00522c24  08 d0 8d e2                                      add sp, sp, #8
00522c28  10 80 bd e8                                      pop {r4, pc}
00522c2c  01 01 a0 e1                                      lsl r0, r1, #2
00522c30  80 00 50 e3                                      cmp r0, #0x80
00522c34  04 00 8d e5                                      str r0, [sp, #4]
00522c38  05 00 00 8a                                      bhi #0x522c54
00522c3c  04 00 8d e2                                      add r0, sp, #4
00522c40  9e 98 07 eb                                      bl #0x708ec0
00522c44  04 30 9d e5                                      ldr r3, [sp, #4]
00522c48  23 31 a0 e1                                      lsr r3, r3, #2
00522c4c  00 30 84 e5                                      str r3, [r4]
00522c50  f3 ff ff ea                                      b #0x522c24
00522c54  fe b5 f7 eb                                      bl #0x310454
00522c58  f9 ff ff ea                                      b #0x522c44
00522c5c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00522c60  00 00 8f e0                                      add r0, pc, r0
00522c64  16 ad f7 eb                                      bl #0x30e0c4
00522c68  01 00 a0 e3                                      mov r0, #1
00522c6c  75 ac f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00522c70  10 b8 39 00                                      .byte 0x10, 0xb8, 0x39, 0x00
