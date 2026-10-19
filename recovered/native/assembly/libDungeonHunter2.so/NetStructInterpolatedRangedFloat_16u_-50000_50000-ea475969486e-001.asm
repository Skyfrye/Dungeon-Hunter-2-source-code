; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a2f2c, declared_size=8, range_size=8, mode=arm
; class-group: NetStructInterpolatedRangedFloat<16u, -50000, 50000>
; alias: _ZThn36_N32NetStructInterpolatedRangedFloatILj16ELin50000ELi50000EED1Ev
; demangled: non-virtual thunk to NetStructInterpolatedRangedFloat<16u, -50000, 50000>::~NetStructInterpolatedRangedFloat()
; decoder-mode: arm
003a2f2c  24 00 40 e2                                      sub r0, r0, #0x24
003a2f30  ff ff ff ea                                      b #0x3a2f34

; FUNCTION 0x003a2f34, declared_size=4, range_size=4, mode=arm
; class-group: NetStructInterpolatedRangedFloat<16u, -50000, 50000>
; alias: _ZN32NetStructInterpolatedRangedFloatILj16ELin50000ELi50000EED1Ev
; demangled: NetStructInterpolatedRangedFloat<16u, -50000, 50000>::~NetStructInterpolatedRangedFloat()
; decoder-mode: arm
003a2f34  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a3884, declared_size=8, range_size=8, mode=arm
; class-group: NetStructInterpolatedRangedFloat<16u, -50000, 50000>
; alias: _ZThn36_N32NetStructInterpolatedRangedFloatILj16ELin50000ELi50000EED0Ev
; demangled: non-virtual thunk to NetStructInterpolatedRangedFloat<16u, -50000, 50000>::~NetStructInterpolatedRangedFloat()
; decoder-mode: arm
003a3884  24 00 40 e2                                      sub r0, r0, #0x24
003a3888  ff ff ff ea                                      b #0x3a388c

