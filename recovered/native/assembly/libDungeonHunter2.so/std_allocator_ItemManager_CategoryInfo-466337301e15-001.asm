; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003eae58, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<ItemManager::CategoryInfo>
; alias: _ZNSaIN11ItemManager12CategoryInfoEE11_M_allocateEjRj
; demangled: std::allocator<ItemManager::CategoryInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003eae58  10 40 2d e9                                      push {r4, lr}
003eae5c  1f 02 71 e3                                      cmn r1, #0xf0000001
003eae60  08 d0 4d e2                                      sub sp, sp, #8
003eae64  02 40 a0 e1                                      mov r4, r2
003eae68  10 00 00 8a                                      bhi #0x3eaeb0
003eae6c  00 00 51 e3                                      cmp r1, #0
003eae70  01 00 a0 01                                      moveq r0, r1
003eae74  01 00 00 1a                                      bne #0x3eae80
003eae78  08 d0 8d e2                                      add sp, sp, #8
003eae7c  10 80 bd e8                                      pop {r4, pc}
003eae80  01 02 a0 e1                                      lsl r0, r1, #4
003eae84  80 00 50 e3                                      cmp r0, #0x80
003eae88  04 00 8d e5                                      str r0, [sp, #4]
003eae8c  05 00 00 8a                                      bhi #0x3eaea8
003eae90  04 00 8d e2                                      add r0, sp, #4
003eae94  09 78 0c eb                                      bl #0x708ec0
003eae98  04 30 9d e5                                      ldr r3, [sp, #4]
003eae9c  23 32 a0 e1                                      lsr r3, r3, #4
003eaea0  00 30 84 e5                                      str r3, [r4]
003eaea4  f3 ff ff ea                                      b #0x3eae78
003eaea8  69 95 fc eb                                      bl #0x310454
003eaeac  f9 ff ff ea                                      b #0x3eae98
003eaeb0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003eaeb4  00 00 8f e0                                      add r0, pc, r0
003eaeb8  81 8c fc eb                                      bl #0x30e0c4
003eaebc  01 00 a0 e3                                      mov r0, #1
003eaec0  e0 8b fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003eaec4  bc 35 4d 00                                      .byte 0xbc, 0x35, 0x4d, 0x00
