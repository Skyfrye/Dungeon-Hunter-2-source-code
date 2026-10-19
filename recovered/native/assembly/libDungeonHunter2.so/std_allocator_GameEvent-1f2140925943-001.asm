; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00479b64, declared_size=108, range_size=108, mode=arm
; class-group: std::allocator<GameEvent*>
; alias: _ZNSaIP9GameEventE11_M_allocateEjRj
; demangled: std::allocator<GameEvent*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00479b64  10 40 2d e9                                      push {r4, lr}
00479b68  07 01 71 e3                                      cmn r1, #0xc0000001
00479b6c  08 d0 4d e2                                      sub sp, sp, #8
00479b70  02 40 a0 e1                                      mov r4, r2
00479b74  0f 00 00 8a                                      bhi #0x479bb8
00479b78  00 00 51 e3                                      cmp r1, #0
00479b7c  01 00 a0 01                                      moveq r0, r1
00479b80  08 00 00 0a                                      beq #0x479ba8
00479b84  01 01 a0 e1                                      lsl r0, r1, #2
00479b88  80 00 50 e3                                      cmp r0, #0x80
00479b8c  04 00 8d e5                                      str r0, [sp, #4]
00479b90  06 00 00 8a                                      bhi #0x479bb0
00479b94  04 00 8d e2                                      add r0, sp, #4
00479b98  c8 3c 0a eb                                      bl #0x708ec0
00479b9c  04 30 9d e5                                      ldr r3, [sp, #4]
00479ba0  23 31 a0 e1                                      lsr r3, r3, #2
00479ba4  00 30 84 e5                                      str r3, [r4]
00479ba8  08 d0 8d e2                                      add sp, sp, #8
00479bac  10 80 bd e8                                      pop {r4, pc}
00479bb0  27 5a fa eb                                      bl #0x310454
00479bb4  f8 ff ff ea                                      b #0x479b9c
00479bb8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00479bbc  00 00 8f e0                                      add r0, pc, r0
00479bc0  3f 51 fa eb                                      bl #0x30e0c4
00479bc4  01 00 a0 e3                                      mov r0, #1
00479bc8  9e 50 fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00479bcc  b4 48 44 00                                      .byte 0xb4, 0x48, 0x44, 0x00

; FUNCTION 0x00479bd0, declared_size=28, range_size=28, mode=arm
; class-group: std::allocator<GameEvent*>
; alias: _ZNSaIP9GameEventE10deallocateEPS0_j
; demangled: std::allocator<GameEvent*>::deallocate(GameEvent**, unsigned int)
; decoder-mode: arm
00479bd0  00 00 51 e2                                      subs r0, r1, #0
00479bd4  1e ff 2f 01                                      bxeq lr
00479bd8  02 11 a0 e1                                      lsl r1, r2, #2
00479bdc  80 00 51 e3                                      cmp r1, #0x80
00479be0  00 00 00 8a                                      bhi #0x479be8
00479be4  c5 3c 0a ea                                      b #0x708f00
00479be8  14 5a fa ea                                      b #0x310440
