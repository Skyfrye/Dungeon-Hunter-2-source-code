; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00387734, declared_size=72, range_size=72, mode=arm
; class-group: SimpleTypeProperty<glitch::core::dimension2d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE14IsDefaultValueEPv
; demangled: SimpleTypeProperty<glitch::core::dimension2d<float> >::IsDefaultValue(void*)
; decoder-mode: arm
00387734  70 40 2d e9                                      push {r4, r5, r6, lr}
00387738  04 30 90 e5                                      ldr r3, [r0, #4]
0038773c  01 50 a0 e1                                      mov r5, r1
00387740  00 40 a0 e1                                      mov r4, r0
00387744  20 10 90 e5                                      ldr r1, [r0, #0x20]
00387748  03 00 95 e7                                      ldr r0, [r5, r3]
0038774c  03 50 85 e0                                      add r5, r5, r3
00387750  0d 1a fe eb                                      bl #0x30df8c
00387754  00 00 50 e3                                      cmp r0, #0
00387758  06 00 00 0a                                      beq #0x387778
0038775c  04 00 95 e5                                      ldr r0, [r5, #4]
00387760  24 10 94 e5                                      ldr r1, [r4, #0x24]
00387764  08 1a fe eb                                      bl #0x30df8c
00387768  00 00 50 e3                                      cmp r0, #0
0038776c  00 00 a0 e3                                      mov r0, #0
00387770  01 00 a0 13                                      movne r0, #1
00387774  70 00 ef e6                                      uxtb r0, r0
00387778  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0038777c, declared_size=24, range_size=24, mode=arm
; class-group: SimpleTypeProperty<glitch::core::dimension2d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE17SetToDefaultValueEPv
; demangled: SimpleTypeProperty<glitch::core::dimension2d<float> >::SetToDefaultValue(void*)
; decoder-mode: arm
0038777c  20 30 90 e5                                      ldr r3, [r0, #0x20]
00387780  04 20 90 e5                                      ldr r2, [r0, #4]
00387784  02 30 a1 e7                                      str r3, [r1, r2]!
00387788  24 30 90 e5                                      ldr r3, [r0, #0x24]
0038778c  04 30 81 e5                                      str r3, [r1, #4]
00387790  1e ff 2f e1                                      bx lr

; FUNCTION 0x00387b18, declared_size=28, range_size=28, mode=arm
; class-group: SimpleTypeProperty<glitch::core::dimension2d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE25SetDefaultValueFromStringEPKc
; demangled: SimpleTypeProperty<glitch::core::dimension2d<float> >::SetDefaultValueFromString(char const*)
; decoder-mode: arm
00387b18  00 30 a0 e1                                      mov r3, r0
00387b1c  00 20 a0 e3                                      mov r2, #0
00387b20  24 20 80 e5                                      str r2, [r0, #0x24]
00387b24  20 20 a3 e5                                      str r2, [r3, #0x20]!
00387b28  01 00 a0 e1                                      mov r0, r1
00387b2c  03 10 a0 e1                                      mov r1, r3
00387b30  db 1d fe ea                                      b #0x30f2a4

; FUNCTION 0x00387b34, declared_size=32, range_size=32, mode=arm
; class-group: SimpleTypeProperty<glitch::core::dimension2d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE10FromStringEPvPKc
; demangled: SimpleTypeProperty<glitch::core::dimension2d<float> >::FromString(void*, char const*)
; decoder-mode: arm
00387b34  04 00 90 e5                                      ldr r0, [r0, #4]
00387b38  00 c0 a0 e3                                      mov ip, #0
00387b3c  00 30 81 e0                                      add r3, r1, r0
00387b40  04 c0 83 e5                                      str ip, [r3, #4]
00387b44  00 c0 81 e7                                      str ip, [r1, r0]
00387b48  02 00 a0 e1                                      mov r0, r2
00387b4c  03 10 a0 e1                                      mov r1, r3
00387b50  d3 1d fe ea                                      b #0x30f2a4

; FUNCTION 0x00387b54, declared_size=72, range_size=72, mode=arm
; class-group: SimpleTypeProperty<glitch::core::dimension2d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE8ToStringEPv
; demangled: SimpleTypeProperty<glitch::core::dimension2d<float> >::ToString(void*)
; decoder-mode: arm
00387b54  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00387b58  00 40 a0 e1                                      mov r4, r0
00387b5c  0c d0 4d e2                                      sub sp, sp, #0xc
00387b60  01 0c a0 e3                                      mov r0, #0x100
00387b64  02 70 a0 e1                                      mov r7, r2
00387b68  01 60 a0 e1                                      mov r6, r1
00387b6c  38 22 fe eb                                      bl #0x310454
00387b70  04 10 96 e5                                      ldr r1, [r6, #4]
00387b74  00 50 a0 e1                                      mov r5, r0
00387b78  01 10 87 e0                                      add r1, r7, r1
00387b7c  de 1c fe eb                                      bl #0x30eefc
00387b80  04 00 a0 e1                                      mov r0, r4
00387b84  05 10 a0 e1                                      mov r1, r5
00387b88  04 20 8d e2                                      add r2, sp, #4
00387b8c  56 31 fe eb                                      bl #0x3140ec
00387b90  04 00 a0 e1                                      mov r0, r4
00387b94  0c d0 8d e2                                      add sp, sp, #0xc
00387b98  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00387f04, declared_size=184, range_size=184, mode=arm
; class-group: SimpleTypeProperty<glitch::core::dimension2d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE5CloneEv
; demangled: SimpleTypeProperty<glitch::core::dimension2d<float> >::Clone()
; decoder-mode: arm
00387f04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00387f08  00 10 a0 e3                                      mov r1, #0
00387f0c  00 50 a0 e1                                      mov r5, r0
00387f10  28 00 a0 e3                                      mov r0, #0x28
00387f14  95 21 fe eb                                      bl #0x310570
00387f18  90 70 9f e5                                      ldr r7, [pc, #0x90]
00387f1c  90 30 9f e5                                      ldr r3, [pc, #0x90]
00387f20  00 60 a0 e1                                      mov r6, r0
00387f24  07 70 8f e0                                      add r7, pc, r7
00387f28  03 30 97 e7                                      ldr r3, [r7, r3]
00387f2c  00 40 a0 e1                                      mov r4, r0
00387f30  10 10 a0 e3                                      mov r1, #0x10
00387f34  08 30 83 e2                                      add r3, r3, #8
00387f38  08 30 86 e4                                      str r3, [r6], #8
00387f3c  18 60 80 e5                                      str r6, [r0, #0x18]
00387f40  1c 60 80 e5                                      str r6, [r0, #0x1c]
00387f44  06 00 a0 e1                                      mov r0, r6
00387f48  cb 25 fe eb                                      bl #0x31167c
00387f4c  64 30 9f e5                                      ldr r3, [pc, #0x64]
00387f50  18 10 94 e5                                      ldr r1, [r4, #0x18]
00387f54  00 20 a0 e3                                      mov r2, #0
00387f58  03 30 97 e7                                      ldr r3, [r7, r3]
00387f5c  00 00 a0 e3                                      mov r0, #0
00387f60  00 00 c1 e5                                      strb r0, [r1]
00387f64  08 30 83 e2                                      add r3, r3, #8
00387f68  24 20 84 e5                                      str r2, [r4, #0x24]
00387f6c  20 20 84 e5                                      str r2, [r4, #0x20]
00387f70  00 30 84 e5                                      str r3, [r4]
00387f74  04 30 95 e5                                      ldr r3, [r5, #4]
00387f78  08 20 85 e2                                      add r2, r5, #8
00387f7c  02 00 56 e1                                      cmp r6, r2
00387f80  04 30 84 e5                                      str r3, [r4, #4]
00387f84  03 00 00 0a                                      beq #0x387f98
00387f88  06 00 a0 e1                                      mov r0, r6
00387f8c  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00387f90  18 20 95 e5                                      ldr r2, [r5, #0x18]
00387f94  91 22 fe eb                                      bl #0x3109e0
00387f98  20 30 95 e5                                      ldr r3, [r5, #0x20]
00387f9c  04 00 a0 e1                                      mov r0, r4
00387fa0  20 30 84 e5                                      str r3, [r4, #0x20]
00387fa4  24 30 95 e5                                      ldr r3, [r5, #0x24]
00387fa8  24 30 84 e5                                      str r3, [r4, #0x24]
00387fac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00387fb0  6c cb 60 00 30 23 00 00 d4 28 00 00              .byte 0x6c, 0xcb, 0x60, 0x00, 0x30, 0x23, 0x00, 0x00, 0xd4, 0x28, 0x00, 0x00
