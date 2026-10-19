; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039f3c8, declared_size=4, range_size=4, mode=arm
; class-group: NetStructUInt<1u>
; alias: _ZN13NetStructUIntILj1EED1Ev
; demangled: NetStructUInt<1u>::~NetStructUInt()
; decoder-mode: arm
0039f3c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f518, declared_size=20, range_size=20, mode=arm
; class-group: NetStructUInt<1u>
; alias: _ZN13NetStructUIntILj1EE9TestValueERKj
; demangled: NetStructUInt<1u>::TestValue(unsigned int const&)
; decoder-mode: arm
0039f518  00 00 91 e5                                      ldr r0, [r1]
0039f51c  01 00 50 e3                                      cmp r0, #1
0039f520  00 00 a0 83                                      movhi r0, #0
0039f524  01 00 a0 93                                      movls r0, #1
0039f528  1e ff 2f e1                                      bx lr

; FUNCTION 0x0039f538, declared_size=52, range_size=52, mode=arm
; class-group: NetStructUInt<1u>
; alias: _ZN13NetStructUIntILj1EED0Ev
; demangled: NetStructUInt<1u>::~NetStructUInt()
; decoder-mode: arm
0039f538  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039f53c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0039f540  10 40 2d e9                                      push {r4, lr}
0039f544  03 30 8f e0                                      add r3, pc, r3
0039f548  02 20 93 e7                                      ldr r2, [r3, r2]
0039f54c  00 40 a0 e1                                      mov r4, r0
0039f550  08 20 82 e2                                      add r2, r2, #8
0039f554  00 20 80 e5                                      str r2, [r0]
0039f558  b8 c3 fd eb                                      bl #0x310440
0039f55c  04 00 a0 e1                                      mov r0, r4
0039f560  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039f564  4c 55 5f 00 a8 10 00 00                          .byte 0x4c, 0x55, 0x5f, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x0039f5a0, declared_size=56, range_size=56, mode=arm
; class-group: NetStructUInt<1u>
; alias: _ZN13NetStructUIntILj1EE4ReadER12NetBitStream
; demangled: NetStructUInt<1u>::Read(NetBitStream&)
; decoder-mode: arm
0039f5a0  10 40 2d e9                                      push {r4, lr}
0039f5a4  00 40 a0 e1                                      mov r4, r0
0039f5a8  08 d0 4d e2                                      sub sp, sp, #8
0039f5ac  01 00 a0 e1                                      mov r0, r1
0039f5b0  01 10 a0 e3                                      mov r1, #1
0039f5b4  1d bc 11 eb                                      bl #0x80e630
0039f5b8  08 10 8d e2                                      add r1, sp, #8
0039f5bc  04 00 21 e5                                      str r0, [r1, #-4]!
0039f5c0  00 30 94 e5                                      ldr r3, [r4]
0039f5c4  04 00 a0 e1                                      mov r0, r4
0039f5c8  0f e0 a0 e1                                      mov lr, pc
0039f5cc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0039f5d0  08 d0 8d e2                                      add sp, sp, #8
0039f5d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039f610, declared_size=20, range_size=20, mode=arm
; class-group: NetStructUInt<1u>
; alias: _ZN13NetStructUIntILj1EE5WriteER12NetBitStream
; demangled: NetStructUInt<1u>::Write(NetBitStream&)
; decoder-mode: arm
0039f610  20 30 90 e5                                      ldr r3, [r0, #0x20]
0039f614  01 20 a0 e3                                      mov r2, #1
0039f618  01 00 a0 e1                                      mov r0, r1
0039f61c  03 10 a0 e1                                      mov r1, r3
0039f620  ed bb 11 ea                                      b #0x80e5dc
