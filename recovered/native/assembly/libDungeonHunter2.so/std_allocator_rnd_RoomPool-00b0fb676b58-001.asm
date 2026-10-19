; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00484cf8, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<rnd::RoomPool*>
; alias: _ZNSaIPN3rnd8RoomPoolEE11_M_allocateEjRj
; demangled: std::allocator<rnd::RoomPool*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00484cf8  10 40 2d e9                                      push {r4, lr}
00484cfc  07 01 71 e3                                      cmn r1, #0xc0000001
00484d00  08 d0 4d e2                                      sub sp, sp, #8
00484d04  02 40 a0 e1                                      mov r4, r2
00484d08  10 00 00 8a                                      bhi #0x484d50
00484d0c  00 00 51 e3                                      cmp r1, #0
00484d10  01 00 a0 01                                      moveq r0, r1
00484d14  01 00 00 1a                                      bne #0x484d20
00484d18  08 d0 8d e2                                      add sp, sp, #8
00484d1c  10 80 bd e8                                      pop {r4, pc}
00484d20  01 01 a0 e1                                      lsl r0, r1, #2
00484d24  80 00 50 e3                                      cmp r0, #0x80
00484d28  04 00 8d e5                                      str r0, [sp, #4]
00484d2c  05 00 00 8a                                      bhi #0x484d48
00484d30  04 00 8d e2                                      add r0, sp, #4
00484d34  61 10 0a eb                                      bl #0x708ec0
00484d38  04 30 9d e5                                      ldr r3, [sp, #4]
00484d3c  23 31 a0 e1                                      lsr r3, r3, #2
00484d40  00 30 84 e5                                      str r3, [r4]
00484d44  f3 ff ff ea                                      b #0x484d18
00484d48  c1 2d fa eb                                      bl #0x310454
00484d4c  f9 ff ff ea                                      b #0x484d38
00484d50  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00484d54  00 00 8f e0                                      add r0, pc, r0
00484d58  d9 24 fa eb                                      bl #0x30e0c4
00484d5c  01 00 a0 e3                                      mov r0, #1
00484d60  38 24 fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00484d64  1c 97 43 00                                      .byte 0x1c, 0x97, 0x43, 0x00
