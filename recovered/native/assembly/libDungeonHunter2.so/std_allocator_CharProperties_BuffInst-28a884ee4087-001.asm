; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e08cc, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<CharProperties::BuffInst**>
; alias: _ZNSaIPPN14CharProperties8BuffInstEE8allocateEjPKv
; demangled: std::allocator<CharProperties::BuffInst**>::allocate(unsigned int, void const*)
; decoder-mode: arm
003e08cc  04 e0 2d e5                                      str lr, [sp, #-4]!
003e08d0  07 01 71 e3                                      cmn r1, #0xc0000001
003e08d4  0c d0 4d e2                                      sub sp, sp, #0xc
003e08d8  0d 00 00 8a                                      bhi #0x3e0914
003e08dc  00 00 51 e3                                      cmp r1, #0
003e08e0  01 00 a0 01                                      moveq r0, r1
003e08e4  01 00 00 1a                                      bne #0x3e08f0
003e08e8  0c d0 8d e2                                      add sp, sp, #0xc
003e08ec  00 80 bd e8                                      ldm sp!, {pc}
003e08f0  01 01 a0 e1                                      lsl r0, r1, #2
003e08f4  80 00 50 e3                                      cmp r0, #0x80
003e08f8  04 00 8d e5                                      str r0, [sp, #4]
003e08fc  02 00 00 8a                                      bhi #0x3e090c
003e0900  04 00 8d e2                                      add r0, sp, #4
003e0904  6d a1 0c eb                                      bl #0x708ec0
003e0908  f6 ff ff ea                                      b #0x3e08e8
003e090c  d0 be fc eb                                      bl #0x310454
003e0910  f4 ff ff ea                                      b #0x3e08e8
003e0914  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003e0918  00 00 8f e0                                      add r0, pc, r0
003e091c  e8 b5 fc eb                                      bl #0x30e0c4
003e0920  01 00 a0 e3                                      mov r0, #1
003e0924  47 b5 fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003e0928  58 db 4d 00                                      .byte 0x58, 0xdb, 0x4d, 0x00
