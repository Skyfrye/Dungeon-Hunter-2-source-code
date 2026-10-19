; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042b7f4, declared_size=36, range_size=36, mode=arm
; class-group: MenuLeaderboard
; alias: _ZN15MenuLeaderboard4HideEv
; demangled: MenuLeaderboard::Hide()
; decoder-mode: arm
0042b7f4  14 30 9f e5                                      ldr r3, [pc, #0x14]
0042b7f8  14 20 9f e5                                      ldr r2, [pc, #0x14]
0042b7fc  03 30 8f e0                                      add r3, pc, r3
0042b800  02 20 93 e7                                      ldr r2, [r3, r2]
0042b804  00 30 a0 e3                                      mov r3, #0
0042b808  00 30 c2 e5                                      strb r3, [r2]
0042b80c  b8 e4 ff ea                                      b #0x424af4
; mapping-symbol data/literal pool
0042b810  94 92 56 00 c8 43 00 00                          .byte 0x94, 0x92, 0x56, 0x00, 0xc8, 0x43, 0x00, 0x00

; FUNCTION 0x0042b818, declared_size=4, range_size=4, mode=arm
; class-group: MenuLeaderboard
; alias: _ZN15MenuLeaderboard4ShowEv
; demangled: MenuLeaderboard::Show()
; decoder-mode: arm
0042b818  0c e7 ff ea                                      b #0x425450

; FUNCTION 0x0042b81c, declared_size=52, range_size=52, mode=arm
; class-group: MenuLeaderboard
; alias: _ZN15MenuLeaderboardD1Ev
; demangled: MenuLeaderboard::~MenuLeaderboard()
; decoder-mode: arm
0042b81c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042b820  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042b824  10 40 2d e9                                      push {r4, lr}
0042b828  03 30 8f e0                                      add r3, pc, r3
0042b82c  02 20 93 e7                                      ldr r2, [r3, r2]
0042b830  00 40 a0 e1                                      mov r4, r0
0042b834  08 20 82 e2                                      add r2, r2, #8
0042b838  00 20 80 e5                                      str r2, [r0]
0042b83c  4c dc ff eb                                      bl #0x422974
0042b840  04 00 a0 e1                                      mov r0, r4
0042b844  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042b848  68 92 56 00 2c 41 00 00                          .byte 0x68, 0x92, 0x56, 0x00, 0x2c, 0x41, 0x00, 0x00

; FUNCTION 0x0042b850, declared_size=28, range_size=28, mode=arm
; class-group: MenuLeaderboard
; alias: _ZN15MenuLeaderboardD0Ev
; demangled: MenuLeaderboard::~MenuLeaderboard()
; decoder-mode: arm
0042b850  10 40 2d e9                                      push {r4, lr}
0042b854  00 40 a0 e1                                      mov r4, r0
0042b858  ef ff ff eb                                      bl #0x42b81c
0042b85c  04 00 a0 e1                                      mov r0, r4
0042b860  f6 92 fb eb                                      bl #0x310440
0042b864  04 00 a0 e1                                      mov r0, r4
0042b868  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0042b86c, declared_size=52, range_size=52, mode=arm
; class-group: MenuLeaderboard
; alias: _ZN15MenuLeaderboardD2Ev
; demangled: MenuLeaderboard::~MenuLeaderboard()
; decoder-mode: arm
0042b86c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042b870  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042b874  10 40 2d e9                                      push {r4, lr}
0042b878  03 30 8f e0                                      add r3, pc, r3
0042b87c  02 20 93 e7                                      ldr r2, [r3, r2]
0042b880  00 40 a0 e1                                      mov r4, r0
0042b884  08 20 82 e2                                      add r2, r2, #8
0042b888  00 20 80 e5                                      str r2, [r0]
0042b88c  38 dc ff eb                                      bl #0x422974
0042b890  04 00 a0 e1                                      mov r0, r4
0042b894  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042b898  18 92 56 00 2c 41 00 00                          .byte 0x18, 0x92, 0x56, 0x00, 0x2c, 0x41, 0x00, 0x00

; FUNCTION 0x0042b8a0, declared_size=76, range_size=76, mode=arm
; class-group: MenuLeaderboard
; alias: _ZN15MenuLeaderboardC1Ev
; demangled: MenuLeaderboard::MenuLeaderboard()
; decoder-mode: arm
0042b8a0  38 10 9f e5                                      ldr r1, [pc, #0x38]
0042b8a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0042b8a8  01 10 8f e0                                      add r1, pc, r1
0042b8ac  30 40 9f e5                                      ldr r4, [pc, #0x30]
0042b8b0  00 50 a0 e1                                      mov r5, r0
0042b8b4  51 ee ff eb                                      bl #0x427200
0042b8b8  28 30 9f e5                                      ldr r3, [pc, #0x28]
0042b8bc  04 40 8f e0                                      add r4, pc, r4
0042b8c0  03 30 94 e7                                      ldr r3, [r4, r3]
0042b8c4  08 30 83 e2                                      add r3, r3, #8
0042b8c8  00 30 85 e5                                      str r3, [r5]
0042b8cc  6e 04 00 eb                                      bl #0x42ca8c
0042b8d0  05 10 a0 e1                                      mov r1, r5
0042b8d4  6e 0d 00 eb                                      bl #0x42ee94
0042b8d8  05 00 a0 e1                                      mov r0, r5
0042b8dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042b8e0  28 e4 49 00 d4 91 56 00 2c 41 00 00              .byte 0x28, 0xe4, 0x49, 0x00, 0xd4, 0x91, 0x56, 0x00, 0x2c, 0x41, 0x00, 0x00

; FUNCTION 0x0042b8ec, declared_size=132, range_size=132, mode=arm
; class-group: MenuLeaderboard
; alias: _ZN15MenuLeaderboard11GetInstanceEv
; demangled: MenuLeaderboard::GetInstance()
; decoder-mode: arm
0042b8ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0042b8f0  64 50 9f e5                                      ldr r5, [pc, #0x64]
0042b8f4  64 40 9f e5                                      ldr r4, [pc, #0x64]
0042b8f8  05 50 8f e0                                      add r5, pc, r5
0042b8fc  00 30 95 e5                                      ldr r3, [r5]
0042b900  04 40 8f e0                                      add r4, pc, r4
0042b904  01 00 13 e3                                      tst r3, #1
0042b908  03 00 00 0a                                      beq #0x42b91c
0042b90c  50 00 9f e5                                      ldr r0, [pc, #0x50]
0042b910  00 00 8f e0                                      add r0, pc, r0
0042b914  04 00 80 e2                                      add r0, r0, #4
0042b918  70 80 bd e8                                      pop {r4, r5, r6, pc}
0042b91c  05 00 a0 e1                                      mov r0, r5
0042b920  91 8b fb eb                                      bl #0x30e76c
0042b924  00 00 50 e3                                      cmp r0, #0
0042b928  f7 ff ff 0a                                      beq #0x42b90c
0042b92c  04 60 85 e2                                      add r6, r5, #4
0042b930  06 00 a0 e1                                      mov r0, r6
0042b934  d9 ff ff eb                                      bl #0x42b8a0
0042b938  05 00 a0 e1                                      mov r0, r5
0042b93c  3e 8c fb eb                                      bl #0x30ea3c
0042b940  20 30 9f e5                                      ldr r3, [pc, #0x20]
0042b944  06 00 a0 e1                                      mov r0, r6
0042b948  03 10 94 e7                                      ldr r1, [r4, r3]
0042b94c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0042b950  03 20 94 e7                                      ldr r2, [r4, r3]
0042b954  6a 8a fb eb                                      bl #0x30e304
0042b958  eb ff ff ea                                      b #0x42b90c
; mapping-symbol data/literal pool
0042b95c  ec 96 57 00 90 91 56 00 d4 96 57 00 fc 24 00 00  .byte 0xec, 0x96, 0x57, 0x00, 0x90, 0x91, 0x56, 0x00, 0xd4, 0x96, 0x57, 0x00, 0xfc, 0x24, 0x00, 0x00
0042b96c  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0042b970, declared_size=76, range_size=76, mode=arm
; class-group: MenuLeaderboard
; alias: _ZN15MenuLeaderboardC2Ev
; demangled: MenuLeaderboard::MenuLeaderboard()
; decoder-mode: arm
0042b970  38 10 9f e5                                      ldr r1, [pc, #0x38]
0042b974  70 40 2d e9                                      push {r4, r5, r6, lr}
0042b978  01 10 8f e0                                      add r1, pc, r1
0042b97c  30 40 9f e5                                      ldr r4, [pc, #0x30]
0042b980  00 50 a0 e1                                      mov r5, r0
0042b984  1d ee ff eb                                      bl #0x427200
0042b988  28 30 9f e5                                      ldr r3, [pc, #0x28]
0042b98c  04 40 8f e0                                      add r4, pc, r4
0042b990  03 30 94 e7                                      ldr r3, [r4, r3]
0042b994  08 30 83 e2                                      add r3, r3, #8
0042b998  00 30 85 e5                                      str r3, [r5]
0042b99c  3a 04 00 eb                                      bl #0x42ca8c
0042b9a0  05 10 a0 e1                                      mov r1, r5
0042b9a4  3a 0d 00 eb                                      bl #0x42ee94
0042b9a8  05 00 a0 e1                                      mov r0, r5
0042b9ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042b9b0  58 e3 49 00 04 91 56 00 2c 41 00 00              .byte 0x58, 0xe3, 0x49, 0x00, 0x04, 0x91, 0x56, 0x00, 0x2c, 0x41, 0x00, 0x00
