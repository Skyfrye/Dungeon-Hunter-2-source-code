; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00408c6c, declared_size=108, range_size=108, mode=arm
; class-group: std::allocator<v2Controller*>
; alias: _ZNSaIP12v2ControllerE11_M_allocateEjRj
; demangled: std::allocator<v2Controller*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00408c6c  10 40 2d e9                                      push {r4, lr}
00408c70  07 01 71 e3                                      cmn r1, #0xc0000001
00408c74  08 d0 4d e2                                      sub sp, sp, #8
00408c78  02 40 a0 e1                                      mov r4, r2
00408c7c  0f 00 00 8a                                      bhi #0x408cc0
00408c80  00 00 51 e3                                      cmp r1, #0
00408c84  01 00 a0 01                                      moveq r0, r1
00408c88  08 00 00 0a                                      beq #0x408cb0
00408c8c  01 01 a0 e1                                      lsl r0, r1, #2
00408c90  80 00 50 e3                                      cmp r0, #0x80
00408c94  04 00 8d e5                                      str r0, [sp, #4]
00408c98  06 00 00 8a                                      bhi #0x408cb8
00408c9c  04 00 8d e2                                      add r0, sp, #4
00408ca0  86 00 0c eb                                      bl #0x708ec0
00408ca4  04 30 9d e5                                      ldr r3, [sp, #4]
00408ca8  23 31 a0 e1                                      lsr r3, r3, #2
00408cac  00 30 84 e5                                      str r3, [r4]
00408cb0  08 d0 8d e2                                      add sp, sp, #8
00408cb4  10 80 bd e8                                      pop {r4, pc}
00408cb8  e5 1d fc eb                                      bl #0x310454
00408cbc  f8 ff ff ea                                      b #0x408ca4
00408cc0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00408cc4  00 00 8f e0                                      add r0, pc, r0
00408cc8  fd 14 fc eb                                      bl #0x30e0c4
00408ccc  01 00 a0 e3                                      mov r0, #1
00408cd0  5c 14 fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00408cd4  ac 57 4b 00                                      .byte 0xac, 0x57, 0x4b, 0x00

; FUNCTION 0x00408cd8, declared_size=28, range_size=28, mode=arm
; class-group: std::allocator<v2Controller*>
; alias: _ZNSaIP12v2ControllerE10deallocateEPS0_j
; demangled: std::allocator<v2Controller*>::deallocate(v2Controller**, unsigned int)
; decoder-mode: arm
00408cd8  00 00 51 e2                                      subs r0, r1, #0
00408cdc  1e ff 2f 01                                      bxeq lr
00408ce0  02 11 a0 e1                                      lsl r1, r2, #2
00408ce4  80 00 51 e3                                      cmp r1, #0x80
00408ce8  00 00 00 8a                                      bhi #0x408cf0
00408cec  83 00 0c ea                                      b #0x708f00
00408cf0  d2 1d fc ea                                      b #0x310440
