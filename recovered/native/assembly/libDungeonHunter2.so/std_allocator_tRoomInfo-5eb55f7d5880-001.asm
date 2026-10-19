; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0043e428, declared_size=108, range_size=108, mode=arm
; class-group: std::allocator<tRoomInfo>
; alias: _ZNSaI9tRoomInfoE11_M_allocateEjRj
; demangled: std::allocator<tRoomInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0043e428  d5 33 0b e3                                      movw r3, #0xb3d5
0043e42c  43 30 40 e3                                      movt r3, #0x43
0043e430  03 00 51 e1                                      cmp r1, r3
0043e434  70 40 2d e9                                      push {r4, r5, r6, lr}
0043e438  02 40 a0 e1                                      mov r4, r2
0043e43c  0e 00 00 8a                                      bhi #0x43e47c
0043e440  00 00 51 e3                                      cmp r1, #0
0043e444  01 00 00 1a                                      bne #0x43e450
0043e448  01 00 a0 e1                                      mov r0, r1
0043e44c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0043e450  f2 5f a0 e3                                      mov r5, #0x3c8
0043e454  95 01 05 e0                                      mul r5, r5, r1
0043e458  05 00 a0 e1                                      mov r0, r5
0043e45c  fc 47 fb eb                                      bl #0x310454
0043e460  5b 3d 03 e3                                      movw r3, #0x3d5b
0043e464  a5 51 a0 e1                                      lsr r5, r5, #3
0043e468  3b 34 40 e3                                      movt r3, #0x43b
0043e46c  93 25 83 e0                                      umull r2, r3, r3, r5
0043e470  a3 30 a0 e1                                      lsr r3, r3, #1
0043e474  00 30 84 e5                                      str r3, [r4]
0043e478  70 80 bd e8                                      pop {r4, r5, r6, pc}
0043e47c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0043e480  00 00 8f e0                                      add r0, pc, r0
0043e484  0e 3f fb eb                                      bl #0x30e0c4
0043e488  01 00 a0 e3                                      mov r0, #1
0043e48c  6d 3e fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0043e490  f0 ff 47 00                                      .byte 0xf0, 0xff, 0x47, 0x00
