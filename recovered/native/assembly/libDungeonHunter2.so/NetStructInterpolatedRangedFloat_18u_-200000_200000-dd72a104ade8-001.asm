; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a2f1c, declared_size=8, range_size=8, mode=arm
; class-group: NetStructInterpolatedRangedFloat<18u, -200000, 200000>
; alias: _ZThn36_N32NetStructInterpolatedRangedFloatILj18ELin200000ELi200000EED1Ev
; demangled: non-virtual thunk to NetStructInterpolatedRangedFloat<18u, -200000, 200000>::~NetStructInterpolatedRangedFloat()
; decoder-mode: arm
003a2f1c  24 00 40 e2                                      sub r0, r0, #0x24
003a2f20  ff ff ff ea                                      b #0x3a2f24

; FUNCTION 0x003a2f24, declared_size=4, range_size=4, mode=arm
; class-group: NetStructInterpolatedRangedFloat<18u, -200000, 200000>
; alias: _ZN32NetStructInterpolatedRangedFloatILj18ELin200000ELi200000EED1Ev
; demangled: NetStructInterpolatedRangedFloat<18u, -200000, 200000>::~NetStructInterpolatedRangedFloat()
; decoder-mode: arm
003a2f24  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a3800, declared_size=8, range_size=8, mode=arm
; class-group: NetStructInterpolatedRangedFloat<18u, -200000, 200000>
; alias: _ZThn36_N32NetStructInterpolatedRangedFloatILj18ELin200000ELi200000EED0Ev
; demangled: non-virtual thunk to NetStructInterpolatedRangedFloat<18u, -200000, 200000>::~NetStructInterpolatedRangedFloat()
; decoder-mode: arm
003a3800  24 00 40 e2                                      sub r0, r0, #0x24
003a3804  ff ff ff ea                                      b #0x3a3808

