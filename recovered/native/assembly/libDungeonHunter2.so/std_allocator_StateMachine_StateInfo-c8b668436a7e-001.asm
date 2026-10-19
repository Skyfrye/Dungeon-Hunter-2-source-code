; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033a520, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<StateMachine::StateInfo>
; alias: _ZNSaIN12StateMachine9StateInfoEE11_M_allocateEjRj
; demangled: std::allocator<StateMachine::StateInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0033a520  10 40 2d e9                                      push {r4, lr}
0033a524  1e 02 71 e3                                      cmn r1, #0xe0000001
0033a528  08 d0 4d e2                                      sub sp, sp, #8
0033a52c  02 40 a0 e1                                      mov r4, r2
0033a530  10 00 00 8a                                      bhi #0x33a578
0033a534  00 00 51 e3                                      cmp r1, #0
0033a538  01 00 a0 01                                      moveq r0, r1
0033a53c  01 00 00 1a                                      bne #0x33a548
0033a540  08 d0 8d e2                                      add sp, sp, #8
0033a544  10 80 bd e8                                      pop {r4, pc}
0033a548  81 01 a0 e1                                      lsl r0, r1, #3
0033a54c  80 00 50 e3                                      cmp r0, #0x80
0033a550  04 00 8d e5                                      str r0, [sp, #4]
0033a554  05 00 00 8a                                      bhi #0x33a570
0033a558  04 00 8d e2                                      add r0, sp, #4
0033a55c  57 3a 0f eb                                      bl #0x708ec0
0033a560  04 30 9d e5                                      ldr r3, [sp, #4]
0033a564  a3 31 a0 e1                                      lsr r3, r3, #3
0033a568  00 30 84 e5                                      str r3, [r4]
0033a56c  f3 ff ff ea                                      b #0x33a540
0033a570  b7 57 ff eb                                      bl #0x310454
0033a574  f9 ff ff ea                                      b #0x33a560
0033a578  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0033a57c  00 00 8f e0                                      add r0, pc, r0
0033a580  cf 4e ff eb                                      bl #0x30e0c4
0033a584  01 00 a0 e3                                      mov r0, #1
0033a588  2e 4e ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0033a58c  f4 3e 58 00                                      .byte 0xf4, 0x3e, 0x58, 0x00
