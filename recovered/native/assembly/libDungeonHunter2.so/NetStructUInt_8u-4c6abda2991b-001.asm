; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d250, declared_size=4, range_size=4, mode=arm
; class-group: NetStructUInt<8u>
; alias: _ZN13NetStructUIntILj8EED1Ev
; demangled: NetStructUInt<8u>::~NetStructUInt()
; decoder-mode: arm
0036d250  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d404, declared_size=20, range_size=20, mode=arm
; class-group: NetStructUInt<8u>
; alias: _ZN13NetStructUIntILj8EE9TestValueERKj
; demangled: NetStructUInt<8u>::TestValue(unsigned int const&)
; decoder-mode: arm
0036d404  00 00 91 e5                                      ldr r0, [r1]
0036d408  ff 00 50 e3                                      cmp r0, #0xff
0036d40c  00 00 a0 83                                      movhi r0, #0
0036d410  01 00 a0 93                                      movls r0, #1
0036d414  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036d5bc, declared_size=52, range_size=52, mode=arm
; class-group: NetStructUInt<8u>
; alias: _ZN13NetStructUIntILj8EED0Ev
; demangled: NetStructUInt<8u>::~NetStructUInt()
; decoder-mode: arm
0036d5bc  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036d5c0  24 20 9f e5                                      ldr r2, [pc, #0x24]
0036d5c4  10 40 2d e9                                      push {r4, lr}
0036d5c8  03 30 8f e0                                      add r3, pc, r3
0036d5cc  02 20 93 e7                                      ldr r2, [r3, r2]
0036d5d0  00 40 a0 e1                                      mov r4, r0
0036d5d4  08 20 82 e2                                      add r2, r2, #8
0036d5d8  00 20 80 e5                                      str r2, [r0]
0036d5dc  97 8b fe eb                                      bl #0x310440
0036d5e0  04 00 a0 e1                                      mov r0, r4
0036d5e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036d5e8  c8 74 62 00 a8 10 00 00                          .byte 0xc8, 0x74, 0x62, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0036da38, declared_size=56, range_size=56, mode=arm
; class-group: NetStructUInt<8u>
; alias: _ZN13NetStructUIntILj8EE4ReadER12NetBitStream
; demangled: NetStructUInt<8u>::Read(NetBitStream&)
; decoder-mode: arm
0036da38  10 40 2d e9                                      push {r4, lr}
0036da3c  00 40 a0 e1                                      mov r4, r0
0036da40  08 d0 4d e2                                      sub sp, sp, #8
0036da44  01 00 a0 e1                                      mov r0, r1
0036da48  08 10 a0 e3                                      mov r1, #8
0036da4c  f7 82 12 eb                                      bl #0x80e630
0036da50  08 10 8d e2                                      add r1, sp, #8
0036da54  04 00 21 e5                                      str r0, [r1, #-4]!
0036da58  00 30 94 e5                                      ldr r3, [r4]
0036da5c  04 00 a0 e1                                      mov r0, r4
0036da60  0f e0 a0 e1                                      mov lr, pc
0036da64  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0036da68  08 d0 8d e2                                      add sp, sp, #8
0036da6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0036dbf0, declared_size=20, range_size=20, mode=arm
; class-group: NetStructUInt<8u>
; alias: _ZN13NetStructUIntILj8EE5WriteER12NetBitStream
; demangled: NetStructUInt<8u>::Write(NetBitStream&)
; decoder-mode: arm
0036dbf0  20 30 90 e5                                      ldr r3, [r0, #0x20]
0036dbf4  08 20 a0 e3                                      mov r2, #8
0036dbf8  01 00 a0 e1                                      mov r0, r1
0036dbfc  03 10 a0 e1                                      mov r1, r3
0036dc00  75 82 12 ea                                      b #0x80e5dc
