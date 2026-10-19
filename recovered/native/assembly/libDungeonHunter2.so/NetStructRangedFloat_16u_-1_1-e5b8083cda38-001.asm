; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a2f38, declared_size=4, range_size=4, mode=arm
; class-group: NetStructRangedFloat<16u, -1, 1>
; alias: _ZN20NetStructRangedFloatILj16ELin1ELi1EED1Ev
; demangled: NetStructRangedFloat<16u, -1, 1>::~NetStructRangedFloat()
; decoder-mode: arm
003a2f38  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a360c, declared_size=64, range_size=64, mode=arm
; class-group: NetStructRangedFloat<16u, -1, 1>
; alias: _ZN20NetStructRangedFloatILj16ELin1ELi1EE9TestValueERKf
; demangled: NetStructRangedFloat<16u, -1, 1>::TestValue(float const&)
; decoder-mode: arm
003a360c  10 40 2d e9                                      push {r4, lr}
003a3610  00 40 91 e5                                      ldr r4, [r1]
003a3614  bf 14 a0 e3                                      mov r1, #0xbf000000
003a3618  02 15 81 e2                                      add r1, r1, #0x800000
003a361c  04 00 a0 e1                                      mov r0, r4
003a3620  a3 ab fd eb                                      bl #0x30e4b4
003a3624  00 00 50 e3                                      cmp r0, #0
003a3628  06 00 00 0a                                      beq #0x3a3648
003a362c  04 00 a0 e1                                      mov r0, r4
003a3630  fe 15 a0 e3                                      mov r1, #0x3f800000
003a3634  dc ac fd eb                                      bl #0x30e9ac
003a3638  00 00 50 e3                                      cmp r0, #0
003a363c  00 00 a0 e3                                      mov r0, #0
003a3640  01 00 a0 13                                      movne r0, #1
003a3644  70 00 ef e6                                      uxtb r0, r0
003a3648  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a38d4, declared_size=52, range_size=52, mode=arm
; class-group: NetStructRangedFloat<16u, -1, 1>
; alias: _ZN20NetStructRangedFloatILj16ELin1ELi1EED0Ev
; demangled: NetStructRangedFloat<16u, -1, 1>::~NetStructRangedFloat()
; decoder-mode: arm
003a38d4  24 30 9f e5                                      ldr r3, [pc, #0x24]
003a38d8  24 20 9f e5                                      ldr r2, [pc, #0x24]
003a38dc  10 40 2d e9                                      push {r4, lr}
003a38e0  03 30 8f e0                                      add r3, pc, r3
003a38e4  02 20 93 e7                                      ldr r2, [r3, r2]
003a38e8  00 40 a0 e1                                      mov r4, r0
003a38ec  08 20 82 e2                                      add r2, r2, #8
003a38f0  00 20 80 e5                                      str r2, [r0]
003a38f4  d1 b2 fd eb                                      bl #0x310440
003a38f8  04 00 a0 e1                                      mov r0, r4
003a38fc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a3900  b0 11 5f 00 a8 10 00 00                          .byte 0xb0, 0x11, 0x5f, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x003a3d24, declared_size=88, range_size=88, mode=arm
; class-group: NetStructRangedFloat<16u, -1, 1>
; alias: _ZN20NetStructRangedFloatILj16ELin1ELi1EE4ReadER12NetBitStream
; demangled: NetStructRangedFloat<16u, -1, 1>::Read(NetBitStream&)
; decoder-mode: arm
003a3d24  10 40 2d e9                                      push {r4, lr}
003a3d28  00 40 a0 e1                                      mov r4, r0
003a3d2c  08 d0 4d e2                                      sub sp, sp, #8
003a3d30  01 00 a0 e1                                      mov r0, r1
003a3d34  10 10 a0 e3                                      mov r1, #0x10
003a3d38  3c aa 11 eb                                      bl #0x80e630
003a3d3c  67 a9 fd eb                                      bl #0x30e2e0
003a3d40  00 1f 0f e3                                      movw r1, #0xff00
003a3d44  7f 17 44 e3                                      movt r1, #0x477f
003a3d48  d1 ab fd eb                                      bl #0x30ec94
003a3d4c  00 10 a0 e1                                      mov r1, r0
003a3d50  93 ab fd eb                                      bl #0x30eba4
003a3d54  fe 15 a0 e3                                      mov r1, #0x3f800000
003a3d58  93 a9 fd eb                                      bl #0x30e3ac
003a3d5c  08 10 8d e2                                      add r1, sp, #8
003a3d60  04 00 21 e5                                      str r0, [r1, #-4]!
003a3d64  00 30 94 e5                                      ldr r3, [r4]
003a3d68  04 00 a0 e1                                      mov r0, r4
003a3d6c  0f e0 a0 e1                                      mov lr, pc
003a3d70  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003a3d74  08 d0 8d e2                                      add sp, sp, #8
003a3d78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a3e0c, declared_size=64, range_size=64, mode=arm
; class-group: NetStructRangedFloat<16u, -1, 1>
; alias: _ZN20NetStructRangedFloatILj16ELin1ELi1EE5WriteER12NetBitStream
; demangled: NetStructRangedFloat<16u, -1, 1>::Write(NetBitStream&)
; decoder-mode: arm
003a3e0c  10 40 2d e9                                      push {r4, lr}
003a3e10  01 40 a0 e1                                      mov r4, r1
003a3e14  20 00 90 e5                                      ldr r0, [r0, #0x20]
003a3e18  fe 15 a0 e3                                      mov r1, #0x3f800000
003a3e1c  60 ab fd eb                                      bl #0x30eba4
003a3e20  3f 14 a0 e3                                      mov r1, #0x3f000000
003a3e24  d0 ab fd eb                                      bl #0x30ed6c
003a3e28  00 1f 0f e3                                      movw r1, #0xff00
003a3e2c  7f 17 44 e3                                      movt r1, #0x477f
003a3e30  cd ab fd eb                                      bl #0x30ed6c
003a3e34  19 69 14 eb                                      bl #0x8be2a0
003a3e38  10 20 a0 e3                                      mov r2, #0x10
003a3e3c  00 10 a0 e1                                      mov r1, r0
003a3e40  04 00 a0 e1                                      mov r0, r4
003a3e44  10 40 bd e8                                      pop {r4, lr}
003a3e48  e3 a9 11 ea                                      b #0x80e5dc
