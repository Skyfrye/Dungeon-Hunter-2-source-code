; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a2570, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<SlotContainer::SlotInfo>
; alias: _ZNSaIN13SlotContainer8SlotInfoEE11_M_allocateEjRj
; demangled: std::allocator<SlotContainer::SlotInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
003a2570  10 40 2d e9                                      push {r4, lr}
003a2574  cc 3c 0c e3                                      movw r3, #0xcccc
003a2578  03 36 83 e1                                      orr r3, r3, r3, lsl #12
003a257c  03 00 51 e1                                      cmp r1, r3
003a2580  08 d0 4d e2                                      sub sp, sp, #8
003a2584  02 40 a0 e1                                      mov r4, r2
003a2588  14 00 00 8a                                      bhi #0x3a25e0
003a258c  00 00 51 e3                                      cmp r1, #0
003a2590  01 00 a0 01                                      moveq r0, r1
003a2594  01 00 00 1a                                      bne #0x3a25a0
003a2598  08 d0 8d e2                                      add sp, sp, #8
003a259c  10 80 bd e8                                      pop {r4, pc}
003a25a0  14 00 a0 e3                                      mov r0, #0x14
003a25a4  90 01 00 e0                                      mul r0, r0, r1
003a25a8  80 00 50 e3                                      cmp r0, #0x80
003a25ac  04 00 8d e5                                      str r0, [sp, #4]
003a25b0  08 00 00 8a                                      bhi #0x3a25d8
003a25b4  04 00 8d e2                                      add r0, sp, #4
003a25b8  40 9a 0d eb                                      bl #0x708ec0
003a25bc  04 20 9d e5                                      ldr r2, [sp, #4]
003a25c0  cd 3c 0c e3                                      movw r3, #0xcccd
003a25c4  cc 3c 4c e3                                      movt r3, #0xcccc
003a25c8  93 12 83 e0                                      umull r1, r3, r3, r2
003a25cc  23 32 a0 e1                                      lsr r3, r3, #4
003a25d0  00 30 84 e5                                      str r3, [r4]
003a25d4  ef ff ff ea                                      b #0x3a2598
003a25d8  9d b7 fd eb                                      bl #0x310454
003a25dc  f6 ff ff ea                                      b #0x3a25bc
003a25e0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003a25e4  00 00 8f e0                                      add r0, pc, r0
003a25e8  b5 ae fd eb                                      bl #0x30e0c4
003a25ec  01 00 a0 e3                                      mov r0, #1
003a25f0  14 ae fd eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003a25f4  8c be 51 00                                      .byte 0x8c, 0xbe, 0x51, 0x00
