; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039594c, declared_size=104, range_size=104, mode=arm
; class-group: CheckpointZone
; alias: _ZN14CheckpointZoneC1EN10ObjectBase6GO_IDSE
; demangled: CheckpointZone::CheckpointZone(ObjectBase::GO_IDS)
; decoder-mode: arm
0039594c  01 20 a0 e3                                      mov r2, #1
00395950  70 40 2d e9                                      push {r4, r5, r6, lr}
00395954  02 30 a0 e1                                      mov r3, r2
00395958  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
0039595c  00 40 a0 e1                                      mov r4, r0
00395960  ce 08 00 eb                                      bl #0x397ca0
00395964  44 30 9f e5                                      ldr r3, [pc, #0x44]
00395968  05 50 8f e0                                      add r5, pc, r5
0039596c  00 10 a0 e3                                      mov r1, #0
00395970  03 30 95 e7                                      ldr r3, [r5, r3]
00395974  04 20 a0 e1                                      mov r2, r4
00395978  8c 13 84 e5                                      str r1, [r4, #0x38c]
0039597c  f4 00 83 e2                                      add r0, r3, #0xf4
00395980  08 c0 83 e2                                      add ip, r3, #8
00395984  e8 30 83 e2                                      add r3, r3, #0xe8
00395988  24 00 84 e5                                      str r0, [r4, #0x24]
0039598c  00 c0 84 e5                                      str ip, [r4]
00395990  04 30 84 e5                                      str r3, [r4, #4]
00395994  88 13 e2 e5                                      strb r1, [r2, #0x388]!
00395998  94 23 84 e5                                      str r2, [r4, #0x394]
0039599c  98 13 84 e5                                      str r1, [r4, #0x398]
003959a0  90 23 84 e5                                      str r2, [r4, #0x390]
003959a4  04 00 a0 e1                                      mov r0, r4
003959a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003959ac  28 f1 5f 00 64 2e 00 00                          .byte 0x28, 0xf1, 0x5f, 0x00, 0x64, 0x2e, 0x00, 0x00

; FUNCTION 0x003959b4, declared_size=104, range_size=104, mode=arm
; class-group: CheckpointZone
; alias: _ZN14CheckpointZoneC2EN10ObjectBase6GO_IDSE
; demangled: CheckpointZone::CheckpointZone(ObjectBase::GO_IDS)
; decoder-mode: arm
003959b4  01 20 a0 e3                                      mov r2, #1
003959b8  70 40 2d e9                                      push {r4, r5, r6, lr}
003959bc  02 30 a0 e1                                      mov r3, r2
003959c0  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
003959c4  00 40 a0 e1                                      mov r4, r0
003959c8  b4 08 00 eb                                      bl #0x397ca0
003959cc  44 30 9f e5                                      ldr r3, [pc, #0x44]
003959d0  05 50 8f e0                                      add r5, pc, r5
003959d4  00 10 a0 e3                                      mov r1, #0
003959d8  03 30 95 e7                                      ldr r3, [r5, r3]
003959dc  04 20 a0 e1                                      mov r2, r4
003959e0  8c 13 84 e5                                      str r1, [r4, #0x38c]
003959e4  f4 00 83 e2                                      add r0, r3, #0xf4
003959e8  08 c0 83 e2                                      add ip, r3, #8
003959ec  e8 30 83 e2                                      add r3, r3, #0xe8
003959f0  24 00 84 e5                                      str r0, [r4, #0x24]
003959f4  00 c0 84 e5                                      str ip, [r4]
003959f8  04 30 84 e5                                      str r3, [r4, #4]
003959fc  88 13 e2 e5                                      strb r1, [r2, #0x388]!
00395a00  94 23 84 e5                                      str r2, [r4, #0x394]
00395a04  98 13 84 e5                                      str r1, [r4, #0x398]
00395a08  90 23 84 e5                                      str r2, [r4, #0x390]
00395a0c  04 00 a0 e1                                      mov r0, r4
00395a10  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00395a14  c0 f0 5f 00 64 2e 00 00                          .byte 0xc0, 0xf0, 0x5f, 0x00, 0x64, 0x2e, 0x00, 0x00

; FUNCTION 0x00395b30, declared_size=8, range_size=8, mode=arm
; class-group: CheckpointZone
; alias: _ZThn36_N14CheckpointZoneD1Ev
; demangled: non-virtual thunk to CheckpointZone::~CheckpointZone()
; decoder-mode: arm
00395b30  24 00 40 e2                                      sub r0, r0, #0x24
00395b34  ff ff ff ea                                      b #0x395b38

; FUNCTION 0x00395b38, declared_size=116, range_size=116, mode=arm
; class-group: CheckpointZone
; alias: _ZN14CheckpointZoneD1Ev
; demangled: CheckpointZone::~CheckpointZone()
; decoder-mode: arm
00395b38  70 40 2d e9                                      push {r4, r5, r6, lr}
00395b3c  60 20 9f e5                                      ldr r2, [pc, #0x60]
00395b40  60 30 9f e5                                      ldr r3, [pc, #0x60]
00395b44  98 13 90 e5                                      ldr r1, [r0, #0x398]
00395b48  02 20 8f e0                                      add r2, pc, r2
00395b4c  03 30 92 e7                                      ldr r3, [r2, r3]
00395b50  00 00 51 e3                                      cmp r1, #0
00395b54  00 40 a0 e1                                      mov r4, r0
00395b58  f4 20 83 e2                                      add r2, r3, #0xf4
00395b5c  08 10 83 e2                                      add r1, r3, #8
00395b60  e8 30 83 e2                                      add r3, r3, #0xe8
00395b64  0a 00 80 e8                                      stm r0, {r1, r3}
00395b68  24 20 80 e5                                      str r2, [r0, #0x24]
00395b6c  08 00 00 0a                                      beq #0x395b94
00395b70  e2 5f 80 e2                                      add r5, r0, #0x388
00395b74  05 00 a0 e1                                      mov r0, r5
00395b78  8c 13 94 e5                                      ldr r1, [r4, #0x38c]
00395b7c  dd ff ff eb                                      bl #0x395af8
00395b80  00 30 a0 e3                                      mov r3, #0
00395b84  94 53 84 e5                                      str r5, [r4, #0x394]
00395b88  98 33 84 e5                                      str r3, [r4, #0x398]
00395b8c  90 53 84 e5                                      str r5, [r4, #0x390]
00395b90  8c 33 84 e5                                      str r3, [r4, #0x38c]
00395b94  04 00 a0 e1                                      mov r0, r4
00395b98  09 08 00 eb                                      bl #0x397bc4
00395b9c  04 00 a0 e1                                      mov r0, r4
00395ba0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00395ba4  48 ef 5f 00 64 2e 00 00                          .byte 0x48, 0xef, 0x5f, 0x00, 0x64, 0x2e, 0x00, 0x00

; FUNCTION 0x00395bac, declared_size=8, range_size=8, mode=arm
; class-group: CheckpointZone
; alias: _ZThn36_N14CheckpointZoneD0Ev
; demangled: non-virtual thunk to CheckpointZone::~CheckpointZone()
; decoder-mode: arm
00395bac  24 00 40 e2                                      sub r0, r0, #0x24
00395bb0  ff ff ff ea                                      b #0x395bb4

; FUNCTION 0x00395bb4, declared_size=28, range_size=28, mode=arm
; class-group: CheckpointZone
; alias: _ZN14CheckpointZoneD0Ev
; demangled: CheckpointZone::~CheckpointZone()
; decoder-mode: arm
00395bb4  10 40 2d e9                                      push {r4, lr}
00395bb8  00 40 a0 e1                                      mov r4, r0
00395bbc  dd ff ff eb                                      bl #0x395b38
00395bc0  04 00 a0 e1                                      mov r0, r4
00395bc4  1d ea fd eb                                      bl #0x310440
00395bc8  04 00 a0 e1                                      mov r0, r4
00395bcc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00395bd0, declared_size=116, range_size=116, mode=arm
; class-group: CheckpointZone
; alias: _ZN14CheckpointZoneD2Ev
; demangled: CheckpointZone::~CheckpointZone()
; decoder-mode: arm
00395bd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00395bd4  60 20 9f e5                                      ldr r2, [pc, #0x60]
00395bd8  60 30 9f e5                                      ldr r3, [pc, #0x60]
00395bdc  98 13 90 e5                                      ldr r1, [r0, #0x398]
00395be0  02 20 8f e0                                      add r2, pc, r2
00395be4  03 30 92 e7                                      ldr r3, [r2, r3]
00395be8  00 00 51 e3                                      cmp r1, #0
00395bec  00 40 a0 e1                                      mov r4, r0
00395bf0  f4 20 83 e2                                      add r2, r3, #0xf4
00395bf4  08 10 83 e2                                      add r1, r3, #8
00395bf8  e8 30 83 e2                                      add r3, r3, #0xe8
00395bfc  0a 00 80 e8                                      stm r0, {r1, r3}
00395c00  24 20 80 e5                                      str r2, [r0, #0x24]
00395c04  08 00 00 0a                                      beq #0x395c2c
00395c08  e2 5f 80 e2                                      add r5, r0, #0x388
00395c0c  05 00 a0 e1                                      mov r0, r5
00395c10  8c 13 94 e5                                      ldr r1, [r4, #0x38c]
00395c14  b7 ff ff eb                                      bl #0x395af8
00395c18  00 30 a0 e3                                      mov r3, #0
00395c1c  94 53 84 e5                                      str r5, [r4, #0x394]
00395c20  98 33 84 e5                                      str r3, [r4, #0x398]
00395c24  90 53 84 e5                                      str r5, [r4, #0x390]
00395c28  8c 33 84 e5                                      str r3, [r4, #0x38c]
00395c2c  04 00 a0 e1                                      mov r0, r4
00395c30  e3 07 00 eb                                      bl #0x397bc4
00395c34  04 00 a0 e1                                      mov r0, r4
00395c38  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00395c3c  b0 ee 5f 00 64 2e 00 00                          .byte 0xb0, 0xee, 0x5f, 0x00, 0x64, 0x2e, 0x00, 0x00

; FUNCTION 0x00395f04, declared_size=536, range_size=536, mode=arm
; class-group: CheckpointZone
; alias: _ZN14CheckpointZone17OnCollisionBeginsEP10GameObject
; demangled: CheckpointZone::OnCollisionBegins(GameObject*)
; decoder-mode: arm
00395f04  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00395f08  e4 41 9f e5                                      ldr r4, [pc, #0x1e4]
00395f0c  00 50 51 e2                                      subs r5, r1, #0
00395f10  24 d0 4d e2                                      sub sp, sp, #0x24
00395f14  00 60 a0 e1                                      mov r6, r0
00395f18  04 40 8f e0                                      add r4, pc, r4
00395f1c  4a 00 00 0a                                      beq #0x39604c
00395f20  00 30 95 e5                                      ldr r3, [r5]
00395f24  05 00 a0 e1                                      mov r0, r5
00395f28  0f e0 a0 e1                                      mov lr, pc
00395f2c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00395f30  00 00 50 e3                                      cmp r0, #0
00395f34  01 00 00 1a                                      bne #0x395f40
00395f38  24 d0 8d e2                                      add sp, sp, #0x24
00395f3c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00395f40  08 70 8d e2                                      add r7, sp, #8
00395f44  05 10 a0 e1                                      mov r1, r5
00395f48  07 00 a0 e1                                      mov r0, r7
00395f4c  76 9f fe eb                                      bl #0x33dd2c
00395f50  07 00 a0 e1                                      mov r0, r7
00395f54  fe a7 fe eb                                      bl #0x33ff54
00395f58  98 31 9f e5                                      ldr r3, [pc, #0x198]
00395f5c  1c 00 8d e5                                      str r0, [sp, #0x1c]
00395f60  00 10 a0 e3                                      mov r1, #0
00395f64  03 70 94 e7                                      ldr r7, [r4, r3]
00395f68  01 20 a0 e3                                      mov r2, #1
00395f6c  40 00 97 e5                                      ldr r0, [r7, #0x40]
00395f70  40 61 ff eb                                      bl #0x36e478
00395f74  60 56 90 e5                                      ldr r5, [r0, #0x660]
00395f78  07 00 a0 e1                                      mov r0, r7
00395f7c  84 25 fe eb                                      bl #0x31f594
00395f80  00 70 50 e2                                      subs r7, r0, #0
00395f84  45 00 00 0a                                      beq #0x3960a0
00395f88  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00395f8c  03 00 a0 e1                                      mov r0, r3
00395f90  00 30 93 e5                                      ldr r3, [r3]
00395f94  0f e0 a0 e1                                      mov lr, pc
00395f98  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00395f9c  00 00 50 e3                                      cmp r0, #0
00395fa0  1b 00 00 1a                                      bne #0x396014
00395fa4  8c 33 96 e5                                      ldr r3, [r6, #0x38c]
00395fa8  e2 1f 86 e2                                      add r1, r6, #0x388
00395fac  00 00 53 e3                                      cmp r3, #0
00395fb0  10 00 00 0a                                      beq #0x395ff8
00395fb4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00395fb8  01 00 a0 e1                                      mov r0, r1
00395fbc  00 00 00 ea                                      b #0x395fc4
00395fc0  02 30 a0 e1                                      mov r3, r2
00395fc4  10 20 93 e5                                      ldr r2, [r3, #0x10]
00395fc8  02 00 5c e1                                      cmp ip, r2
00395fcc  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
00395fd0  08 20 93 95                                      ldrls r2, [r3, #8]
00395fd4  00 30 a0 81                                      movhi r3, r0
00395fd8  03 00 a0 e1                                      mov r0, r3
00395fdc  00 00 52 e3                                      cmp r2, #0
00395fe0  f6 ff ff 1a                                      bne #0x395fc0
00395fe4  03 00 51 e1                                      cmp r1, r3
00395fe8  05 00 00 0a                                      beq #0x396004
00395fec  10 20 93 e5                                      ldr r2, [r3, #0x10]
00395ff0  02 00 5c e1                                      cmp ip, r2
00395ff4  00 00 00 2a                                      bhs #0x395ffc
00395ff8  01 30 a0 e1                                      mov r3, r1
00395ffc  03 00 51 e1                                      cmp r1, r3
00396000  cc ff ff 1a                                      bne #0x395f38
00396004  14 00 8d e2                                      add r0, sp, #0x14
00396008  1c 20 8d e2                                      add r2, sp, #0x1c
0039600c  5c ff ff eb                                      bl #0x395d84
00396010  c8 ff ff ea                                      b #0x395f38
00396014  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00396018  05 00 53 e1                                      cmp r3, r5
0039601c  e0 ff ff 1a                                      bne #0x395fa4
00396020  51 1d 85 e2                                      add r1, r5, #0x1440
00396024  16 4e 86 e2                                      add r4, r6, #0x160
00396028  28 10 81 e2                                      add r1, r1, #0x28
0039602c  04 00 a0 e1                                      mov r0, r4
00396030  cd f2 fd eb                                      bl #0x312b6c
00396034  00 20 50 e2                                      subs r2, r0, #0
00396038  d9 ff ff 1a                                      bne #0x395fa4
0039603c  07 00 a0 e1                                      mov r0, r7
00396040  04 10 a0 e1                                      mov r1, r4
00396044  1a 69 01 eb                                      bl #0x3f04b4
00396048  d5 ff ff ea                                      b #0x395fa4
0039604c  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00396050  03 30 94 e7                                      ldr r3, [r4, r3]
00396054  00 30 93 e5                                      ldr r3, [r3]
00396058  02 00 53 e3                                      cmp r3, #2
0039605c  00 50 85 05                                      streq r5, [r5]
00396060  ae ff ff 0a                                      beq #0x395f20
00396064  01 00 53 e3                                      cmp r3, #1
00396068  ac ff ff 1a                                      bne #0x395f20
0039606c  8c 00 9f e5                                      ldr r0, [pc, #0x8c]
00396070  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00396074  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
00396078  00 00 94 e7                                      ldr r0, [r4, r0]
0039607c  88 30 9f e5                                      ldr r3, [pc, #0x88]
00396080  26 c0 a0 e3                                      mov ip, #0x26
00396084  01 10 8f e0                                      add r1, pc, r1
00396088  02 20 8f e0                                      add r2, pc, r2
0039608c  03 30 8f e0                                      add r3, pc, r3
00396090  a8 00 80 e2                                      add r0, r0, #0xa8
00396094  00 c0 8d e5                                      str ip, [sp]
00396098  d9 df fd eb                                      bl #0x30e004
0039609c  9f ff ff ea                                      b #0x395f20
003960a0  54 30 9f e5                                      ldr r3, [pc, #0x54]
003960a4  03 30 94 e7                                      ldr r3, [r4, r3]
003960a8  00 30 93 e5                                      ldr r3, [r3]
003960ac  02 00 53 e3                                      cmp r3, #2
003960b0  00 70 87 05                                      streq r7, [r7]
003960b4  b3 ff ff 0a                                      beq #0x395f88
003960b8  01 00 53 e3                                      cmp r3, #1
003960bc  b1 ff ff 1a                                      bne #0x395f88
003960c0  38 00 9f e5                                      ldr r0, [pc, #0x38]
003960c4  44 10 9f e5                                      ldr r1, [pc, #0x44]
003960c8  44 20 9f e5                                      ldr r2, [pc, #0x44]
003960cc  00 00 94 e7                                      ldr r0, [r4, r0]
003960d0  40 30 9f e5                                      ldr r3, [pc, #0x40]
003960d4  2e c0 a0 e3                                      mov ip, #0x2e
003960d8  01 10 8f e0                                      add r1, pc, r1
003960dc  02 20 8f e0                                      add r2, pc, r2
003960e0  03 30 8f e0                                      add r3, pc, r3
003960e4  a8 00 80 e2                                      add r0, r0, #0xa8
003960e8  00 c0 8d e5                                      str ip, [sp]
003960ec  c4 df fd eb                                      bl #0x30e004
003960f0  a4 ff ff ea                                      b #0x395f88
; mapping-symbol data/literal pool
003960f4  78 eb 5f 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x78, 0xeb, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00396104  54 83 52 00 10 c3 52 00 3c c8 52 00 00 83 52 00  .byte 0x54, 0x83, 0x52, 0x00, 0x10, 0xc3, 0x52, 0x00, 0x3c, 0xc8, 0x52, 0x00, 0x00, 0x83, 0x52, 0x00
00396114  fc 83 54 00 e8 c7 52 00                          .byte 0xfc, 0x83, 0x54, 0x00, 0xe8, 0xc7, 0x52, 0x00
