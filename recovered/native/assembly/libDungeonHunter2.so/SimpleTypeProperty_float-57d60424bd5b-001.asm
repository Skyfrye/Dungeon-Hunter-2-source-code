; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00394ed4, declared_size=44, range_size=44, mode=arm
; class-group: SimpleTypeProperty<float>
; alias: _ZN18SimpleTypePropertyIfE14IsDefaultValueEPv
; demangled: SimpleTypeProperty<float>::IsDefaultValue(void*)
; decoder-mode: arm
00394ed4  10 40 2d e9                                      push {r4, lr}
00394ed8  04 20 90 e5                                      ldr r2, [r0, #4]
00394edc  00 30 a0 e1                                      mov r3, r0
00394ee0  00 40 a0 e3                                      mov r4, #0
00394ee4  02 00 91 e7                                      ldr r0, [r1, r2]
00394ee8  20 10 93 e5                                      ldr r1, [r3, #0x20]
00394eec  26 e4 fd eb                                      bl #0x30df8c
00394ef0  00 00 50 e3                                      cmp r0, #0
00394ef4  01 40 a0 13                                      movne r4, #1
00394ef8  01 00 04 e2                                      and r0, r4, #1
00394efc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00394f00, declared_size=16, range_size=16, mode=arm
; class-group: SimpleTypeProperty<float>
; alias: _ZN18SimpleTypePropertyIfE17SetToDefaultValueEPv
; demangled: SimpleTypeProperty<float>::SetToDefaultValue(void*)
; decoder-mode: arm
00394f00  20 20 90 e5                                      ldr r2, [r0, #0x20]
00394f04  04 30 90 e5                                      ldr r3, [r0, #4]
00394f08  03 20 81 e7                                      str r2, [r1, r3]
00394f0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00394f98, declared_size=164, range_size=164, mode=arm
; class-group: SimpleTypeProperty<float>
; alias: _ZN18SimpleTypePropertyIfE5CloneEv
; demangled: SimpleTypeProperty<float>::Clone()
; decoder-mode: arm
00394f98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00394f9c  00 10 a0 e3                                      mov r1, #0
00394fa0  00 50 a0 e1                                      mov r5, r0
00394fa4  24 00 a0 e3                                      mov r0, #0x24
00394fa8  70 ed fd eb                                      bl #0x310570
00394fac  7c 70 9f e5                                      ldr r7, [pc, #0x7c]
00394fb0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00394fb4  00 60 a0 e1                                      mov r6, r0
00394fb8  07 70 8f e0                                      add r7, pc, r7
00394fbc  03 30 97 e7                                      ldr r3, [r7, r3]
00394fc0  00 40 a0 e1                                      mov r4, r0
00394fc4  10 10 a0 e3                                      mov r1, #0x10
00394fc8  08 30 83 e2                                      add r3, r3, #8
00394fcc  08 30 86 e4                                      str r3, [r6], #8
00394fd0  18 60 80 e5                                      str r6, [r0, #0x18]
00394fd4  1c 60 80 e5                                      str r6, [r0, #0x1c]
00394fd8  06 00 a0 e1                                      mov r0, r6
00394fdc  a6 f1 fd eb                                      bl #0x31167c
00394fe0  50 30 9f e5                                      ldr r3, [pc, #0x50]
00394fe4  18 20 94 e5                                      ldr r2, [r4, #0x18]
00394fe8  00 10 a0 e3                                      mov r1, #0
00394fec  03 30 97 e7                                      ldr r3, [r7, r3]
00394ff0  00 10 c2 e5                                      strb r1, [r2]
00394ff4  08 20 85 e2                                      add r2, r5, #8
00394ff8  08 30 83 e2                                      add r3, r3, #8
00394ffc  00 30 84 e5                                      str r3, [r4]
00395000  04 30 95 e5                                      ldr r3, [r5, #4]
00395004  02 00 56 e1                                      cmp r6, r2
00395008  04 30 84 e5                                      str r3, [r4, #4]
0039500c  03 00 00 0a                                      beq #0x395020
00395010  06 00 a0 e1                                      mov r0, r6
00395014  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00395018  18 20 95 e5                                      ldr r2, [r5, #0x18]
0039501c  6f ee fd eb                                      bl #0x3109e0
00395020  20 30 95 e5                                      ldr r3, [r5, #0x20]
00395024  04 00 a0 e1                                      mov r0, r4
00395028  20 30 84 e5                                      str r3, [r4, #0x20]
0039502c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00395030  d8 fa 5f 00 30 23 00 00 bc 24 00 00              .byte 0xd8, 0xfa, 0x5f, 0x00, 0x30, 0x23, 0x00, 0x00, 0xbc, 0x24, 0x00, 0x00

; FUNCTION 0x003950c8, declared_size=24, range_size=24, mode=arm
; class-group: SimpleTypeProperty<float>
; alias: _ZN18SimpleTypePropertyIfE25SetDefaultValueFromStringEPKc
; demangled: SimpleTypeProperty<float>::SetDefaultValueFromString(char const*)
; decoder-mode: arm
003950c8  00 30 a0 e1                                      mov r3, r0
003950cc  00 20 a0 e3                                      mov r2, #0
003950d0  20 20 a3 e5                                      str r2, [r3, #0x20]!
003950d4  01 00 a0 e1                                      mov r0, r1
003950d8  03 10 a0 e1                                      mov r1, r3
003950dc  69 e8 fd ea                                      b #0x30f288

; FUNCTION 0x003950e0, declared_size=28, range_size=28, mode=arm
; class-group: SimpleTypeProperty<float>
; alias: _ZN18SimpleTypePropertyIfE10FromStringEPvPKc
; demangled: SimpleTypeProperty<float>::FromString(void*, char const*)
; decoder-mode: arm
003950e0  04 30 90 e5                                      ldr r3, [r0, #4]
003950e4  00 c0 a0 e3                                      mov ip, #0
003950e8  01 00 a0 e1                                      mov r0, r1
003950ec  03 c0 80 e7                                      str ip, [r0, r3]
003950f0  03 10 81 e0                                      add r1, r1, r3
003950f4  02 00 a0 e1                                      mov r0, r2
003950f8  62 e8 fd ea                                      b #0x30f288

; FUNCTION 0x003950fc, declared_size=72, range_size=72, mode=arm
; class-group: SimpleTypeProperty<float>
; alias: _ZN18SimpleTypePropertyIfE8ToStringEPv
; demangled: SimpleTypeProperty<float>::ToString(void*)
; decoder-mode: arm
003950fc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00395100  00 40 a0 e1                                      mov r4, r0
00395104  0c d0 4d e2                                      sub sp, sp, #0xc
00395108  01 0c a0 e3                                      mov r0, #0x100
0039510c  02 70 a0 e1                                      mov r7, r2
00395110  01 60 a0 e1                                      mov r6, r1
00395114  ce ec fd eb                                      bl #0x310454
00395118  04 10 96 e5                                      ldr r1, [r6, #4]
0039511c  00 50 a0 e1                                      mov r5, r0
00395120  01 10 87 e0                                      add r1, r7, r1
00395124  67 e7 fd eb                                      bl #0x30eec8
00395128  04 00 a0 e1                                      mov r0, r4
0039512c  05 10 a0 e1                                      mov r1, r5
00395130  04 20 8d e2                                      add r2, sp, #4
00395134  ec fb fd eb                                      bl #0x3140ec
00395138  04 00 a0 e1                                      mov r0, r4
0039513c  0c d0 8d e2                                      add sp, sp, #0xc
00395140  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
