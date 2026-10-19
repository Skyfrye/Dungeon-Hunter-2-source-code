; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a2f18, declared_size=4, range_size=4, mode=arm
; class-group: NetStructRangedFloat<18u, -200000, 200000>
; alias: _ZN20NetStructRangedFloatILj18ELin200000ELi200000EED1Ev
; demangled: NetStructRangedFloat<18u, -200000, 200000>::~NetStructRangedFloat()
; decoder-mode: arm
003a2f18  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a3698, declared_size=68, range_size=68, mode=arm
; class-group: NetStructRangedFloat<18u, -200000, 200000>
; alias: _ZN20NetStructRangedFloatILj18ELin200000ELi200000EE9TestValueERKf
; demangled: NetStructRangedFloat<18u, -200000, 200000>::TestValue(float const&)
; decoder-mode: arm
003a3698  10 40 2d e9                                      push {r4, lr}
003a369c  00 40 91 e5                                      ldr r4, [r1]
003a36a0  00 10 05 e3                                      movw r1, #0x5000
003a36a4  43 18 4c e3                                      movt r1, #0xc843
003a36a8  04 00 a0 e1                                      mov r0, r4
003a36ac  80 ab fd eb                                      bl #0x30e4b4
003a36b0  00 00 50 e3                                      cmp r0, #0
003a36b4  07 00 00 0a                                      beq #0x3a36d8
003a36b8  00 10 05 e3                                      movw r1, #0x5000
003a36bc  04 00 a0 e1                                      mov r0, r4
003a36c0  43 18 44 e3                                      movt r1, #0x4843
003a36c4  b8 ac fd eb                                      bl #0x30e9ac
003a36c8  00 00 50 e3                                      cmp r0, #0
003a36cc  00 00 a0 e3                                      mov r0, #0
003a36d0  01 00 a0 13                                      movne r0, #1
003a36d4  70 00 ef e6                                      uxtb r0, r0
003a36d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a3764, declared_size=52, range_size=52, mode=arm
; class-group: NetStructRangedFloat<18u, -200000, 200000>
; alias: _ZN20NetStructRangedFloatILj18ELin200000ELi200000EED0Ev
; demangled: NetStructRangedFloat<18u, -200000, 200000>::~NetStructRangedFloat()
; decoder-mode: arm
003a3764  24 30 9f e5                                      ldr r3, [pc, #0x24]
003a3768  24 20 9f e5                                      ldr r2, [pc, #0x24]
003a376c  10 40 2d e9                                      push {r4, lr}
003a3770  03 30 8f e0                                      add r3, pc, r3
003a3774  02 20 93 e7                                      ldr r2, [r3, r2]
003a3778  00 40 a0 e1                                      mov r4, r0
003a377c  08 20 82 e2                                      add r2, r2, #8
003a3780  00 20 80 e5                                      str r2, [r0]
003a3784  2d b3 fd eb                                      bl #0x310440
003a3788  04 00 a0 e1                                      mov r0, r4
003a378c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a3790  20 13 5f 00 a8 10 00 00                          .byte 0x20, 0x13, 0x5f, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x003a3c64, declared_size=96, range_size=96, mode=arm
; class-group: NetStructRangedFloat<18u, -200000, 200000>
; alias: _ZN20NetStructRangedFloatILj18ELin200000ELi200000EE4ReadER12NetBitStream
; demangled: NetStructRangedFloat<18u, -200000, 200000>::Read(NetBitStream&)
; decoder-mode: arm
003a3c64  10 40 2d e9                                      push {r4, lr}
003a3c68  00 40 a0 e1                                      mov r4, r0
003a3c6c  08 d0 4d e2                                      sub sp, sp, #8
003a3c70  01 00 a0 e1                                      mov r0, r1
003a3c74  12 10 a0 e3                                      mov r1, #0x12
003a3c78  6c aa 11 eb                                      bl #0x80e630
003a3c7c  97 a9 fd eb                                      bl #0x30e2e0
003a3c80  fe 11 e0 e3                                      mvn r1, #0x8000003f
003a3c84  de 15 41 e2                                      sub r1, r1, #0x37800000
003a3c88  01 ac fd eb                                      bl #0x30ec94
003a3c8c  00 10 05 e3                                      movw r1, #0x5000
003a3c90  c3 18 44 e3                                      movt r1, #0x48c3
003a3c94  34 ac fd eb                                      bl #0x30ed6c
003a3c98  00 10 05 e3                                      movw r1, #0x5000
003a3c9c  43 18 44 e3                                      movt r1, #0x4843
003a3ca0  c1 a9 fd eb                                      bl #0x30e3ac
003a3ca4  08 10 8d e2                                      add r1, sp, #8
003a3ca8  04 00 21 e5                                      str r0, [r1, #-4]!
003a3cac  00 30 94 e5                                      ldr r3, [r4]
003a3cb0  04 00 a0 e1                                      mov r0, r4
003a3cb4  0f e0 a0 e1                                      mov lr, pc
003a3cb8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003a3cbc  08 d0 8d e2                                      add sp, sp, #8
003a3cc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a3d7c, declared_size=72, range_size=72, mode=arm
; class-group: NetStructRangedFloat<18u, -200000, 200000>
; alias: _ZN20NetStructRangedFloatILj18ELin200000ELi200000EE5WriteER12NetBitStream
; demangled: NetStructRangedFloat<18u, -200000, 200000>::Write(NetBitStream&)
; decoder-mode: arm
003a3d7c  10 40 2d e9                                      push {r4, lr}
003a3d80  01 40 a0 e1                                      mov r4, r1
003a3d84  00 10 05 e3                                      movw r1, #0x5000
003a3d88  20 00 90 e5                                      ldr r0, [r0, #0x20]
003a3d8c  43 18 44 e3                                      movt r1, #0x4843
003a3d90  83 ab fd eb                                      bl #0x30eba4
003a3d94  00 10 05 e3                                      movw r1, #0x5000
003a3d98  c3 18 44 e3                                      movt r1, #0x48c3
003a3d9c  bc ab fd eb                                      bl #0x30ec94
003a3da0  fe 11 e0 e3                                      mvn r1, #0x8000003f
003a3da4  de 15 41 e2                                      sub r1, r1, #0x37800000
003a3da8  ef ab fd eb                                      bl #0x30ed6c
003a3dac  3b 69 14 eb                                      bl #0x8be2a0
003a3db0  12 20 a0 e3                                      mov r2, #0x12
003a3db4  00 10 a0 e1                                      mov r1, r0
003a3db8  04 00 a0 e1                                      mov r0, r4
003a3dbc  10 40 bd e8                                      pop {r4, lr}
003a3dc0  05 aa 11 ea                                      b #0x80e5dc