; FUNCTION 0x003a388c, declared_size=72, range_size=72, mode=arm
; class-group: NetStructInterpolatedRangedFloat<16u, -50000, 50000>
; alias: _ZN32NetStructInterpolatedRangedFloatILj16ELin50000ELi50000EED0Ev
; demangled: NetStructInterpolatedRangedFloat<16u, -50000, 50000>::~NetStructInterpolatedRangedFloat()
; decoder-mode: arm
003a388c  34 30 9f e5                                      ldr r3, [pc, #0x34]
003a3890  34 10 9f e5                                      ldr r1, [pc, #0x34]
003a3894  34 20 9f e5                                      ldr r2, [pc, #0x34]
003a3898  03 30 8f e0                                      add r3, pc, r3
003a389c  01 10 93 e7                                      ldr r1, [r3, r1]
003a38a0  02 20 93 e7                                      ldr r2, [r3, r2]
003a38a4  10 40 2d e9                                      push {r4, lr}
003a38a8  08 10 81 e2                                      add r1, r1, #8
003a38ac  08 20 82 e2                                      add r2, r2, #8
003a38b0  00 40 a0 e1                                      mov r4, r0
003a38b4  24 10 80 e5                                      str r1, [r0, #0x24]
003a38b8  00 20 80 e5                                      str r2, [r0]
003a38bc  df b2 fd eb                                      bl #0x310440
003a38c0  04 00 a0 e1                                      mov r0, r4
003a38c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a38c8  f8 11 5f 00 8c 1c 00 00 a8 10 00 00              .byte 0xf8, 0x11, 0x5f, 0x00, 0x8c, 0x1c, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x003a3f60, declared_size=16, range_size=16, mode=arm
; class-group: NetStructInterpolatedRangedFloat<16u, -50000, 50000>
; alias: _ZN32NetStructInterpolatedRangedFloatILj16ELin50000ELi50000EE8PostLoadEj
; demangled: NetStructInterpolatedRangedFloat<16u, -50000, 50000>::PostLoad(unsigned int)
; decoder-mode: arm
003a3f60  01 20 a0 e1                                      mov r2, r1
003a3f64  20 10 90 e5                                      ldr r1, [r0, #0x20]
003a3f68  24 00 80 e2                                      add r0, r0, #0x24
003a3f6c  bc ff ff ea                                      b #0x3a3e64

; FUNCTION 0x003a6920, declared_size=260, range_size=260, mode=arm
; class-group: NetStructInterpolatedRangedFloat<16u, -50000, 50000>
; alias: _ZN32NetStructInterpolatedRangedFloatILj16ELin50000ELi50000EEC1Ef
; demangled: NetStructInterpolatedRangedFloat<16u, -50000, 50000>::NetStructInterpolatedRangedFloat(float)
; decoder-mode: arm
003a6920  70 43 2d e9                                      push {r4, r5, r6, r8, sb, lr}
003a6924  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
003a6928  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
003a692c  00 40 a0 e1                                      mov r4, r0
003a6930  05 50 8f e0                                      add r5, pc, r5
003a6934  03 30 95 e7                                      ldr r3, [r5, r3]
003a6938  00 20 a0 e3                                      mov r2, #0
003a693c  01 60 a0 e1                                      mov r6, r1
003a6940  08 30 83 e2                                      add r3, r3, #8
003a6944  00 10 e0 e3                                      mvn r1, #0
003a6948  10 00 a0 e3                                      mov r0, #0x10
003a694c  00 80 a0 e3                                      mov r8, #0
003a6950  00 90 a0 e3                                      mov sb, #0
003a6954  04 00 84 e5                                      str r0, [r4, #4]
003a6958  14 10 84 e5                                      str r1, [r4, #0x14]
003a695c  10 10 84 e5                                      str r1, [r4, #0x10]
003a6960  f8 80 c4 e1                                      strd r8, sb, [r4, #8]
003a6964  1c 20 c4 e5                                      strb r2, [r4, #0x1c]
003a6968  00 30 84 e5                                      str r3, [r4]
003a696c  18 20 84 e5                                      str r2, [r4, #0x18]
003a6970  06 00 a0 e1                                      mov r0, r6
003a6974  20 10 94 e5                                      ldr r1, [r4, #0x20]
003a6978  83 9d fd eb                                      bl #0x30df8c
003a697c  00 00 50 e3                                      cmp r0, #0
003a6980  02 00 00 1a                                      bne #0x3a6990
003a6984  20 60 84 e5                                      str r6, [r4, #0x20]
003a6988  04 00 a0 e1                                      mov r0, r4
003a698c  7c b9 11 eb                                      bl #0x814f84
003a6990  80 30 9f e5                                      ldr r3, [pc, #0x80]
003a6994  80 20 9f e5                                      ldr r2, [pc, #0x80]
003a6998  00 10 a0 e3                                      mov r1, #0
003a699c  03 30 95 e7                                      ldr r3, [r5, r3]
003a69a0  02 20 95 e7                                      ldr r2, [r5, r2]
003a69a4  00 00 a0 e3                                      mov r0, #0
003a69a8  08 30 83 e2                                      add r3, r3, #8
003a69ac  24 30 84 e5                                      str r3, [r4, #0x24]
003a69b0  08 20 82 e2                                      add r2, r2, #8
003a69b4  28 30 a0 e3                                      mov r3, #0x28
003a69b8  00 20 84 e5                                      str r2, [r4]
003a69bc  cc 00 84 e5                                      str r0, [r4, #0xcc]
003a69c0  e0 30 84 e5                                      str r3, [r4, #0xe0]
003a69c4  c8 00 84 e5                                      str r0, [r4, #0xc8]
003a69c8  d0 10 84 e5                                      str r1, [r4, #0xd0]
003a69cc  03 00 84 e0                                      add r0, r4, r3
003a69d0  d4 10 84 e5                                      str r1, [r4, #0xd4]
003a69d4  d8 10 84 e5                                      str r1, [r4, #0xd8]
003a69d8  dc 10 84 e5                                      str r1, [r4, #0xdc]
003a69dc  e4 10 84 e5                                      str r1, [r4, #0xe4]
003a69e0  e8 10 84 e5                                      str r1, [r4, #0xe8]
003a69e4  ec 10 84 e5                                      str r1, [r4, #0xec]
003a69e8  a0 20 a0 e3                                      mov r2, #0xa0
003a69ec  9b 9e fd eb                                      bl #0x30e460
003a69f0  28 30 9f e5                                      ldr r3, [pc, #0x28]
003a69f4  04 00 a0 e1                                      mov r0, r4
003a69f8  03 30 95 e7                                      ldr r3, [r5, r3]
003a69fc  38 20 83 e2                                      add r2, r3, #0x38
003a6a00  08 30 83 e2                                      add r3, r3, #8
003a6a04  00 30 84 e5                                      str r3, [r4]
003a6a08  24 20 84 e5                                      str r2, [r4, #0x24]
003a6a0c  70 83 bd e8                                      pop {r4, r5, r6, r8, sb, pc}
; mapping-symbol data/literal pool
003a6a10  60 e1 5e 00 b0 49 00 00 8c 1c 00 00 b8 40 00 00  .byte 0x60, 0xe1, 0x5e, 0x00, 0xb0, 0x49, 0x00, 0x00, 0x8c, 0x1c, 0x00, 0x00, 0xb8, 0x40, 0x00, 0x00
003a6a20  24 1c 00 00                                      .byte 0x24, 0x1c, 0x00, 0x00
