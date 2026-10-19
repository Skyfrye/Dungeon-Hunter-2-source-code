; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003f03d8, declared_size=20, range_size=20, mode=arm
; class-group: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >
; alias: _ZN18SimpleTypePropertyISt6vectorI7Point3DIfESaIS2_EEE14IsDefaultValueEPv
; demangled: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >::IsDefaultValue(void*)
; decoder-mode: arm
003f03d8  00 30 a0 e1                                      mov r3, r0
003f03dc  04 00 90 e5                                      ldr r0, [r0, #4]
003f03e0  00 00 81 e0                                      add r0, r1, r0
003f03e4  20 10 83 e2                                      add r1, r3, #0x20
003f03e8  d5 ff ff ea                                      b #0x3f0344

; FUNCTION 0x003f3858, declared_size=72, range_size=72, mode=arm
; class-group: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >
; alias: _ZN18SimpleTypePropertyISt6vectorI7Point3DIfESaIS2_EEE8ToStringEPv
; demangled: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >::ToString(void*)
; decoder-mode: arm
003f3858  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003f385c  00 40 a0 e1                                      mov r4, r0
003f3860  0c d0 4d e2                                      sub sp, sp, #0xc
003f3864  01 0c a0 e3                                      mov r0, #0x100
003f3868  02 70 a0 e1                                      mov r7, r2
003f386c  01 60 a0 e1                                      mov r6, r1
003f3870  f7 72 fc eb                                      bl #0x310454
003f3874  04 10 96 e5                                      ldr r1, [r6, #4]
003f3878  00 50 a0 e1                                      mov r5, r0
003f387c  01 10 87 e0                                      add r1, r7, r1
003f3880  76 6d fc eb                                      bl #0x30ee60
003f3884  04 00 a0 e1                                      mov r0, r4
003f3888  05 10 a0 e1                                      mov r1, r5
003f388c  04 20 8d e2                                      add r2, sp, #4
003f3890  15 82 fc eb                                      bl #0x3140ec
003f3894  04 00 a0 e1                                      mov r0, r4
003f3898  0c d0 8d e2                                      add sp, sp, #0xc
003f389c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x003f8eb4, declared_size=20, range_size=20, mode=arm
; class-group: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >
; alias: _ZN18SimpleTypePropertyISt6vectorI7Point3DIfESaIS2_EEE17SetToDefaultValueEPv
; demangled: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >::SetToDefaultValue(void*)
; decoder-mode: arm
003f8eb4  00 30 a0 e1                                      mov r3, r0
003f8eb8  04 00 90 e5                                      ldr r0, [r0, #4]
003f8ebc  00 00 81 e0                                      add r0, r1, r0
003f8ec0  20 10 83 e2                                      add r1, r3, #0x20
003f8ec4  5d ff ff ea                                      b #0x3f8c40

; FUNCTION 0x003f8ec8, declared_size=180, range_size=180, mode=arm
; class-group: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >
; alias: _ZN18SimpleTypePropertyISt6vectorI7Point3DIfESaIS2_EEE5CloneEv
; demangled: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >::Clone()
; decoder-mode: arm
003f8ec8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003f8ecc  00 10 a0 e3                                      mov r1, #0
003f8ed0  00 50 a0 e1                                      mov r5, r0
003f8ed4  2c 00 a0 e3                                      mov r0, #0x2c
003f8ed8  a4 5d fc eb                                      bl #0x310570
003f8edc  8c 70 9f e5                                      ldr r7, [pc, #0x8c]
003f8ee0  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003f8ee4  00 60 a0 e1                                      mov r6, r0
003f8ee8  07 70 8f e0                                      add r7, pc, r7
003f8eec  03 30 97 e7                                      ldr r3, [r7, r3]
003f8ef0  00 40 a0 e1                                      mov r4, r0
003f8ef4  10 10 a0 e3                                      mov r1, #0x10
003f8ef8  08 30 83 e2                                      add r3, r3, #8
003f8efc  08 30 86 e4                                      str r3, [r6], #8
003f8f00  18 60 80 e5                                      str r6, [r0, #0x18]
003f8f04  1c 60 80 e5                                      str r6, [r0, #0x1c]
003f8f08  06 00 a0 e1                                      mov r0, r6
003f8f0c  da 61 fc eb                                      bl #0x31167c
003f8f10  60 20 9f e5                                      ldr r2, [pc, #0x60]
003f8f14  18 10 94 e5                                      ldr r1, [r4, #0x18]
003f8f18  00 30 a0 e3                                      mov r3, #0
003f8f1c  02 20 97 e7                                      ldr r2, [r7, r2]
003f8f20  00 30 c1 e5                                      strb r3, [r1]
003f8f24  28 30 84 e5                                      str r3, [r4, #0x28]
003f8f28  08 20 82 e2                                      add r2, r2, #8
003f8f2c  00 20 84 e5                                      str r2, [r4]
003f8f30  20 30 84 e5                                      str r3, [r4, #0x20]
003f8f34  24 30 84 e5                                      str r3, [r4, #0x24]
003f8f38  04 30 95 e5                                      ldr r3, [r5, #4]
003f8f3c  08 20 85 e2                                      add r2, r5, #8
003f8f40  02 00 56 e1                                      cmp r6, r2
003f8f44  04 30 84 e5                                      str r3, [r4, #4]
003f8f48  03 00 00 0a                                      beq #0x3f8f5c
003f8f4c  06 00 a0 e1                                      mov r0, r6
003f8f50  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
003f8f54  18 20 95 e5                                      ldr r2, [r5, #0x18]
003f8f58  a0 5e fc eb                                      bl #0x3109e0
003f8f5c  20 10 85 e2                                      add r1, r5, #0x20
003f8f60  20 00 84 e2                                      add r0, r4, #0x20
003f8f64  35 ff ff eb                                      bl #0x3f8c40
003f8f68  04 00 a0 e1                                      mov r0, r4
003f8f6c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003f8f70  a8 bb 59 00 30 23 00 00 98 36 00 00              .byte 0xa8, 0xbb, 0x59, 0x00, 0x30, 0x23, 0x00, 0x00, 0x98, 0x36, 0x00, 0x00

; FUNCTION 0x003f8f7c, declared_size=76, range_size=76, mode=arm
; class-group: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >
; alias: _ZN18SimpleTypePropertyISt6vectorI7Point3DIfESaIS2_EEE25SetDefaultValueFromStringEPKc
; demangled: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >::SetDefaultValueFromString(char const*)
; decoder-mode: arm
003f8f7c  70 40 2d e9                                      push {r4, r5, r6, lr}
003f8f80  10 d0 4d e2                                      sub sp, sp, #0x10
003f8f84  20 40 80 e2                                      add r4, r0, #0x20
003f8f88  04 50 8d e2                                      add r5, sp, #4
003f8f8c  00 30 a0 e3                                      mov r3, #0
003f8f90  01 60 a0 e1                                      mov r6, r1
003f8f94  04 00 a0 e1                                      mov r0, r4
003f8f98  05 10 a0 e1                                      mov r1, r5
003f8f9c  0c 30 8d e5                                      str r3, [sp, #0xc]
003f8fa0  04 30 8d e5                                      str r3, [sp, #4]
003f8fa4  08 30 8d e5                                      str r3, [sp, #8]
003f8fa8  24 ff ff eb                                      bl #0x3f8c40
003f8fac  05 00 a0 e1                                      mov r0, r5
003f8fb0  59 34 fd eb                                      bl #0x34611c
003f8fb4  06 00 a0 e1                                      mov r0, r6
003f8fb8  04 10 a0 e1                                      mov r1, r4
003f8fbc  13 58 fc eb                                      bl #0x30f010
003f8fc0  10 d0 8d e2                                      add sp, sp, #0x10
003f8fc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003f8fc8, declared_size=80, range_size=80, mode=arm
; class-group: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >
; alias: _ZN18SimpleTypePropertyISt6vectorI7Point3DIfESaIS2_EEE10FromStringEPvPKc
; demangled: SimpleTypeProperty<std::vector<Point3D<float>, std::allocator<Point3D<float> > > >::FromString(void*, char const*)
; decoder-mode: arm
003f8fc8  70 40 2d e9                                      push {r4, r5, r6, lr}
003f8fcc  04 40 90 e5                                      ldr r4, [r0, #4]
003f8fd0  10 d0 4d e2                                      sub sp, sp, #0x10
003f8fd4  04 50 8d e2                                      add r5, sp, #4
003f8fd8  04 40 81 e0                                      add r4, r1, r4
003f8fdc  00 30 a0 e3                                      mov r3, #0
003f8fe0  05 10 a0 e1                                      mov r1, r5
003f8fe4  04 00 a0 e1                                      mov r0, r4
003f8fe8  02 60 a0 e1                                      mov r6, r2
003f8fec  0c 30 8d e5                                      str r3, [sp, #0xc]
003f8ff0  04 30 8d e5                                      str r3, [sp, #4]
003f8ff4  08 30 8d e5                                      str r3, [sp, #8]
003f8ff8  10 ff ff eb                                      bl #0x3f8c40
003f8ffc  05 00 a0 e1                                      mov r0, r5
003f9000  45 34 fd eb                                      bl #0x34611c
003f9004  06 00 a0 e1                                      mov r0, r6
003f9008  04 10 a0 e1                                      mov r1, r4
003f900c  ff 57 fc eb                                      bl #0x30f010
003f9010  10 d0 8d e2                                      add sp, sp, #0x10
003f9014  70 80 bd e8                                      pop {r4, r5, r6, pc}
