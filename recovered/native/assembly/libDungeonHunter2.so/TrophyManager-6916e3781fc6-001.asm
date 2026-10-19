; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037f9d0, declared_size=8, range_size=8, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager4InitEv
; demangled: TrophyManager::Init()
; decoder-mode: arm
0037f9d0  01 00 a0 e3                                      mov r0, #1
0037f9d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0037f9d8, declared_size=8, range_size=8, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager9TerminateEv
; demangled: TrophyManager::Terminate()
; decoder-mode: arm
0037f9d8  01 00 a0 e3                                      mov r0, #1
0037f9dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0037f9e0, declared_size=4, range_size=4, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager24UnlockTrophiesGameCenterEv
; demangled: TrophyManager::UnlockTrophiesGameCenter()
; decoder-mode: arm
0037f9e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0037f9e4, declared_size=56, range_size=56, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager17IsTrophyUnlockingEi
; demangled: TrophyManager::IsTrophyUnlocking(int)
; decoder-mode: arm
0037f9e4  10 40 2d e9                                      push {r4, lr}
0037f9e8  10 d0 4d e2                                      sub sp, sp, #0x10
0037f9ec  10 20 8d e2                                      add r2, sp, #0x10
0037f9f0  0c 10 22 e5                                      str r1, [r2, #-0xc]!
0037f9f4  00 40 a0 e1                                      mov r4, r0
0037f9f8  0c 30 8d e2                                      add r3, sp, #0xc
0037f9fc  14 10 94 e5                                      ldr r1, [r4, #0x14]
0037fa00  10 00 90 e5                                      ldr r0, [r0, #0x10]
0037fa04  51 a6 ff eb                                      bl #0x369350
0037fa08  14 30 94 e5                                      ldr r3, [r4, #0x14]
0037fa0c  00 00 53 e0                                      subs r0, r3, r0
0037fa10  01 00 a0 13                                      movne r0, #1
0037fa14  10 d0 8d e2                                      add sp, sp, #0x10
0037fa18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0037fab4, declared_size=132, range_size=132, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager20UnlockTrophiesGLLiveEv
; demangled: TrophyManager::UnlockTrophiesGLLive()
; decoder-mode: arm
0037fab4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037fab8  70 50 9f e5                                      ldr r5, [pc, #0x70]
0037fabc  70 60 9f e5                                      ldr r6, [pc, #0x70]
0037fac0  00 70 a0 e1                                      mov r7, r0
0037fac4  05 50 8f e0                                      add r5, pc, r5
0037fac8  06 30 95 e7                                      ldr r3, [r5, r6]
0037facc  00 30 93 e5                                      ldr r3, [r3]
0037fad0  00 00 53 e3                                      cmp r3, #0
0037fad4  14 00 00 0a                                      beq #0x37fb2c
0037fad8  00 30 a0 e3                                      mov r3, #0
0037fadc  03 40 a0 e1                                      mov r4, r3
0037fae0  04 00 00 ea                                      b #0x37faf8
0037fae4  06 20 95 e7                                      ldr r2, [r5, r6]
0037fae8  04 30 a0 e1                                      mov r3, r4
0037faec  00 20 92 e5                                      ldr r2, [r2]
0037faf0  04 00 52 e1                                      cmp r2, r4
0037faf4  0c 00 00 9a                                      bls #0x37fb2c
0037faf8  04 20 97 e5                                      ldr r2, [r7, #4]
0037fafc  01 40 84 e2                                      add r4, r4, #1
0037fb00  03 31 92 e7                                      ldr r3, [r2, r3, lsl #2]
0037fb04  10 20 d3 e5                                      ldrb r2, [r3, #0x10]
0037fb08  00 00 52 e3                                      cmp r2, #0
0037fb0c  f4 ff ff 0a                                      beq #0x37fae4
0037fb10  24 00 93 e5                                      ldr r0, [r3, #0x24]
0037fb14  14 cc 06 eb                                      bl #0x532b6c
0037fb18  06 20 95 e7                                      ldr r2, [r5, r6]
0037fb1c  04 30 a0 e1                                      mov r3, r4
0037fb20  00 20 92 e5                                      ldr r2, [r2]
0037fb24  04 00 52 e1                                      cmp r2, r4
0037fb28  f2 ff ff 8a                                      bhi #0x37faf8
0037fb2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0037fb30  cc 4f 61 00 fc 0e 00 00                          .byte 0xcc, 0x4f, 0x61, 0x00, 0xfc, 0x0e, 0x00, 0x00

; FUNCTION 0x0037fc98, declared_size=104, range_size=104, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager14UnloadTrophiesEv
; demangled: TrophyManager::UnloadTrophies()
; decoder-mode: arm
0037fc98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037fc9c  08 20 90 e5                                      ldr r2, [r0, #8]
0037fca0  04 50 90 e5                                      ldr r5, [r0, #4]
0037fca4  00 60 a0 e1                                      mov r6, r0
0037fca8  02 30 65 e0                                      rsb r3, r5, r2
0037fcac  23 31 b0 e1                                      lsrs r3, r3, #2
0037fcb0  0f 00 00 0a                                      beq #0x37fcf4
0037fcb4  00 40 a0 e3                                      mov r4, #0
0037fcb8  04 70 a0 e1                                      mov r7, r4
0037fcbc  04 31 95 e7                                      ldr r3, [r5, r4, lsl #2]
0037fcc0  00 00 53 e3                                      cmp r3, #0
0037fcc4  06 00 00 0a                                      beq #0x37fce4
0037fcc8  03 00 a0 e1                                      mov r0, r3
0037fccc  00 30 93 e5                                      ldr r3, [r3]
0037fcd0  0f e0 a0 e1                                      mov lr, pc
0037fcd4  04 f0 93 e5                                      ldr pc, [r3, #4]
0037fcd8  04 71 85 e7                                      str r7, [r5, r4, lsl #2]
0037fcdc  08 20 96 e5                                      ldr r2, [r6, #8]
0037fce0  04 50 96 e5                                      ldr r5, [r6, #4]
0037fce4  01 40 84 e2                                      add r4, r4, #1
0037fce8  02 30 65 e0                                      rsb r3, r5, r2
0037fcec  43 01 54 e1                                      cmp r4, r3, asr #2
0037fcf0  f1 ff ff 3a                                      blo #0x37fcbc
0037fcf4  05 00 52 e1                                      cmp r2, r5
0037fcf8  08 50 86 15                                      strne r5, [r6, #8]
0037fcfc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0037fdf0, declared_size=152, range_size=152, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManagerD1Ev
; demangled: TrophyManager::~TrophyManager()
; decoder-mode: arm
0037fdf0  88 30 9f e5                                      ldr r3, [pc, #0x88]
0037fdf4  88 20 9f e5                                      ldr r2, [pc, #0x88]
0037fdf8  70 40 2d e9                                      push {r4, r5, r6, lr}
0037fdfc  03 30 8f e0                                      add r3, pc, r3
0037fe00  02 20 93 e7                                      ldr r2, [r3, r2]
0037fe04  00 50 a0 e1                                      mov r5, r0
0037fe08  00 40 a0 e1                                      mov r4, r0
0037fe0c  08 20 82 e2                                      add r2, r2, #8
0037fe10  10 20 85 e4                                      str r2, [r5], #0x10
0037fe14  9f ff ff eb                                      bl #0x37fc98
0037fe18  10 00 94 e5                                      ldr r0, [r4, #0x10]
0037fe1c  00 00 50 e3                                      cmp r0, #0
0037fe20  05 00 00 0a                                      beq #0x37fe3c
0037fe24  08 10 95 e5                                      ldr r1, [r5, #8]
0037fe28  01 10 60 e0                                      rsb r1, r0, r1
0037fe2c  03 10 c1 e3                                      bic r1, r1, #3
0037fe30  80 00 51 e3                                      cmp r1, #0x80
0037fe34  0c 00 00 8a                                      bhi #0x37fe6c
0037fe38  30 24 0e eb                                      bl #0x708f00
0037fe3c  04 00 94 e5                                      ldr r0, [r4, #4]
0037fe40  04 30 84 e2                                      add r3, r4, #4
0037fe44  00 00 50 e3                                      cmp r0, #0
0037fe48  05 00 00 0a                                      beq #0x37fe64
0037fe4c  08 10 93 e5                                      ldr r1, [r3, #8]
0037fe50  01 10 60 e0                                      rsb r1, r0, r1
0037fe54  03 10 c1 e3                                      bic r1, r1, #3
0037fe58  80 00 51 e3                                      cmp r1, #0x80
0037fe5c  04 00 00 8a                                      bhi #0x37fe74
0037fe60  26 24 0e eb                                      bl #0x708f00
0037fe64  04 00 a0 e1                                      mov r0, r4
0037fe68  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037fe6c  73 41 fe eb                                      bl #0x310440
0037fe70  f1 ff ff ea                                      b #0x37fe3c
0037fe74  71 41 fe eb                                      bl #0x310440
0037fe78  04 00 a0 e1                                      mov r0, r4
0037fe7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037fe80  94 4c 61 00 7c 38 00 00                          .byte 0x94, 0x4c, 0x61, 0x00, 0x7c, 0x38, 0x00, 0x00

; FUNCTION 0x0037fe88, declared_size=64, range_size=64, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager14DeleteInstanceEv
; demangled: TrophyManager::DeleteInstance()
; decoder-mode: arm
0037fe88  30 30 9f e5                                      ldr r3, [pc, #0x30]
0037fe8c  30 20 9f e5                                      ldr r2, [pc, #0x30]
0037fe90  10 40 2d e9                                      push {r4, lr}
0037fe94  03 30 8f e0                                      add r3, pc, r3
0037fe98  02 20 93 e7                                      ldr r2, [r3, r2]
0037fe9c  00 40 92 e5                                      ldr r4, [r2]
0037fea0  00 00 54 e3                                      cmp r4, #0
0037fea4  04 00 00 0a                                      beq #0x37febc
0037fea8  04 00 a0 e1                                      mov r0, r4
0037feac  cf ff ff eb                                      bl #0x37fdf0
0037feb0  04 00 a0 e1                                      mov r0, r4
0037feb4  10 40 bd e8                                      pop {r4, lr}
0037feb8  60 41 fe ea                                      b #0x310440
0037febc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0037fec0  fc 4b 61 00 70 1d 00 00                          .byte 0xfc, 0x4b, 0x61, 0x00, 0x70, 0x1d, 0x00, 0x00

; FUNCTION 0x0037fec8, declared_size=152, range_size=152, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManagerD2Ev
; demangled: TrophyManager::~TrophyManager()
; decoder-mode: arm
0037fec8  88 30 9f e5                                      ldr r3, [pc, #0x88]
0037fecc  88 20 9f e5                                      ldr r2, [pc, #0x88]
0037fed0  70 40 2d e9                                      push {r4, r5, r6, lr}
0037fed4  03 30 8f e0                                      add r3, pc, r3
0037fed8  02 20 93 e7                                      ldr r2, [r3, r2]
0037fedc  00 50 a0 e1                                      mov r5, r0
0037fee0  00 40 a0 e1                                      mov r4, r0
0037fee4  08 20 82 e2                                      add r2, r2, #8
0037fee8  10 20 85 e4                                      str r2, [r5], #0x10
0037feec  69 ff ff eb                                      bl #0x37fc98
0037fef0  10 00 94 e5                                      ldr r0, [r4, #0x10]
0037fef4  00 00 50 e3                                      cmp r0, #0
0037fef8  05 00 00 0a                                      beq #0x37ff14
0037fefc  08 10 95 e5                                      ldr r1, [r5, #8]
0037ff00  01 10 60 e0                                      rsb r1, r0, r1
0037ff04  03 10 c1 e3                                      bic r1, r1, #3
0037ff08  80 00 51 e3                                      cmp r1, #0x80
0037ff0c  0c 00 00 8a                                      bhi #0x37ff44
0037ff10  fa 23 0e eb                                      bl #0x708f00
0037ff14  04 00 94 e5                                      ldr r0, [r4, #4]
0037ff18  04 30 84 e2                                      add r3, r4, #4
0037ff1c  00 00 50 e3                                      cmp r0, #0
0037ff20  05 00 00 0a                                      beq #0x37ff3c
0037ff24  08 10 93 e5                                      ldr r1, [r3, #8]
0037ff28  01 10 60 e0                                      rsb r1, r0, r1
0037ff2c  03 10 c1 e3                                      bic r1, r1, #3
0037ff30  80 00 51 e3                                      cmp r1, #0x80
0037ff34  04 00 00 8a                                      bhi #0x37ff4c
0037ff38  f0 23 0e eb                                      bl #0x708f00
0037ff3c  04 00 a0 e1                                      mov r0, r4
0037ff40  70 80 bd e8                                      pop {r4, r5, r6, pc}
0037ff44  3d 41 fe eb                                      bl #0x310440
0037ff48  f1 ff ff ea                                      b #0x37ff14
0037ff4c  3b 41 fe eb                                      bl #0x310440
0037ff50  04 00 a0 e1                                      mov r0, r4
0037ff54  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037ff58  bc 4b 61 00 7c 38 00 00                          .byte 0xbc, 0x4b, 0x61, 0x00, 0x7c, 0x38, 0x00, 0x00

; FUNCTION 0x0037ff60, declared_size=248, range_size=248, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager13GetTrophyDataEi
; demangled: TrophyManager::GetTrophyData(int)
; decoder-mode: arm
0037ff60  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0037ff64  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
0037ff68  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
0037ff6c  08 20 90 e5                                      ldr r2, [r0, #8]
0037ff70  04 40 8f e0                                      add r4, pc, r4
0037ff74  05 c0 94 e7                                      ldr ip, [r4, r5]
0037ff78  04 30 90 e5                                      ldr r3, [r0, #4]
0037ff7c  24 d0 4d e2                                      sub sp, sp, #0x24
0037ff80  00 00 9c e5                                      ldr r0, [ip]
0037ff84  02 00 53 e1                                      cmp r3, r2
0037ff88  1c 00 8d e5                                      str r0, [sp, #0x1c]
0037ff8c  03 00 00 1a                                      bne #0x37ffa0
0037ff90  0d 00 00 ea                                      b #0x37ffcc
0037ff94  04 30 83 e2                                      add r3, r3, #4
0037ff98  02 00 53 e1                                      cmp r3, r2
0037ff9c  0a 00 00 0a                                      beq #0x37ffcc
0037ffa0  00 00 93 e5                                      ldr r0, [r3]
0037ffa4  04 c0 90 e5                                      ldr ip, [r0, #4]
0037ffa8  01 00 5c e1                                      cmp ip, r1
0037ffac  f8 ff ff 1a                                      bne #0x37ff94
0037ffb0  05 30 94 e7                                      ldr r3, [r4, r5]
0037ffb4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0037ffb8  00 30 93 e5                                      ldr r3, [r3]
0037ffbc  03 00 52 e1                                      cmp r2, r3
0037ffc0  1f 00 00 1a                                      bne #0x380044
0037ffc4  24 d0 8d e2                                      add sp, sp, #0x24
0037ffc8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0037ffcc  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0037ffd0  04 60 8d e2                                      add r6, sp, #4
0037ffd4  03 70 94 e7                                      ldr r7, [r4, r3]
0037ffd8  07 00 a0 e1                                      mov r0, r7
0037ffdc  29 de fe eb                                      bl #0x337888
0037ffe0  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0037ffe4  0d 20 a0 e1                                      mov r2, sp
0037ffe8  06 00 a0 e1                                      mov r0, r6
0037ffec  01 10 8f e0                                      add r1, pc, r1
0037fff0  3d 50 fe eb                                      bl #0x3140ec
0037fff4  07 00 a0 e1                                      mov r0, r7
0037fff8  06 10 a0 e1                                      mov r1, r6
0037fffc  a1 de fe eb                                      bl #0x337a88
00380000  18 00 9d e5                                      ldr r0, [sp, #0x18]
00380004  06 00 50 e1                                      cmp r0, r6
00380008  08 00 00 0a                                      beq #0x380030
0038000c  00 00 50 e3                                      cmp r0, #0
00380010  06 00 00 0a                                      beq #0x380030
00380014  04 10 9d e5                                      ldr r1, [sp, #4]
00380018  01 10 60 e0                                      rsb r1, r0, r1
0038001c  80 00 51 e3                                      cmp r1, #0x80
00380020  04 00 00 8a                                      bhi #0x380038
00380024  b5 23 0e eb                                      bl #0x708f00
00380028  00 00 a0 e3                                      mov r0, #0
0038002c  df ff ff ea                                      b #0x37ffb0
00380030  00 00 a0 e3                                      mov r0, #0
00380034  dd ff ff ea                                      b #0x37ffb0
00380038  00 41 fe eb                                      bl #0x310440
0038003c  00 00 a0 e3                                      mov r0, #0
00380040  da ff ff ea                                      b #0x37ffb0
00380044  b1 38 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00380048  20 4b 61 00 ac 40 00 00 84 08 00 00 ac 1c 54 00  .byte 0x20, 0x4b, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xac, 0x1c, 0x54, 0x00

; FUNCTION 0x00380058, declared_size=20, range_size=20, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager16IsTrophyUnlockedEi
; demangled: TrophyManager::IsTrophyUnlocked(int)
; decoder-mode: arm
00380058  10 40 2d e9                                      push {r4, lr}
0038005c  bf ff ff eb                                      bl #0x37ff60
00380060  00 00 50 e3                                      cmp r0, #0
00380064  10 00 d0 15                                      ldrbne r0, [r0, #0x10]
00380068  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0038006c, declared_size=344, range_size=344, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager12SaveTrophiesEv
; demangled: TrophyManager::SaveTrophies()
; decoder-mode: arm
0038006c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00380070  34 41 9f e5                                      ldr r4, [pc, #0x134]
00380074  34 31 9f e5                                      ldr r3, [pc, #0x134]
00380078  34 21 9f e5                                      ldr r2, [pc, #0x134]
0038007c  04 40 8f e0                                      add r4, pc, r4
00380080  03 30 94 e7                                      ldr r3, [r4, r3]
00380084  02 20 94 e7                                      ldr r2, [r4, r2]
00380088  24 d0 4d e2                                      sub sp, sp, #0x24
0038008c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00380090  00 50 92 e5                                      ldr r5, [r2]
00380094  34 60 93 e5                                      ldr r6, [r3, #0x34]
00380098  00 00 56 e3                                      cmp r6, #0
0038009c  3d 00 00 0a                                      beq #0x380198
003800a0  10 11 9f e5                                      ldr r1, [pc, #0x110]
003800a4  00 30 96 e5                                      ldr r3, [r6]
003800a8  06 00 a0 e1                                      mov r0, r6
003800ac  01 10 8f e0                                      add r1, pc, r1
003800b0  01 20 a0 e3                                      mov r2, #1
003800b4  0f e0 a0 e1                                      mov lr, pc
003800b8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
003800bc  00 00 50 e3                                      cmp r0, #0
003800c0  34 00 00 0a                                      beq #0x380198
003800c4  f0 a0 9f e5                                      ldr sl, [pc, #0xf0]
003800c8  0c b0 8d e2                                      add fp, sp, #0xc
003800cc  00 80 a0 e3                                      mov r8, #0
003800d0  0a 20 94 e7                                      ldr r2, [r4, sl]
003800d4  08 30 8b e2                                      add r3, fp, #8
003800d8  04 80 83 e4                                      str r8, [r3], #4
003800dc  00 20 92 e5                                      ldr r2, [r2]
003800e0  1c 00 8d e5                                      str r0, [sp, #0x1c]
003800e4  00 80 83 e5                                      str r8, [r3]
003800e8  08 00 52 e1                                      cmp r2, r8
003800ec  0c 80 8d e5                                      str r8, [sp, #0xc]
003800f0  10 80 8d e5                                      str r8, [sp, #0x10]
003800f4  1e 00 00 0a                                      beq #0x380174
003800f8  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
003800fc  08 70 a0 e1                                      mov r7, r8
00380100  01 90 a0 e3                                      mov sb, #1
00380104  03 30 8f e0                                      add r3, pc, r3
00380108  04 30 8d e5                                      str r3, [sp, #4]
0038010c  04 00 00 ea                                      b #0x380124
00380110  0a 30 94 e7                                      ldr r3, [r4, sl]
00380114  07 80 a0 e1                                      mov r8, r7
00380118  00 30 93 e5                                      ldr r3, [r3]
0038011c  07 00 53 e1                                      cmp r3, r7
00380120  13 00 00 9a                                      bls #0x380174
00380124  07 10 a0 e1                                      mov r1, r7
00380128  05 00 a0 e1                                      mov r0, r5
0038012c  c9 ff ff eb                                      bl #0x380058
00380130  00 00 50 e3                                      cmp r0, #0
00380134  01 70 87 e2                                      add r7, r7, #1
00380138  f4 ff ff 0a                                      beq #0x380110
0038013c  7f 00 58 e3                                      cmp r8, #0x7f
00380140  16 00 00 8a                                      bhi #0x3801a0
00380144  a8 32 a0 e1                                      lsr r3, r8, #5
00380148  20 20 8d e2                                      add r2, sp, #0x20
0038014c  03 31 82 e0                                      add r3, r2, r3, lsl #2
00380150  14 20 13 e5                                      ldr r2, [r3, #-0x14]
00380154  1f 80 08 e2                                      and r8, r8, #0x1f
00380158  19 88 82 e1                                      orr r8, r2, sb, lsl r8
0038015c  14 80 03 e5                                      str r8, [r3, #-0x14]
00380160  0a 30 94 e7                                      ldr r3, [r4, sl]
00380164  07 80 a0 e1                                      mov r8, r7
00380168  00 30 93 e5                                      ldr r3, [r3]
0038016c  07 00 53 e1                                      cmp r3, r7
00380170  eb ff ff 8a                                      bhi #0x380124
00380174  20 40 8d e2                                      add r4, sp, #0x20
00380178  04 00 34 e5                                      ldr r0, [r4, #-4]!
0038017c  0b 10 a0 e1                                      mov r1, fp
00380180  6c fe ff eb                                      bl #0x37fb38
00380184  06 00 a0 e1                                      mov r0, r6
00380188  04 10 a0 e1                                      mov r1, r4
0038018c  00 30 96 e5                                      ldr r3, [r6]
00380190  0f e0 a0 e1                                      mov lr, pc
00380194  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00380198  24 d0 8d e2                                      add sp, sp, #0x24
0038019c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003801a0  04 00 9d e5                                      ldr r0, [sp, #4]
003801a4  41 23 0e eb                                      bl #0x708eb0
003801a8  e5 ff ff ea                                      b #0x380144
; mapping-symbol data/literal pool
003801ac  14 4a 61 00 f4 37 00 00 70 1d 00 00 04 1c 54 00  .byte 0x14, 0x4a, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x70, 0x1d, 0x00, 0x00, 0x04, 0x1c, 0x54, 0x00
003801bc  fc 0e 00 00 c4 1b 54 00                          .byte 0xfc, 0x0e, 0x00, 0x00, 0xc4, 0x1b, 0x54, 0x00

; FUNCTION 0x003801c4, declared_size=688, range_size=688, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager12InitTrophiesEv
; demangled: TrophyManager::InitTrophies()
; decoder-mode: arm
003801c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003801c8  88 62 9f e5                                      ldr r6, [pc, #0x288]
003801cc  88 92 9f e5                                      ldr sb, [pc, #0x288]
003801d0  88 12 9f e5                                      ldr r1, [pc, #0x288]
003801d4  06 60 8f e0                                      add r6, pc, r6
003801d8  09 20 96 e7                                      ldr r2, [r6, sb]
003801dc  01 30 96 e7                                      ldr r3, [r6, r1]
003801e0  4c d0 4d e2                                      sub sp, sp, #0x4c
003801e4  00 20 92 e5                                      ldr r2, [r2]
003801e8  00 30 93 e5                                      ldr r3, [r3]
003801ec  14 10 8d e5                                      str r1, [sp, #0x14]
003801f0  00 00 52 e3                                      cmp r2, #0
003801f4  00 70 a0 e1                                      mov r7, r0
003801f8  44 30 8d e5                                      str r3, [sp, #0x44]
003801fc  7e 00 00 0a                                      beq #0x3803fc
00380200  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
00380204  5c 22 9f e5                                      ldr r2, [pc, #0x25c]
00380208  5c 12 9f e5                                      ldr r1, [pc, #0x25c]
0038020c  04 30 8d e5                                      str r3, [sp, #4]
00380210  58 32 9f e5                                      ldr r3, [pc, #0x258]
00380214  08 20 8d e5                                      str r2, [sp, #8]
00380218  0c 10 8d e5                                      str r1, [sp, #0xc]
0038021c  03 30 8f e0                                      add r3, pc, r3
00380220  00 b0 a0 e3                                      mov fp, #0
00380224  10 30 8d e5                                      str r3, [sp, #0x10]
00380228  0c 20 80 e2                                      add r2, r0, #0xc
0038022c  28 30 8d e2                                      add r3, sp, #0x28
00380230  24 10 8d e2                                      add r1, sp, #0x24
00380234  18 20 8d e5                                      str r2, [sp, #0x18]
00380238  0b 50 a0 e1                                      mov r5, fp
0038023c  2c a0 8d e2                                      add sl, sp, #0x2c
00380240  00 30 8d e5                                      str r3, [sp]
00380244  1c 10 8d e5                                      str r1, [sp, #0x1c]
00380248  0e 00 00 ea                                      b #0x380288
0038024c  2b 23 0e eb                                      bl #0x708f00
00380250  08 80 97 e5                                      ldr r8, [r7, #8]
00380254  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00380258  03 00 58 e1                                      cmp r8, r3
0038025c  3e 00 00 0a                                      beq #0x38035c
00380260  00 40 88 e5                                      str r4, [r8]
00380264  08 30 97 e5                                      ldr r3, [r7, #8]
00380268  01 50 85 e2                                      add r5, r5, #1
0038026c  05 b0 a0 e1                                      mov fp, r5
00380270  04 30 83 e2                                      add r3, r3, #4
00380274  08 30 87 e5                                      str r3, [r7, #8]
00380278  09 30 96 e7                                      ldr r3, [r6, sb]
0038027c  00 30 93 e5                                      ldr r3, [r3]
00380280  05 00 53 e1                                      cmp r3, r5
00380284  5c 00 00 9a                                      bls #0x3803fc
00380288  00 10 a0 e3                                      mov r1, #0
0038028c  28 00 a0 e3                                      mov r0, #0x28
00380290  b6 40 fe eb                                      bl #0x310570
00380294  0a 00 9d e9                                      ldmib sp, {r1, r3}
00380298  00 40 a0 e1                                      mov r4, r0
0038029c  03 20 96 e7                                      ldr r2, [r6, r3]
003802a0  01 30 96 e7                                      ldr r3, [r6, r1]
003802a4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003802a8  08 20 82 e2                                      add r2, r2, #8
003802ac  00 20 80 e5                                      str r2, [r0]
003802b0  00 30 93 e5                                      ldr r3, [r3]
003802b4  04 50 80 e5                                      str r5, [r0, #4]
003802b8  00 20 a0 e3                                      mov r2, #0
003802bc  8b b2 83 e0                                      add fp, r3, fp, lsl #5
003802c0  18 30 9b e5                                      ldr r3, [fp, #0x18]
003802c4  01 80 96 e7                                      ldr r8, [r6, r1]
003802c8  08 30 84 e5                                      str r3, [r4, #8]
003802cc  04 30 9b e5                                      ldr r3, [fp, #4]
003802d0  08 00 a0 e1                                      mov r0, r8
003802d4  0c 30 84 e5                                      str r3, [r4, #0xc]
003802d8  10 30 9b e5                                      ldr r3, [fp, #0x10]
003802dc  18 30 84 e5                                      str r3, [r4, #0x18]
003802e0  1c 30 9b e5                                      ldr r3, [fp, #0x1c]
003802e4  14 30 84 e5                                      str r3, [r4, #0x14]
003802e8  14 30 9b e5                                      ldr r3, [fp, #0x14]
003802ec  10 20 c4 e5                                      strb r2, [r4, #0x10]
003802f0  1c 30 84 e5                                      str r3, [r4, #0x1c]
003802f4  0c 30 9b e5                                      ldr r3, [fp, #0xc]
003802f8  20 30 84 e5                                      str r3, [r4, #0x20]
003802fc  08 30 9b e5                                      ldr r3, [fp, #8]
00380300  24 30 84 e5                                      str r3, [r4, #0x24]
00380304  5f dd fe eb                                      bl #0x337888
00380308  10 10 9d e5                                      ldr r1, [sp, #0x10]
0038030c  00 20 9d e5                                      ldr r2, [sp]
00380310  0a 00 a0 e1                                      mov r0, sl
00380314  74 4f fe eb                                      bl #0x3140ec
00380318  08 00 a0 e1                                      mov r0, r8
0038031c  0a 10 a0 e1                                      mov r1, sl
00380320  d8 dd fe eb                                      bl #0x337a88
00380324  40 00 9d e5                                      ldr r0, [sp, #0x40]
00380328  0a 00 50 e1                                      cmp r0, sl
0038032c  c7 ff ff 0a                                      beq #0x380250
00380330  00 00 50 e3                                      cmp r0, #0
00380334  c5 ff ff 0a                                      beq #0x380250
00380338  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0038033c  01 10 60 e0                                      rsb r1, r0, r1
00380340  80 00 51 e3                                      cmp r1, #0x80
00380344  c0 ff ff 9a                                      bls #0x38024c
00380348  3c 40 fe eb                                      bl #0x310440
0038034c  08 80 97 e5                                      ldr r8, [r7, #8]
00380350  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00380354  03 00 58 e1                                      cmp r8, r3
00380358  c0 ff ff 1a                                      bne #0x380260
0038035c  04 20 97 e5                                      ldr r2, [r7, #4]
00380360  08 20 62 e0                                      rsb r2, r2, r8
00380364  42 21 a0 e1                                      asr r2, r2, #2
00380368  01 00 52 e3                                      cmp r2, #1
0038036c  02 30 82 20                                      addhs r3, r2, r2
00380370  01 30 82 32                                      addlo r3, r2, #1
00380374  07 01 73 e3                                      cmn r3, #0xc0000001
00380378  27 00 00 9a                                      bls #0x38041c
0038037c  03 31 e0 e3                                      mvn r3, #0xc0000000
00380380  03 10 a0 e1                                      mov r1, r3
00380384  18 00 9d e5                                      ldr r0, [sp, #0x18]
00380388  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0038038c  24 30 8d e5                                      str r3, [sp, #0x24]
00380390  7a fe ff eb                                      bl #0x37fd80
00380394  04 10 97 e5                                      ldr r1, [r7, #4]
00380398  00 b0 a0 e1                                      mov fp, r0
0038039c  01 80 58 e0                                      subs r8, r8, r1
003803a0  00 80 a0 01                                      moveq r8, r0
003803a4  1f 00 00 1a                                      bne #0x380428
003803a8  04 40 88 e4                                      str r4, [r8], #4
003803ac  04 00 97 e5                                      ldr r0, [r7, #4]
003803b0  0c 10 97 e5                                      ldr r1, [r7, #0xc]
003803b4  00 00 50 e3                                      cmp r0, #0
003803b8  04 00 00 0a                                      beq #0x3803d0
003803bc  01 10 60 e0                                      rsb r1, r0, r1
003803c0  03 10 c1 e3                                      bic r1, r1, #3
003803c4  80 00 51 e3                                      cmp r1, #0x80
003803c8  1a 00 00 8a                                      bhi #0x380438
003803cc  cb 22 0e eb                                      bl #0x708f00
003803d0  24 30 9d e5                                      ldr r3, [sp, #0x24]
003803d4  04 b0 87 e5                                      str fp, [r7, #4]
003803d8  08 80 87 e5                                      str r8, [r7, #8]
003803dc  03 31 8b e0                                      add r3, fp, r3, lsl #2
003803e0  0c 30 87 e5                                      str r3, [r7, #0xc]
003803e4  09 30 96 e7                                      ldr r3, [r6, sb]
003803e8  01 50 85 e2                                      add r5, r5, #1
003803ec  05 b0 a0 e1                                      mov fp, r5
003803f0  00 30 93 e5                                      ldr r3, [r3]
003803f4  05 00 53 e1                                      cmp r3, r5
003803f8  a2 ff ff 8a                                      bhi #0x380288
003803fc  14 10 9d e5                                      ldr r1, [sp, #0x14]
00380400  44 20 9d e5                                      ldr r2, [sp, #0x44]
00380404  01 30 96 e7                                      ldr r3, [r6, r1]
00380408  00 30 93 e5                                      ldr r3, [r3]
0038040c  03 00 52 e1                                      cmp r2, r3
00380410  0f 00 00 1a                                      bne #0x380454
00380414  4c d0 8d e2                                      add sp, sp, #0x4c
00380418  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038041c  03 00 52 e1                                      cmp r2, r3
00380420  d6 ff ff 9a                                      bls #0x380380
00380424  d4 ff ff ea                                      b #0x38037c
00380428  08 20 a0 e1                                      mov r2, r8
0038042c  c1 36 fe eb                                      bl #0x30df38
00380430  08 80 80 e0                                      add r8, r0, r8
00380434  db ff ff ea                                      b #0x3803a8
00380438  00 40 fe eb                                      bl #0x310440
0038043c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00380440  04 b0 87 e5                                      str fp, [r7, #4]
00380444  08 80 87 e5                                      str r8, [r7, #8]
00380448  03 31 8b e0                                      add r3, fp, r3, lsl #2
0038044c  0c 30 87 e5                                      str r3, [r7, #0xc]
00380450  e3 ff ff ea                                      b #0x3803e4
00380454  ad 37 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00380458  bc 48 61 00 fc 0e 00 00 ac 40 00 00 b4 14 00 00  .byte 0xbc, 0x48, 0x61, 0x00, 0xfc, 0x0e, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0x14, 0x00, 0x00
00380468  6c 37 00 00 84 08 00 00 7c 1a 54 00              .byte 0x6c, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x7c, 0x1a, 0x54, 0x00

; FUNCTION 0x00380474, declared_size=76, range_size=76, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManagerC1Ev
; demangled: TrophyManager::TrophyManager()
; decoder-mode: arm
00380474  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00380478  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0038047c  00 30 a0 e3                                      mov r3, #0
00380480  02 20 8f e0                                      add r2, pc, r2
00380484  01 10 92 e7                                      ldr r1, [r2, r1]
00380488  10 40 2d e9                                      push {r4, lr}
0038048c  08 10 81 e2                                      add r1, r1, #8
00380490  00 40 a0 e1                                      mov r4, r0
00380494  18 30 80 e5                                      str r3, [r0, #0x18]
00380498  0a 00 80 e8                                      stm r0, {r1, r3}
0038049c  08 30 80 e5                                      str r3, [r0, #8]
003804a0  0c 30 80 e5                                      str r3, [r0, #0xc]
003804a4  10 30 80 e5                                      str r3, [r0, #0x10]
003804a8  14 30 80 e5                                      str r3, [r0, #0x14]
003804ac  44 ff ff eb                                      bl #0x3801c4
003804b0  04 00 a0 e1                                      mov r0, r4
003804b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003804b8  10 46 61 00 7c 38 00 00                          .byte 0x10, 0x46, 0x61, 0x00, 0x7c, 0x38, 0x00, 0x00

; FUNCTION 0x003804c0, declared_size=72, range_size=72, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager14CreateInstanceEv
; demangled: TrophyManager::CreateInstance()
; decoder-mode: arm
003804c0  38 30 9f e5                                      ldr r3, [pc, #0x38]
003804c4  38 20 9f e5                                      ldr r2, [pc, #0x38]
003804c8  70 40 2d e9                                      push {r4, r5, r6, lr}
003804cc  03 30 8f e0                                      add r3, pc, r3
003804d0  02 40 93 e7                                      ldr r4, [r3, r2]
003804d4  00 30 94 e5                                      ldr r3, [r4]
003804d8  00 00 53 e3                                      cmp r3, #0
003804dc  00 00 00 0a                                      beq #0x3804e4
003804e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003804e4  04 10 a0 e3                                      mov r1, #4
003804e8  1c 00 a0 e3                                      mov r0, #0x1c
003804ec  1f 40 fe eb                                      bl #0x310570
003804f0  00 50 a0 e1                                      mov r5, r0
003804f4  de ff ff eb                                      bl #0x380474
003804f8  00 50 84 e5                                      str r5, [r4]
003804fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00380500  c4 45 61 00 70 1d 00 00                          .byte 0xc4, 0x45, 0x61, 0x00, 0x70, 0x1d, 0x00, 0x00

; FUNCTION 0x00380508, declared_size=76, range_size=76, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManagerC2Ev
; demangled: TrophyManager::TrophyManager()
; decoder-mode: arm
00380508  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0038050c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00380510  00 30 a0 e3                                      mov r3, #0
00380514  02 20 8f e0                                      add r2, pc, r2
00380518  01 10 92 e7                                      ldr r1, [r2, r1]
0038051c  10 40 2d e9                                      push {r4, lr}
00380520  08 10 81 e2                                      add r1, r1, #8
00380524  00 40 a0 e1                                      mov r4, r0
00380528  18 30 80 e5                                      str r3, [r0, #0x18]
0038052c  0a 00 80 e8                                      stm r0, {r1, r3}
00380530  08 30 80 e5                                      str r3, [r0, #8]
00380534  0c 30 80 e5                                      str r3, [r0, #0xc]
00380538  10 30 80 e5                                      str r3, [r0, #0x10]
0038053c  14 30 80 e5                                      str r3, [r0, #0x14]
00380540  1f ff ff eb                                      bl #0x3801c4
00380544  04 00 a0 e1                                      mov r0, r4
00380548  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0038054c  7c 45 61 00 7c 38 00 00                          .byte 0x7c, 0x45, 0x61, 0x00, 0x7c, 0x38, 0x00, 0x00

; FUNCTION 0x00380e48, declared_size=1392, range_size=1392, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager16TrophyUnlockedCBEi
; demangled: TrophyManager::TrophyUnlockedCB(int)
; decoder-mode: arm
00380e48  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00380e4c  28 45 9f e5                                      ldr r4, [pc, #0x528]
00380e50  28 35 9f e5                                      ldr r3, [pc, #0x528]
00380e54  28 75 9f e5                                      ldr r7, [pc, #0x528]
00380e58  04 40 8f e0                                      add r4, pc, r4
00380e5c  03 20 94 e7                                      ldr r2, [r4, r3]
00380e60  07 30 94 e7                                      ldr r3, [r4, r7]
00380e64  45 df 4d e2                                      sub sp, sp, #0x114
00380e68  00 50 92 e5                                      ldr r5, [r2]
00380e6c  00 30 93 e5                                      ldr r3, [r3]
00380e70  0c 00 8d e5                                      str r0, [sp, #0xc]
00380e74  10 10 85 e2                                      add r1, r5, #0x10
00380e78  2c 00 8d e2                                      add r0, sp, #0x2c
00380e7c  0c 31 8d e5                                      str r3, [sp, #0x10c]
00380e80  9e fb ff eb                                      bl #0x37fd00
00380e84  40 30 8d e2                                      add r3, sp, #0x40
00380e88  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00380e8c  30 10 9d e5                                      ldr r1, [sp, #0x30]
00380e90  0c 20 8d e2                                      add r2, sp, #0xc
00380e94  2d a1 ff eb                                      bl #0x369350
00380e98  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00380e9c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00380ea0  0c 00 53 e1                                      cmp r3, ip
00380ea4  c0 00 00 0a                                      beq #0x3811ac
00380ea8  0c 00 50 e1                                      cmp r0, ip
00380eac  be 00 00 0a                                      beq #0x3811ac
00380eb0  04 10 80 e2                                      add r1, r0, #4
00380eb4  01 00 5c e1                                      cmp ip, r1
00380eb8  01 00 00 0a                                      beq #0x380ec4
00380ebc  01 20 5c e0                                      subs r2, ip, r1
00380ec0  ea 00 00 1a                                      bne #0x381270
00380ec4  04 c0 4c e2                                      sub ip, ip, #4
00380ec8  05 00 a0 e1                                      mov r0, r5
00380ecc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00380ed0  30 c0 8d e5                                      str ip, [sp, #0x30]
00380ed4  21 fc ff eb                                      bl #0x37ff60
00380ed8  00 60 50 e2                                      subs r6, r0, #0
00380edc  b1 00 00 0a                                      beq #0x3811a8
00380ee0  a0 54 9f e5                                      ldr r5, [pc, #0x4a0]
00380ee4  f4 80 8d e2                                      add r8, sp, #0xf4
00380ee8  05 a0 94 e7                                      ldr sl, [r4, r5]
00380eec  0a 00 a0 e1                                      mov r0, sl
00380ef0  64 da fe eb                                      bl #0x337888
00380ef4  90 14 9f e5                                      ldr r1, [pc, #0x490]
00380ef8  54 20 8d e2                                      add r2, sp, #0x54
00380efc  08 00 a0 e1                                      mov r0, r8
00380f00  01 10 8f e0                                      add r1, pc, r1
00380f04  78 4c fe eb                                      bl #0x3140ec
00380f08  0a 00 a0 e1                                      mov r0, sl
00380f0c  08 10 a0 e1                                      mov r1, r8
00380f10  dc da fe eb                                      bl #0x337a88
00380f14  08 01 9d e5                                      ldr r0, [sp, #0x108]
00380f18  08 00 50 e1                                      cmp r0, r8
00380f1c  06 00 00 0a                                      beq #0x380f3c
00380f20  00 00 50 e3                                      cmp r0, #0
00380f24  04 00 00 0a                                      beq #0x380f3c
00380f28  f4 10 9d e5                                      ldr r1, [sp, #0xf4]
00380f2c  01 10 60 e0                                      rsb r1, r0, r1
00380f30  80 00 51 e3                                      cmp r1, #0x80
00380f34  c0 00 00 8a                                      bhi #0x38123c
00380f38  f0 1f 0e eb                                      bl #0x708f00
00380f3c  05 a0 94 e7                                      ldr sl, [r4, r5]
00380f40  dc 80 8d e2                                      add r8, sp, #0xdc
00380f44  0a 00 a0 e1                                      mov r0, sl
00380f48  4e da fe eb                                      bl #0x337888
00380f4c  3c 14 9f e5                                      ldr r1, [pc, #0x43c]
00380f50  50 20 8d e2                                      add r2, sp, #0x50
00380f54  08 00 a0 e1                                      mov r0, r8
00380f58  01 10 8f e0                                      add r1, pc, r1
00380f5c  62 4c fe eb                                      bl #0x3140ec
00380f60  0a 00 a0 e1                                      mov r0, sl
00380f64  08 10 a0 e1                                      mov r1, r8
00380f68  c6 da fe eb                                      bl #0x337a88
00380f6c  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
00380f70  08 00 50 e1                                      cmp r0, r8
00380f74  06 00 00 0a                                      beq #0x380f94
00380f78  00 00 50 e3                                      cmp r0, #0
00380f7c  04 00 00 0a                                      beq #0x380f94
00380f80  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
00380f84  01 10 60 e0                                      rsb r1, r0, r1
00380f88  80 00 51 e3                                      cmp r1, #0x80
00380f8c  ac 00 00 8a                                      bhi #0x381244
00380f90  da 1f 0e eb                                      bl #0x708f00
00380f94  05 80 94 e7                                      ldr r8, [r4, r5]
00380f98  c4 50 8d e2                                      add r5, sp, #0xc4
00380f9c  08 00 a0 e1                                      mov r0, r8
00380fa0  38 da fe eb                                      bl #0x337888
00380fa4  e8 13 9f e5                                      ldr r1, [pc, #0x3e8]
00380fa8  4c 20 8d e2                                      add r2, sp, #0x4c
00380fac  05 00 a0 e1                                      mov r0, r5
00380fb0  01 10 8f e0                                      add r1, pc, r1
00380fb4  4c 4c fe eb                                      bl #0x3140ec
00380fb8  08 00 a0 e1                                      mov r0, r8
00380fbc  05 10 a0 e1                                      mov r1, r5
00380fc0  b0 da fe eb                                      bl #0x337a88
00380fc4  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
00380fc8  05 00 50 e1                                      cmp r0, r5
00380fcc  06 00 00 0a                                      beq #0x380fec
00380fd0  00 00 50 e3                                      cmp r0, #0
00380fd4  04 00 00 0a                                      beq #0x380fec
00380fd8  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
00380fdc  01 10 60 e0                                      rsb r1, r0, r1
00380fe0  80 00 51 e3                                      cmp r1, #0x80
00380fe4  98 00 00 8a                                      bhi #0x38124c
00380fe8  c4 1f 0e eb                                      bl #0x708f00
00380fec  a4 53 9f e5                                      ldr r5, [pc, #0x3a4]
00380ff0  01 30 a0 e3                                      mov r3, #1
00380ff4  ac a0 8d e2                                      add sl, sp, #0xac
00380ff8  05 50 8f e0                                      add r5, pc, r5
00380ffc  10 30 c6 e5                                      strb r3, [r6, #0x10]
00381000  94 80 8d e2                                      add r8, sp, #0x94
00381004  05 10 a0 e1                                      mov r1, r5
00381008  48 20 8d e2                                      add r2, sp, #0x48
0038100c  0a 00 a0 e1                                      mov r0, sl
00381010  35 4c fe eb                                      bl #0x3140ec
00381014  05 10 a0 e1                                      mov r1, r5
00381018  44 20 8d e2                                      add r2, sp, #0x44
0038101c  08 00 a0 e1                                      mov r0, r8
00381020  31 4c fe eb                                      bl #0x3140ec
00381024  58 50 8d e2                                      add r5, sp, #0x58
00381028  00 c0 a0 e3                                      mov ip, #0
0038102c  0c 30 a0 e1                                      mov r3, ip
00381030  05 00 a0 e1                                      mov r0, r5
00381034  0a 10 a0 e1                                      mov r1, sl
00381038  08 20 a0 e1                                      mov r2, r8
0038103c  00 c0 8d e5                                      str ip, [sp]
00381040  04 c0 8d e5                                      str ip, [sp, #4]
00381044  a0 ca 02 eb                                      bl #0x433acc
00381048  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
0038104c  08 00 50 e1                                      cmp r0, r8
00381050  06 00 00 0a                                      beq #0x381070
00381054  00 00 50 e3                                      cmp r0, #0
00381058  04 00 00 0a                                      beq #0x381070
0038105c  94 10 9d e5                                      ldr r1, [sp, #0x94]
00381060  01 10 60 e0                                      rsb r1, r0, r1
00381064  80 00 51 e3                                      cmp r1, #0x80
00381068  79 00 00 8a                                      bhi #0x381254
0038106c  a3 1f 0e eb                                      bl #0x708f00
00381070  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
00381074  0a 00 50 e1                                      cmp r0, sl
00381078  06 00 00 0a                                      beq #0x381098
0038107c  00 00 50 e3                                      cmp r0, #0
00381080  04 00 00 0a                                      beq #0x381098
00381084  ac 10 9d e5                                      ldr r1, [sp, #0xac]
00381088  01 10 60 e0                                      rsb r1, r0, r1
0038108c  80 00 51 e3                                      cmp r1, #0x80
00381090  71 00 00 8a                                      bhi #0x38125c
00381094  99 1f 0e eb                                      bl #0x708f00
00381098  08 10 96 e5                                      ldr r1, [r6, #8]
0038109c  01 00 71 e3                                      cmn r1, #1
003810a0  51 00 00 0a                                      beq #0x3811ec
003810a4  f0 82 9f e5                                      ldr r8, [pc, #0x2f0]
003810a8  08 30 94 e7                                      ldr r3, [r4, r8]
003810ac  34 00 93 e5                                      ldr r0, [r3, #0x34]
003810b0  89 1f 06 eb                                      bl #0x508edc
003810b4  00 a0 a0 e1                                      mov sl, r0
003810b8  65 33 fe eb                                      bl #0x30de54
003810bc  0a 10 a0 e1                                      mov r1, sl
003810c0  00 20 8a e0                                      add r2, sl, r0
003810c4  05 00 a0 e1                                      mov r0, r5
003810c8  44 3e fe eb                                      bl #0x3109e0
003810cc  0c 10 96 e5                                      ldr r1, [r6, #0xc]
003810d0  01 00 71 e3                                      cmn r1, #1
003810d4  4e 00 00 1a                                      bne #0x381214
003810d8  c0 22 9f e5                                      ldr r2, [pc, #0x2c0]
003810dc  02 20 8f e0                                      add r2, pc, r2
003810e0  02 a0 a0 e1                                      mov sl, r2
003810e4  0a 10 a0 e1                                      mov r1, sl
003810e8  18 00 85 e2                                      add r0, r5, #0x18
003810ec  3b 3e fe eb                                      bl #0x3109e0
003810f0  14 30 96 e5                                      ldr r3, [r6, #0x14]
003810f4  08 00 94 e7                                      ldr r0, [r4, r8]
003810f8  88 30 8d e5                                      str r3, [sp, #0x88]
003810fc  18 30 96 e5                                      ldr r3, [r6, #0x18]
00381100  8c 30 8d e5                                      str r3, [sp, #0x8c]
00381104  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
00381108  90 30 8d e5                                      str r3, [sp, #0x90]
0038110c  20 79 fe eb                                      bl #0x31f594
00381110  00 00 50 e3                                      cmp r0, #0
00381114  0d 00 00 0a                                      beq #0x381150
00381118  84 62 9f e5                                      ldr r6, [pc, #0x284]
0038111c  05 10 a0 e1                                      mov r1, r5
00381120  06 60 94 e7                                      ldr r6, [r4, r6]
00381124  04 80 86 e2                                      add r8, r6, #4
00381128  08 00 a0 e1                                      mov r0, r8
0038112c  36 ff ff eb                                      bl #0x380e0c
00381130  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00381134  10 c0 8d e2                                      add ip, sp, #0x10
00381138  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0038113c  14 00 86 e2                                      add r0, r6, #0x14
00381140  0c 10 a0 e1                                      mov r1, ip
00381144  34 fa ff eb                                      bl #0x37fa1c
00381148  01 00 50 e3                                      cmp r0, #1
0038114c  4a 00 00 0a                                      beq #0x38127c
00381150  c5 fb ff eb                                      bl #0x38006c
00381154  84 00 9d e5                                      ldr r0, [sp, #0x84]
00381158  18 30 85 e2                                      add r3, r5, #0x18
0038115c  03 00 50 e1                                      cmp r0, r3
00381160  06 00 00 0a                                      beq #0x381180
00381164  00 00 50 e3                                      cmp r0, #0
00381168  04 00 00 0a                                      beq #0x381180
0038116c  70 10 9d e5                                      ldr r1, [sp, #0x70]
00381170  01 10 60 e0                                      rsb r1, r0, r1
00381174  80 00 51 e3                                      cmp r1, #0x80
00381178  7a 00 00 8a                                      bhi #0x381368
0038117c  5f 1f 0e eb                                      bl #0x708f00
00381180  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00381184  05 00 50 e1                                      cmp r0, r5
00381188  06 00 00 0a                                      beq #0x3811a8
0038118c  00 00 50 e3                                      cmp r0, #0
00381190  04 00 00 0a                                      beq #0x3811a8
00381194  58 10 9d e5                                      ldr r1, [sp, #0x58]
00381198  01 10 60 e0                                      rsb r1, r0, r1
0038119c  80 00 51 e3                                      cmp r1, #0x80
003811a0  6d 00 00 8a                                      bhi #0x38135c
003811a4  55 1f 0e eb                                      bl #0x708f00
003811a8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003811ac  00 00 53 e3                                      cmp r3, #0
003811b0  06 00 00 0a                                      beq #0x3811d0
003811b4  34 10 9d e5                                      ldr r1, [sp, #0x34]
003811b8  01 10 63 e0                                      rsb r1, r3, r1
003811bc  03 10 c1 e3                                      bic r1, r1, #3
003811c0  80 00 51 e3                                      cmp r1, #0x80
003811c4  19 00 00 8a                                      bhi #0x381230
003811c8  03 00 a0 e1                                      mov r0, r3
003811cc  4b 1f 0e eb                                      bl #0x708f00
003811d0  07 30 94 e7                                      ldr r3, [r4, r7]
003811d4  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
003811d8  00 30 93 e5                                      ldr r3, [r3]
003811dc  03 00 52 e1                                      cmp r2, r3
003811e0  64 00 00 1a                                      bne #0x381378
003811e4  45 df 8d e2                                      add sp, sp, #0x114
003811e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003811ec  b4 21 9f e5                                      ldr r2, [pc, #0x1b4]
003811f0  05 00 a0 e1                                      mov r0, r5
003811f4  a0 81 9f e5                                      ldr r8, [pc, #0x1a0]
003811f8  02 20 8f e0                                      add r2, pc, r2
003811fc  02 a0 a0 e1                                      mov sl, r2
00381200  0a 10 a0 e1                                      mov r1, sl
00381204  f5 3d fe eb                                      bl #0x3109e0
00381208  0c 10 96 e5                                      ldr r1, [r6, #0xc]
0038120c  01 00 71 e3                                      cmn r1, #1
00381210  b0 ff ff 0a                                      beq #0x3810d8
00381214  08 30 94 e7                                      ldr r3, [r4, r8]
00381218  34 00 93 e5                                      ldr r0, [r3, #0x34]
0038121c  2e 1f 06 eb                                      bl #0x508edc
00381220  00 a0 a0 e1                                      mov sl, r0
00381224  0a 33 fe eb                                      bl #0x30de54
00381228  00 20 8a e0                                      add r2, sl, r0
0038122c  ac ff ff ea                                      b #0x3810e4
00381230  03 00 a0 e1                                      mov r0, r3
00381234  81 3c fe eb                                      bl #0x310440
00381238  e4 ff ff ea                                      b #0x3811d0
0038123c  7f 3c fe eb                                      bl #0x310440
00381240  3d ff ff ea                                      b #0x380f3c
00381244  7d 3c fe eb                                      bl #0x310440
00381248  51 ff ff ea                                      b #0x380f94
0038124c  7b 3c fe eb                                      bl #0x310440
00381250  65 ff ff ea                                      b #0x380fec
00381254  79 3c fe eb                                      bl #0x310440
00381258  84 ff ff ea                                      b #0x381070
0038125c  77 3c fe eb                                      bl #0x310440
00381260  08 10 96 e5                                      ldr r1, [r6, #8]
00381264  01 00 71 e3                                      cmn r1, #1
00381268  8d ff ff 1a                                      bne #0x3810a4
0038126c  de ff ff ea                                      b #0x3811ec
00381270  30 33 fe eb                                      bl #0x30df38
00381274  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00381278  11 ff ff ea                                      b #0x380ec4
0038127c  28 31 9f e5                                      ldr r3, [pc, #0x128]
00381280  03 30 94 e7                                      ldr r3, [r4, r3]
00381284  00 a0 93 e5                                      ldr sl, [r3]
00381288  ff ad 02 eb                                      bl #0x42ca8c
0038128c  3e ae 02 eb                                      bl #0x42cb8c
00381290  00 80 50 e2                                      subs r8, r0, #0
00381294  ad ff ff 0a                                      beq #0x381150
00381298  10 61 9f e5                                      ldr r6, [pc, #0x110]
0038129c  06 30 94 e7                                      ldr r3, [r4, r6]
003812a0  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
003812a4  00 00 52 e3                                      cmp r2, #0
003812a8  0c 00 00 0a                                      beq #0x3812e0
003812ac  28 00 93 e5                                      ldr r0, [r3, #0x28]
003812b0  04 30 d0 e5                                      ldrb r3, [r0, #4]
003812b4  00 00 53 e3                                      cmp r3, #0
003812b8  0f 00 00 1a                                      bne #0x3812fc
003812bc  00 10 90 e5                                      ldr r1, [r0]
003812c0  01 10 41 e2                                      sub r1, r1, #1
003812c4  00 00 51 e3                                      cmp r1, #0
003812c8  00 10 80 e5                                      str r1, [r0]
003812cc  27 00 00 0a                                      beq #0x381370
003812d0  06 30 94 e7                                      ldr r3, [r4, r6]
003812d4  00 20 a0 e3                                      mov r2, #0
003812d8  2c 20 83 e5                                      str r2, [r3, #0x2c]
003812dc  28 20 83 e5                                      str r2, [r3, #0x28]
003812e0  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
003812e4  06 00 94 e7                                      ldr r0, [r4, r6]
003812e8  08 20 a0 e1                                      mov r2, r8
003812ec  03 10 94 e7                                      ldr r1, [r4, r3]
003812f0  00 30 a0 e3                                      mov r3, #0
003812f4  00 10 91 e5                                      ldr r1, [r1]
003812f8  68 9a 02 eb                                      bl #0x427ca0
003812fc  06 00 94 e7                                      ldr r0, [r4, r6]
00381300  92 9a 02 eb                                      bl #0x427d50
00381304  00 c0 a0 e3                                      mov ip, #0
00381308  20 c0 cd e5                                      strb ip, [sp, #0x20]
0038130c  00 20 a0 e3                                      mov r2, #0
00381310  00 30 a0 e3                                      mov r3, #0
00381314  02 c0 a0 e3                                      mov ip, #2
00381318  f8 23 cd e1                                      strd r2, r3, [sp, #0x38]
0038131c  21 c0 cd e5                                      strb ip, [sp, #0x21]
00381320  00 c0 a0 e3                                      mov ip, #0
00381324  24 c0 8d e5                                      str ip, [sp, #0x24]
00381328  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0038132c  20 60 8d e2                                      add r6, sp, #0x20
00381330  00 10 a0 e1                                      mov r1, r0
00381334  08 c0 86 e5                                      str ip, [r6, #8]
00381338  08 00 a0 e1                                      mov r0, r8
0038133c  01 c0 a0 e3                                      mov ip, #1
00381340  0a 20 a0 e1                                      mov r2, sl
00381344  06 30 a0 e1                                      mov r3, r6
00381348  00 c0 8d e5                                      str ip, [sp]
0038134c  ae aa 10 eb                                      bl #0x7abe0c
00381350  06 00 a0 e1                                      mov r0, r6
00381354  72 57 10 eb                                      bl #0x797124
00381358  7c ff ff ea                                      b #0x381150
0038135c  37 3c fe eb                                      bl #0x310440
00381360  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00381364  90 ff ff ea                                      b #0x3811ac
00381368  34 3c fe eb                                      bl #0x310440
0038136c  83 ff ff ea                                      b #0x381180
00381370  f0 45 0f eb                                      bl #0x752b38
00381374  d5 ff ff ea                                      b #0x3812d0
00381378  e4 33 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038137c  38 3c 61 00 70 1d 00 00 ac 40 00 00 84 08 00 00  .byte 0x38, 0x3c, 0x61, 0x00, 0x70, 0x1d, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
0038138c  98 0d 54 00 40 0d 54 00 e8 0c 54 00 10 a8 54 00  .byte 0x98, 0x0d, 0x54, 0x00, 0x40, 0x0d, 0x54, 0x00, 0xe8, 0x0c, 0x54, 0x00, 0x10, 0xa8, 0x54, 0x00
0038139c  f4 37 00 00 2c a7 54 00 bc 25 00 00 10 a6 54 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x2c, 0xa7, 0x54, 0x00, 0xbc, 0x25, 0x00, 0x00, 0x10, 0xa6, 0x54, 0x00
003813ac  90 2c 00 00 08 45 00 00 a4 2d 00 00              .byte 0x90, 0x2c, 0x00, 0x00, 0x08, 0x45, 0x00, 0x00, 0xa4, 0x2d, 0x00, 0x00

; FUNCTION 0x003813b8, declared_size=272, range_size=272, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager12UnlockTrophyEi
; demangled: TrophyManager::UnlockTrophy(int)
; decoder-mode: arm
003813b8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003813bc  00 50 51 e2                                      subs r5, r1, #0
003813c0  0c d0 4d e2                                      sub sp, sp, #0xc
003813c4  00 40 a0 e1                                      mov r4, r0
003813c8  02 00 00 ba                                      blt #0x3813d8
003813cc  21 fb ff eb                                      bl #0x380058
003813d0  00 00 50 e3                                      cmp r0, #0
003813d4  01 00 00 0a                                      beq #0x3813e0
003813d8  0c d0 8d e2                                      add sp, sp, #0xc
003813dc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003813e0  04 00 a0 e1                                      mov r0, r4
003813e4  05 10 a0 e1                                      mov r1, r5
003813e8  7d f9 ff eb                                      bl #0x37f9e4
003813ec  00 00 50 e3                                      cmp r0, #0
003813f0  f8 ff ff 1a                                      bne #0x3813d8
003813f4  14 60 94 e5                                      ldr r6, [r4, #0x14]
003813f8  18 30 94 e5                                      ldr r3, [r4, #0x18]
003813fc  03 00 56 e1                                      cmp r6, r3
00381400  06 00 00 0a                                      beq #0x381420
00381404  00 50 86 e5                                      str r5, [r6]
00381408  14 30 94 e5                                      ldr r3, [r4, #0x14]
0038140c  04 30 83 e2                                      add r3, r3, #4
00381410  14 30 84 e5                                      str r3, [r4, #0x14]
00381414  05 00 a0 e1                                      mov r0, r5
00381418  8a fe ff eb                                      bl #0x380e48
0038141c  ed ff ff ea                                      b #0x3813d8
00381420  10 30 94 e5                                      ldr r3, [r4, #0x10]
00381424  06 30 63 e0                                      rsb r3, r3, r6
00381428  43 31 a0 e1                                      asr r3, r3, #2
0038142c  01 00 53 e3                                      cmp r3, #1
00381430  03 10 83 20                                      addhs r1, r3, r3
00381434  01 10 83 32                                      addlo r1, r3, #1
00381438  07 01 71 e3                                      cmn r1, #0xc0000001
0038143c  1d 00 00 8a                                      bhi #0x3814b8
00381440  01 00 53 e1                                      cmp r3, r1
00381444  1b 00 00 8a                                      bhi #0x3814b8
00381448  08 20 8d e2                                      add r2, sp, #8
0038144c  04 10 22 e5                                      str r1, [r2, #-4]!
00381450  18 00 84 e2                                      add r0, r4, #0x18
00381454  40 7a ff eb                                      bl #0x35fd5c
00381458  10 10 94 e5                                      ldr r1, [r4, #0x10]
0038145c  00 70 a0 e1                                      mov r7, r0
00381460  01 60 56 e0                                      subs r6, r6, r1
00381464  00 60 a0 01                                      moveq r6, r0
00381468  02 00 00 0a                                      beq #0x381478
0038146c  06 20 a0 e1                                      mov r2, r6
00381470  b0 32 fe eb                                      bl #0x30df38
00381474  06 60 80 e0                                      add r6, r0, r6
00381478  04 50 86 e4                                      str r5, [r6], #4
0038147c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00381480  18 10 94 e5                                      ldr r1, [r4, #0x18]
00381484  00 00 50 e3                                      cmp r0, #0
00381488  04 00 00 0a                                      beq #0x3814a0
0038148c  01 10 60 e0                                      rsb r1, r0, r1
00381490  03 10 c1 e3                                      bic r1, r1, #3
00381494  80 00 51 e3                                      cmp r1, #0x80
00381498  08 00 00 8a                                      bhi #0x3814c0
0038149c  97 1e 0e eb                                      bl #0x708f00
003814a0  04 30 9d e5                                      ldr r3, [sp, #4]
003814a4  10 70 84 e5                                      str r7, [r4, #0x10]
003814a8  14 60 84 e5                                      str r6, [r4, #0x14]
003814ac  03 71 87 e0                                      add r7, r7, r3, lsl #2
003814b0  18 70 84 e5                                      str r7, [r4, #0x18]
003814b4  d6 ff ff ea                                      b #0x381414
003814b8  03 11 e0 e3                                      mvn r1, #0xc0000000
003814bc  e1 ff ff ea                                      b #0x381448
003814c0  de 3b fe eb                                      bl #0x310440
003814c4  f5 ff ff ea                                      b #0x3814a0

; FUNCTION 0x003814c8, declared_size=84, range_size=84, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager21DBG_UnlockAllTrophiesEv
; demangled: TrophyManager::DBG_UnlockAllTrophies()
; decoder-mode: arm
003814c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003814cc  40 50 9f e5                                      ldr r5, [pc, #0x40]
003814d0  40 60 9f e5                                      ldr r6, [pc, #0x40]
003814d4  00 70 a0 e1                                      mov r7, r0
003814d8  05 50 8f e0                                      add r5, pc, r5
003814dc  06 30 95 e7                                      ldr r3, [r5, r6]
003814e0  00 30 93 e5                                      ldr r3, [r3]
003814e4  00 00 53 e3                                      cmp r3, #0
003814e8  08 00 00 0a                                      beq #0x381510
003814ec  00 40 a0 e3                                      mov r4, #0
003814f0  04 10 a0 e1                                      mov r1, r4
003814f4  07 00 a0 e1                                      mov r0, r7
003814f8  ae ff ff eb                                      bl #0x3813b8
003814fc  06 30 95 e7                                      ldr r3, [r5, r6]
00381500  01 40 84 e2                                      add r4, r4, #1
00381504  00 30 93 e5                                      ldr r3, [r3]
00381508  04 00 53 e1                                      cmp r3, r4
0038150c  f7 ff ff 8a                                      bhi #0x3814f0
00381510  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00381514  b8 35 61 00 fc 0e 00 00                          .byte 0xb8, 0x35, 0x61, 0x00, 0xfc, 0x0e, 0x00, 0x00

; FUNCTION 0x0038151c, declared_size=332, range_size=332, mode=arm
; class-group: TrophyManager
; alias: _ZN13TrophyManager12LoadTrophiesEv
; demangled: TrophyManager::LoadTrophies()
; decoder-mode: arm
0038151c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00381520  2c 41 9f e5                                      ldr r4, [pc, #0x12c]
00381524  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
00381528  1c d0 4d e2                                      sub sp, sp, #0x1c
0038152c  04 40 8f e0                                      add r4, pc, r4
00381530  03 30 94 e7                                      ldr r3, [r4, r3]
00381534  00 60 a0 e1                                      mov r6, r0
00381538  10 30 93 e5                                      ldr r3, [r3, #0x10]
0038153c  34 50 93 e5                                      ldr r5, [r3, #0x34]
00381540  00 00 55 e3                                      cmp r5, #0
00381544  40 00 00 0a                                      beq #0x38164c
00381548  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
0038154c  00 30 95 e5                                      ldr r3, [r5]
00381550  05 00 a0 e1                                      mov r0, r5
00381554  01 10 8f e0                                      add r1, pc, r1
00381558  00 20 a0 e3                                      mov r2, #0
0038155c  0f e0 a0 e1                                      mov lr, pc
00381560  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00381564  00 30 50 e2                                      subs r3, r0, #0
00381568  37 00 00 0a                                      beq #0x38164c
0038156c  04 10 8d e2                                      add r1, sp, #4
00381570  00 70 a0 e3                                      mov r7, #0
00381574  08 20 81 e2                                      add r2, r1, #8
00381578  e0 80 9f e5                                      ldr r8, [pc, #0xe0]
0038157c  04 70 82 e4                                      str r7, [r2], #4
00381580  00 70 82 e5                                      str r7, [r2]
00381584  14 30 8d e5                                      str r3, [sp, #0x14]
00381588  04 70 8d e5                                      str r7, [sp, #4]
0038158c  08 70 8d e5                                      str r7, [sp, #8]
00381590  94 f9 ff eb                                      bl #0x37fbe8
00381594  08 30 94 e7                                      ldr r3, [r4, r8]
00381598  00 30 93 e5                                      ldr r3, [r3]
0038159c  07 00 53 e1                                      cmp r3, r7
003815a0  24 00 00 0a                                      beq #0x381638
003815a4  b8 90 9f e5                                      ldr sb, [pc, #0xb8]
003815a8  07 b0 a0 e1                                      mov fp, r7
003815ac  01 a0 a0 e3                                      mov sl, #1
003815b0  09 90 8f e0                                      add sb, pc, sb
003815b4  ab 32 a0 e1                                      lsr r3, fp, #5
003815b8  18 20 8d e2                                      add r2, sp, #0x18
003815bc  03 31 82 e0                                      add r3, r2, r3, lsl #2
003815c0  14 30 13 e5                                      ldr r3, [r3, #-0x14]
003815c4  1f b0 0b e2                                      and fp, fp, #0x1f
003815c8  1a 3b 13 e0                                      ands r3, r3, sl, lsl fp
003815cc  10 00 00 1a                                      bne #0x381614
003815d0  08 30 94 e7                                      ldr r3, [r4, r8]
003815d4  01 70 87 e2                                      add r7, r7, #1
003815d8  07 b0 a0 e1                                      mov fp, r7
003815dc  00 30 93 e5                                      ldr r3, [r3]
003815e0  07 00 53 e1                                      cmp r3, r7
003815e4  13 00 00 9a                                      bls #0x381638
003815e8  7f 00 57 e3                                      cmp r7, #0x7f
003815ec  f0 ff ff 9a                                      bls #0x3815b4
003815f0  09 00 a0 e1                                      mov r0, sb
003815f4  2d 1e 0e eb                                      bl #0x708eb0
003815f8  ab 32 a0 e1                                      lsr r3, fp, #5
003815fc  18 20 8d e2                                      add r2, sp, #0x18
00381600  03 31 82 e0                                      add r3, r2, r3, lsl #2
00381604  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00381608  1f b0 0b e2                                      and fp, fp, #0x1f
0038160c  1a 3b 13 e0                                      ands r3, r3, sl, lsl fp
00381610  ee ff ff 0a                                      beq #0x3815d0
00381614  07 10 a0 e1                                      mov r1, r7
00381618  06 00 a0 e1                                      mov r0, r6
0038161c  65 ff ff eb                                      bl #0x3813b8
00381620  08 30 94 e7                                      ldr r3, [r4, r8]
00381624  01 70 87 e2                                      add r7, r7, #1
00381628  07 b0 a0 e1                                      mov fp, r7
0038162c  00 30 93 e5                                      ldr r3, [r3]
00381630  07 00 53 e1                                      cmp r3, r7
00381634  eb ff ff 8a                                      bhi #0x3815e8
00381638  05 00 a0 e1                                      mov r0, r5
0038163c  00 30 95 e5                                      ldr r3, [r5]
00381640  14 10 8d e2                                      add r1, sp, #0x14
00381644  0f e0 a0 e1                                      mov lr, pc
00381648  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0038164c  1c d0 8d e2                                      add sp, sp, #0x1c
00381650  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00381654  64 35 61 00 f4 37 00 00 5c 07 54 00 fc 0e 00 00  .byte 0x64, 0x35, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x5c, 0x07, 0x54, 0x00, 0xfc, 0x0e, 0x00, 0x00
00381664  18 07 54 00                                      .byte 0x18, 0x07, 0x54, 0x00
