; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0049768c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<SWFAnim*>
; alias: _ZNSaIP7SWFAnimE11_M_allocateEjRj
; demangled: std::allocator<SWFAnim*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0049768c  10 40 2d e9                                      push {r4, lr}
00497690  07 01 71 e3                                      cmn r1, #0xc0000001
00497694  08 d0 4d e2                                      sub sp, sp, #8
00497698  02 40 a0 e1                                      mov r4, r2
0049769c  10 00 00 8a                                      bhi #0x4976e4
004976a0  00 00 51 e3                                      cmp r1, #0
004976a4  01 00 a0 01                                      moveq r0, r1
004976a8  01 00 00 1a                                      bne #0x4976b4
004976ac  08 d0 8d e2                                      add sp, sp, #8
004976b0  10 80 bd e8                                      pop {r4, pc}
004976b4  01 01 a0 e1                                      lsl r0, r1, #2
004976b8  80 00 50 e3                                      cmp r0, #0x80
004976bc  04 00 8d e5                                      str r0, [sp, #4]
004976c0  05 00 00 8a                                      bhi #0x4976dc
004976c4  04 00 8d e2                                      add r0, sp, #4
004976c8  fc c5 09 eb                                      bl #0x708ec0
004976cc  04 30 9d e5                                      ldr r3, [sp, #4]
004976d0  23 31 a0 e1                                      lsr r3, r3, #2
004976d4  00 30 84 e5                                      str r3, [r4]
004976d8  f3 ff ff ea                                      b #0x4976ac
004976dc  5c e3 f9 eb                                      bl #0x310454
004976e0  f9 ff ff ea                                      b #0x4976cc
004976e4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
004976e8  00 00 8f e0                                      add r0, pc, r0
004976ec  74 da f9 eb                                      bl #0x30e0c4
004976f0  01 00 a0 e3                                      mov r0, #1
004976f4  d3 d9 f9 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
004976f8  88 6d 42 00                                      .byte 0x88, 0x6d, 0x42, 0x00
