; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039f320, declared_size=4, range_size=4, mode=arm
; class-group: NetStructUInt<32u>
; alias: _ZN13NetStructUIntILj32EED1Ev
; demangled: NetStructUInt<32u>::~NetStructUInt()
; decoder-mode: arm
0039f320  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f52c, declared_size=8, range_size=8, mode=arm
; class-group: NetStructUInt<32u>
; alias: _ZN13NetStructUIntILj32EE9TestValueERKj
; demangled: NetStructUInt<32u>::TestValue(unsigned int const&)
; decoder-mode: arm
0039f52c  01 00 a0 e3                                      mov r0, #1
0039f530  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f56c, declared_size=52, range_size=52, mode=arm
; class-group: NetStructUInt<32u>
; alias: _ZN13NetStructUIntILj32EED0Ev
; demangled: NetStructUInt<32u>::~NetStructUInt()
; decoder-mode: arm
0039f56c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039f570  24 20 9f e5                                      ldr r2, [pc, #0x24]
0039f574  10 40 2d e9                                      push {r4, lr}
0039f578  03 30 8f e0                                      add r3, pc, r3
0039f57c  02 20 93 e7                                      ldr r2, [r3, r2]
0039f580  00 40 a0 e1                                      mov r4, r0
0039f584  08 20 82 e2                                      add r2, r2, #8
0039f588  00 20 80 e5                                      str r2, [r0]
0039f58c  ab c3 fd eb                                      bl #0x310440
0039f590  04 00 a0 e1                                      mov r0, r4
0039f594  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039f598  18 55 5f 00 a8 10 00 00                          .byte 0x18, 0x55, 0x5f, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0039f5d8, declared_size=56, range_size=56, mode=arm
; class-group: NetStructUInt<32u>
; alias: _ZN13NetStructUIntILj32EE4ReadER12NetBitStream
; demangled: NetStructUInt<32u>::Read(NetBitStream&)
; decoder-mode: arm
0039f5d8  10 40 2d e9                                      push {r4, lr}
0039f5dc  00 40 a0 e1                                      mov r4, r0
0039f5e0  08 d0 4d e2                                      sub sp, sp, #8
0039f5e4  01 00 a0 e1                                      mov r0, r1
0039f5e8  20 10 a0 e3                                      mov r1, #0x20
0039f5ec  0f bc 11 eb                                      bl #0x80e630
0039f5f0  08 10 8d e2                                      add r1, sp, #8
0039f5f4  04 00 21 e5                                      str r0, [r1, #-4]!
0039f5f8  00 30 94 e5                                      ldr r3, [r4]
0039f5fc  04 00 a0 e1                                      mov r0, r4
0039f600  0f e0 a0 e1                                      mov lr, pc
0039f604  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0039f608  08 d0 8d e2                                      add sp, sp, #8
0039f60c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039f624, declared_size=20, range_size=20, mode=arm
; class-group: NetStructUInt<32u>
; alias: _ZN13NetStructUIntILj32EE5WriteER12NetBitStream
; demangled: NetStructUInt<32u>::Write(NetBitStream&)
; decoder-mode: arm
0039f624  20 30 90 e5                                      ldr r3, [r0, #0x20]
0039f628  20 20 a0 e3                                      mov r2, #0x20
0039f62c  01 00 a0 e1                                      mov r0, r1
0039f630  03 10 a0 e1                                      mov r1, r3
0039f634  e8 bb 11 ea                                      b #0x80e5dc
