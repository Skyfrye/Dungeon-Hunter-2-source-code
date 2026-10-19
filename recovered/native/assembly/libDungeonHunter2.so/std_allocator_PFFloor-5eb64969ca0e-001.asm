; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00521d40, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<PFFloor*>
; alias: _ZNSaIP7PFFloorE11_M_allocateEjRj
; demangled: std::allocator<PFFloor*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00521d40  10 40 2d e9                                      push {r4, lr}
00521d44  07 01 71 e3                                      cmn r1, #0xc0000001
00521d48  08 d0 4d e2                                      sub sp, sp, #8
00521d4c  02 40 a0 e1                                      mov r4, r2
00521d50  10 00 00 8a                                      bhi #0x521d98
00521d54  00 00 51 e3                                      cmp r1, #0
00521d58  01 00 a0 01                                      moveq r0, r1
00521d5c  01 00 00 1a                                      bne #0x521d68
00521d60  08 d0 8d e2                                      add sp, sp, #8
00521d64  10 80 bd e8                                      pop {r4, pc}
00521d68  01 01 a0 e1                                      lsl r0, r1, #2
00521d6c  80 00 50 e3                                      cmp r0, #0x80
00521d70  04 00 8d e5                                      str r0, [sp, #4]
00521d74  05 00 00 8a                                      bhi #0x521d90
00521d78  04 00 8d e2                                      add r0, sp, #4
00521d7c  4f 9c 07 eb                                      bl #0x708ec0
00521d80  04 30 9d e5                                      ldr r3, [sp, #4]
00521d84  23 31 a0 e1                                      lsr r3, r3, #2
00521d88  00 30 84 e5                                      str r3, [r4]
00521d8c  f3 ff ff ea                                      b #0x521d60
00521d90  af b9 f7 eb                                      bl #0x310454
00521d94  f9 ff ff ea                                      b #0x521d80
00521d98  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00521d9c  00 00 8f e0                                      add r0, pc, r0
00521da0  c7 b0 f7 eb                                      bl #0x30e0c4
00521da4  01 00 a0 e3                                      mov r0, #1
00521da8  26 b0 f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00521dac  d4 c6 39 00                                      .byte 0xd4, 0xc6, 0x39, 0x00
