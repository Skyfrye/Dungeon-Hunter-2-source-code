; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00800d7c, declared_size=348, range_size=348, mode=arm
; class-group: CBluetoothNetRoomInfo
; alias: _ZN21CBluetoothNetRoomInfoC1Ev
; demangled: CBluetoothNetRoomInfo::CBluetoothNetRoomInfo()
; decoder-mode: arm
00800d7c  f0 4d 2d e9                                      push {r4, r5, r6, r7, r8, sl, fp, lr}
00800d80  38 51 9f e5                                      ldr r5, [pc, #0x138]
00800d84  38 81 9f e5                                      ldr r8, [pc, #0x138]
00800d88  20 d0 4d e2                                      sub sp, sp, #0x20
00800d8c  05 50 8f e0                                      add r5, pc, r5
00800d90  08 30 95 e7                                      ldr r3, [r5, r8]
00800d94  00 70 a0 e1                                      mov r7, r0
00800d98  00 40 a0 e1                                      mov r4, r0
00800d9c  00 30 93 e5                                      ldr r3, [r3]
00800da0  04 60 8d e2                                      add r6, sp, #4
00800da4  1c 30 8d e5                                      str r3, [sp, #0x1c]
00800da8  d1 4a 00 eb                                      bl #0x8138f4
00800dac  14 31 9f e5                                      ldr r3, [pc, #0x114]
00800db0  14 11 9f e5                                      ldr r1, [pc, #0x114]
00800db4  06 00 a0 e1                                      mov r0, r6
00800db8  03 30 95 e7                                      ldr r3, [r5, r3]
00800dbc  01 10 8f e0                                      add r1, pc, r1
00800dc0  01 20 a0 e1                                      mov r2, r1
00800dc4  08 30 83 e2                                      add r3, r3, #8
00800dc8  30 31 87 e4                                      str r3, [r7], #0x130
00800dcc  14 60 8d e5                                      str r6, [sp, #0x14]
00800dd0  18 60 8d e5                                      str r6, [sp, #0x18]
00800dd4  43 42 ec eb                                      bl #0x3116e8
00800dd8  07 00 a0 e1                                      mov r0, r7
00800ddc  06 10 a0 e1                                      mov r1, r6
00800de0  9e ff ff eb                                      bl #0x800c60
00800de4  18 00 9d e5                                      ldr r0, [sp, #0x18]
00800de8  06 00 50 e1                                      cmp r0, r6
00800dec  06 00 00 0a                                      beq #0x800e0c
00800df0  00 00 50 e3                                      cmp r0, #0
00800df4  04 00 00 0a                                      beq #0x800e0c
00800df8  04 10 9d e5                                      ldr r1, [sp, #4]
00800dfc  01 10 60 e0                                      rsb r1, r0, r1
00800e00  80 00 51 e3                                      cmp r1, #0x80
00800e04  2a 00 00 8a                                      bhi #0x800eb4
00800e08  4a f5 02 eb                                      bl #0x8be338
00800e0c  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00800e10  88 21 94 e5                                      ldr r2, [r4, #0x188]
00800e14  17 0e a0 e3                                      mov r0, #0x170
00800e18  03 30 95 e7                                      ldr r3, [r5, r3]
00800e1c  00 a0 a0 e3                                      mov sl, #0
00800e20  00 b0 a0 e3                                      mov fp, #0
00800e24  f0 a0 84 e1                                      strd sl, fp, [r4, r0]
00800e28  00 10 e0 e3                                      mvn r1, #0
00800e2c  00 00 52 e3                                      cmp r2, #0
00800e30  08 30 83 e2                                      add r3, r3, #8
00800e34  00 20 a0 e3                                      mov r2, #0
00800e38  20 00 a0 e3                                      mov r0, #0x20
00800e3c  6c 01 84 e5                                      str r0, [r4, #0x16c]
00800e40  7c 11 84 e5                                      str r1, [r4, #0x17c]
00800e44  68 31 84 e5                                      str r3, [r4, #0x168]
00800e48  78 11 84 e5                                      str r1, [r4, #0x178]
00800e4c  80 21 84 e5                                      str r2, [r4, #0x180]
00800e50  84 21 c4 e5                                      strb r2, [r4, #0x184]
00800e54  5a 6f 84 02                                      addeq r6, r4, #0x168
00800e58  03 00 00 0a                                      beq #0x800e6c
00800e5c  5a 6f 84 e2                                      add r6, r4, #0x168
00800e60  88 21 84 e5                                      str r2, [r4, #0x188]
00800e64  06 00 a0 e1                                      mov r0, r6
00800e68  45 50 00 eb                                      bl #0x814f84
00800e6c  60 30 9f e5                                      ldr r3, [pc, #0x60]
00800e70  07 10 a0 e1                                      mov r1, r7
00800e74  04 00 a0 e1                                      mov r0, r4
00800e78  03 30 95 e7                                      ldr r3, [r5, r3]
00800e7c  08 30 83 e2                                      add r3, r3, #8
00800e80  68 31 84 e5                                      str r3, [r4, #0x168]
00800e84  f0 48 00 eb                                      bl #0x81324c
00800e88  04 00 a0 e1                                      mov r0, r4
00800e8c  06 10 a0 e1                                      mov r1, r6
00800e90  ed 48 00 eb                                      bl #0x81324c
00800e94  08 30 95 e7                                      ldr r3, [r5, r8]
00800e98  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00800e9c  04 00 a0 e1                                      mov r0, r4
00800ea0  00 30 93 e5                                      ldr r3, [r3]
00800ea4  03 00 52 e1                                      cmp r2, r3
00800ea8  03 00 00 1a                                      bne #0x800ebc
00800eac  20 d0 8d e2                                      add sp, sp, #0x20
00800eb0  f0 8d bd e8                                      pop {r4, r5, r6, r7, r8, sl, fp, pc}
00800eb4  61 3d ec eb                                      bl #0x310440
00800eb8  d3 ff ff ea                                      b #0x800e0c
00800ebc  13 35 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00800ec0  04 3d 19 00 ac 40 00 00 e0 1d 00 00 4c aa 0c 00  .byte 0x04, 0x3d, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x1d, 0x00, 0x00, 0x4c, 0xaa, 0x0c, 0x00
00800ed0  84 29 00 00 c8 10 00 00                          .byte 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00

; FUNCTION 0x00801a0c, declared_size=220, range_size=220, mode=arm
; class-group: CBluetoothNetRoomInfo
; alias: _ZN21CBluetoothNetRoomInfoD1Ev
; demangled: CBluetoothNetRoomInfo::~CBluetoothNetRoomInfo()
; decoder-mode: arm
00801a0c  70 40 2d e9                                      push {r4, r5, r6, lr}
00801a10  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
00801a14  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
00801a18  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
00801a1c  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00801a20  05 50 8f e0                                      add r5, pc, r5
00801a24  02 20 95 e7                                      ldr r2, [r5, r2]
00801a28  03 30 95 e7                                      ldr r3, [r5, r3]
00801a2c  06 10 95 e7                                      ldr r1, [r5, r6]
00801a30  08 20 82 e2                                      add r2, r2, #8
00801a34  08 30 83 e2                                      add r3, r3, #8
00801a38  08 10 81 e2                                      add r1, r1, #8
00801a3c  30 31 80 e5                                      str r3, [r0, #0x130]
00801a40  00 20 80 e5                                      str r2, [r0]
00801a44  15 3e 80 e2                                      add r3, r0, #0x150
00801a48  68 11 80 e5                                      str r1, [r0, #0x168]
00801a4c  00 40 a0 e1                                      mov r4, r0
00801a50  14 00 93 e5                                      ldr r0, [r3, #0x14]
00801a54  03 00 50 e1                                      cmp r0, r3
00801a58  06 00 00 0a                                      beq #0x801a78
00801a5c  00 00 50 e3                                      cmp r0, #0
00801a60  04 00 00 0a                                      beq #0x801a78
00801a64  50 11 94 e5                                      ldr r1, [r4, #0x150]
00801a68  01 10 60 e0                                      rsb r1, r0, r1
00801a6c  80 00 51 e3                                      cmp r1, #0x80
00801a70  15 00 00 8a                                      bhi #0x801acc
00801a74  2f f2 02 eb                                      bl #0x8be338
00801a78  64 30 9f e5                                      ldr r3, [pc, #0x64]
00801a7c  06 20 95 e7                                      ldr r2, [r5, r6]
00801a80  1c 11 94 e5                                      ldr r1, [r4, #0x11c]
00801a84  03 30 95 e7                                      ldr r3, [r5, r3]
00801a88  08 20 82 e2                                      add r2, r2, #8
00801a8c  00 00 51 e3                                      cmp r1, #0
00801a90  08 30 83 e2                                      add r3, r3, #8
00801a94  30 21 84 e5                                      str r2, [r4, #0x130]
00801a98  00 30 84 e5                                      str r3, [r4]
00801a9c  08 00 00 0a                                      beq #0x801ac4
00801aa0  43 5f 84 e2                                      add r5, r4, #0x10c
00801aa4  05 00 a0 e1                                      mov r0, r5
00801aa8  10 11 94 e5                                      ldr r1, [r4, #0x110]
00801aac  47 bd ed eb                                      bl #0x370fd0
00801ab0  00 30 a0 e3                                      mov r3, #0
00801ab4  18 51 84 e5                                      str r5, [r4, #0x118]
00801ab8  1c 31 84 e5                                      str r3, [r4, #0x11c]
00801abc  14 51 84 e5                                      str r5, [r4, #0x114]
00801ac0  10 31 84 e5                                      str r3, [r4, #0x110]
00801ac4  04 00 a0 e1                                      mov r0, r4
00801ac8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00801acc  5b 3a ec eb                                      bl #0x310440
00801ad0  e8 ff ff ea                                      b #0x801a78
; mapping-symbol data/literal pool
00801ad4  70 30 19 00 e0 1d 00 00 a8 10 00 00 30 3e 00 00  .byte 0x70, 0x30, 0x19, 0x00, 0xe0, 0x1d, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00
00801ae4  c4 43 00 00                                      .byte 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x00801ae8, declared_size=28, range_size=28, mode=arm
; class-group: CBluetoothNetRoomInfo
; alias: _ZN21CBluetoothNetRoomInfoD0Ev
; demangled: CBluetoothNetRoomInfo::~CBluetoothNetRoomInfo()
; decoder-mode: arm
00801ae8  10 40 2d e9                                      push {r4, lr}
00801aec  00 40 a0 e1                                      mov r4, r0
00801af0  c5 ff ff eb                                      bl #0x801a0c
00801af4  04 00 a0 e1                                      mov r0, r4
00801af8  50 3a ec eb                                      bl #0x310440
00801afc  04 00 a0 e1                                      mov r0, r4
00801b00  10 80 bd e8                                      pop {r4, pc}
