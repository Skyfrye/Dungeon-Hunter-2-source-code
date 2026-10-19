; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038ae00, declared_size=28, range_size=28, mode=arm
; class-group: SimpleTypeProperty<int>
; alias: _ZN18SimpleTypePropertyIiE14IsDefaultValueEPv
; demangled: SimpleTypeProperty<int>::IsDefaultValue(void*)
; decoder-mode: arm
0038ae00  04 20 90 e5                                      ldr r2, [r0, #4]
0038ae04  20 30 90 e5                                      ldr r3, [r0, #0x20]
0038ae08  02 00 91 e7                                      ldr r0, [r1, r2]
0038ae0c  03 00 50 e1                                      cmp r0, r3
0038ae10  00 00 a0 13                                      movne r0, #0
0038ae14  01 00 a0 03                                      moveq r0, #1
0038ae18  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038ae1c, declared_size=16, range_size=16, mode=arm
; class-group: SimpleTypeProperty<int>
; alias: _ZN18SimpleTypePropertyIiE17SetToDefaultValueEPv
; demangled: SimpleTypeProperty<int>::SetToDefaultValue(void*)
; decoder-mode: arm
0038ae1c  20 20 90 e5                                      ldr r2, [r0, #0x20]
0038ae20  04 30 90 e5                                      ldr r3, [r0, #4]
0038ae24  03 20 81 e7                                      str r2, [r1, r3]
0038ae28  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038ba94, declared_size=24, range_size=24, mode=arm
; class-group: SimpleTypeProperty<int>
; alias: _ZN18SimpleTypePropertyIiE25SetDefaultValueFromStringEPKc
; demangled: SimpleTypeProperty<int>::SetDefaultValueFromString(char const*)
; decoder-mode: arm
0038ba94  00 30 a0 e1                                      mov r3, r0
0038ba98  00 20 a0 e3                                      mov r2, #0
0038ba9c  20 20 a3 e5                                      str r2, [r3, #0x20]!
0038baa0  01 00 a0 e1                                      mov r0, r1
0038baa4  03 10 a0 e1                                      mov r1, r3
0038baa8  63 0d fe ea                                      b #0x30f03c

; FUNCTION 0x0038baac, declared_size=24, range_size=24, mode=arm
; class-group: SimpleTypeProperty<int>
; alias: _ZN18SimpleTypePropertyIiE10FromStringEPvPKc
; demangled: SimpleTypeProperty<int>::FromString(void*, char const*)
; decoder-mode: arm
0038baac  04 30 90 e5                                      ldr r3, [r0, #4]
0038bab0  00 00 a0 e3                                      mov r0, #0
0038bab4  03 00 81 e7                                      str r0, [r1, r3]
0038bab8  03 10 81 e0                                      add r1, r1, r3
0038babc  02 00 a0 e1                                      mov r0, r2
0038bac0  5d 0d fe ea                                      b #0x30f03c

; FUNCTION 0x0038bac4, declared_size=72, range_size=72, mode=arm
; class-group: SimpleTypeProperty<int>
; alias: _ZN18SimpleTypePropertyIiE8ToStringEPv
; demangled: SimpleTypeProperty<int>::ToString(void*)
; decoder-mode: arm
0038bac4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0038bac8  00 40 a0 e1                                      mov r4, r0
0038bacc  0c d0 4d e2                                      sub sp, sp, #0xc
0038bad0  01 0c a0 e3                                      mov r0, #0x100
0038bad4  02 70 a0 e1                                      mov r7, r2
0038bad8  01 60 a0 e1                                      mov r6, r1
0038badc  5c 12 fe eb                                      bl #0x310454
0038bae0  04 10 96 e5                                      ldr r1, [r6, #4]
0038bae4  00 50 a0 e1                                      mov r5, r0
0038bae8  01 10 87 e0                                      add r1, r7, r1
0038baec  eb 0c fe eb                                      bl #0x30eea0
0038baf0  04 00 a0 e1                                      mov r0, r4
0038baf4  05 10 a0 e1                                      mov r1, r5
0038baf8  04 20 8d e2                                      add r2, sp, #4
0038bafc  7a 21 fe eb                                      bl #0x3140ec
0038bb00  04 00 a0 e1                                      mov r0, r4
0038bb04  0c d0 8d e2                                      add sp, sp, #0xc
0038bb08  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0038c08c, declared_size=164, range_size=164, mode=arm
; class-group: SimpleTypeProperty<int>
; alias: _ZN18SimpleTypePropertyIiE5CloneEv
; demangled: SimpleTypeProperty<int>::Clone()
; decoder-mode: arm
0038c08c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038c090  00 10 a0 e3                                      mov r1, #0
0038c094  00 50 a0 e1                                      mov r5, r0
0038c098  24 00 a0 e3                                      mov r0, #0x24
0038c09c  33 11 fe eb                                      bl #0x310570
0038c0a0  7c 70 9f e5                                      ldr r7, [pc, #0x7c]
0038c0a4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0038c0a8  00 60 a0 e1                                      mov r6, r0
0038c0ac  07 70 8f e0                                      add r7, pc, r7
0038c0b0  03 30 97 e7                                      ldr r3, [r7, r3]
0038c0b4  00 40 a0 e1                                      mov r4, r0
0038c0b8  10 10 a0 e3                                      mov r1, #0x10
0038c0bc  08 30 83 e2                                      add r3, r3, #8
0038c0c0  08 30 86 e4                                      str r3, [r6], #8
0038c0c4  18 60 80 e5                                      str r6, [r0, #0x18]
0038c0c8  1c 60 80 e5                                      str r6, [r0, #0x1c]
0038c0cc  06 00 a0 e1                                      mov r0, r6
0038c0d0  69 15 fe eb                                      bl #0x31167c
0038c0d4  50 30 9f e5                                      ldr r3, [pc, #0x50]
0038c0d8  18 20 94 e5                                      ldr r2, [r4, #0x18]
0038c0dc  00 10 a0 e3                                      mov r1, #0
0038c0e0  03 30 97 e7                                      ldr r3, [r7, r3]
0038c0e4  00 10 c2 e5                                      strb r1, [r2]
0038c0e8  08 20 85 e2                                      add r2, r5, #8
0038c0ec  08 30 83 e2                                      add r3, r3, #8
0038c0f0  00 30 84 e5                                      str r3, [r4]
0038c0f4  04 30 95 e5                                      ldr r3, [r5, #4]
0038c0f8  02 00 56 e1                                      cmp r6, r2
0038c0fc  04 30 84 e5                                      str r3, [r4, #4]
0038c100  03 00 00 0a                                      beq #0x38c114
0038c104  06 00 a0 e1                                      mov r0, r6
0038c108  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0038c10c  18 20 95 e5                                      ldr r2, [r5, #0x18]
0038c110  32 12 fe eb                                      bl #0x3109e0
0038c114  20 30 95 e5                                      ldr r3, [r5, #0x20]
0038c118  04 00 a0 e1                                      mov r0, r4
0038c11c  20 30 84 e5                                      str r3, [r4, #0x20]
0038c120  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0038c124  e4 89 60 00 30 23 00 00 90 25 00 00              .byte 0xe4, 0x89, 0x60, 0x00, 0x30, 0x23, 0x00, 0x00, 0x90, 0x25, 0x00, 0x00
