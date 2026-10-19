; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003883fc, declared_size=36, range_size=36, mode=arm
; class-group: SimpleTypeProperty<Point3D<float> >
; alias: _ZN18SimpleTypePropertyI7Point3DIfEE17SetToDefaultValueEPv
; demangled: SimpleTypeProperty<Point3D<float> >::SetToDefaultValue(void*)
; decoder-mode: arm
003883fc  04 30 90 e5                                      ldr r3, [r0, #4]
00388400  20 20 90 e5                                      ldr r2, [r0, #0x20]
00388404  03 c0 81 e0                                      add ip, r1, r3
00388408  03 20 81 e7                                      str r2, [r1, r3]
0038840c  24 30 90 e5                                      ldr r3, [r0, #0x24]
00388410  04 30 8c e5                                      str r3, [ip, #4]
00388414  28 30 90 e5                                      ldr r3, [r0, #0x28]
00388418  08 30 8c e5                                      str r3, [ip, #8]
0038841c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038865c, declared_size=32, range_size=32, mode=arm
; class-group: SimpleTypeProperty<Point3D<float> >
; alias: _ZN18SimpleTypePropertyI7Point3DIfEE25SetDefaultValueFromStringEPKc
; demangled: SimpleTypeProperty<Point3D<float> >::SetDefaultValueFromString(char const*)
; decoder-mode: arm
0038865c  00 30 a0 e1                                      mov r3, r0
00388660  00 20 a0 e3                                      mov r2, #0
00388664  01 00 a0 e1                                      mov r0, r1
00388668  20 10 83 e2                                      add r1, r3, #0x20
0038866c  28 20 83 e5                                      str r2, [r3, #0x28]
00388670  20 20 83 e5                                      str r2, [r3, #0x20]
00388674  24 20 83 e5                                      str r2, [r3, #0x24]
00388678  d7 1a fe ea                                      b #0x30f1dc

; FUNCTION 0x0038867c, declared_size=36, range_size=36, mode=arm
; class-group: SimpleTypeProperty<Point3D<float> >
; alias: _ZN18SimpleTypePropertyI7Point3DIfEE10FromStringEPvPKc
; demangled: SimpleTypeProperty<Point3D<float> >::FromString(void*, char const*)
; decoder-mode: arm
0038867c  04 c0 90 e5                                      ldr ip, [r0, #4]
00388680  00 00 a0 e3                                      mov r0, #0
00388684  0c 30 81 e0                                      add r3, r1, ip
00388688  0c 00 81 e7                                      str r0, [r1, ip]
0038868c  08 00 83 e5                                      str r0, [r3, #8]
00388690  04 00 83 e5                                      str r0, [r3, #4]
00388694  03 10 a0 e1                                      mov r1, r3
00388698  02 00 a0 e1                                      mov r0, r2
0038869c  ce 1a fe ea                                      b #0x30f1dc

; FUNCTION 0x003886a0, declared_size=20, range_size=20, mode=arm
; class-group: SimpleTypeProperty<Point3D<float> >
; alias: _ZN18SimpleTypePropertyI7Point3DIfEE14IsDefaultValueEPv
; demangled: SimpleTypeProperty<Point3D<float> >::IsDefaultValue(void*)
; decoder-mode: arm
003886a0  00 30 a0 e1                                      mov r3, r0
003886a4  04 00 90 e5                                      ldr r0, [r0, #4]
003886a8  00 00 81 e0                                      add r0, r1, r0
003886ac  20 10 83 e2                                      add r1, r3, #0x20
003886b0  2d 29 fe ea                                      b #0x312b6c

; FUNCTION 0x00389980, declared_size=72, range_size=72, mode=arm
; class-group: SimpleTypeProperty<Point3D<float> >
; alias: _ZN18SimpleTypePropertyI7Point3DIfEE8ToStringEPv
; demangled: SimpleTypeProperty<Point3D<float> >::ToString(void*)
; decoder-mode: arm
00389980  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00389984  00 40 a0 e1                                      mov r4, r0
00389988  0c d0 4d e2                                      sub sp, sp, #0xc
0038998c  01 0c a0 e3                                      mov r0, #0x100
00389990  02 70 a0 e1                                      mov r7, r2
00389994  01 60 a0 e1                                      mov r6, r1
00389998  ad 1a fe eb                                      bl #0x310454
0038999c  04 10 96 e5                                      ldr r1, [r6, #4]
003899a0  00 50 a0 e1                                      mov r5, r0
003899a4  01 10 87 e0                                      add r1, r7, r1
003899a8  80 15 fe eb                                      bl #0x30efb0
003899ac  04 00 a0 e1                                      mov r0, r4
003899b0  05 10 a0 e1                                      mov r1, r5
003899b4  04 20 8d e2                                      add r2, sp, #4
003899b8  cb 29 fe eb                                      bl #0x3140ec
003899bc  04 00 a0 e1                                      mov r0, r4
003899c0  0c d0 8d e2                                      add sp, sp, #0xc
003899c4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00389ee4, declared_size=196, range_size=196, mode=arm
; class-group: SimpleTypeProperty<Point3D<float> >
; alias: _ZN18SimpleTypePropertyI7Point3DIfEE5CloneEv
; demangled: SimpleTypeProperty<Point3D<float> >::Clone()
; decoder-mode: arm
00389ee4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00389ee8  00 10 a0 e3                                      mov r1, #0
00389eec  00 50 a0 e1                                      mov r5, r0
00389ef0  2c 00 a0 e3                                      mov r0, #0x2c
00389ef4  9d 19 fe eb                                      bl #0x310570
00389ef8  9c 70 9f e5                                      ldr r7, [pc, #0x9c]
00389efc  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00389f00  00 60 a0 e1                                      mov r6, r0
00389f04  07 70 8f e0                                      add r7, pc, r7
00389f08  03 30 97 e7                                      ldr r3, [r7, r3]
00389f0c  00 40 a0 e1                                      mov r4, r0
00389f10  10 10 a0 e3                                      mov r1, #0x10
00389f14  08 30 83 e2                                      add r3, r3, #8
00389f18  08 30 86 e4                                      str r3, [r6], #8
00389f1c  18 60 80 e5                                      str r6, [r0, #0x18]
00389f20  1c 60 80 e5                                      str r6, [r0, #0x1c]
00389f24  06 00 a0 e1                                      mov r0, r6
00389f28  d3 1d fe eb                                      bl #0x31167c
00389f2c  70 20 9f e5                                      ldr r2, [pc, #0x70]
00389f30  18 10 94 e5                                      ldr r1, [r4, #0x18]
00389f34  00 30 a0 e3                                      mov r3, #0
00389f38  02 20 97 e7                                      ldr r2, [r7, r2]
00389f3c  00 00 a0 e3                                      mov r0, #0
00389f40  00 00 c1 e5                                      strb r0, [r1]
00389f44  08 20 82 e2                                      add r2, r2, #8
00389f48  00 20 84 e5                                      str r2, [r4]
00389f4c  28 30 84 e5                                      str r3, [r4, #0x28]
00389f50  20 30 84 e5                                      str r3, [r4, #0x20]
00389f54  24 30 84 e5                                      str r3, [r4, #0x24]
00389f58  04 30 95 e5                                      ldr r3, [r5, #4]
00389f5c  08 20 85 e2                                      add r2, r5, #8
00389f60  02 00 56 e1                                      cmp r6, r2
00389f64  04 30 84 e5                                      str r3, [r4, #4]
00389f68  03 00 00 0a                                      beq #0x389f7c
00389f6c  06 00 a0 e1                                      mov r0, r6
00389f70  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00389f74  18 20 95 e5                                      ldr r2, [r5, #0x18]
00389f78  98 1a fe eb                                      bl #0x3109e0
00389f7c  20 30 95 e5                                      ldr r3, [r5, #0x20]
00389f80  04 00 a0 e1                                      mov r0, r4
00389f84  20 30 84 e5                                      str r3, [r4, #0x20]
00389f88  24 30 95 e5                                      ldr r3, [r5, #0x24]
00389f8c  24 30 84 e5                                      str r3, [r4, #0x24]
00389f90  28 30 95 e5                                      ldr r3, [r5, #0x28]
00389f94  28 30 84 e5                                      str r3, [r4, #0x28]
00389f98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00389f9c  8c ab 60 00 30 23 00 00 44 0b 00 00              .byte 0x8c, 0xab, 0x60, 0x00, 0x30, 0x23, 0x00, 0x00, 0x44, 0x0b, 0x00, 0x00
