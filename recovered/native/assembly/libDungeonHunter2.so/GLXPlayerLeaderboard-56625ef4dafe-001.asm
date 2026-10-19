; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00832198, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard35getCurrentPlayerLeaderboardPositionEv
; demangled: GLXPlayerLeaderboard::getCurrentPlayerLeaderboardPosition()
; decoder-mode: arm
00832198  58 00 90 e5                                      ldr r0, [r0, #0x58]
0083219c  1e ff 2f e1                                      bx lr

; FUNCTION 0x008321a0, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard34getCurrentPlayerLeaderboardCountryEv
; demangled: GLXPlayerLeaderboard::getCurrentPlayerLeaderboardCountry()
; decoder-mode: arm
008321a0  64 00 90 e5                                      ldr r0, [r0, #0x64]
008321a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008321a8, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard32getCurrentPlayerLeaderboardScoreEv
; demangled: GLXPlayerLeaderboard::getCurrentPlayerLeaderboardScore()
; decoder-mode: arm
008321a8  5c 00 90 e5                                      ldr r0, [r0, #0x5c]
008321ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x008321b0, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard36getCurrentPlayerLeaderboardScoreDataEv
; demangled: GLXPlayerLeaderboard::getCurrentPlayerLeaderboardScoreData()
; decoder-mode: arm
008321b0  60 00 90 e5                                      ldr r0, [r0, #0x60]
008321b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008321b8, declared_size=20, range_size=20, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard18getLeaderboardSizeEv
; demangled: GLXPlayerLeaderboard::getLeaderboardSize()
; decoder-mode: arm
008321b8  40 30 90 e5                                      ldr r3, [r0, #0x40]
008321bc  00 00 53 e3                                      cmp r3, #0
008321c0  00 00 e0 03                                      mvneq r0, #0
008321c4  3c 00 90 15                                      ldrne r0, [r0, #0x3c]
008321c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008321cc, declared_size=112, range_size=112, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard19getLeaderboardEntryEiRPcRiS2_RPiS2_
; demangled: GLXPlayerLeaderboard::getLeaderboardEntry(int, char*&, int&, int&, int*&, int&)
; decoder-mode: arm
008321cc  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
008321d0  01 00 5c e1                                      cmp ip, r1
008321d4  16 00 00 da                                      ble #0x832234
008321d8  40 c0 90 e5                                      ldr ip, [r0, #0x40]
008321dc  00 00 5c e3                                      cmp ip, #0
008321e0  13 00 00 0a                                      beq #0x832234
008321e4  01 c1 9c e7                                      ldr ip, [ip, r1, lsl #2]
008321e8  00 c0 82 e5                                      str ip, [r2]
008321ec  48 20 90 e5                                      ldr r2, [r0, #0x48]
008321f0  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
008321f4  00 20 83 e5                                      str r2, [r3]
008321f8  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
008321fc  01 21 93 e7                                      ldr r2, [r3, r1, lsl #2]
00832200  00 30 9d e5                                      ldr r3, [sp]
00832204  00 20 83 e5                                      str r2, [r3]
00832208  54 30 90 e5                                      ldr r3, [r0, #0x54]
0083220c  00 00 53 e3                                      cmp r3, #0
00832210  50 30 90 c5                                      ldrgt r3, [r0, #0x50]
00832214  01 21 93 c7                                      ldrgt r2, [r3, r1, lsl #2]
00832218  04 30 9d c5                                      ldrgt r3, [sp, #4]
0083221c  00 20 83 c5                                      strgt r2, [r3]
00832220  54 30 90 c5                                      ldrgt r3, [r0, #0x54]
00832224  08 20 9d e5                                      ldr r2, [sp, #8]
00832228  01 00 a0 e3                                      mov r0, #1
0083222c  00 30 82 e5                                      str r3, [r2]
00832230  1e ff 2f e1                                      bx lr
00832234  00 00 a0 e3                                      mov r0, #0
00832238  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083223c, declared_size=40, range_size=40, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard29getLeaderboardEntryPlayerNameEi
; demangled: GLXPlayerLeaderboard::getLeaderboardEntryPlayerName(int)
; decoder-mode: arm
0083223c  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00832240  01 00 53 e1                                      cmp r3, r1
00832244  01 00 00 ca                                      bgt #0x832250
00832248  00 00 a0 e3                                      mov r0, #0
0083224c  1e ff 2f e1                                      bx lr
00832250  40 30 90 e5                                      ldr r3, [r0, #0x40]
00832254  00 00 53 e3                                      cmp r3, #0
00832258  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
0083225c  1e ff 2f 11                                      bxne lr
00832260  f8 ff ff ea                                      b #0x832248

; FUNCTION 0x00832264, declared_size=40, range_size=40, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard32getLeaderboardEntryPlayerCountryEi
; demangled: GLXPlayerLeaderboard::getLeaderboardEntryPlayerCountry(int)
; decoder-mode: arm
00832264  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00832268  01 00 53 e1                                      cmp r3, r1
0083226c  01 00 00 ca                                      bgt #0x832278
00832270  00 00 a0 e3                                      mov r0, #0
00832274  1e ff 2f e1                                      bx lr
00832278  44 30 90 e5                                      ldr r3, [r0, #0x44]
0083227c  00 00 53 e3                                      cmp r3, #0
00832280  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
00832284  1e ff 2f 11                                      bxne lr
00832288  f8 ff ff ea                                      b #0x832270

; FUNCTION 0x0083228c, declared_size=40, range_size=40, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard33getLeaderboardEntryPlayerPositionEi
; demangled: GLXPlayerLeaderboard::getLeaderboardEntryPlayerPosition(int)
; decoder-mode: arm
0083228c  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00832290  01 00 53 e1                                      cmp r3, r1
00832294  01 00 00 ca                                      bgt #0x8322a0
00832298  00 00 e0 e3                                      mvn r0, #0
0083229c  1e ff 2f e1                                      bx lr
008322a0  48 30 90 e5                                      ldr r3, [r0, #0x48]
008322a4  00 00 53 e3                                      cmp r3, #0
008322a8  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
008322ac  1e ff 2f 11                                      bxne lr
008322b0  f8 ff ff ea                                      b #0x832298

; FUNCTION 0x008322b4, declared_size=44, range_size=44, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard30getLeaderboardEntryPlayerScoreEi
; demangled: GLXPlayerLeaderboard::getLeaderboardEntryPlayerScore(int)
; decoder-mode: arm
008322b4  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
008322b8  01 00 53 e1                                      cmp r3, r1
008322bc  02 00 00 ca                                      bgt #0x8322cc
008322c0  d6 03 0d e3                                      movw r0, #0xd3d6
008322c4  f5 0f 4f e3                                      movt r0, #0xfff5
008322c8  1e ff 2f e1                                      bx lr
008322cc  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
008322d0  00 00 53 e3                                      cmp r3, #0
008322d4  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
008322d8  1e ff 2f 11                                      bxne lr
008322dc  f7 ff ff ea                                      b #0x8322c0

; FUNCTION 0x008322e0, declared_size=40, range_size=40, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard34getLeaderboardEntryPlayerScoreDataEi
; demangled: GLXPlayerLeaderboard::getLeaderboardEntryPlayerScoreData(int)
; decoder-mode: arm
008322e0  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
008322e4  01 00 53 e1                                      cmp r3, r1
008322e8  01 00 00 ca                                      bgt #0x8322f4
008322ec  00 00 a0 e3                                      mov r0, #0
008322f0  1e ff 2f e1                                      bx lr
008322f4  50 30 90 e5                                      ldr r3, [r0, #0x50]
008322f8  00 00 53 e3                                      cmp r3, #0
008322fc  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
00832300  1e ff 2f 11                                      bxne lr
00832304  f8 ff ff ea                                      b #0x8322ec

; FUNCTION 0x00832308, declared_size=652, range_size=652, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard20processRankingAroundEPc
; demangled: GLXPlayerLeaderboard::processRankingAround(char*)
; decoder-mode: arm
00832308  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083230c  78 b2 9f e5                                      ldr fp, [pc, #0x278]
00832310  78 22 9f e5                                      ldr r2, [pc, #0x278]
00832314  54 d0 4d e2                                      sub sp, sp, #0x54
00832318  0b b0 8f e0                                      add fp, pc, fp
0083231c  02 30 9b e7                                      ldr r3, [fp, r2]
00832320  00 50 a0 e3                                      mov r5, #0
00832324  04 20 8d e5                                      str r2, [sp, #4]
00832328  00 30 93 e5                                      ldr r3, [r3]
0083232c  00 40 a0 e1                                      mov r4, r0
00832330  01 80 a0 e1                                      mov r8, r1
00832334  05 60 a0 e1                                      mov r6, r5
00832338  4c 30 8d e5                                      str r3, [sp, #0x4c]
0083233c  03 00 00 ea                                      b #0x832350
00832340  d5 30 98 e1                                      ldrsb r3, [r8, r5]
00832344  01 50 85 e2                                      add r5, r5, #1
00832348  7c 00 53 e3                                      cmp r3, #0x7c
0083234c  01 60 86 02                                      addeq r6, r6, #1
00832350  08 00 a0 e1                                      mov r0, r8
00832354  14 e3 ff eb                                      bl #0x82afac
00832358  00 00 55 e1                                      cmp r5, r0
0083235c  f7 ff ff ba                                      blt #0x832340
00832360  58 30 94 e5                                      ldr r3, [r4, #0x58]
00832364  54 10 94 e5                                      ldr r1, [r4, #0x54]
00832368  00 00 53 e3                                      cmp r3, #0
0083236c  fd 3f 0f a3                                      movwge r3, #0xfffd
00832370  ff 3f 4f a3                                      movtge r3, #0xffff
00832374  03 30 61 a0                                      rsbge r3, r1, r3
00832378  06 60 83 a0                                      addge r6, r3, r6
0083237c  06 00 a0 e1                                      mov r0, r6
00832380  03 10 81 e2                                      add r1, r1, #3
00832384  c6 6f eb eb                                      bl #0x30e2a4
00832388  00 00 50 e3                                      cmp r0, #0
0083238c  3c 00 84 e5                                      str r0, [r4, #0x3c]
00832390  72 00 00 da                                      ble #0x832560
00832394  00 01 a0 e1                                      lsl r0, r0, #2
00832398  4c 6f eb eb                                      bl #0x30e0d0
0083239c  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
008323a0  40 00 84 e5                                      str r0, [r4, #0x40]
008323a4  00 00 52 e3                                      cmp r2, #0
008323a8  08 00 00 da                                      ble #0x8323d0
008323ac  00 30 a0 e3                                      mov r3, #0
008323b0  03 10 a0 e1                                      mov r1, r3
008323b4  00 00 00 ea                                      b #0x8323bc
008323b8  40 00 94 e5                                      ldr r0, [r4, #0x40]
008323bc  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
008323c0  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
008323c4  01 30 83 e2                                      add r3, r3, #1
008323c8  03 00 52 e1                                      cmp r2, r3
008323cc  f9 ff ff ca                                      bgt #0x8323b8
008323d0  02 01 a0 e1                                      lsl r0, r2, #2
008323d4  3d 6f eb eb                                      bl #0x30e0d0
008323d8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
008323dc  48 00 84 e5                                      str r0, [r4, #0x48]
008323e0  03 01 a0 e1                                      lsl r0, r3, #2
008323e4  39 6f eb eb                                      bl #0x30e0d0
008323e8  54 30 94 e5                                      ldr r3, [r4, #0x54]
008323ec  4c 00 84 e5                                      str r0, [r4, #0x4c]
008323f0  00 00 53 e3                                      cmp r3, #0
008323f4  61 00 00 da                                      ble #0x832580
008323f8  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
008323fc  00 01 a0 e1                                      lsl r0, r0, #2
00832400  32 6f eb eb                                      bl #0x30e0d0
00832404  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00832408  50 00 84 e5                                      str r0, [r4, #0x50]
0083240c  00 00 53 e3                                      cmp r3, #0
00832410  52 00 00 da                                      ble #0x832560
00832414  00 30 a0 e3                                      mov r3, #0
00832418  03 10 a0 e1                                      mov r1, r3
0083241c  00 00 00 ea                                      b #0x832424
00832420  50 00 94 e5                                      ldr r0, [r4, #0x50]
00832424  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00832428  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0083242c  01 30 83 e2                                      add r3, r3, #1
00832430  03 00 52 e1                                      cmp r2, r3
00832434  f9 ff ff ca                                      bgt #0x832420
00832438  00 00 52 e3                                      cmp r2, #0
0083243c  47 00 00 da                                      ble #0x832560
00832440  00 a0 a0 e3                                      mov sl, #0
00832444  0a 70 a0 e1                                      mov r7, sl
00832448  0c 60 8d e2                                      add r6, sp, #0xc
0083244c  07 20 a0 e1                                      mov r2, r7
00832450  06 10 a0 e1                                      mov r1, r6
00832454  7c 30 a0 e3                                      mov r3, #0x7c
00832458  08 00 a0 e1                                      mov r0, r8
0083245c  1f e2 ff eb                                      bl #0x82ace0
00832460  06 00 a0 e1                                      mov r0, r6
00832464  48 50 94 e5                                      ldr r5, [r4, #0x48]
00832468  ac e3 ff eb                                      bl #0x82b320
0083246c  01 70 87 e2                                      add r7, r7, #1
00832470  07 20 a0 e1                                      mov r2, r7
00832474  7c 30 a0 e3                                      mov r3, #0x7c
00832478  06 10 a0 e1                                      mov r1, r6
0083247c  0a 01 85 e7                                      str r0, [r5, sl, lsl #2]
00832480  08 00 a0 e1                                      mov r0, r8
00832484  15 e2 ff eb                                      bl #0x82ace0
00832488  06 00 a0 e1                                      mov r0, r6
0083248c  40 50 94 e5                                      ldr r5, [r4, #0x40]
00832490  c5 e2 ff eb                                      bl #0x82afac
00832494  01 00 80 e2                                      add r0, r0, #1
00832498  0c 6f eb eb                                      bl #0x30e0d0
0083249c  0a 01 85 e7                                      str r0, [r5, sl, lsl #2]
008324a0  40 30 94 e5                                      ldr r3, [r4, #0x40]
008324a4  01 70 87 e2                                      add r7, r7, #1
008324a8  06 10 a0 e1                                      mov r1, r6
008324ac  0a 01 93 e7                                      ldr r0, [r3, sl, lsl #2]
008324b0  a2 e3 ff eb                                      bl #0x82b340
008324b4  07 20 a0 e1                                      mov r2, r7
008324b8  06 10 a0 e1                                      mov r1, r6
008324bc  7c 30 a0 e3                                      mov r3, #0x7c
008324c0  08 00 a0 e1                                      mov r0, r8
008324c4  05 e2 ff eb                                      bl #0x82ace0
008324c8  06 00 a0 e1                                      mov r0, r6
008324cc  4c 50 94 e5                                      ldr r5, [r4, #0x4c]
008324d0  92 e3 ff eb                                      bl #0x82b320
008324d4  0a 01 85 e7                                      str r0, [r5, sl, lsl #2]
008324d8  54 00 94 e5                                      ldr r0, [r4, #0x54]
008324dc  0a 91 a0 e1                                      lsl sb, sl, #2
008324e0  01 70 87 e2                                      add r7, r7, #1
008324e4  00 00 50 e3                                      cmp r0, #0
008324e8  18 00 00 da                                      ble #0x832550
008324ec  00 01 a0 e1                                      lsl r0, r0, #2
008324f0  50 50 94 e5                                      ldr r5, [r4, #0x50]
008324f4  f5 6e eb eb                                      bl #0x30e0d0
008324f8  0a 01 85 e7                                      str r0, [r5, sl, lsl #2]
008324fc  54 30 94 e5                                      ldr r3, [r4, #0x54]
00832500  00 00 53 e3                                      cmp r3, #0
00832504  11 00 00 da                                      ble #0x832550
00832508  00 50 a0 e3                                      mov r5, #0
0083250c  07 20 a0 e1                                      mov r2, r7
00832510  06 10 a0 e1                                      mov r1, r6
00832514  7c 30 a0 e3                                      mov r3, #0x7c
00832518  08 00 a0 e1                                      mov r0, r8
0083251c  ef e1 ff eb                                      bl #0x82ace0
00832520  50 30 94 e5                                      ldr r3, [r4, #0x50]
00832524  06 00 a0 e1                                      mov r0, r6
00832528  01 70 87 e2                                      add r7, r7, #1
0083252c  09 30 93 e7                                      ldr r3, [r3, sb]
00832530  00 30 8d e5                                      str r3, [sp]
00832534  79 e3 ff eb                                      bl #0x82b320
00832538  00 30 9d e5                                      ldr r3, [sp]
0083253c  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
00832540  54 30 94 e5                                      ldr r3, [r4, #0x54]
00832544  01 50 85 e2                                      add r5, r5, #1
00832548  05 00 53 e1                                      cmp r3, r5
0083254c  ee ff ff ca                                      bgt #0x83250c
00832550  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00832554  01 a0 8a e2                                      add sl, sl, #1
00832558  0a 00 53 e1                                      cmp r3, sl
0083255c  ba ff ff ca                                      bgt #0x83244c
00832560  04 20 9d e5                                      ldr r2, [sp, #4]
00832564  02 30 9b e7                                      ldr r3, [fp, r2]
00832568  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0083256c  00 30 93 e5                                      ldr r3, [r3]
00832570  03 00 52 e1                                      cmp r2, r3
00832574  03 00 00 1a                                      bne #0x832588
00832578  54 d0 8d e2                                      add sp, sp, #0x54
0083257c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00832580  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00832584  ab ff ff ea                                      b #0x832438
00832588  60 6f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083258c  78 27 16 00 ac 40 00 00                          .byte 0x78, 0x27, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00832594, declared_size=1204, range_size=1204, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard14processRankingEPc
; demangled: GLXPlayerLeaderboard::processRanking(char*)
; decoder-mode: arm
00832594  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00832598  98 b4 9f e5                                      ldr fp, [pc, #0x498]
0083259c  98 24 9f e5                                      ldr r2, [pc, #0x498]
008325a0  54 d0 4d e2                                      sub sp, sp, #0x54
008325a4  0b b0 8f e0                                      add fp, pc, fp
008325a8  02 30 9b e7                                      ldr r3, [fp, r2]
008325ac  01 80 a0 e1                                      mov r8, r1
008325b0  0c 60 8d e2                                      add r6, sp, #0xc
008325b4  00 c0 93 e5                                      ldr ip, [r3]
008325b8  04 20 8d e5                                      str r2, [sp, #4]
008325bc  06 10 a0 e1                                      mov r1, r6
008325c0  00 20 a0 e3                                      mov r2, #0
008325c4  7c 30 a0 e3                                      mov r3, #0x7c
008325c8  00 40 a0 e1                                      mov r4, r0
008325cc  08 00 a0 e1                                      mov r0, r8
008325d0  4c c0 8d e5                                      str ip, [sp, #0x4c]
008325d4  c1 e1 ff eb                                      bl #0x82ace0
008325d8  60 14 9f e5                                      ldr r1, [pc, #0x460]
008325dc  06 00 a0 e1                                      mov r0, r6
008325e0  01 10 8f e0                                      add r1, pc, r1
008325e4  58 e3 ff eb                                      bl #0x82b34c
008325e8  00 50 50 e2                                      subs r5, r0, #0
008325ec  c5 00 00 1a                                      bne #0x832908
008325f0  06 10 a0 e1                                      mov r1, r6
008325f4  01 20 a0 e3                                      mov r2, #1
008325f8  7c 30 a0 e3                                      mov r3, #0x7c
008325fc  08 00 a0 e1                                      mov r0, r8
00832600  b6 e1 ff eb                                      bl #0x82ace0
00832604  06 00 a0 e1                                      mov r0, r6
00832608  44 e3 ff eb                                      bl #0x82b320
0083260c  00 00 50 e3                                      cmp r0, #0
00832610  58 00 84 e5                                      str r0, [r4, #0x58]
00832614  ee 00 00 ba                                      blt #0x8329d4
00832618  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
0083261c  00 00 53 e3                                      cmp r3, #0
00832620  04 70 a0 03                                      moveq r7, #4
00832624  03 20 a0 03                                      moveq r2, #3
00832628  f6 00 00 1a                                      bne #0x832a08
0083262c  7c 30 a0 e3                                      mov r3, #0x7c
00832630  06 10 a0 e1                                      mov r1, r6
00832634  08 00 a0 e1                                      mov r0, r8
00832638  a8 e1 ff eb                                      bl #0x82ace0
0083263c  06 00 a0 e1                                      mov r0, r6
00832640  36 e3 ff eb                                      bl #0x82b320
00832644  54 30 94 e5                                      ldr r3, [r4, #0x54]
00832648  5c 00 84 e5                                      str r0, [r4, #0x5c]
0083264c  00 00 53 e3                                      cmp r3, #0
00832650  14 00 00 da                                      ble #0x8326a8
00832654  03 01 a0 e1                                      lsl r0, r3, #2
00832658  9c 6e eb eb                                      bl #0x30e0d0
0083265c  54 30 94 e5                                      ldr r3, [r4, #0x54]
00832660  60 00 84 e5                                      str r0, [r4, #0x60]
00832664  00 00 53 e3                                      cmp r3, #0
00832668  0e 00 00 da                                      ble #0x8326a8
0083266c  00 50 a0 e3                                      mov r5, #0
00832670  07 20 a0 e1                                      mov r2, r7
00832674  7c 30 a0 e3                                      mov r3, #0x7c
00832678  06 10 a0 e1                                      mov r1, r6
0083267c  08 00 a0 e1                                      mov r0, r8
00832680  96 e1 ff eb                                      bl #0x82ace0
00832684  06 00 a0 e1                                      mov r0, r6
00832688  60 a0 94 e5                                      ldr sl, [r4, #0x60]
0083268c  23 e3 ff eb                                      bl #0x82b320
00832690  05 01 8a e7                                      str r0, [sl, r5, lsl #2]
00832694  54 30 94 e5                                      ldr r3, [r4, #0x54]
00832698  01 50 85 e2                                      add r5, r5, #1
0083269c  01 70 87 e2                                      add r7, r7, #1
008326a0  05 00 53 e1                                      cmp r3, r5
008326a4  f1 ff ff ca                                      bgt #0x832670
008326a8  00 a0 a0 e3                                      mov sl, #0
008326ac  00 50 a0 e3                                      mov r5, #0
008326b0  03 00 00 ea                                      b #0x8326c4
008326b4  d5 30 98 e1                                      ldrsb r3, [r8, r5]
008326b8  01 50 85 e2                                      add r5, r5, #1
008326bc  7c 00 53 e3                                      cmp r3, #0x7c
008326c0  01 a0 8a 02                                      addeq sl, sl, #1
008326c4  08 00 a0 e1                                      mov r0, r8
008326c8  37 e2 ff eb                                      bl #0x82afac
008326cc  00 00 55 e1                                      cmp r5, r0
008326d0  f7 ff ff ba                                      blt #0x8326b4
008326d4  58 30 94 e5                                      ldr r3, [r4, #0x58]
008326d8  00 00 53 e3                                      cmp r3, #0
008326dc  b7 00 00 ba                                      blt #0x8329c0
008326e0  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
008326e4  00 00 53 e3                                      cmp r3, #0
008326e8  8e 00 00 1a                                      bne #0x832928
008326ec  54 10 94 e5                                      ldr r1, [r4, #0x54]
008326f0  fd 3f 0f e3                                      movw r3, #0xfffd
008326f4  ff 3f 4f e3                                      movt r3, #0xffff
008326f8  03 30 61 e0                                      rsb r3, r1, r3
008326fc  0a a0 83 e0                                      add sl, r3, sl
00832700  0a 00 a0 e1                                      mov r0, sl
00832704  03 10 81 e2                                      add r1, r1, #3
00832708  e5 6e eb eb                                      bl #0x30e2a4
0083270c  3c 00 84 e5                                      str r0, [r4, #0x3c]
00832710  00 00 50 e3                                      cmp r0, #0
00832714  73 00 00 da                                      ble #0x8328e8
00832718  00 01 a0 e1                                      lsl r0, r0, #2
0083271c  6b 6e eb eb                                      bl #0x30e0d0
00832720  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00832724  40 00 84 e5                                      str r0, [r4, #0x40]
00832728  00 00 52 e3                                      cmp r2, #0
0083272c  08 00 00 da                                      ble #0x832754
00832730  00 30 a0 e3                                      mov r3, #0
00832734  03 10 a0 e1                                      mov r1, r3
00832738  00 00 00 ea                                      b #0x832740
0083273c  40 00 94 e5                                      ldr r0, [r4, #0x40]
00832740  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00832744  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00832748  01 30 83 e2                                      add r3, r3, #1
0083274c  03 00 52 e1                                      cmp r2, r3
00832750  f9 ff ff ca                                      bgt #0x83273c
00832754  02 01 a0 e1                                      lsl r0, r2, #2
00832758  5c 6e eb eb                                      bl #0x30e0d0
0083275c  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00832760  44 00 84 e5                                      str r0, [r4, #0x44]
00832764  00 00 52 e3                                      cmp r2, #0
00832768  08 00 00 da                                      ble #0x832790
0083276c  00 30 a0 e3                                      mov r3, #0
00832770  03 10 a0 e1                                      mov r1, r3
00832774  00 00 00 ea                                      b #0x83277c
00832778  44 00 94 e5                                      ldr r0, [r4, #0x44]
0083277c  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00832780  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00832784  01 30 83 e2                                      add r3, r3, #1
00832788  03 00 52 e1                                      cmp r2, r3
0083278c  f9 ff ff ca                                      bgt #0x832778
00832790  02 01 a0 e1                                      lsl r0, r2, #2
00832794  4d 6e eb eb                                      bl #0x30e0d0
00832798  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0083279c  48 00 84 e5                                      str r0, [r4, #0x48]
008327a0  03 01 a0 e1                                      lsl r0, r3, #2
008327a4  49 6e eb eb                                      bl #0x30e0d0
008327a8  54 30 94 e5                                      ldr r3, [r4, #0x54]
008327ac  4c 00 84 e5                                      str r0, [r4, #0x4c]
008327b0  00 00 53 e3                                      cmp r3, #0
008327b4  70 00 00 ca                                      bgt #0x83297c
008327b8  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
008327bc  00 00 52 e3                                      cmp r2, #0
008327c0  00 90 a0 c3                                      movgt sb, #0
008327c4  47 00 00 da                                      ble #0x8328e8
008327c8  07 20 a0 e1                                      mov r2, r7
008327cc  06 10 a0 e1                                      mov r1, r6
008327d0  7c 30 a0 e3                                      mov r3, #0x7c
008327d4  08 00 a0 e1                                      mov r0, r8
008327d8  40 e1 ff eb                                      bl #0x82ace0
008327dc  06 00 a0 e1                                      mov r0, r6
008327e0  48 50 94 e5                                      ldr r5, [r4, #0x48]
008327e4  cd e2 ff eb                                      bl #0x82b320
008327e8  01 70 87 e2                                      add r7, r7, #1
008327ec  07 20 a0 e1                                      mov r2, r7
008327f0  06 10 a0 e1                                      mov r1, r6
008327f4  7c 30 a0 e3                                      mov r3, #0x7c
008327f8  09 01 85 e7                                      str r0, [r5, sb, lsl #2]
008327fc  08 00 a0 e1                                      mov r0, r8
00832800  36 e1 ff eb                                      bl #0x82ace0
00832804  06 00 a0 e1                                      mov r0, r6
00832808  40 50 94 e5                                      ldr r5, [r4, #0x40]
0083280c  e6 e1 ff eb                                      bl #0x82afac
00832810  01 00 80 e2                                      add r0, r0, #1
00832814  2d 6e eb eb                                      bl #0x30e0d0
00832818  09 01 85 e7                                      str r0, [r5, sb, lsl #2]
0083281c  40 30 94 e5                                      ldr r3, [r4, #0x40]
00832820  06 10 a0 e1                                      mov r1, r6
00832824  09 a1 a0 e1                                      lsl sl, sb, #2
00832828  09 01 93 e7                                      ldr r0, [r3, sb, lsl #2]
0083282c  c3 e2 ff eb                                      bl #0x82b340
00832830  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
00832834  01 70 87 e2                                      add r7, r7, #1
00832838  00 00 53 e3                                      cmp r3, #0
0083283c  43 00 00 1a                                      bne #0x832950
00832840  07 20 a0 e1                                      mov r2, r7
00832844  06 10 a0 e1                                      mov r1, r6
00832848  7c 30 a0 e3                                      mov r3, #0x7c
0083284c  08 00 a0 e1                                      mov r0, r8
00832850  22 e1 ff eb                                      bl #0x82ace0
00832854  06 00 a0 e1                                      mov r0, r6
00832858  4c 50 94 e5                                      ldr r5, [r4, #0x4c]
0083285c  af e2 ff eb                                      bl #0x82b320
00832860  0a 00 85 e7                                      str r0, [r5, sl]
00832864  54 00 94 e5                                      ldr r0, [r4, #0x54]
00832868  01 70 87 e2                                      add r7, r7, #1
0083286c  00 00 50 e3                                      cmp r0, #0
00832870  18 00 00 da                                      ble #0x8328d8
00832874  00 01 a0 e1                                      lsl r0, r0, #2
00832878  50 50 94 e5                                      ldr r5, [r4, #0x50]
0083287c  13 6e eb eb                                      bl #0x30e0d0
00832880  0a 00 85 e7                                      str r0, [r5, sl]
00832884  54 30 94 e5                                      ldr r3, [r4, #0x54]
00832888  00 00 53 e3                                      cmp r3, #0
0083288c  11 00 00 da                                      ble #0x8328d8
00832890  00 50 a0 e3                                      mov r5, #0
00832894  07 20 a0 e1                                      mov r2, r7
00832898  06 10 a0 e1                                      mov r1, r6
0083289c  7c 30 a0 e3                                      mov r3, #0x7c
008328a0  08 00 a0 e1                                      mov r0, r8
008328a4  0d e1 ff eb                                      bl #0x82ace0
008328a8  50 30 94 e5                                      ldr r3, [r4, #0x50]
008328ac  06 00 a0 e1                                      mov r0, r6
008328b0  01 70 87 e2                                      add r7, r7, #1
008328b4  0a 30 93 e7                                      ldr r3, [r3, sl]
008328b8  00 30 8d e5                                      str r3, [sp]
008328bc  97 e2 ff eb                                      bl #0x82b320
008328c0  00 30 9d e5                                      ldr r3, [sp]
008328c4  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
008328c8  54 30 94 e5                                      ldr r3, [r4, #0x54]
008328cc  01 50 85 e2                                      add r5, r5, #1
008328d0  05 00 53 e1                                      cmp r3, r5
008328d4  ee ff ff ca                                      bgt #0x832894
008328d8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
008328dc  01 90 89 e2                                      add sb, sb, #1
008328e0  09 00 53 e1                                      cmp r3, sb
008328e4  b7 ff ff ca                                      bgt #0x8327c8
008328e8  04 20 9d e5                                      ldr r2, [sp, #4]
008328ec  02 30 9b e7                                      ldr r3, [fp, r2]
008328f0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
008328f4  00 30 93 e5                                      ldr r3, [r3]
008328f8  03 00 52 e1                                      cmp r2, r3
008328fc  4c 00 00 1a                                      bne #0x832a34
00832900  54 d0 8d e2                                      add sp, sp, #0x54
00832904  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00832908  34 11 9f e5                                      ldr r1, [pc, #0x134]
0083290c  06 00 a0 e1                                      mov r0, r6
00832910  01 10 8f e0                                      add r1, pc, r1
00832914  8c e2 ff eb                                      bl #0x82b34c
00832918  00 a0 50 e2                                      subs sl, r0, #0
0083291c  01 70 a0 03                                      moveq r7, #1
00832920  61 ff ff 0a                                      beq #0x8326ac
00832924  ef ff ff ea                                      b #0x8328e8
00832928  54 10 94 e5                                      ldr r1, [r4, #0x54]
0083292c  fc 3f 0f e3                                      movw r3, #0xfffc
00832930  ff 3f 4f e3                                      movt r3, #0xffff
00832934  03 30 61 e0                                      rsb r3, r1, r3
00832938  0a a0 83 e0                                      add sl, r3, sl
0083293c  0a 00 a0 e1                                      mov r0, sl
00832940  04 10 81 e2                                      add r1, r1, #4
00832944  56 6e eb eb                                      bl #0x30e2a4
00832948  3c 00 84 e5                                      str r0, [r4, #0x3c]
0083294c  6f ff ff ea                                      b #0x832710
00832950  07 20 a0 e1                                      mov r2, r7
00832954  06 10 a0 e1                                      mov r1, r6
00832958  7c 30 a0 e3                                      mov r3, #0x7c
0083295c  08 00 a0 e1                                      mov r0, r8
00832960  de e0 ff eb                                      bl #0x82ace0
00832964  06 00 a0 e1                                      mov r0, r6
00832968  44 50 94 e5                                      ldr r5, [r4, #0x44]
0083296c  0b e4 ff eb                                      bl #0x82b9a0
00832970  01 70 87 e2                                      add r7, r7, #1
00832974  09 01 85 e7                                      str r0, [r5, sb, lsl #2]
00832978  b0 ff ff ea                                      b #0x832840
0083297c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00832980  00 01 a0 e1                                      lsl r0, r0, #2
00832984  d1 6d eb eb                                      bl #0x30e0d0
00832988  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0083298c  50 00 84 e5                                      str r0, [r4, #0x50]
00832990  00 00 53 e3                                      cmp r3, #0
00832994  d3 ff ff da                                      ble #0x8328e8
00832998  00 30 a0 e3                                      mov r3, #0
0083299c  03 10 a0 e1                                      mov r1, r3
008329a0  00 00 00 ea                                      b #0x8329a8
008329a4  50 00 94 e5                                      ldr r0, [r4, #0x50]
008329a8  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
008329ac  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
008329b0  01 30 83 e2                                      add r3, r3, #1
008329b4  03 00 52 e1                                      cmp r2, r3
008329b8  f9 ff ff ca                                      bgt #0x8329a4
008329bc  7e ff ff ea                                      b #0x8327bc
008329c0  68 30 d4 e5                                      ldrb r3, [r4, #0x68]
008329c4  00 00 53 e3                                      cmp r3, #0
008329c8  0c 00 00 0a                                      beq #0x832a00
008329cc  54 10 94 e5                                      ldr r1, [r4, #0x54]
008329d0  d9 ff ff ea                                      b #0x83293c
008329d4  54 70 94 e5                                      ldr r7, [r4, #0x54]
008329d8  d6 33 0d e3                                      movw r3, #0xd3d6
008329dc  fd af 0f e3                                      movw sl, #0xfffd
008329e0  f5 3f 4f e3                                      movt r3, #0xfff5
008329e4  ff af 4f e3                                      movt sl, #0xffff
008329e8  0a a0 67 e0                                      rsb sl, r7, sl
008329ec  5c 30 84 e5                                      str r3, [r4, #0x5c]
008329f0  60 50 84 e5                                      str r5, [r4, #0x60]
008329f4  58 30 84 e5                                      str r3, [r4, #0x58]
008329f8  04 70 87 e2                                      add r7, r7, #4
008329fc  2a ff ff ea                                      b #0x8326ac
00832a00  54 10 94 e5                                      ldr r1, [r4, #0x54]
00832a04  3d ff ff ea                                      b #0x832700
00832a08  03 20 a0 e3                                      mov r2, #3
00832a0c  06 10 a0 e1                                      mov r1, r6
00832a10  7c 30 a0 e3                                      mov r3, #0x7c
00832a14  08 00 a0 e1                                      mov r0, r8
00832a18  b0 e0 ff eb                                      bl #0x82ace0
00832a1c  06 00 a0 e1                                      mov r0, r6
00832a20  de e3 ff eb                                      bl #0x82b9a0
00832a24  05 70 a0 e3                                      mov r7, #5
00832a28  64 00 84 e5                                      str r0, [r4, #0x64]
00832a2c  04 20 a0 e3                                      mov r2, #4
00832a30  fd fe ff ea                                      b #0x83262c
00832a34  35 6e eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00832a38  ec 24 16 00 ac 40 00 00 20 28 0d 00 40 02 09 00  .byte 0xec, 0x24, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x28, 0x0d, 0x00, 0x40, 0x02, 0x09, 0x00

; FUNCTION 0x00832a48, declared_size=484, range_size=484, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard16clearLeaderboardEv
; demangled: GLXPlayerLeaderboard::clearLeaderboard()
; decoder-mode: arm
00832a48  70 40 2d e9                                      push {r4, r5, r6, lr}
00832a4c  40 20 90 e5                                      ldr r2, [r0, #0x40]
00832a50  00 40 a0 e1                                      mov r4, r0
00832a54  00 00 52 e3                                      cmp r2, #0
00832a58  3c 30 90 05                                      ldreq r3, [r0, #0x3c]
00832a5c  16 00 00 0a                                      beq #0x832abc
00832a60  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00832a64  00 00 53 e3                                      cmp r3, #0
00832a68  0e 00 00 da                                      ble #0x832aa8
00832a6c  00 50 a0 e3                                      mov r5, #0
00832a70  05 60 a0 e1                                      mov r6, r5
00832a74  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
00832a78  00 00 50 e3                                      cmp r0, #0
00832a7c  04 00 00 0a                                      beq #0x832a94
00832a80  8c 6d eb eb                                      bl #0x30e0b8
00832a84  40 30 94 e5                                      ldr r3, [r4, #0x40]
00832a88  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
00832a8c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00832a90  40 20 94 e5                                      ldr r2, [r4, #0x40]
00832a94  01 50 85 e2                                      add r5, r5, #1
00832a98  05 00 53 e1                                      cmp r3, r5
00832a9c  f4 ff ff ca                                      bgt #0x832a74
00832aa0  00 00 52 e3                                      cmp r2, #0
00832aa4  02 00 00 0a                                      beq #0x832ab4
00832aa8  02 00 a0 e1                                      mov r0, r2
00832aac  81 6d eb eb                                      bl #0x30e0b8
00832ab0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00832ab4  00 20 a0 e3                                      mov r2, #0
00832ab8  40 20 84 e5                                      str r2, [r4, #0x40]
00832abc  44 20 94 e5                                      ldr r2, [r4, #0x44]
00832ac0  00 00 52 e3                                      cmp r2, #0
00832ac4  15 00 00 0a                                      beq #0x832b20
00832ac8  00 00 53 e3                                      cmp r3, #0
00832acc  0e 00 00 da                                      ble #0x832b0c
00832ad0  00 50 a0 e3                                      mov r5, #0
00832ad4  05 60 a0 e1                                      mov r6, r5
00832ad8  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
00832adc  00 00 50 e3                                      cmp r0, #0
00832ae0  04 00 00 0a                                      beq #0x832af8
00832ae4  73 6d eb eb                                      bl #0x30e0b8
00832ae8  44 30 94 e5                                      ldr r3, [r4, #0x44]
00832aec  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
00832af0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00832af4  44 20 94 e5                                      ldr r2, [r4, #0x44]
00832af8  01 50 85 e2                                      add r5, r5, #1
00832afc  05 00 53 e1                                      cmp r3, r5
00832b00  f4 ff ff ca                                      bgt #0x832ad8
00832b04  00 00 52 e3                                      cmp r2, #0
00832b08  02 00 00 0a                                      beq #0x832b18
00832b0c  02 00 a0 e1                                      mov r0, r2
00832b10  68 6d eb eb                                      bl #0x30e0b8
00832b14  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00832b18  00 20 a0 e3                                      mov r2, #0
00832b1c  44 20 84 e5                                      str r2, [r4, #0x44]
00832b20  d6 23 0d e3                                      movw r2, #0xd3d6
00832b24  f5 2f 4f e3                                      movt r2, #0xfff5
00832b28  00 50 a0 e3                                      mov r5, #0
00832b2c  02 00 53 e1                                      cmp r3, r2
00832b30  00 00 53 13                                      cmpne r3, #0
00832b34  40 50 84 e5                                      str r5, [r4, #0x40]
00832b38  19 00 00 0a                                      beq #0x832ba4
00832b3c  05 00 53 e1                                      cmp r3, r5
00832b40  50 20 94 d5                                      ldrle r2, [r4, #0x50]
00832b44  0e 00 00 da                                      ble #0x832b84
00832b48  50 20 94 e5                                      ldr r2, [r4, #0x50]
00832b4c  05 60 a0 e1                                      mov r6, r5
00832b50  00 00 52 e3                                      cmp r2, #0
00832b54  07 00 00 0a                                      beq #0x832b78
00832b58  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
00832b5c  00 00 50 e3                                      cmp r0, #0
00832b60  04 00 00 0a                                      beq #0x832b78
00832b64  d1 6d eb eb                                      bl #0x30e2b0
00832b68  50 30 94 e5                                      ldr r3, [r4, #0x50]
00832b6c  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
00832b70  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00832b74  50 20 94 e5                                      ldr r2, [r4, #0x50]
00832b78  01 50 85 e2                                      add r5, r5, #1
00832b7c  05 00 53 e1                                      cmp r3, r5
00832b80  f2 ff ff ca                                      bgt #0x832b50
00832b84  00 00 52 e3                                      cmp r2, #0
00832b88  03 00 00 0a                                      beq #0x832b9c
00832b8c  02 00 a0 e1                                      mov r0, r2
00832b90  c6 6d eb eb                                      bl #0x30e2b0
00832b94  00 30 a0 e3                                      mov r3, #0
00832b98  50 30 84 e5                                      str r3, [r4, #0x50]
00832b9c  00 30 a0 e3                                      mov r3, #0
00832ba0  50 30 84 e5                                      str r3, [r4, #0x50]
00832ba4  48 00 94 e5                                      ldr r0, [r4, #0x48]
00832ba8  00 00 50 e3                                      cmp r0, #0
00832bac  02 00 00 0a                                      beq #0x832bbc
00832bb0  be 6d eb eb                                      bl #0x30e2b0
00832bb4  00 30 a0 e3                                      mov r3, #0
00832bb8  48 30 84 e5                                      str r3, [r4, #0x48]
00832bbc  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
00832bc0  00 50 a0 e3                                      mov r5, #0
00832bc4  48 50 84 e5                                      str r5, [r4, #0x48]
00832bc8  05 00 50 e1                                      cmp r0, r5
00832bcc  01 00 00 0a                                      beq #0x832bd8
00832bd0  b6 6d eb eb                                      bl #0x30e2b0
00832bd4  4c 50 84 e5                                      str r5, [r4, #0x4c]
00832bd8  60 00 94 e5                                      ldr r0, [r4, #0x60]
00832bdc  00 50 a0 e3                                      mov r5, #0
00832be0  4c 50 84 e5                                      str r5, [r4, #0x4c]
00832be4  05 00 50 e1                                      cmp r0, r5
00832be8  01 00 00 0a                                      beq #0x832bf4
00832bec  af 6d eb eb                                      bl #0x30e2b0
00832bf0  60 50 84 e5                                      str r5, [r4, #0x60]
00832bf4  64 00 94 e5                                      ldr r0, [r4, #0x64]
00832bf8  00 00 50 e3                                      cmp r0, #0
00832bfc  02 00 00 0a                                      beq #0x832c0c
00832c00  aa 6d eb eb                                      bl #0x30e2b0
00832c04  00 30 a0 e3                                      mov r3, #0
00832c08  64 30 84 e5                                      str r3, [r4, #0x64]
00832c0c  d6 33 0d e3                                      movw r3, #0xd3d6
00832c10  f5 3f 4f e3                                      movt r3, #0xfff5
00832c14  00 20 a0 e3                                      mov r2, #0
00832c18  5c 30 84 e5                                      str r3, [r4, #0x5c]
00832c1c  60 20 84 e5                                      str r2, [r4, #0x60]
00832c20  3c 30 84 e5                                      str r3, [r4, #0x3c]
00832c24  58 30 84 e5                                      str r3, [r4, #0x58]
00832c28  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00832c2c, declared_size=152, range_size=152, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard13addScoreEntryEPciiiPii
; demangled: GLXPlayerLeaderboard::addScoreEntry(char*, int, int, int, int*, int)
; decoder-mode: arm
00832c2c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00832c30  01 00 a0 e1                                      mov r0, r1
00832c34  08 d0 4d e2                                      sub sp, sp, #8
00832c38  01 50 a0 e1                                      mov r5, r1
00832c3c  02 40 a0 e1                                      mov r4, r2
00832c40  03 60 a0 e1                                      mov r6, r3
00832c44  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00832c48  30 80 9d e5                                      ldr r8, [sp, #0x30]
00832c4c  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
00832c50  d5 e0 ff eb                                      bl #0x82afac
00832c54  60 10 9f e5                                      ldr r1, [pc, #0x60]
00832c58  00 00 85 e0                                      add r0, r5, r0
00832c5c  06 20 a0 e1                                      mov r2, r6
00832c60  01 10 8f e0                                      add r1, pc, r1
00832c64  0a 30 a0 e1                                      mov r3, sl
00832c68  00 40 8d e5                                      str r4, [sp]
00832c6c  9c 6f eb eb                                      bl #0x30eae4
00832c70  00 00 58 e3                                      cmp r8, #0
00832c74  0e 00 00 da                                      ble #0x832cb4
00832c78  40 90 9f e5                                      ldr sb, [pc, #0x40]
00832c7c  00 40 a0 e3                                      mov r4, #0
00832c80  09 90 8f e0                                      add sb, pc, sb
00832c84  05 00 a0 e1                                      mov r0, r5
00832c88  c7 e0 ff eb                                      bl #0x82afac
00832c8c  04 c1 97 e7                                      ldr ip, [r7, r4, lsl #2]
00832c90  00 00 85 e0                                      add r0, r5, r0
00832c94  01 40 84 e2                                      add r4, r4, #1
00832c98  09 10 a0 e1                                      mov r1, sb
00832c9c  06 20 a0 e1                                      mov r2, r6
00832ca0  0a 30 a0 e1                                      mov r3, sl
00832ca4  10 10 8d e8                                      stm sp, {r4, ip}
00832ca8  8d 6f eb eb                                      bl #0x30eae4
00832cac  08 00 54 e1                                      cmp r4, r8
00832cb0  f3 ff ff 1a                                      bne #0x832c84
00832cb4  08 d0 8d e2                                      add sp, sp, #8
00832cb8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00832cbc  98 a3 0d 00 90 a3 0d 00                          .byte 0x98, 0xa3, 0x0d, 0x00, 0x90, 0xa3, 0x0d, 0x00

; FUNCTION 0x00832cc4, declared_size=256, range_size=256, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard23sendRankGetAroundPlayerEiii
; demangled: GLXPlayerLeaderboard::sendRankGetAroundPlayer(int, int, int)
; decoder-mode: arm
00832cc4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00832cc8  e0 50 9f e5                                      ldr r5, [pc, #0xe0]
00832ccc  e0 70 9f e5                                      ldr r7, [pc, #0xe0]
00832cd0  01 da 4d e2                                      sub sp, sp, #0x1000
00832cd4  05 50 8f e0                                      add r5, pc, r5
00832cd8  07 c0 95 e7                                      ldr ip, [r5, r7]
00832cdc  18 d0 4d e2                                      sub sp, sp, #0x18
00832ce0  02 90 a0 e1                                      mov sb, r2
00832ce4  00 c0 9c e5                                      ldr ip, [ip]
00832ce8  01 2a a0 e3                                      mov r2, #0x1000
00832cec  18 40 8d e2                                      add r4, sp, #0x18
00832cf0  02 e0 8d e0                                      add lr, sp, r2
00832cf4  04 40 44 e2                                      sub r4, r4, #4
00832cf8  00 60 a0 e1                                      mov r6, r0
00832cfc  14 c0 8e e5                                      str ip, [lr, #0x14]
00832d00  01 80 a0 e1                                      mov r8, r1
00832d04  04 00 a0 e1                                      mov r0, r4
00832d08  00 10 a0 e3                                      mov r1, #0
00832d0c  03 a0 a0 e1                                      mov sl, r3
00832d10  93 e1 ff eb                                      bl #0x82b364
00832d14  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00832d18  0c c0 96 e5                                      ldr ip, [r6, #0xc]
00832d1c  08 30 96 e5                                      ldr r3, [r6, #8]
00832d20  01 10 8f e0                                      add r1, pc, r1
00832d24  04 00 a0 e1                                      mov r0, r4
00832d28  70 20 a0 e3                                      mov r2, #0x70
00832d2c  00 c0 8d e5                                      str ip, [sp]
00832d30  00 06 8d e9                                      stmib sp, {sb, sl}
00832d34  6a 6f eb eb                                      bl #0x30eae4
00832d38  00 00 58 e3                                      cmp r8, #0
00832d3c  06 00 00 ba                                      blt #0x832d5c
00832d40  04 00 a0 e1                                      mov r0, r4
00832d44  98 e0 ff eb                                      bl #0x82afac
00832d48  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00832d4c  00 00 84 e0                                      add r0, r4, r0
00832d50  08 20 a0 e1                                      mov r2, r8
00832d54  01 10 8f e0                                      add r1, pc, r1
00832d58  61 6f eb eb                                      bl #0x30eae4
00832d5c  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
00832d60  00 30 a0 e3                                      mov r3, #0
00832d64  68 30 c6 e5                                      strb r3, [r6, #0x68]
00832d68  00 00 8f e0                                      add r0, pc, r0
00832d6c  04 10 a0 e1                                      mov r1, r4
00832d70  83 e2 ff eb                                      bl #0x82b784
00832d74  04 10 a0 e1                                      mov r1, r4
00832d78  00 30 96 e5                                      ldr r3, [r6]
00832d7c  06 00 a0 e1                                      mov r0, r6
00832d80  0f e0 a0 e1                                      mov lr, pc
00832d84  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00832d88  07 30 95 e7                                      ldr r3, [r5, r7]
00832d8c  01 1a 8d e2                                      add r1, sp, #0x1000
00832d90  14 20 91 e5                                      ldr r2, [r1, #0x14]
00832d94  00 30 93 e5                                      ldr r3, [r3]
00832d98  03 00 52 e1                                      cmp r2, r3
00832d9c  02 00 00 1a                                      bne #0x832dac
00832da0  18 d0 8d e2                                      add sp, sp, #0x18
00832da4  01 da 8d e2                                      add sp, sp, #0x1000
00832da8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00832dac  57 6d eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00832db0  bc 1d 16 00 ac 40 00 00 08 a3 0d 00 f4 a2 0d 00  .byte 0xbc, 0x1d, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x08, 0xa3, 0x0d, 0x00, 0xf4, 0xa2, 0x0d, 0x00
00832dc0  e8 a2 0d 00                                      .byte 0xe8, 0xa2, 0x0d, 0x00

; FUNCTION 0x00832dc4, declared_size=288, range_size=288, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard11sendRankGetEiiiib
; demangled: GLXPlayerLeaderboard::sendRankGet(int, int, int, int, bool)
; decoder-mode: arm
00832dc4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00832dc8  00 51 9f e5                                      ldr r5, [pc, #0x100]
00832dcc  00 81 9f e5                                      ldr r8, [pc, #0x100]
00832dd0  01 da 4d e2                                      sub sp, sp, #0x1000
00832dd4  05 50 8f e0                                      add r5, pc, r5
00832dd8  08 c0 95 e7                                      ldr ip, [r5, r8]
00832ddc  24 d0 4d e2                                      sub sp, sp, #0x24
00832de0  02 b0 a0 e1                                      mov fp, r2
00832de4  00 c0 9c e5                                      ldr ip, [ip]
00832de8  01 2a a0 e3                                      mov r2, #0x1000
00832dec  20 40 8d e2                                      add r4, sp, #0x20
00832df0  02 e0 8d e0                                      add lr, sp, r2
00832df4  04 40 44 e2                                      sub r4, r4, #4
00832df8  00 60 a0 e1                                      mov r6, r0
00832dfc  1c c0 8e e5                                      str ip, [lr, #0x1c]
00832e00  01 a0 a0 e1                                      mov sl, r1
00832e04  04 00 a0 e1                                      mov r0, r4
00832e08  00 10 a0 e3                                      mov r1, #0
00832e0c  03 90 a0 e1                                      mov sb, r3
00832e10  4c 70 de e5                                      ldrb r7, [lr, #0x4c]
00832e14  52 e1 ff eb                                      bl #0x82b364
00832e18  0c c0 96 e5                                      ldr ip, [r6, #0xc]
00832e1c  08 30 96 e5                                      ldr r3, [r6, #8]
00832e20  01 ea 8d e2                                      add lr, sp, #0x1000
00832e24  00 c0 8d e5                                      str ip, [sp]
00832e28  04 90 8d e5                                      str sb, [sp, #4]
00832e2c  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
00832e30  48 c0 9e e5                                      ldr ip, [lr, #0x48]
00832e34  04 00 a0 e1                                      mov r0, r4
00832e38  01 10 8f e0                                      add r1, pc, r1
00832e3c  6f 20 a0 e3                                      mov r2, #0x6f
00832e40  08 c0 8d e5                                      str ip, [sp, #8]
00832e44  0c b0 8d e5                                      str fp, [sp, #0xc]
00832e48  10 70 8d e5                                      str r7, [sp, #0x10]
00832e4c  24 6f eb eb                                      bl #0x30eae4
00832e50  00 00 5a e3                                      cmp sl, #0
00832e54  06 00 00 ba                                      blt #0x832e74
00832e58  04 00 a0 e1                                      mov r0, r4
00832e5c  52 e0 ff eb                                      bl #0x82afac
00832e60  74 10 9f e5                                      ldr r1, [pc, #0x74]
00832e64  00 00 84 e0                                      add r0, r4, r0
00832e68  0a 20 a0 e1                                      mov r2, sl
00832e6c  01 10 8f e0                                      add r1, pc, r1
00832e70  1b 6f eb eb                                      bl #0x30eae4
00832e74  64 00 9f e5                                      ldr r0, [pc, #0x64]
00832e78  00 00 57 e3                                      cmp r7, #0
00832e7c  01 30 a0 13                                      movne r3, #1
00832e80  68 30 c6 15                                      strbne r3, [r6, #0x68]
00832e84  68 70 c6 05                                      strbeq r7, [r6, #0x68]
00832e88  04 10 a0 e1                                      mov r1, r4
00832e8c  00 00 8f e0                                      add r0, pc, r0
00832e90  3b e2 ff eb                                      bl #0x82b784
00832e94  04 10 a0 e1                                      mov r1, r4
00832e98  00 30 96 e5                                      ldr r3, [r6]
00832e9c  06 00 a0 e1                                      mov r0, r6
00832ea0  0f e0 a0 e1                                      mov lr, pc
00832ea4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00832ea8  08 30 95 e7                                      ldr r3, [r5, r8]
00832eac  01 1a 8d e2                                      add r1, sp, #0x1000
00832eb0  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00832eb4  00 30 93 e5                                      ldr r3, [r3]
00832eb8  03 00 52 e1                                      cmp r2, r3
00832ebc  02 00 00 1a                                      bne #0x832ecc
00832ec0  24 d0 8d e2                                      add sp, sp, #0x24
00832ec4  01 da 8d e2                                      add sp, sp, #0x1000
00832ec8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00832ecc  0f 6d eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00832ed0  bc 1c 16 00 ac 40 00 00 68 a2 0d 00 dc a1 0d 00  .byte 0xbc, 0x1c, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0xa2, 0x0d, 0x00, 0xdc, 0xa1, 0x0d, 0x00
00832ee0  3c a2 0d 00                                      .byte 0x3c, 0xa2, 0x0d, 0x00

; FUNCTION 0x00832ee4, declared_size=212, range_size=212, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard13sendHighScoreEPc
; demangled: GLXPlayerLeaderboard::sendHighScore(char*)
; decoder-mode: arm
00832ee4  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00832ee8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00832eec  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
00832ef0  03 30 8f e0                                      add r3, pc, r3
00832ef4  01 da 4d e2                                      sub sp, sp, #0x1000
00832ef8  02 60 93 e7                                      ldr r6, [r3, r2]
00832efc  14 d0 4d e2                                      sub sp, sp, #0x14
00832f00  01 2a a0 e3                                      mov r2, #0x1000
00832f04  00 c0 96 e5                                      ldr ip, [r6]
00832f08  10 40 8d e2                                      add r4, sp, #0x10
00832f0c  02 e0 8d e0                                      add lr, sp, r2
00832f10  04 40 44 e2                                      sub r4, r4, #4
00832f14  0c c0 8e e5                                      str ip, [lr, #0xc]
00832f18  00 50 a0 e1                                      mov r5, r0
00832f1c  01 70 a0 e1                                      mov r7, r1
00832f20  04 00 a0 e1                                      mov r0, r4
00832f24  00 10 a0 e3                                      mov r1, #0
00832f28  0d e1 ff eb                                      bl #0x82b364
00832f2c  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00832f30  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00832f34  08 30 95 e5                                      ldr r3, [r5, #8]
00832f38  6e 20 a0 e3                                      mov r2, #0x6e
00832f3c  01 10 8f e0                                      add r1, pc, r1
00832f40  04 00 a0 e1                                      mov r0, r4
00832f44  00 c0 8d e5                                      str ip, [sp]
00832f48  e5 6e eb eb                                      bl #0x30eae4
00832f4c  04 00 a0 e1                                      mov r0, r4
00832f50  15 e0 ff eb                                      bl #0x82afac
00832f54  07 10 a0 e1                                      mov r1, r7
00832f58  00 00 84 e0                                      add r0, r4, r0
00832f5c  e0 6e eb eb                                      bl #0x30eae4
00832f60  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00832f64  04 10 a0 e1                                      mov r1, r4
00832f68  00 00 8f e0                                      add r0, pc, r0
00832f6c  04 e2 ff eb                                      bl #0x82b784
00832f70  00 30 95 e5                                      ldr r3, [r5]
00832f74  05 00 a0 e1                                      mov r0, r5
00832f78  04 10 a0 e1                                      mov r1, r4
00832f7c  0f e0 a0 e1                                      mov lr, pc
00832f80  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00832f84  01 3a 8d e2                                      add r3, sp, #0x1000
00832f88  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00832f8c  00 30 96 e5                                      ldr r3, [r6]
00832f90  03 00 52 e1                                      cmp r2, r3
00832f94  02 00 00 1a                                      bne #0x832fa4
00832f98  14 d0 8d e2                                      add sp, sp, #0x14
00832f9c  01 da 8d e2                                      add sp, sp, #0x1000
00832fa0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00832fa4  d9 6c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00832fa8  a0 1b 16 00 ac 40 00 00 34 95 0d 00 a8 a1 0d 00  .byte 0xa0, 0x1b, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x95, 0x0d, 0x00, 0xa8, 0xa1, 0x0d, 0x00

; FUNCTION 0x00832fb8, declared_size=268, range_size=268, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard13sendHighScoreEiii
; demangled: GLXPlayerLeaderboard::sendHighScore(int, int, int)
; decoder-mode: arm
00832fb8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00832fbc  ec 40 9f e5                                      ldr r4, [pc, #0xec]
00832fc0  ec 70 9f e5                                      ldr r7, [pc, #0xec]
00832fc4  01 da 4d e2                                      sub sp, sp, #0x1000
00832fc8  04 40 8f e0                                      add r4, pc, r4
00832fcc  07 c0 94 e7                                      ldr ip, [r4, r7]
00832fd0  18 d0 4d e2                                      sub sp, sp, #0x18
00832fd4  02 80 a0 e1                                      mov r8, r2
00832fd8  00 c0 9c e5                                      ldr ip, [ip]
00832fdc  01 2a a0 e3                                      mov r2, #0x1000
00832fe0  18 50 8d e2                                      add r5, sp, #0x18
00832fe4  02 e0 8d e0                                      add lr, sp, r2
00832fe8  04 50 45 e2                                      sub r5, r5, #4
00832fec  00 60 a0 e1                                      mov r6, r0
00832ff0  01 90 a0 e1                                      mov sb, r1
00832ff4  05 00 a0 e1                                      mov r0, r5
00832ff8  00 10 a0 e3                                      mov r1, #0
00832ffc  14 c0 8e e5                                      str ip, [lr, #0x14]
00833000  03 a0 a0 e1                                      mov sl, r3
00833004  d6 e0 ff eb                                      bl #0x82b364
00833008  00 00 58 e3                                      cmp r8, #0
0083300c  1b 00 00 ba                                      blt #0x833080
00833010  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
00833014  0c c0 96 e5                                      ldr ip, [r6, #0xc]
00833018  08 30 96 e5                                      ldr r3, [r6, #8]
0083301c  01 10 8f e0                                      add r1, pc, r1
00833020  05 00 a0 e1                                      mov r0, r5
00833024  6e 20 a0 e3                                      mov r2, #0x6e
00833028  00 c0 8d e5                                      str ip, [sp]
0083302c  00 05 8d e9                                      stmib sp, {r8, sl}
00833030  0c 90 8d e5                                      str sb, [sp, #0xc]
00833034  aa 6e eb eb                                      bl #0x30eae4
00833038  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
0083303c  05 10 a0 e1                                      mov r1, r5
00833040  00 00 8f e0                                      add r0, pc, r0
00833044  ce e1 ff eb                                      bl #0x82b784
00833048  05 10 a0 e1                                      mov r1, r5
0083304c  00 30 96 e5                                      ldr r3, [r6]
00833050  06 00 a0 e1                                      mov r0, r6
00833054  0f e0 a0 e1                                      mov lr, pc
00833058  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083305c  07 30 94 e7                                      ldr r3, [r4, r7]
00833060  01 1a 8d e2                                      add r1, sp, #0x1000
00833064  14 20 91 e5                                      ldr r2, [r1, #0x14]
00833068  00 30 93 e5                                      ldr r3, [r3]
0083306c  03 00 52 e1                                      cmp r2, r3
00833070  0d 00 00 1a                                      bne #0x8330ac
00833074  18 d0 8d e2                                      add sp, sp, #0x18
00833078  01 da 8d e2                                      add sp, sp, #0x1000
0083307c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00833080  38 10 9f e5                                      ldr r1, [pc, #0x38]
00833084  0c c0 96 e5                                      ldr ip, [r6, #0xc]
00833088  08 30 96 e5                                      ldr r3, [r6, #8]
0083308c  01 10 8f e0                                      add r1, pc, r1
00833090  05 00 a0 e1                                      mov r0, r5
00833094  6e 20 a0 e3                                      mov r2, #0x6e
00833098  00 c0 8d e5                                      str ip, [sp]
0083309c  04 a0 8d e5                                      str sl, [sp, #4]
008330a0  08 90 8d e5                                      str sb, [sp, #8]
008330a4  8e 6e eb eb                                      bl #0x30eae4
008330a8  e2 ff ff ea                                      b #0x833038
008330ac  97 6c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008330b0  c8 1a 16 00 ac 40 00 00 44 a1 0d 00 60 a1 0d 00  .byte 0xc8, 0x1a, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0xa1, 0x0d, 0x00, 0x60, 0xa1, 0x0d, 0x00
008330c0  f4 a0 0d 00                                      .byte 0xf4, 0xa0, 0x0d, 0x00

; FUNCTION 0x008330c4, declared_size=236, range_size=236, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboard15OnUpdateSuccessEi
; demangled: GLXPlayerLeaderboard::OnUpdateSuccess(int)
; decoder-mode: arm
008330c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008330c8  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
008330cc  d8 80 9f e5                                      ldr r8, [pc, #0xd8]
008330d0  28 d0 4d e2                                      sub sp, sp, #0x28
008330d4  04 40 8f e0                                      add r4, pc, r4
008330d8  08 30 94 e7                                      ldr r3, [r4, r8]
008330dc  6f 00 51 e3                                      cmp r1, #0x6f
008330e0  01 50 a0 e1                                      mov r5, r1
008330e4  00 30 93 e5                                      ldr r3, [r3]
008330e8  00 60 a0 e1                                      mov r6, r0
008330ec  24 30 8d e5                                      str r3, [sp, #0x24]
008330f0  26 00 00 0a                                      beq #0x833190
008330f4  70 00 51 e3                                      cmp r1, #0x70
008330f8  1f 00 00 0a                                      beq #0x83317c
008330fc  6e 00 51 e3                                      cmp r1, #0x6e
00833100  09 00 00 0a                                      beq #0x83312c
00833104  06 00 a0 e1                                      mov r0, r6
00833108  05 10 a0 e1                                      mov r1, r5
0083310c  1d f9 ff eb                                      bl #0x831588
00833110  08 30 94 e7                                      ldr r3, [r4, r8]
00833114  24 20 9d e5                                      ldr r2, [sp, #0x24]
00833118  00 30 93 e5                                      ldr r3, [r3]
0083311c  03 00 52 e1                                      cmp r2, r3
00833120  1f 00 00 1a                                      bne #0x8331a4
00833124  28 d0 8d e2                                      add sp, sp, #0x28
00833128  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083312c  00 e0 a0 e3                                      mov lr, #0
00833130  08 c0 8d e2                                      add ip, sp, #8
00833134  04 e0 8c e4                                      str lr, [ip], #4
00833138  04 e0 8c e4                                      str lr, [ip], #4
0083313c  04 e0 8c e4                                      str lr, [ip], #4
00833140  04 e0 8c e4                                      str lr, [ip], #4
00833144  04 e0 8c e4                                      str lr, [ip], #4
00833148  28 70 8d e2                                      add r7, sp, #0x28
0083314c  24 e0 27 e5                                      str lr, [r7, #-0x24]!
00833150  04 e0 8c e4                                      str lr, [ip], #4
00833154  07 10 a0 e1                                      mov r1, r7
00833158  03 20 a0 e3                                      mov r2, #3
0083315c  7c 30 a0 e3                                      mov r3, #0x7c
00833160  24 00 90 e5                                      ldr r0, [r0, #0x24]
00833164  00 e0 8c e5                                      str lr, [ip]
00833168  dc de ff eb                                      bl #0x82ace0
0083316c  07 00 a0 e1                                      mov r0, r7
00833170  6a e0 ff eb                                      bl #0x82b320
00833174  58 00 86 e5                                      str r0, [r6, #0x58]
00833178  e1 ff ff ea                                      b #0x833104
0083317c  31 fe ff eb                                      bl #0x832a48
00833180  06 00 a0 e1                                      mov r0, r6
00833184  24 10 96 e5                                      ldr r1, [r6, #0x24]
00833188  5e fc ff eb                                      bl #0x832308
0083318c  dc ff ff ea                                      b #0x833104
00833190  2c fe ff eb                                      bl #0x832a48
00833194  06 00 a0 e1                                      mov r0, r6
00833198  24 10 96 e5                                      ldr r1, [r6, #0x24]
0083319c  fc fc ff eb                                      bl #0x832594
008331a0  d7 ff ff ea                                      b #0x833104
008331a4  59 6c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008331a8  bc 19 16 00 ac 40 00 00                          .byte 0xbc, 0x19, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008331b0, declared_size=60, range_size=60, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboardD1Ev
; demangled: GLXPlayerLeaderboard::~GLXPlayerLeaderboard()
; decoder-mode: arm
008331b0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008331b4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
008331b8  10 40 2d e9                                      push {r4, lr}
008331bc  03 30 8f e0                                      add r3, pc, r3
008331c0  02 20 93 e7                                      ldr r2, [r3, r2]
008331c4  00 40 a0 e1                                      mov r4, r0
008331c8  08 20 82 e2                                      add r2, r2, #8
008331cc  00 20 80 e5                                      str r2, [r0]
008331d0  1c fe ff eb                                      bl #0x832a48
008331d4  04 00 a0 e1                                      mov r0, r4
008331d8  88 fb ff eb                                      bl #0x832000
008331dc  04 00 a0 e1                                      mov r0, r4
008331e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008331e4  d4 18 16 00 9c 38 00 00                          .byte 0xd4, 0x18, 0x16, 0x00, 0x9c, 0x38, 0x00, 0x00

; FUNCTION 0x008331ec, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboardD0Ev
; demangled: GLXPlayerLeaderboard::~GLXPlayerLeaderboard()
; decoder-mode: arm
008331ec  10 40 2d e9                                      push {r4, lr}
008331f0  00 40 a0 e1                                      mov r4, r0
008331f4  ed ff ff eb                                      bl #0x8331b0
008331f8  04 00 a0 e1                                      mov r0, r4
008331fc  2b 6c eb eb                                      bl #0x30e2b0
00833200  04 00 a0 e1                                      mov r0, r4
00833204  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00833208, declared_size=60, range_size=60, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboardD2Ev
; demangled: GLXPlayerLeaderboard::~GLXPlayerLeaderboard()
; decoder-mode: arm
00833208  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0083320c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00833210  10 40 2d e9                                      push {r4, lr}
00833214  03 30 8f e0                                      add r3, pc, r3
00833218  02 20 93 e7                                      ldr r2, [r3, r2]
0083321c  00 40 a0 e1                                      mov r4, r0
00833220  08 20 82 e2                                      add r2, r2, #8
00833224  00 20 80 e5                                      str r2, [r0]
00833228  06 fe ff eb                                      bl #0x832a48
0083322c  04 00 a0 e1                                      mov r0, r4
00833230  72 fb ff eb                                      bl #0x832000
00833234  04 00 a0 e1                                      mov r0, r4
00833238  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0083323c  7c 18 16 00 9c 38 00 00                          .byte 0x7c, 0x18, 0x16, 0x00, 0x9c, 0x38, 0x00, 0x00

; FUNCTION 0x00833244, declared_size=152, range_size=152, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboardC1Ev
; demangled: GLXPlayerLeaderboard::GLXPlayerLeaderboard()
; decoder-mode: arm
00833244  70 40 2d e9                                      push {r4, r5, r6, lr}
00833248  84 50 9f e5                                      ldr r5, [pc, #0x84]
0083324c  00 40 a0 e1                                      mov r4, r0
00833250  b7 fb ff eb                                      bl #0x832134
00833254  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00833258  05 50 8f e0                                      add r5, pc, r5
0083325c  04 00 a0 e1                                      mov r0, r4
00833260  03 30 95 e7                                      ldr r3, [r5, r3]
00833264  08 30 83 e2                                      add r3, r3, #8
00833268  00 30 84 e5                                      str r3, [r4]
0083326c  d4 f8 ff eb                                      bl #0x8315c4
00833270  28 04 00 e3                                      movw r0, #0x428
00833274  84 6d eb eb                                      bl #0x30e88c
00833278  18 20 94 e5                                      ldr r2, [r4, #0x18]
0083327c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00833280  10 10 94 e5                                      ldr r1, [r4, #0x10]
00833284  00 50 a0 e1                                      mov r5, r0
00833288  07 eb ff eb                                      bl #0x82deac
0083328c  d6 23 0d e3                                      movw r2, #0xd3d6
00833290  00 30 a0 e3                                      mov r3, #0
00833294  f5 2f 4f e3                                      movt r2, #0xfff5
00833298  20 50 84 e5                                      str r5, [r4, #0x20]
0083329c  5c 20 84 e5                                      str r2, [r4, #0x5c]
008332a0  68 30 c4 e5                                      strb r3, [r4, #0x68]
008332a4  40 30 84 e5                                      str r3, [r4, #0x40]
008332a8  44 30 84 e5                                      str r3, [r4, #0x44]
008332ac  48 30 84 e5                                      str r3, [r4, #0x48]
008332b0  4c 30 84 e5                                      str r3, [r4, #0x4c]
008332b4  50 30 84 e5                                      str r3, [r4, #0x50]
008332b8  60 30 84 e5                                      str r3, [r4, #0x60]
008332bc  3c 20 84 e5                                      str r2, [r4, #0x3c]
008332c0  58 20 84 e5                                      str r2, [r4, #0x58]
008332c4  64 30 84 e5                                      str r3, [r4, #0x64]
008332c8  54 30 84 e5                                      str r3, [r4, #0x54]
008332cc  04 00 a0 e1                                      mov r0, r4
008332d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008332d4  38 18 16 00 9c 38 00 00                          .byte 0x38, 0x18, 0x16, 0x00, 0x9c, 0x38, 0x00, 0x00

; FUNCTION 0x008332dc, declared_size=152, range_size=152, mode=arm
; class-group: GLXPlayerLeaderboard
; alias: _ZN20GLXPlayerLeaderboardC2Ev
; demangled: GLXPlayerLeaderboard::GLXPlayerLeaderboard()
; decoder-mode: arm
008332dc  70 40 2d e9                                      push {r4, r5, r6, lr}
008332e0  84 50 9f e5                                      ldr r5, [pc, #0x84]
008332e4  00 40 a0 e1                                      mov r4, r0
008332e8  91 fb ff eb                                      bl #0x832134
008332ec  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
008332f0  05 50 8f e0                                      add r5, pc, r5
008332f4  04 00 a0 e1                                      mov r0, r4
008332f8  03 30 95 e7                                      ldr r3, [r5, r3]
008332fc  08 30 83 e2                                      add r3, r3, #8
00833300  00 30 84 e5                                      str r3, [r4]
00833304  ae f8 ff eb                                      bl #0x8315c4
00833308  28 04 00 e3                                      movw r0, #0x428
0083330c  5e 6d eb eb                                      bl #0x30e88c
00833310  18 20 94 e5                                      ldr r2, [r4, #0x18]
00833314  14 30 94 e5                                      ldr r3, [r4, #0x14]
00833318  10 10 94 e5                                      ldr r1, [r4, #0x10]
0083331c  00 50 a0 e1                                      mov r5, r0
00833320  e1 ea ff eb                                      bl #0x82deac
00833324  d6 23 0d e3                                      movw r2, #0xd3d6
00833328  00 30 a0 e3                                      mov r3, #0
0083332c  f5 2f 4f e3                                      movt r2, #0xfff5
00833330  20 50 84 e5                                      str r5, [r4, #0x20]
00833334  5c 20 84 e5                                      str r2, [r4, #0x5c]
00833338  68 30 c4 e5                                      strb r3, [r4, #0x68]
0083333c  40 30 84 e5                                      str r3, [r4, #0x40]
00833340  44 30 84 e5                                      str r3, [r4, #0x44]
00833344  48 30 84 e5                                      str r3, [r4, #0x48]
00833348  4c 30 84 e5                                      str r3, [r4, #0x4c]
0083334c  50 30 84 e5                                      str r3, [r4, #0x50]
00833350  60 30 84 e5                                      str r3, [r4, #0x60]
00833354  3c 20 84 e5                                      str r2, [r4, #0x3c]
00833358  58 20 84 e5                                      str r2, [r4, #0x58]
0083335c  64 30 84 e5                                      str r3, [r4, #0x64]
00833360  54 30 84 e5                                      str r3, [r4, #0x54]
00833364  04 00 a0 e1                                      mov r0, r4
00833368  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0083336c  a0 17 16 00 9c 38 00 00                          .byte 0xa0, 0x17, 0x16, 0x00, 0x9c, 0x38, 0x00, 0x00
