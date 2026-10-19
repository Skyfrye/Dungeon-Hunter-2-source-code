; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0082b9f4, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend15GetFriendsCountEv
; demangled: GLXPlayerUserFriend::GetFriendsCount()
; decoder-mode: arm
0082b9f4  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
0082b9f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082b9fc, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend13GetUserNumberEi
; demangled: GLXPlayerUserFriend::GetUserNumber(int)
; decoder-mode: arm
0082b9fc  40 30 90 e5                                      ldr r3, [r0, #0x40]
0082ba00  01 20 73 e2                                      rsbs r2, r3, #1
0082ba04  00 20 a0 33                                      movlo r2, #0
0082ba08  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082ba0c  01 00 00 0a                                      beq #0x82ba18
0082ba10  00 00 a0 e3                                      mov r0, #0
0082ba14  1e ff 2f e1                                      bx lr
0082ba18  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082ba1c  02 00 51 e1                                      cmp r1, r2
0082ba20  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082ba24  1e ff 2f d1                                      bxle lr
0082ba28  f8 ff ff ea                                      b #0x82ba10

; FUNCTION 0x0082ba2c, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend7GetNameEi
; demangled: GLXPlayerUserFriend::GetName(int)
; decoder-mode: arm
0082ba2c  44 30 90 e5                                      ldr r3, [r0, #0x44]
0082ba30  01 20 73 e2                                      rsbs r2, r3, #1
0082ba34  00 20 a0 33                                      movlo r2, #0
0082ba38  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082ba3c  01 00 00 0a                                      beq #0x82ba48
0082ba40  00 00 a0 e3                                      mov r0, #0
0082ba44  1e ff 2f e1                                      bx lr
0082ba48  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082ba4c  02 00 51 e1                                      cmp r1, r2
0082ba50  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
0082ba54  1e ff 2f b1                                      bxlt lr
0082ba58  f8 ff ff ea                                      b #0x82ba40

; FUNCTION 0x0082ba5c, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend10GetCountryEi
; demangled: GLXPlayerUserFriend::GetCountry(int)
; decoder-mode: arm
0082ba5c  48 30 90 e5                                      ldr r3, [r0, #0x48]
0082ba60  01 20 73 e2                                      rsbs r2, r3, #1
0082ba64  00 20 a0 33                                      movlo r2, #0
0082ba68  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082ba6c  01 00 00 0a                                      beq #0x82ba78
0082ba70  00 00 a0 e3                                      mov r0, #0
0082ba74  1e ff 2f e1                                      bx lr
0082ba78  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082ba7c  02 00 51 e1                                      cmp r1, r2
0082ba80  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082ba84  1e ff 2f d1                                      bxle lr
0082ba88  f8 ff ff ea                                      b #0x82ba70

; FUNCTION 0x0082ba8c, declared_size=60, range_size=60, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend13GetReputationEi
; demangled: GLXPlayerUserFriend::GetReputation(int)
; decoder-mode: arm
0082ba8c  4c 30 90 e5                                      ldr r3, [r0, #0x4c]
0082ba90  01 20 73 e2                                      rsbs r2, r3, #1
0082ba94  00 20 a0 33                                      movlo r2, #0
0082ba98  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082ba9c  05 00 00 1a                                      bne #0x82bab8
0082baa0  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082baa4  02 00 51 e1                                      cmp r1, r2
0082baa8  02 00 00 ca                                      bgt #0x82bab8
0082baac  81 11 a0 e1                                      lsl r1, r1, #3
0082bab0  d3 00 81 e1                                      ldrd r0, r1, [r1, r3]
0082bab4  1e ff 2f e1                                      bx lr
0082bab8  bf 14 a0 e3                                      mov r1, #0xbf000000
0082babc  00 00 a0 e3                                      mov r0, #0
0082bac0  0f 16 81 e2                                      add r1, r1, #0xf00000
0082bac4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082bac8, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend21GetBadReputationCountEi
; demangled: GLXPlayerUserFriend::GetBadReputationCount(int)
; decoder-mode: arm
0082bac8  50 30 90 e5                                      ldr r3, [r0, #0x50]
0082bacc  01 20 73 e2                                      rsbs r2, r3, #1
0082bad0  00 20 a0 33                                      movlo r2, #0
0082bad4  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082bad8  01 00 00 0a                                      beq #0x82bae4
0082badc  00 00 e0 e3                                      mvn r0, #0
0082bae0  1e ff 2f e1                                      bx lr
0082bae4  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082bae8  02 00 51 e1                                      cmp r1, r2
0082baec  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082baf0  1e ff 2f d1                                      bxle lr
0082baf4  f8 ff ff ea                                      b #0x82badc

; FUNCTION 0x0082baf8, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend22GetGoodReputationCountEi
; demangled: GLXPlayerUserFriend::GetGoodReputationCount(int)
; decoder-mode: arm
0082baf8  54 30 90 e5                                      ldr r3, [r0, #0x54]
0082bafc  01 20 73 e2                                      rsbs r2, r3, #1
0082bb00  00 20 a0 33                                      movlo r2, #0
0082bb04  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082bb08  01 00 00 0a                                      beq #0x82bb14
0082bb0c  00 00 e0 e3                                      mvn r0, #0
0082bb10  1e ff 2f e1                                      bx lr
0082bb14  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082bb18  02 00 51 e1                                      cmp r1, r2
0082bb1c  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082bb20  1e ff 2f d1                                      bxle lr
0082bb24  f8 ff ff ea                                      b #0x82bb0c

; FUNCTION 0x0082bb28, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend8GetStateEi
; demangled: GLXPlayerUserFriend::GetState(int)
; decoder-mode: arm
0082bb28  58 30 90 e5                                      ldr r3, [r0, #0x58]
0082bb2c  01 20 73 e2                                      rsbs r2, r3, #1
0082bb30  00 20 a0 33                                      movlo r2, #0
0082bb34  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082bb38  01 00 00 0a                                      beq #0x82bb44
0082bb3c  00 00 e0 e3                                      mvn r0, #0
0082bb40  1e ff 2f e1                                      bx lr
0082bb44  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082bb48  02 00 51 e1                                      cmp r1, r2
0082bb4c  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082bb50  1e ff 2f d1                                      bxle lr
0082bb54  f8 ff ff ea                                      b #0x82bb3c

; FUNCTION 0x0082bb58, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend14GetCurrentGameEi
; demangled: GLXPlayerUserFriend::GetCurrentGame(int)
; decoder-mode: arm
0082bb58  5c 30 90 e5                                      ldr r3, [r0, #0x5c]
0082bb5c  01 20 73 e2                                      rsbs r2, r3, #1
0082bb60  00 20 a0 33                                      movlo r2, #0
0082bb64  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082bb68  01 00 00 0a                                      beq #0x82bb74
0082bb6c  00 00 a0 e3                                      mov r0, #0
0082bb70  1e ff 2f e1                                      bx lr
0082bb74  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082bb78  02 00 51 e1                                      cmp r1, r2
0082bb7c  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082bb80  1e ff 2f d1                                      bxle lr
0082bb84  f8 ff ff ea                                      b #0x82bb6c

; FUNCTION 0x0082bb88, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend9GetTrophyEi
; demangled: GLXPlayerUserFriend::GetTrophy(int)
; decoder-mode: arm
0082bb88  60 30 90 e5                                      ldr r3, [r0, #0x60]
0082bb8c  01 20 73 e2                                      rsbs r2, r3, #1
0082bb90  00 20 a0 33                                      movlo r2, #0
0082bb94  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082bb98  01 00 00 0a                                      beq #0x82bba4
0082bb9c  00 00 e0 e3                                      mvn r0, #0
0082bba0  1e ff 2f e1                                      bx lr
0082bba4  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082bba8  02 00 51 e1                                      cmp r1, r2
0082bbac  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082bbb0  1e ff 2f d1                                      bxle lr
0082bbb4  f8 ff ff ea                                      b #0x82bb9c

; FUNCTION 0x0082bbb8, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend19GetTotalTrophyScoreEi
; demangled: GLXPlayerUserFriend::GetTotalTrophyScore(int)
; decoder-mode: arm
0082bbb8  70 30 90 e5                                      ldr r3, [r0, #0x70]
0082bbbc  01 20 73 e2                                      rsbs r2, r3, #1
0082bbc0  00 20 a0 33                                      movlo r2, #0
0082bbc4  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082bbc8  01 00 00 0a                                      beq #0x82bbd4
0082bbcc  00 00 e0 e3                                      mvn r0, #0
0082bbd0  1e ff 2f e1                                      bx lr
0082bbd4  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082bbd8  02 00 51 e1                                      cmp r1, r2
0082bbdc  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082bbe0  1e ff 2f d1                                      bxle lr
0082bbe4  f8 ff ff ea                                      b #0x82bbcc

; FUNCTION 0x0082bbe8, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend11GetLanguageEi
; demangled: GLXPlayerUserFriend::GetLanguage(int)
; decoder-mode: arm
0082bbe8  64 30 90 e5                                      ldr r3, [r0, #0x64]
0082bbec  01 20 73 e2                                      rsbs r2, r3, #1
0082bbf0  00 20 a0 33                                      movlo r2, #0
0082bbf4  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082bbf8  01 00 00 0a                                      beq #0x82bc04
0082bbfc  00 00 a0 e3                                      mov r0, #0
0082bc00  1e ff 2f e1                                      bx lr
0082bc04  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082bc08  02 00 51 e1                                      cmp r1, r2
0082bc0c  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082bc10  1e ff 2f d1                                      bxle lr
0082bc14  f8 ff ff ea                                      b #0x82bbfc

; FUNCTION 0x0082bc18, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend19GetAvatarLastUpdateEi
; demangled: GLXPlayerUserFriend::GetAvatarLastUpdate(int)
; decoder-mode: arm
0082bc18  6c 30 90 e5                                      ldr r3, [r0, #0x6c]
0082bc1c  01 20 73 e2                                      rsbs r2, r3, #1
0082bc20  00 20 a0 33                                      movlo r2, #0
0082bc24  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082bc28  01 00 00 0a                                      beq #0x82bc34
0082bc2c  00 00 a0 e3                                      mov r0, #0
0082bc30  1e ff 2f e1                                      bx lr
0082bc34  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082bc38  02 00 51 e1                                      cmp r1, r2
0082bc3c  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082bc40  1e ff 2f d1                                      bxle lr
0082bc44  f8 ff ff ea                                      b #0x82bc2c

; FUNCTION 0x0082bc48, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend12GetAvatarKeyEi
; demangled: GLXPlayerUserFriend::GetAvatarKey(int)
; decoder-mode: arm
0082bc48  68 30 90 e5                                      ldr r3, [r0, #0x68]
0082bc4c  01 20 73 e2                                      rsbs r2, r3, #1
0082bc50  00 20 a0 33                                      movlo r2, #0
0082bc54  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0082bc58  01 00 00 0a                                      beq #0x82bc64
0082bc5c  00 00 a0 e3                                      mov r0, #0
0082bc60  1e ff 2f e1                                      bx lr
0082bc64  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
0082bc68  02 00 51 e1                                      cmp r1, r2
0082bc6c  01 01 93 d7                                      ldrle r0, [r3, r1, lsl #2]
0082bc70  1e ff 2f d1                                      bxle lr
0082bc74  f8 ff ff ea                                      b #0x82bc5c

; FUNCTION 0x0082bc78, declared_size=864, range_size=864, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend16clearFriendsListEv
; demangled: GLXPlayerUserFriend::clearFriendsList()
; decoder-mode: arm
0082bc78  70 40 2d e9                                      push {r4, r5, r6, lr}
0082bc7c  00 40 a0 e1                                      mov r4, r0
0082bc80  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0082bc84  00 00 50 e3                                      cmp r0, #0
0082bc88  02 00 00 0a                                      beq #0x82bc98
0082bc8c  87 89 eb eb                                      bl #0x30e2b0
0082bc90  00 30 a0 e3                                      mov r3, #0
0082bc94  4c 30 84 e5                                      str r3, [r4, #0x4c]
0082bc98  50 00 94 e5                                      ldr r0, [r4, #0x50]
0082bc9c  00 00 50 e3                                      cmp r0, #0
0082bca0  02 00 00 0a                                      beq #0x82bcb0
0082bca4  81 89 eb eb                                      bl #0x30e2b0
0082bca8  00 30 a0 e3                                      mov r3, #0
0082bcac  50 30 84 e5                                      str r3, [r4, #0x50]
0082bcb0  54 00 94 e5                                      ldr r0, [r4, #0x54]
0082bcb4  00 00 50 e3                                      cmp r0, #0
0082bcb8  02 00 00 0a                                      beq #0x82bcc8
0082bcbc  7b 89 eb eb                                      bl #0x30e2b0
0082bcc0  00 30 a0 e3                                      mov r3, #0
0082bcc4  54 30 84 e5                                      str r3, [r4, #0x54]
0082bcc8  58 00 94 e5                                      ldr r0, [r4, #0x58]
0082bccc  00 00 50 e3                                      cmp r0, #0
0082bcd0  02 00 00 0a                                      beq #0x82bce0
0082bcd4  75 89 eb eb                                      bl #0x30e2b0
0082bcd8  00 30 a0 e3                                      mov r3, #0
0082bcdc  58 30 84 e5                                      str r3, [r4, #0x58]
0082bce0  60 00 94 e5                                      ldr r0, [r4, #0x60]
0082bce4  00 00 50 e3                                      cmp r0, #0
0082bce8  02 00 00 0a                                      beq #0x82bcf8
0082bcec  6f 89 eb eb                                      bl #0x30e2b0
0082bcf0  00 30 a0 e3                                      mov r3, #0
0082bcf4  60 30 84 e5                                      str r3, [r4, #0x60]
0082bcf8  70 00 94 e5                                      ldr r0, [r4, #0x70]
0082bcfc  00 00 50 e3                                      cmp r0, #0
0082bd00  02 00 00 0a                                      beq #0x82bd10
0082bd04  69 89 eb eb                                      bl #0x30e2b0
0082bd08  00 30 a0 e3                                      mov r3, #0
0082bd0c  70 30 84 e5                                      str r3, [r4, #0x70]
0082bd10  40 20 94 e5                                      ldr r2, [r4, #0x40]
0082bd14  00 00 52 e3                                      cmp r2, #0
0082bd18  15 00 00 0a                                      beq #0x82bd74
0082bd1c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082bd20  00 00 53 e3                                      cmp r3, #0
0082bd24  0e 00 00 da                                      ble #0x82bd64
0082bd28  00 50 a0 e3                                      mov r5, #0
0082bd2c  05 60 a0 e1                                      mov r6, r5
0082bd30  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0082bd34  00 00 50 e3                                      cmp r0, #0
0082bd38  04 00 00 0a                                      beq #0x82bd50
0082bd3c  dd 88 eb eb                                      bl #0x30e0b8
0082bd40  40 30 94 e5                                      ldr r3, [r4, #0x40]
0082bd44  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0082bd48  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082bd4c  40 20 94 e5                                      ldr r2, [r4, #0x40]
0082bd50  01 50 85 e2                                      add r5, r5, #1
0082bd54  05 00 53 e1                                      cmp r3, r5
0082bd58  f4 ff ff ca                                      bgt #0x82bd30
0082bd5c  00 00 52 e3                                      cmp r2, #0
0082bd60  01 00 00 0a                                      beq #0x82bd6c
0082bd64  02 00 a0 e1                                      mov r0, r2
0082bd68  d2 88 eb eb                                      bl #0x30e0b8
0082bd6c  00 30 a0 e3                                      mov r3, #0
0082bd70  40 30 84 e5                                      str r3, [r4, #0x40]
0082bd74  44 20 94 e5                                      ldr r2, [r4, #0x44]
0082bd78  00 00 52 e3                                      cmp r2, #0
0082bd7c  15 00 00 0a                                      beq #0x82bdd8
0082bd80  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082bd84  00 00 53 e3                                      cmp r3, #0
0082bd88  0e 00 00 da                                      ble #0x82bdc8
0082bd8c  00 50 a0 e3                                      mov r5, #0
0082bd90  05 60 a0 e1                                      mov r6, r5
0082bd94  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0082bd98  00 00 50 e3                                      cmp r0, #0
0082bd9c  04 00 00 0a                                      beq #0x82bdb4
0082bda0  c4 88 eb eb                                      bl #0x30e0b8
0082bda4  44 30 94 e5                                      ldr r3, [r4, #0x44]
0082bda8  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0082bdac  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082bdb0  44 20 94 e5                                      ldr r2, [r4, #0x44]
0082bdb4  01 50 85 e2                                      add r5, r5, #1
0082bdb8  05 00 53 e1                                      cmp r3, r5
0082bdbc  f4 ff ff ca                                      bgt #0x82bd94
0082bdc0  00 00 52 e3                                      cmp r2, #0
0082bdc4  01 00 00 0a                                      beq #0x82bdd0
0082bdc8  02 00 a0 e1                                      mov r0, r2
0082bdcc  b9 88 eb eb                                      bl #0x30e0b8
0082bdd0  00 30 a0 e3                                      mov r3, #0
0082bdd4  44 30 84 e5                                      str r3, [r4, #0x44]
0082bdd8  48 20 94 e5                                      ldr r2, [r4, #0x48]
0082bddc  00 00 52 e3                                      cmp r2, #0
0082bde0  15 00 00 0a                                      beq #0x82be3c
0082bde4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082bde8  00 00 53 e3                                      cmp r3, #0
0082bdec  0e 00 00 da                                      ble #0x82be2c
0082bdf0  00 50 a0 e3                                      mov r5, #0
0082bdf4  05 60 a0 e1                                      mov r6, r5
0082bdf8  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0082bdfc  00 00 50 e3                                      cmp r0, #0
0082be00  04 00 00 0a                                      beq #0x82be18
0082be04  ab 88 eb eb                                      bl #0x30e0b8
0082be08  48 30 94 e5                                      ldr r3, [r4, #0x48]
0082be0c  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0082be10  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082be14  48 20 94 e5                                      ldr r2, [r4, #0x48]
0082be18  01 50 85 e2                                      add r5, r5, #1
0082be1c  05 00 53 e1                                      cmp r3, r5
0082be20  f4 ff ff ca                                      bgt #0x82bdf8
0082be24  00 00 52 e3                                      cmp r2, #0
0082be28  01 00 00 0a                                      beq #0x82be34
0082be2c  02 00 a0 e1                                      mov r0, r2
0082be30  a0 88 eb eb                                      bl #0x30e0b8
0082be34  00 30 a0 e3                                      mov r3, #0
0082be38  48 30 84 e5                                      str r3, [r4, #0x48]
0082be3c  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0082be40  00 00 52 e3                                      cmp r2, #0
0082be44  15 00 00 0a                                      beq #0x82bea0
0082be48  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082be4c  00 00 53 e3                                      cmp r3, #0
0082be50  0e 00 00 da                                      ble #0x82be90
0082be54  00 50 a0 e3                                      mov r5, #0
0082be58  05 60 a0 e1                                      mov r6, r5
0082be5c  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0082be60  00 00 50 e3                                      cmp r0, #0
0082be64  04 00 00 0a                                      beq #0x82be7c
0082be68  92 88 eb eb                                      bl #0x30e0b8
0082be6c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0082be70  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0082be74  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082be78  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0082be7c  01 50 85 e2                                      add r5, r5, #1
0082be80  05 00 53 e1                                      cmp r3, r5
0082be84  f4 ff ff ca                                      bgt #0x82be5c
0082be88  00 00 52 e3                                      cmp r2, #0
0082be8c  01 00 00 0a                                      beq #0x82be98
0082be90  02 00 a0 e1                                      mov r0, r2
0082be94  87 88 eb eb                                      bl #0x30e0b8
0082be98  00 30 a0 e3                                      mov r3, #0
0082be9c  5c 30 84 e5                                      str r3, [r4, #0x5c]
0082bea0  64 20 94 e5                                      ldr r2, [r4, #0x64]
0082bea4  00 00 52 e3                                      cmp r2, #0
0082bea8  15 00 00 0a                                      beq #0x82bf04
0082beac  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082beb0  00 00 53 e3                                      cmp r3, #0
0082beb4  0e 00 00 da                                      ble #0x82bef4
0082beb8  00 50 a0 e3                                      mov r5, #0
0082bebc  05 60 a0 e1                                      mov r6, r5
0082bec0  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0082bec4  00 00 50 e3                                      cmp r0, #0
0082bec8  04 00 00 0a                                      beq #0x82bee0
0082becc  79 88 eb eb                                      bl #0x30e0b8
0082bed0  64 30 94 e5                                      ldr r3, [r4, #0x64]
0082bed4  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0082bed8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082bedc  64 20 94 e5                                      ldr r2, [r4, #0x64]
0082bee0  01 50 85 e2                                      add r5, r5, #1
0082bee4  05 00 53 e1                                      cmp r3, r5
0082bee8  f4 ff ff ca                                      bgt #0x82bec0
0082beec  00 00 52 e3                                      cmp r2, #0
0082bef0  01 00 00 0a                                      beq #0x82befc
0082bef4  02 00 a0 e1                                      mov r0, r2
0082bef8  6e 88 eb eb                                      bl #0x30e0b8
0082befc  00 30 a0 e3                                      mov r3, #0
0082bf00  64 30 84 e5                                      str r3, [r4, #0x64]
0082bf04  6c 20 94 e5                                      ldr r2, [r4, #0x6c]
0082bf08  00 00 52 e3                                      cmp r2, #0
0082bf0c  15 00 00 0a                                      beq #0x82bf68
0082bf10  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082bf14  00 00 53 e3                                      cmp r3, #0
0082bf18  0e 00 00 da                                      ble #0x82bf58
0082bf1c  00 50 a0 e3                                      mov r5, #0
0082bf20  05 60 a0 e1                                      mov r6, r5
0082bf24  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0082bf28  00 00 50 e3                                      cmp r0, #0
0082bf2c  04 00 00 0a                                      beq #0x82bf44
0082bf30  60 88 eb eb                                      bl #0x30e0b8
0082bf34  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0082bf38  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0082bf3c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082bf40  6c 20 94 e5                                      ldr r2, [r4, #0x6c]
0082bf44  01 50 85 e2                                      add r5, r5, #1
0082bf48  05 00 53 e1                                      cmp r3, r5
0082bf4c  f4 ff ff ca                                      bgt #0x82bf24
0082bf50  00 00 52 e3                                      cmp r2, #0
0082bf54  01 00 00 0a                                      beq #0x82bf60
0082bf58  02 00 a0 e1                                      mov r0, r2
0082bf5c  55 88 eb eb                                      bl #0x30e0b8
0082bf60  00 30 a0 e3                                      mov r3, #0
0082bf64  6c 30 84 e5                                      str r3, [r4, #0x6c]
0082bf68  68 20 94 e5                                      ldr r2, [r4, #0x68]
0082bf6c  00 00 52 e3                                      cmp r2, #0
0082bf70  15 00 00 0a                                      beq #0x82bfcc
0082bf74  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082bf78  00 00 53 e3                                      cmp r3, #0
0082bf7c  0e 00 00 da                                      ble #0x82bfbc
0082bf80  00 50 a0 e3                                      mov r5, #0
0082bf84  05 60 a0 e1                                      mov r6, r5
0082bf88  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0082bf8c  00 00 50 e3                                      cmp r0, #0
0082bf90  04 00 00 0a                                      beq #0x82bfa8
0082bf94  47 88 eb eb                                      bl #0x30e0b8
0082bf98  68 30 94 e5                                      ldr r3, [r4, #0x68]
0082bf9c  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0082bfa0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082bfa4  68 20 94 e5                                      ldr r2, [r4, #0x68]
0082bfa8  01 50 85 e2                                      add r5, r5, #1
0082bfac  05 00 53 e1                                      cmp r3, r5
0082bfb0  f4 ff ff ca                                      bgt #0x82bf88
0082bfb4  00 00 52 e3                                      cmp r2, #0
0082bfb8  01 00 00 0a                                      beq #0x82bfc4
0082bfbc  02 00 a0 e1                                      mov r0, r2
0082bfc0  3c 88 eb eb                                      bl #0x30e0b8
0082bfc4  00 30 a0 e3                                      mov r3, #0
0082bfc8  68 30 84 e5                                      str r3, [r4, #0x68]
0082bfcc  00 30 a0 e3                                      mov r3, #0
0082bfd0  3c 30 84 e5                                      str r3, [r4, #0x3c]
0082bfd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0082bfd8, declared_size=1452, range_size=1452, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend18processFriendsListEPc
; demangled: GLXPlayerUserFriend::processFriendsList(char*)
; decoder-mode: arm
0082bfd8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0082bfdc  98 a5 9f e5                                      ldr sl, [pc, #0x598]
0082bfe0  98 b5 9f e5                                      ldr fp, [pc, #0x598]
0082bfe4  e5 df 4d e2                                      sub sp, sp, #0x394
0082bfe8  0a a0 8f e0                                      add sl, pc, sl
0082bfec  0b 30 9a e7                                      ldr r3, [sl, fp]
0082bff0  01 90 a0 e1                                      mov sb, r1
0082bff4  00 40 a0 e1                                      mov r4, r0
0082bff8  00 30 93 e5                                      ldr r3, [r3]
0082bffc  8c 33 8d e5                                      str r3, [sp, #0x38c]
0082c000  1c ff ff eb                                      bl #0x82bc78
0082c004  00 00 59 e3                                      cmp sb, #0
0082c008  25 00 00 0a                                      beq #0x82c0a4
0082c00c  09 00 a0 e1                                      mov r0, sb
0082c010  e5 fb ff eb                                      bl #0x82afac
0082c014  00 00 50 e3                                      cmp r0, #0
0082c018  21 00 00 da                                      ble #0x82c0a4
0082c01c  0c 70 8d e2                                      add r7, sp, #0xc
0082c020  83 6f 8d e2                                      add r6, sp, #0x20c
0082c024  00 10 a0 e3                                      mov r1, #0
0082c028  02 2c a0 e3                                      mov r2, #0x200
0082c02c  07 00 a0 e1                                      mov r0, r7
0082c030  0a 89 eb eb                                      bl #0x30e460
0082c034  01 2c a0 e3                                      mov r2, #0x100
0082c038  00 10 a0 e3                                      mov r1, #0
0082c03c  06 00 a0 e1                                      mov r0, r6
0082c040  06 89 eb eb                                      bl #0x30e460
0082c044  7c 30 a0 e3                                      mov r3, #0x7c
0082c048  06 10 a0 e1                                      mov r1, r6
0082c04c  00 20 a0 e3                                      mov r2, #0
0082c050  09 00 a0 e1                                      mov r0, sb
0082c054  21 fb ff eb                                      bl #0x82ace0
0082c058  06 00 a0 e1                                      mov r0, r6
0082c05c  01 2c a0 e3                                      mov r2, #0x100
0082c060  00 10 a0 e3                                      mov r1, #0
0082c064  be fc ff eb                                      bl #0x82b364
0082c068  06 10 a0 e1                                      mov r1, r6
0082c06c  01 20 a0 e3                                      mov r2, #1
0082c070  7c 30 a0 e3                                      mov r3, #0x7c
0082c074  09 00 a0 e1                                      mov r0, sb
0082c078  18 fb ff eb                                      bl #0x82ace0
0082c07c  06 00 a0 e1                                      mov r0, r6
0082c080  a6 fc ff eb                                      bl #0x82b320
0082c084  00 10 a0 e3                                      mov r1, #0
0082c088  3c 00 84 e5                                      str r0, [r4, #0x3c]
0082c08c  01 2c a0 e3                                      mov r2, #0x100
0082c090  06 00 a0 e1                                      mov r0, r6
0082c094  b2 fc ff eb                                      bl #0x82b364
0082c098  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0082c09c  00 00 50 e3                                      cmp r0, #0
0082c0a0  06 00 00 1a                                      bne #0x82c0c0
0082c0a4  0b 30 9a e7                                      ldr r3, [sl, fp]
0082c0a8  8c 23 9d e5                                      ldr r2, [sp, #0x38c]
0082c0ac  00 30 93 e5                                      ldr r3, [r3]
0082c0b0  03 00 52 e1                                      cmp r2, r3
0082c0b4  2f 01 00 1a                                      bne #0x82c578
0082c0b8  e5 df 8d e2                                      add sp, sp, #0x394
0082c0bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082c0c0  80 01 a0 e1                                      lsl r0, r0, #3
0082c0c4  01 88 eb eb                                      bl #0x30e0d0
0082c0c8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c0cc  4c 00 84 e5                                      str r0, [r4, #0x4c]
0082c0d0  03 01 a0 e1                                      lsl r0, r3, #2
0082c0d4  fd 87 eb eb                                      bl #0x30e0d0
0082c0d8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c0dc  50 00 84 e5                                      str r0, [r4, #0x50]
0082c0e0  03 01 a0 e1                                      lsl r0, r3, #2
0082c0e4  f9 87 eb eb                                      bl #0x30e0d0
0082c0e8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c0ec  54 00 84 e5                                      str r0, [r4, #0x54]
0082c0f0  03 01 a0 e1                                      lsl r0, r3, #2
0082c0f4  f5 87 eb eb                                      bl #0x30e0d0
0082c0f8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c0fc  58 00 84 e5                                      str r0, [r4, #0x58]
0082c100  03 01 a0 e1                                      lsl r0, r3, #2
0082c104  f1 87 eb eb                                      bl #0x30e0d0
0082c108  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c10c  60 00 84 e5                                      str r0, [r4, #0x60]
0082c110  03 01 a0 e1                                      lsl r0, r3, #2
0082c114  ed 87 eb eb                                      bl #0x30e0d0
0082c118  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c11c  70 00 84 e5                                      str r0, [r4, #0x70]
0082c120  03 01 a0 e1                                      lsl r0, r3, #2
0082c124  e9 87 eb eb                                      bl #0x30e0d0
0082c128  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c12c  40 00 84 e5                                      str r0, [r4, #0x40]
0082c130  03 01 a0 e1                                      lsl r0, r3, #2
0082c134  e5 87 eb eb                                      bl #0x30e0d0
0082c138  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c13c  44 00 84 e5                                      str r0, [r4, #0x44]
0082c140  03 01 a0 e1                                      lsl r0, r3, #2
0082c144  e1 87 eb eb                                      bl #0x30e0d0
0082c148  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c14c  48 00 84 e5                                      str r0, [r4, #0x48]
0082c150  03 01 a0 e1                                      lsl r0, r3, #2
0082c154  dd 87 eb eb                                      bl #0x30e0d0
0082c158  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c15c  5c 00 84 e5                                      str r0, [r4, #0x5c]
0082c160  03 01 a0 e1                                      lsl r0, r3, #2
0082c164  d9 87 eb eb                                      bl #0x30e0d0
0082c168  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c16c  64 00 84 e5                                      str r0, [r4, #0x64]
0082c170  03 01 a0 e1                                      lsl r0, r3, #2
0082c174  d5 87 eb eb                                      bl #0x30e0d0
0082c178  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c17c  6c 00 84 e5                                      str r0, [r4, #0x6c]
0082c180  03 01 a0 e1                                      lsl r0, r3, #2
0082c184  d1 87 eb eb                                      bl #0x30e0d0
0082c188  01 2c a0 e3                                      mov r2, #0x100
0082c18c  68 00 84 e5                                      str r0, [r4, #0x68]
0082c190  00 10 a0 e3                                      mov r1, #0
0082c194  06 00 a0 e1                                      mov r0, r6
0082c198  71 fc ff eb                                      bl #0x82b364
0082c19c  7c 30 a0 e3                                      mov r3, #0x7c
0082c1a0  09 00 a0 e1                                      mov r0, sb
0082c1a4  06 10 a0 e1                                      mov r1, r6
0082c1a8  02 20 a0 e3                                      mov r2, #2
0082c1ac  cb fa ff eb                                      bl #0x82ace0
0082c1b0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c1b4  00 00 53 e3                                      cmp r3, #0
0082c1b8  b9 ff ff da                                      ble #0x82c0a4
0082c1bc  00 50 a0 e3                                      mov r5, #0
0082c1c0  c3 8f 8d e2                                      add r8, sp, #0x30c
0082c1c4  02 2c a0 e3                                      mov r2, #0x200
0082c1c8  07 00 a0 e1                                      mov r0, r7
0082c1cc  00 10 a0 e3                                      mov r1, #0
0082c1d0  63 fc ff eb                                      bl #0x82b364
0082c1d4  03 20 85 e2                                      add r2, r5, #3
0082c1d8  07 10 a0 e1                                      mov r1, r7
0082c1dc  7c 30 a0 e3                                      mov r3, #0x7c
0082c1e0  09 00 a0 e1                                      mov r0, sb
0082c1e4  bd fa ff eb                                      bl #0x82ace0
0082c1e8  40 30 94 e5                                      ldr r3, [r4, #0x40]
0082c1ec  80 00 a0 e3                                      mov r0, #0x80
0082c1f0  04 30 8d e5                                      str r3, [sp, #4]
0082c1f4  b5 87 eb eb                                      bl #0x30e0d0
0082c1f8  04 30 9d e5                                      ldr r3, [sp, #4]
0082c1fc  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c200  44 30 94 e5                                      ldr r3, [r4, #0x44]
0082c204  80 00 a0 e3                                      mov r0, #0x80
0082c208  04 30 8d e5                                      str r3, [sp, #4]
0082c20c  af 87 eb eb                                      bl #0x30e0d0
0082c210  04 30 9d e5                                      ldr r3, [sp, #4]
0082c214  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c218  48 30 94 e5                                      ldr r3, [r4, #0x48]
0082c21c  80 00 a0 e3                                      mov r0, #0x80
0082c220  04 30 8d e5                                      str r3, [sp, #4]
0082c224  a9 87 eb eb                                      bl #0x30e0d0
0082c228  04 30 9d e5                                      ldr r3, [sp, #4]
0082c22c  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c230  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0082c234  80 00 a0 e3                                      mov r0, #0x80
0082c238  04 30 8d e5                                      str r3, [sp, #4]
0082c23c  a3 87 eb eb                                      bl #0x30e0d0
0082c240  04 30 9d e5                                      ldr r3, [sp, #4]
0082c244  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c248  64 30 94 e5                                      ldr r3, [r4, #0x64]
0082c24c  03 00 a0 e3                                      mov r0, #3
0082c250  04 30 8d e5                                      str r3, [sp, #4]
0082c254  9d 87 eb eb                                      bl #0x30e0d0
0082c258  04 30 9d e5                                      ldr r3, [sp, #4]
0082c25c  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c260  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0082c264  20 00 a0 e3                                      mov r0, #0x20
0082c268  04 30 8d e5                                      str r3, [sp, #4]
0082c26c  97 87 eb eb                                      bl #0x30e0d0
0082c270  04 30 9d e5                                      ldr r3, [sp, #4]
0082c274  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c278  68 30 94 e5                                      ldr r3, [r4, #0x68]
0082c27c  20 00 a0 e3                                      mov r0, #0x20
0082c280  04 30 8d e5                                      str r3, [sp, #4]
0082c284  91 87 eb eb                                      bl #0x30e0d0
0082c288  04 30 9d e5                                      ldr r3, [sp, #4]
0082c28c  00 10 a0 e3                                      mov r1, #0
0082c290  80 20 a0 e3                                      mov r2, #0x80
0082c294  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c298  40 30 94 e5                                      ldr r3, [r4, #0x40]
0082c29c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0082c2a0  2f fc ff eb                                      bl #0x82b364
0082c2a4  44 30 94 e5                                      ldr r3, [r4, #0x44]
0082c2a8  00 10 a0 e3                                      mov r1, #0
0082c2ac  80 20 a0 e3                                      mov r2, #0x80
0082c2b0  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0082c2b4  2a fc ff eb                                      bl #0x82b364
0082c2b8  48 30 94 e5                                      ldr r3, [r4, #0x48]
0082c2bc  00 10 a0 e3                                      mov r1, #0
0082c2c0  80 20 a0 e3                                      mov r2, #0x80
0082c2c4  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0082c2c8  25 fc ff eb                                      bl #0x82b364
0082c2cc  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0082c2d0  00 10 a0 e3                                      mov r1, #0
0082c2d4  80 20 a0 e3                                      mov r2, #0x80
0082c2d8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0082c2dc  20 fc ff eb                                      bl #0x82b364
0082c2e0  64 30 94 e5                                      ldr r3, [r4, #0x64]
0082c2e4  00 10 a0 e3                                      mov r1, #0
0082c2e8  03 20 a0 e3                                      mov r2, #3
0082c2ec  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0082c2f0  1b fc ff eb                                      bl #0x82b364
0082c2f4  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0082c2f8  00 10 a0 e3                                      mov r1, #0
0082c2fc  20 20 a0 e3                                      mov r2, #0x20
0082c300  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0082c304  16 fc ff eb                                      bl #0x82b364
0082c308  68 30 94 e5                                      ldr r3, [r4, #0x68]
0082c30c  00 10 a0 e3                                      mov r1, #0
0082c310  20 20 a0 e3                                      mov r2, #0x20
0082c314  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0082c318  11 fc ff eb                                      bl #0x82b364
0082c31c  40 10 94 e5                                      ldr r1, [r4, #0x40]
0082c320  00 20 a0 e3                                      mov r2, #0
0082c324  5e 30 a0 e3                                      mov r3, #0x5e
0082c328  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
0082c32c  07 00 a0 e1                                      mov r0, r7
0082c330  6a fa ff eb                                      bl #0x82ace0
0082c334  44 10 94 e5                                      ldr r1, [r4, #0x44]
0082c338  01 20 a0 e3                                      mov r2, #1
0082c33c  5e 30 a0 e3                                      mov r3, #0x5e
0082c340  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
0082c344  07 00 a0 e1                                      mov r0, r7
0082c348  64 fa ff eb                                      bl #0x82ace0
0082c34c  48 10 94 e5                                      ldr r1, [r4, #0x48]
0082c350  5e 30 a0 e3                                      mov r3, #0x5e
0082c354  02 20 a0 e3                                      mov r2, #2
0082c358  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
0082c35c  07 00 a0 e1                                      mov r0, r7
0082c360  5e fa ff eb                                      bl #0x82ace0
0082c364  06 00 a0 e1                                      mov r0, r6
0082c368  01 2c a0 e3                                      mov r2, #0x100
0082c36c  00 10 a0 e3                                      mov r1, #0
0082c370  fb fb ff eb                                      bl #0x82b364
0082c374  5e 30 a0 e3                                      mov r3, #0x5e
0082c378  06 10 a0 e1                                      mov r1, r6
0082c37c  03 20 a0 e3                                      mov r2, #3
0082c380  07 00 a0 e1                                      mov r0, r7
0082c384  55 fa ff eb                                      bl #0x82ace0
0082c388  00 10 a0 e3                                      mov r1, #0
0082c38c  80 20 a0 e3                                      mov r2, #0x80
0082c390  08 00 a0 e1                                      mov r0, r8
0082c394  31 88 eb eb                                      bl #0x30e460
0082c398  08 00 a0 e1                                      mov r0, r8
0082c39c  80 20 a0 e3                                      mov r2, #0x80
0082c3a0  00 10 a0 e3                                      mov r1, #0
0082c3a4  ee fb ff eb                                      bl #0x82b364
0082c3a8  00 20 a0 e3                                      mov r2, #0
0082c3ac  08 10 a0 e1                                      mov r1, r8
0082c3b0  2c 30 a0 e3                                      mov r3, #0x2c
0082c3b4  06 00 a0 e1                                      mov r0, r6
0082c3b8  48 fa ff eb                                      bl #0x82ace0
0082c3bc  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0082c3c0  08 00 a0 e1                                      mov r0, r8
0082c3c4  04 30 8d e5                                      str r3, [sp, #4]
0082c3c8  d2 fb ff eb                                      bl #0x82b318
0082c3cc  04 30 9d e5                                      ldr r3, [sp, #4]
0082c3d0  85 21 a0 e1                                      lsl r2, r5, #3
0082c3d4  f2 00 83 e1                                      strd r0, r1, [r3, r2]
0082c3d8  80 20 a0 e3                                      mov r2, #0x80
0082c3dc  08 00 a0 e1                                      mov r0, r8
0082c3e0  00 10 a0 e3                                      mov r1, #0
0082c3e4  de fb ff eb                                      bl #0x82b364
0082c3e8  08 10 a0 e1                                      mov r1, r8
0082c3ec  01 20 a0 e3                                      mov r2, #1
0082c3f0  2c 30 a0 e3                                      mov r3, #0x2c
0082c3f4  06 00 a0 e1                                      mov r0, r6
0082c3f8  38 fa ff eb                                      bl #0x82ace0
0082c3fc  50 30 94 e5                                      ldr r3, [r4, #0x50]
0082c400  08 00 a0 e1                                      mov r0, r8
0082c404  04 30 8d e5                                      str r3, [sp, #4]
0082c408  c4 fb ff eb                                      bl #0x82b320
0082c40c  04 30 9d e5                                      ldr r3, [sp, #4]
0082c410  80 20 a0 e3                                      mov r2, #0x80
0082c414  00 10 a0 e3                                      mov r1, #0
0082c418  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c41c  08 00 a0 e1                                      mov r0, r8
0082c420  cf fb ff eb                                      bl #0x82b364
0082c424  08 10 a0 e1                                      mov r1, r8
0082c428  02 20 a0 e3                                      mov r2, #2
0082c42c  2c 30 a0 e3                                      mov r3, #0x2c
0082c430  06 00 a0 e1                                      mov r0, r6
0082c434  29 fa ff eb                                      bl #0x82ace0
0082c438  54 30 94 e5                                      ldr r3, [r4, #0x54]
0082c43c  08 00 a0 e1                                      mov r0, r8
0082c440  04 30 8d e5                                      str r3, [sp, #4]
0082c444  b5 fb ff eb                                      bl #0x82b320
0082c448  04 30 9d e5                                      ldr r3, [sp, #4]
0082c44c  01 2c a0 e3                                      mov r2, #0x100
0082c450  00 10 a0 e3                                      mov r1, #0
0082c454  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c458  06 00 a0 e1                                      mov r0, r6
0082c45c  c0 fb ff eb                                      bl #0x82b364
0082c460  06 10 a0 e1                                      mov r1, r6
0082c464  04 20 a0 e3                                      mov r2, #4
0082c468  5e 30 a0 e3                                      mov r3, #0x5e
0082c46c  07 00 a0 e1                                      mov r0, r7
0082c470  1a fa ff eb                                      bl #0x82ace0
0082c474  70 30 94 e5                                      ldr r3, [r4, #0x70]
0082c478  06 00 a0 e1                                      mov r0, r6
0082c47c  04 30 8d e5                                      str r3, [sp, #4]
0082c480  a6 fb ff eb                                      bl #0x82b320
0082c484  04 30 9d e5                                      ldr r3, [sp, #4]
0082c488  01 2c a0 e3                                      mov r2, #0x100
0082c48c  00 10 a0 e3                                      mov r1, #0
0082c490  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c494  06 00 a0 e1                                      mov r0, r6
0082c498  b1 fb ff eb                                      bl #0x82b364
0082c49c  06 10 a0 e1                                      mov r1, r6
0082c4a0  05 20 a0 e3                                      mov r2, #5
0082c4a4  5e 30 a0 e3                                      mov r3, #0x5e
0082c4a8  07 00 a0 e1                                      mov r0, r7
0082c4ac  0b fa ff eb                                      bl #0x82ace0
0082c4b0  58 30 94 e5                                      ldr r3, [r4, #0x58]
0082c4b4  06 00 a0 e1                                      mov r0, r6
0082c4b8  04 30 8d e5                                      str r3, [sp, #4]
0082c4bc  97 fb ff eb                                      bl #0x82b320
0082c4c0  04 30 9d e5                                      ldr r3, [sp, #4]
0082c4c4  06 20 a0 e3                                      mov r2, #6
0082c4c8  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c4cc  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
0082c4d0  5e 30 a0 e3                                      mov r3, #0x5e
0082c4d4  07 00 a0 e1                                      mov r0, r7
0082c4d8  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
0082c4dc  ff f9 ff eb                                      bl #0x82ace0
0082c4e0  06 00 a0 e1                                      mov r0, r6
0082c4e4  01 2c a0 e3                                      mov r2, #0x100
0082c4e8  00 10 a0 e3                                      mov r1, #0
0082c4ec  9c fb ff eb                                      bl #0x82b364
0082c4f0  06 10 a0 e1                                      mov r1, r6
0082c4f4  07 20 a0 e3                                      mov r2, #7
0082c4f8  5e 30 a0 e3                                      mov r3, #0x5e
0082c4fc  07 00 a0 e1                                      mov r0, r7
0082c500  f6 f9 ff eb                                      bl #0x82ace0
0082c504  60 30 94 e5                                      ldr r3, [r4, #0x60]
0082c508  06 00 a0 e1                                      mov r0, r6
0082c50c  04 30 8d e5                                      str r3, [sp, #4]
0082c510  82 fb ff eb                                      bl #0x82b320
0082c514  04 30 9d e5                                      ldr r3, [sp, #4]
0082c518  08 20 a0 e3                                      mov r2, #8
0082c51c  05 01 83 e7                                      str r0, [r3, r5, lsl #2]
0082c520  64 10 94 e5                                      ldr r1, [r4, #0x64]
0082c524  5e 30 a0 e3                                      mov r3, #0x5e
0082c528  07 00 a0 e1                                      mov r0, r7
0082c52c  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
0082c530  ea f9 ff eb                                      bl #0x82ace0
0082c534  68 10 94 e5                                      ldr r1, [r4, #0x68]
0082c538  09 20 a0 e3                                      mov r2, #9
0082c53c  5e 30 a0 e3                                      mov r3, #0x5e
0082c540  05 11 91 e7                                      ldr r1, [r1, r5, lsl #2]
0082c544  07 00 a0 e1                                      mov r0, r7
0082c548  e4 f9 ff eb                                      bl #0x82ace0
0082c54c  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0082c550  07 00 a0 e1                                      mov r0, r7
0082c554  0a 20 a0 e3                                      mov r2, #0xa
0082c558  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
0082c55c  5e 30 a0 e3                                      mov r3, #0x5e
0082c560  de f9 ff eb                                      bl #0x82ace0
0082c564  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0082c568  01 50 85 e2                                      add r5, r5, #1
0082c56c  05 00 53 e1                                      cmp r3, r5
0082c570  13 ff ff ca                                      bgt #0x82c1c4
0082c574  ca fe ff ea                                      b #0x82c0a4
0082c578  64 87 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082c57c  a8 8a 16 00 ac 40 00 00                          .byte 0xa8, 0x8a, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082c584, declared_size=188, range_size=188, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend23sendGetUserFriendsCountEv
; demangled: GLXPlayerUserFriend::sendGetUserFriendsCount()
; decoder-mode: arm
0082c584  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0082c588  70 40 2d e9                                      push {r4, r5, r6, lr}
0082c58c  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0082c590  03 30 8f e0                                      add r3, pc, r3
0082c594  01 da 4d e2                                      sub sp, sp, #0x1000
0082c598  02 60 93 e7                                      ldr r6, [r3, r2]
0082c59c  10 d0 4d e2                                      sub sp, sp, #0x10
0082c5a0  01 2a a0 e3                                      mov r2, #0x1000
0082c5a4  00 c0 96 e5                                      ldr ip, [r6]
0082c5a8  10 50 8d e2                                      add r5, sp, #0x10
0082c5ac  02 e0 8d e0                                      add lr, sp, r2
0082c5b0  04 50 45 e2                                      sub r5, r5, #4
0082c5b4  00 40 a0 e1                                      mov r4, r0
0082c5b8  0c c0 8e e5                                      str ip, [lr, #0xc]
0082c5bc  05 00 a0 e1                                      mov r0, r5
0082c5c0  00 10 a0 e3                                      mov r1, #0
0082c5c4  66 fb ff eb                                      bl #0x82b364
0082c5c8  68 10 9f e5                                      ldr r1, [pc, #0x68]
0082c5cc  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0082c5d0  08 30 94 e5                                      ldr r3, [r4, #8]
0082c5d4  49 20 a0 e3                                      mov r2, #0x49
0082c5d8  01 10 8f e0                                      add r1, pc, r1
0082c5dc  05 00 a0 e1                                      mov r0, r5
0082c5e0  00 c0 8d e5                                      str ip, [sp]
0082c5e4  3e 89 eb eb                                      bl #0x30eae4
0082c5e8  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
0082c5ec  05 10 a0 e1                                      mov r1, r5
0082c5f0  00 00 8f e0                                      add r0, pc, r0
0082c5f4  62 fc ff eb                                      bl #0x82b784
0082c5f8  00 30 94 e5                                      ldr r3, [r4]
0082c5fc  04 00 a0 e1                                      mov r0, r4
0082c600  05 10 a0 e1                                      mov r1, r5
0082c604  0f e0 a0 e1                                      mov lr, pc
0082c608  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0082c60c  01 3a 8d e2                                      add r3, sp, #0x1000
0082c610  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0082c614  00 30 96 e5                                      ldr r3, [r6]
0082c618  03 00 52 e1                                      cmp r2, r3
0082c61c  02 00 00 1a                                      bne #0x82c62c
0082c620  10 d0 8d e2                                      add sp, sp, #0x10
0082c624  01 da 8d e2                                      add sp, sp, #0x1000
0082c628  70 80 bd e8                                      pop {r4, r5, r6, pc}
0082c62c  37 87 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082c630  00 85 16 00 ac 40 00 00 98 fe 0d 00 90 fe 0d 00  .byte 0x00, 0x85, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0xfe, 0x0d, 0x00, 0x90, 0xfe, 0x0d, 0x00

; FUNCTION 0x0082c640, declared_size=200, range_size=200, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend18sendGetUserFriendsEii
; demangled: GLXPlayerUserFriend::sendGetUserFriends(int, int)
; decoder-mode: arm
0082c640  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0082c644  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082c648  ac c0 9f e5                                      ldr ip, [pc, #0xac]
0082c64c  03 30 8f e0                                      add r3, pc, r3
0082c650  01 da 4d e2                                      sub sp, sp, #0x1000
0082c654  0c 60 93 e7                                      ldr r6, [r3, ip]
0082c658  18 d0 4d e2                                      sub sp, sp, #0x18
0082c65c  02 80 a0 e1                                      mov r8, r2
0082c660  00 c0 96 e5                                      ldr ip, [r6]
0082c664  01 2a a0 e3                                      mov r2, #0x1000
0082c668  18 50 8d e2                                      add r5, sp, #0x18
0082c66c  02 e0 8d e0                                      add lr, sp, r2
0082c670  04 50 45 e2                                      sub r5, r5, #4
0082c674  00 40 a0 e1                                      mov r4, r0
0082c678  14 c0 8e e5                                      str ip, [lr, #0x14]
0082c67c  01 70 a0 e1                                      mov r7, r1
0082c680  05 00 a0 e1                                      mov r0, r5
0082c684  00 10 a0 e3                                      mov r1, #0
0082c688  35 fb ff eb                                      bl #0x82b364
0082c68c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0082c690  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0082c694  08 30 94 e5                                      ldr r3, [r4, #8]
0082c698  3d 20 a0 e3                                      mov r2, #0x3d
0082c69c  01 10 8f e0                                      add r1, pc, r1
0082c6a0  05 00 a0 e1                                      mov r0, r5
0082c6a4  00 c0 8d e5                                      str ip, [sp]
0082c6a8  80 01 8d e9                                      stmib sp, {r7, r8}
0082c6ac  0c 89 eb eb                                      bl #0x30eae4
0082c6b0  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
0082c6b4  05 10 a0 e1                                      mov r1, r5
0082c6b8  00 00 8f e0                                      add r0, pc, r0
0082c6bc  30 fc ff eb                                      bl #0x82b784
0082c6c0  00 30 94 e5                                      ldr r3, [r4]
0082c6c4  04 00 a0 e1                                      mov r0, r4
0082c6c8  05 10 a0 e1                                      mov r1, r5
0082c6cc  0f e0 a0 e1                                      mov lr, pc
0082c6d0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0082c6d4  01 3a 8d e2                                      add r3, sp, #0x1000
0082c6d8  14 20 93 e5                                      ldr r2, [r3, #0x14]
0082c6dc  00 30 96 e5                                      ldr r3, [r6]
0082c6e0  03 00 52 e1                                      cmp r2, r3
0082c6e4  02 00 00 1a                                      bne #0x82c6f4
0082c6e8  18 d0 8d e2                                      add sp, sp, #0x18
0082c6ec  01 da 8d e2                                      add sp, sp, #0x1000
0082c6f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0082c6f4  05 87 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082c6f8  44 84 16 00 ac 40 00 00 34 fe 0d 00 38 fe 0d 00  .byte 0x44, 0x84, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0xfe, 0x0d, 0x00, 0x38, 0xfe, 0x0d, 0x00

; FUNCTION 0x0082c708, declared_size=236, range_size=236, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend17sendDelUserFriendEPcb
; demangled: GLXPlayerUserFriend::sendDelUserFriend(char*, bool)
; decoder-mode: arm
0082c708  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0082c70c  cc 40 9f e5                                      ldr r4, [pc, #0xcc]
0082c710  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
0082c714  01 da 4d e2                                      sub sp, sp, #0x1000
0082c718  04 40 8f e0                                      add r4, pc, r4
0082c71c  07 30 94 e7                                      ldr r3, [r4, r7]
0082c720  14 d0 4d e2                                      sub sp, sp, #0x14
0082c724  02 a0 a0 e1                                      mov sl, r2
0082c728  00 30 93 e5                                      ldr r3, [r3]
0082c72c  01 2a a0 e3                                      mov r2, #0x1000
0082c730  10 60 8d e2                                      add r6, sp, #0x10
0082c734  02 c0 8d e0                                      add ip, sp, r2
0082c738  04 60 46 e2                                      sub r6, r6, #4
0082c73c  00 50 a0 e1                                      mov r5, r0
0082c740  01 80 a0 e1                                      mov r8, r1
0082c744  06 00 a0 e1                                      mov r0, r6
0082c748  00 10 a0 e3                                      mov r1, #0
0082c74c  0c 30 8c e5                                      str r3, [ip, #0xc]
0082c750  03 fb ff eb                                      bl #0x82b364
0082c754  00 00 5a e3                                      cmp sl, #0
0082c758  1a 00 00 1a                                      bne #0x82c7c8
0082c75c  84 10 9f e5                                      ldr r1, [pc, #0x84]
0082c760  08 30 95 e5                                      ldr r3, [r5, #8]
0082c764  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0082c768  01 10 8f e0                                      add r1, pc, r1
0082c76c  3c 20 a0 e3                                      mov r2, #0x3c
0082c770  06 00 a0 e1                                      mov r0, r6
0082c774  00 c0 8d e5                                      str ip, [sp]
0082c778  04 80 8d e5                                      str r8, [sp, #4]
0082c77c  d8 88 eb eb                                      bl #0x30eae4
0082c780  64 00 9f e5                                      ldr r0, [pc, #0x64]
0082c784  06 10 a0 e1                                      mov r1, r6
0082c788  00 00 8f e0                                      add r0, pc, r0
0082c78c  fc fb ff eb                                      bl #0x82b784
0082c790  06 10 a0 e1                                      mov r1, r6
0082c794  00 30 95 e5                                      ldr r3, [r5]
0082c798  05 00 a0 e1                                      mov r0, r5
0082c79c  0f e0 a0 e1                                      mov lr, pc
0082c7a0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0082c7a4  07 30 94 e7                                      ldr r3, [r4, r7]
0082c7a8  01 1a 8d e2                                      add r1, sp, #0x1000
0082c7ac  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0082c7b0  00 30 93 e5                                      ldr r3, [r3]
0082c7b4  03 00 52 e1                                      cmp r2, r3
0082c7b8  07 00 00 1a                                      bne #0x82c7dc
0082c7bc  14 d0 8d e2                                      add sp, sp, #0x14
0082c7c0  01 da 8d e2                                      add sp, sp, #0x1000
0082c7c4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0082c7c8  20 10 9f e5                                      ldr r1, [pc, #0x20]
0082c7cc  08 30 95 e5                                      ldr r3, [r5, #8]
0082c7d0  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0082c7d4  01 10 8f e0                                      add r1, pc, r1
0082c7d8  e3 ff ff ea                                      b #0x82c76c
0082c7dc  cb 86 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082c7e0  78 83 16 00 ac 40 00 00 e8 fd 0d 00 e0 fd 0d 00  .byte 0x78, 0x83, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe8, 0xfd, 0x0d, 0x00, 0xe0, 0xfd, 0x0d, 0x00
0082c7f0  64 fd 0d 00                                      .byte 0x64, 0xfd, 0x0d, 0x00

; FUNCTION 0x0082c7f4, declared_size=248, range_size=248, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend21sendConfirmUserFriendEPcib
; demangled: GLXPlayerUserFriend::sendConfirmUserFriend(char*, int, bool)
; decoder-mode: arm
0082c7f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0082c7f8  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0082c7fc  d8 70 9f e5                                      ldr r7, [pc, #0xd8]
0082c800  01 da 4d e2                                      sub sp, sp, #0x1000
0082c804  04 40 8f e0                                      add r4, pc, r4
0082c808  07 c0 94 e7                                      ldr ip, [r4, r7]
0082c80c  18 d0 4d e2                                      sub sp, sp, #0x18
0082c810  00 90 52 e2                                      subs sb, r2, #0
0082c814  01 90 a0 13                                      movne sb, #1
0082c818  00 c0 9c e5                                      ldr ip, [ip]
0082c81c  01 2a a0 e3                                      mov r2, #0x1000
0082c820  18 60 8d e2                                      add r6, sp, #0x18
0082c824  03 80 a0 e1                                      mov r8, r3
0082c828  04 60 46 e2                                      sub r6, r6, #4
0082c82c  02 30 8d e0                                      add r3, sp, r2
0082c830  00 50 a0 e1                                      mov r5, r0
0082c834  01 a0 a0 e1                                      mov sl, r1
0082c838  06 00 a0 e1                                      mov r0, r6
0082c83c  00 10 a0 e3                                      mov r1, #0
0082c840  14 c0 83 e5                                      str ip, [r3, #0x14]
0082c844  c6 fa ff eb                                      bl #0x82b364
0082c848  00 00 58 e3                                      cmp r8, #0
0082c84c  1b 00 00 1a                                      bne #0x82c8c0
0082c850  88 10 9f e5                                      ldr r1, [pc, #0x88]
0082c854  08 30 95 e5                                      ldr r3, [r5, #8]
0082c858  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0082c85c  01 10 8f e0                                      add r1, pc, r1
0082c860  3e 20 a0 e3                                      mov r2, #0x3e
0082c864  06 00 a0 e1                                      mov r0, r6
0082c868  00 c0 8d e5                                      str ip, [sp]
0082c86c  04 a0 8d e5                                      str sl, [sp, #4]
0082c870  08 90 8d e5                                      str sb, [sp, #8]
0082c874  9a 88 eb eb                                      bl #0x30eae4
0082c878  64 00 9f e5                                      ldr r0, [pc, #0x64]
0082c87c  06 10 a0 e1                                      mov r1, r6
0082c880  00 00 8f e0                                      add r0, pc, r0
0082c884  be fb ff eb                                      bl #0x82b784
0082c888  06 10 a0 e1                                      mov r1, r6
0082c88c  00 30 95 e5                                      ldr r3, [r5]
0082c890  05 00 a0 e1                                      mov r0, r5
0082c894  0f e0 a0 e1                                      mov lr, pc
0082c898  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0082c89c  07 30 94 e7                                      ldr r3, [r4, r7]
0082c8a0  01 1a 8d e2                                      add r1, sp, #0x1000
0082c8a4  14 20 91 e5                                      ldr r2, [r1, #0x14]
0082c8a8  00 30 93 e5                                      ldr r3, [r3]
0082c8ac  03 00 52 e1                                      cmp r2, r3
0082c8b0  07 00 00 1a                                      bne #0x82c8d4
0082c8b4  18 d0 8d e2                                      add sp, sp, #0x18
0082c8b8  01 da 8d e2                                      add sp, sp, #0x1000
0082c8bc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0082c8c0  20 10 9f e5                                      ldr r1, [pc, #0x20]
0082c8c4  08 30 95 e5                                      ldr r3, [r5, #8]
0082c8c8  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0082c8cc  01 10 8f e0                                      add r1, pc, r1
0082c8d0  e2 ff ff ea                                      b #0x82c860
0082c8d4  8d 86 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082c8d8  8c 82 16 00 ac 40 00 00 74 fd 0d 00 70 fd 0d 00  .byte 0x8c, 0x82, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x74, 0xfd, 0x0d, 0x00, 0x70, 0xfd, 0x0d, 0x00
0082c8e8  e4 fc 0d 00                                      .byte 0xe4, 0xfc, 0x0d, 0x00

; FUNCTION 0x0082c8ec, declared_size=308, range_size=308, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend17sendAddUserFriendEPcS0_b
; demangled: GLXPlayerUserFriend::sendAddUserFriend(char*, char*, bool)
; decoder-mode: arm
0082c8ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0082c8f0  10 41 9f e5                                      ldr r4, [pc, #0x110]
0082c8f4  10 71 9f e5                                      ldr r7, [pc, #0x110]
0082c8f8  11 dc 4d e2                                      sub sp, sp, #0x1100
0082c8fc  04 40 8f e0                                      add r4, pc, r4
0082c900  07 c0 94 e7                                      ldr ip, [r4, r7]
0082c904  10 d0 4d e2                                      sub sp, sp, #0x10
0082c908  03 a0 a0 e1                                      mov sl, r3
0082c90c  00 30 9c e5                                      ldr r3, [ip]
0082c910  10 50 8d e2                                      add r5, sp, #0x10
0082c914  02 80 a0 e1                                      mov r8, r2
0082c918  01 2a a0 e3                                      mov r2, #0x1000
0082c91c  02 c0 8d e0                                      add ip, sp, r2
0082c920  04 50 45 e2                                      sub r5, r5, #4
0082c924  00 60 a0 e1                                      mov r6, r0
0082c928  01 90 a0 e1                                      mov sb, r1
0082c92c  05 00 a0 e1                                      mov r0, r5
0082c930  00 10 a0 e3                                      mov r1, #0
0082c934  0c 31 8c e5                                      str r3, [ip, #0x10c]
0082c938  89 fa ff eb                                      bl #0x82b364
0082c93c  00 00 5a e3                                      cmp sl, #0
0082c940  2a 00 00 0a                                      beq #0x82c9f0
0082c944  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0082c948  08 30 96 e5                                      ldr r3, [r6, #8]
0082c94c  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0082c950  01 10 8f e0                                      add r1, pc, r1
0082c954  05 00 a0 e1                                      mov r0, r5
0082c958  3b 20 a0 e3                                      mov r2, #0x3b
0082c95c  00 c0 8d e5                                      str ip, [sp]
0082c960  04 90 8d e5                                      str sb, [sp, #4]
0082c964  5e 88 eb eb                                      bl #0x30eae4
0082c968  00 00 58 e3                                      cmp r8, #0
0082c96c  0d 00 00 0a                                      beq #0x82c9a8
0082c970  01 aa 8d e2                                      add sl, sp, #0x1000
0082c974  0c a0 8a e2                                      add sl, sl, #0xc
0082c978  00 10 a0 e3                                      mov r1, #0
0082c97c  01 2c a0 e3                                      mov r2, #0x100
0082c980  0a 00 a0 e1                                      mov r0, sl
0082c984  b5 86 eb eb                                      bl #0x30e460
0082c988  84 10 9f e5                                      ldr r1, [pc, #0x84]
0082c98c  08 20 a0 e1                                      mov r2, r8
0082c990  0a 00 a0 e1                                      mov r0, sl
0082c994  01 10 8f e0                                      add r1, pc, r1
0082c998  51 88 eb eb                                      bl #0x30eae4
0082c99c  05 00 a0 e1                                      mov r0, r5
0082c9a0  0a 10 a0 e1                                      mov r1, sl
0082c9a4  63 fa ff eb                                      bl #0x82b338
0082c9a8  68 00 9f e5                                      ldr r0, [pc, #0x68]
0082c9ac  05 10 a0 e1                                      mov r1, r5
0082c9b0  00 00 8f e0                                      add r0, pc, r0
0082c9b4  72 fb ff eb                                      bl #0x82b784
0082c9b8  05 10 a0 e1                                      mov r1, r5
0082c9bc  00 30 96 e5                                      ldr r3, [r6]
0082c9c0  06 00 a0 e1                                      mov r0, r6
0082c9c4  0f e0 a0 e1                                      mov lr, pc
0082c9c8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0082c9cc  07 30 94 e7                                      ldr r3, [r4, r7]
0082c9d0  01 1a 8d e2                                      add r1, sp, #0x1000
0082c9d4  0c 21 91 e5                                      ldr r2, [r1, #0x10c]
0082c9d8  00 30 93 e5                                      ldr r3, [r3]
0082c9dc  03 00 52 e1                                      cmp r2, r3
0082c9e0  07 00 00 1a                                      bne #0x82ca04
0082c9e4  11 de 8d e2                                      add sp, sp, #0x110
0082c9e8  01 da 8d e2                                      add sp, sp, #0x1000
0082c9ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0082c9f0  24 10 9f e5                                      ldr r1, [pc, #0x24]
0082c9f4  08 30 96 e5                                      ldr r3, [r6, #8]
0082c9f8  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0082c9fc  01 10 8f e0                                      add r1, pc, r1
0082ca00  d3 ff ff ea                                      b #0x82c954
0082ca04  41 86 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082ca08  94 81 16 00 ac 40 00 00 e8 fb 0d 00 a4 fc 0d 00  .byte 0x94, 0x81, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe8, 0xfb, 0x0d, 0x00, 0xa4, 0xfc, 0x0d, 0x00
0082ca18  90 fc 0d 00 54 fb 0d 00                          .byte 0x90, 0xfc, 0x0d, 0x00, 0x54, 0xfb, 0x0d, 0x00

; FUNCTION 0x0082ca20, declared_size=172, range_size=172, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriend15OnUpdateSuccessEi
; demangled: GLXPlayerUserFriend::OnUpdateSuccess(int)
; decoder-mode: arm
0082ca20  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082ca24  98 40 9f e5                                      ldr r4, [pc, #0x98]
0082ca28  98 60 9f e5                                      ldr r6, [pc, #0x98]
0082ca2c  10 d0 4d e2                                      sub sp, sp, #0x10
0082ca30  04 40 8f e0                                      add r4, pc, r4
0082ca34  06 30 94 e7                                      ldr r3, [r4, r6]
0082ca38  3d 00 51 e3                                      cmp r1, #0x3d
0082ca3c  01 50 a0 e1                                      mov r5, r1
0082ca40  00 30 93 e5                                      ldr r3, [r3]
0082ca44  00 70 a0 e1                                      mov r7, r0
0082ca48  0c 30 8d e5                                      str r3, [sp, #0xc]
0082ca4c  18 00 00 0a                                      beq #0x82cab4
0082ca50  49 00 51 e3                                      cmp r1, #0x49
0082ca54  0c 00 00 1a                                      bne #0x82ca8c
0082ca58  86 fc ff eb                                      bl #0x82bc78
0082ca5c  04 80 8d e2                                      add r8, sp, #4
0082ca60  00 c0 a0 e3                                      mov ip, #0
0082ca64  24 00 97 e5                                      ldr r0, [r7, #0x24]
0082ca68  0c 20 a0 e1                                      mov r2, ip
0082ca6c  08 10 a0 e1                                      mov r1, r8
0082ca70  7c 30 a0 e3                                      mov r3, #0x7c
0082ca74  04 c0 8d e5                                      str ip, [sp, #4]
0082ca78  08 c0 8d e5                                      str ip, [sp, #8]
0082ca7c  97 f8 ff eb                                      bl #0x82ace0
0082ca80  08 00 a0 e1                                      mov r0, r8
0082ca84  25 fa ff eb                                      bl #0x82b320
0082ca88  3c 00 87 e5                                      str r0, [r7, #0x3c]
0082ca8c  07 00 a0 e1                                      mov r0, r7
0082ca90  05 10 a0 e1                                      mov r1, r5
0082ca94  bb 12 00 eb                                      bl #0x831588
0082ca98  06 30 94 e7                                      ldr r3, [r4, r6]
0082ca9c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0082caa0  00 30 93 e5                                      ldr r3, [r3]
0082caa4  03 00 52 e1                                      cmp r2, r3
0082caa8  04 00 00 1a                                      bne #0x82cac0
0082caac  10 d0 8d e2                                      add sp, sp, #0x10
0082cab0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0082cab4  24 10 90 e5                                      ldr r1, [r0, #0x24]
0082cab8  46 fd ff eb                                      bl #0x82bfd8
0082cabc  f2 ff ff ea                                      b #0x82ca8c
0082cac0  12 86 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0082cac4  60 80 16 00 ac 40 00 00                          .byte 0x60, 0x80, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082cacc, declared_size=60, range_size=60, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriendD1Ev
; demangled: GLXPlayerUserFriend::~GLXPlayerUserFriend()
; decoder-mode: arm
0082cacc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0082cad0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0082cad4  10 40 2d e9                                      push {r4, lr}
0082cad8  03 30 8f e0                                      add r3, pc, r3
0082cadc  02 20 93 e7                                      ldr r2, [r3, r2]
0082cae0  00 40 a0 e1                                      mov r4, r0
0082cae4  08 20 82 e2                                      add r2, r2, #8
0082cae8  00 20 80 e5                                      str r2, [r0]
0082caec  61 fc ff eb                                      bl #0x82bc78
0082caf0  04 00 a0 e1                                      mov r0, r4
0082caf4  41 15 00 eb                                      bl #0x832000
0082caf8  04 00 a0 e1                                      mov r0, r4
0082cafc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0082cb00  b8 7f 16 00 1c 1d 00 00                          .byte 0xb8, 0x7f, 0x16, 0x00, 0x1c, 0x1d, 0x00, 0x00

; FUNCTION 0x0082cb08, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriendD0Ev
; demangled: GLXPlayerUserFriend::~GLXPlayerUserFriend()
; decoder-mode: arm
0082cb08  10 40 2d e9                                      push {r4, lr}
0082cb0c  00 40 a0 e1                                      mov r4, r0
0082cb10  ed ff ff eb                                      bl #0x82cacc
0082cb14  04 00 a0 e1                                      mov r0, r4
0082cb18  e4 85 eb eb                                      bl #0x30e2b0
0082cb1c  04 00 a0 e1                                      mov r0, r4
0082cb20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0082cb24, declared_size=60, range_size=60, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriendD2Ev
; demangled: GLXPlayerUserFriend::~GLXPlayerUserFriend()
; decoder-mode: arm
0082cb24  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0082cb28  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0082cb2c  10 40 2d e9                                      push {r4, lr}
0082cb30  03 30 8f e0                                      add r3, pc, r3
0082cb34  02 20 93 e7                                      ldr r2, [r3, r2]
0082cb38  00 40 a0 e1                                      mov r4, r0
0082cb3c  08 20 82 e2                                      add r2, r2, #8
0082cb40  00 20 80 e5                                      str r2, [r0]
0082cb44  4b fc ff eb                                      bl #0x82bc78
0082cb48  04 00 a0 e1                                      mov r0, r4
0082cb4c  2b 15 00 eb                                      bl #0x832000
0082cb50  04 00 a0 e1                                      mov r0, r4
0082cb54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0082cb58  60 7f 16 00 1c 1d 00 00                          .byte 0x60, 0x7f, 0x16, 0x00, 0x1c, 0x1d, 0x00, 0x00

; FUNCTION 0x0082cb60, declared_size=152, range_size=152, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriendC1Ev
; demangled: GLXPlayerUserFriend::GLXPlayerUserFriend()
; decoder-mode: arm
0082cb60  70 40 2d e9                                      push {r4, r5, r6, lr}
0082cb64  84 50 9f e5                                      ldr r5, [pc, #0x84]
0082cb68  00 40 a0 e1                                      mov r4, r0
0082cb6c  70 15 00 eb                                      bl #0x832134
0082cb70  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0082cb74  05 50 8f e0                                      add r5, pc, r5
0082cb78  04 00 a0 e1                                      mov r0, r4
0082cb7c  03 30 95 e7                                      ldr r3, [r5, r3]
0082cb80  08 30 83 e2                                      add r3, r3, #8
0082cb84  00 30 84 e5                                      str r3, [r4]
0082cb88  8d 12 00 eb                                      bl #0x8315c4
0082cb8c  28 04 00 e3                                      movw r0, #0x428
0082cb90  3d 87 eb eb                                      bl #0x30e88c
0082cb94  14 30 94 e5                                      ldr r3, [r4, #0x14]
0082cb98  10 10 94 e5                                      ldr r1, [r4, #0x10]
0082cb9c  18 20 94 e5                                      ldr r2, [r4, #0x18]
0082cba0  00 50 a0 e1                                      mov r5, r0
0082cba4  c0 04 00 eb                                      bl #0x82deac
0082cba8  00 30 a0 e3                                      mov r3, #0
0082cbac  20 50 84 e5                                      str r5, [r4, #0x20]
0082cbb0  68 30 84 e5                                      str r3, [r4, #0x68]
0082cbb4  3c 30 84 e5                                      str r3, [r4, #0x3c]
0082cbb8  40 30 84 e5                                      str r3, [r4, #0x40]
0082cbbc  44 30 84 e5                                      str r3, [r4, #0x44]
0082cbc0  58 30 84 e5                                      str r3, [r4, #0x58]
0082cbc4  48 30 84 e5                                      str r3, [r4, #0x48]
0082cbc8  4c 30 84 e5                                      str r3, [r4, #0x4c]
0082cbcc  50 30 84 e5                                      str r3, [r4, #0x50]
0082cbd0  54 30 84 e5                                      str r3, [r4, #0x54]
0082cbd4  5c 30 84 e5                                      str r3, [r4, #0x5c]
0082cbd8  60 30 84 e5                                      str r3, [r4, #0x60]
0082cbdc  70 30 84 e5                                      str r3, [r4, #0x70]
0082cbe0  64 30 84 e5                                      str r3, [r4, #0x64]
0082cbe4  6c 30 84 e5                                      str r3, [r4, #0x6c]
0082cbe8  04 00 a0 e1                                      mov r0, r4
0082cbec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082cbf0  1c 7f 16 00 1c 1d 00 00                          .byte 0x1c, 0x7f, 0x16, 0x00, 0x1c, 0x1d, 0x00, 0x00

; FUNCTION 0x0082cbf8, declared_size=152, range_size=152, mode=arm
; class-group: GLXPlayerUserFriend
; alias: _ZN19GLXPlayerUserFriendC2Ev
; demangled: GLXPlayerUserFriend::GLXPlayerUserFriend()
; decoder-mode: arm
0082cbf8  70 40 2d e9                                      push {r4, r5, r6, lr}
0082cbfc  84 50 9f e5                                      ldr r5, [pc, #0x84]
0082cc00  00 40 a0 e1                                      mov r4, r0
0082cc04  4a 15 00 eb                                      bl #0x832134
0082cc08  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0082cc0c  05 50 8f e0                                      add r5, pc, r5
0082cc10  04 00 a0 e1                                      mov r0, r4
0082cc14  03 30 95 e7                                      ldr r3, [r5, r3]
0082cc18  08 30 83 e2                                      add r3, r3, #8
0082cc1c  00 30 84 e5                                      str r3, [r4]
0082cc20  67 12 00 eb                                      bl #0x8315c4
0082cc24  28 04 00 e3                                      movw r0, #0x428
0082cc28  17 87 eb eb                                      bl #0x30e88c
0082cc2c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0082cc30  10 10 94 e5                                      ldr r1, [r4, #0x10]
0082cc34  18 20 94 e5                                      ldr r2, [r4, #0x18]
0082cc38  00 50 a0 e1                                      mov r5, r0
0082cc3c  9a 04 00 eb                                      bl #0x82deac
0082cc40  00 30 a0 e3                                      mov r3, #0
0082cc44  20 50 84 e5                                      str r5, [r4, #0x20]
0082cc48  68 30 84 e5                                      str r3, [r4, #0x68]
0082cc4c  3c 30 84 e5                                      str r3, [r4, #0x3c]
0082cc50  40 30 84 e5                                      str r3, [r4, #0x40]
0082cc54  44 30 84 e5                                      str r3, [r4, #0x44]
0082cc58  58 30 84 e5                                      str r3, [r4, #0x58]
0082cc5c  48 30 84 e5                                      str r3, [r4, #0x48]
0082cc60  4c 30 84 e5                                      str r3, [r4, #0x4c]
0082cc64  50 30 84 e5                                      str r3, [r4, #0x50]
0082cc68  54 30 84 e5                                      str r3, [r4, #0x54]
0082cc6c  5c 30 84 e5                                      str r3, [r4, #0x5c]
0082cc70  60 30 84 e5                                      str r3, [r4, #0x60]
0082cc74  70 30 84 e5                                      str r3, [r4, #0x70]
0082cc78  64 30 84 e5                                      str r3, [r4, #0x64]
0082cc7c  6c 30 84 e5                                      str r3, [r4, #0x6c]
0082cc80  04 00 a0 e1                                      mov r0, r4
0082cc84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0082cc88  84 7e 16 00 1c 1d 00 00                          .byte 0x84, 0x7e, 0x16, 0x00, 0x1c, 0x1d, 0x00, 0x00