; FUNCTION 0x003a3808, declared_size=72, range_size=72, mode=arm
; class-group: NetStructInterpolatedRangedFloat<18u, -200000, 200000>
; alias: _ZN32NetStructInterpolatedRangedFloatILj18ELin200000ELi200000EED0Ev
; demangled: NetStructInterpolatedRangedFloat<18u, -200000, 200000>::~NetStructInterpolatedRangedFloat()
; decoder-mode: arm
003a3808  34 30 9f e5                                      ldr r3, [pc, #0x34]
003a380c  34 10 9f e5                                      ldr r1, [pc, #0x34]
003a3810  34 20 9f e5                                      ldr r2, [pc, #0x34]
003a3814  03 30 8f e0                                      add r3, pc, r3
003a3818  01 10 93 e7                                      ldr r1, [r3, r1]
003a381c  02 20 93 e7                                      ldr r2, [r3, r2]
003a3820  10 40 2d e9                                      push {r4, lr}
003a3824  08 10 81 e2                                      add r1, r1, #8
003a3828  08 20 82 e2                                      add r2, r2, #8
003a382c  00 40 a0 e1                                      mov r4, r0
003a3830  24 10 80 e5                                      str r1, [r0, #0x24]
003a3834  00 20 80 e5                                      str r2, [r0]
003a3838  00 b3 fd eb                                      bl #0x310440
003a383c  04 00 a0 e1                                      mov r0, r4
003a3840  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a3844  7c 12 5f 00 8c 1c 00 00 a8 10 00 00              .byte 0x7c, 0x12, 0x5f, 0x00, 0x8c, 0x1c, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x003a3f50, declared_size=16, range_size=16, mode=arm
; class-group: NetStructInterpolatedRangedFloat<18u, -200000, 200000>
; alias: _ZN32NetStructInterpolatedRangedFloatILj18ELin200000ELi200000EE8PostLoadEj
; demangled: NetStructInterpolatedRangedFloat<18u, -200000, 200000>::PostLoad(unsigned int)
; decoder-mode: arm
003a3f50  01 20 a0 e1                                      mov r2, r1
003a3f54  20 10 90 e5                                      ldr r1, [r0, #0x20]
003a3f58  24 00 80 e2                                      add r0, r0, #0x24
003a3f5c  c0 ff ff ea                                      b #0x3a3e64

; FUNCTION 0x003a681c, declared_size=260, range_size=260, mode=arm
; class-group: NetStructInterpolatedRangedFloat<18u, -200000, 200000>
; alias: _ZN32NetStructInterpolatedRangedFloatILj18ELin200000ELi200000EEC1Ef
; demangled: NetStructInterpolatedRangedFloat<18u, -200000, 200000>::NetStructInterpolatedRangedFloat(float)
; decoder-mode: arm
003a681c  70 43 2d e9                                      push {r4, r5, r6, r8, sb, lr}
003a6820  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
003a6824  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
003a6828  00 40 a0 e1                                      mov r4, r0
003a682c  05 50 8f e0                                      add r5, pc, r5
003a6830  03 30 95 e7                                      ldr r3, [r5, r3]
003a6834  00 20 a0 e3                                      mov r2, #0
003a6838  01 60 a0 e1                                      mov r6, r1
003a683c  08 30 83 e2                                      add r3, r3, #8
003a6840  00 10 e0 e3                                      mvn r1, #0
003a6844  12 00 a0 e3                                      mov r0, #0x12
003a6848  00 80 a0 e3                                      mov r8, #0
003a684c  00 90 a0 e3                                      mov sb, #0
003a6850  04 00 84 e5                                      str r0, [r4, #4]
003a6854  14 10 84 e5                                      str r1, [r4, #0x14]
003a6858  10 10 84 e5                                      str r1, [r4, #0x10]
003a685c  f8 80 c4 e1                                      strd r8, sb, [r4, #8]
003a6860  1c 20 c4 e5                                      strb r2, [r4, #0x1c]
003a6864  00 30 84 e5                                      str r3, [r4]
003a6868  18 20 84 e5                                      str r2, [r4, #0x18]
003a686c  06 00 a0 e1                                      mov r0, r6
003a6870  20 10 94 e5                                      ldr r1, [r4, #0x20]
003a6874  c4 9d fd eb                                      bl #0x30df8c
003a6878  00 00 50 e3                                      cmp r0, #0
003a687c  02 00 00 1a                                      bne #0x3a688c
003a6880  20 60 84 e5                                      str r6, [r4, #0x20]
003a6884  04 00 a0 e1                                      mov r0, r4
003a6888  bd b9 11 eb                                      bl #0x814f84
003a688c  80 30 9f e5                                      ldr r3, [pc, #0x80]
003a6890  80 20 9f e5                                      ldr r2, [pc, #0x80]
003a6894  00 10 a0 e3                                      mov r1, #0
003a6898  03 30 95 e7                                      ldr r3, [r5, r3]
003a689c  02 20 95 e7                                      ldr r2, [r5, r2]
003a68a0  00 00 a0 e3                                      mov r0, #0
003a68a4  08 30 83 e2                                      add r3, r3, #8
003a68a8  24 30 84 e5                                      str r3, [r4, #0x24]
003a68ac  08 20 82 e2                                      add r2, r2, #8
003a68b0  28 30 a0 e3                                      mov r3, #0x28
003a68b4  00 20 84 e5                                      str r2, [r4]
003a68b8  cc 00 84 e5                                      str r0, [r4, #0xcc]
003a68bc  e0 30 84 e5                                      str r3, [r4, #0xe0]
003a68c0  c8 00 84 e5                                      str r0, [r4, #0xc8]
003a68c4  d0 10 84 e5                                      str r1, [r4, #0xd0]
003a68c8  03 00 84 e0                                      add r0, r4, r3
003a68cc  d4 10 84 e5                                      str r1, [r4, #0xd4]
003a68d0  d8 10 84 e5                                      str r1, [r4, #0xd8]
003a68d4  dc 10 84 e5                                      str r1, [r4, #0xdc]
003a68d8  e4 10 84 e5                                      str r1, [r4, #0xe4]
003a68dc  e8 10 84 e5                                      str r1, [r4, #0xe8]
003a68e0  ec 10 84 e5                                      str r1, [r4, #0xec]
003a68e4  a0 20 a0 e3                                      mov r2, #0xa0
003a68e8  dc 9e fd eb                                      bl #0x30e460
003a68ec  28 30 9f e5                                      ldr r3, [pc, #0x28]
003a68f0  04 00 a0 e1                                      mov r0, r4
003a68f4  03 30 95 e7                                      ldr r3, [r5, r3]
003a68f8  38 20 83 e2                                      add r2, r3, #0x38
003a68fc  08 30 83 e2                                      add r3, r3, #8
003a6900  00 30 84 e5                                      str r3, [r4]
003a6904  24 20 84 e5                                      str r2, [r4, #0x24]
003a6908  70 83 bd e8                                      pop {r4, r5, r6, r8, sb, pc}
; mapping-symbol data/literal pool
003a690c  64 e2 5e 00 b0 49 00 00 8c 1c 00 00 b0 18 00 00  .byte 0x64, 0xe2, 0x5e, 0x00, 0xb0, 0x49, 0x00, 0x00, 0x8c, 0x1c, 0x00, 0x00, 0xb0, 0x18, 0x00, 0x00
003a691c  5c 0b 00 00                                      .byte 0x5c, 0x0b, 0x00, 0x00
