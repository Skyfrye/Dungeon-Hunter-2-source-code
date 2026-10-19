; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a2f28, declared_size=4, range_size=4, mode=arm
; class-group: NetStructRangedFloat<16u, -50000, 50000>
; alias: _ZN20NetStructRangedFloatILj16ELin50000ELi50000EED1Ev
; demangled: NetStructRangedFloat<16u, -50000, 50000>::~NetStructRangedFloat()
; decoder-mode: arm
003a2f28  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a3654, declared_size=68, range_size=68, mode=arm
; class-group: NetStructRangedFloat<16u, -50000, 50000>
; alias: _ZN20NetStructRangedFloatILj16ELin50000ELi50000EE9TestValueERKf
; demangled: NetStructRangedFloat<16u, -50000, 50000>::TestValue(float const&)
; decoder-mode: arm
003a3654  10 40 2d e9                                      push {r4, lr}
003a3658  00 40 91 e5                                      ldr r4, [r1]
003a365c  00 10 05 e3                                      movw r1, #0x5000
003a3660  43 17 4c e3                                      movt r1, #0xc743
003a3664  04 00 a0 e1                                      mov r0, r4
003a3668  91 ab fd eb                                      bl #0x30e4b4
003a366c  00 00 50 e3                                      cmp r0, #0
003a3670  07 00 00 0a                                      beq #0x3a3694
003a3674  00 10 05 e3                                      movw r1, #0x5000
003a3678  04 00 a0 e1                                      mov r0, r4
003a367c  43 17 44 e3                                      movt r1, #0x4743
003a3680  c9 ac fd eb                                      bl #0x30e9ac
003a3684  00 00 50 e3                                      cmp r0, #0
003a3688  00 00 a0 e3                                      mov r0, #0
003a368c  01 00 a0 13                                      movne r0, #1
003a3690  70 00 ef e6                                      uxtb r0, r0
003a3694  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a3850, declared_size=52, range_size=52, mode=arm
; class-group: NetStructRangedFloat<16u, -50000, 50000>
; alias: _ZN20NetStructRangedFloatILj16ELin50000ELi50000EED0Ev
; demangled: NetStructRangedFloat<16u, -50000, 50000>::~NetStructRangedFloat()
; decoder-mode: arm
003a3850  24 30 9f e5                                      ldr r3, [pc, #0x24]
003a3854  24 20 9f e5                                      ldr r2, [pc, #0x24]
003a3858  10 40 2d e9                                      push {r4, lr}
003a385c  03 30 8f e0                                      add r3, pc, r3
003a3860  02 20 93 e7                                      ldr r2, [r3, r2]
003a3864  00 40 a0 e1                                      mov r4, r0
003a3868  08 20 82 e2                                      add r2, r2, #8
003a386c  00 20 80 e5                                      str r2, [r0]
003a3870  f2 b2 fd eb                                      bl #0x310440
003a3874  04 00 a0 e1                                      mov r0, r4
003a3878  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a387c  34 12 5f 00 a8 10 00 00                          .byte 0x34, 0x12, 0x5f, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x003a3cc4, declared_size=96, range_size=96, mode=arm
; class-group: NetStructRangedFloat<16u, -50000, 50000>
; alias: _ZN20NetStructRangedFloatILj16ELin50000ELi50000EE4ReadER12NetBitStream
; demangled: NetStructRangedFloat<16u, -50000, 50000>::Read(NetBitStream&)
; decoder-mode: arm
003a3cc4  10 40 2d e9                                      push {r4, lr}
003a3cc8  00 40 a0 e1                                      mov r4, r0
003a3ccc  08 d0 4d e2                                      sub sp, sp, #8
003a3cd0  01 00 a0 e1                                      mov r0, r1
003a3cd4  10 10 a0 e3                                      mov r1, #0x10
003a3cd8  54 aa 11 eb                                      bl #0x80e630
003a3cdc  7f a9 fd eb                                      bl #0x30e2e0
003a3ce0  00 1f 0f e3                                      movw r1, #0xff00
003a3ce4  7f 17 44 e3                                      movt r1, #0x477f
003a3ce8  e9 ab fd eb                                      bl #0x30ec94
003a3cec  00 10 05 e3                                      movw r1, #0x5000
003a3cf0  c3 17 44 e3                                      movt r1, #0x47c3
003a3cf4  1c ac fd eb                                      bl #0x30ed6c
003a3cf8  00 10 05 e3                                      movw r1, #0x5000
003a3cfc  43 17 44 e3                                      movt r1, #0x4743
003a3d00  a9 a9 fd eb                                      bl #0x30e3ac
003a3d04  08 10 8d e2                                      add r1, sp, #8
003a3d08  04 00 21 e5                                      str r0, [r1, #-4]!
003a3d0c  00 30 94 e5                                      ldr r3, [r4]
003a3d10  04 00 a0 e1                                      mov r0, r4
003a3d14  0f e0 a0 e1                                      mov lr, pc
003a3d18  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003a3d1c  08 d0 8d e2                                      add sp, sp, #8
003a3d20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a3dc4, declared_size=72, range_size=72, mode=arm
; class-group: NetStructRangedFloat<16u, -50000, 50000>
; alias: _ZN20NetStructRangedFloatILj16ELin50000ELi50000EE5WriteER12NetBitStream
; demangled: NetStructRangedFloat<16u, -50000, 50000>::Write(NetBitStream&)
; decoder-mode: arm
003a3dc4  10 40 2d e9                                      push {r4, lr}
003a3dc8  01 40 a0 e1                                      mov r4, r1
003a3dcc  00 10 05 e3                                      movw r1, #0x5000
003a3dd0  20 00 90 e5                                      ldr r0, [r0, #0x20]
003a3dd4  43 17 44 e3                                      movt r1, #0x4743
003a3dd8  71 ab fd eb                                      bl #0x30eba4
003a3ddc  00 10 05 e3                                      movw r1, #0x5000
003a3de0  c3 17 44 e3                                      movt r1, #0x47c3
003a3de4  aa ab fd eb                                      bl #0x30ec94
003a3de8  00 1f 0f e3                                      movw r1, #0xff00
003a3dec  7f 17 44 e3                                      movt r1, #0x477f
003a3df0  dd ab fd eb                                      bl #0x30ed6c
003a3df4  29 69 14 eb                                      bl #0x8be2a0
003a3df8  10 20 a0 e3                                      mov r2, #0x10
003a3dfc  00 10 a0 e1                                      mov r1, r0
003a3e00  04 00 a0 e1                                      mov r0, r4
003a3e04  10 40 bd e8                                      pop {r4, lr}
003a3e08  f3 a9 11 ea                                      b #0x80e5dc
