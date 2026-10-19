; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e8e40, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<SpawnSpot*>
; alias: _ZNSaIP9SpawnSpotE11_M_allocateEjRj
; demangled: std::allocator<SpawnSpot*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003e8e40  10 40 2d e9                                      push {r4, lr}
003e8e44  07 01 71 e3                                      cmn r1, #0xc0000001
003e8e48  08 d0 4d e2                                      sub sp, sp, #8
003e8e4c  02 40 a0 e1                                      mov r4, r2
003e8e50  10 00 00 8a                                      bhi #0x3e8e98
003e8e54  00 00 51 e3                                      cmp r1, #0
003e8e58  01 00 a0 01                                      moveq r0, r1
003e8e5c  01 00 00 1a                                      bne #0x3e8e68
003e8e60  08 d0 8d e2                                      add sp, sp, #8
003e8e64  10 80 bd e8                                      pop {r4, pc}
003e8e68  01 01 a0 e1                                      lsl r0, r1, #2
003e8e6c  80 00 50 e3                                      cmp r0, #0x80
003e8e70  04 00 8d e5                                      str r0, [sp, #4]
003e8e74  05 00 00 8a                                      bhi #0x3e8e90
003e8e78  04 00 8d e2                                      add r0, sp, #4
003e8e7c  0f 80 0c eb                                      bl #0x708ec0
003e8e80  04 30 9d e5                                      ldr r3, [sp, #4]
003e8e84  23 31 a0 e1                                      lsr r3, r3, #2
003e8e88  00 30 84 e5                                      str r3, [r4]
003e8e8c  f3 ff ff ea                                      b #0x3e8e60
003e8e90  6f 9d fc eb                                      bl #0x310454
003e8e94  f9 ff ff ea                                      b #0x3e8e80
003e8e98  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003e8e9c  00 00 8f e0                                      add r0, pc, r0
003e8ea0  87 94 fc eb                                      bl #0x30e0c4
003e8ea4  01 00 a0 e3                                      mov r0, #1
003e8ea8  e6 93 fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003e8eac  d4 55 4d 00                                      .byte 0xd4, 0x55, 0x4d, 0x00
