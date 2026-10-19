; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a357c, declared_size=116, range_size=116, mode=arm
; class-group: SimpleTypeProperty<Point2D<int> >
; alias: _ZN18SimpleTypePropertyI7Point2DIiEE14IsDefaultValueEPv
; demangled: SimpleTypeProperty<Point2D<int> >::IsDefaultValue(void*)
; decoder-mode: arm
003a357c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003a3580  04 30 90 e5                                      ldr r3, [r0, #4]
003a3584  00 40 a0 e1                                      mov r4, r0
003a3588  24 50 90 e5                                      ldr r5, [r0, #0x24]
003a358c  03 00 91 e7                                      ldr r0, [r1, r3]
003a3590  03 30 81 e0                                      add r3, r1, r3
003a3594  04 60 93 e5                                      ldr r6, [r3, #4]
003a3598  f1 ac fd eb                                      bl #0x30e964
003a359c  00 70 a0 e1                                      mov r7, r0
003a35a0  20 00 94 e5                                      ldr r0, [r4, #0x20]
003a35a4  ee ac fd eb                                      bl #0x30e964
003a35a8  00 10 a0 e1                                      mov r1, r0
003a35ac  07 00 a0 e1                                      mov r0, r7
003a35b0  75 aa fd eb                                      bl #0x30df8c
003a35b4  00 00 50 e3                                      cmp r0, #0
003a35b8  0b 00 00 0a                                      beq #0x3a35ec
003a35bc  06 00 a0 e1                                      mov r0, r6
003a35c0  e7 ac fd eb                                      bl #0x30e964
003a35c4  00 40 a0 e1                                      mov r4, r0
003a35c8  05 00 a0 e1                                      mov r0, r5
003a35cc  e4 ac fd eb                                      bl #0x30e964
003a35d0  00 10 a0 e1                                      mov r1, r0
003a35d4  04 00 a0 e1                                      mov r0, r4
003a35d8  6b aa fd eb                                      bl #0x30df8c
003a35dc  00 00 50 e3                                      cmp r0, #0
003a35e0  00 00 a0 e3                                      mov r0, #0
003a35e4  01 00 a0 13                                      movne r0, #1
003a35e8  70 00 ef e6                                      uxtb r0, r0
003a35ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003a35f0, declared_size=28, range_size=28, mode=arm
; class-group: SimpleTypeProperty<Point2D<int> >
; alias: _ZN18SimpleTypePropertyI7Point2DIiEE17SetToDefaultValueEPv
; demangled: SimpleTypeProperty<Point2D<int> >::SetToDefaultValue(void*)
; decoder-mode: arm
003a35f0  04 30 90 e5                                      ldr r3, [r0, #4]
003a35f4  20 20 90 e5                                      ldr r2, [r0, #0x20]
003a35f8  03 c0 81 e0                                      add ip, r1, r3
003a35fc  03 20 81 e7                                      str r2, [r1, r3]
003a3600  24 30 90 e5                                      ldr r3, [r0, #0x24]
003a3604  04 30 8c e5                                      str r3, [ip, #4]
003a3608  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a66bc, declared_size=28, range_size=28, mode=arm
; class-group: SimpleTypeProperty<Point2D<int> >
; alias: _ZN18SimpleTypePropertyI7Point2DIiEE25SetDefaultValueFromStringEPKc
; demangled: SimpleTypeProperty<Point2D<int> >::SetDefaultValueFromString(char const*)
; decoder-mode: arm
003a66bc  00 30 a0 e1                                      mov r3, r0
003a66c0  00 20 a0 e3                                      mov r2, #0
003a66c4  24 20 80 e5                                      str r2, [r0, #0x24]
003a66c8  01 00 a0 e1                                      mov r0, r1
003a66cc  20 10 83 e2                                      add r1, r3, #0x20
003a66d0  20 20 83 e5                                      str r2, [r3, #0x20]
003a66d4  5d a2 fd ea                                      b #0x30f050

; FUNCTION 0x003a66d8, declared_size=32, range_size=32, mode=arm
; class-group: SimpleTypeProperty<Point2D<int> >
; alias: _ZN18SimpleTypePropertyI7Point2DIiEE10FromStringEPvPKc
; demangled: SimpleTypeProperty<Point2D<int> >::FromString(void*, char const*)
; decoder-mode: arm
003a66d8  04 00 90 e5                                      ldr r0, [r0, #4]
003a66dc  00 c0 a0 e3                                      mov ip, #0
003a66e0  00 30 81 e0                                      add r3, r1, r0
003a66e4  00 c0 81 e7                                      str ip, [r1, r0]
003a66e8  02 00 a0 e1                                      mov r0, r2
003a66ec  03 10 a0 e1                                      mov r1, r3
003a66f0  04 c0 83 e5                                      str ip, [r3, #4]
003a66f4  55 a2 fd ea                                      b #0x30f050

; FUNCTION 0x003a926c, declared_size=72, range_size=72, mode=arm
; class-group: SimpleTypeProperty<Point2D<int> >
; alias: _ZN18SimpleTypePropertyI7Point2DIiEE8ToStringEPv
; demangled: SimpleTypeProperty<Point2D<int> >::ToString(void*)
; decoder-mode: arm
003a926c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003a9270  00 40 a0 e1                                      mov r4, r0
003a9274  0c d0 4d e2                                      sub sp, sp, #0xc
003a9278  01 0c a0 e3                                      mov r0, #0x100
003a927c  02 70 a0 e1                                      mov r7, r2
003a9280  01 60 a0 e1                                      mov r6, r1
003a9284  72 9c fd eb                                      bl #0x310454
003a9288  04 10 96 e5                                      ldr r1, [r6, #4]
003a928c  00 50 a0 e1                                      mov r5, r0
003a9290  01 10 87 e0                                      add r1, r7, r1
003a9294  fa 96 fd eb                                      bl #0x30ee84
003a9298  04 00 a0 e1                                      mov r0, r4
003a929c  05 10 a0 e1                                      mov r1, r5
003a92a0  04 20 8d e2                                      add r2, sp, #4
003a92a4  90 ab fd eb                                      bl #0x3140ec
003a92a8  04 00 a0 e1                                      mov r0, r4
003a92ac  0c d0 8d e2                                      add sp, sp, #0xc
003a92b0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x003a98e8, declared_size=180, range_size=180, mode=arm
; class-group: SimpleTypeProperty<Point2D<int> >
; alias: _ZN18SimpleTypePropertyI7Point2DIiEE5CloneEv
; demangled: SimpleTypeProperty<Point2D<int> >::Clone()
; decoder-mode: arm
003a98e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003a98ec  00 10 a0 e3                                      mov r1, #0
003a98f0  00 50 a0 e1                                      mov r5, r0
003a98f4  28 00 a0 e3                                      mov r0, #0x28
003a98f8  1c 9b fd eb                                      bl #0x310570
003a98fc  8c 70 9f e5                                      ldr r7, [pc, #0x8c]
003a9900  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003a9904  00 60 a0 e1                                      mov r6, r0
003a9908  07 70 8f e0                                      add r7, pc, r7
003a990c  03 30 97 e7                                      ldr r3, [r7, r3]
003a9910  00 40 a0 e1                                      mov r4, r0
003a9914  10 10 a0 e3                                      mov r1, #0x10
003a9918  08 30 83 e2                                      add r3, r3, #8
003a991c  08 30 86 e4                                      str r3, [r6], #8
003a9920  18 60 80 e5                                      str r6, [r0, #0x18]
003a9924  1c 60 80 e5                                      str r6, [r0, #0x1c]
003a9928  06 00 a0 e1                                      mov r0, r6
003a992c  52 9f fd eb                                      bl #0x31167c
003a9930  60 20 9f e5                                      ldr r2, [pc, #0x60]
003a9934  18 10 94 e5                                      ldr r1, [r4, #0x18]
003a9938  00 30 a0 e3                                      mov r3, #0
003a993c  02 20 97 e7                                      ldr r2, [r7, r2]
003a9940  00 30 c1 e5                                      strb r3, [r1]
003a9944  24 30 84 e5                                      str r3, [r4, #0x24]
003a9948  08 20 82 e2                                      add r2, r2, #8
003a994c  00 20 84 e5                                      str r2, [r4]
003a9950  20 30 84 e5                                      str r3, [r4, #0x20]
003a9954  04 30 95 e5                                      ldr r3, [r5, #4]
003a9958  08 20 85 e2                                      add r2, r5, #8
003a995c  02 00 56 e1                                      cmp r6, r2
003a9960  04 30 84 e5                                      str r3, [r4, #4]
003a9964  03 00 00 0a                                      beq #0x3a9978
003a9968  06 00 a0 e1                                      mov r0, r6
003a996c  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
003a9970  18 20 95 e5                                      ldr r2, [r5, #0x18]
003a9974  19 9c fd eb                                      bl #0x3109e0
003a9978  20 30 95 e5                                      ldr r3, [r5, #0x20]
003a997c  04 00 a0 e1                                      mov r0, r4
003a9980  20 30 84 e5                                      str r3, [r4, #0x20]
003a9984  24 30 95 e5                                      ldr r3, [r5, #0x24]
003a9988  24 30 84 e5                                      str r3, [r4, #0x24]
003a998c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003a9990  88 b1 5e 00 30 23 00 00 30 21 00 00              .byte 0x88, 0xb1, 0x5e, 0x00, 0x30, 0x23, 0x00, 0x00, 0x30, 0x21, 0x00, 0x00
