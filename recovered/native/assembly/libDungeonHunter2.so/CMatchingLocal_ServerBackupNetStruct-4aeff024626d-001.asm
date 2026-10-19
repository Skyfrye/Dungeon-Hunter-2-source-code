; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00806140, declared_size=124, range_size=124, mode=arm
; class-group: CMatchingLocal::ServerBackupNetStruct
; alias: _ZN14CMatchingLocal21ServerBackupNetStructD0Ev
; demangled: CMatchingLocal::ServerBackupNetStruct::~ServerBackupNetStruct()
; decoder-mode: arm
00806140  70 40 2d e9                                      push {r4, r5, r6, lr}
00806144  64 30 9f e5                                      ldr r3, [pc, #0x64]
00806148  64 20 9f e5                                      ldr r2, [pc, #0x64]
0080614c  64 10 9f e5                                      ldr r1, [pc, #0x64]
00806150  03 30 8f e0                                      add r3, pc, r3
00806154  00 40 a0 e1                                      mov r4, r0
00806158  01 10 93 e7                                      ldr r1, [r3, r1]
0080615c  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
00806160  02 20 93 e7                                      ldr r2, [r3, r2]
00806164  08 10 81 e2                                      add r1, r1, #8
00806168  00 00 50 e3                                      cmp r0, #0
0080616c  08 20 82 e2                                      add r2, r2, #8
00806170  30 21 84 e5                                      str r2, [r4, #0x130]
00806174  00 10 84 e5                                      str r1, [r4]
00806178  08 00 00 0a                                      beq #0x8061a0
0080617c  43 5f 84 e2                                      add r5, r4, #0x10c
00806180  05 00 a0 e1                                      mov r0, r5
00806184  10 11 94 e5                                      ldr r1, [r4, #0x110]
00806188  90 ab ed eb                                      bl #0x370fd0
0080618c  00 30 a0 e3                                      mov r3, #0
00806190  18 51 84 e5                                      str r5, [r4, #0x118]
00806194  1c 31 84 e5                                      str r3, [r4, #0x11c]
00806198  14 51 84 e5                                      str r5, [r4, #0x114]
0080619c  10 31 84 e5                                      str r3, [r4, #0x110]
008061a0  04 00 a0 e1                                      mov r0, r4
008061a4  a5 28 ec eb                                      bl #0x310440
008061a8  04 00 a0 e1                                      mov r0, r4
008061ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008061b0  40 e9 18 00 a8 10 00 00 c4 43 00 00              .byte 0x40, 0xe9, 0x18, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x008062d0, declared_size=116, range_size=116, mode=arm
; class-group: CMatchingLocal::ServerBackupNetStruct
; alias: _ZN14CMatchingLocal21ServerBackupNetStructD1Ev
; demangled: CMatchingLocal::ServerBackupNetStruct::~ServerBackupNetStruct()
; decoder-mode: arm
008062d0  70 40 2d e9                                      push {r4, r5, r6, lr}
008062d4  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
008062d8  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
008062dc  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
008062e0  03 30 8f e0                                      add r3, pc, r3
008062e4  00 40 a0 e1                                      mov r4, r0
008062e8  01 10 93 e7                                      ldr r1, [r3, r1]
008062ec  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
008062f0  02 20 93 e7                                      ldr r2, [r3, r2]
008062f4  08 10 81 e2                                      add r1, r1, #8
008062f8  00 00 50 e3                                      cmp r0, #0
008062fc  08 20 82 e2                                      add r2, r2, #8
00806300  30 21 84 e5                                      str r2, [r4, #0x130]
00806304  00 10 84 e5                                      str r1, [r4]
00806308  08 00 00 0a                                      beq #0x806330
0080630c  43 5f 84 e2                                      add r5, r4, #0x10c
00806310  05 00 a0 e1                                      mov r0, r5
00806314  10 11 94 e5                                      ldr r1, [r4, #0x110]
00806318  2c ab ed eb                                      bl #0x370fd0
0080631c  00 30 a0 e3                                      mov r3, #0
00806320  18 51 84 e5                                      str r5, [r4, #0x118]
00806324  1c 31 84 e5                                      str r3, [r4, #0x11c]
00806328  14 51 84 e5                                      str r5, [r4, #0x114]
0080632c  10 31 84 e5                                      str r3, [r4, #0x110]
00806330  04 00 a0 e1                                      mov r0, r4
00806334  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00806338  b0 e7 18 00 a8 10 00 00 c4 43 00 00              .byte 0xb0, 0xe7, 0x18, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x00806cac, declared_size=184, range_size=184, mode=arm
; class-group: CMatchingLocal::ServerBackupNetStruct
; alias: _ZN14CMatchingLocal21ServerBackupNetStructC1Ev
; demangled: CMatchingLocal::ServerBackupNetStruct::ServerBackupNetStruct()
; decoder-mode: arm
00806cac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00806cb0  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
00806cb4  00 40 a0 e1                                      mov r4, r0
00806cb8  0d 33 00 eb                                      bl #0x8138f4
00806cbc  94 20 9f e5                                      ldr r2, [pc, #0x94]
00806cc0  94 30 9f e5                                      ldr r3, [pc, #0x94]
00806cc4  05 50 8f e0                                      add r5, pc, r5
00806cc8  02 20 95 e7                                      ldr r2, [r5, r2]
00806ccc  50 11 94 e5                                      ldr r1, [r4, #0x150]
00806cd0  03 30 95 e7                                      ldr r3, [r5, r3]
00806cd4  08 20 82 e2                                      add r2, r2, #8
00806cd8  00 60 a0 e3                                      mov r6, #0
00806cdc  00 70 a0 e3                                      mov r7, #0
00806ce0  4e cf a0 e3                                      mov ip, #0x138
00806ce4  fc 60 84 e1                                      strd r6, r7, [r4, ip]
00806ce8  00 00 51 e3                                      cmp r1, #0
00806cec  00 00 e0 e3                                      mvn r0, #0
00806cf0  00 10 a0 e3                                      mov r1, #0
00806cf4  08 30 83 e2                                      add r3, r3, #8
00806cf8  00 20 84 e5                                      str r2, [r4]
00806cfc  20 20 a0 e3                                      mov r2, #0x20
00806d00  34 21 84 e5                                      str r2, [r4, #0x134]
00806d04  44 01 84 e5                                      str r0, [r4, #0x144]
00806d08  30 31 84 e5                                      str r3, [r4, #0x130]
00806d0c  40 01 84 e5                                      str r0, [r4, #0x140]
00806d10  48 11 84 e5                                      str r1, [r4, #0x148]
00806d14  4c 11 c4 e5                                      strb r1, [r4, #0x14c]
00806d18  13 6e 84 02                                      addeq r6, r4, #0x130
00806d1c  03 00 00 0a                                      beq #0x806d30
00806d20  13 6e 84 e2                                      add r6, r4, #0x130
00806d24  50 11 84 e5                                      str r1, [r4, #0x150]
00806d28  06 00 a0 e1                                      mov r0, r6
00806d2c  94 38 00 eb                                      bl #0x814f84
00806d30  28 30 9f e5                                      ldr r3, [pc, #0x28]
00806d34  04 00 a0 e1                                      mov r0, r4
00806d38  06 10 a0 e1                                      mov r1, r6
00806d3c  03 30 95 e7                                      ldr r3, [r5, r3]
00806d40  08 30 83 e2                                      add r3, r3, #8
00806d44  30 31 84 e5                                      str r3, [r4, #0x130]
00806d48  3f 31 00 eb                                      bl #0x81324c
00806d4c  04 00 a0 e1                                      mov r0, r4
00806d50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00806d54  cc dd 18 00 58 25 00 00 84 29 00 00 c8 10 00 00  .byte 0xcc, 0xdd, 0x18, 0x00, 0x58, 0x25, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
