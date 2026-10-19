; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00387794, declared_size=100, range_size=100, mode=arm
; class-group: SimpleTypeProperty<glitch::core::vector3d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE14IsDefaultValueEPv
; demangled: SimpleTypeProperty<glitch::core::vector3d<float> >::IsDefaultValue(void*)
; decoder-mode: arm
00387794  70 40 2d e9                                      push {r4, r5, r6, lr}
00387798  04 30 90 e5                                      ldr r3, [r0, #4]
0038779c  01 50 a0 e1                                      mov r5, r1
003877a0  00 40 a0 e1                                      mov r4, r0
003877a4  20 10 90 e5                                      ldr r1, [r0, #0x20]
003877a8  03 00 95 e7                                      ldr r0, [r5, r3]
003877ac  03 50 85 e0                                      add r5, r5, r3
003877b0  f5 19 fe eb                                      bl #0x30df8c
003877b4  00 00 50 e3                                      cmp r0, #0
003877b8  0c 00 00 0a                                      beq #0x3877f0
003877bc  04 00 95 e5                                      ldr r0, [r5, #4]
003877c0  24 10 94 e5                                      ldr r1, [r4, #0x24]
003877c4  f0 19 fe eb                                      bl #0x30df8c
003877c8  00 00 50 e3                                      cmp r0, #0
003877cc  07 00 00 0a                                      beq #0x3877f0
003877d0  08 00 95 e5                                      ldr r0, [r5, #8]
003877d4  28 10 94 e5                                      ldr r1, [r4, #0x28]
003877d8  eb 19 fe eb                                      bl #0x30df8c
003877dc  00 00 50 e3                                      cmp r0, #0
003877e0  00 00 a0 e3                                      mov r0, #0
003877e4  01 00 a0 13                                      movne r0, #1
003877e8  70 00 ef e6                                      uxtb r0, r0
003877ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
003877f0  00 00 a0 e3                                      mov r0, #0
003877f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003877f8, declared_size=36, range_size=36, mode=arm
; class-group: SimpleTypeProperty<glitch::core::vector3d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE17SetToDefaultValueEPv
; demangled: SimpleTypeProperty<glitch::core::vector3d<float> >::SetToDefaultValue(void*)
; decoder-mode: arm
003877f8  04 30 90 e5                                      ldr r3, [r0, #4]
003877fc  20 20 90 e5                                      ldr r2, [r0, #0x20]
00387800  03 c0 81 e0                                      add ip, r1, r3
00387804  03 20 81 e7                                      str r2, [r1, r3]
00387808  24 30 90 e5                                      ldr r3, [r0, #0x24]
0038780c  04 30 8c e5                                      str r3, [ip, #4]
00387810  28 30 90 e5                                      ldr r3, [r0, #0x28]
00387814  08 30 8c e5                                      str r3, [ip, #8]
00387818  1e ff 2f e1                                      bx lr

; FUNCTION 0x00387a8c, declared_size=32, range_size=32, mode=arm
; class-group: SimpleTypeProperty<glitch::core::vector3d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE25SetDefaultValueFromStringEPKc
; demangled: SimpleTypeProperty<glitch::core::vector3d<float> >::SetDefaultValueFromString(char const*)
; decoder-mode: arm
00387a8c  00 30 a0 e1                                      mov r3, r0
00387a90  00 20 a0 e3                                      mov r2, #0
00387a94  01 00 a0 e1                                      mov r0, r1
00387a98  20 10 83 e2                                      add r1, r3, #0x20
00387a9c  28 20 83 e5                                      str r2, [r3, #0x28]
00387aa0  20 20 83 e5                                      str r2, [r3, #0x20]
00387aa4  24 20 83 e5                                      str r2, [r3, #0x24]
00387aa8  21 1e fe ea                                      b #0x30f334

; FUNCTION 0x00387aac, declared_size=36, range_size=36, mode=arm
; class-group: SimpleTypeProperty<glitch::core::vector3d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE10FromStringEPvPKc
; demangled: SimpleTypeProperty<glitch::core::vector3d<float> >::FromString(void*, char const*)
; decoder-mode: arm
00387aac  04 c0 90 e5                                      ldr ip, [r0, #4]
00387ab0  00 00 a0 e3                                      mov r0, #0
00387ab4  0c 30 81 e0                                      add r3, r1, ip
00387ab8  0c 00 81 e7                                      str r0, [r1, ip]
00387abc  08 00 83 e5                                      str r0, [r3, #8]
00387ac0  04 00 83 e5                                      str r0, [r3, #4]
00387ac4  03 10 a0 e1                                      mov r1, r3
00387ac8  02 00 a0 e1                                      mov r0, r2
00387acc  18 1e fe ea                                      b #0x30f334

; FUNCTION 0x00387ad0, declared_size=72, range_size=72, mode=arm
; class-group: SimpleTypeProperty<glitch::core::vector3d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE8ToStringEPv
; demangled: SimpleTypeProperty<glitch::core::vector3d<float> >::ToString(void*)
; decoder-mode: arm
00387ad0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00387ad4  00 40 a0 e1                                      mov r4, r0
00387ad8  0c d0 4d e2                                      sub sp, sp, #0xc
00387adc  01 0c a0 e3                                      mov r0, #0x100
00387ae0  02 70 a0 e1                                      mov r7, r2
00387ae4  01 60 a0 e1                                      mov r6, r1
00387ae8  59 22 fe eb                                      bl #0x310454
00387aec  04 10 96 e5                                      ldr r1, [r6, #4]
00387af0  00 50 a0 e1                                      mov r5, r0
00387af4  01 10 87 e0                                      add r1, r7, r1
00387af8  14 1d fe eb                                      bl #0x30ef50
00387afc  04 00 a0 e1                                      mov r0, r4
00387b00  05 10 a0 e1                                      mov r1, r5
00387b04  04 20 8d e2                                      add r2, sp, #4
00387b08  77 31 fe eb                                      bl #0x3140ec
00387b0c  04 00 a0 e1                                      mov r0, r4
00387b10  0c d0 8d e2                                      add sp, sp, #0xc
00387b14  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00387e40, declared_size=196, range_size=196, mode=arm
; class-group: SimpleTypeProperty<glitch::core::vector3d<float> >
; alias: _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE5CloneEv
; demangled: SimpleTypeProperty<glitch::core::vector3d<float> >::Clone()
; decoder-mode: arm
00387e40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00387e44  00 10 a0 e3                                      mov r1, #0
00387e48  00 50 a0 e1                                      mov r5, r0
00387e4c  2c 00 a0 e3                                      mov r0, #0x2c
00387e50  c6 21 fe eb                                      bl #0x310570
00387e54  9c 70 9f e5                                      ldr r7, [pc, #0x9c]
00387e58  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00387e5c  00 60 a0 e1                                      mov r6, r0
00387e60  07 70 8f e0                                      add r7, pc, r7
00387e64  03 30 97 e7                                      ldr r3, [r7, r3]
00387e68  00 40 a0 e1                                      mov r4, r0
00387e6c  10 10 a0 e3                                      mov r1, #0x10
00387e70  08 30 83 e2                                      add r3, r3, #8
00387e74  08 30 86 e4                                      str r3, [r6], #8
00387e78  18 60 80 e5                                      str r6, [r0, #0x18]
00387e7c  1c 60 80 e5                                      str r6, [r0, #0x1c]
00387e80  06 00 a0 e1                                      mov r0, r6
00387e84  fc 25 fe eb                                      bl #0x31167c
00387e88  70 20 9f e5                                      ldr r2, [pc, #0x70]
00387e8c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00387e90  00 30 a0 e3                                      mov r3, #0
00387e94  02 20 97 e7                                      ldr r2, [r7, r2]
00387e98  00 00 a0 e3                                      mov r0, #0
00387e9c  00 00 c1 e5                                      strb r0, [r1]
00387ea0  08 20 82 e2                                      add r2, r2, #8
00387ea4  00 20 84 e5                                      str r2, [r4]
00387ea8  28 30 84 e5                                      str r3, [r4, #0x28]
00387eac  20 30 84 e5                                      str r3, [r4, #0x20]
00387eb0  24 30 84 e5                                      str r3, [r4, #0x24]
00387eb4  04 30 95 e5                                      ldr r3, [r5, #4]
00387eb8  08 20 85 e2                                      add r2, r5, #8
00387ebc  02 00 56 e1                                      cmp r6, r2
00387ec0  04 30 84 e5                                      str r3, [r4, #4]
00387ec4  03 00 00 0a                                      beq #0x387ed8
00387ec8  06 00 a0 e1                                      mov r0, r6
00387ecc  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00387ed0  18 20 95 e5                                      ldr r2, [r5, #0x18]
00387ed4  c1 22 fe eb                                      bl #0x3109e0
00387ed8  20 30 95 e5                                      ldr r3, [r5, #0x20]
00387edc  04 00 a0 e1                                      mov r0, r4
00387ee0  20 30 84 e5                                      str r3, [r4, #0x20]
00387ee4  24 30 95 e5                                      ldr r3, [r5, #0x24]
00387ee8  24 30 84 e5                                      str r3, [r4, #0x24]
00387eec  28 30 95 e5                                      ldr r3, [r5, #0x28]
00387ef0  28 30 84 e5                                      str r3, [r4, #0x28]
00387ef4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00387ef8  30 cc 60 00 30 23 00 00 90 1b 00 00              .byte 0x30, 0xcc, 0x60, 0x00, 0x30, 0x23, 0x00, 0x00, 0x90, 0x1b, 0x00, 0x00
