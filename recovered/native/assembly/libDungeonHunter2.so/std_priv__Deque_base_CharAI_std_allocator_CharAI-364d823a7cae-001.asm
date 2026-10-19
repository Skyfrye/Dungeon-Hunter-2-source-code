; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cd650, declared_size=132, range_size=132, mode=arm
; class-group: std::priv::_Deque_base<CharAI*, std::allocator<CharAI*> >
; alias: _ZNSt4priv11_Deque_baseIP6CharAISaIS2_EED2Ev
; demangled: std::priv::_Deque_base<CharAI*, std::allocator<CharAI*> >::~_Deque_base()
; decoder-mode: arm
003cd650  70 40 2d e9                                      push {r4, r5, r6, lr}
003cd654  00 60 a0 e1                                      mov r6, r0
003cd658  20 00 90 e5                                      ldr r0, [r0, #0x20]
003cd65c  00 00 50 e3                                      cmp r0, #0
003cd660  14 00 00 0a                                      beq #0x3cd6b8
003cd664  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
003cd668  0c 40 96 e5                                      ldr r4, [r6, #0xc]
003cd66c  04 50 85 e2                                      add r5, r5, #4
003cd670  05 00 54 e1                                      cmp r4, r5
003cd674  14 00 00 2a                                      bhs #0x3cd6cc
003cd678  00 00 94 e5                                      ldr r0, [r4]
003cd67c  80 10 a0 e3                                      mov r1, #0x80
003cd680  04 40 84 e2                                      add r4, r4, #4
003cd684  00 00 50 e3                                      cmp r0, #0
003cd688  00 00 00 0a                                      beq #0x3cd690
003cd68c  1b ee 0c eb                                      bl #0x708f00
003cd690  04 00 55 e1                                      cmp r5, r4
003cd694  f7 ff ff 8a                                      bhi #0x3cd678
003cd698  20 00 96 e5                                      ldr r0, [r6, #0x20]
003cd69c  24 10 96 e5                                      ldr r1, [r6, #0x24]
003cd6a0  00 00 50 e3                                      cmp r0, #0
003cd6a4  03 00 00 0a                                      beq #0x3cd6b8
003cd6a8  01 11 a0 e1                                      lsl r1, r1, #2
003cd6ac  80 00 51 e3                                      cmp r1, #0x80
003cd6b0  02 00 00 8a                                      bhi #0x3cd6c0
003cd6b4  11 ee 0c eb                                      bl #0x708f00
003cd6b8  06 00 a0 e1                                      mov r0, r6
003cd6bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
003cd6c0  5e 0b fd eb                                      bl #0x310440
003cd6c4  06 00 a0 e1                                      mov r0, r6
003cd6c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003cd6cc  24 10 96 e5                                      ldr r1, [r6, #0x24]
003cd6d0  f4 ff ff ea                                      b #0x3cd6a8
