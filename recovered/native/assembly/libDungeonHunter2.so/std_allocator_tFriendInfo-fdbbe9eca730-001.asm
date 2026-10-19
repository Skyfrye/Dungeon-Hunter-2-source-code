; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081cbcc, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<tFriendInfo>
; alias: _ZNSaI11tFriendInfoE11_M_allocateEjRj
; demangled: std::allocator<tFriendInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0081cbcc  10 40 2d e9                                      push {r4, lr}
0081cbd0  62 37 02 e3                                      movw r3, #0x2762
0081cbd4  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0081cbd8  03 00 51 e1                                      cmp r1, r3
0081cbdc  08 d0 4d e2                                      sub sp, sp, #8
0081cbe0  02 40 a0 e1                                      mov r4, r2
0081cbe4  14 00 00 8a                                      bhi #0x81cc3c
0081cbe8  00 00 51 e3                                      cmp r1, #0
0081cbec  01 00 a0 01                                      moveq r0, r1
0081cbf0  01 00 00 1a                                      bne #0x81cbfc
0081cbf4  08 d0 8d e2                                      add sp, sp, #8
0081cbf8  10 80 bd e8                                      pop {r4, pc}
0081cbfc  68 00 a0 e3                                      mov r0, #0x68
0081cc00  90 01 00 e0                                      mul r0, r0, r1
0081cc04  80 00 50 e3                                      cmp r0, #0x80
0081cc08  04 00 8d e5                                      str r0, [sp, #4]
0081cc0c  08 00 00 8a                                      bhi #0x81cc34
0081cc10  04 00 8d e2                                      add r0, sp, #4
0081cc14  bf 85 02 eb                                      bl #0x8be318
0081cc18  04 20 9d e5                                      ldr r2, [sp, #4]
0081cc1c  4f 3c 0e e3                                      movw r3, #0xec4f
0081cc20  c4 3e 44 e3                                      movt r3, #0x4ec4
0081cc24  93 12 83 e0                                      umull r1, r3, r3, r2
0081cc28  a3 32 a0 e1                                      lsr r3, r3, #5
0081cc2c  00 30 84 e5                                      str r3, [r4]
0081cc30  ef ff ff ea                                      b #0x81cbf4
0081cc34  06 ce eb eb                                      bl #0x310454
0081cc38  f6 ff ff ea                                      b #0x81cc18
0081cc3c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0081cc40  00 00 8f e0                                      add r0, pc, r0
0081cc44  1e c5 eb eb                                      bl #0x30e0c4
0081cc48  01 00 a0 e3                                      mov r0, #1
0081cc4c  7d c4 eb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0081cc50  30 18 0a 00                                      .byte 0x30, 0x18, 0x0a, 0x00
