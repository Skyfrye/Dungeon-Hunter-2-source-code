; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033de64, declared_size=28, range_size=28, mode=arm
; class-group: SimpleTypeProperty<bool>
; alias: _ZN18SimpleTypePropertyIbE14IsDefaultValueEPv
; demangled: SimpleTypeProperty<bool>::IsDefaultValue(void*)
; decoder-mode: arm
0033de64  04 20 90 e5                                      ldr r2, [r0, #4]
0033de68  20 30 d0 e5                                      ldrb r3, [r0, #0x20]
0033de6c  02 00 d1 e7                                      ldrb r0, [r1, r2]
0033de70  03 00 50 e1                                      cmp r0, r3
0033de74  00 00 a0 13                                      movne r0, #0
0033de78  01 00 a0 03                                      moveq r0, #1
0033de7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033de80, declared_size=16, range_size=16, mode=arm
; class-group: SimpleTypeProperty<bool>
; alias: _ZN18SimpleTypePropertyIbE17SetToDefaultValueEPv
; demangled: SimpleTypeProperty<bool>::SetToDefaultValue(void*)
; decoder-mode: arm
0033de80  20 20 d0 e5                                      ldrb r2, [r0, #0x20]
0033de84  04 30 90 e5                                      ldr r3, [r0, #4]
0033de88  03 20 c1 e7                                      strb r2, [r1, r3]
0033de8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033e580, declared_size=24, range_size=24, mode=arm
; class-group: SimpleTypeProperty<bool>
; alias: _ZN18SimpleTypePropertyIbE25SetDefaultValueFromStringEPKc
; demangled: SimpleTypeProperty<bool>::SetDefaultValueFromString(char const*)
; decoder-mode: arm
0033e580  00 30 a0 e1                                      mov r3, r0
0033e584  00 20 a0 e3                                      mov r2, #0
0033e588  20 20 e3 e5                                      strb r2, [r3, #0x20]!
0033e58c  01 00 a0 e1                                      mov r0, r1
0033e590  03 10 a0 e1                                      mov r1, r3
0033e594  a1 42 ff ea                                      b #0x30f020

; FUNCTION 0x0033e598, declared_size=24, range_size=24, mode=arm
; class-group: SimpleTypeProperty<bool>
; alias: _ZN18SimpleTypePropertyIbE10FromStringEPvPKc
; demangled: SimpleTypeProperty<bool>::FromString(void*, char const*)
; decoder-mode: arm
0033e598  04 30 90 e5                                      ldr r3, [r0, #4]
0033e59c  00 00 a0 e3                                      mov r0, #0
0033e5a0  03 00 c1 e7                                      strb r0, [r1, r3]
0033e5a4  03 10 81 e0                                      add r1, r1, r3
0033e5a8  02 00 a0 e1                                      mov r0, r2
0033e5ac  9b 42 ff ea                                      b #0x30f020

; FUNCTION 0x0033e5b0, declared_size=72, range_size=72, mode=arm
; class-group: SimpleTypeProperty<bool>
; alias: _ZN18SimpleTypePropertyIbE8ToStringEPv
; demangled: SimpleTypeProperty<bool>::ToString(void*)
; decoder-mode: arm
0033e5b0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0033e5b4  00 40 a0 e1                                      mov r4, r0
0033e5b8  0c d0 4d e2                                      sub sp, sp, #0xc
0033e5bc  01 0c a0 e3                                      mov r0, #0x100
0033e5c0  02 70 a0 e1                                      mov r7, r2
0033e5c4  01 60 a0 e1                                      mov r6, r1
0033e5c8  a1 47 ff eb                                      bl #0x310454
0033e5cc  04 10 96 e5                                      ldr r1, [r6, #4]
0033e5d0  00 50 a0 e1                                      mov r5, r0
0033e5d4  01 10 87 e0                                      add r1, r7, r1
0033e5d8  35 42 ff eb                                      bl #0x30eeb4
0033e5dc  04 00 a0 e1                                      mov r0, r4
0033e5e0  05 10 a0 e1                                      mov r1, r5
0033e5e4  04 20 8d e2                                      add r2, sp, #4
0033e5e8  bf 56 ff eb                                      bl #0x3140ec
0033e5ec  04 00 a0 e1                                      mov r0, r4
0033e5f0  0c d0 8d e2                                      add sp, sp, #0xc
0033e5f4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0033eed8, declared_size=164, range_size=164, mode=arm
; class-group: SimpleTypeProperty<bool>
; alias: _ZN18SimpleTypePropertyIbE5CloneEv
; demangled: SimpleTypeProperty<bool>::Clone()
; decoder-mode: arm
0033eed8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033eedc  00 10 a0 e3                                      mov r1, #0
0033eee0  00 50 a0 e1                                      mov r5, r0
0033eee4  24 00 a0 e3                                      mov r0, #0x24
0033eee8  a0 45 ff eb                                      bl #0x310570
0033eeec  7c 70 9f e5                                      ldr r7, [pc, #0x7c]
0033eef0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0033eef4  00 60 a0 e1                                      mov r6, r0
0033eef8  07 70 8f e0                                      add r7, pc, r7
0033eefc  03 30 97 e7                                      ldr r3, [r7, r3]
0033ef00  00 40 a0 e1                                      mov r4, r0
0033ef04  10 10 a0 e3                                      mov r1, #0x10
0033ef08  08 30 83 e2                                      add r3, r3, #8
0033ef0c  08 30 86 e4                                      str r3, [r6], #8
0033ef10  18 60 80 e5                                      str r6, [r0, #0x18]
0033ef14  1c 60 80 e5                                      str r6, [r0, #0x1c]
0033ef18  06 00 a0 e1                                      mov r0, r6
0033ef1c  d6 49 ff eb                                      bl #0x31167c
0033ef20  50 30 9f e5                                      ldr r3, [pc, #0x50]
0033ef24  18 20 94 e5                                      ldr r2, [r4, #0x18]
0033ef28  00 10 a0 e3                                      mov r1, #0
0033ef2c  03 30 97 e7                                      ldr r3, [r7, r3]
0033ef30  00 10 c2 e5                                      strb r1, [r2]
0033ef34  08 20 85 e2                                      add r2, r5, #8
0033ef38  08 30 83 e2                                      add r3, r3, #8
0033ef3c  00 30 84 e5                                      str r3, [r4]
0033ef40  04 30 95 e5                                      ldr r3, [r5, #4]
0033ef44  02 00 56 e1                                      cmp r6, r2
0033ef48  04 30 84 e5                                      str r3, [r4, #4]
0033ef4c  03 00 00 0a                                      beq #0x33ef60
0033ef50  06 00 a0 e1                                      mov r0, r6
0033ef54  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0033ef58  18 20 95 e5                                      ldr r2, [r5, #0x18]
0033ef5c  9f 46 ff eb                                      bl #0x3109e0
0033ef60  20 30 d5 e5                                      ldrb r3, [r5, #0x20]
0033ef64  04 00 a0 e1                                      mov r0, r4
0033ef68  20 30 c4 e5                                      strb r3, [r4, #0x20]
0033ef6c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0033ef70  98 5b 65 00 30 23 00 00 4c 3e 00 00              .byte 0x98, 0x5b, 0x65, 0x00, 0x30, 0x23, 0x00, 0x00, 0x4c, 0x3e, 0x00, 0x00
