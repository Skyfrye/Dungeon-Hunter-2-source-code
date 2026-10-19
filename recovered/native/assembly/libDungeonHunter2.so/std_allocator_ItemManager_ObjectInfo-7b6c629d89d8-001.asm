; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003eaff8, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<ItemManager::ObjectInfo>
; alias: _ZNSaIN11ItemManager10ObjectInfoEE11_M_allocateEjRj
; demangled: std::allocator<ItemManager::ObjectInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003eaff8  10 40 2d e9                                      push {r4, lr}
003eaffc  1e 02 71 e3                                      cmn r1, #0xe0000001
003eb000  08 d0 4d e2                                      sub sp, sp, #8
003eb004  02 40 a0 e1                                      mov r4, r2
003eb008  10 00 00 8a                                      bhi #0x3eb050
003eb00c  00 00 51 e3                                      cmp r1, #0
003eb010  01 00 a0 01                                      moveq r0, r1
003eb014  01 00 00 1a                                      bne #0x3eb020
003eb018  08 d0 8d e2                                      add sp, sp, #8
003eb01c  10 80 bd e8                                      pop {r4, pc}
003eb020  81 01 a0 e1                                      lsl r0, r1, #3
003eb024  80 00 50 e3                                      cmp r0, #0x80
003eb028  04 00 8d e5                                      str r0, [sp, #4]
003eb02c  05 00 00 8a                                      bhi #0x3eb048
003eb030  04 00 8d e2                                      add r0, sp, #4
003eb034  a1 77 0c eb                                      bl #0x708ec0
003eb038  04 30 9d e5                                      ldr r3, [sp, #4]
003eb03c  a3 31 a0 e1                                      lsr r3, r3, #3
003eb040  00 30 84 e5                                      str r3, [r4]
003eb044  f3 ff ff ea                                      b #0x3eb018
003eb048  01 95 fc eb                                      bl #0x310454
003eb04c  f9 ff ff ea                                      b #0x3eb038
003eb050  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003eb054  00 00 8f e0                                      add r0, pc, r0
003eb058  19 8c fc eb                                      bl #0x30e0c4
003eb05c  01 00 a0 e3                                      mov r0, #1
003eb060  78 8b fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003eb064  1c 34 4d 00                                      .byte 0x1c, 0x34, 0x4d, 0x00
