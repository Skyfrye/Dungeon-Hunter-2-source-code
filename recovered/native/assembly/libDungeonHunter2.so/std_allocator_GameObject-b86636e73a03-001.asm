; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038e610, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<GameObject*>
; alias: _ZNSaIP10GameObjectE11_M_allocateEjRj
; demangled: std::allocator<GameObject*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0038e610  10 40 2d e9                                      push {r4, lr}
0038e614  07 01 71 e3                                      cmn r1, #0xc0000001
0038e618  08 d0 4d e2                                      sub sp, sp, #8
0038e61c  02 40 a0 e1                                      mov r4, r2
0038e620  10 00 00 8a                                      bhi #0x38e668
0038e624  00 00 51 e3                                      cmp r1, #0
0038e628  01 00 a0 01                                      moveq r0, r1
0038e62c  01 00 00 1a                                      bne #0x38e638
0038e630  08 d0 8d e2                                      add sp, sp, #8
0038e634  10 80 bd e8                                      pop {r4, pc}
0038e638  01 01 a0 e1                                      lsl r0, r1, #2
0038e63c  80 00 50 e3                                      cmp r0, #0x80
0038e640  04 00 8d e5                                      str r0, [sp, #4]
0038e644  05 00 00 8a                                      bhi #0x38e660
0038e648  04 00 8d e2                                      add r0, sp, #4
0038e64c  1b ea 0d eb                                      bl #0x708ec0
0038e650  04 30 9d e5                                      ldr r3, [sp, #4]
0038e654  23 31 a0 e1                                      lsr r3, r3, #2
0038e658  00 30 84 e5                                      str r3, [r4]
0038e65c  f3 ff ff ea                                      b #0x38e630
0038e660  7b 07 fe eb                                      bl #0x310454
0038e664  f9 ff ff ea                                      b #0x38e650
0038e668  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0038e66c  00 00 8f e0                                      add r0, pc, r0
0038e670  93 fe fd eb                                      bl #0x30e0c4
0038e674  01 00 a0 e3                                      mov r0, #1
0038e678  f2 fd fd eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0038e67c  04 fe 52 00                                      .byte 0x04, 0xfe, 0x52, 0x00
