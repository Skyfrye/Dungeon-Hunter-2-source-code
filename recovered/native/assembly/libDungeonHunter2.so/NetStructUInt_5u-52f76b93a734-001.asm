; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00817d74, declared_size=4, range_size=4, mode=arm
; class-group: NetStructUInt<5u>
; alias: _ZN13NetStructUIntILj5EED1Ev
; demangled: NetStructUInt<5u>::~NetStructUInt()
; decoder-mode: arm
00817d74  1e ff 2f e1                                      bx lr

; FUNCTION 0x00817e28, declared_size=20, range_size=20, mode=arm
; class-group: NetStructUInt<5u>
; alias: _ZN13NetStructUIntILj5EE9TestValueERKj
; demangled: NetStructUInt<5u>::TestValue(unsigned int const&)
; decoder-mode: arm
00817e28  00 00 91 e5                                      ldr r0, [r1]
00817e2c  1f 00 50 e3                                      cmp r0, #0x1f
00817e30  00 00 a0 83                                      movhi r0, #0
00817e34  01 00 a0 93                                      movls r0, #1
00817e38  1e ff 2f e1                                      bx lr

; FUNCTION 0x00817f00, declared_size=52, range_size=52, mode=arm
; class-group: NetStructUInt<5u>
; alias: _ZN13NetStructUIntILj5EED0Ev
; demangled: NetStructUInt<5u>::~NetStructUInt()
; decoder-mode: arm
00817f00  24 30 9f e5                                      ldr r3, [pc, #0x24]
00817f04  24 20 9f e5                                      ldr r2, [pc, #0x24]
00817f08  10 40 2d e9                                      push {r4, lr}
00817f0c  03 30 8f e0                                      add r3, pc, r3
00817f10  02 20 93 e7                                      ldr r2, [r3, r2]
00817f14  00 40 a0 e1                                      mov r4, r0
00817f18  08 20 82 e2                                      add r2, r2, #8
00817f1c  00 20 80 e5                                      str r2, [r0]
00817f20  46 e1 eb eb                                      bl #0x310440
00817f24  04 00 a0 e1                                      mov r0, r4
00817f28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00817f2c  84 cb 17 00 a8 10 00 00                          .byte 0x84, 0xcb, 0x17, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00817f34, declared_size=56, range_size=56, mode=arm
; class-group: NetStructUInt<5u>
; alias: _ZN13NetStructUIntILj5EE4ReadER12NetBitStream
; demangled: NetStructUInt<5u>::Read(NetBitStream&)
; decoder-mode: arm
00817f34  10 40 2d e9                                      push {r4, lr}
00817f38  00 40 a0 e1                                      mov r4, r0
00817f3c  08 d0 4d e2                                      sub sp, sp, #8
00817f40  01 00 a0 e1                                      mov r0, r1
00817f44  05 10 a0 e3                                      mov r1, #5
00817f48  b8 d9 ff eb                                      bl #0x80e630
00817f4c  08 10 8d e2                                      add r1, sp, #8
00817f50  04 00 21 e5                                      str r0, [r1, #-4]!
00817f54  00 30 94 e5                                      ldr r3, [r4]
00817f58  04 00 a0 e1                                      mov r0, r4
00817f5c  0f e0 a0 e1                                      mov lr, pc
00817f60  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00817f64  08 d0 8d e2                                      add sp, sp, #8
00817f68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00817f6c, declared_size=20, range_size=20, mode=arm
; class-group: NetStructUInt<5u>
; alias: _ZN13NetStructUIntILj5EE5WriteER12NetBitStream
; demangled: NetStructUInt<5u>::Write(NetBitStream&)
; decoder-mode: arm
00817f6c  20 30 90 e5                                      ldr r3, [r0, #0x20]
00817f70  05 20 a0 e3                                      mov r2, #5
00817f74  01 00 a0 e1                                      mov r0, r1
00817f78  03 10 a0 e1                                      mov r1, r3
00817f7c  96 d9 ff ea                                      b #0x80e5dc
