; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0083a880, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser11getUserNameEv
; demangled: GLXPlayerUser::getUserName()
; decoder-mode: arm
0083a880  44 00 90 e5                                      ldr r0, [r0, #0x44]
0083a884  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a888, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser11getPasswordEv
; demangled: GLXPlayerUser::getPassword()
; decoder-mode: arm
0083a888  48 00 90 e5                                      ldr r0, [r0, #0x48]
0083a88c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a890, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser8getEmailEv
; demangled: GLXPlayerUser::getEmail()
; decoder-mode: arm
0083a890  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
0083a894  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a898, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser12getEmailFlagEv
; demangled: GLXPlayerUser::getEmailFlag()
; decoder-mode: arm
0083a898  50 00 d0 e5                                      ldrb r0, [r0, #0x50]
0083a89c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a8a0, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser10getCountryEv
; demangled: GLXPlayerUser::getCountry()
; decoder-mode: arm
0083a8a0  54 00 90 e5                                      ldr r0, [r0, #0x54]
0083a8a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a8a8, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser12getFirstNameEv
; demangled: GLXPlayerUser::getFirstName()
; decoder-mode: arm
0083a8a8  58 00 90 e5                                      ldr r0, [r0, #0x58]
0083a8ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a8b0, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser11getLastNameEv
; demangled: GLXPlayerUser::getLastName()
; decoder-mode: arm
0083a8b0  5c 00 90 e5                                      ldr r0, [r0, #0x5c]
0083a8b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a8b8, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser6getSexEv
; demangled: GLXPlayerUser::getSex()
; decoder-mode: arm
0083a8b8  60 00 d0 e5                                      ldrb r0, [r0, #0x60]
0083a8bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a8c0, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser11getBirthdayEv
; demangled: GLXPlayerUser::getBirthday()
; decoder-mode: arm
0083a8c0  64 00 90 e5                                      ldr r0, [r0, #0x64]
0083a8c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a8c8, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser13getOnlineTimeEv
; demangled: GLXPlayerUser::getOnlineTime()
; decoder-mode: arm
0083a8c8  68 00 90 e5                                      ldr r0, [r0, #0x68]
0083a8cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a8d0, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser14getTotalTrophyEv
; demangled: GLXPlayerUser::getTotalTrophy()
; decoder-mode: arm
0083a8d0  6c 00 90 e5                                      ldr r0, [r0, #0x6c]
0083a8d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a8d8, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser21getNumberUserGameListEv
; demangled: GLXPlayerUser::getNumberUserGameList()
; decoder-mode: arm
0083a8d8  7c 00 90 e5                                      ldr r0, [r0, #0x7c]
0083a8dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a8e0, declared_size=40, range_size=40, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser14getUserGamePIDEi
; demangled: GLXPlayerUser::getUserGamePID(int)
; decoder-mode: arm
0083a8e0  00 00 51 e3                                      cmp r1, #0
0083a8e4  01 00 00 aa                                      bge #0x83a8f0
0083a8e8  00 00 a0 e3                                      mov r0, #0
0083a8ec  1e ff 2f e1                                      bx lr
0083a8f0  70 30 90 e5                                      ldr r3, [r0, #0x70]
0083a8f4  00 00 53 e3                                      cmp r3, #0
0083a8f8  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
0083a8fc  1e ff 2f 11                                      bxne lr
0083a900  00 00 a0 e3                                      mov r0, #0
0083a904  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a908, declared_size=40, range_size=40, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15getUserGameNameEi
; demangled: GLXPlayerUser::getUserGameName(int)
; decoder-mode: arm
0083a908  00 00 51 e3                                      cmp r1, #0
0083a90c  01 00 00 aa                                      bge #0x83a918
0083a910  00 00 a0 e3                                      mov r0, #0
0083a914  1e ff 2f e1                                      bx lr
0083a918  74 30 90 e5                                      ldr r3, [r0, #0x74]
0083a91c  00 00 53 e3                                      cmp r3, #0
0083a920  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
0083a924  1e ff 2f 11                                      bxne lr
0083a928  00 00 a0 e3                                      mov r0, #0
0083a92c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a930, declared_size=36, range_size=36, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17getUserGameTrophyEi
; demangled: GLXPlayerUser::getUserGameTrophy(int)
; decoder-mode: arm
0083a930  00 00 51 e3                                      cmp r1, #0
0083a934  01 00 00 aa                                      bge #0x83a940
0083a938  00 00 e0 e3                                      mvn r0, #0
0083a93c  1e ff 2f e1                                      bx lr
0083a940  78 30 90 e5                                      ldr r3, [r0, #0x78]
0083a944  00 00 53 e3                                      cmp r3, #0
0083a948  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
0083a94c  1e ff 2f 11                                      bxne lr
0083a950  f8 ff ff ea                                      b #0x83a938

; FUNCTION 0x0083a954, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser19getCurrentUserStateEv
; demangled: GLXPlayerUser::getCurrentUserState()
; decoder-mode: arm
0083a954  84 00 90 e5                                      ldr r0, [r0, #0x84]
0083a958  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a95c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17getUserReputationEv
; demangled: GLXPlayerUser::getUserReputation()
; decoder-mode: arm
0083a95c  d0 09 c0 e1                                      ldrd r0, r1, [r0, #0x90]
0083a960  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a964, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser25getUserBadReputationCountEv
; demangled: GLXPlayerUser::getUserBadReputationCount()
; decoder-mode: arm
0083a964  98 00 90 e5                                      ldr r0, [r0, #0x98]
0083a968  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a96c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser26getUserGoodReputationCountEv
; demangled: GLXPlayerUser::getUserGoodReputationCount()
; decoder-mode: arm
0083a96c  9c 00 90 e5                                      ldr r0, [r0, #0x9c]
0083a970  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a974, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser13getUserTrophyEv
; demangled: GLXPlayerUser::getUserTrophy()
; decoder-mode: arm
0083a974  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
0083a978  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a97c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser16getUserBestScoreEv
; demangled: GLXPlayerUser::getUserBestScore()
; decoder-mode: arm
0083a97c  a4 00 90 e5                                      ldr r0, [r0, #0xa4]
0083a980  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a984, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser16getUserAvatarKeyEv
; demangled: GLXPlayerUser::getUserAvatarKey()
; decoder-mode: arm
0083a984  a8 00 90 e5                                      ldr r0, [r0, #0xa8]
0083a988  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a98c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser23getUserAvatarLastUpdateEv
; demangled: GLXPlayerUser::getUserAvatarLastUpdate()
; decoder-mode: arm
0083a98c  b0 00 90 e5                                      ldr r0, [r0, #0xb0]
0083a990  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a994, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17getUserAvatarDataEv
; demangled: GLXPlayerUser::getUserAvatarData()
; decoder-mode: arm
0083a994  b8 00 90 e5                                      ldr r0, [r0, #0xb8]
0083a998  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a99c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser11getUserDataEv
; demangled: GLXPlayerUser::getUserData()
; decoder-mode: arm
0083a99c  c0 00 90 e5                                      ldr r0, [r0, #0xc0]
0083a9a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a9a4, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser16getOtherUserNameEv
; demangled: GLXPlayerUser::getOtherUserName()
; decoder-mode: arm
0083a9a4  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
0083a9a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083a9ac, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser12getAvatarKeyEi
; demangled: GLXPlayerUser::getAvatarKey(int)
; decoder-mode: arm
0083a9ac  08 31 90 e5                                      ldr r3, [r0, #0x108]
0083a9b0  01 20 73 e2                                      rsbs r2, r3, #1
0083a9b4  00 20 a0 33                                      movlo r2, #0
0083a9b8  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0083a9bc  01 00 00 0a                                      beq #0x83a9c8
0083a9c0  00 00 a0 e3                                      mov r0, #0
0083a9c4  1e ff 2f e1                                      bx lr
0083a9c8  14 21 90 e5                                      ldr r2, [r0, #0x114]
0083a9cc  02 00 51 e1                                      cmp r1, r2
0083a9d0  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
0083a9d4  1e ff 2f b1                                      bxlt lr
0083a9d8  f8 ff ff ea                                      b #0x83a9c0

; FUNCTION 0x0083a9dc, declared_size=48, range_size=48, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser19getAvatarLastUpdateEi
; demangled: GLXPlayerUser::getAvatarLastUpdate(int)
; decoder-mode: arm
0083a9dc  0c 31 90 e5                                      ldr r3, [r0, #0x10c]
0083a9e0  01 20 73 e2                                      rsbs r2, r3, #1
0083a9e4  00 20 a0 33                                      movlo r2, #0
0083a9e8  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0083a9ec  01 00 00 0a                                      beq #0x83a9f8
0083a9f0  00 00 a0 e3                                      mov r0, #0
0083a9f4  1e ff 2f e1                                      bx lr
0083a9f8  14 21 90 e5                                      ldr r2, [r0, #0x114]
0083a9fc  02 00 51 e1                                      cmp r1, r2
0083aa00  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
0083aa04  1e ff 2f b1                                      bxlt lr
0083aa08  f8 ff ff ea                                      b #0x83a9f0

; FUNCTION 0x0083aa0c, declared_size=44, range_size=44, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15getAvatarStatusEi
; demangled: GLXPlayerUser::getAvatarStatus(int)
; decoder-mode: arm
0083aa0c  10 31 90 e5                                      ldr r3, [r0, #0x110]
0083aa10  01 20 73 e2                                      rsbs r2, r3, #1
0083aa14  00 20 a0 33                                      movlo r2, #0
0083aa18  a1 2f 92 e1                                      orrs r2, r2, r1, lsr #31
0083aa1c  03 00 00 1a                                      bne #0x83aa30
0083aa20  14 21 90 e5                                      ldr r2, [r0, #0x114]
0083aa24  02 00 51 e1                                      cmp r1, r2
0083aa28  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
0083aa2c  1e ff 2f b1                                      bxlt lr
0083aa30  00 00 a0 e3                                      mov r0, #0
0083aa34  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083aa38, declared_size=4, range_size=4, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser19processUploadAvatarEPc
; demangled: GLXPlayerUser::processUploadAvatar(char*)
; decoder-mode: arm
0083aa38  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083aa3c, declared_size=296, range_size=296, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser20clearUserInformationEv
; demangled: GLXPlayerUser::clearUserInformation()
; decoder-mode: arm
0083aa3c  10 40 2d e9                                      push {r4, lr}
0083aa40  00 40 a0 e1                                      mov r4, r0
0083aa44  40 00 90 e5                                      ldr r0, [r0, #0x40]
0083aa48  00 00 50 e3                                      cmp r0, #0
0083aa4c  02 00 00 0a                                      beq #0x83aa5c
0083aa50  98 4d eb eb                                      bl #0x30e0b8
0083aa54  00 30 a0 e3                                      mov r3, #0
0083aa58  40 30 84 e5                                      str r3, [r4, #0x40]
0083aa5c  44 00 94 e5                                      ldr r0, [r4, #0x44]
0083aa60  00 00 50 e3                                      cmp r0, #0
0083aa64  02 00 00 0a                                      beq #0x83aa74
0083aa68  92 4d eb eb                                      bl #0x30e0b8
0083aa6c  00 30 a0 e3                                      mov r3, #0
0083aa70  44 30 84 e5                                      str r3, [r4, #0x44]
0083aa74  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0083aa78  00 00 50 e3                                      cmp r0, #0
0083aa7c  02 00 00 0a                                      beq #0x83aa8c
0083aa80  8c 4d eb eb                                      bl #0x30e0b8
0083aa84  00 30 a0 e3                                      mov r3, #0
0083aa88  4c 30 84 e5                                      str r3, [r4, #0x4c]
0083aa8c  54 00 94 e5                                      ldr r0, [r4, #0x54]
0083aa90  00 00 50 e3                                      cmp r0, #0
0083aa94  02 00 00 0a                                      beq #0x83aaa4
0083aa98  86 4d eb eb                                      bl #0x30e0b8
0083aa9c  00 30 a0 e3                                      mov r3, #0
0083aaa0  54 30 84 e5                                      str r3, [r4, #0x54]
0083aaa4  58 00 94 e5                                      ldr r0, [r4, #0x58]
0083aaa8  00 00 50 e3                                      cmp r0, #0
0083aaac  02 00 00 0a                                      beq #0x83aabc
0083aab0  80 4d eb eb                                      bl #0x30e0b8
0083aab4  00 30 a0 e3                                      mov r3, #0
0083aab8  58 30 84 e5                                      str r3, [r4, #0x58]
0083aabc  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
0083aac0  00 00 50 e3                                      cmp r0, #0
0083aac4  02 00 00 0a                                      beq #0x83aad4
0083aac8  7a 4d eb eb                                      bl #0x30e0b8
0083aacc  00 30 a0 e3                                      mov r3, #0
0083aad0  5c 30 84 e5                                      str r3, [r4, #0x5c]
0083aad4  64 00 94 e5                                      ldr r0, [r4, #0x64]
0083aad8  00 00 50 e3                                      cmp r0, #0
0083aadc  02 00 00 0a                                      beq #0x83aaec
0083aae0  74 4d eb eb                                      bl #0x30e0b8
0083aae4  00 30 a0 e3                                      mov r3, #0
0083aae8  64 30 84 e5                                      str r3, [r4, #0x64]
0083aaec  c4 00 94 e5                                      ldr r0, [r4, #0xc4]
0083aaf0  00 00 50 e3                                      cmp r0, #0
0083aaf4  02 00 00 0a                                      beq #0x83ab04
0083aaf8  6e 4d eb eb                                      bl #0x30e0b8
0083aafc  00 30 a0 e3                                      mov r3, #0
0083ab00  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083ab04  a8 00 94 e5                                      ldr r0, [r4, #0xa8]
0083ab08  00 00 50 e3                                      cmp r0, #0
0083ab0c  02 00 00 0a                                      beq #0x83ab1c
0083ab10  68 4d eb eb                                      bl #0x30e0b8
0083ab14  00 30 a0 e3                                      mov r3, #0
0083ab18  a8 30 84 e5                                      str r3, [r4, #0xa8]
0083ab1c  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
0083ab20  00 00 50 e3                                      cmp r0, #0
0083ab24  02 00 00 0a                                      beq #0x83ab34
0083ab28  62 4d eb eb                                      bl #0x30e0b8
0083ab2c  00 30 a0 e3                                      mov r3, #0
0083ab30  b0 30 84 e5                                      str r3, [r4, #0xb0]
0083ab34  24 01 94 e5                                      ldr r0, [r4, #0x124]
0083ab38  00 00 50 e3                                      cmp r0, #0
0083ab3c  02 00 00 0a                                      beq #0x83ab4c
0083ab40  5c 4d eb eb                                      bl #0x30e0b8
0083ab44  00 30 a0 e3                                      mov r3, #0
0083ab48  24 31 84 e5                                      str r3, [r4, #0x124]
0083ab4c  00 30 a0 e3                                      mov r3, #0
0083ab50  60 30 c4 e5                                      strb r3, [r4, #0x60]
0083ab54  68 30 84 e5                                      str r3, [r4, #0x68]
0083ab58  6c 30 84 e5                                      str r3, [r4, #0x6c]
0083ab5c  50 30 c4 e5                                      strb r3, [r4, #0x50]
0083ab60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0083aba4, declared_size=244, range_size=244, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15clearAvatarListEv
; demangled: GLXPlayerUser::clearAvatarList()
; decoder-mode: arm
0083aba4  70 40 2d e9                                      push {r4, r5, r6, lr}
0083aba8  08 21 90 e5                                      ldr r2, [r0, #0x108]
0083abac  00 50 a0 e1                                      mov r5, r0
0083abb0  00 00 52 e3                                      cmp r2, #0
0083abb4  15 00 00 0a                                      beq #0x83ac10
0083abb8  14 31 90 e5                                      ldr r3, [r0, #0x114]
0083abbc  00 00 53 e3                                      cmp r3, #0
0083abc0  0e 00 00 da                                      ble #0x83ac00
0083abc4  00 40 a0 e3                                      mov r4, #0
0083abc8  04 60 a0 e1                                      mov r6, r4
0083abcc  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
0083abd0  00 00 50 e3                                      cmp r0, #0
0083abd4  04 00 00 0a                                      beq #0x83abec
0083abd8  36 4d eb eb                                      bl #0x30e0b8
0083abdc  08 31 95 e5                                      ldr r3, [r5, #0x108]
0083abe0  04 61 83 e7                                      str r6, [r3, r4, lsl #2]
0083abe4  14 31 95 e5                                      ldr r3, [r5, #0x114]
0083abe8  08 21 95 e5                                      ldr r2, [r5, #0x108]
0083abec  01 40 84 e2                                      add r4, r4, #1
0083abf0  04 00 53 e1                                      cmp r3, r4
0083abf4  f4 ff ff ca                                      bgt #0x83abcc
0083abf8  00 00 52 e3                                      cmp r2, #0
0083abfc  01 00 00 0a                                      beq #0x83ac08
0083ac00  02 00 a0 e1                                      mov r0, r2
0083ac04  2b 4d eb eb                                      bl #0x30e0b8
0083ac08  00 30 a0 e3                                      mov r3, #0
0083ac0c  08 31 85 e5                                      str r3, [r5, #0x108]
0083ac10  0c 21 95 e5                                      ldr r2, [r5, #0x10c]
0083ac14  00 00 52 e3                                      cmp r2, #0
0083ac18  15 00 00 0a                                      beq #0x83ac74
0083ac1c  14 31 95 e5                                      ldr r3, [r5, #0x114]
0083ac20  00 00 53 e3                                      cmp r3, #0
0083ac24  0e 00 00 da                                      ble #0x83ac64
0083ac28  00 40 a0 e3                                      mov r4, #0
0083ac2c  04 60 a0 e1                                      mov r6, r4
0083ac30  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
0083ac34  00 00 50 e3                                      cmp r0, #0
0083ac38  04 00 00 0a                                      beq #0x83ac50
0083ac3c  1d 4d eb eb                                      bl #0x30e0b8
0083ac40  0c 31 95 e5                                      ldr r3, [r5, #0x10c]
0083ac44  04 61 83 e7                                      str r6, [r3, r4, lsl #2]
0083ac48  14 31 95 e5                                      ldr r3, [r5, #0x114]
0083ac4c  0c 21 95 e5                                      ldr r2, [r5, #0x10c]
0083ac50  01 40 84 e2                                      add r4, r4, #1
0083ac54  04 00 53 e1                                      cmp r3, r4
0083ac58  f4 ff ff ca                                      bgt #0x83ac30
0083ac5c  00 00 52 e3                                      cmp r2, #0
0083ac60  01 00 00 0a                                      beq #0x83ac6c
0083ac64  02 00 a0 e1                                      mov r0, r2
0083ac68  12 4d eb eb                                      bl #0x30e0b8
0083ac6c  00 30 a0 e3                                      mov r3, #0
0083ac70  0c 31 85 e5                                      str r3, [r5, #0x10c]
0083ac74  10 01 95 e5                                      ldr r0, [r5, #0x110]
0083ac78  00 00 50 e3                                      cmp r0, #0
0083ac7c  02 00 00 0a                                      beq #0x83ac8c
0083ac80  8a 4d eb eb                                      bl #0x30e2b0
0083ac84  00 30 a0 e3                                      mov r3, #0
0083ac88  10 31 85 e5                                      str r3, [r5, #0x110]
0083ac8c  00 30 a0 e3                                      mov r3, #0
0083ac90  14 31 85 e5                                      str r3, [r5, #0x114]
0083ac94  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0083ac98, declared_size=72, range_size=72, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser14clearUserStateEv
; demangled: GLXPlayerUser::clearUserState()
; decoder-mode: arm
0083ac98  10 40 2d e9                                      push {r4, lr}
0083ac9c  00 40 a0 e1                                      mov r4, r0
0083aca0  88 00 90 e5                                      ldr r0, [r0, #0x88]
0083aca4  00 00 50 e3                                      cmp r0, #0
0083aca8  02 00 00 0a                                      beq #0x83acb8
0083acac  7f 4d eb eb                                      bl #0x30e2b0
0083acb0  00 30 a0 e3                                      mov r3, #0
0083acb4  88 30 84 e5                                      str r3, [r4, #0x88]
0083acb8  c4 00 94 e5                                      ldr r0, [r4, #0xc4]
0083acbc  00 00 50 e3                                      cmp r0, #0
0083acc0  02 00 00 0a                                      beq #0x83acd0
0083acc4  fb 4c eb eb                                      bl #0x30e0b8
0083acc8  00 30 a0 e3                                      mov r3, #0
0083accc  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083acd0  00 30 e0 e3                                      mvn r3, #0
0083acd4  80 30 84 e5                                      str r3, [r4, #0x80]
0083acd8  84 30 84 e5                                      str r3, [r4, #0x84]
0083acdc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0083ace0, declared_size=268, range_size=268, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17clearUserGameListEv
; demangled: GLXPlayerUser::clearUserGameList()
; decoder-mode: arm
0083ace0  70 40 2d e9                                      push {r4, r5, r6, lr}
0083ace4  70 20 90 e5                                      ldr r2, [r0, #0x70]
0083ace8  00 40 a0 e1                                      mov r4, r0
0083acec  00 00 52 e3                                      cmp r2, #0
0083acf0  15 00 00 0a                                      beq #0x83ad4c
0083acf4  7c 30 90 e5                                      ldr r3, [r0, #0x7c]
0083acf8  00 00 53 e3                                      cmp r3, #0
0083acfc  0e 00 00 da                                      ble #0x83ad3c
0083ad00  00 50 a0 e3                                      mov r5, #0
0083ad04  05 60 a0 e1                                      mov r6, r5
0083ad08  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0083ad0c  00 00 50 e3                                      cmp r0, #0
0083ad10  04 00 00 0a                                      beq #0x83ad28
0083ad14  e7 4c eb eb                                      bl #0x30e0b8
0083ad18  70 30 94 e5                                      ldr r3, [r4, #0x70]
0083ad1c  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0083ad20  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
0083ad24  70 20 94 e5                                      ldr r2, [r4, #0x70]
0083ad28  01 50 85 e2                                      add r5, r5, #1
0083ad2c  05 00 53 e1                                      cmp r3, r5
0083ad30  f4 ff ff ca                                      bgt #0x83ad08
0083ad34  00 00 52 e3                                      cmp r2, #0
0083ad38  01 00 00 0a                                      beq #0x83ad44
0083ad3c  02 00 a0 e1                                      mov r0, r2
0083ad40  dc 4c eb eb                                      bl #0x30e0b8
0083ad44  00 30 a0 e3                                      mov r3, #0
0083ad48  70 30 84 e5                                      str r3, [r4, #0x70]
0083ad4c  74 20 94 e5                                      ldr r2, [r4, #0x74]
0083ad50  00 00 52 e3                                      cmp r2, #0
0083ad54  15 00 00 0a                                      beq #0x83adb0
0083ad58  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
0083ad5c  00 00 53 e3                                      cmp r3, #0
0083ad60  0e 00 00 da                                      ble #0x83ada0
0083ad64  00 50 a0 e3                                      mov r5, #0
0083ad68  05 60 a0 e1                                      mov r6, r5
0083ad6c  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0083ad70  00 00 50 e3                                      cmp r0, #0
0083ad74  04 00 00 0a                                      beq #0x83ad8c
0083ad78  ce 4c eb eb                                      bl #0x30e0b8
0083ad7c  74 30 94 e5                                      ldr r3, [r4, #0x74]
0083ad80  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
0083ad84  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
0083ad88  74 20 94 e5                                      ldr r2, [r4, #0x74]
0083ad8c  01 50 85 e2                                      add r5, r5, #1
0083ad90  05 00 53 e1                                      cmp r3, r5
0083ad94  f4 ff ff ca                                      bgt #0x83ad6c
0083ad98  00 00 52 e3                                      cmp r2, #0
0083ad9c  01 00 00 0a                                      beq #0x83ada8
0083ada0  02 00 a0 e1                                      mov r0, r2
0083ada4  c3 4c eb eb                                      bl #0x30e0b8
0083ada8  00 30 a0 e3                                      mov r3, #0
0083adac  74 30 84 e5                                      str r3, [r4, #0x74]
0083adb0  78 00 94 e5                                      ldr r0, [r4, #0x78]
0083adb4  00 00 50 e3                                      cmp r0, #0
0083adb8  02 00 00 0a                                      beq #0x83adc8
0083adbc  3b 4d eb eb                                      bl #0x30e2b0
0083adc0  00 30 a0 e3                                      mov r3, #0
0083adc4  78 30 84 e5                                      str r3, [r4, #0x78]
0083adc8  c4 00 94 e5                                      ldr r0, [r4, #0xc4]
0083adcc  00 00 50 e3                                      cmp r0, #0
0083add0  02 00 00 0a                                      beq #0x83ade0
0083add4  b7 4c eb eb                                      bl #0x30e0b8
0083add8  00 30 a0 e3                                      mov r3, #0
0083addc  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083ade0  00 30 a0 e3                                      mov r3, #0
0083ade4  7c 30 84 e5                                      str r3, [r4, #0x7c]
0083ade8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0083adec, declared_size=460, range_size=460, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser16processLiveFeedsEPc
; demangled: GLXPlayerUser::processLiveFeeds(char*)
; decoder-mode: arm
0083adec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083adf0  b8 a1 9f e5                                      ldr sl, [pc, #0x1b8]
0083adf4  b8 b1 9f e5                                      ldr fp, [pc, #0x1b8]
0083adf8  2c d0 4d e2                                      sub sp, sp, #0x2c
0083adfc  0a a0 8f e0                                      add sl, pc, sl
0083ae00  0b 30 9a e7                                      ldr r3, [sl, fp]
0083ae04  00 50 a0 e3                                      mov r5, #0
0083ae08  08 c0 8d e2                                      add ip, sp, #8
0083ae0c  00 30 93 e5                                      ldr r3, [r3]
0083ae10  28 60 8d e2                                      add r6, sp, #0x28
0083ae14  01 70 a0 e1                                      mov r7, r1
0083ae18  24 30 8d e5                                      str r3, [sp, #0x24]
0083ae1c  04 50 8c e4                                      str r5, [ip], #4
0083ae20  04 50 8c e4                                      str r5, [ip], #4
0083ae24  04 50 8c e4                                      str r5, [ip], #4
0083ae28  04 50 8c e4                                      str r5, [ip], #4
0083ae2c  04 50 8c e4                                      str r5, [ip], #4
0083ae30  24 50 26 e5                                      str r5, [r6, #-0x24]!
0083ae34  04 50 8c e4                                      str r5, [ip], #4
0083ae38  00 40 a0 e1                                      mov r4, r0
0083ae3c  06 10 a0 e1                                      mov r1, r6
0083ae40  05 20 a0 e1                                      mov r2, r5
0083ae44  7c 30 a0 e3                                      mov r3, #0x7c
0083ae48  07 00 a0 e1                                      mov r0, r7
0083ae4c  00 50 8c e5                                      str r5, [ip]
0083ae50  a2 bf ff eb                                      bl #0x82ace0
0083ae54  06 00 a0 e1                                      mov r0, r6
0083ae58  30 c1 ff eb                                      bl #0x82b320
0083ae5c  05 00 50 e1                                      cmp r0, r5
0083ae60  28 01 84 e5                                      str r0, [r4, #0x128]
0083ae64  49 00 00 0a                                      beq #0x83af90
0083ae68  48 00 00 da                                      ble #0x83af90
0083ae6c  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
0083ae70  00 50 8d e5                                      str r5, [sp]
0083ae74  05 00 53 e1                                      cmp r3, r5
0083ae78  0f 00 00 0a                                      beq #0x83aebc
0083ae7c  04 00 13 e5                                      ldr r0, [r3, #-4]
0083ae80  80 01 83 e0                                      add r0, r3, r0, lsl #3
0083ae84  00 00 53 e1                                      cmp r3, r0
0083ae88  01 00 00 1a                                      bne #0x83ae94
0083ae8c  06 00 00 ea                                      b #0x83aeac
0083ae90  05 00 a0 e1                                      mov r0, r5
0083ae94  08 50 40 e2                                      sub r5, r0, #8
0083ae98  05 00 a0 e1                                      mov r0, r5
0083ae9c  30 ff ff eb                                      bl #0x83ab64
0083aea0  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
0083aea4  05 00 50 e1                                      cmp r0, r5
0083aea8  f8 ff ff 1a                                      bne #0x83ae90
0083aeac  08 00 40 e2                                      sub r0, r0, #8
0083aeb0  80 4c eb eb                                      bl #0x30e0b8
0083aeb4  00 30 a0 e3                                      mov r3, #0
0083aeb8  2c 31 84 e5                                      str r3, [r4, #0x12c]
0083aebc  28 51 94 e5                                      ldr r5, [r4, #0x128]
0083aec0  01 00 85 e2                                      add r0, r5, #1
0083aec4  80 01 a0 e1                                      lsl r0, r0, #3
0083aec8  80 4c eb eb                                      bl #0x30e0d0
0083aecc  08 30 a0 e3                                      mov r3, #8
0083aed0  00 00 55 e3                                      cmp r5, #0
0083aed4  28 00 80 e8                                      stm r0, {r3, r5}
0083aed8  03 10 80 e0                                      add r1, r0, r3
0083aedc  07 00 00 0a                                      beq #0x83af00
0083aee0  00 30 a0 e3                                      mov r3, #0
0083aee4  03 20 a0 e1                                      mov r2, r3
0083aee8  01 30 83 e2                                      add r3, r3, #1
0083aeec  03 00 55 e1                                      cmp r5, r3
0083aef0  08 20 80 e5                                      str r2, [r0, #8]
0083aef4  0c 20 80 e5                                      str r2, [r0, #0xc]
0083aef8  08 00 80 e2                                      add r0, r0, #8
0083aefc  f9 ff ff 1a                                      bne #0x83aee8
0083af00  28 31 94 e5                                      ldr r3, [r4, #0x128]
0083af04  2c 11 84 e5                                      str r1, [r4, #0x12c]
0083af08  00 00 53 e3                                      cmp r3, #0
0083af0c  1f 00 00 da                                      ble #0x83af90
0083af10  00 50 a0 e3                                      mov r5, #0
0083af14  0d 80 a0 e1                                      mov r8, sp
0083af18  05 90 a0 e1                                      mov sb, r5
0083af1c  01 60 85 e2                                      add r6, r5, #1
0083af20  0d 10 a0 e1                                      mov r1, sp
0083af24  06 20 a0 e1                                      mov r2, r6
0083af28  7c 30 a0 e3                                      mov r3, #0x7c
0083af2c  07 00 a0 e1                                      mov r0, r7
0083af30  bf c1 ff eb                                      bl #0x82b634
0083af34  2c 11 94 e5                                      ldr r1, [r4, #0x12c]
0083af38  85 51 a0 e1                                      lsl r5, r5, #3
0083af3c  00 20 a0 e3                                      mov r2, #0
0083af40  05 10 81 e0                                      add r1, r1, r5
0083af44  5e 30 a0 e3                                      mov r3, #0x5e
0083af48  00 00 9d e5                                      ldr r0, [sp]
0083af4c  b8 c1 ff eb                                      bl #0x82b634
0083af50  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
0083af54  00 00 9d e5                                      ldr r0, [sp]
0083af58  01 20 a0 e3                                      mov r2, #1
0083af5c  05 50 83 e0                                      add r5, r3, r5
0083af60  04 10 85 e2                                      add r1, r5, #4
0083af64  5e 30 a0 e3                                      mov r3, #0x5e
0083af68  b1 c1 ff eb                                      bl #0x82b634
0083af6c  00 00 9d e5                                      ldr r0, [sp]
0083af70  00 00 50 e3                                      cmp r0, #0
0083af74  01 00 00 0a                                      beq #0x83af80
0083af78  4e 4c eb eb                                      bl #0x30e0b8
0083af7c  00 90 8d e5                                      str sb, [sp]
0083af80  28 31 94 e5                                      ldr r3, [r4, #0x128]
0083af84  06 50 a0 e1                                      mov r5, r6
0083af88  06 00 53 e1                                      cmp r3, r6
0083af8c  e2 ff ff ca                                      bgt #0x83af1c
0083af90  0b 30 9a e7                                      ldr r3, [sl, fp]
0083af94  24 20 9d e5                                      ldr r2, [sp, #0x24]
0083af98  00 30 93 e5                                      ldr r3, [r3]
0083af9c  03 00 52 e1                                      cmp r2, r3
0083afa0  01 00 00 1a                                      bne #0x83afac
0083afa4  2c d0 8d e2                                      add sp, sp, #0x2c
0083afa8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083afac  d7 4c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083afb0  94 9c 15 00 ac 40 00 00                          .byte 0x94, 0x9c, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0083afb8, declared_size=112, range_size=112, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser22processUserChatWarningEPc
; demangled: GLXPlayerUser::processUserChatWarning(char*)
; decoder-mode: arm
0083afb8  70 40 2d e9                                      push {r4, r5, r6, lr}
0083afbc  00 40 a0 e1                                      mov r4, r0
0083afc0  18 01 90 e5                                      ldr r0, [r0, #0x118]
0083afc4  01 60 a0 e1                                      mov r6, r1
0083afc8  00 00 50 e3                                      cmp r0, #0
0083afcc  02 00 00 0a                                      beq #0x83afdc
0083afd0  38 4c eb eb                                      bl #0x30e0b8
0083afd4  00 30 a0 e3                                      mov r3, #0
0083afd8  18 31 84 e5                                      str r3, [r4, #0x118]
0083afdc  00 00 56 e3                                      cmp r6, #0
0083afe0  0f 00 00 0a                                      beq #0x83b024
0083afe4  06 00 a0 e1                                      mov r0, r6
0083afe8  ef bf ff eb                                      bl #0x82afac
0083afec  00 00 50 e3                                      cmp r0, #0
0083aff0  0b 00 00 da                                      ble #0x83b024
0083aff4  06 00 a0 e1                                      mov r0, r6
0083aff8  eb bf ff eb                                      bl #0x82afac
0083affc  00 50 a0 e1                                      mov r5, r0
0083b000  01 00 80 e2                                      add r0, r0, #1
0083b004  31 4c eb eb                                      bl #0x30e0d0
0083b008  05 20 a0 e1                                      mov r2, r5
0083b00c  06 10 a0 e1                                      mov r1, r6
0083b010  18 01 84 e5                                      str r0, [r4, #0x118]
0083b014  cd c0 ff eb                                      bl #0x82b350
0083b018  18 31 94 e5                                      ldr r3, [r4, #0x118]
0083b01c  00 20 a0 e3                                      mov r2, #0
0083b020  05 20 c3 e7                                      strb r2, [r3, r5]
0083b024  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0083b028, declared_size=76, range_size=76, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser22processPromoAttachmentEPc
; demangled: GLXPlayerUser::processPromoAttachment(char*)
; decoder-mode: arm
0083b028  70 40 2d e9                                      push {r4, r5, r6, lr}
0083b02c  00 40 a0 e1                                      mov r4, r0
0083b030  04 01 90 e5                                      ldr r0, [r0, #0x104]
0083b034  01 50 a0 e1                                      mov r5, r1
0083b038  00 00 50 e3                                      cmp r0, #0
0083b03c  02 00 00 0a                                      beq #0x83b04c
0083b040  9a 4c eb eb                                      bl #0x30e2b0
0083b044  00 30 a0 e3                                      mov r3, #0
0083b048  04 31 84 e5                                      str r3, [r4, #0x104]
0083b04c  00 00 55 e3                                      cmp r5, #0
0083b050  06 00 00 0a                                      beq #0x83b070
0083b054  05 00 a0 e1                                      mov r0, r5
0083b058  d3 bf ff eb                                      bl #0x82afac
0083b05c  00 00 50 e3                                      cmp r0, #0
0083b060  02 00 00 da                                      ble #0x83b070
0083b064  05 00 a0 e1                                      mov r0, r5
0083b068  4c c2 ff eb                                      bl #0x82b9a0
0083b06c  04 01 84 e5                                      str r0, [r4, #0x104]
0083b070  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0083b074, declared_size=76, range_size=76, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser20processRssAttachmentEPc
; demangled: GLXPlayerUser::processRssAttachment(char*)
; decoder-mode: arm
0083b074  70 40 2d e9                                      push {r4, r5, r6, lr}
0083b078  00 40 a0 e1                                      mov r4, r0
0083b07c  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
0083b080  01 50 a0 e1                                      mov r5, r1
0083b084  00 00 50 e3                                      cmp r0, #0
0083b088  02 00 00 0a                                      beq #0x83b098
0083b08c  87 4c eb eb                                      bl #0x30e2b0
0083b090  00 30 a0 e3                                      mov r3, #0
0083b094  f4 30 84 e5                                      str r3, [r4, #0xf4]
0083b098  00 00 55 e3                                      cmp r5, #0
0083b09c  06 00 00 0a                                      beq #0x83b0bc
0083b0a0  05 00 a0 e1                                      mov r0, r5
0083b0a4  c0 bf ff eb                                      bl #0x82afac
0083b0a8  00 00 50 e3                                      cmp r0, #0
0083b0ac  02 00 00 da                                      ble #0x83b0bc
0083b0b0  05 00 a0 e1                                      mov r0, r5
0083b0b4  39 c2 ff eb                                      bl #0x82b9a0
0083b0b8  f4 00 84 e5                                      str r0, [r4, #0xf4]
0083b0bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0083b0c0, declared_size=236, range_size=236, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser21processUserTrophyIconEPc
; demangled: GLXPlayerUser::processUserTrophyIcon(char*)
; decoder-mode: arm
0083b0c0  70 40 2d e9                                      push {r4, r5, r6, lr}
0083b0c4  00 50 51 e2                                      subs r5, r1, #0
0083b0c8  00 40 a0 e1                                      mov r4, r0
0083b0cc  13 00 00 0a                                      beq #0x83b120
0083b0d0  05 00 a0 e1                                      mov r0, r5
0083b0d4  b4 bf ff eb                                      bl #0x82afac
0083b0d8  00 00 50 e3                                      cmp r0, #0
0083b0dc  27 00 00 da                                      ble #0x83b180
0083b0e0  d4 60 94 e5                                      ldr r6, [r4, #0xd4]
0083b0e4  00 00 56 e3                                      cmp r6, #0
0083b0e8  08 00 00 1a                                      bne #0x83b110
0083b0ec  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
0083b0f0  00 00 50 e3                                      cmp r0, #0
0083b0f4  01 00 00 0a                                      beq #0x83b100
0083b0f8  ee 4b eb eb                                      bl #0x30e0b8
0083b0fc  cc 60 84 e5                                      str r6, [r4, #0xcc]
0083b100  05 00 a0 e1                                      mov r0, r5
0083b104  25 c2 ff eb                                      bl #0x82b9a0
0083b108  cc 00 84 e5                                      str r0, [r4, #0xcc]
0083b10c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0083b110  01 00 56 e3                                      cmp r6, #1
0083b114  1a 00 00 0a                                      beq #0x83b184
0083b118  02 00 56 e3                                      cmp r6, #2
0083b11c  00 00 00 0a                                      beq #0x83b124
0083b120  70 80 bd e8                                      pop {r4, r5, r6, pc}
0083b124  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
0083b128  00 00 50 e3                                      cmp r0, #0
0083b12c  02 00 00 0a                                      beq #0x83b13c
0083b130  e0 4b eb eb                                      bl #0x30e0b8
0083b134  00 30 a0 e3                                      mov r3, #0
0083b138  cc 30 84 e5                                      str r3, [r4, #0xcc]
0083b13c  d0 00 94 e5                                      ldr r0, [r4, #0xd0]
0083b140  00 00 50 e3                                      cmp r0, #0
0083b144  02 00 00 0a                                      beq #0x83b154
0083b148  da 4b eb eb                                      bl #0x30e0b8
0083b14c  00 30 a0 e3                                      mov r3, #0
0083b150  d0 30 84 e5                                      str r3, [r4, #0xd0]
0083b154  d0 10 84 e2                                      add r1, r4, #0xd0
0083b158  01 20 a0 e3                                      mov r2, #1
0083b15c  7c 30 a0 e3                                      mov r3, #0x7c
0083b160  05 00 a0 e1                                      mov r0, r5
0083b164  32 c1 ff eb                                      bl #0x82b634
0083b168  05 00 a0 e1                                      mov r0, r5
0083b16c  cc 10 84 e2                                      add r1, r4, #0xcc
0083b170  03 20 a0 e3                                      mov r2, #3
0083b174  7c 30 a0 e3                                      mov r3, #0x7c
0083b178  70 40 bd e8                                      pop {r4, r5, r6, lr}
0083b17c  2c c1 ff ea                                      b #0x82b634
0083b180  70 80 bd e8                                      pop {r4, r5, r6, pc}
0083b184  d0 00 94 e5                                      ldr r0, [r4, #0xd0]
0083b188  00 00 50 e3                                      cmp r0, #0
0083b18c  02 00 00 0a                                      beq #0x83b19c
0083b190  c8 4b eb eb                                      bl #0x30e0b8
0083b194  00 30 a0 e3                                      mov r3, #0
0083b198  d0 30 84 e5                                      str r3, [r4, #0xd0]
0083b19c  05 00 a0 e1                                      mov r0, r5
0083b1a0  fe c1 ff eb                                      bl #0x82b9a0
0083b1a4  d0 00 84 e5                                      str r0, [r4, #0xd0]
0083b1a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0083b1ac, declared_size=52, range_size=52, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser11setPasswordEPc
; demangled: GLXPlayerUser::setPassword(char*)
; decoder-mode: arm
0083b1ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0083b1b0  00 40 a0 e1                                      mov r4, r0
0083b1b4  48 00 90 e5                                      ldr r0, [r0, #0x48]
0083b1b8  01 50 a0 e1                                      mov r5, r1
0083b1bc  00 00 50 e3                                      cmp r0, #0
0083b1c0  02 00 00 0a                                      beq #0x83b1d0
0083b1c4  39 4c eb eb                                      bl #0x30e2b0
0083b1c8  00 30 a0 e3                                      mov r3, #0
0083b1cc  48 30 84 e5                                      str r3, [r4, #0x48]
0083b1d0  05 00 a0 e1                                      mov r0, r5
0083b1d4  f1 c1 ff eb                                      bl #0x82b9a0
0083b1d8  48 00 84 e5                                      str r0, [r4, #0x48]
0083b1dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0083b1e0, declared_size=160, range_size=160, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser19processGetPromo_RSSEPc
; demangled: GLXPlayerUser::processGetPromo_RSS(char*)
; decoder-mode: arm
0083b1e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083b1e4  88 40 9f e5                                      ldr r4, [pc, #0x88]
0083b1e8  88 60 9f e5                                      ldr r6, [pc, #0x88]
0083b1ec  50 d0 4d e2                                      sub sp, sp, #0x50
0083b1f0  04 40 8f e0                                      add r4, pc, r4
0083b1f4  06 30 94 e7                                      ldr r3, [r4, r6]
0083b1f8  04 50 8d e2                                      add r5, sp, #4
0083b1fc  01 80 a0 e1                                      mov r8, r1
0083b200  00 30 93 e5                                      ldr r3, [r3]
0083b204  00 70 a0 e1                                      mov r7, r0
0083b208  05 00 a0 e1                                      mov r0, r5
0083b20c  4c 30 8d e5                                      str r3, [sp, #0x4c]
0083b210  eb 25 00 eb                                      bl #0x8449c4
0083b214  08 00 a0 e1                                      mov r0, r8
0083b218  63 bf ff eb                                      bl #0x82afac
0083b21c  08 10 a0 e1                                      mov r1, r8
0083b220  00 20 a0 e1                                      mov r2, r0
0083b224  05 00 a0 e1                                      mov r0, r5
0083b228  eb 27 00 eb                                      bl #0x8451dc
0083b22c  48 10 9f e5                                      ldr r1, [pc, #0x48]
0083b230  05 00 a0 e1                                      mov r0, r5
0083b234  01 10 8f e0                                      add r1, pc, r1
0083b238  7a 25 00 eb                                      bl #0x844828
0083b23c  00 10 50 e2                                      subs r1, r0, #0
0083b240  01 00 00 0a                                      beq #0x83b24c
0083b244  f8 00 87 e2                                      add r0, r7, #0xf8
0083b248  80 23 00 eb                                      bl #0x844050
0083b24c  05 00 a0 e1                                      mov r0, r5
0083b250  8d 26 00 eb                                      bl #0x844c8c
0083b254  06 30 94 e7                                      ldr r3, [r4, r6]
0083b258  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0083b25c  00 30 93 e5                                      ldr r3, [r3]
0083b260  03 00 52 e1                                      cmp r2, r3
0083b264  01 00 00 1a                                      bne #0x83b270
0083b268  50 d0 8d e2                                      add sp, sp, #0x50
0083b26c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083b270  26 4c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083b274  a0 98 15 00 ac 40 00 00 a4 29 0d 00              .byte 0xa0, 0x98, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0x29, 0x0d, 0x00

; FUNCTION 0x0083b280, declared_size=160, range_size=160, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17processGetADV_RSSEPc
; demangled: GLXPlayerUser::processGetADV_RSS(char*)
; decoder-mode: arm
0083b280  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083b284  88 40 9f e5                                      ldr r4, [pc, #0x88]
0083b288  88 60 9f e5                                      ldr r6, [pc, #0x88]
0083b28c  50 d0 4d e2                                      sub sp, sp, #0x50
0083b290  04 40 8f e0                                      add r4, pc, r4
0083b294  06 30 94 e7                                      ldr r3, [r4, r6]
0083b298  04 50 8d e2                                      add r5, sp, #4
0083b29c  01 80 a0 e1                                      mov r8, r1
0083b2a0  00 30 93 e5                                      ldr r3, [r3]
0083b2a4  00 70 a0 e1                                      mov r7, r0
0083b2a8  05 00 a0 e1                                      mov r0, r5
0083b2ac  4c 30 8d e5                                      str r3, [sp, #0x4c]
0083b2b0  c3 25 00 eb                                      bl #0x8449c4
0083b2b4  08 00 a0 e1                                      mov r0, r8
0083b2b8  3b bf ff eb                                      bl #0x82afac
0083b2bc  08 10 a0 e1                                      mov r1, r8
0083b2c0  00 20 a0 e1                                      mov r2, r0
0083b2c4  05 00 a0 e1                                      mov r0, r5
0083b2c8  c3 27 00 eb                                      bl #0x8451dc
0083b2cc  48 10 9f e5                                      ldr r1, [pc, #0x48]
0083b2d0  05 00 a0 e1                                      mov r0, r5
0083b2d4  01 10 8f e0                                      add r1, pc, r1
0083b2d8  52 25 00 eb                                      bl #0x844828
0083b2dc  00 10 50 e2                                      subs r1, r0, #0
0083b2e0  01 00 00 0a                                      beq #0x83b2ec
0083b2e4  e8 00 87 e2                                      add r0, r7, #0xe8
0083b2e8  58 23 00 eb                                      bl #0x844050
0083b2ec  05 00 a0 e1                                      mov r0, r5
0083b2f0  65 26 00 eb                                      bl #0x844c8c
0083b2f4  06 30 94 e7                                      ldr r3, [r4, r6]
0083b2f8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0083b2fc  00 30 93 e5                                      ldr r3, [r3]
0083b300  03 00 52 e1                                      cmp r2, r3
0083b304  01 00 00 1a                                      bne #0x83b310
0083b308  50 d0 8d e2                                      add sp, sp, #0x50
0083b30c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083b310  fe 4b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083b314  00 98 15 00 ac 40 00 00 04 29 0d 00              .byte 0x00, 0x98, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0x29, 0x0d, 0x00

; FUNCTION 0x0083b320, declared_size=260, range_size=260, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser19processUserGameIconEPc
; demangled: GLXPlayerUser::processUserGameIcon(char*)
; decoder-mode: arm
0083b320  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083b324  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
0083b328  f0 80 9f e5                                      ldr r8, [pc, #0xf0]
0083b32c  00 60 a0 e1                                      mov r6, r0
0083b330  04 40 8f e0                                      add r4, pc, r4
0083b334  08 30 94 e7                                      ldr r3, [r4, r8]
0083b338  c8 00 90 e5                                      ldr r0, [r0, #0xc8]
0083b33c  28 d0 4d e2                                      sub sp, sp, #0x28
0083b340  00 30 93 e5                                      ldr r3, [r3]
0083b344  00 00 50 e3                                      cmp r0, #0
0083b348  01 50 a0 e1                                      mov r5, r1
0083b34c  24 30 8d e5                                      str r3, [sp, #0x24]
0083b350  02 00 00 0a                                      beq #0x83b360
0083b354  57 4b eb eb                                      bl #0x30e0b8
0083b358  00 30 a0 e3                                      mov r3, #0
0083b35c  c8 30 86 e5                                      str r3, [r6, #0xc8]
0083b360  00 00 55 e3                                      cmp r5, #0
0083b364  24 00 00 0a                                      beq #0x83b3fc
0083b368  05 00 a0 e1                                      mov r0, r5
0083b36c  0e bf ff eb                                      bl #0x82afac
0083b370  00 00 50 e3                                      cmp r0, #0
0083b374  20 00 00 da                                      ble #0x83b3fc
0083b378  c8 10 86 e2                                      add r1, r6, #0xc8
0083b37c  01 20 a0 e3                                      mov r2, #1
0083b380  7c 30 a0 e3                                      mov r3, #0x7c
0083b384  05 00 a0 e1                                      mov r0, r5
0083b388  a9 c0 ff eb                                      bl #0x82b634
0083b38c  7c 30 a0 e3                                      mov r3, #0x7c
0083b390  dc 10 86 e2                                      add r1, r6, #0xdc
0083b394  03 20 a0 e3                                      mov r2, #3
0083b398  05 00 a0 e1                                      mov r0, r5
0083b39c  0c be ff eb                                      bl #0x82abd4
0083b3a0  00 c0 a0 e3                                      mov ip, #0
0083b3a4  08 30 8d e2                                      add r3, sp, #8
0083b3a8  04 c0 83 e4                                      str ip, [r3], #4
0083b3ac  04 c0 83 e4                                      str ip, [r3], #4
0083b3b0  04 c0 83 e4                                      str ip, [r3], #4
0083b3b4  04 c0 83 e4                                      str ip, [r3], #4
0083b3b8  04 c0 83 e4                                      str ip, [r3], #4
0083b3bc  28 70 8d e2                                      add r7, sp, #0x28
0083b3c0  24 c0 27 e5                                      str ip, [r7, #-0x24]!
0083b3c4  04 c0 83 e4                                      str ip, [r3], #4
0083b3c8  0c 10 a0 e1                                      mov r1, ip
0083b3cc  00 c0 83 e5                                      str ip, [r3]
0083b3d0  20 20 a0 e3                                      mov r2, #0x20
0083b3d4  07 00 a0 e1                                      mov r0, r7
0083b3d8  e1 bf ff eb                                      bl #0x82b364
0083b3dc  07 10 a0 e1                                      mov r1, r7
0083b3e0  05 20 a0 e3                                      mov r2, #5
0083b3e4  7c 30 a0 e3                                      mov r3, #0x7c
0083b3e8  05 00 a0 e1                                      mov r0, r5
0083b3ec  f8 bd ff eb                                      bl #0x82abd4
0083b3f0  07 00 a0 e1                                      mov r0, r7
0083b3f4  c9 bf ff eb                                      bl #0x82b320
0083b3f8  e4 00 86 e5                                      str r0, [r6, #0xe4]
0083b3fc  08 30 94 e7                                      ldr r3, [r4, r8]
0083b400  24 20 9d e5                                      ldr r2, [sp, #0x24]
0083b404  00 30 93 e5                                      ldr r3, [r3]
0083b408  03 00 52 e1                                      cmp r2, r3
0083b40c  01 00 00 1a                                      bne #0x83b418
0083b410  28 d0 8d e2                                      add sp, sp, #0x28
0083b414  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083b418  bc 4b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083b41c  60 97 15 00 ac 40 00 00                          .byte 0x60, 0x97, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0083b424, declared_size=508, range_size=508, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser21processUserAvatarListEPc
; demangled: GLXPlayerUser::processUserAvatarList(char*)
; decoder-mode: arm
0083b424  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083b428  e8 91 9f e5                                      ldr sb, [pc, #0x1e8]
0083b42c  e8 b1 9f e5                                      ldr fp, [pc, #0x1e8]
0083b430  b4 d0 4d e2                                      sub sp, sp, #0xb4
0083b434  09 90 8f e0                                      add sb, pc, sb
0083b438  0b 30 99 e7                                      ldr r3, [sb, fp]
0083b43c  01 70 a0 e1                                      mov r7, r1
0083b440  00 50 a0 e1                                      mov r5, r0
0083b444  00 30 93 e5                                      ldr r3, [r3]
0083b448  ac 30 8d e5                                      str r3, [sp, #0xac]
0083b44c  d4 fd ff eb                                      bl #0x83aba4
0083b450  00 00 57 e3                                      cmp r7, #0
0083b454  67 00 00 0a                                      beq #0x83b5f8
0083b458  07 00 a0 e1                                      mov r0, r7
0083b45c  d2 be ff eb                                      bl #0x82afac
0083b460  00 00 50 e3                                      cmp r0, #0
0083b464  01 30 a0 c3                                      movgt r3, #1
0083b468  14 31 85 c5                                      strgt r3, [r5, #0x114]
0083b46c  00 40 a0 c3                                      movgt r4, #0
0083b470  06 00 00 ca                                      bgt #0x83b490
0083b474  5f 00 00 ea                                      b #0x83b5f8
0083b478  d4 30 97 e1                                      ldrsb r3, [r7, r4]
0083b47c  01 40 84 e2                                      add r4, r4, #1
0083b480  7c 00 53 e3                                      cmp r3, #0x7c
0083b484  14 31 95 05                                      ldreq r3, [r5, #0x114]
0083b488  01 30 83 02                                      addeq r3, r3, #1
0083b48c  14 31 85 05                                      streq r3, [r5, #0x114]
0083b490  07 00 a0 e1                                      mov r0, r7
0083b494  c4 be ff eb                                      bl #0x82afac
0083b498  00 00 54 e1                                      cmp r4, r0
0083b49c  f5 ff ff ba                                      blt #0x83b478
0083b4a0  14 01 95 e5                                      ldr r0, [r5, #0x114]
0083b4a4  0c 60 8d e2                                      add r6, sp, #0xc
0083b4a8  8c 80 8d e2                                      add r8, sp, #0x8c
0083b4ac  00 01 a0 e1                                      lsl r0, r0, #2
0083b4b0  06 4b eb eb                                      bl #0x30e0d0
0083b4b4  14 31 95 e5                                      ldr r3, [r5, #0x114]
0083b4b8  08 01 85 e5                                      str r0, [r5, #0x108]
0083b4bc  00 40 a0 e3                                      mov r4, #0
0083b4c0  03 01 a0 e1                                      lsl r0, r3, #2
0083b4c4  01 4b eb eb                                      bl #0x30e0d0
0083b4c8  14 31 95 e5                                      ldr r3, [r5, #0x114]
0083b4cc  0c 01 85 e5                                      str r0, [r5, #0x10c]
0083b4d0  03 01 a0 e1                                      lsl r0, r3, #2
0083b4d4  fd 4a eb eb                                      bl #0x30e0d0
0083b4d8  80 20 a0 e3                                      mov r2, #0x80
0083b4dc  10 01 85 e5                                      str r0, [r5, #0x110]
0083b4e0  00 10 a0 e3                                      mov r1, #0
0083b4e4  06 00 a0 e1                                      mov r0, r6
0083b4e8  dc 4b eb eb                                      bl #0x30e460
0083b4ec  04 30 88 e2                                      add r3, r8, #4
0083b4f0  04 40 83 e4                                      str r4, [r3], #4
0083b4f4  04 40 83 e4                                      str r4, [r3], #4
0083b4f8  04 40 83 e4                                      str r4, [r3], #4
0083b4fc  14 21 95 e5                                      ldr r2, [r5, #0x114]
0083b500  04 40 83 e4                                      str r4, [r3], #4
0083b504  04 40 83 e4                                      str r4, [r3], #4
0083b508  04 40 83 e4                                      str r4, [r3], #4
0083b50c  04 00 52 e1                                      cmp r2, r4
0083b510  00 40 83 e5                                      str r4, [r3]
0083b514  8c 40 8d e5                                      str r4, [sp, #0x8c]
0083b518  36 00 00 da                                      ble #0x83b5f8
0083b51c  04 a0 a0 e1                                      mov sl, r4
0083b520  06 00 a0 e1                                      mov r0, r6
0083b524  00 10 a0 e3                                      mov r1, #0
0083b528  80 20 a0 e3                                      mov r2, #0x80
0083b52c  8c bf ff eb                                      bl #0x82b364
0083b530  04 20 a0 e1                                      mov r2, r4
0083b534  06 10 a0 e1                                      mov r1, r6
0083b538  7c 30 a0 e3                                      mov r3, #0x7c
0083b53c  07 00 a0 e1                                      mov r0, r7
0083b540  e6 bd ff eb                                      bl #0x82ace0
0083b544  08 31 95 e5                                      ldr r3, [r5, #0x108]
0083b548  20 00 a0 e3                                      mov r0, #0x20
0083b54c  04 30 8d e5                                      str r3, [sp, #4]
0083b550  de 4a eb eb                                      bl #0x30e0d0
0083b554  04 30 9d e5                                      ldr r3, [sp, #4]
0083b558  04 01 83 e7                                      str r0, [r3, r4, lsl #2]
0083b55c  0c 31 95 e5                                      ldr r3, [r5, #0x10c]
0083b560  20 00 a0 e3                                      mov r0, #0x20
0083b564  04 30 8d e5                                      str r3, [sp, #4]
0083b568  d8 4a eb eb                                      bl #0x30e0d0
0083b56c  04 30 9d e5                                      ldr r3, [sp, #4]
0083b570  0a 20 a0 e1                                      mov r2, sl
0083b574  04 01 83 e7                                      str r0, [r3, r4, lsl #2]
0083b578  10 11 95 e5                                      ldr r1, [r5, #0x110]
0083b57c  5e 30 a0 e3                                      mov r3, #0x5e
0083b580  06 00 a0 e1                                      mov r0, r6
0083b584  04 a1 81 e7                                      str sl, [r1, r4, lsl #2]
0083b588  08 11 95 e5                                      ldr r1, [r5, #0x108]
0083b58c  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
0083b590  d2 bd ff eb                                      bl #0x82ace0
0083b594  0c 11 95 e5                                      ldr r1, [r5, #0x10c]
0083b598  5e 30 a0 e3                                      mov r3, #0x5e
0083b59c  01 20 a0 e3                                      mov r2, #1
0083b5a0  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
0083b5a4  06 00 a0 e1                                      mov r0, r6
0083b5a8  cc bd ff eb                                      bl #0x82ace0
0083b5ac  08 00 a0 e1                                      mov r0, r8
0083b5b0  0a 10 a0 e1                                      mov r1, sl
0083b5b4  20 20 a0 e3                                      mov r2, #0x20
0083b5b8  69 bf ff eb                                      bl #0x82b364
0083b5bc  08 10 a0 e1                                      mov r1, r8
0083b5c0  02 20 a0 e3                                      mov r2, #2
0083b5c4  5e 30 a0 e3                                      mov r3, #0x5e
0083b5c8  06 00 a0 e1                                      mov r0, r6
0083b5cc  c3 bd ff eb                                      bl #0x82ace0
0083b5d0  10 31 95 e5                                      ldr r3, [r5, #0x110]
0083b5d4  08 00 a0 e1                                      mov r0, r8
0083b5d8  04 30 8d e5                                      str r3, [sp, #4]
0083b5dc  4f bf ff eb                                      bl #0x82b320
0083b5e0  04 30 9d e5                                      ldr r3, [sp, #4]
0083b5e4  04 01 83 e7                                      str r0, [r3, r4, lsl #2]
0083b5e8  14 31 95 e5                                      ldr r3, [r5, #0x114]
0083b5ec  01 40 84 e2                                      add r4, r4, #1
0083b5f0  04 00 53 e1                                      cmp r3, r4
0083b5f4  c9 ff ff ca                                      bgt #0x83b520
0083b5f8  0b 30 99 e7                                      ldr r3, [sb, fp]
0083b5fc  ac 20 9d e5                                      ldr r2, [sp, #0xac]
0083b600  00 30 93 e5                                      ldr r3, [r3]
0083b604  03 00 52 e1                                      cmp r2, r3
0083b608  01 00 00 1a                                      bne #0x83b614
0083b60c  b4 d0 8d e2                                      add sp, sp, #0xb4
0083b610  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083b614  3d 4b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083b618  5c 96 15 00 ac 40 00 00                          .byte 0x5c, 0x96, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0083b620, declared_size=260, range_size=260, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15processUserDataEPc
; demangled: GLXPlayerUser::processUserData(char*)
; decoder-mode: arm
0083b620  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083b624  00 50 a0 e1                                      mov r5, r0
0083b628  c0 00 90 e5                                      ldr r0, [r0, #0xc0]
0083b62c  01 40 a0 e1                                      mov r4, r1
0083b630  00 00 50 e3                                      cmp r0, #0
0083b634  02 00 00 0a                                      beq #0x83b644
0083b638  1c 4b eb eb                                      bl #0x30e2b0
0083b63c  00 30 a0 e3                                      mov r3, #0
0083b640  c0 30 85 e5                                      str r3, [r5, #0xc0]
0083b644  00 00 54 e3                                      cmp r4, #0
0083b648  28 00 00 0a                                      beq #0x83b6f0
0083b64c  04 00 a0 e1                                      mov r0, r4
0083b650  55 be ff eb                                      bl #0x82afac
0083b654  00 00 50 e3                                      cmp r0, #0
0083b658  2f 00 00 da                                      ble #0x83b71c
0083b65c  04 00 a0 e1                                      mov r0, r4
0083b660  51 be ff eb                                      bl #0x82afac
0083b664  01 60 80 e2                                      add r6, r0, #1
0083b668  06 00 a0 e1                                      mov r0, r6
0083b66c  97 4a eb eb                                      bl #0x30e0d0
0083b670  06 20 a0 e1                                      mov r2, r6
0083b674  00 70 a0 e1                                      mov r7, r0
0083b678  00 10 a0 e3                                      mov r1, #0
0083b67c  38 bf ff eb                                      bl #0x82b364
0083b680  07 10 a0 e1                                      mov r1, r7
0083b684  00 20 a0 e3                                      mov r2, #0
0083b688  7c 30 a0 e3                                      mov r3, #0x7c
0083b68c  04 00 a0 e1                                      mov r0, r4
0083b690  92 bd ff eb                                      bl #0x82ace0
0083b694  84 10 9f e5                                      ldr r1, [pc, #0x84]
0083b698  07 00 a0 e1                                      mov r0, r7
0083b69c  01 10 8f e0                                      add r1, pc, r1
0083b6a0  29 bf ff eb                                      bl #0x82b34c
0083b6a4  00 00 50 e3                                      cmp r0, #0
0083b6a8  00 80 a0 13                                      movne r8, #0
0083b6ac  10 00 00 0a                                      beq #0x83b6f4
0083b6b0  06 00 a0 e1                                      mov r0, r6
0083b6b4  85 4a eb eb                                      bl #0x30e0d0
0083b6b8  06 20 a0 e1                                      mov r2, r6
0083b6bc  c0 00 85 e5                                      str r0, [r5, #0xc0]
0083b6c0  00 10 a0 e3                                      mov r1, #0
0083b6c4  26 bf ff eb                                      bl #0x82b364
0083b6c8  04 00 a0 e1                                      mov r0, r4
0083b6cc  c0 10 95 e5                                      ldr r1, [r5, #0xc0]
0083b6d0  08 20 a0 e1                                      mov r2, r8
0083b6d4  7c 30 a0 e3                                      mov r3, #0x7c
0083b6d8  80 bd ff eb                                      bl #0x82ace0
0083b6dc  00 00 57 e3                                      cmp r7, #0
0083b6e0  02 00 00 0a                                      beq #0x83b6f0
0083b6e4  07 00 a0 e1                                      mov r0, r7
0083b6e8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0083b6ec  ef 4a eb ea                                      b #0x30e2b0
0083b6f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083b6f4  10 00 a0 e3                                      mov r0, #0x10
0083b6f8  74 4a eb eb                                      bl #0x30e0d0
0083b6fc  01 20 a0 e3                                      mov r2, #1
0083b700  00 10 a0 e1                                      mov r1, r0
0083b704  c4 00 85 e5                                      str r0, [r5, #0xc4]
0083b708  7c 30 a0 e3                                      mov r3, #0x7c
0083b70c  04 00 a0 e1                                      mov r0, r4
0083b710  72 bd ff eb                                      bl #0x82ace0
0083b714  02 80 a0 e3                                      mov r8, #2
0083b718  e4 ff ff ea                                      b #0x83b6b0
0083b71c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0083b720  b4 74 08 00                                      .byte 0xb4, 0x74, 0x08, 0x00

; FUNCTION 0x0083b724, declared_size=264, range_size=264, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser21processDownloadAvatarEPc
; demangled: GLXPlayerUser::processDownloadAvatar(char*)
; decoder-mode: arm
0083b724  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083b728  00 50 a0 e1                                      mov r5, r0
0083b72c  b8 00 90 e5                                      ldr r0, [r0, #0xb8]
0083b730  01 40 a0 e1                                      mov r4, r1
0083b734  00 00 50 e3                                      cmp r0, #0
0083b738  02 00 00 0a                                      beq #0x83b748
0083b73c  db 4a eb eb                                      bl #0x30e2b0
0083b740  00 30 a0 e3                                      mov r3, #0
0083b744  b8 30 85 e5                                      str r3, [r5, #0xb8]
0083b748  00 00 54 e3                                      cmp r4, #0
0083b74c  1f 00 00 0a                                      beq #0x83b7d0
0083b750  04 00 a0 e1                                      mov r0, r4
0083b754  14 be ff eb                                      bl #0x82afac
0083b758  00 00 50 e3                                      cmp r0, #0
0083b75c  30 00 00 da                                      ble #0x83b824
0083b760  04 00 a0 e1                                      mov r0, r4
0083b764  10 be ff eb                                      bl #0x82afac
0083b768  01 70 80 e2                                      add r7, r0, #1
0083b76c  07 00 a0 e1                                      mov r0, r7
0083b770  56 4a eb eb                                      bl #0x30e0d0
0083b774  07 20 a0 e1                                      mov r2, r7
0083b778  00 60 a0 e1                                      mov r6, r0
0083b77c  00 10 a0 e3                                      mov r1, #0
0083b780  f7 be ff eb                                      bl #0x82b364
0083b784  06 10 a0 e1                                      mov r1, r6
0083b788  00 20 a0 e3                                      mov r2, #0
0083b78c  7c 30 a0 e3                                      mov r3, #0x7c
0083b790  04 00 a0 e1                                      mov r0, r4
0083b794  51 bd ff eb                                      bl #0x82ace0
0083b798  88 10 9f e5                                      ldr r1, [pc, #0x88]
0083b79c  06 00 a0 e1                                      mov r0, r6
0083b7a0  01 10 8f e0                                      add r1, pc, r1
0083b7a4  e8 be ff eb                                      bl #0x82b34c
0083b7a8  00 80 50 e2                                      subs r8, r0, #0
0083b7ac  08 00 00 0a                                      beq #0x83b7d4
0083b7b0  06 00 a0 e1                                      mov r0, r6
0083b7b4  79 c0 ff eb                                      bl #0x82b9a0
0083b7b8  b8 00 85 e5                                      str r0, [r5, #0xb8]
0083b7bc  00 00 56 e3                                      cmp r6, #0
0083b7c0  02 00 00 0a                                      beq #0x83b7d0
0083b7c4  06 00 a0 e1                                      mov r0, r6
0083b7c8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0083b7cc  b7 4a eb ea                                      b #0x30e2b0
0083b7d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083b7d4  10 00 a0 e3                                      mov r0, #0x10
0083b7d8  3c 4a eb eb                                      bl #0x30e0d0
0083b7dc  7c 30 a0 e3                                      mov r3, #0x7c
0083b7e0  00 10 a0 e1                                      mov r1, r0
0083b7e4  c4 00 85 e5                                      str r0, [r5, #0xc4]
0083b7e8  01 20 a0 e3                                      mov r2, #1
0083b7ec  04 00 a0 e1                                      mov r0, r4
0083b7f0  3a bd ff eb                                      bl #0x82ace0
0083b7f4  07 00 a0 e1                                      mov r0, r7
0083b7f8  34 4a eb eb                                      bl #0x30e0d0
0083b7fc  08 10 a0 e1                                      mov r1, r8
0083b800  07 20 a0 e1                                      mov r2, r7
0083b804  bc 00 85 e5                                      str r0, [r5, #0xbc]
0083b808  d5 be ff eb                                      bl #0x82b364
0083b80c  04 00 a0 e1                                      mov r0, r4
0083b810  bc 10 95 e5                                      ldr r1, [r5, #0xbc]
0083b814  02 20 a0 e3                                      mov r2, #2
0083b818  7c 30 a0 e3                                      mov r3, #0x7c
0083b81c  2f bd ff eb                                      bl #0x82ace0
0083b820  e5 ff ff ea                                      b #0x83b7bc
0083b824  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0083b828  b0 73 08 00                                      .byte 0xb0, 0x73, 0x08, 0x00

; FUNCTION 0x0083b82c, declared_size=696, range_size=696, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17processUserAvatarEPc
; demangled: GLXPlayerUser::processUserAvatar(char*)
; decoder-mode: arm
0083b82c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083b830  00 50 51 e2                                      subs r5, r1, #0
0083b834  00 60 a0 e1                                      mov r6, r0
0083b838  68 00 00 0a                                      beq #0x83b9e0
0083b83c  05 00 a0 e1                                      mov r0, r5
0083b840  d9 bd ff eb                                      bl #0x82afac
0083b844  00 00 50 e3                                      cmp r0, #0
0083b848  9f 00 00 da                                      ble #0x83bacc
0083b84c  20 00 a0 e3                                      mov r0, #0x20
0083b850  1e 4a eb eb                                      bl #0x30e0d0
0083b854  20 20 a0 e3                                      mov r2, #0x20
0083b858  00 40 a0 e1                                      mov r4, r0
0083b85c  00 10 a0 e3                                      mov r1, #0
0083b860  bf be ff eb                                      bl #0x82b364
0083b864  04 10 a0 e1                                      mov r1, r4
0083b868  00 20 a0 e3                                      mov r2, #0
0083b86c  7c 30 a0 e3                                      mov r3, #0x7c
0083b870  05 00 a0 e1                                      mov r0, r5
0083b874  19 bd ff eb                                      bl #0x82ace0
0083b878  50 12 9f e5                                      ldr r1, [pc, #0x250]
0083b87c  04 00 a0 e1                                      mov r0, r4
0083b880  01 10 8f e0                                      add r1, pc, r1
0083b884  b0 be ff eb                                      bl #0x82b34c
0083b888  00 70 50 e2                                      subs r7, r0, #0
0083b88c  54 00 00 1a                                      bne #0x83b9e4
0083b890  c4 00 96 e5                                      ldr r0, [r6, #0xc4]
0083b894  00 00 50 e3                                      cmp r0, #0
0083b898  01 00 00 0a                                      beq #0x83b8a4
0083b89c  05 4a eb eb                                      bl #0x30e0b8
0083b8a0  c4 70 86 e5                                      str r7, [r6, #0xc4]
0083b8a4  10 00 a0 e3                                      mov r0, #0x10
0083b8a8  08 4a eb eb                                      bl #0x30e0d0
0083b8ac  7c 30 a0 e3                                      mov r3, #0x7c
0083b8b0  00 10 a0 e1                                      mov r1, r0
0083b8b4  c4 00 86 e5                                      str r0, [r6, #0xc4]
0083b8b8  01 20 a0 e3                                      mov r2, #1
0083b8bc  05 00 a0 e1                                      mov r0, r5
0083b8c0  06 bd ff eb                                      bl #0x82ace0
0083b8c4  04 00 a0 e1                                      mov r0, r4
0083b8c8  20 20 a0 e3                                      mov r2, #0x20
0083b8cc  00 10 a0 e3                                      mov r1, #0
0083b8d0  a3 be ff eb                                      bl #0x82b364
0083b8d4  04 10 a0 e1                                      mov r1, r4
0083b8d8  02 20 a0 e3                                      mov r2, #2
0083b8dc  7c 30 a0 e3                                      mov r3, #0x7c
0083b8e0  05 00 a0 e1                                      mov r0, r5
0083b8e4  fd bc ff eb                                      bl #0x82ace0
0083b8e8  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
0083b8ec  04 00 a0 e1                                      mov r0, r4
0083b8f0  01 10 8f e0                                      add r1, pc, r1
0083b8f4  94 be ff eb                                      bl #0x82b34c
0083b8f8  00 70 50 e2                                      subs r7, r0, #0
0083b8fc  04 70 a0 13                                      movne r7, #4
0083b900  03 80 a0 13                                      movne r8, #3
0083b904  11 00 00 1a                                      bne #0x83b950
0083b908  ac 00 96 e5                                      ldr r0, [r6, #0xac]
0083b90c  00 00 50 e3                                      cmp r0, #0
0083b910  01 00 00 0a                                      beq #0x83b91c
0083b914  e7 49 eb eb                                      bl #0x30e0b8
0083b918  ac 70 86 e5                                      str r7, [r6, #0xac]
0083b91c  20 00 a0 e3                                      mov r0, #0x20
0083b920  ea 49 eb eb                                      bl #0x30e0d0
0083b924  00 10 a0 e3                                      mov r1, #0
0083b928  ac 00 86 e5                                      str r0, [r6, #0xac]
0083b92c  20 20 a0 e3                                      mov r2, #0x20
0083b930  8b be ff eb                                      bl #0x82b364
0083b934  05 00 a0 e1                                      mov r0, r5
0083b938  ac 10 96 e5                                      ldr r1, [r6, #0xac]
0083b93c  03 20 a0 e3                                      mov r2, #3
0083b940  7c 30 a0 e3                                      mov r3, #0x7c
0083b944  e5 bc ff eb                                      bl #0x82ace0
0083b948  05 70 a0 e3                                      mov r7, #5
0083b94c  04 80 a0 e3                                      mov r8, #4
0083b950  04 00 a0 e1                                      mov r0, r4
0083b954  00 10 a0 e3                                      mov r1, #0
0083b958  20 20 a0 e3                                      mov r2, #0x20
0083b95c  80 be ff eb                                      bl #0x82b364
0083b960  08 20 a0 e1                                      mov r2, r8
0083b964  04 10 a0 e1                                      mov r1, r4
0083b968  7c 30 a0 e3                                      mov r3, #0x7c
0083b96c  05 00 a0 e1                                      mov r0, r5
0083b970  da bc ff eb                                      bl #0x82ace0
0083b974  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
0083b978  04 00 a0 e1                                      mov r0, r4
0083b97c  01 10 8f e0                                      add r1, pc, r1
0083b980  71 be ff eb                                      bl #0x82b34c
0083b984  00 80 50 e2                                      subs r8, r0, #0
0083b988  0f 00 00 1a                                      bne #0x83b9cc
0083b98c  b4 00 96 e5                                      ldr r0, [r6, #0xb4]
0083b990  00 00 50 e3                                      cmp r0, #0
0083b994  01 00 00 0a                                      beq #0x83b9a0
0083b998  c6 49 eb eb                                      bl #0x30e0b8
0083b99c  b4 80 86 e5                                      str r8, [r6, #0xb4]
0083b9a0  20 00 a0 e3                                      mov r0, #0x20
0083b9a4  c9 49 eb eb                                      bl #0x30e0d0
0083b9a8  00 10 a0 e3                                      mov r1, #0
0083b9ac  b4 00 86 e5                                      str r0, [r6, #0xb4]
0083b9b0  20 20 a0 e3                                      mov r2, #0x20
0083b9b4  6a be ff eb                                      bl #0x82b364
0083b9b8  05 00 a0 e1                                      mov r0, r5
0083b9bc  b4 10 96 e5                                      ldr r1, [r6, #0xb4]
0083b9c0  07 20 a0 e1                                      mov r2, r7
0083b9c4  7c 30 a0 e3                                      mov r3, #0x7c
0083b9c8  c4 bc ff eb                                      bl #0x82ace0
0083b9cc  00 00 54 e3                                      cmp r4, #0
0083b9d0  02 00 00 0a                                      beq #0x83b9e0
0083b9d4  04 00 a0 e1                                      mov r0, r4
0083b9d8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0083b9dc  33 4a eb ea                                      b #0x30e2b0
0083b9e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083b9e4  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0083b9e8  04 00 a0 e1                                      mov r0, r4
0083b9ec  01 10 8f e0                                      add r1, pc, r1
0083b9f0  55 be ff eb                                      bl #0x82b34c
0083b9f4  00 70 50 e2                                      subs r7, r0, #0
0083b9f8  02 70 a0 13                                      movne r7, #2
0083b9fc  01 80 a0 13                                      movne r8, #1
0083ba00  11 00 00 1a                                      bne #0x83ba4c
0083ba04  a8 00 96 e5                                      ldr r0, [r6, #0xa8]
0083ba08  00 00 50 e3                                      cmp r0, #0
0083ba0c  01 00 00 0a                                      beq #0x83ba18
0083ba10  a8 49 eb eb                                      bl #0x30e0b8
0083ba14  a8 70 86 e5                                      str r7, [r6, #0xa8]
0083ba18  20 00 a0 e3                                      mov r0, #0x20
0083ba1c  ab 49 eb eb                                      bl #0x30e0d0
0083ba20  00 10 a0 e3                                      mov r1, #0
0083ba24  a8 00 86 e5                                      str r0, [r6, #0xa8]
0083ba28  20 20 a0 e3                                      mov r2, #0x20
0083ba2c  4c be ff eb                                      bl #0x82b364
0083ba30  05 00 a0 e1                                      mov r0, r5
0083ba34  a8 10 96 e5                                      ldr r1, [r6, #0xa8]
0083ba38  01 20 a0 e3                                      mov r2, #1
0083ba3c  7c 30 a0 e3                                      mov r3, #0x7c
0083ba40  a6 bc ff eb                                      bl #0x82ace0
0083ba44  03 70 a0 e3                                      mov r7, #3
0083ba48  02 80 a0 e3                                      mov r8, #2
0083ba4c  04 00 a0 e1                                      mov r0, r4
0083ba50  00 10 a0 e3                                      mov r1, #0
0083ba54  20 20 a0 e3                                      mov r2, #0x20
0083ba58  41 be ff eb                                      bl #0x82b364
0083ba5c  08 20 a0 e1                                      mov r2, r8
0083ba60  04 10 a0 e1                                      mov r1, r4
0083ba64  7c 30 a0 e3                                      mov r3, #0x7c
0083ba68  05 00 a0 e1                                      mov r0, r5
0083ba6c  9b bc ff eb                                      bl #0x82ace0
0083ba70  68 10 9f e5                                      ldr r1, [pc, #0x68]
0083ba74  04 00 a0 e1                                      mov r0, r4
0083ba78  01 10 8f e0                                      add r1, pc, r1
0083ba7c  32 be ff eb                                      bl #0x82b34c
0083ba80  00 80 50 e2                                      subs r8, r0, #0
0083ba84  d0 ff ff 1a                                      bne #0x83b9cc
0083ba88  b0 00 96 e5                                      ldr r0, [r6, #0xb0]
0083ba8c  00 00 50 e3                                      cmp r0, #0
0083ba90  01 00 00 0a                                      beq #0x83ba9c
0083ba94  87 49 eb eb                                      bl #0x30e0b8
0083ba98  b0 80 86 e5                                      str r8, [r6, #0xb0]
0083ba9c  20 00 a0 e3                                      mov r0, #0x20
0083baa0  8a 49 eb eb                                      bl #0x30e0d0
0083baa4  00 10 a0 e3                                      mov r1, #0
0083baa8  b0 00 86 e5                                      str r0, [r6, #0xb0]
0083baac  20 20 a0 e3                                      mov r2, #0x20
0083bab0  2b be ff eb                                      bl #0x82b364
0083bab4  05 00 a0 e1                                      mov r0, r5
0083bab8  b0 10 96 e5                                      ldr r1, [r6, #0xb0]
0083babc  07 20 a0 e1                                      mov r2, r7
0083bac0  7c 30 a0 e3                                      mov r3, #0x7c
0083bac4  85 bc ff eb                                      bl #0x82ace0
0083bac8  bf ff ff ea                                      b #0x83b9cc
0083bacc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0083bad0  d0 72 08 00 00 b4 0a 00 b4 a9 0a 00 04 b3 0a 00  .byte 0xd0, 0x72, 0x08, 0x00, 0x00, 0xb4, 0x0a, 0x00, 0xb4, 0xa9, 0x0a, 0x00, 0x04, 0xb3, 0x0a, 0x00
0083bae0  b8 a8 0a 00                                      .byte 0xb8, 0xa8, 0x0a, 0x00

; FUNCTION 0x0083bae4, declared_size=268, range_size=268, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser20processUserBestScoreEPc
; demangled: GLXPlayerUser::processUserBestScore(char*)
; decoder-mode: arm
0083bae4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083bae8  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
0083baec  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
0083baf0  42 df 4d e2                                      sub sp, sp, #0x108
0083baf4  04 40 8f e0                                      add r4, pc, r4
0083baf8  05 30 94 e7                                      ldr r3, [r4, r5]
0083bafc  00 70 51 e2                                      subs r7, r1, #0
0083bb00  00 80 a0 e1                                      mov r8, r0
0083bb04  00 30 93 e5                                      ldr r3, [r3]
0083bb08  04 31 8d e5                                      str r3, [sp, #0x104]
0083bb0c  1b 00 00 0a                                      beq #0x83bb80
0083bb10  07 00 a0 e1                                      mov r0, r7
0083bb14  24 bd ff eb                                      bl #0x82afac
0083bb18  00 00 50 e3                                      cmp r0, #0
0083bb1c  17 00 00 da                                      ble #0x83bb80
0083bb20  04 60 8d e2                                      add r6, sp, #4
0083bb24  01 2c a0 e3                                      mov r2, #0x100
0083bb28  00 10 a0 e3                                      mov r1, #0
0083bb2c  06 00 a0 e1                                      mov r0, r6
0083bb30  4a 4a eb eb                                      bl #0x30e460
0083bb34  00 20 a0 e3                                      mov r2, #0
0083bb38  06 10 a0 e1                                      mov r1, r6
0083bb3c  7c 30 a0 e3                                      mov r3, #0x7c
0083bb40  07 00 a0 e1                                      mov r0, r7
0083bb44  65 bc ff eb                                      bl #0x82ace0
0083bb48  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0083bb4c  06 00 a0 e1                                      mov r0, r6
0083bb50  01 10 8f e0                                      add r1, pc, r1
0083bb54  fc bd ff eb                                      bl #0x82b34c
0083bb58  00 00 50 e3                                      cmp r0, #0
0083bb5c  00 20 a0 13                                      movne r2, #0
0083bb60  0d 00 00 0a                                      beq #0x83bb9c
0083bb64  06 10 a0 e1                                      mov r1, r6
0083bb68  7c 30 a0 e3                                      mov r3, #0x7c
0083bb6c  07 00 a0 e1                                      mov r0, r7
0083bb70  5a bc ff eb                                      bl #0x82ace0
0083bb74  06 00 a0 e1                                      mov r0, r6
0083bb78  e8 bd ff eb                                      bl #0x82b320
0083bb7c  a4 00 88 e5                                      str r0, [r8, #0xa4]
0083bb80  05 30 94 e7                                      ldr r3, [r4, r5]
0083bb84  04 21 9d e5                                      ldr r2, [sp, #0x104]
0083bb88  00 30 93 e5                                      ldr r3, [r3]
0083bb8c  03 00 52 e1                                      cmp r2, r3
0083bb90  12 00 00 1a                                      bne #0x83bbe0
0083bb94  42 df 8d e2                                      add sp, sp, #0x108
0083bb98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083bb9c  10 00 a0 e3                                      mov r0, #0x10
0083bba0  4a 49 eb eb                                      bl #0x30e0d0
0083bba4  01 20 a0 e3                                      mov r2, #1
0083bba8  00 10 a0 e1                                      mov r1, r0
0083bbac  c4 00 88 e5                                      str r0, [r8, #0xc4]
0083bbb0  7c 30 a0 e3                                      mov r3, #0x7c
0083bbb4  07 00 a0 e1                                      mov r0, r7
0083bbb8  48 bc ff eb                                      bl #0x82ace0
0083bbbc  02 20 a0 e3                                      mov r2, #2
0083bbc0  06 10 a0 e1                                      mov r1, r6
0083bbc4  7c 30 a0 e3                                      mov r3, #0x7c
0083bbc8  07 00 a0 e1                                      mov r0, r7
0083bbcc  43 bc ff eb                                      bl #0x82ace0
0083bbd0  06 00 a0 e1                                      mov r0, r6
0083bbd4  d1 bd ff eb                                      bl #0x82b320
0083bbd8  a4 00 88 e5                                      str r0, [r8, #0xa4]
0083bbdc  e7 ff ff ea                                      b #0x83bb80
0083bbe0  ca 49 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083bbe4  9c 8f 15 00 ac 40 00 00 00 70 08 00              .byte 0x9c, 0x8f, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x70, 0x08, 0x00

; FUNCTION 0x0083bbf0, declared_size=1104, range_size=1104, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser22processUserInformationEPc
; demangled: GLXPlayerUser::processUserInformation(char*)
; decoder-mode: arm
0083bbf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083bbf4  38 64 9f e5                                      ldr r6, [pc, #0x438]
0083bbf8  38 94 9f e5                                      ldr sb, [pc, #0x438]
0083bbfc  59 df 4d e2                                      sub sp, sp, #0x164
0083bc00  06 60 8f e0                                      add r6, pc, r6
0083bc04  09 30 96 e7                                      ldr r3, [r6, sb]
0083bc08  01 40 a0 e1                                      mov r4, r1
0083bc0c  00 50 a0 e1                                      mov r5, r0
0083bc10  00 30 93 e5                                      ldr r3, [r3]
0083bc14  5c 31 8d e5                                      str r3, [sp, #0x15c]
0083bc18  87 fb ff eb                                      bl #0x83aa3c
0083bc1c  00 00 54 e3                                      cmp r4, #0
0083bc20  d6 00 00 0a                                      beq #0x83bf80
0083bc24  04 00 a0 e1                                      mov r0, r4
0083bc28  df bc ff eb                                      bl #0x82afac
0083bc2c  00 00 50 e3                                      cmp r0, #0
0083bc30  d2 00 00 da                                      ble #0x83bf80
0083bc34  3c a0 8d e2                                      add sl, sp, #0x3c
0083bc38  01 2c a0 e3                                      mov r2, #0x100
0083bc3c  00 10 a0 e3                                      mov r1, #0
0083bc40  0a 00 a0 e1                                      mov r0, sl
0083bc44  05 4a eb eb                                      bl #0x30e460
0083bc48  0a 10 a0 e1                                      mov r1, sl
0083bc4c  00 20 a0 e3                                      mov r2, #0
0083bc50  7c 30 a0 e3                                      mov r3, #0x7c
0083bc54  04 00 a0 e1                                      mov r0, r4
0083bc58  20 bc ff eb                                      bl #0x82ace0
0083bc5c  d8 13 9f e5                                      ldr r1, [pc, #0x3d8]
0083bc60  0a 00 a0 e1                                      mov r0, sl
0083bc64  01 10 8f e0                                      add r1, pc, r1
0083bc68  b7 bd ff eb                                      bl #0x82b34c
0083bc6c  00 00 50 e3                                      cmp r0, #0
0083bc70  c9 00 00 0a                                      beq #0x83bf9c
0083bc74  1b 30 a0 e3                                      mov r3, #0x1b
0083bc78  0c 30 8d e5                                      str r3, [sp, #0xc]
0083bc7c  19 30 a0 e3                                      mov r3, #0x19
0083bc80  04 30 8d e5                                      str r3, [sp, #4]
0083bc84  17 30 a0 e3                                      mov r3, #0x17
0083bc88  34 30 8d e5                                      str r3, [sp, #0x34]
0083bc8c  15 30 a0 e3                                      mov r3, #0x15
0083bc90  28 30 8d e5                                      str r3, [sp, #0x28]
0083bc94  13 30 a0 e3                                      mov r3, #0x13
0083bc98  1c 30 8d e5                                      str r3, [sp, #0x1c]
0083bc9c  11 30 a0 e3                                      mov r3, #0x11
0083bca0  20 30 8d e5                                      str r3, [sp, #0x20]
0083bca4  0f 30 a0 e3                                      mov r3, #0xf
0083bca8  18 30 8d e5                                      str r3, [sp, #0x18]
0083bcac  0d 30 a0 e3                                      mov r3, #0xd
0083bcb0  14 30 8d e5                                      str r3, [sp, #0x14]
0083bcb4  0b 30 a0 e3                                      mov r3, #0xb
0083bcb8  30 30 8d e5                                      str r3, [sp, #0x30]
0083bcbc  09 30 a0 e3                                      mov r3, #9
0083bcc0  2c 30 8d e5                                      str r3, [sp, #0x2c]
0083bcc4  07 30 a0 e3                                      mov r3, #7
0083bcc8  24 30 8d e5                                      str r3, [sp, #0x24]
0083bccc  05 30 a0 e3                                      mov r3, #5
0083bcd0  10 30 8d e5                                      str r3, [sp, #0x10]
0083bcd4  03 30 a0 e3                                      mov r3, #3
0083bcd8  1d c0 a0 e3                                      mov ip, #0x1d
0083bcdc  08 30 8d e5                                      str r3, [sp, #8]
0083bce0  01 b0 a0 e3                                      mov fp, #1
0083bce4  00 70 a0 e3                                      mov r7, #0
0083bce8  05 3d 8d e2                                      add r3, sp, #0x140
0083bcec  04 70 83 e4                                      str r7, [r3], #4
0083bcf0  04 70 83 e4                                      str r7, [r3], #4
0083bcf4  04 70 83 e4                                      str r7, [r3], #4
0083bcf8  04 70 83 e4                                      str r7, [r3], #4
0083bcfc  04 70 83 e4                                      str r7, [r3], #4
0083bd00  04 70 83 e4                                      str r7, [r3], #4
0083bd04  16 8e 8d e2                                      add r8, sp, #0x160
0083bd08  00 70 83 e5                                      str r7, [r3]
0083bd0c  10 00 a0 e3                                      mov r0, #0x10
0083bd10  24 70 28 e5                                      str r7, [r8, #-0x24]!
0083bd14  00 c0 8d e5                                      str ip, [sp]
0083bd18  ec 48 eb eb                                      bl #0x30e0d0
0083bd1c  0b 20 a0 e1                                      mov r2, fp
0083bd20  00 10 a0 e1                                      mov r1, r0
0083bd24  7c 30 a0 e3                                      mov r3, #0x7c
0083bd28  40 00 85 e5                                      str r0, [r5, #0x40]
0083bd2c  04 00 a0 e1                                      mov r0, r4
0083bd30  ea bb ff eb                                      bl #0x82ace0
0083bd34  10 00 a0 e3                                      mov r0, #0x10
0083bd38  e4 48 eb eb                                      bl #0x30e0d0
0083bd3c  08 20 9d e5                                      ldr r2, [sp, #8]
0083bd40  00 10 a0 e1                                      mov r1, r0
0083bd44  7c 30 a0 e3                                      mov r3, #0x7c
0083bd48  44 00 85 e5                                      str r0, [r5, #0x44]
0083bd4c  04 00 a0 e1                                      mov r0, r4
0083bd50  e2 bb ff eb                                      bl #0x82ace0
0083bd54  80 00 a0 e3                                      mov r0, #0x80
0083bd58  dc 48 eb eb                                      bl #0x30e0d0
0083bd5c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0083bd60  00 10 a0 e1                                      mov r1, r0
0083bd64  7c 30 a0 e3                                      mov r3, #0x7c
0083bd68  4c 00 85 e5                                      str r0, [r5, #0x4c]
0083bd6c  04 00 a0 e1                                      mov r0, r4
0083bd70  da bb ff eb                                      bl #0x82ace0
0083bd74  0a 00 a0 e1                                      mov r0, sl
0083bd78  07 10 a0 e1                                      mov r1, r7
0083bd7c  01 2c a0 e3                                      mov r2, #0x100
0083bd80  77 bd ff eb                                      bl #0x82b364
0083bd84  0a 10 a0 e1                                      mov r1, sl
0083bd88  24 20 9d e5                                      ldr r2, [sp, #0x24]
0083bd8c  7c 30 a0 e3                                      mov r3, #0x7c
0083bd90  04 00 a0 e1                                      mov r0, r4
0083bd94  d1 bb ff eb                                      bl #0x82ace0
0083bd98  0a 00 a0 e1                                      mov r0, sl
0083bd9c  5f bd ff eb                                      bl #0x82b320
0083bda0  07 00 50 e0                                      subs r0, r0, r7
0083bda4  01 00 a0 13                                      movne r0, #1
0083bda8  50 00 c5 e5                                      strb r0, [r5, #0x50]
0083bdac  80 00 a0 e3                                      mov r0, #0x80
0083bdb0  c6 48 eb eb                                      bl #0x30e0d0
0083bdb4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0083bdb8  00 10 a0 e1                                      mov r1, r0
0083bdbc  7c 30 a0 e3                                      mov r3, #0x7c
0083bdc0  54 00 85 e5                                      str r0, [r5, #0x54]
0083bdc4  04 00 a0 e1                                      mov r0, r4
0083bdc8  c4 bb ff eb                                      bl #0x82ace0
0083bdcc  80 00 a0 e3                                      mov r0, #0x80
0083bdd0  be 48 eb eb                                      bl #0x30e0d0
0083bdd4  07 10 a0 e1                                      mov r1, r7
0083bdd8  a8 00 85 e5                                      str r0, [r5, #0xa8]
0083bddc  80 20 a0 e3                                      mov r2, #0x80
0083bde0  5f bd ff eb                                      bl #0x82b364
0083bde4  7c 30 a0 e3                                      mov r3, #0x7c
0083bde8  30 20 9d e5                                      ldr r2, [sp, #0x30]
0083bdec  a8 10 95 e5                                      ldr r1, [r5, #0xa8]
0083bdf0  04 00 a0 e1                                      mov r0, r4
0083bdf4  b9 bb ff eb                                      bl #0x82ace0
0083bdf8  80 00 a0 e3                                      mov r0, #0x80
0083bdfc  b3 48 eb eb                                      bl #0x30e0d0
0083be00  07 10 a0 e1                                      mov r1, r7
0083be04  b0 00 85 e5                                      str r0, [r5, #0xb0]
0083be08  80 20 a0 e3                                      mov r2, #0x80
0083be0c  54 bd ff eb                                      bl #0x82b364
0083be10  7c 30 a0 e3                                      mov r3, #0x7c
0083be14  14 20 9d e5                                      ldr r2, [sp, #0x14]
0083be18  b0 10 95 e5                                      ldr r1, [r5, #0xb0]
0083be1c  04 00 a0 e1                                      mov r0, r4
0083be20  ae bb ff eb                                      bl #0x82ace0
0083be24  08 00 a0 e1                                      mov r0, r8
0083be28  07 10 a0 e1                                      mov r1, r7
0083be2c  20 20 a0 e3                                      mov r2, #0x20
0083be30  4b bd ff eb                                      bl #0x82b364
0083be34  18 20 9d e5                                      ldr r2, [sp, #0x18]
0083be38  7c 30 a0 e3                                      mov r3, #0x7c
0083be3c  08 10 a0 e1                                      mov r1, r8
0083be40  04 00 a0 e1                                      mov r0, r4
0083be44  a5 bb ff eb                                      bl #0x82ace0
0083be48  08 00 a0 e1                                      mov r0, r8
0083be4c  33 bd ff eb                                      bl #0x82b320
0083be50  b6 4b eb eb                                      bl #0x30ed30
0083be54  f0 09 c5 e1                                      strd r0, r1, [r5, #0x90]
0083be58  80 00 a0 e3                                      mov r0, #0x80
0083be5c  9b 48 eb eb                                      bl #0x30e0d0
0083be60  20 20 9d e5                                      ldr r2, [sp, #0x20]
0083be64  00 10 a0 e1                                      mov r1, r0
0083be68  7c 30 a0 e3                                      mov r3, #0x7c
0083be6c  58 00 85 e5                                      str r0, [r5, #0x58]
0083be70  04 00 a0 e1                                      mov r0, r4
0083be74  99 bb ff eb                                      bl #0x82ace0
0083be78  80 00 a0 e3                                      mov r0, #0x80
0083be7c  93 48 eb eb                                      bl #0x30e0d0
0083be80  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0083be84  00 10 a0 e1                                      mov r1, r0
0083be88  7c 30 a0 e3                                      mov r3, #0x7c
0083be8c  5c 00 85 e5                                      str r0, [r5, #0x5c]
0083be90  04 00 a0 e1                                      mov r0, r4
0083be94  91 bb ff eb                                      bl #0x82ace0
0083be98  0a 00 a0 e1                                      mov r0, sl
0083be9c  07 10 a0 e1                                      mov r1, r7
0083bea0  01 2c a0 e3                                      mov r2, #0x100
0083bea4  2e bd ff eb                                      bl #0x82b364
0083bea8  0a 10 a0 e1                                      mov r1, sl
0083beac  28 20 9d e5                                      ldr r2, [sp, #0x28]
0083beb0  7c 30 a0 e3                                      mov r3, #0x7c
0083beb4  04 00 a0 e1                                      mov r0, r4
0083beb8  88 bb ff eb                                      bl #0x82ace0
0083bebc  0a 00 a0 e1                                      mov r0, sl
0083bec0  16 bd ff eb                                      bl #0x82b320
0083bec4  07 00 50 e0                                      subs r0, r0, r7
0083bec8  01 00 a0 13                                      movne r0, #1
0083becc  60 00 c5 e5                                      strb r0, [r5, #0x60]
0083bed0  80 00 a0 e3                                      mov r0, #0x80
0083bed4  7d 48 eb eb                                      bl #0x30e0d0
0083bed8  34 20 9d e5                                      ldr r2, [sp, #0x34]
0083bedc  00 10 a0 e1                                      mov r1, r0
0083bee0  7c 30 a0 e3                                      mov r3, #0x7c
0083bee4  64 00 85 e5                                      str r0, [r5, #0x64]
0083bee8  04 00 a0 e1                                      mov r0, r4
0083beec  7b bb ff eb                                      bl #0x82ace0
0083bef0  08 00 a0 e1                                      mov r0, r8
0083bef4  07 10 a0 e1                                      mov r1, r7
0083bef8  20 20 a0 e3                                      mov r2, #0x20
0083befc  18 bd ff eb                                      bl #0x82b364
0083bf00  7c 30 a0 e3                                      mov r3, #0x7c
0083bf04  08 10 a0 e1                                      mov r1, r8
0083bf08  04 20 9d e5                                      ldr r2, [sp, #4]
0083bf0c  04 00 a0 e1                                      mov r0, r4
0083bf10  72 bb ff eb                                      bl #0x82ace0
0083bf14  08 00 a0 e1                                      mov r0, r8
0083bf18  00 bd ff eb                                      bl #0x82b320
0083bf1c  07 10 a0 e1                                      mov r1, r7
0083bf20  68 00 85 e5                                      str r0, [r5, #0x68]
0083bf24  20 20 a0 e3                                      mov r2, #0x20
0083bf28  08 00 a0 e1                                      mov r0, r8
0083bf2c  0c bd ff eb                                      bl #0x82b364
0083bf30  7c 30 a0 e3                                      mov r3, #0x7c
0083bf34  08 10 a0 e1                                      mov r1, r8
0083bf38  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0083bf3c  04 00 a0 e1                                      mov r0, r4
0083bf40  66 bb ff eb                                      bl #0x82ace0
0083bf44  08 00 a0 e1                                      mov r0, r8
0083bf48  f4 bc ff eb                                      bl #0x82b320
0083bf4c  6c 00 85 e5                                      str r0, [r5, #0x6c]
0083bf50  01 0c a0 e3                                      mov r0, #0x100
0083bf54  5d 48 eb eb                                      bl #0x30e0d0
0083bf58  07 10 a0 e1                                      mov r1, r7
0083bf5c  24 01 85 e5                                      str r0, [r5, #0x124]
0083bf60  01 2c a0 e3                                      mov r2, #0x100
0083bf64  fe bc ff eb                                      bl #0x82b364
0083bf68  00 c0 9d e5                                      ldr ip, [sp]
0083bf6c  04 00 a0 e1                                      mov r0, r4
0083bf70  24 11 95 e5                                      ldr r1, [r5, #0x124]
0083bf74  0c 20 a0 e1                                      mov r2, ip
0083bf78  7c 30 a0 e3                                      mov r3, #0x7c
0083bf7c  57 bb ff eb                                      bl #0x82ace0
0083bf80  09 30 96 e7                                      ldr r3, [r6, sb]
0083bf84  5c 21 9d e5                                      ldr r2, [sp, #0x15c]
0083bf88  00 30 93 e5                                      ldr r3, [r3]
0083bf8c  03 00 52 e1                                      cmp r2, r3
0083bf90  26 00 00 1a                                      bne #0x83c030
0083bf94  59 df 8d e2                                      add sp, sp, #0x164
0083bf98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083bf9c  10 00 a0 e3                                      mov r0, #0x10
0083bfa0  4a 48 eb eb                                      bl #0x30e0d0
0083bfa4  7c 30 a0 e3                                      mov r3, #0x7c
0083bfa8  00 10 a0 e1                                      mov r1, r0
0083bfac  c4 00 85 e5                                      str r0, [r5, #0xc4]
0083bfb0  01 20 a0 e3                                      mov r2, #1
0083bfb4  04 00 a0 e1                                      mov r0, r4
0083bfb8  48 bb ff eb                                      bl #0x82ace0
0083bfbc  1d 30 a0 e3                                      mov r3, #0x1d
0083bfc0  0c 30 8d e5                                      str r3, [sp, #0xc]
0083bfc4  1b 30 a0 e3                                      mov r3, #0x1b
0083bfc8  04 30 8d e5                                      str r3, [sp, #4]
0083bfcc  19 30 a0 e3                                      mov r3, #0x19
0083bfd0  34 30 8d e5                                      str r3, [sp, #0x34]
0083bfd4  17 30 a0 e3                                      mov r3, #0x17
0083bfd8  28 30 8d e5                                      str r3, [sp, #0x28]
0083bfdc  15 30 a0 e3                                      mov r3, #0x15
0083bfe0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0083bfe4  13 30 a0 e3                                      mov r3, #0x13
0083bfe8  20 30 8d e5                                      str r3, [sp, #0x20]
0083bfec  11 30 a0 e3                                      mov r3, #0x11
0083bff0  18 30 8d e5                                      str r3, [sp, #0x18]
0083bff4  0f 30 a0 e3                                      mov r3, #0xf
0083bff8  14 30 8d e5                                      str r3, [sp, #0x14]
0083bffc  0d 30 a0 e3                                      mov r3, #0xd
0083c000  30 30 8d e5                                      str r3, [sp, #0x30]
0083c004  0b 30 a0 e3                                      mov r3, #0xb
0083c008  2c 30 8d e5                                      str r3, [sp, #0x2c]
0083c00c  09 30 a0 e3                                      mov r3, #9
0083c010  24 30 8d e5                                      str r3, [sp, #0x24]
0083c014  07 30 a0 e3                                      mov r3, #7
0083c018  10 30 8d e5                                      str r3, [sp, #0x10]
0083c01c  05 30 a0 e3                                      mov r3, #5
0083c020  1f c0 a0 e3                                      mov ip, #0x1f
0083c024  08 30 8d e5                                      str r3, [sp, #8]
0083c028  03 b0 a0 e3                                      mov fp, #3
0083c02c  2c ff ff ea                                      b #0x83bce4
0083c030  b6 48 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083c034  90 8e 15 00 ac 40 00 00 ec 6e 08 00              .byte 0x90, 0x8e, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xec, 0x6e, 0x08, 0x00

; FUNCTION 0x0083c040, declared_size=268, range_size=268, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17processUserTrophyEPc
; demangled: GLXPlayerUser::processUserTrophy(char*)
; decoder-mode: arm
0083c040  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083c044  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
0083c048  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
0083c04c  42 df 4d e2                                      sub sp, sp, #0x108
0083c050  04 40 8f e0                                      add r4, pc, r4
0083c054  05 30 94 e7                                      ldr r3, [r4, r5]
0083c058  00 70 51 e2                                      subs r7, r1, #0
0083c05c  00 80 a0 e1                                      mov r8, r0
0083c060  00 30 93 e5                                      ldr r3, [r3]
0083c064  04 31 8d e5                                      str r3, [sp, #0x104]
0083c068  1b 00 00 0a                                      beq #0x83c0dc
0083c06c  07 00 a0 e1                                      mov r0, r7
0083c070  cd bb ff eb                                      bl #0x82afac
0083c074  00 00 50 e3                                      cmp r0, #0
0083c078  17 00 00 da                                      ble #0x83c0dc
0083c07c  04 60 8d e2                                      add r6, sp, #4
0083c080  01 2c a0 e3                                      mov r2, #0x100
0083c084  00 10 a0 e3                                      mov r1, #0
0083c088  06 00 a0 e1                                      mov r0, r6
0083c08c  f3 48 eb eb                                      bl #0x30e460
0083c090  00 20 a0 e3                                      mov r2, #0
0083c094  06 10 a0 e1                                      mov r1, r6
0083c098  7c 30 a0 e3                                      mov r3, #0x7c
0083c09c  07 00 a0 e1                                      mov r0, r7
0083c0a0  0e bb ff eb                                      bl #0x82ace0
0083c0a4  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0083c0a8  06 00 a0 e1                                      mov r0, r6
0083c0ac  01 10 8f e0                                      add r1, pc, r1
0083c0b0  a5 bc ff eb                                      bl #0x82b34c
0083c0b4  00 00 50 e3                                      cmp r0, #0
0083c0b8  00 20 a0 13                                      movne r2, #0
0083c0bc  0d 00 00 0a                                      beq #0x83c0f8
0083c0c0  06 10 a0 e1                                      mov r1, r6
0083c0c4  7c 30 a0 e3                                      mov r3, #0x7c
0083c0c8  07 00 a0 e1                                      mov r0, r7
0083c0cc  03 bb ff eb                                      bl #0x82ace0
0083c0d0  06 00 a0 e1                                      mov r0, r6
0083c0d4  91 bc ff eb                                      bl #0x82b320
0083c0d8  a0 00 88 e5                                      str r0, [r8, #0xa0]
0083c0dc  05 30 94 e7                                      ldr r3, [r4, r5]
0083c0e0  04 21 9d e5                                      ldr r2, [sp, #0x104]
0083c0e4  00 30 93 e5                                      ldr r3, [r3]
0083c0e8  03 00 52 e1                                      cmp r2, r3
0083c0ec  12 00 00 1a                                      bne #0x83c13c
0083c0f0  42 df 8d e2                                      add sp, sp, #0x108
0083c0f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083c0f8  10 00 a0 e3                                      mov r0, #0x10
0083c0fc  f3 47 eb eb                                      bl #0x30e0d0
0083c100  01 20 a0 e3                                      mov r2, #1
0083c104  00 10 a0 e1                                      mov r1, r0
0083c108  c4 00 88 e5                                      str r0, [r8, #0xc4]
0083c10c  7c 30 a0 e3                                      mov r3, #0x7c
0083c110  07 00 a0 e1                                      mov r0, r7
0083c114  f1 ba ff eb                                      bl #0x82ace0
0083c118  02 20 a0 e3                                      mov r2, #2
0083c11c  06 10 a0 e1                                      mov r1, r6
0083c120  7c 30 a0 e3                                      mov r3, #0x7c
0083c124  07 00 a0 e1                                      mov r0, r7
0083c128  ec ba ff eb                                      bl #0x82ace0
0083c12c  06 00 a0 e1                                      mov r0, r6
0083c130  7a bc ff eb                                      bl #0x82b320
0083c134  a0 00 88 e5                                      str r0, [r8, #0xa0]
0083c138  e7 ff ff ea                                      b #0x83c0dc
0083c13c  73 48 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083c140  40 8a 15 00 ac 40 00 00 a4 6a 08 00              .byte 0x40, 0x8a, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0x6a, 0x08, 0x00

; FUNCTION 0x0083c14c, declared_size=824, range_size=824, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser16processUserStateEPc
; demangled: GLXPlayerUser::processUserState(char*)
; decoder-mode: arm
0083c14c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083c150  0c 43 9f e5                                      ldr r4, [pc, #0x30c]
0083c154  0c 83 9f e5                                      ldr r8, [pc, #0x30c]
0083c158  45 df 4d e2                                      sub sp, sp, #0x114
0083c15c  04 40 8f e0                                      add r4, pc, r4
0083c160  08 30 94 e7                                      ldr r3, [r4, r8]
0083c164  01 60 a0 e1                                      mov r6, r1
0083c168  00 a0 a0 e1                                      mov sl, r0
0083c16c  00 30 93 e5                                      ldr r3, [r3]
0083c170  0c 31 8d e5                                      str r3, [sp, #0x10c]
0083c174  c7 fa ff eb                                      bl #0x83ac98
0083c178  00 00 56 e3                                      cmp r6, #0
0083c17c  6e 00 00 0a                                      beq #0x83c33c
0083c180  06 00 a0 e1                                      mov r0, r6
0083c184  88 bb ff eb                                      bl #0x82afac
0083c188  00 00 50 e3                                      cmp r0, #0
0083c18c  6a 00 00 da                                      ble #0x83c33c
0083c190  0c 50 8d e2                                      add r5, sp, #0xc
0083c194  01 2c a0 e3                                      mov r2, #0x100
0083c198  00 10 a0 e3                                      mov r1, #0
0083c19c  05 00 a0 e1                                      mov r0, r5
0083c1a0  ae 48 eb eb                                      bl #0x30e460
0083c1a4  05 10 a0 e1                                      mov r1, r5
0083c1a8  00 20 a0 e3                                      mov r2, #0
0083c1ac  7c 30 a0 e3                                      mov r3, #0x7c
0083c1b0  06 00 a0 e1                                      mov r0, r6
0083c1b4  c9 ba ff eb                                      bl #0x82ace0
0083c1b8  ac 12 9f e5                                      ldr r1, [pc, #0x2ac]
0083c1bc  05 00 a0 e1                                      mov r0, r5
0083c1c0  01 10 8f e0                                      add r1, pc, r1
0083c1c4  60 bc ff eb                                      bl #0x82b34c
0083c1c8  00 00 50 e3                                      cmp r0, #0
0083c1cc  61 00 00 1a                                      bne #0x83c358
0083c1d0  10 00 a0 e3                                      mov r0, #0x10
0083c1d4  bd 47 eb eb                                      bl #0x30e0d0
0083c1d8  7c 30 a0 e3                                      mov r3, #0x7c
0083c1dc  00 10 a0 e1                                      mov r1, r0
0083c1e0  c4 00 8a e5                                      str r0, [sl, #0xc4]
0083c1e4  01 20 a0 e3                                      mov r2, #1
0083c1e8  06 00 a0 e1                                      mov r0, r6
0083c1ec  bb ba ff eb                                      bl #0x82ace0
0083c1f0  05 00 a0 e1                                      mov r0, r5
0083c1f4  01 2c a0 e3                                      mov r2, #0x100
0083c1f8  00 10 a0 e3                                      mov r1, #0
0083c1fc  58 bc ff eb                                      bl #0x82b364
0083c200  05 10 a0 e1                                      mov r1, r5
0083c204  02 20 a0 e3                                      mov r2, #2
0083c208  7c 30 a0 e3                                      mov r3, #0x7c
0083c20c  06 00 a0 e1                                      mov r0, r6
0083c210  b2 ba ff eb                                      bl #0x82ace0
0083c214  54 12 9f e5                                      ldr r1, [pc, #0x254]
0083c218  05 00 a0 e1                                      mov r0, r5
0083c21c  01 10 8f e0                                      add r1, pc, r1
0083c220  49 bc ff eb                                      bl #0x82b34c
0083c224  00 10 50 e2                                      subs r1, r0, #0
0083c228  05 00 00 0a                                      beq #0x83c244
0083c22c  06 30 a0 e3                                      mov r3, #6
0083c230  04 30 8d e5                                      str r3, [sp, #4]
0083c234  05 b0 a0 e3                                      mov fp, #5
0083c238  04 90 a0 e3                                      mov sb, #4
0083c23c  03 70 a0 e3                                      mov r7, #3
0083c240  0f 00 00 ea                                      b #0x83c284
0083c244  01 2c a0 e3                                      mov r2, #0x100
0083c248  05 00 a0 e1                                      mov r0, r5
0083c24c  44 bc ff eb                                      bl #0x82b364
0083c250  7c 30 a0 e3                                      mov r3, #0x7c
0083c254  05 10 a0 e1                                      mov r1, r5
0083c258  03 20 a0 e3                                      mov r2, #3
0083c25c  06 00 a0 e1                                      mov r0, r6
0083c260  9e ba ff eb                                      bl #0x82ace0
0083c264  05 00 a0 e1                                      mov r0, r5
0083c268  2c bc ff eb                                      bl #0x82b320
0083c26c  07 30 a0 e3                                      mov r3, #7
0083c270  84 00 8a e5                                      str r0, [sl, #0x84]
0083c274  06 b0 a0 e3                                      mov fp, #6
0083c278  04 30 8d e5                                      str r3, [sp, #4]
0083c27c  05 90 a0 e3                                      mov sb, #5
0083c280  04 70 a0 e3                                      mov r7, #4
0083c284  05 00 a0 e1                                      mov r0, r5
0083c288  00 10 a0 e3                                      mov r1, #0
0083c28c  01 2c a0 e3                                      mov r2, #0x100
0083c290  33 bc ff eb                                      bl #0x82b364
0083c294  7c 30 a0 e3                                      mov r3, #0x7c
0083c298  05 10 a0 e1                                      mov r1, r5
0083c29c  07 20 a0 e1                                      mov r2, r7
0083c2a0  06 00 a0 e1                                      mov r0, r6
0083c2a4  8d ba ff eb                                      bl #0x82ace0
0083c2a8  10 00 a0 e3                                      mov r0, #0x10
0083c2ac  87 47 eb eb                                      bl #0x30e0d0
0083c2b0  00 10 a0 e3                                      mov r1, #0
0083c2b4  88 00 8a e5                                      str r0, [sl, #0x88]
0083c2b8  10 20 a0 e3                                      mov r2, #0x10
0083c2bc  28 bc ff eb                                      bl #0x82b364
0083c2c0  7c 30 a0 e3                                      mov r3, #0x7c
0083c2c4  09 20 a0 e1                                      mov r2, sb
0083c2c8  88 10 9a e5                                      ldr r1, [sl, #0x88]
0083c2cc  06 00 a0 e1                                      mov r0, r6
0083c2d0  82 ba ff eb                                      bl #0x82ace0
0083c2d4  05 00 a0 e1                                      mov r0, r5
0083c2d8  00 10 a0 e3                                      mov r1, #0
0083c2dc  01 2c a0 e3                                      mov r2, #0x100
0083c2e0  1f bc ff eb                                      bl #0x82b364
0083c2e4  05 10 a0 e1                                      mov r1, r5
0083c2e8  0b 20 a0 e1                                      mov r2, fp
0083c2ec  7c 30 a0 e3                                      mov r3, #0x7c
0083c2f0  06 00 a0 e1                                      mov r0, r6
0083c2f4  79 ba ff eb                                      bl #0x82ace0
0083c2f8  74 11 9f e5                                      ldr r1, [pc, #0x174]
0083c2fc  05 00 a0 e1                                      mov r0, r5
0083c300  01 10 8f e0                                      add r1, pc, r1
0083c304  10 bc ff eb                                      bl #0x82b34c
0083c308  00 10 50 e2                                      subs r1, r0, #0
0083c30c  0a 00 00 1a                                      bne #0x83c33c
0083c310  05 00 a0 e1                                      mov r0, r5
0083c314  01 2c a0 e3                                      mov r2, #0x100
0083c318  11 bc ff eb                                      bl #0x82b364
0083c31c  04 20 9d e5                                      ldr r2, [sp, #4]
0083c320  06 00 a0 e1                                      mov r0, r6
0083c324  05 10 a0 e1                                      mov r1, r5
0083c328  7c 30 a0 e3                                      mov r3, #0x7c
0083c32c  6b ba ff eb                                      bl #0x82ace0
0083c330  05 00 a0 e1                                      mov r0, r5
0083c334  f9 bb ff eb                                      bl #0x82b320
0083c338  80 00 8a e5                                      str r0, [sl, #0x80]
0083c33c  08 30 94 e7                                      ldr r3, [r4, r8]
0083c340  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
0083c344  00 30 93 e5                                      ldr r3, [r3]
0083c348  03 00 52 e1                                      cmp r2, r3
0083c34c  43 00 00 1a                                      bne #0x83c460
0083c350  45 df 8d e2                                      add sp, sp, #0x114
0083c354  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083c358  18 11 9f e5                                      ldr r1, [pc, #0x118]
0083c35c  05 00 a0 e1                                      mov r0, r5
0083c360  01 10 8f e0                                      add r1, pc, r1
0083c364  f8 bb ff eb                                      bl #0x82b34c
0083c368  00 00 50 e3                                      cmp r0, #0
0083c36c  97 ff ff 0a                                      beq #0x83c1d0
0083c370  04 11 9f e5                                      ldr r1, [pc, #0x104]
0083c374  05 00 a0 e1                                      mov r0, r5
0083c378  01 10 8f e0                                      add r1, pc, r1
0083c37c  f2 bb ff eb                                      bl #0x82b34c
0083c380  00 70 50 e2                                      subs r7, r0, #0
0083c384  ec ff ff 1a                                      bne #0x83c33c
0083c388  01 2c a0 e3                                      mov r2, #0x100
0083c38c  05 00 a0 e1                                      mov r0, r5
0083c390  07 10 a0 e1                                      mov r1, r7
0083c394  f2 bb ff eb                                      bl #0x82b364
0083c398  7c 30 a0 e3                                      mov r3, #0x7c
0083c39c  05 10 a0 e1                                      mov r1, r5
0083c3a0  01 20 a0 e3                                      mov r2, #1
0083c3a4  06 00 a0 e1                                      mov r0, r6
0083c3a8  4c ba ff eb                                      bl #0x82ace0
0083c3ac  05 00 a0 e1                                      mov r0, r5
0083c3b0  da bb ff eb                                      bl #0x82b320
0083c3b4  01 2c a0 e3                                      mov r2, #0x100
0083c3b8  84 00 8a e5                                      str r0, [sl, #0x84]
0083c3bc  07 10 a0 e1                                      mov r1, r7
0083c3c0  05 00 a0 e1                                      mov r0, r5
0083c3c4  e6 bb ff eb                                      bl #0x82b364
0083c3c8  7c 30 a0 e3                                      mov r3, #0x7c
0083c3cc  05 10 a0 e1                                      mov r1, r5
0083c3d0  02 20 a0 e3                                      mov r2, #2
0083c3d4  06 00 a0 e1                                      mov r0, r6
0083c3d8  40 ba ff eb                                      bl #0x82ace0
0083c3dc  10 00 a0 e3                                      mov r0, #0x10
0083c3e0  3a 47 eb eb                                      bl #0x30e0d0
0083c3e4  07 10 a0 e1                                      mov r1, r7
0083c3e8  88 00 8a e5                                      str r0, [sl, #0x88]
0083c3ec  10 20 a0 e3                                      mov r2, #0x10
0083c3f0  db bb ff eb                                      bl #0x82b364
0083c3f4  7c 30 a0 e3                                      mov r3, #0x7c
0083c3f8  03 20 a0 e3                                      mov r2, #3
0083c3fc  88 10 9a e5                                      ldr r1, [sl, #0x88]
0083c400  06 00 a0 e1                                      mov r0, r6
0083c404  35 ba ff eb                                      bl #0x82ace0
0083c408  05 00 a0 e1                                      mov r0, r5
0083c40c  07 10 a0 e1                                      mov r1, r7
0083c410  01 2c a0 e3                                      mov r2, #0x100
0083c414  d2 bb ff eb                                      bl #0x82b364
0083c418  05 10 a0 e1                                      mov r1, r5
0083c41c  04 20 a0 e3                                      mov r2, #4
0083c420  7c 30 a0 e3                                      mov r3, #0x7c
0083c424  06 00 a0 e1                                      mov r0, r6
0083c428  2c ba ff eb                                      bl #0x82ace0
0083c42c  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0083c430  05 00 a0 e1                                      mov r0, r5
0083c434  01 10 8f e0                                      add r1, pc, r1
0083c438  c3 bb ff eb                                      bl #0x82b34c
0083c43c  00 10 50 e2                                      subs r1, r0, #0
0083c440  bd ff ff 1a                                      bne #0x83c33c
0083c444  01 2c a0 e3                                      mov r2, #0x100
0083c448  05 00 a0 e1                                      mov r0, r5
0083c44c  c4 bb ff eb                                      bl #0x82b364
0083c450  06 00 a0 e1                                      mov r0, r6
0083c454  05 10 a0 e1                                      mov r1, r5
0083c458  05 20 a0 e3                                      mov r2, #5
0083c45c  b1 ff ff ea                                      b #0x83c328
0083c460  aa 47 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083c464  34 89 15 00 ac 40 00 00 90 69 08 00 14 a1 0a 00  .byte 0x34, 0x89, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x90, 0x69, 0x08, 0x00, 0x14, 0xa1, 0x0a, 0x00
0083c474  20 5b 08 00 e0 10 0d 00 b8 9f 0a 00 ec 59 08 00  .byte 0x20, 0x5b, 0x08, 0x00, 0xe0, 0x10, 0x0d, 0x00, 0xb8, 0x9f, 0x0a, 0x00, 0xec, 0x59, 0x08, 0x00

; FUNCTION 0x0083c484, declared_size=628, range_size=628, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser19processUserGameListEPc
; demangled: GLXPlayerUser::processUserGameList(char*)
; decoder-mode: arm
0083c484  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083c488  5c a2 9f e5                                      ldr sl, [pc, #0x25c]
0083c48c  5c b2 9f e5                                      ldr fp, [pc, #0x25c]
0083c490  47 df 4d e2                                      sub sp, sp, #0x11c
0083c494  0a a0 8f e0                                      add sl, pc, sl
0083c498  0b 30 9a e7                                      ldr r3, [sl, fp]
0083c49c  01 70 a0 e1                                      mov r7, r1
0083c4a0  00 50 a0 e1                                      mov r5, r0
0083c4a4  00 30 93 e5                                      ldr r3, [r3]
0083c4a8  14 31 8d e5                                      str r3, [sp, #0x114]
0083c4ac  0b fa ff eb                                      bl #0x83ace0
0083c4b0  00 00 57 e3                                      cmp r7, #0
0083c4b4  7a 00 00 0a                                      beq #0x83c6a4
0083c4b8  07 00 a0 e1                                      mov r0, r7
0083c4bc  ba ba ff eb                                      bl #0x82afac
0083c4c0  00 00 50 e3                                      cmp r0, #0
0083c4c4  76 00 00 da                                      ble #0x83c6a4
0083c4c8  0c 60 8d e2                                      add r6, sp, #0xc
0083c4cc  00 10 a0 e3                                      mov r1, #0
0083c4d0  01 2c a0 e3                                      mov r2, #0x100
0083c4d4  06 00 a0 e1                                      mov r0, r6
0083c4d8  e0 47 eb eb                                      bl #0x30e460
0083c4dc  00 c0 a0 e3                                      mov ip, #0
0083c4e0  0c 20 a0 e1                                      mov r2, ip
0083c4e4  06 10 a0 e1                                      mov r1, r6
0083c4e8  7c 30 a0 e3                                      mov r3, #0x7c
0083c4ec  07 00 a0 e1                                      mov r0, r7
0083c4f0  0c c1 8d e5                                      str ip, [sp, #0x10c]
0083c4f4  10 c1 8d e5                                      str ip, [sp, #0x110]
0083c4f8  f8 b9 ff eb                                      bl #0x82ace0
0083c4fc  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
0083c500  06 00 a0 e1                                      mov r0, r6
0083c504  01 10 8f e0                                      add r1, pc, r1
0083c508  8f bb ff eb                                      bl #0x82b34c
0083c50c  00 00 50 e3                                      cmp r0, #0
0083c510  01 80 a0 13                                      movne r8, #1
0083c514  69 00 00 0a                                      beq #0x83c6c0
0083c518  01 30 a0 e3                                      mov r3, #1
0083c51c  7c 30 85 e5                                      str r3, [r5, #0x7c]
0083c520  00 40 a0 e3                                      mov r4, #0
0083c524  05 00 00 ea                                      b #0x83c540
0083c528  d4 30 97 e1                                      ldrsb r3, [r7, r4]
0083c52c  01 40 84 e2                                      add r4, r4, #1
0083c530  7c 00 53 e3                                      cmp r3, #0x7c
0083c534  7c 30 95 05                                      ldreq r3, [r5, #0x7c]
0083c538  01 30 83 02                                      addeq r3, r3, #1
0083c53c  7c 30 85 05                                      streq r3, [r5, #0x7c]
0083c540  07 00 a0 e1                                      mov r0, r7
0083c544  98 ba ff eb                                      bl #0x82afac
0083c548  00 00 54 e1                                      cmp r4, r0
0083c54c  f5 ff ff ba                                      blt #0x83c528
0083c550  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0083c554  01 00 58 e3                                      cmp r8, #1
0083c558  02 90 a0 13                                      movne sb, #2
0083c55c  01 30 83 e2                                      add r3, r3, #1
0083c560  03 80 68 e0                                      rsb r8, r8, r3
0083c564  7c 80 85 e5                                      str r8, [r5, #0x7c]
0083c568  08 01 a0 e1                                      lsl r0, r8, #2
0083c56c  00 90 a0 03                                      moveq sb, #0
0083c570  d6 46 eb eb                                      bl #0x30e0d0
0083c574  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0083c578  70 00 85 e5                                      str r0, [r5, #0x70]
0083c57c  03 01 a0 e1                                      lsl r0, r3, #2
0083c580  d2 46 eb eb                                      bl #0x30e0d0
0083c584  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0083c588  74 00 85 e5                                      str r0, [r5, #0x74]
0083c58c  03 01 a0 e1                                      lsl r0, r3, #2
0083c590  ce 46 eb eb                                      bl #0x30e0d0
0083c594  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0083c598  78 00 85 e5                                      str r0, [r5, #0x78]
0083c59c  00 00 53 e3                                      cmp r3, #0
0083c5a0  3f 00 00 da                                      ble #0x83c6a4
0083c5a4  00 40 a0 e3                                      mov r4, #0
0083c5a8  43 8f 8d e2                                      add r8, sp, #0x10c
0083c5ac  01 2c a0 e3                                      mov r2, #0x100
0083c5b0  06 00 a0 e1                                      mov r0, r6
0083c5b4  00 10 a0 e3                                      mov r1, #0
0083c5b8  69 bb ff eb                                      bl #0x82b364
0083c5bc  09 20 84 e0                                      add r2, r4, sb
0083c5c0  06 10 a0 e1                                      mov r1, r6
0083c5c4  7c 30 a0 e3                                      mov r3, #0x7c
0083c5c8  07 00 a0 e1                                      mov r0, r7
0083c5cc  c3 b9 ff eb                                      bl #0x82ace0
0083c5d0  70 30 95 e5                                      ldr r3, [r5, #0x70]
0083c5d4  80 00 a0 e3                                      mov r0, #0x80
0083c5d8  04 30 8d e5                                      str r3, [sp, #4]
0083c5dc  bb 46 eb eb                                      bl #0x30e0d0
0083c5e0  04 30 9d e5                                      ldr r3, [sp, #4]
0083c5e4  04 01 83 e7                                      str r0, [r3, r4, lsl #2]
0083c5e8  74 30 95 e5                                      ldr r3, [r5, #0x74]
0083c5ec  80 00 a0 e3                                      mov r0, #0x80
0083c5f0  04 30 8d e5                                      str r3, [sp, #4]
0083c5f4  b5 46 eb eb                                      bl #0x30e0d0
0083c5f8  04 30 9d e5                                      ldr r3, [sp, #4]
0083c5fc  00 10 a0 e3                                      mov r1, #0
0083c600  80 20 a0 e3                                      mov r2, #0x80
0083c604  04 01 83 e7                                      str r0, [r3, r4, lsl #2]
0083c608  70 30 95 e5                                      ldr r3, [r5, #0x70]
0083c60c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0083c610  53 bb ff eb                                      bl #0x82b364
0083c614  70 10 95 e5                                      ldr r1, [r5, #0x70]
0083c618  5e 30 a0 e3                                      mov r3, #0x5e
0083c61c  00 20 a0 e3                                      mov r2, #0
0083c620  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
0083c624  06 00 a0 e1                                      mov r0, r6
0083c628  ac b9 ff eb                                      bl #0x82ace0
0083c62c  74 30 95 e5                                      ldr r3, [r5, #0x74]
0083c630  00 10 a0 e3                                      mov r1, #0
0083c634  80 20 a0 e3                                      mov r2, #0x80
0083c638  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0083c63c  48 bb ff eb                                      bl #0x82b364
0083c640  74 10 95 e5                                      ldr r1, [r5, #0x74]
0083c644  5e 30 a0 e3                                      mov r3, #0x5e
0083c648  01 20 a0 e3                                      mov r2, #1
0083c64c  04 11 91 e7                                      ldr r1, [r1, r4, lsl #2]
0083c650  06 00 a0 e1                                      mov r0, r6
0083c654  a1 b9 ff eb                                      bl #0x82ace0
0083c658  08 00 a0 e1                                      mov r0, r8
0083c65c  08 20 a0 e3                                      mov r2, #8
0083c660  00 10 a0 e3                                      mov r1, #0
0083c664  3e bb ff eb                                      bl #0x82b364
0083c668  08 10 a0 e1                                      mov r1, r8
0083c66c  02 20 a0 e3                                      mov r2, #2
0083c670  5e 30 a0 e3                                      mov r3, #0x5e
0083c674  06 00 a0 e1                                      mov r0, r6
0083c678  98 b9 ff eb                                      bl #0x82ace0
0083c67c  78 30 95 e5                                      ldr r3, [r5, #0x78]
0083c680  08 00 a0 e1                                      mov r0, r8
0083c684  04 30 8d e5                                      str r3, [sp, #4]
0083c688  24 bb ff eb                                      bl #0x82b320
0083c68c  04 30 9d e5                                      ldr r3, [sp, #4]
0083c690  04 01 83 e7                                      str r0, [r3, r4, lsl #2]
0083c694  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0083c698  01 40 84 e2                                      add r4, r4, #1
0083c69c  04 00 53 e1                                      cmp r3, r4
0083c6a0  c1 ff ff ca                                      bgt #0x83c5ac
0083c6a4  0b 30 9a e7                                      ldr r3, [sl, fp]
0083c6a8  14 21 9d e5                                      ldr r2, [sp, #0x114]
0083c6ac  00 30 93 e5                                      ldr r3, [r3]
0083c6b0  03 00 52 e1                                      cmp r2, r3
0083c6b4  0b 00 00 1a                                      bne #0x83c6e8
0083c6b8  47 df 8d e2                                      add sp, sp, #0x11c
0083c6bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083c6c0  10 00 a0 e3                                      mov r0, #0x10
0083c6c4  81 46 eb eb                                      bl #0x30e0d0
0083c6c8  01 20 a0 e3                                      mov r2, #1
0083c6cc  00 10 a0 e1                                      mov r1, r0
0083c6d0  c4 00 85 e5                                      str r0, [r5, #0xc4]
0083c6d4  7c 30 a0 e3                                      mov r3, #0x7c
0083c6d8  07 00 a0 e1                                      mov r0, r7
0083c6dc  7f b9 ff eb                                      bl #0x82ace0
0083c6e0  02 80 a0 e3                                      mov r8, #2
0083c6e4  8b ff ff ea                                      b #0x83c518
0083c6e8  08 47 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083c6ec  fc 85 15 00 ac 40 00 00 4c 66 08 00              .byte 0xfc, 0x85, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0x66, 0x08, 0x00

; FUNCTION 0x0083c6f8, declared_size=412, range_size=412, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser21processUserReputationEPc
; demangled: GLXPlayerUser::processUserReputation(char*)
; decoder-mode: arm
0083c6f8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0083c6fc  84 41 9f e5                                      ldr r4, [pc, #0x184]
0083c700  84 61 9f e5                                      ldr r6, [pc, #0x184]
0083c704  a3 df 4d e2                                      sub sp, sp, #0x28c
0083c708  04 40 8f e0                                      add r4, pc, r4
0083c70c  06 30 94 e7                                      ldr r3, [r4, r6]
0083c710  00 50 51 e2                                      subs r5, r1, #0
0083c714  00 80 a0 e1                                      mov r8, r0
0083c718  00 30 93 e5                                      ldr r3, [r3]
0083c71c  84 32 8d e5                                      str r3, [sp, #0x284]
0083c720  46 00 00 0a                                      beq #0x83c840
0083c724  05 00 a0 e1                                      mov r0, r5
0083c728  1f ba ff eb                                      bl #0x82afac
0083c72c  00 00 50 e3                                      cmp r0, #0
0083c730  42 00 00 da                                      ble #0x83c840
0083c734  04 70 8d e2                                      add r7, sp, #4
0083c738  02 2c a0 e3                                      mov r2, #0x200
0083c73c  00 10 a0 e3                                      mov r1, #0
0083c740  07 00 a0 e1                                      mov r0, r7
0083c744  45 47 eb eb                                      bl #0x30e460
0083c748  07 10 a0 e1                                      mov r1, r7
0083c74c  00 20 a0 e3                                      mov r2, #0
0083c750  7c 30 a0 e3                                      mov r3, #0x7c
0083c754  05 00 a0 e1                                      mov r0, r5
0083c758  60 b9 ff eb                                      bl #0x82ace0
0083c75c  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
0083c760  07 00 a0 e1                                      mov r0, r7
0083c764  01 10 8f e0                                      add r1, pc, r1
0083c768  f7 ba ff eb                                      bl #0x82b34c
0083c76c  00 00 50 e3                                      cmp r0, #0
0083c770  00 a0 a0 13                                      movne sl, #0
0083c774  38 00 00 0a                                      beq #0x83c85c
0083c778  07 00 a0 e1                                      mov r0, r7
0083c77c  00 10 a0 e3                                      mov r1, #0
0083c780  02 2c a0 e3                                      mov r2, #0x200
0083c784  f6 ba ff eb                                      bl #0x82b364
0083c788  7c 30 a0 e3                                      mov r3, #0x7c
0083c78c  05 00 a0 e1                                      mov r0, r5
0083c790  07 10 a0 e1                                      mov r1, r7
0083c794  81 5f 8d e2                                      add r5, sp, #0x204
0083c798  0a 20 a0 e1                                      mov r2, sl
0083c79c  4f b9 ff eb                                      bl #0x82ace0
0083c7a0  00 10 a0 e3                                      mov r1, #0
0083c7a4  80 20 a0 e3                                      mov r2, #0x80
0083c7a8  05 00 a0 e1                                      mov r0, r5
0083c7ac  2b 47 eb eb                                      bl #0x30e460
0083c7b0  05 00 a0 e1                                      mov r0, r5
0083c7b4  80 20 a0 e3                                      mov r2, #0x80
0083c7b8  00 10 a0 e3                                      mov r1, #0
0083c7bc  e8 ba ff eb                                      bl #0x82b364
0083c7c0  2c 30 a0 e3                                      mov r3, #0x2c
0083c7c4  00 20 a0 e3                                      mov r2, #0
0083c7c8  05 10 a0 e1                                      mov r1, r5
0083c7cc  07 00 a0 e1                                      mov r0, r7
0083c7d0  42 b9 ff eb                                      bl #0x82ace0
0083c7d4  05 00 a0 e1                                      mov r0, r5
0083c7d8  ce ba ff eb                                      bl #0x82b318
0083c7dc  80 20 a0 e3                                      mov r2, #0x80
0083c7e0  f0 09 c8 e1                                      strd r0, r1, [r8, #0x90]
0083c7e4  05 00 a0 e1                                      mov r0, r5
0083c7e8  00 10 a0 e3                                      mov r1, #0
0083c7ec  dc ba ff eb                                      bl #0x82b364
0083c7f0  2c 30 a0 e3                                      mov r3, #0x2c
0083c7f4  05 10 a0 e1                                      mov r1, r5
0083c7f8  01 20 a0 e3                                      mov r2, #1
0083c7fc  07 00 a0 e1                                      mov r0, r7
0083c800  36 b9 ff eb                                      bl #0x82ace0
0083c804  05 00 a0 e1                                      mov r0, r5
0083c808  c4 ba ff eb                                      bl #0x82b320
0083c80c  80 20 a0 e3                                      mov r2, #0x80
0083c810  98 00 88 e5                                      str r0, [r8, #0x98]
0083c814  00 10 a0 e3                                      mov r1, #0
0083c818  05 00 a0 e1                                      mov r0, r5
0083c81c  d0 ba ff eb                                      bl #0x82b364
0083c820  05 10 a0 e1                                      mov r1, r5
0083c824  02 20 a0 e3                                      mov r2, #2
0083c828  2c 30 a0 e3                                      mov r3, #0x2c
0083c82c  07 00 a0 e1                                      mov r0, r7
0083c830  2a b9 ff eb                                      bl #0x82ace0
0083c834  05 00 a0 e1                                      mov r0, r5
0083c838  b8 ba ff eb                                      bl #0x82b320
0083c83c  9c 00 88 e5                                      str r0, [r8, #0x9c]
0083c840  06 30 94 e7                                      ldr r3, [r4, r6]
0083c844  84 22 9d e5                                      ldr r2, [sp, #0x284]
0083c848  00 30 93 e5                                      ldr r3, [r3]
0083c84c  03 00 52 e1                                      cmp r2, r3
0083c850  0b 00 00 1a                                      bne #0x83c884
0083c854  a3 df 8d e2                                      add sp, sp, #0x28c
0083c858  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0083c85c  10 00 a0 e3                                      mov r0, #0x10
0083c860  1a 46 eb eb                                      bl #0x30e0d0
0083c864  01 20 a0 e3                                      mov r2, #1
0083c868  00 10 a0 e1                                      mov r1, r0
0083c86c  c4 00 88 e5                                      str r0, [r8, #0xc4]
0083c870  7c 30 a0 e3                                      mov r3, #0x7c
0083c874  05 00 a0 e1                                      mov r0, r5
0083c878  18 b9 ff eb                                      bl #0x82ace0
0083c87c  02 a0 a0 e3                                      mov sl, #2
0083c880  bc ff ff ea                                      b #0x83c778
0083c884  a1 46 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083c888  88 83 15 00 ac 40 00 00 ec 63 08 00              .byte 0x88, 0x83, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xec, 0x63, 0x08, 0x00

; FUNCTION 0x0083c894, declared_size=1332, range_size=1332, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15OnUpdateSuccessEi
; demangled: GLXPlayerUser::OnUpdateSuccess(int)
; decoder-mode: arm
0083c894  35 30 41 e2                                      sub r3, r1, #0x35
0083c898  70 40 2d e9                                      push {r4, r5, r6, lr}
0083c89c  01 50 a0 e1                                      mov r5, r1
0083c8a0  00 40 a0 e1                                      mov r4, r0
0083c8a4  98 00 53 e3                                      cmp r3, #0x98
0083c8a8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0083c8ac  c2 00 00 ea                                      b #0x83cbbc
0083c8b0  36 01 00 ea                                      b #0x83cd90
0083c8b4  c0 00 00 ea                                      b #0x83cbbc
0083c8b8  bf 00 00 ea                                      b #0x83cbbc
0083c8bc  be 00 00 ea                                      b #0x83cbbc
0083c8c0  bd 00 00 ea                                      b #0x83cbbc
0083c8c4  27 01 00 ea                                      b #0x83cd68
0083c8c8  bb 00 00 ea                                      b #0x83cbbc
0083c8cc  ba 00 00 ea                                      b #0x83cbbc
0083c8d0  b9 00 00 ea                                      b #0x83cbbc
0083c8d4  b8 00 00 ea                                      b #0x83cbbc
0083c8d8  18 01 00 ea                                      b #0x83cd40
0083c8dc  0d 01 00 ea                                      b #0x83cd18
0083c8e0  02 01 00 ea                                      b #0x83ccf0
0083c8e4  b4 00 00 ea                                      b #0x83cbbc
0083c8e8  f6 00 00 ea                                      b #0x83ccc8
0083c8ec  b2 00 00 ea                                      b #0x83cbbc
0083c8f0  ea 00 00 ea                                      b #0x83cca0
0083c8f4  df 00 00 ea                                      b #0x83cc78
0083c8f8  db 00 00 ea                                      b #0x83cc6c
0083c8fc  ae 00 00 ea                                      b #0x83cbbc
0083c900  ad 00 00 ea                                      b #0x83cbbc
0083c904  ac 00 00 ea                                      b #0x83cbbc
0083c908  ab 00 00 ea                                      b #0x83cbbc
0083c90c  aa 00 00 ea                                      b #0x83cbbc
0083c910  a9 00 00 ea                                      b #0x83cbbc
0083c914  a8 00 00 ea                                      b #0x83cbbc
0083c918  a7 00 00 ea                                      b #0x83cbbc
0083c91c  a6 00 00 ea                                      b #0x83cbbc
0083c920  c7 00 00 ea                                      b #0x83cc44
0083c924  a4 00 00 ea                                      b #0x83cbbc
0083c928  a3 00 00 ea                                      b #0x83cbbc
0083c92c  c1 00 00 ea                                      b #0x83cc38
0083c930  a1 00 00 ea                                      b #0x83cbbc
0083c934  a0 00 00 ea                                      b #0x83cbbc
0083c938  9f 00 00 ea                                      b #0x83cbbc
0083c93c  ba 00 00 ea                                      b #0x83cc2c
0083c940  b6 00 00 ea                                      b #0x83cc20
0083c944  b2 00 00 ea                                      b #0x83cc14
0083c948  9b 00 00 ea                                      b #0x83cbbc
0083c94c  9a 00 00 ea                                      b #0x83cbbc
0083c950  99 00 00 ea                                      b #0x83cbbc
0083c954  98 00 00 ea                                      b #0x83cbbc
0083c958  97 00 00 ea                                      b #0x83cbbc
0083c95c  96 00 00 ea                                      b #0x83cbbc
0083c960  95 00 00 ea                                      b #0x83cbbc
0083c964  6a 00 00 ea                                      b #0x83cb14
0083c968  a6 00 00 ea                                      b #0x83cc08
0083c96c  92 00 00 ea                                      b #0x83cbbc
0083c970  a1 00 00 ea                                      b #0x83cbfc
0083c974  90 00 00 ea                                      b #0x83cbbc
0083c978  9c 00 00 ea                                      b #0x83cbf0
0083c97c  8e 00 00 ea                                      b #0x83cbbc
0083c980  8d 00 00 ea                                      b #0x83cbbc
0083c984  8c 00 00 ea                                      b #0x83cbbc
0083c988  8b 00 00 ea                                      b #0x83cbbc
0083c98c  8a 00 00 ea                                      b #0x83cbbc
0083c990  89 00 00 ea                                      b #0x83cbbc
0083c994  88 00 00 ea                                      b #0x83cbbc
0083c998  91 00 00 ea                                      b #0x83cbe4
0083c99c  86 00 00 ea                                      b #0x83cbbc
0083c9a0  85 00 00 ea                                      b #0x83cbbc
0083c9a4  84 00 00 ea                                      b #0x83cbbc
0083c9a8  83 00 00 ea                                      b #0x83cbbc
0083c9ac  82 00 00 ea                                      b #0x83cbbc
0083c9b0  81 00 00 ea                                      b #0x83cbbc
0083c9b4  80 00 00 ea                                      b #0x83cbbc
0083c9b8  7f 00 00 ea                                      b #0x83cbbc
0083c9bc  7e 00 00 ea                                      b #0x83cbbc
0083c9c0  7d 00 00 ea                                      b #0x83cbbc
0083c9c4  7c 00 00 ea                                      b #0x83cbbc
0083c9c8  7b 00 00 ea                                      b #0x83cbbc
0083c9cc  7a 00 00 ea                                      b #0x83cbbc
0083c9d0  79 00 00 ea                                      b #0x83cbbc
0083c9d4  78 00 00 ea                                      b #0x83cbbc
0083c9d8  77 00 00 ea                                      b #0x83cbbc
0083c9dc  76 00 00 ea                                      b #0x83cbbc
0083c9e0  75 00 00 ea                                      b #0x83cbbc
0083c9e4  74 00 00 ea                                      b #0x83cbbc
0083c9e8  73 00 00 ea                                      b #0x83cbbc
0083c9ec  72 00 00 ea                                      b #0x83cbbc
0083c9f0  71 00 00 ea                                      b #0x83cbbc
0083c9f4  70 00 00 ea                                      b #0x83cbbc
0083c9f8  6f 00 00 ea                                      b #0x83cbbc
0083c9fc  6e 00 00 ea                                      b #0x83cbbc
0083ca00  6d 00 00 ea                                      b #0x83cbbc
0083ca04  6c 00 00 ea                                      b #0x83cbbc
0083ca08  6b 00 00 ea                                      b #0x83cbbc
0083ca0c  6a 00 00 ea                                      b #0x83cbbc
0083ca10  69 00 00 ea                                      b #0x83cbbc
0083ca14  68 00 00 ea                                      b #0x83cbbc
0083ca18  67 00 00 ea                                      b #0x83cbbc
0083ca1c  66 00 00 ea                                      b #0x83cbbc
0083ca20  65 00 00 ea                                      b #0x83cbbc
0083ca24  64 00 00 ea                                      b #0x83cbbc
0083ca28  63 00 00 ea                                      b #0x83cbbc
0083ca2c  62 00 00 ea                                      b #0x83cbbc
0083ca30  61 00 00 ea                                      b #0x83cbbc
0083ca34  60 00 00 ea                                      b #0x83cbbc
0083ca38  5f 00 00 ea                                      b #0x83cbbc
0083ca3c  5e 00 00 ea                                      b #0x83cbbc
0083ca40  5d 00 00 ea                                      b #0x83cbbc
0083ca44  5c 00 00 ea                                      b #0x83cbbc
0083ca48  5b 00 00 ea                                      b #0x83cbbc
0083ca4c  5a 00 00 ea                                      b #0x83cbbc
0083ca50  59 00 00 ea                                      b #0x83cbbc
0083ca54  58 00 00 ea                                      b #0x83cbbc
0083ca58  57 00 00 ea                                      b #0x83cbbc
0083ca5c  56 00 00 ea                                      b #0x83cbbc
0083ca60  55 00 00 ea                                      b #0x83cbbc
0083ca64  54 00 00 ea                                      b #0x83cbbc
0083ca68  53 00 00 ea                                      b #0x83cbbc
0083ca6c  52 00 00 ea                                      b #0x83cbbc
0083ca70  51 00 00 ea                                      b #0x83cbbc
0083ca74  50 00 00 ea                                      b #0x83cbbc
0083ca78  4f 00 00 ea                                      b #0x83cbbc
0083ca7c  4e 00 00 ea                                      b #0x83cbbc
0083ca80  4d 00 00 ea                                      b #0x83cbbc
0083ca84  4c 00 00 ea                                      b #0x83cbbc
0083ca88  4b 00 00 ea                                      b #0x83cbbc
0083ca8c  4a 00 00 ea                                      b #0x83cbbc
0083ca90  49 00 00 ea                                      b #0x83cbbc
0083ca94  48 00 00 ea                                      b #0x83cbbc
0083ca98  47 00 00 ea                                      b #0x83cbbc
0083ca9c  46 00 00 ea                                      b #0x83cbbc
0083caa0  45 00 00 ea                                      b #0x83cbbc
0083caa4  44 00 00 ea                                      b #0x83cbbc
0083caa8  43 00 00 ea                                      b #0x83cbbc
0083caac  42 00 00 ea                                      b #0x83cbbc
0083cab0  41 00 00 ea                                      b #0x83cbbc
0083cab4  40 00 00 ea                                      b #0x83cbbc
0083cab8  3f 00 00 ea                                      b #0x83cbbc
0083cabc  3e 00 00 ea                                      b #0x83cbbc
0083cac0  3d 00 00 ea                                      b #0x83cbbc
0083cac4  3c 00 00 ea                                      b #0x83cbbc
0083cac8  3b 00 00 ea                                      b #0x83cbbc
0083cacc  3a 00 00 ea                                      b #0x83cbbc
0083cad0  39 00 00 ea                                      b #0x83cbbc
0083cad4  38 00 00 ea                                      b #0x83cbbc
0083cad8  37 00 00 ea                                      b #0x83cbbc
0083cadc  36 00 00 ea                                      b #0x83cbbc
0083cae0  35 00 00 ea                                      b #0x83cbbc
0083cae4  34 00 00 ea                                      b #0x83cbbc
0083cae8  33 00 00 ea                                      b #0x83cbbc
0083caec  32 00 00 ea                                      b #0x83cbbc
0083caf0  31 00 00 ea                                      b #0x83cbbc
0083caf4  30 00 00 ea                                      b #0x83cbbc
0083caf8  2f 00 00 ea                                      b #0x83cbbc
0083cafc  2e 00 00 ea                                      b #0x83cbbc
0083cb00  2d 00 00 ea                                      b #0x83cbbc
0083cb04  2c 00 00 ea                                      b #0x83cbbc
0083cb08  2b 00 00 ea                                      b #0x83cbbc
0083cb0c  31 00 00 ea                                      b #0x83cbd8
0083cb10  2d 00 00 ea                                      b #0x83cbcc
0083cb14  24 00 90 e5                                      ldr r0, [r0, #0x24]
0083cb18  23 b9 ff eb                                      bl #0x82afac
0083cb1c  6b 45 eb eb                                      bl #0x30e0d0
0083cb20  98 12 9f e5                                      ldr r1, [pc, #0x298]
0083cb24  00 60 a0 e1                                      mov r6, r0
0083cb28  04 00 a0 e1                                      mov r0, r4
0083cb2c  01 10 8f e0                                      add r1, pc, r1
0083cb30  4d d3 ff eb                                      bl #0x83186c
0083cb34  00 00 50 e3                                      cmp r0, #0
0083cb38  0a 00 00 0a                                      beq #0x83cb68
0083cb3c  1c 01 94 e5                                      ldr r0, [r4, #0x11c]
0083cb40  00 00 50 e3                                      cmp r0, #0
0083cb44  02 00 00 0a                                      beq #0x83cb54
0083cb48  5a 45 eb eb                                      bl #0x30e0b8
0083cb4c  00 30 a0 e3                                      mov r3, #0
0083cb50  1c 31 84 e5                                      str r3, [r4, #0x11c]
0083cb54  06 10 a0 e1                                      mov r1, r6
0083cb58  04 00 a0 e1                                      mov r0, r4
0083cb5c  f8 d2 ff eb                                      bl #0x831744
0083cb60  8e bb ff eb                                      bl #0x82b9a0
0083cb64  1c 01 84 e5                                      str r0, [r4, #0x11c]
0083cb68  54 12 9f e5                                      ldr r1, [pc, #0x254]
0083cb6c  04 00 a0 e1                                      mov r0, r4
0083cb70  01 10 8f e0                                      add r1, pc, r1
0083cb74  3c d3 ff eb                                      bl #0x83186c
0083cb78  00 00 50 e3                                      cmp r0, #0
0083cb7c  0a 00 00 0a                                      beq #0x83cbac
0083cb80  20 01 94 e5                                      ldr r0, [r4, #0x120]
0083cb84  00 00 50 e3                                      cmp r0, #0
0083cb88  02 00 00 0a                                      beq #0x83cb98
0083cb8c  49 45 eb eb                                      bl #0x30e0b8
0083cb90  00 30 a0 e3                                      mov r3, #0
0083cb94  20 31 84 e5                                      str r3, [r4, #0x120]
0083cb98  06 10 a0 e1                                      mov r1, r6
0083cb9c  04 00 a0 e1                                      mov r0, r4
0083cba0  e7 d2 ff eb                                      bl #0x831744
0083cba4  7d bb ff eb                                      bl #0x82b9a0
0083cba8  20 01 84 e5                                      str r0, [r4, #0x120]
0083cbac  00 00 56 e3                                      cmp r6, #0
0083cbb0  01 00 00 0a                                      beq #0x83cbbc
0083cbb4  06 00 a0 e1                                      mov r0, r6
0083cbb8  bc 45 eb eb                                      bl #0x30e2b0
0083cbbc  04 00 a0 e1                                      mov r0, r4
0083cbc0  05 10 a0 e1                                      mov r1, r5
0083cbc4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0083cbc8  6e d2 ff ea                                      b #0x831588
0083cbcc  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cbd0  14 f9 ff eb                                      bl #0x83b028
0083cbd4  f8 ff ff ea                                      b #0x83cbbc
0083cbd8  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cbdc  7f f9 ff eb                                      bl #0x83b1e0
0083cbe0  f5 ff ff ea                                      b #0x83cbbc
0083cbe4  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cbe8  7f f8 ff eb                                      bl #0x83adec
0083cbec  f2 ff ff ea                                      b #0x83cbbc
0083cbf0  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cbf4  0a fa ff eb                                      bl #0x83b424
0083cbf8  ef ff ff ea                                      b #0x83cbbc
0083cbfc  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cc00  c7 fa ff eb                                      bl #0x83b724
0083cc04  ec ff ff ea                                      b #0x83cbbc
0083cc08  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cc0c  e9 f8 ff eb                                      bl #0x83afb8
0083cc10  e9 ff ff ea                                      b #0x83cbbc
0083cc14  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cc18  c0 f9 ff eb                                      bl #0x83b320
0083cc1c  e6 ff ff ea                                      b #0x83cbbc
0083cc20  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cc24  12 f9 ff eb                                      bl #0x83b074
0083cc28  e3 ff ff ea                                      b #0x83cbbc
0083cc2c  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cc30  92 f9 ff eb                                      bl #0x83b280
0083cc34  e0 ff ff ea                                      b #0x83cbbc
0083cc38  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cc3c  1f f9 ff eb                                      bl #0x83b0c0
0083cc40  dd ff ff ea                                      b #0x83cbbc
0083cc44  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
0083cc48  00 00 50 e3                                      cmp r0, #0
0083cc4c  02 00 00 0a                                      beq #0x83cc5c
0083cc50  96 45 eb eb                                      bl #0x30e2b0
0083cc54  00 30 a0 e3                                      mov r3, #0
0083cc58  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083cc5c  04 00 a0 e1                                      mov r0, r4
0083cc60  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cc64  e1 fb ff eb                                      bl #0x83bbf0
0083cc68  d3 ff ff ea                                      b #0x83cbbc
0083cc6c  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cc70  70 f7 ff eb                                      bl #0x83aa38
0083cc74  d0 ff ff ea                                      b #0x83cbbc
0083cc78  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
0083cc7c  00 00 50 e3                                      cmp r0, #0
0083cc80  02 00 00 0a                                      beq #0x83cc90
0083cc84  89 45 eb eb                                      bl #0x30e2b0
0083cc88  00 30 a0 e3                                      mov r3, #0
0083cc8c  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083cc90  04 00 a0 e1                                      mov r0, r4
0083cc94  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cc98  e3 fa ff eb                                      bl #0x83b82c
0083cc9c  c6 ff ff ea                                      b #0x83cbbc
0083cca0  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
0083cca4  00 00 50 e3                                      cmp r0, #0
0083cca8  02 00 00 0a                                      beq #0x83ccb8
0083ccac  7f 45 eb eb                                      bl #0x30e2b0
0083ccb0  00 30 a0 e3                                      mov r3, #0
0083ccb4  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083ccb8  04 00 a0 e1                                      mov r0, r4
0083ccbc  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083ccc0  87 fb ff eb                                      bl #0x83bae4
0083ccc4  bc ff ff ea                                      b #0x83cbbc
0083ccc8  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
0083cccc  00 00 50 e3                                      cmp r0, #0
0083ccd0  02 00 00 0a                                      beq #0x83cce0
0083ccd4  75 45 eb eb                                      bl #0x30e2b0
0083ccd8  00 30 a0 e3                                      mov r3, #0
0083ccdc  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083cce0  04 00 a0 e1                                      mov r0, r4
0083cce4  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cce8  82 fe ff eb                                      bl #0x83c6f8
0083ccec  b2 ff ff ea                                      b #0x83cbbc
0083ccf0  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
0083ccf4  00 00 50 e3                                      cmp r0, #0
0083ccf8  02 00 00 0a                                      beq #0x83cd08
0083ccfc  6b 45 eb eb                                      bl #0x30e2b0
0083cd00  00 30 a0 e3                                      mov r3, #0
0083cd04  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083cd08  04 00 a0 e1                                      mov r0, r4
0083cd0c  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cd10  42 fa ff eb                                      bl #0x83b620
0083cd14  a8 ff ff ea                                      b #0x83cbbc
0083cd18  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
0083cd1c  00 00 50 e3                                      cmp r0, #0
0083cd20  02 00 00 0a                                      beq #0x83cd30
0083cd24  61 45 eb eb                                      bl #0x30e2b0
0083cd28  00 30 a0 e3                                      mov r3, #0
0083cd2c  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083cd30  04 00 a0 e1                                      mov r0, r4
0083cd34  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cd38  03 fd ff eb                                      bl #0x83c14c
0083cd3c  9e ff ff ea                                      b #0x83cbbc
0083cd40  c4 00 90 e5                                      ldr r0, [r0, #0xc4]
0083cd44  00 00 50 e3                                      cmp r0, #0
0083cd48  02 00 00 0a                                      beq #0x83cd58
0083cd4c  57 45 eb eb                                      bl #0x30e2b0
0083cd50  00 30 a0 e3                                      mov r3, #0
0083cd54  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083cd58  04 00 a0 e1                                      mov r0, r4
0083cd5c  24 10 94 e5                                      ldr r1, [r4, #0x24]
0083cd60  c7 fd ff eb                                      bl #0x83c484
0083cd64  94 ff ff ea                                      b #0x83cbbc
0083cd68  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
0083cd6c  00 00 50 e3                                      cmp r0, #0
0083cd70  02 00 00 0a                                      beq #0x83cd80
0083cd74  4d 45 eb eb                                      bl #0x30e2b0
0083cd78  00 30 a0 e3                                      mov r3, #0
0083cd7c  3c 30 84 e5                                      str r3, [r4, #0x3c]
0083cd80  24 00 94 e5                                      ldr r0, [r4, #0x24]
0083cd84  05 bb ff eb                                      bl #0x82b9a0
0083cd88  3c 00 84 e5                                      str r0, [r4, #0x3c]
0083cd8c  8a ff ff ea                                      b #0x83cbbc
0083cd90  80 00 a0 e3                                      mov r0, #0x80
0083cd94  cd 44 eb eb                                      bl #0x30e0d0
0083cd98  00 10 a0 e3                                      mov r1, #0
0083cd9c  54 00 84 e5                                      str r0, [r4, #0x54]
0083cda0  80 20 a0 e3                                      mov r2, #0x80
0083cda4  6e b9 ff eb                                      bl #0x82b364
0083cda8  24 00 94 e5                                      ldr r0, [r4, #0x24]
0083cdac  54 10 94 e5                                      ldr r1, [r4, #0x54]
0083cdb0  01 20 a0 e3                                      mov r2, #1
0083cdb4  7c 30 a0 e3                                      mov r3, #0x7c
0083cdb8  c8 b7 ff eb                                      bl #0x82ace0
0083cdbc  7e ff ff ea                                      b #0x83cbbc
; mapping-symbol data/literal pool
0083cdc0  c4 a1 0a 00 c0 97 0a 00                          .byte 0xc4, 0xa1, 0x0a, 0x00, 0xc0, 0x97, 0x0a, 0x00

; FUNCTION 0x0083cdc8, declared_size=216, range_size=216, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser16sendGetLiveFeedsEi
; demangled: GLXPlayerUser::sendGetLiveFeeds(int)
; decoder-mode: arm
0083cdc8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083cdcc  bc 40 9f e5                                      ldr r4, [pc, #0xbc]
0083cdd0  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
0083cdd4  01 da 4d e2                                      sub sp, sp, #0x1000
0083cdd8  04 40 8f e0                                      add r4, pc, r4
0083cddc  05 30 94 e7                                      ldr r3, [r4, r5]
0083cde0  01 20 41 e2                                      sub r2, r1, #1
0083cde4  10 d0 4d e2                                      sub sp, sp, #0x10
0083cde8  00 30 93 e5                                      ldr r3, [r3]
0083cdec  01 80 a0 e1                                      mov r8, r1
0083cdf0  13 00 52 e3                                      cmp r2, #0x13
0083cdf4  01 1a 8d e2                                      add r1, sp, #0x1000
0083cdf8  00 70 a0 e1                                      mov r7, r0
0083cdfc  0c 30 81 e5                                      str r3, [r1, #0xc]
0083ce00  00 00 a0 83                                      movhi r0, #0
0083ce04  17 00 00 8a                                      bhi #0x83ce68
0083ce08  10 60 8d e2                                      add r6, sp, #0x10
0083ce0c  04 60 46 e2                                      sub r6, r6, #4
0083ce10  00 10 a0 e3                                      mov r1, #0
0083ce14  01 2a a0 e3                                      mov r2, #0x1000
0083ce18  06 00 a0 e1                                      mov r0, r6
0083ce1c  8f 45 eb eb                                      bl #0x30e460
0083ce20  70 10 9f e5                                      ldr r1, [pc, #0x70]
0083ce24  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0083ce28  08 30 97 e5                                      ldr r3, [r7, #8]
0083ce2c  01 10 8f e0                                      add r1, pc, r1
0083ce30  6f 20 a0 e3                                      mov r2, #0x6f
0083ce34  06 00 a0 e1                                      mov r0, r6
0083ce38  00 c0 8d e5                                      str ip, [sp]
0083ce3c  04 80 8d e5                                      str r8, [sp, #4]
0083ce40  27 47 eb eb                                      bl #0x30eae4
0083ce44  50 00 9f e5                                      ldr r0, [pc, #0x50]
0083ce48  06 10 a0 e1                                      mov r1, r6
0083ce4c  00 00 8f e0                                      add r0, pc, r0
0083ce50  4b ba ff eb                                      bl #0x82b784
0083ce54  07 00 a0 e1                                      mov r0, r7
0083ce58  06 10 a0 e1                                      mov r1, r6
0083ce5c  00 30 97 e5                                      ldr r3, [r7]
0083ce60  0f e0 a0 e1                                      mov lr, pc
0083ce64  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083ce68  05 30 94 e7                                      ldr r3, [r4, r5]
0083ce6c  01 1a 8d e2                                      add r1, sp, #0x1000
0083ce70  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0083ce74  00 30 93 e5                                      ldr r3, [r3]
0083ce78  03 00 52 e1                                      cmp r2, r3
0083ce7c  02 00 00 1a                                      bne #0x83ce8c
0083ce80  10 d0 8d e2                                      add sp, sp, #0x10
0083ce84  01 da 8d e2                                      add sp, sp, #0x1000
0083ce88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083ce8c  1f 45 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083ce90  b8 7c 15 00 ac 40 00 00 b4 0d 0d 00 ac 0d 0d 00  .byte 0xb8, 0x7c, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0x0d, 0x0d, 0x00, 0xac, 0x0d, 0x0d, 0x00

; FUNCTION 0x0083cea0, declared_size=232, range_size=232, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15sendSetUserMindEPc
; demangled: GLXPlayerUser::sendSetUserMind(char*)
; decoder-mode: arm
0083cea0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083cea4  cc 40 9f e5                                      ldr r4, [pc, #0xcc]
0083cea8  cc 60 9f e5                                      ldr r6, [pc, #0xcc]
0083ceac  01 da 4d e2                                      sub sp, sp, #0x1000
0083ceb0  04 40 8f e0                                      add r4, pc, r4
0083ceb4  06 30 94 e7                                      ldr r3, [r4, r6]
0083ceb8  10 d0 4d e2                                      sub sp, sp, #0x10
0083cebc  00 80 51 e2                                      subs r8, r1, #0
0083cec0  00 30 93 e5                                      ldr r3, [r3]
0083cec4  01 1a 8d e2                                      add r1, sp, #0x1000
0083cec8  00 70 a0 e1                                      mov r7, r0
0083cecc  0c 30 81 e5                                      str r3, [r1, #0xc]
0083ced0  0a 00 00 0a                                      beq #0x83cf00
0083ced4  10 50 8d e2                                      add r5, sp, #0x10
0083ced8  04 50 45 e2                                      sub r5, r5, #4
0083cedc  00 10 a0 e3                                      mov r1, #0
0083cee0  01 2a a0 e3                                      mov r2, #0x1000
0083cee4  05 00 a0 e1                                      mov r0, r5
0083cee8  5c 45 eb eb                                      bl #0x30e460
0083ceec  08 00 a0 e1                                      mov r0, r8
0083cef0  2d b8 ff eb                                      bl #0x82afac
0083cef4  01 00 40 e2                                      sub r0, r0, #1
0083cef8  fe 00 50 e3                                      cmp r0, #0xfe
0083cefc  09 00 00 9a                                      bls #0x83cf28
0083cf00  00 00 a0 e3                                      mov r0, #0
0083cf04  06 30 94 e7                                      ldr r3, [r4, r6]
0083cf08  01 1a 8d e2                                      add r1, sp, #0x1000
0083cf0c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0083cf10  00 30 93 e5                                      ldr r3, [r3]
0083cf14  03 00 52 e1                                      cmp r2, r3
0083cf18  15 00 00 1a                                      bne #0x83cf74
0083cf1c  10 d0 8d e2                                      add sp, sp, #0x10
0083cf20  01 da 8d e2                                      add sp, sp, #0x1000
0083cf24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083cf28  50 10 9f e5                                      ldr r1, [pc, #0x50]
0083cf2c  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0083cf30  08 30 97 e5                                      ldr r3, [r7, #8]
0083cf34  6e 20 a0 e3                                      mov r2, #0x6e
0083cf38  01 10 8f e0                                      add r1, pc, r1
0083cf3c  05 00 a0 e1                                      mov r0, r5
0083cf40  00 c0 8d e5                                      str ip, [sp]
0083cf44  04 80 8d e5                                      str r8, [sp, #4]
0083cf48  e5 46 eb eb                                      bl #0x30eae4
0083cf4c  30 00 9f e5                                      ldr r0, [pc, #0x30]
0083cf50  05 10 a0 e1                                      mov r1, r5
0083cf54  00 00 8f e0                                      add r0, pc, r0
0083cf58  09 ba ff eb                                      bl #0x82b784
0083cf5c  07 00 a0 e1                                      mov r0, r7
0083cf60  05 10 a0 e1                                      mov r1, r5
0083cf64  00 30 97 e5                                      ldr r3, [r7]
0083cf68  0f e0 a0 e1                                      mov lr, pc
0083cf6c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083cf70  e3 ff ff ea                                      b #0x83cf04
0083cf74  e5 44 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083cf78  e0 7b 15 00 ac 40 00 00 f0 0c 0d 00 ec 0c 0d 00  .byte 0xe0, 0x7b, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0x0c, 0x0d, 0x00, 0xec, 0x0c, 0x0d, 0x00

; FUNCTION 0x0083cf88, declared_size=248, range_size=248, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser16sendSetUserStateEi
; demangled: GLXPlayerUser::sendSetUserState(int)
; decoder-mode: arm
0083cf88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083cf8c  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
0083cf90  dc 60 9f e5                                      ldr r6, [pc, #0xdc]
0083cf94  01 da 4d e2                                      sub sp, sp, #0x1000
0083cf98  04 40 8f e0                                      add r4, pc, r4
0083cf9c  06 30 94 e7                                      ldr r3, [r4, r6]
0083cfa0  02 20 41 e2                                      sub r2, r1, #2
0083cfa4  10 d0 4d e2                                      sub sp, sp, #0x10
0083cfa8  00 30 93 e5                                      ldr r3, [r3]
0083cfac  01 70 a0 e1                                      mov r7, r1
0083cfb0  01 00 52 e3                                      cmp r2, #1
0083cfb4  01 1a 8d e2                                      add r1, sp, #0x1000
0083cfb8  00 50 a0 e1                                      mov r5, r0
0083cfbc  0c 30 81 e5                                      str r3, [r1, #0xc]
0083cfc0  10 00 00 9a                                      bls #0x83d008
0083cfc4  04 30 90 e5                                      ldr r3, [r0, #4]
0083cfc8  61 10 a0 e3                                      mov r1, #0x61
0083cfcc  63 20 e0 e3                                      mvn r2, #0x63
0083cfd0  03 00 a0 e1                                      mov r0, r3
0083cfd4  00 30 93 e5                                      ldr r3, [r3]
0083cfd8  0f e0 a0 e1                                      mov lr, pc
0083cfdc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083cfe0  00 00 a0 e3                                      mov r0, #0
0083cfe4  06 30 94 e7                                      ldr r3, [r4, r6]
0083cfe8  01 1a 8d e2                                      add r1, sp, #0x1000
0083cfec  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0083cff0  00 30 93 e5                                      ldr r3, [r3]
0083cff4  03 00 52 e1                                      cmp r2, r3
0083cff8  1b 00 00 1a                                      bne #0x83d06c
0083cffc  10 d0 8d e2                                      add sp, sp, #0x10
0083d000  01 da 8d e2                                      add sp, sp, #0x1000
0083d004  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083d008  10 80 8d e2                                      add r8, sp, #0x10
0083d00c  04 80 48 e2                                      sub r8, r8, #4
0083d010  08 00 a0 e1                                      mov r0, r8
0083d014  00 10 a0 e3                                      mov r1, #0
0083d018  01 2a a0 e3                                      mov r2, #0x1000
0083d01c  d0 b8 ff eb                                      bl #0x82b364
0083d020  50 10 9f e5                                      ldr r1, [pc, #0x50]
0083d024  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0083d028  08 30 95 e5                                      ldr r3, [r5, #8]
0083d02c  61 20 a0 e3                                      mov r2, #0x61
0083d030  01 10 8f e0                                      add r1, pc, r1
0083d034  08 00 a0 e1                                      mov r0, r8
0083d038  00 c0 8d e5                                      str ip, [sp]
0083d03c  04 70 8d e5                                      str r7, [sp, #4]
0083d040  a7 46 eb eb                                      bl #0x30eae4
0083d044  30 00 9f e5                                      ldr r0, [pc, #0x30]
0083d048  08 10 a0 e1                                      mov r1, r8
0083d04c  00 00 8f e0                                      add r0, pc, r0
0083d050  cb b9 ff eb                                      bl #0x82b784
0083d054  05 00 a0 e1                                      mov r0, r5
0083d058  08 10 a0 e1                                      mov r1, r8
0083d05c  00 30 95 e5                                      ldr r3, [r5]
0083d060  0f e0 a0 e1                                      mov lr, pc
0083d064  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d068  dd ff ff ea                                      b #0x83cfe4
0083d06c  a7 44 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083d070  f8 7a 15 00 ac 40 00 00 40 0c 0d 00 3c 0c 0d 00  .byte 0xf8, 0x7a, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x40, 0x0c, 0x0d, 0x00, 0x3c, 0x0c, 0x0d, 0x00

; FUNCTION 0x0083d080, declared_size=188, range_size=188, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser18sendGetChatWarningEv
; demangled: GLXPlayerUser::sendGetChatWarning()
; decoder-mode: arm
0083d080  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0083d084  70 40 2d e9                                      push {r4, r5, r6, lr}
0083d088  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0083d08c  03 30 8f e0                                      add r3, pc, r3
0083d090  01 da 4d e2                                      sub sp, sp, #0x1000
0083d094  02 60 93 e7                                      ldr r6, [r3, r2]
0083d098  10 d0 4d e2                                      sub sp, sp, #0x10
0083d09c  01 2a a0 e3                                      mov r2, #0x1000
0083d0a0  00 c0 96 e5                                      ldr ip, [r6]
0083d0a4  10 50 8d e2                                      add r5, sp, #0x10
0083d0a8  02 e0 8d e0                                      add lr, sp, r2
0083d0ac  04 50 45 e2                                      sub r5, r5, #4
0083d0b0  00 40 a0 e1                                      mov r4, r0
0083d0b4  0c c0 8e e5                                      str ip, [lr, #0xc]
0083d0b8  05 00 a0 e1                                      mov r0, r5
0083d0bc  00 10 a0 e3                                      mov r1, #0
0083d0c0  a7 b8 ff eb                                      bl #0x82b364
0083d0c4  68 10 9f e5                                      ldr r1, [pc, #0x68]
0083d0c8  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0083d0cc  08 30 94 e5                                      ldr r3, [r4, #8]
0083d0d0  63 20 a0 e3                                      mov r2, #0x63
0083d0d4  01 10 8f e0                                      add r1, pc, r1
0083d0d8  05 00 a0 e1                                      mov r0, r5
0083d0dc  00 c0 8d e5                                      str ip, [sp]
0083d0e0  7f 46 eb eb                                      bl #0x30eae4
0083d0e4  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
0083d0e8  05 10 a0 e1                                      mov r1, r5
0083d0ec  00 00 8f e0                                      add r0, pc, r0
0083d0f0  a3 b9 ff eb                                      bl #0x82b784
0083d0f4  00 30 94 e5                                      ldr r3, [r4]
0083d0f8  04 00 a0 e1                                      mov r0, r4
0083d0fc  05 10 a0 e1                                      mov r1, r5
0083d100  0f e0 a0 e1                                      mov lr, pc
0083d104  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d108  01 3a 8d e2                                      add r3, sp, #0x1000
0083d10c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0083d110  00 30 96 e5                                      ldr r3, [r6]
0083d114  03 00 52 e1                                      cmp r2, r3
0083d118  02 00 00 1a                                      bne #0x83d128
0083d11c  10 d0 8d e2                                      add sp, sp, #0x10
0083d120  01 da 8d e2                                      add sp, sp, #0x1000
0083d124  70 80 bd e8                                      pop {r4, r5, r6, pc}
0083d128  78 44 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083d12c  04 7a 15 00 ac 40 00 00 9c f3 0c 00 cc 0b 0d 00  .byte 0x04, 0x7a, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x9c, 0xf3, 0x0c, 0x00, 0xcc, 0x0b, 0x0d, 0x00

; FUNCTION 0x0083d13c, declared_size=196, range_size=196, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser20sendGetAdvAttachmentEi
; demangled: GLXPlayerUser::sendGetAdvAttachment(int)
; decoder-mode: arm
0083d13c  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0083d140  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0083d144  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0083d148  03 30 8f e0                                      add r3, pc, r3
0083d14c  01 da 4d e2                                      sub sp, sp, #0x1000
0083d150  02 60 93 e7                                      ldr r6, [r3, r2]
0083d154  14 d0 4d e2                                      sub sp, sp, #0x14
0083d158  01 2a a0 e3                                      mov r2, #0x1000
0083d15c  00 c0 96 e5                                      ldr ip, [r6]
0083d160  10 50 8d e2                                      add r5, sp, #0x10
0083d164  02 e0 8d e0                                      add lr, sp, r2
0083d168  04 50 45 e2                                      sub r5, r5, #4
0083d16c  00 40 a0 e1                                      mov r4, r0
0083d170  0c c0 8e e5                                      str ip, [lr, #0xc]
0083d174  01 70 a0 e1                                      mov r7, r1
0083d178  05 00 a0 e1                                      mov r0, r5
0083d17c  00 10 a0 e3                                      mov r1, #0
0083d180  77 b8 ff eb                                      bl #0x82b364
0083d184  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0083d188  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0083d18c  08 30 94 e5                                      ldr r3, [r4, #8]
0083d190  59 20 a0 e3                                      mov r2, #0x59
0083d194  01 10 8f e0                                      add r1, pc, r1
0083d198  05 00 a0 e1                                      mov r0, r5
0083d19c  00 c0 8d e5                                      str ip, [sp]
0083d1a0  04 70 8d e5                                      str r7, [sp, #4]
0083d1a4  4e 46 eb eb                                      bl #0x30eae4
0083d1a8  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
0083d1ac  05 10 a0 e1                                      mov r1, r5
0083d1b0  00 00 8f e0                                      add r0, pc, r0
0083d1b4  72 b9 ff eb                                      bl #0x82b784
0083d1b8  00 30 94 e5                                      ldr r3, [r4]
0083d1bc  04 00 a0 e1                                      mov r0, r4
0083d1c0  05 10 a0 e1                                      mov r1, r5
0083d1c4  0f e0 a0 e1                                      mov lr, pc
0083d1c8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d1cc  01 3a 8d e2                                      add r3, sp, #0x1000
0083d1d0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0083d1d4  00 30 96 e5                                      ldr r3, [r6]
0083d1d8  03 00 52 e1                                      cmp r2, r3
0083d1dc  02 00 00 1a                                      bne #0x83d1ec
0083d1e0  14 d0 8d e2                                      add sp, sp, #0x14
0083d1e4  01 da 8d e2                                      add sp, sp, #0x1000
0083d1e8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0083d1ec  47 44 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083d1f0  48 79 15 00 ac 40 00 00 dc 0a 0d 00 40 0b 0d 00  .byte 0x48, 0x79, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x0a, 0x0d, 0x00, 0x40, 0x0b, 0x0d, 0x00

; FUNCTION 0x0083d200, declared_size=248, range_size=248, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser13sendGetAdvRSSEi
; demangled: GLXPlayerUser::sendGetAdvRSS(int)
; decoder-mode: arm
0083d200  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083d204  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0083d208  d8 70 9f e5                                      ldr r7, [pc, #0xd8]
0083d20c  01 da 4d e2                                      sub sp, sp, #0x1000
0083d210  04 40 8f e0                                      add r4, pc, r4
0083d214  07 30 94 e7                                      ldr r3, [r4, r7]
0083d218  10 d0 4d e2                                      sub sp, sp, #0x10
0083d21c  01 2a a0 e3                                      mov r2, #0x1000
0083d220  00 30 93 e5                                      ldr r3, [r3]
0083d224  10 50 8d e2                                      add r5, sp, #0x10
0083d228  02 c0 8d e0                                      add ip, sp, r2
0083d22c  04 50 45 e2                                      sub r5, r5, #4
0083d230  01 80 a0 e1                                      mov r8, r1
0083d234  00 60 a0 e1                                      mov r6, r0
0083d238  00 10 a0 e3                                      mov r1, #0
0083d23c  05 00 a0 e1                                      mov r0, r5
0083d240  0c 30 8c e5                                      str r3, [ip, #0xc]
0083d244  46 b8 ff eb                                      bl #0x82b364
0083d248  01 00 78 e3                                      cmn r8, #1
0083d24c  1a 00 00 0a                                      beq #0x83d2bc
0083d250  94 10 9f e5                                      ldr r1, [pc, #0x94]
0083d254  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083d258  08 30 96 e5                                      ldr r3, [r6, #8]
0083d25c  01 10 8f e0                                      add r1, pc, r1
0083d260  05 00 a0 e1                                      mov r0, r5
0083d264  58 20 a0 e3                                      mov r2, #0x58
0083d268  00 c0 8d e5                                      str ip, [sp]
0083d26c  04 80 8d e5                                      str r8, [sp, #4]
0083d270  1b 46 eb eb                                      bl #0x30eae4
0083d274  74 00 9f e5                                      ldr r0, [pc, #0x74]
0083d278  05 10 a0 e1                                      mov r1, r5
0083d27c  00 00 8f e0                                      add r0, pc, r0
0083d280  3f b9 ff eb                                      bl #0x82b784
0083d284  05 10 a0 e1                                      mov r1, r5
0083d288  00 30 96 e5                                      ldr r3, [r6]
0083d28c  06 00 a0 e1                                      mov r0, r6
0083d290  0f e0 a0 e1                                      mov lr, pc
0083d294  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0083d298  07 30 94 e7                                      ldr r3, [r4, r7]
0083d29c  01 1a 8d e2                                      add r1, sp, #0x1000
0083d2a0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0083d2a4  00 30 93 e5                                      ldr r3, [r3]
0083d2a8  03 00 52 e1                                      cmp r2, r3
0083d2ac  0b 00 00 1a                                      bne #0x83d2e0
0083d2b0  10 d0 8d e2                                      add sp, sp, #0x10
0083d2b4  01 da 8d e2                                      add sp, sp, #0x1000
0083d2b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083d2bc  30 10 9f e5                                      ldr r1, [pc, #0x30]
0083d2c0  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083d2c4  08 30 96 e5                                      ldr r3, [r6, #8]
0083d2c8  01 10 8f e0                                      add r1, pc, r1
0083d2cc  05 00 a0 e1                                      mov r0, r5
0083d2d0  58 20 a0 e3                                      mov r2, #0x58
0083d2d4  00 c0 8d e5                                      str ip, [sp]
0083d2d8  01 46 eb eb                                      bl #0x30eae4
0083d2dc  e4 ff ff ea                                      b #0x83d274
0083d2e0  0a 44 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083d2e4  80 78 15 00 ac 40 00 00 dc 0a 0d 00 d4 0a 0d 00  .byte 0x80, 0x78, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x0a, 0x0d, 0x00, 0xd4, 0x0a, 0x0d, 0x00
0083d2f4  a8 f1 0c 00                                      .byte 0xa8, 0xf1, 0x0c, 0x00

; FUNCTION 0x0083d2f8, declared_size=248, range_size=248, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser21sendGetGameTrophyListEi
; demangled: GLXPlayerUser::sendGetGameTrophyList(int)
; decoder-mode: arm
0083d2f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083d2fc  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0083d300  d8 70 9f e5                                      ldr r7, [pc, #0xd8]
0083d304  01 da 4d e2                                      sub sp, sp, #0x1000
0083d308  04 40 8f e0                                      add r4, pc, r4
0083d30c  07 30 94 e7                                      ldr r3, [r4, r7]
0083d310  10 d0 4d e2                                      sub sp, sp, #0x10
0083d314  01 2a a0 e3                                      mov r2, #0x1000
0083d318  00 30 93 e5                                      ldr r3, [r3]
0083d31c  10 50 8d e2                                      add r5, sp, #0x10
0083d320  02 c0 8d e0                                      add ip, sp, r2
0083d324  04 50 45 e2                                      sub r5, r5, #4
0083d328  01 80 a0 e1                                      mov r8, r1
0083d32c  00 60 a0 e1                                      mov r6, r0
0083d330  00 10 a0 e3                                      mov r1, #0
0083d334  05 00 a0 e1                                      mov r0, r5
0083d338  0c 30 8c e5                                      str r3, [ip, #0xc]
0083d33c  08 b8 ff eb                                      bl #0x82b364
0083d340  01 00 78 e3                                      cmn r8, #1
0083d344  1a 00 00 0a                                      beq #0x83d3b4
0083d348  94 10 9f e5                                      ldr r1, [pc, #0x94]
0083d34c  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083d350  08 30 96 e5                                      ldr r3, [r6, #8]
0083d354  01 10 8f e0                                      add r1, pc, r1
0083d358  05 00 a0 e1                                      mov r0, r5
0083d35c  56 20 a0 e3                                      mov r2, #0x56
0083d360  00 c0 8d e5                                      str ip, [sp]
0083d364  04 80 8d e5                                      str r8, [sp, #4]
0083d368  dd 45 eb eb                                      bl #0x30eae4
0083d36c  74 00 9f e5                                      ldr r0, [pc, #0x74]
0083d370  05 10 a0 e1                                      mov r1, r5
0083d374  00 00 8f e0                                      add r0, pc, r0
0083d378  01 b9 ff eb                                      bl #0x82b784
0083d37c  05 10 a0 e1                                      mov r1, r5
0083d380  00 30 96 e5                                      ldr r3, [r6]
0083d384  06 00 a0 e1                                      mov r0, r6
0083d388  0f e0 a0 e1                                      mov lr, pc
0083d38c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d390  07 30 94 e7                                      ldr r3, [r4, r7]
0083d394  01 1a 8d e2                                      add r1, sp, #0x1000
0083d398  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0083d39c  00 30 93 e5                                      ldr r3, [r3]
0083d3a0  03 00 52 e1                                      cmp r2, r3
0083d3a4  0b 00 00 1a                                      bne #0x83d3d8
0083d3a8  10 d0 8d e2                                      add sp, sp, #0x10
0083d3ac  01 da 8d e2                                      add sp, sp, #0x1000
0083d3b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083d3b4  30 10 9f e5                                      ldr r1, [pc, #0x30]
0083d3b8  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083d3bc  08 30 96 e5                                      ldr r3, [r6, #8]
0083d3c0  01 10 8f e0                                      add r1, pc, r1
0083d3c4  05 00 a0 e1                                      mov r0, r5
0083d3c8  56 20 a0 e3                                      mov r2, #0x56
0083d3cc  00 c0 8d e5                                      str ip, [sp]
0083d3d0  c3 45 eb eb                                      bl #0x30eae4
0083d3d4  e4 ff ff ea                                      b #0x83d36c
0083d3d8  cc 43 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083d3dc  88 77 15 00 ac 40 00 00 e4 09 0d 00 1c 0a 0d 00  .byte 0x88, 0x77, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x09, 0x0d, 0x00, 0x1c, 0x0a, 0x0d, 0x00
0083d3ec  b0 f0 0c 00                                      .byte 0xb0, 0xf0, 0x0c, 0x00

; FUNCTION 0x0083d3f0, declared_size=224, range_size=224, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17sendGetTrophyIconEii
; demangled: GLXPlayerUser::sendGetTrophyIcon(int, int)
; decoder-mode: arm
0083d3f0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0083d3f4  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
0083d3f8  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
0083d3fc  01 da 4d e2                                      sub sp, sp, #0x1000
0083d400  04 40 8f e0                                      add r4, pc, r4
0083d404  05 30 94 e7                                      ldr r3, [r4, r5]
0083d408  1c d0 4d e2                                      sub sp, sp, #0x1c
0083d40c  02 00 52 e3                                      cmp r2, #2
0083d410  00 30 93 e5                                      ldr r3, [r3]
0083d414  01 a0 a0 e1                                      mov sl, r1
0083d418  01 1a 8d e2                                      add r1, sp, #0x1000
0083d41c  00 60 a0 e1                                      mov r6, r0
0083d420  02 70 a0 e1                                      mov r7, r2
0083d424  14 30 81 e5                                      str r3, [r1, #0x14]
0083d428  00 00 a0 83                                      movhi r0, #0
0083d42c  19 00 00 8a                                      bhi #0x83d498
0083d430  18 80 8d e2                                      add r8, sp, #0x18
0083d434  04 80 48 e2                                      sub r8, r8, #4
0083d438  d4 20 86 e5                                      str r2, [r6, #0xd4]
0083d43c  08 00 a0 e1                                      mov r0, r8
0083d440  00 10 a0 e3                                      mov r1, #0
0083d444  01 2a a0 e3                                      mov r2, #0x1000
0083d448  c5 b7 ff eb                                      bl #0x82b364
0083d44c  74 10 9f e5                                      ldr r1, [pc, #0x74]
0083d450  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083d454  08 30 96 e5                                      ldr r3, [r6, #8]
0083d458  01 10 8f e0                                      add r1, pc, r1
0083d45c  54 20 a0 e3                                      mov r2, #0x54
0083d460  08 00 a0 e1                                      mov r0, r8
0083d464  00 c0 8d e5                                      str ip, [sp]
0083d468  04 a0 8d e5                                      str sl, [sp, #4]
0083d46c  08 70 8d e5                                      str r7, [sp, #8]
0083d470  9b 45 eb eb                                      bl #0x30eae4
0083d474  50 00 9f e5                                      ldr r0, [pc, #0x50]
0083d478  08 10 a0 e1                                      mov r1, r8
0083d47c  00 00 8f e0                                      add r0, pc, r0
0083d480  bf b8 ff eb                                      bl #0x82b784
0083d484  06 00 a0 e1                                      mov r0, r6
0083d488  08 10 a0 e1                                      mov r1, r8
0083d48c  00 30 96 e5                                      ldr r3, [r6]
0083d490  0f e0 a0 e1                                      mov lr, pc
0083d494  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d498  05 30 94 e7                                      ldr r3, [r4, r5]
0083d49c  01 1a 8d e2                                      add r1, sp, #0x1000
0083d4a0  14 20 91 e5                                      ldr r2, [r1, #0x14]
0083d4a4  00 30 93 e5                                      ldr r3, [r3]
0083d4a8  03 00 52 e1                                      cmp r2, r3
0083d4ac  02 00 00 1a                                      bne #0x83d4bc
0083d4b0  1c d0 8d e2                                      add sp, sp, #0x1c
0083d4b4  01 da 8d e2                                      add sp, sp, #0x1000
0083d4b8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0083d4bc  93 43 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083d4c0  90 76 15 00 ac 40 00 00 80 09 0d 00 7c 09 0d 00  .byte 0x90, 0x76, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x80, 0x09, 0x0d, 0x00, 0x7c, 0x09, 0x0d, 0x00

; FUNCTION 0x0083d4d0, declared_size=240, range_size=240, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser20sendDelUserStoreDataEPc
; demangled: GLXPlayerUser::sendDelUserStoreData(char*)
; decoder-mode: arm
0083d4d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083d4d4  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
0083d4d8  d4 70 9f e5                                      ldr r7, [pc, #0xd4]
0083d4dc  01 da 4d e2                                      sub sp, sp, #0x1000
0083d4e0  04 40 8f e0                                      add r4, pc, r4
0083d4e4  07 30 94 e7                                      ldr r3, [r4, r7]
0083d4e8  10 d0 4d e2                                      sub sp, sp, #0x10
0083d4ec  00 80 51 e2                                      subs r8, r1, #0
0083d4f0  00 30 93 e5                                      ldr r3, [r3]
0083d4f4  01 1a 8d e2                                      add r1, sp, #0x1000
0083d4f8  00 50 a0 e1                                      mov r5, r0
0083d4fc  0c 30 81 e5                                      str r3, [r1, #0xc]
0083d500  20 00 00 0a                                      beq #0x83d588
0083d504  10 60 8d e2                                      add r6, sp, #0x10
0083d508  04 60 46 e2                                      sub r6, r6, #4
0083d50c  06 00 a0 e1                                      mov r0, r6
0083d510  00 10 a0 e3                                      mov r1, #0
0083d514  01 2a a0 e3                                      mov r2, #0x1000
0083d518  91 b7 ff eb                                      bl #0x82b364
0083d51c  94 10 9f e5                                      ldr r1, [pc, #0x94]
0083d520  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0083d524  08 30 95 e5                                      ldr r3, [r5, #8]
0083d528  01 10 8f e0                                      add r1, pc, r1
0083d52c  48 20 a0 e3                                      mov r2, #0x48
0083d530  06 00 a0 e1                                      mov r0, r6
0083d534  00 c0 8d e5                                      str ip, [sp]
0083d538  04 80 8d e5                                      str r8, [sp, #4]
0083d53c  68 45 eb eb                                      bl #0x30eae4
0083d540  74 00 9f e5                                      ldr r0, [pc, #0x74]
0083d544  06 10 a0 e1                                      mov r1, r6
0083d548  00 00 8f e0                                      add r0, pc, r0
0083d54c  8c b8 ff eb                                      bl #0x82b784
0083d550  05 00 a0 e1                                      mov r0, r5
0083d554  06 10 a0 e1                                      mov r1, r6
0083d558  00 30 95 e5                                      ldr r3, [r5]
0083d55c  0f e0 a0 e1                                      mov lr, pc
0083d560  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d564  07 30 94 e7                                      ldr r3, [r4, r7]
0083d568  01 1a 8d e2                                      add r1, sp, #0x1000
0083d56c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0083d570  00 30 93 e5                                      ldr r3, [r3]
0083d574  03 00 52 e1                                      cmp r2, r3
0083d578  0b 00 00 1a                                      bne #0x83d5ac
0083d57c  10 d0 8d e2                                      add sp, sp, #0x10
0083d580  01 da 8d e2                                      add sp, sp, #0x1000
0083d584  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083d588  04 30 90 e5                                      ldr r3, [r0, #4]
0083d58c  48 10 a0 e3                                      mov r1, #0x48
0083d590  63 20 e0 e3                                      mvn r2, #0x63
0083d594  03 00 a0 e1                                      mov r0, r3
0083d598  00 30 93 e5                                      ldr r3, [r3]
0083d59c  0f e0 a0 e1                                      mov lr, pc
0083d5a0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d5a4  08 00 a0 e1                                      mov r0, r8
0083d5a8  ed ff ff ea                                      b #0x83d564
0083d5ac  57 43 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083d5b0  b0 75 15 00 ac 40 00 00 18 09 0d 00 10 09 0d 00  .byte 0xb0, 0x75, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x18, 0x09, 0x0d, 0x00, 0x10, 0x09, 0x0d, 0x00

; FUNCTION 0x0083d5c0, declared_size=188, range_size=188, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser21sendGetUserAvatarListEv
; demangled: GLXPlayerUser::sendGetUserAvatarList()
; decoder-mode: arm
0083d5c0  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0083d5c4  70 40 2d e9                                      push {r4, r5, r6, lr}
0083d5c8  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0083d5cc  03 30 8f e0                                      add r3, pc, r3
0083d5d0  01 da 4d e2                                      sub sp, sp, #0x1000
0083d5d4  02 60 93 e7                                      ldr r6, [r3, r2]
0083d5d8  10 d0 4d e2                                      sub sp, sp, #0x10
0083d5dc  01 2a a0 e3                                      mov r2, #0x1000
0083d5e0  00 c0 96 e5                                      ldr ip, [r6]
0083d5e4  10 50 8d e2                                      add r5, sp, #0x10
0083d5e8  02 e0 8d e0                                      add lr, sp, r2
0083d5ec  04 50 45 e2                                      sub r5, r5, #4
0083d5f0  00 40 a0 e1                                      mov r4, r0
0083d5f4  0c c0 8e e5                                      str ip, [lr, #0xc]
0083d5f8  05 00 a0 e1                                      mov r0, r5
0083d5fc  00 10 a0 e3                                      mov r1, #0
0083d600  57 b7 ff eb                                      bl #0x82b364
0083d604  68 10 9f e5                                      ldr r1, [pc, #0x68]
0083d608  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0083d60c  08 30 94 e5                                      ldr r3, [r4, #8]
0083d610  67 20 a0 e3                                      mov r2, #0x67
0083d614  01 10 8f e0                                      add r1, pc, r1
0083d618  05 00 a0 e1                                      mov r0, r5
0083d61c  00 c0 8d e5                                      str ip, [sp]
0083d620  2f 45 eb eb                                      bl #0x30eae4
0083d624  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
0083d628  05 10 a0 e1                                      mov r1, r5
0083d62c  00 00 8f e0                                      add r0, pc, r0
0083d630  53 b8 ff eb                                      bl #0x82b784
0083d634  00 30 94 e5                                      ldr r3, [r4]
0083d638  04 00 a0 e1                                      mov r0, r4
0083d63c  05 10 a0 e1                                      mov r1, r5
0083d640  0f e0 a0 e1                                      mov lr, pc
0083d644  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d648  01 3a 8d e2                                      add r3, sp, #0x1000
0083d64c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0083d650  00 30 96 e5                                      ldr r3, [r6]
0083d654  03 00 52 e1                                      cmp r2, r3
0083d658  02 00 00 1a                                      bne #0x83d668
0083d65c  10 d0 8d e2                                      add sp, sp, #0x10
0083d660  01 da 8d e2                                      add sp, sp, #0x1000
0083d664  70 80 bd e8                                      pop {r4, r5, r6, pc}
0083d668  28 43 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083d66c  c4 74 15 00 ac 40 00 00 5c ee 0c 00 74 08 0d 00  .byte 0xc4, 0x74, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x5c, 0xee, 0x0c, 0x00, 0x74, 0x08, 0x0d, 0x00

; FUNCTION 0x0083d67c, declared_size=256, range_size=256, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17sendDelUserAvatarEPc
; demangled: GLXPlayerUser::sendDelUserAvatar(char*)
; decoder-mode: arm
0083d67c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083d680  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
0083d684  e4 70 9f e5                                      ldr r7, [pc, #0xe4]
0083d688  01 da 4d e2                                      sub sp, sp, #0x1000
0083d68c  05 50 8f e0                                      add r5, pc, r5
0083d690  07 30 95 e7                                      ldr r3, [r5, r7]
0083d694  10 d0 4d e2                                      sub sp, sp, #0x10
0083d698  00 80 51 e2                                      subs r8, r1, #0
0083d69c  00 30 93 e5                                      ldr r3, [r3]
0083d6a0  01 1a 8d e2                                      add r1, sp, #0x1000
0083d6a4  00 60 a0 e1                                      mov r6, r0
0083d6a8  0c 30 81 e5                                      str r3, [r1, #0xc]
0083d6ac  24 00 00 0a                                      beq #0x83d744
0083d6b0  10 40 8d e2                                      add r4, sp, #0x10
0083d6b4  04 40 44 e2                                      sub r4, r4, #4
0083d6b8  00 10 a0 e3                                      mov r1, #0
0083d6bc  01 2a a0 e3                                      mov r2, #0x1000
0083d6c0  04 00 a0 e1                                      mov r0, r4
0083d6c4  65 43 eb eb                                      bl #0x30e460
0083d6c8  04 00 a0 e1                                      mov r0, r4
0083d6cc  00 10 a0 e3                                      mov r1, #0
0083d6d0  01 2a a0 e3                                      mov r2, #0x1000
0083d6d4  22 b7 ff eb                                      bl #0x82b364
0083d6d8  94 10 9f e5                                      ldr r1, [pc, #0x94]
0083d6dc  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083d6e0  08 30 96 e5                                      ldr r3, [r6, #8]
0083d6e4  01 10 8f e0                                      add r1, pc, r1
0083d6e8  66 20 a0 e3                                      mov r2, #0x66
0083d6ec  04 00 a0 e1                                      mov r0, r4
0083d6f0  00 c0 8d e5                                      str ip, [sp]
0083d6f4  04 80 8d e5                                      str r8, [sp, #4]
0083d6f8  f9 44 eb eb                                      bl #0x30eae4
0083d6fc  74 00 9f e5                                      ldr r0, [pc, #0x74]
0083d700  04 10 a0 e1                                      mov r1, r4
0083d704  00 00 8f e0                                      add r0, pc, r0
0083d708  1d b8 ff eb                                      bl #0x82b784
0083d70c  06 00 a0 e1                                      mov r0, r6
0083d710  04 10 a0 e1                                      mov r1, r4
0083d714  00 30 96 e5                                      ldr r3, [r6]
0083d718  0f e0 a0 e1                                      mov lr, pc
0083d71c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d720  07 30 95 e7                                      ldr r3, [r5, r7]
0083d724  01 1a 8d e2                                      add r1, sp, #0x1000
0083d728  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0083d72c  00 30 93 e5                                      ldr r3, [r3]
0083d730  03 00 52 e1                                      cmp r2, r3
0083d734  0b 00 00 1a                                      bne #0x83d768
0083d738  10 d0 8d e2                                      add sp, sp, #0x10
0083d73c  01 da 8d e2                                      add sp, sp, #0x1000
0083d740  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083d744  04 30 90 e5                                      ldr r3, [r0, #4]
0083d748  66 10 a0 e3                                      mov r1, #0x66
0083d74c  63 20 e0 e3                                      mvn r2, #0x63
0083d750  03 00 a0 e1                                      mov r0, r3
0083d754  00 30 93 e5                                      ldr r3, [r3]
0083d758  0f e0 a0 e1                                      mov lr, pc
0083d75c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d760  08 00 a0 e1                                      mov r0, r8
0083d764  ed ff ff ea                                      b #0x83d720
0083d768  e8 42 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083d76c  04 74 15 00 ac 40 00 00 f4 07 0d 00 ec 07 0d 00  .byte 0x04, 0x74, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x07, 0x0d, 0x00, 0xec, 0x07, 0x0d, 0x00

; FUNCTION 0x0083d77c, declared_size=208, range_size=208, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser20sendUploadUserAvatarEPc
; demangled: GLXPlayerUser::sendUploadUserAvatar(char*)
; decoder-mode: arm
0083d77c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0083d780  00 60 51 e2                                      subs r6, r1, #0
0083d784  0c d0 4d e2                                      sub sp, sp, #0xc
0083d788  00 50 a0 e1                                      mov r5, r0
0083d78c  24 00 00 0a                                      beq #0x83d824
0083d790  06 00 a0 e1                                      mov r0, r6
0083d794  04 b6 ff eb                                      bl #0x82afac
0083d798  80 70 80 e2                                      add r7, r0, #0x80
0083d79c  07 00 a0 e1                                      mov r0, r7
0083d7a0  4a 42 eb eb                                      bl #0x30e0d0
0083d7a4  07 20 a0 e1                                      mov r2, r7
0083d7a8  00 10 a0 e3                                      mov r1, #0
0083d7ac  00 40 a0 e1                                      mov r4, r0
0083d7b0  eb b6 ff eb                                      bl #0x82b364
0083d7b4  88 10 9f e5                                      ldr r1, [pc, #0x88]
0083d7b8  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0083d7bc  08 30 95 e5                                      ldr r3, [r5, #8]
0083d7c0  47 20 a0 e3                                      mov r2, #0x47
0083d7c4  01 10 8f e0                                      add r1, pc, r1
0083d7c8  04 00 a0 e1                                      mov r0, r4
0083d7cc  00 c0 8d e5                                      str ip, [sp]
0083d7d0  04 60 8d e5                                      str r6, [sp, #4]
0083d7d4  c2 44 eb eb                                      bl #0x30eae4
0083d7d8  04 00 a0 e1                                      mov r0, r4
0083d7dc  f2 b5 ff eb                                      bl #0x82afac
0083d7e0  00 10 a0 e1                                      mov r1, r0
0083d7e4  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
0083d7e8  00 00 8f e0                                      add r0, pc, r0
0083d7ec  e4 b7 ff eb                                      bl #0x82b784
0083d7f0  05 00 a0 e1                                      mov r0, r5
0083d7f4  00 30 95 e5                                      ldr r3, [r5]
0083d7f8  04 10 a0 e1                                      mov r1, r4
0083d7fc  0f e0 a0 e1                                      mov lr, pc
0083d800  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0083d804  00 00 54 e3                                      cmp r4, #0
0083d808  00 60 a0 e1                                      mov r6, r0
0083d80c  01 00 00 0a                                      beq #0x83d818
0083d810  04 00 a0 e1                                      mov r0, r4
0083d814  a5 42 eb eb                                      bl #0x30e2b0
0083d818  06 00 a0 e1                                      mov r0, r6
0083d81c  0c d0 8d e2                                      add sp, sp, #0xc
0083d820  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0083d824  04 30 90 e5                                      ldr r3, [r0, #4]
0083d828  47 10 a0 e3                                      mov r1, #0x47
0083d82c  63 20 e0 e3                                      mvn r2, #0x63
0083d830  03 00 a0 e1                                      mov r0, r3
0083d834  00 30 93 e5                                      ldr r3, [r3]
0083d838  0f e0 a0 e1                                      mov lr, pc
0083d83c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d840  f4 ff ff ea                                      b #0x83d818
; mapping-symbol data/literal pool
0083d844  14 07 0d 00 38 07 0d 00                          .byte 0x14, 0x07, 0x0d, 0x00, 0x38, 0x07, 0x0d, 0x00

; FUNCTION 0x0083d84c, declared_size=196, range_size=196, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser22sendDownloadUserAvatarEPc
; demangled: GLXPlayerUser::sendDownloadUserAvatar(char*)
; decoder-mode: arm
0083d84c  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0083d850  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0083d854  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0083d858  03 30 8f e0                                      add r3, pc, r3
0083d85c  01 da 4d e2                                      sub sp, sp, #0x1000
0083d860  02 60 93 e7                                      ldr r6, [r3, r2]
0083d864  14 d0 4d e2                                      sub sp, sp, #0x14
0083d868  01 2a a0 e3                                      mov r2, #0x1000
0083d86c  00 c0 96 e5                                      ldr ip, [r6]
0083d870  10 50 8d e2                                      add r5, sp, #0x10
0083d874  02 e0 8d e0                                      add lr, sp, r2
0083d878  04 50 45 e2                                      sub r5, r5, #4
0083d87c  00 40 a0 e1                                      mov r4, r0
0083d880  0c c0 8e e5                                      str ip, [lr, #0xc]
0083d884  01 70 a0 e1                                      mov r7, r1
0083d888  05 00 a0 e1                                      mov r0, r5
0083d88c  00 10 a0 e3                                      mov r1, #0
0083d890  b3 b6 ff eb                                      bl #0x82b364
0083d894  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0083d898  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0083d89c  08 30 94 e5                                      ldr r3, [r4, #8]
0083d8a0  65 20 a0 e3                                      mov r2, #0x65
0083d8a4  01 10 8f e0                                      add r1, pc, r1
0083d8a8  05 00 a0 e1                                      mov r0, r5
0083d8ac  00 c0 8d e5                                      str ip, [sp]
0083d8b0  04 70 8d e5                                      str r7, [sp, #4]
0083d8b4  8a 44 eb eb                                      bl #0x30eae4
0083d8b8  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
0083d8bc  05 10 a0 e1                                      mov r1, r5
0083d8c0  00 00 8f e0                                      add r0, pc, r0
0083d8c4  ae b7 ff eb                                      bl #0x82b784
0083d8c8  00 30 94 e5                                      ldr r3, [r4]
0083d8cc  04 00 a0 e1                                      mov r0, r4
0083d8d0  05 10 a0 e1                                      mov r1, r5
0083d8d4  0f e0 a0 e1                                      mov lr, pc
0083d8d8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d8dc  01 3a 8d e2                                      add r3, sp, #0x1000
0083d8e0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0083d8e4  00 30 96 e5                                      ldr r3, [r6]
0083d8e8  03 00 52 e1                                      cmp r2, r3
0083d8ec  02 00 00 1a                                      bne #0x83d8fc
0083d8f0  14 d0 8d e2                                      add sp, sp, #0x14
0083d8f4  01 da 8d e2                                      add sp, sp, #0x1000
0083d8f8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0083d8fc  83 42 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083d900  38 72 15 00 ac 40 00 00 34 06 0d 00 b0 06 0d 00  .byte 0x38, 0x72, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x06, 0x0d, 0x00, 0xb0, 0x06, 0x0d, 0x00

; FUNCTION 0x0083d910, declared_size=276, range_size=276, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser14sendGetUserUIDEPcb
; demangled: GLXPlayerUser::sendGetUserUID(char*, bool)
; decoder-mode: arm
0083d910  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0083d914  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
0083d918  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
0083d91c  01 da 4d e2                                      sub sp, sp, #0x1000
0083d920  04 40 8f e0                                      add r4, pc, r4
0083d924  07 30 94 e7                                      ldr r3, [r4, r7]
0083d928  14 d0 4d e2                                      sub sp, sp, #0x14
0083d92c  00 80 51 e2                                      subs r8, r1, #0
0083d930  00 30 93 e5                                      ldr r3, [r3]
0083d934  01 1a 8d e2                                      add r1, sp, #0x1000
0083d938  00 50 a0 e1                                      mov r5, r0
0083d93c  02 a0 a0 e1                                      mov sl, r2
0083d940  0c 30 81 e5                                      str r3, [r1, #0xc]
0083d944  27 00 00 0a                                      beq #0x83d9e8
0083d948  10 60 8d e2                                      add r6, sp, #0x10
0083d94c  04 60 46 e2                                      sub r6, r6, #4
0083d950  06 00 a0 e1                                      mov r0, r6
0083d954  00 10 a0 e3                                      mov r1, #0
0083d958  01 2a a0 e3                                      mov r2, #0x1000
0083d95c  80 b6 ff eb                                      bl #0x82b364
0083d960  00 00 5a e3                                      cmp sl, #0
0083d964  1a 00 00 1a                                      bne #0x83d9d4
0083d968  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0083d96c  08 30 95 e5                                      ldr r3, [r5, #8]
0083d970  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0083d974  01 10 8f e0                                      add r1, pc, r1
0083d978  3a 20 a0 e3                                      mov r2, #0x3a
0083d97c  06 00 a0 e1                                      mov r0, r6
0083d980  00 c0 8d e5                                      str ip, [sp]
0083d984  04 80 8d e5                                      str r8, [sp, #4]
0083d988  55 44 eb eb                                      bl #0x30eae4
0083d98c  88 00 9f e5                                      ldr r0, [pc, #0x88]
0083d990  06 10 a0 e1                                      mov r1, r6
0083d994  00 00 8f e0                                      add r0, pc, r0
0083d998  79 b7 ff eb                                      bl #0x82b784
0083d99c  05 00 a0 e1                                      mov r0, r5
0083d9a0  06 10 a0 e1                                      mov r1, r6
0083d9a4  00 30 95 e5                                      ldr r3, [r5]
0083d9a8  0f e0 a0 e1                                      mov lr, pc
0083d9ac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083d9b0  07 30 94 e7                                      ldr r3, [r4, r7]
0083d9b4  01 1a 8d e2                                      add r1, sp, #0x1000
0083d9b8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0083d9bc  00 30 93 e5                                      ldr r3, [r3]
0083d9c0  03 00 52 e1                                      cmp r2, r3
0083d9c4  10 00 00 1a                                      bne #0x83da0c
0083d9c8  14 d0 8d e2                                      add sp, sp, #0x14
0083d9cc  01 da 8d e2                                      add sp, sp, #0x1000
0083d9d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0083d9d4  44 10 9f e5                                      ldr r1, [pc, #0x44]
0083d9d8  08 30 95 e5                                      ldr r3, [r5, #8]
0083d9dc  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0083d9e0  01 10 8f e0                                      add r1, pc, r1
0083d9e4  e3 ff ff ea                                      b #0x83d978
0083d9e8  04 30 90 e5                                      ldr r3, [r0, #4]
0083d9ec  3a 10 a0 e3                                      mov r1, #0x3a
0083d9f0  63 20 e0 e3                                      mvn r2, #0x63
0083d9f4  03 00 a0 e1                                      mov r0, r3
0083d9f8  00 30 93 e5                                      ldr r3, [r3]
0083d9fc  0f e0 a0 e1                                      mov lr, pc
0083da00  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083da04  08 00 a0 e1                                      mov r0, r8
0083da08  e8 ff ff ea                                      b #0x83d9b0
0083da0c  3f 42 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083da10  70 71 15 00 ac 40 00 00 dc eb 0c 00 24 06 0d 00  .byte 0x70, 0x71, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0xeb, 0x0c, 0x00, 0x24, 0x06, 0x0d, 0x00
0083da20  58 eb 0c 00                                      .byte 0x58, 0xeb, 0x0c, 0x00

; FUNCTION 0x0083da24, declared_size=300, range_size=300, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser23sendPointUserReputationEPcib
; demangled: GLXPlayerUser::sendPointUserReputation(char*, int, bool)
; decoder-mode: arm
0083da24  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083da28  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0083da2c  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
0083da30  00 90 51 e2                                      subs sb, r1, #0
0083da34  04 40 8f e0                                      add r4, pc, r4
0083da38  07 10 94 e7                                      ldr r1, [r4, r7]
0083da3c  01 da 4d e2                                      sub sp, sp, #0x1000
0083da40  02 50 a0 e1                                      mov r5, r2
0083da44  00 20 91 e5                                      ldr r2, [r1]
0083da48  18 d0 4d e2                                      sub sp, sp, #0x18
0083da4c  01 1a 8d e2                                      add r1, sp, #0x1000
0083da50  00 60 a0 e1                                      mov r6, r0
0083da54  03 a0 a0 e1                                      mov sl, r3
0083da58  14 20 81 e5                                      str r2, [r1, #0x14]
0083da5c  04 00 00 0a                                      beq #0x83da74
0083da60  05 00 55 e3                                      cmp r5, #5
0083da64  01 00 55 13                                      cmpne r5, #1
0083da68  00 10 a0 03                                      moveq r1, #0
0083da6c  01 10 a0 13                                      movne r1, #1
0083da70  10 00 00 0a                                      beq #0x83dab8
0083da74  04 30 96 e5                                      ldr r3, [r6, #4]
0083da78  44 10 a0 e3                                      mov r1, #0x44
0083da7c  63 20 e0 e3                                      mvn r2, #0x63
0083da80  03 00 a0 e1                                      mov r0, r3
0083da84  00 30 93 e5                                      ldr r3, [r3]
0083da88  0f e0 a0 e1                                      mov lr, pc
0083da8c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083da90  00 00 a0 e3                                      mov r0, #0
0083da94  07 30 94 e7                                      ldr r3, [r4, r7]
0083da98  01 1a 8d e2                                      add r1, sp, #0x1000
0083da9c  14 20 91 e5                                      ldr r2, [r1, #0x14]
0083daa0  00 30 93 e5                                      ldr r3, [r3]
0083daa4  03 00 52 e1                                      cmp r2, r3
0083daa8  22 00 00 1a                                      bne #0x83db38
0083daac  18 d0 8d e2                                      add sp, sp, #0x18
0083dab0  01 da 8d e2                                      add sp, sp, #0x1000
0083dab4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083dab8  18 80 8d e2                                      add r8, sp, #0x18
0083dabc  04 80 48 e2                                      sub r8, r8, #4
0083dac0  08 00 a0 e1                                      mov r0, r8
0083dac4  01 2a a0 e3                                      mov r2, #0x1000
0083dac8  25 b6 ff eb                                      bl #0x82b364
0083dacc  00 00 5a e3                                      cmp sl, #0
0083dad0  13 00 00 1a                                      bne #0x83db24
0083dad4  68 10 9f e5                                      ldr r1, [pc, #0x68]
0083dad8  08 30 96 e5                                      ldr r3, [r6, #8]
0083dadc  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083dae0  01 10 8f e0                                      add r1, pc, r1
0083dae4  44 20 a0 e3                                      mov r2, #0x44
0083dae8  08 00 a0 e1                                      mov r0, r8
0083daec  00 c0 8d e5                                      str ip, [sp]
0083daf0  04 90 8d e5                                      str sb, [sp, #4]
0083daf4  08 50 8d e5                                      str r5, [sp, #8]
0083daf8  f9 43 eb eb                                      bl #0x30eae4
0083dafc  44 00 9f e5                                      ldr r0, [pc, #0x44]
0083db00  08 10 a0 e1                                      mov r1, r8
0083db04  00 00 8f e0                                      add r0, pc, r0
0083db08  1d b7 ff eb                                      bl #0x82b784
0083db0c  06 00 a0 e1                                      mov r0, r6
0083db10  08 10 a0 e1                                      mov r1, r8
0083db14  00 30 96 e5                                      ldr r3, [r6]
0083db18  0f e0 a0 e1                                      mov lr, pc
0083db1c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083db20  db ff ff ea                                      b #0x83da94
0083db24  20 10 9f e5                                      ldr r1, [pc, #0x20]
0083db28  08 30 96 e5                                      ldr r3, [r6, #8]
0083db2c  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083db30  01 10 8f e0                                      add r1, pc, r1
0083db34  ea ff ff ea                                      b #0x83dae4
0083db38  f4 41 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083db3c  5c 70 15 00 ac 40 00 00 40 05 0d 00 3c 05 0d 00  .byte 0x5c, 0x70, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x40, 0x05, 0x0d, 0x00, 0x3c, 0x05, 0x0d, 0x00
0083db4c  d0 04 0d 00                                      .byte 0xd0, 0x04, 0x0d, 0x00

; FUNCTION 0x0083db50, declared_size=252, range_size=252, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser20sendSetUserStoreDataEPcS0_
; demangled: GLXPlayerUser::sendSetUserStoreData(char*, char*)
; decoder-mode: arm
0083db50  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0083db54  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
0083db58  e0 70 9f e5                                      ldr r7, [pc, #0xe0]
0083db5c  01 da 4d e2                                      sub sp, sp, #0x1000
0083db60  04 40 8f e0                                      add r4, pc, r4
0083db64  07 30 94 e7                                      ldr r3, [r4, r7]
0083db68  1c d0 4d e2                                      sub sp, sp, #0x1c
0083db6c  00 80 51 e2                                      subs r8, r1, #0
0083db70  00 30 93 e5                                      ldr r3, [r3]
0083db74  01 1a 8d e2                                      add r1, sp, #0x1000
0083db78  00 50 a0 e1                                      mov r5, r0
0083db7c  02 a0 a0 e1                                      mov sl, r2
0083db80  14 30 81 e5                                      str r3, [r1, #0x14]
0083db84  22 00 00 0a                                      beq #0x83dc14
0083db88  18 60 8d e2                                      add r6, sp, #0x18
0083db8c  04 60 46 e2                                      sub r6, r6, #4
0083db90  06 00 a0 e1                                      mov r0, r6
0083db94  00 10 a0 e3                                      mov r1, #0
0083db98  01 2a a0 e3                                      mov r2, #0x1000
0083db9c  f0 b5 ff eb                                      bl #0x82b364
0083dba0  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0083dba4  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0083dba8  08 30 95 e5                                      ldr r3, [r5, #8]
0083dbac  01 10 8f e0                                      add r1, pc, r1
0083dbb0  42 20 a0 e3                                      mov r2, #0x42
0083dbb4  06 00 a0 e1                                      mov r0, r6
0083dbb8  00 c0 8d e5                                      str ip, [sp]
0083dbbc  00 05 8d e9                                      stmib sp, {r8, sl}
0083dbc0  c7 43 eb eb                                      bl #0x30eae4
0083dbc4  06 00 a0 e1                                      mov r0, r6
0083dbc8  f7 b4 ff eb                                      bl #0x82afac
0083dbcc  00 10 a0 e1                                      mov r1, r0
0083dbd0  70 00 9f e5                                      ldr r0, [pc, #0x70]
0083dbd4  00 00 8f e0                                      add r0, pc, r0
0083dbd8  e9 b6 ff eb                                      bl #0x82b784
0083dbdc  05 00 a0 e1                                      mov r0, r5
0083dbe0  06 10 a0 e1                                      mov r1, r6
0083dbe4  00 30 95 e5                                      ldr r3, [r5]
0083dbe8  0f e0 a0 e1                                      mov lr, pc
0083dbec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0083dbf0  07 30 94 e7                                      ldr r3, [r4, r7]
0083dbf4  01 1a 8d e2                                      add r1, sp, #0x1000
0083dbf8  14 20 91 e5                                      ldr r2, [r1, #0x14]
0083dbfc  00 30 93 e5                                      ldr r3, [r3]
0083dc00  03 00 52 e1                                      cmp r2, r3
0083dc04  0b 00 00 1a                                      bne #0x83dc38
0083dc08  1c d0 8d e2                                      add sp, sp, #0x1c
0083dc0c  01 da 8d e2                                      add sp, sp, #0x1000
0083dc10  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0083dc14  04 30 90 e5                                      ldr r3, [r0, #4]
0083dc18  42 10 a0 e3                                      mov r1, #0x42
0083dc1c  63 20 e0 e3                                      mvn r2, #0x63
0083dc20  03 00 a0 e1                                      mov r0, r3
0083dc24  00 30 93 e5                                      ldr r3, [r3]
0083dc28  0f e0 a0 e1                                      mov lr, pc
0083dc2c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083dc30  08 00 a0 e1                                      mov r0, r8
0083dc34  ed ff ff ea                                      b #0x83dbf0
0083dc38  b4 41 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083dc3c  30 6f 15 00 ac 40 00 00 dc 04 0d 00 d4 04 0d 00  .byte 0x30, 0x6f, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x04, 0x0d, 0x00, 0xd4, 0x04, 0x0d, 0x00

; FUNCTION 0x0083dc4c, declared_size=232, range_size=232, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser21sendRetrievalPasswordEPc
; demangled: GLXPlayerUser::sendRetrievalPassword(char*)
; decoder-mode: arm
0083dc4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083dc50  cc 40 9f e5                                      ldr r4, [pc, #0xcc]
0083dc54  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
0083dc58  01 da 4d e2                                      sub sp, sp, #0x1000
0083dc5c  04 40 8f e0                                      add r4, pc, r4
0083dc60  07 30 94 e7                                      ldr r3, [r4, r7]
0083dc64  10 d0 4d e2                                      sub sp, sp, #0x10
0083dc68  00 80 51 e2                                      subs r8, r1, #0
0083dc6c  00 30 93 e5                                      ldr r3, [r3]
0083dc70  01 1a 8d e2                                      add r1, sp, #0x1000
0083dc74  00 60 a0 e1                                      mov r6, r0
0083dc78  0c 30 81 e5                                      str r3, [r1, #0xc]
0083dc7c  1e 00 00 0a                                      beq #0x83dcfc
0083dc80  10 50 8d e2                                      add r5, sp, #0x10
0083dc84  04 50 45 e2                                      sub r5, r5, #4
0083dc88  05 00 a0 e1                                      mov r0, r5
0083dc8c  00 10 a0 e3                                      mov r1, #0
0083dc90  01 2a a0 e3                                      mov r2, #0x1000
0083dc94  b2 b5 ff eb                                      bl #0x82b364
0083dc98  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0083dc9c  08 30 96 e5                                      ldr r3, [r6, #8]
0083dca0  34 20 a0 e3                                      mov r2, #0x34
0083dca4  01 10 8f e0                                      add r1, pc, r1
0083dca8  05 00 a0 e1                                      mov r0, r5
0083dcac  00 80 8d e5                                      str r8, [sp]
0083dcb0  8b 43 eb eb                                      bl #0x30eae4
0083dcb4  74 00 9f e5                                      ldr r0, [pc, #0x74]
0083dcb8  05 10 a0 e1                                      mov r1, r5
0083dcbc  00 00 8f e0                                      add r0, pc, r0
0083dcc0  af b6 ff eb                                      bl #0x82b784
0083dcc4  06 00 a0 e1                                      mov r0, r6
0083dcc8  05 10 a0 e1                                      mov r1, r5
0083dccc  00 30 96 e5                                      ldr r3, [r6]
0083dcd0  0f e0 a0 e1                                      mov lr, pc
0083dcd4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083dcd8  07 30 94 e7                                      ldr r3, [r4, r7]
0083dcdc  01 1a 8d e2                                      add r1, sp, #0x1000
0083dce0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0083dce4  00 30 93 e5                                      ldr r3, [r3]
0083dce8  03 00 52 e1                                      cmp r2, r3
0083dcec  0b 00 00 1a                                      bne #0x83dd20
0083dcf0  10 d0 8d e2                                      add sp, sp, #0x10
0083dcf4  01 da 8d e2                                      add sp, sp, #0x1000
0083dcf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083dcfc  04 30 90 e5                                      ldr r3, [r0, #4]
0083dd00  34 10 a0 e3                                      mov r1, #0x34
0083dd04  63 20 e0 e3                                      mvn r2, #0x63
0083dd08  03 00 a0 e1                                      mov r0, r3
0083dd0c  00 30 93 e5                                      ldr r3, [r3]
0083dd10  0f e0 a0 e1                                      mov lr, pc
0083dd14  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083dd18  08 00 a0 e1                                      mov r0, r8
0083dd1c  ed ff ff ea                                      b #0x83dcd8
0083dd20  7a 41 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083dd24  34 6e 15 00 ac 40 00 00 cc e7 0c 00 3c 04 0d 00  .byte 0x34, 0x6e, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xcc, 0xe7, 0x0c, 0x00, 0x3c, 0x04, 0x0d, 0x00

; FUNCTION 0x0083dd34, declared_size=264, range_size=264, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15sendChangeEmailEPcS0_S0_
; demangled: GLXPlayerUser::sendChangeEmail(char*, char*, char*)
; decoder-mode: arm
0083dd34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083dd38  ec 40 9f e5                                      ldr r4, [pc, #0xec]
0083dd3c  ec 70 9f e5                                      ldr r7, [pc, #0xec]
0083dd40  02 a0 a0 e1                                      mov sl, r2
0083dd44  04 40 8f e0                                      add r4, pc, r4
0083dd48  07 20 94 e7                                      ldr r2, [r4, r7]
0083dd4c  01 da 4d e2                                      sub sp, sp, #0x1000
0083dd50  18 d0 4d e2                                      sub sp, sp, #0x18
0083dd54  00 20 92 e5                                      ldr r2, [r2]
0083dd58  00 00 51 e3                                      cmp r1, #0
0083dd5c  00 00 5a 13                                      cmpne sl, #0
0083dd60  03 90 a0 e1                                      mov sb, r3
0083dd64  01 3a 8d e2                                      add r3, sp, #0x1000
0083dd68  01 80 a0 e1                                      mov r8, r1
0083dd6c  00 10 a0 13                                      movne r1, #0
0083dd70  01 10 a0 03                                      moveq r1, #1
0083dd74  00 50 a0 e1                                      mov r5, r0
0083dd78  14 20 83 e5                                      str r2, [r3, #0x14]
0083dd7c  20 00 00 0a                                      beq #0x83de04
0083dd80  00 00 59 e3                                      cmp sb, #0
0083dd84  1e 00 00 0a                                      beq #0x83de04
0083dd88  18 60 8d e2                                      add r6, sp, #0x18
0083dd8c  04 60 46 e2                                      sub r6, r6, #4
0083dd90  06 00 a0 e1                                      mov r0, r6
0083dd94  01 2a a0 e3                                      mov r2, #0x1000
0083dd98  71 b5 ff eb                                      bl #0x82b364
0083dd9c  90 10 9f e5                                      ldr r1, [pc, #0x90]
0083dda0  08 30 95 e5                                      ldr r3, [r5, #8]
0083dda4  33 20 a0 e3                                      mov r2, #0x33
0083dda8  01 10 8f e0                                      add r1, pc, r1
0083ddac  06 00 a0 e1                                      mov r0, r6
0083ddb0  00 05 8d e8                                      stm sp, {r8, sl}
0083ddb4  08 90 8d e5                                      str sb, [sp, #8]
0083ddb8  49 43 eb eb                                      bl #0x30eae4
0083ddbc  74 00 9f e5                                      ldr r0, [pc, #0x74]
0083ddc0  06 10 a0 e1                                      mov r1, r6
0083ddc4  00 00 8f e0                                      add r0, pc, r0
0083ddc8  6d b6 ff eb                                      bl #0x82b784
0083ddcc  05 00 a0 e1                                      mov r0, r5
0083ddd0  06 10 a0 e1                                      mov r1, r6
0083ddd4  00 30 95 e5                                      ldr r3, [r5]
0083ddd8  0f e0 a0 e1                                      mov lr, pc
0083dddc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083dde0  07 30 94 e7                                      ldr r3, [r4, r7]
0083dde4  01 1a 8d e2                                      add r1, sp, #0x1000
0083dde8  14 20 91 e5                                      ldr r2, [r1, #0x14]
0083ddec  00 30 93 e5                                      ldr r3, [r3]
0083ddf0  03 00 52 e1                                      cmp r2, r3
0083ddf4  0b 00 00 1a                                      bne #0x83de28
0083ddf8  18 d0 8d e2                                      add sp, sp, #0x18
0083ddfc  01 da 8d e2                                      add sp, sp, #0x1000
0083de00  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083de04  04 30 95 e5                                      ldr r3, [r5, #4]
0083de08  33 10 a0 e3                                      mov r1, #0x33
0083de0c  63 20 e0 e3                                      mvn r2, #0x63
0083de10  03 00 a0 e1                                      mov r0, r3
0083de14  00 30 93 e5                                      ldr r3, [r3]
0083de18  0f e0 a0 e1                                      mov lr, pc
0083de1c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083de20  00 00 a0 e3                                      mov r0, #0
0083de24  ed ff ff ea                                      b #0x83dde0
0083de28  38 41 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083de2c  4c 6d 15 00 ac 40 00 00 98 03 0d 00 9c 03 0d 00  .byte 0x4c, 0x6d, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0x03, 0x0d, 0x00, 0x9c, 0x03, 0x0d, 0x00

; FUNCTION 0x0083de3c, declared_size=284, range_size=284, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser18sendChangePasswordEPcS0_S0_S0_
; demangled: GLXPlayerUser::sendChangePassword(char*, char*, char*, char*)
; decoder-mode: arm
0083de3c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083de40  00 41 9f e5                                      ldr r4, [pc, #0x100]
0083de44  00 51 9f e5                                      ldr r5, [pc, #0x100]
0083de48  02 60 a0 e1                                      mov r6, r2
0083de4c  04 40 8f e0                                      add r4, pc, r4
0083de50  05 20 94 e7                                      ldr r2, [r4, r5]
0083de54  01 da 4d e2                                      sub sp, sp, #0x1000
0083de58  1c d0 4d e2                                      sub sp, sp, #0x1c
0083de5c  00 20 92 e5                                      ldr r2, [r2]
0083de60  01 70 a0 e1                                      mov r7, r1
0083de64  00 00 51 e3                                      cmp r1, #0
0083de68  00 00 56 13                                      cmpne r6, #0
0083de6c  01 1a 8d e2                                      add r1, sp, #0x1000
0083de70  00 90 a0 e1                                      mov sb, r0
0083de74  03 80 a0 e1                                      mov r8, r3
0083de78  14 20 81 e5                                      str r2, [r1, #0x14]
0083de7c  40 a0 91 e5                                      ldr sl, [r1, #0x40]
0083de80  10 00 00 1a                                      bne #0x83dec8
0083de84  04 30 99 e5                                      ldr r3, [sb, #4]
0083de88  32 10 a0 e3                                      mov r1, #0x32
0083de8c  63 20 e0 e3                                      mvn r2, #0x63
0083de90  03 00 a0 e1                                      mov r0, r3
0083de94  00 30 93 e5                                      ldr r3, [r3]
0083de98  0f e0 a0 e1                                      mov lr, pc
0083de9c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083dea0  00 00 a0 e3                                      mov r0, #0
0083dea4  05 30 94 e7                                      ldr r3, [r4, r5]
0083dea8  01 1a 8d e2                                      add r1, sp, #0x1000
0083deac  14 20 91 e5                                      ldr r2, [r1, #0x14]
0083deb0  00 30 93 e5                                      ldr r3, [r3]
0083deb4  03 00 52 e1                                      cmp r2, r3
0083deb8  21 00 00 1a                                      bne #0x83df44
0083debc  1c d0 8d e2                                      add sp, sp, #0x1c
0083dec0  01 da 8d e2                                      add sp, sp, #0x1000
0083dec4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083dec8  00 00 53 e3                                      cmp r3, #0
0083decc  00 00 5a 13                                      cmpne sl, #0
0083ded0  eb ff ff 0a                                      beq #0x83de84
0083ded4  0a 10 a0 e1                                      mov r1, sl
0083ded8  03 00 a0 e1                                      mov r0, r3
0083dedc  1a b5 ff eb                                      bl #0x82b34c
0083dee0  00 10 50 e2                                      subs r1, r0, #0
0083dee4  e6 ff ff 1a                                      bne #0x83de84
0083dee8  18 b0 8d e2                                      add fp, sp, #0x18
0083deec  04 b0 4b e2                                      sub fp, fp, #4
0083def0  0b 00 a0 e1                                      mov r0, fp
0083def4  01 2a a0 e3                                      mov r2, #0x1000
0083def8  19 b5 ff eb                                      bl #0x82b364
0083defc  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0083df00  08 30 99 e5                                      ldr r3, [sb, #8]
0083df04  32 20 a0 e3                                      mov r2, #0x32
0083df08  01 10 8f e0                                      add r1, pc, r1
0083df0c  0b 00 a0 e1                                      mov r0, fp
0083df10  00 70 8d e5                                      str r7, [sp]
0083df14  40 05 8d e9                                      stmib sp, {r6, r8, sl}
0083df18  f1 42 eb eb                                      bl #0x30eae4
0083df1c  30 00 9f e5                                      ldr r0, [pc, #0x30]
0083df20  0b 10 a0 e1                                      mov r1, fp
0083df24  00 00 8f e0                                      add r0, pc, r0
0083df28  15 b6 ff eb                                      bl #0x82b784
0083df2c  09 00 a0 e1                                      mov r0, sb
0083df30  0b 10 a0 e1                                      mov r1, fp
0083df34  00 30 99 e5                                      ldr r3, [sb]
0083df38  0f e0 a0 e1                                      mov lr, pc
0083df3c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083df40  d7 ff ff ea                                      b #0x83dea4
0083df44  f1 40 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083df48  44 6c 15 00 ac 40 00 00 a0 02 0d 00 ac 02 0d 00  .byte 0x44, 0x6c, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0x02, 0x0d, 0x00, 0xac, 0x02, 0x0d, 0x00

; FUNCTION 0x0083df58, declared_size=272, range_size=272, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser18sendChangeUserNameEPcS0_S0_b
; demangled: GLXPlayerUser::sendChangeUserName(char*, char*, char*, bool)
; decoder-mode: arm
0083df58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083df5c  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
0083df60  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
0083df64  02 a0 a0 e1                                      mov sl, r2
0083df68  04 40 8f e0                                      add r4, pc, r4
0083df6c  07 20 94 e7                                      ldr r2, [r4, r7]
0083df70  01 da 4d e2                                      sub sp, sp, #0x1000
0083df74  1c d0 4d e2                                      sub sp, sp, #0x1c
0083df78  00 20 92 e5                                      ldr r2, [r2]
0083df7c  00 00 51 e3                                      cmp r1, #0
0083df80  00 00 5a 13                                      cmpne sl, #0
0083df84  03 90 a0 e1                                      mov sb, r3
0083df88  01 3a 8d e2                                      add r3, sp, #0x1000
0083df8c  01 80 a0 e1                                      mov r8, r1
0083df90  00 10 a0 13                                      movne r1, #0
0083df94  01 10 a0 03                                      moveq r1, #1
0083df98  00 50 a0 e1                                      mov r5, r0
0083df9c  14 20 83 e5                                      str r2, [r3, #0x14]
0083dfa0  40 b0 d3 e5                                      ldrb fp, [r3, #0x40]
0083dfa4  21 00 00 0a                                      beq #0x83e030
0083dfa8  00 00 59 e3                                      cmp sb, #0
0083dfac  1f 00 00 0a                                      beq #0x83e030
0083dfb0  18 60 8d e2                                      add r6, sp, #0x18
0083dfb4  04 60 46 e2                                      sub r6, r6, #4
0083dfb8  06 00 a0 e1                                      mov r0, r6
0083dfbc  01 2a a0 e3                                      mov r2, #0x1000
0083dfc0  e7 b4 ff eb                                      bl #0x82b364
0083dfc4  94 10 9f e5                                      ldr r1, [pc, #0x94]
0083dfc8  08 30 95 e5                                      ldr r3, [r5, #8]
0083dfcc  0e 20 a0 e3                                      mov r2, #0xe
0083dfd0  01 10 8f e0                                      add r1, pc, r1
0083dfd4  06 00 a0 e1                                      mov r0, r6
0083dfd8  00 05 8d e8                                      stm sp, {r8, sl}
0083dfdc  08 90 8d e5                                      str sb, [sp, #8]
0083dfe0  0c b0 8d e5                                      str fp, [sp, #0xc]
0083dfe4  be 42 eb eb                                      bl #0x30eae4
0083dfe8  74 00 9f e5                                      ldr r0, [pc, #0x74]
0083dfec  06 10 a0 e1                                      mov r1, r6
0083dff0  00 00 8f e0                                      add r0, pc, r0
0083dff4  e2 b5 ff eb                                      bl #0x82b784
0083dff8  05 00 a0 e1                                      mov r0, r5
0083dffc  06 10 a0 e1                                      mov r1, r6
0083e000  00 30 95 e5                                      ldr r3, [r5]
0083e004  0f e0 a0 e1                                      mov lr, pc
0083e008  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083e00c  07 30 94 e7                                      ldr r3, [r4, r7]
0083e010  01 1a 8d e2                                      add r1, sp, #0x1000
0083e014  14 20 91 e5                                      ldr r2, [r1, #0x14]
0083e018  00 30 93 e5                                      ldr r3, [r3]
0083e01c  03 00 52 e1                                      cmp r2, r3
0083e020  0b 00 00 1a                                      bne #0x83e054
0083e024  1c d0 8d e2                                      add sp, sp, #0x1c
0083e028  01 da 8d e2                                      add sp, sp, #0x1000
0083e02c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083e030  04 30 95 e5                                      ldr r3, [r5, #4]
0083e034  0e 10 a0 e3                                      mov r1, #0xe
0083e038  63 20 e0 e3                                      mvn r2, #0x63
0083e03c  03 00 a0 e1                                      mov r0, r3
0083e040  00 30 93 e5                                      ldr r3, [r3]
0083e044  0f e0 a0 e1                                      mov lr, pc
0083e048  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083e04c  00 00 a0 e3                                      mov r0, #0
0083e050  ed ff ff ea                                      b #0x83e00c
0083e054  ad 40 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083e058  28 6b 15 00 ac 40 00 00 48 02 0d 00 48 02 0d 00  .byte 0x28, 0x6b, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x02, 0x0d, 0x00, 0x48, 0x02, 0x0d, 0x00

; FUNCTION 0x0083e068, declared_size=240, range_size=240, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser14sendGetUsedAppEPc
; demangled: GLXPlayerUser::sendGetUsedApp(char*)
; decoder-mode: arm
0083e068  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083e06c  d0 40 9f e5                                      ldr r4, [pc, #0xd0]
0083e070  d0 70 9f e5                                      ldr r7, [pc, #0xd0]
0083e074  01 da 4d e2                                      sub sp, sp, #0x1000
0083e078  04 40 8f e0                                      add r4, pc, r4
0083e07c  07 30 94 e7                                      ldr r3, [r4, r7]
0083e080  10 d0 4d e2                                      sub sp, sp, #0x10
0083e084  01 2a a0 e3                                      mov r2, #0x1000
0083e088  00 30 93 e5                                      ldr r3, [r3]
0083e08c  10 50 8d e2                                      add r5, sp, #0x10
0083e090  02 c0 8d e0                                      add ip, sp, r2
0083e094  04 50 45 e2                                      sub r5, r5, #4
0083e098  01 80 a0 e1                                      mov r8, r1
0083e09c  00 60 a0 e1                                      mov r6, r0
0083e0a0  00 10 a0 e3                                      mov r1, #0
0083e0a4  05 00 a0 e1                                      mov r0, r5
0083e0a8  0c 30 8c e5                                      str r3, [ip, #0xc]
0083e0ac  ac b4 ff eb                                      bl #0x82b364
0083e0b0  00 00 58 e3                                      cmp r8, #0
0083e0b4  18 00 00 0a                                      beq #0x83e11c
0083e0b8  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0083e0bc  08 30 96 e5                                      ldr r3, [r6, #8]
0083e0c0  05 00 a0 e1                                      mov r0, r5
0083e0c4  01 10 8f e0                                      add r1, pc, r1
0083e0c8  39 20 a0 e3                                      mov r2, #0x39
0083e0cc  00 80 8d e5                                      str r8, [sp]
0083e0d0  83 42 eb eb                                      bl #0x30eae4
0083e0d4  74 00 9f e5                                      ldr r0, [pc, #0x74]
0083e0d8  05 10 a0 e1                                      mov r1, r5
0083e0dc  00 00 8f e0                                      add r0, pc, r0
0083e0e0  a7 b5 ff eb                                      bl #0x82b784
0083e0e4  05 10 a0 e1                                      mov r1, r5
0083e0e8  00 30 96 e5                                      ldr r3, [r6]
0083e0ec  06 00 a0 e1                                      mov r0, r6
0083e0f0  0f e0 a0 e1                                      mov lr, pc
0083e0f4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083e0f8  07 30 94 e7                                      ldr r3, [r4, r7]
0083e0fc  01 1a 8d e2                                      add r1, sp, #0x1000
0083e100  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0083e104  00 30 93 e5                                      ldr r3, [r3]
0083e108  03 00 52 e1                                      cmp r2, r3
0083e10c  0b 00 00 1a                                      bne #0x83e140
0083e110  10 d0 8d e2                                      add sp, sp, #0x10
0083e114  01 da 8d e2                                      add sp, sp, #0x1000
0083e118  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0083e11c  30 10 9f e5                                      ldr r1, [pc, #0x30]
0083e120  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083e124  08 30 96 e5                                      ldr r3, [r6, #8]
0083e128  01 10 8f e0                                      add r1, pc, r1
0083e12c  05 00 a0 e1                                      mov r0, r5
0083e130  39 20 a0 e3                                      mov r2, #0x39
0083e134  00 c0 8d e5                                      str ip, [sp]
0083e138  69 42 eb eb                                      bl #0x30eae4
0083e13c  e4 ff ff ea                                      b #0x83e0d4
0083e140  72 40 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083e144  18 6a 15 00 ac 40 00 00 ac e3 0c 00 a4 01 0d 00  .byte 0x18, 0x6a, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xac, 0xe3, 0x0c, 0x00, 0xa4, 0x01, 0x0d, 0x00
0083e154  48 e3 0c 00                                      .byte 0x48, 0xe3, 0x0c, 0x00

; FUNCTION 0x0083e158, declared_size=264, range_size=264, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17sendChangeCountryEPcS0_S0_
; demangled: GLXPlayerUser::sendChangeCountry(char*, char*, char*)
; decoder-mode: arm
0083e158  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083e15c  ec 40 9f e5                                      ldr r4, [pc, #0xec]
0083e160  ec 70 9f e5                                      ldr r7, [pc, #0xec]
0083e164  02 a0 a0 e1                                      mov sl, r2
0083e168  04 40 8f e0                                      add r4, pc, r4
0083e16c  07 20 94 e7                                      ldr r2, [r4, r7]
0083e170  01 da 4d e2                                      sub sp, sp, #0x1000
0083e174  18 d0 4d e2                                      sub sp, sp, #0x18
0083e178  00 20 92 e5                                      ldr r2, [r2]
0083e17c  00 00 51 e3                                      cmp r1, #0
0083e180  00 00 5a 13                                      cmpne sl, #0
0083e184  03 90 a0 e1                                      mov sb, r3
0083e188  01 3a 8d e2                                      add r3, sp, #0x1000
0083e18c  01 80 a0 e1                                      mov r8, r1
0083e190  00 10 a0 13                                      movne r1, #0
0083e194  01 10 a0 03                                      moveq r1, #1
0083e198  00 50 a0 e1                                      mov r5, r0
0083e19c  14 20 83 e5                                      str r2, [r3, #0x14]
0083e1a0  20 00 00 0a                                      beq #0x83e228
0083e1a4  00 00 59 e3                                      cmp sb, #0
0083e1a8  1e 00 00 0a                                      beq #0x83e228
0083e1ac  18 60 8d e2                                      add r6, sp, #0x18
0083e1b0  04 60 46 e2                                      sub r6, r6, #4
0083e1b4  06 00 a0 e1                                      mov r0, r6
0083e1b8  01 2a a0 e3                                      mov r2, #0x1000
0083e1bc  68 b4 ff eb                                      bl #0x82b364
0083e1c0  90 10 9f e5                                      ldr r1, [pc, #0x90]
0083e1c4  08 30 95 e5                                      ldr r3, [r5, #8]
0083e1c8  36 20 a0 e3                                      mov r2, #0x36
0083e1cc  01 10 8f e0                                      add r1, pc, r1
0083e1d0  06 00 a0 e1                                      mov r0, r6
0083e1d4  00 05 8d e8                                      stm sp, {r8, sl}
0083e1d8  08 90 8d e5                                      str sb, [sp, #8]
0083e1dc  40 42 eb eb                                      bl #0x30eae4
0083e1e0  74 00 9f e5                                      ldr r0, [pc, #0x74]
0083e1e4  06 10 a0 e1                                      mov r1, r6
0083e1e8  00 00 8f e0                                      add r0, pc, r0
0083e1ec  64 b5 ff eb                                      bl #0x82b784
0083e1f0  05 00 a0 e1                                      mov r0, r5
0083e1f4  06 10 a0 e1                                      mov r1, r6
0083e1f8  00 30 95 e5                                      ldr r3, [r5]
0083e1fc  0f e0 a0 e1                                      mov lr, pc
0083e200  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083e204  07 30 94 e7                                      ldr r3, [r4, r7]
0083e208  01 1a 8d e2                                      add r1, sp, #0x1000
0083e20c  14 20 91 e5                                      ldr r2, [r1, #0x14]
0083e210  00 30 93 e5                                      ldr r3, [r3]
0083e214  03 00 52 e1                                      cmp r2, r3
0083e218  0b 00 00 1a                                      bne #0x83e24c
0083e21c  18 d0 8d e2                                      add sp, sp, #0x18
0083e220  01 da 8d e2                                      add sp, sp, #0x1000
0083e224  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083e228  04 30 95 e5                                      ldr r3, [r5, #4]
0083e22c  36 10 a0 e3                                      mov r1, #0x36
0083e230  63 20 e0 e3                                      mvn r2, #0x63
0083e234  03 00 a0 e1                                      mov r0, r3
0083e238  00 30 93 e5                                      ldr r3, [r3]
0083e23c  0f e0 a0 e1                                      mov lr, pc
0083e240  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083e244  00 00 a0 e3                                      mov r0, #0
0083e248  ed ff ff ea                                      b #0x83e204
0083e24c  2f 40 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083e250  28 69 15 00 ac 40 00 00 fc 00 0d 00 00 01 0d 00  .byte 0x28, 0x69, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xfc, 0x00, 0x0d, 0x00, 0x00, 0x01, 0x0d, 0x00

; FUNCTION 0x0083e260, declared_size=292, range_size=292, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser14sendGetCountryEPcS0_b
; demangled: GLXPlayerUser::sendGetCountry(char*, char*, bool)
; decoder-mode: arm
0083e260  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083e264  04 41 9f e5                                      ldr r4, [pc, #0x104]
0083e268  04 71 9f e5                                      ldr r7, [pc, #0x104]
0083e26c  00 a0 51 e2                                      subs sl, r1, #0
0083e270  04 40 8f e0                                      add r4, pc, r4
0083e274  07 10 94 e7                                      ldr r1, [r4, r7]
0083e278  01 da 4d e2                                      sub sp, sp, #0x1000
0083e27c  02 80 a0 e1                                      mov r8, r2
0083e280  00 20 91 e5                                      ldr r2, [r1]
0083e284  18 d0 4d e2                                      sub sp, sp, #0x18
0083e288  01 1a 8d e2                                      add r1, sp, #0x1000
0083e28c  00 60 a0 e1                                      mov r6, r0
0083e290  03 90 a0 e1                                      mov sb, r3
0083e294  14 20 81 e5                                      str r2, [r1, #0x14]
0083e298  2a 00 00 0a                                      beq #0x83e348
0083e29c  18 50 8d e2                                      add r5, sp, #0x18
0083e2a0  04 50 45 e2                                      sub r5, r5, #4
0083e2a4  05 00 a0 e1                                      mov r0, r5
0083e2a8  00 10 a0 e3                                      mov r1, #0
0083e2ac  01 2a a0 e3                                      mov r2, #0x1000
0083e2b0  2b b4 ff eb                                      bl #0x82b364
0083e2b4  00 00 58 e3                                      cmp r8, #0
0083e2b8  19 00 00 0a                                      beq #0x83e324
0083e2bc  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
0083e2c0  08 30 96 e5                                      ldr r3, [r6, #8]
0083e2c4  05 00 a0 e1                                      mov r0, r5
0083e2c8  01 10 8f e0                                      add r1, pc, r1
0083e2cc  35 20 a0 e3                                      mov r2, #0x35
0083e2d0  00 a0 8d e5                                      str sl, [sp]
0083e2d4  00 03 8d e9                                      stmib sp, {r8, sb}
0083e2d8  01 42 eb eb                                      bl #0x30eae4
0083e2dc  98 00 9f e5                                      ldr r0, [pc, #0x98]
0083e2e0  05 10 a0 e1                                      mov r1, r5
0083e2e4  00 00 8f e0                                      add r0, pc, r0
0083e2e8  25 b5 ff eb                                      bl #0x82b784
0083e2ec  06 00 a0 e1                                      mov r0, r6
0083e2f0  05 10 a0 e1                                      mov r1, r5
0083e2f4  00 30 96 e5                                      ldr r3, [r6]
0083e2f8  0f e0 a0 e1                                      mov lr, pc
0083e2fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083e300  07 30 94 e7                                      ldr r3, [r4, r7]
0083e304  01 1a 8d e2                                      add r1, sp, #0x1000
0083e308  14 20 91 e5                                      ldr r2, [r1, #0x14]
0083e30c  00 30 93 e5                                      ldr r3, [r3]
0083e310  03 00 52 e1                                      cmp r2, r3
0083e314  14 00 00 1a                                      bne #0x83e36c
0083e318  18 d0 8d e2                                      add sp, sp, #0x18
0083e31c  01 da 8d e2                                      add sp, sp, #0x1000
0083e320  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083e324  54 10 9f e5                                      ldr r1, [pc, #0x54]
0083e328  08 30 96 e5                                      ldr r3, [r6, #8]
0083e32c  05 00 a0 e1                                      mov r0, r5
0083e330  01 10 8f e0                                      add r1, pc, r1
0083e334  35 20 a0 e3                                      mov r2, #0x35
0083e338  00 a0 8d e5                                      str sl, [sp]
0083e33c  04 90 8d e5                                      str sb, [sp, #4]
0083e340  e7 41 eb eb                                      bl #0x30eae4
0083e344  e4 ff ff ea                                      b #0x83e2dc
0083e348  04 30 90 e5                                      ldr r3, [r0, #4]
0083e34c  36 10 a0 e3                                      mov r1, #0x36
0083e350  63 20 e0 e3                                      mvn r2, #0x63
0083e354  03 00 a0 e1                                      mov r0, r3
0083e358  00 30 93 e5                                      ldr r3, [r3]
0083e35c  0f e0 a0 e1                                      mov lr, pc
0083e360  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083e364  0a 00 a0 e1                                      mov r0, sl
0083e368  e4 ff ff ea                                      b #0x83e300
0083e36c  e7 3f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083e370  20 68 15 00 ac 40 00 00 68 00 0d 00 84 00 0d 00  .byte 0x20, 0x68, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0x00, 0x0d, 0x00, 0x84, 0x00, 0x0d, 0x00
0083e380  20 00 0d 00                                      .byte 0x20, 0x00, 0x0d, 0x00

; FUNCTION 0x0083e384, declared_size=196, range_size=196, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser24sendGetGeneralConditionsEPc
; demangled: GLXPlayerUser::sendGetGeneralConditions(char*)
; decoder-mode: arm
0083e384  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0083e388  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0083e38c  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0083e390  03 30 8f e0                                      add r3, pc, r3
0083e394  01 da 4d e2                                      sub sp, sp, #0x1000
0083e398  02 60 93 e7                                      ldr r6, [r3, r2]
0083e39c  14 d0 4d e2                                      sub sp, sp, #0x14
0083e3a0  01 2a a0 e3                                      mov r2, #0x1000
0083e3a4  00 c0 96 e5                                      ldr ip, [r6]
0083e3a8  10 50 8d e2                                      add r5, sp, #0x10
0083e3ac  02 e0 8d e0                                      add lr, sp, r2
0083e3b0  04 50 45 e2                                      sub r5, r5, #4
0083e3b4  00 40 a0 e1                                      mov r4, r0
0083e3b8  0c c0 8e e5                                      str ip, [lr, #0xc]
0083e3bc  01 70 a0 e1                                      mov r7, r1
0083e3c0  05 00 a0 e1                                      mov r0, r5
0083e3c4  00 10 a0 e3                                      mov r1, #0
0083e3c8  e5 b3 ff eb                                      bl #0x82b364
0083e3cc  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0083e3d0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0083e3d4  08 30 94 e5                                      ldr r3, [r4, #8]
0083e3d8  62 20 a0 e3                                      mov r2, #0x62
0083e3dc  01 10 8f e0                                      add r1, pc, r1
0083e3e0  05 00 a0 e1                                      mov r0, r5
0083e3e4  00 c0 8d e5                                      str ip, [sp]
0083e3e8  04 70 8d e5                                      str r7, [sp, #4]
0083e3ec  bc 41 eb eb                                      bl #0x30eae4
0083e3f0  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
0083e3f4  05 10 a0 e1                                      mov r1, r5
0083e3f8  00 00 8f e0                                      add r0, pc, r0
0083e3fc  e0 b4 ff eb                                      bl #0x82b784
0083e400  00 30 94 e5                                      ldr r3, [r4]
0083e404  04 00 a0 e1                                      mov r0, r4
0083e408  05 10 a0 e1                                      mov r1, r5
0083e40c  0f e0 a0 e1                                      mov lr, pc
0083e410  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0083e414  01 3a 8d e2                                      add r3, sp, #0x1000
0083e418  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0083e41c  00 30 96 e5                                      ldr r3, [r6]
0083e420  03 00 52 e1                                      cmp r2, r3
0083e424  02 00 00 1a                                      bne #0x83e434
0083e428  14 d0 8d e2                                      add sp, sp, #0x14
0083e42c  01 da 8d e2                                      add sp, sp, #0x1000
0083e430  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0083e434  b5 3f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083e438  00 67 15 00 ac 40 00 00 8c ee 0c 00 b8 ff 0c 00  .byte 0x00, 0x67, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x8c, 0xee, 0x0c, 0x00, 0xb8, 0xff, 0x0c, 0x00

; FUNCTION 0x0083e448, declared_size=336, range_size=336, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15sendGetGameIconEiPc
; demangled: GLXPlayerUser::sendGetGameIcon(int, char*)
; decoder-mode: arm
0083e448  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083e44c  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
0083e450  2c 71 9f e5                                      ldr r7, [pc, #0x12c]
0083e454  11 dc 4d e2                                      sub sp, sp, #0x1100
0083e458  05 50 8f e0                                      add r5, pc, r5
0083e45c  07 30 95 e7                                      ldr r3, [r5, r7]
0083e460  10 d0 4d e2                                      sub sp, sp, #0x10
0083e464  10 40 8d e2                                      add r4, sp, #0x10
0083e468  00 30 93 e5                                      ldr r3, [r3]
0083e46c  02 80 a0 e1                                      mov r8, r2
0083e470  01 2a a0 e3                                      mov r2, #0x1000
0083e474  02 c0 8d e0                                      add ip, sp, r2
0083e478  04 40 44 e2                                      sub r4, r4, #4
0083e47c  00 60 a0 e1                                      mov r6, r0
0083e480  0c 31 8c e5                                      str r3, [ip, #0x10c]
0083e484  01 a0 a0 e1                                      mov sl, r1
0083e488  04 00 a0 e1                                      mov r0, r4
0083e48c  00 10 a0 e3                                      mov r1, #0
0083e490  b3 b3 ff eb                                      bl #0x82b364
0083e494  ec 10 9f e5                                      ldr r1, [pc, #0xec]
0083e498  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083e49c  08 30 96 e5                                      ldr r3, [r6, #8]
0083e4a0  01 10 8f e0                                      add r1, pc, r1
0083e4a4  04 00 a0 e1                                      mov r0, r4
0083e4a8  5a 20 a0 e3                                      mov r2, #0x5a
0083e4ac  00 c0 8d e5                                      str ip, [sp]
0083e4b0  8b 41 eb eb                                      bl #0x30eae4
0083e4b4  01 00 7a e3                                      cmn sl, #1
0083e4b8  0d 00 00 0a                                      beq #0x83e4f4
0083e4bc  01 9a 8d e2                                      add sb, sp, #0x1000
0083e4c0  0c 90 89 e2                                      add sb, sb, #0xc
0083e4c4  09 00 a0 e1                                      mov r0, sb
0083e4c8  00 10 a0 e3                                      mov r1, #0
0083e4cc  01 2c a0 e3                                      mov r2, #0x100
0083e4d0  a3 b3 ff eb                                      bl #0x82b364
0083e4d4  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0083e4d8  0a 20 a0 e1                                      mov r2, sl
0083e4dc  09 00 a0 e1                                      mov r0, sb
0083e4e0  01 10 8f e0                                      add r1, pc, r1
0083e4e4  7e 41 eb eb                                      bl #0x30eae4
0083e4e8  04 00 a0 e1                                      mov r0, r4
0083e4ec  09 10 a0 e1                                      mov r1, sb
0083e4f0  90 b3 ff eb                                      bl #0x82b338
0083e4f4  00 00 58 e3                                      cmp r8, #0
0083e4f8  0d 00 00 0a                                      beq #0x83e534
0083e4fc  01 aa 8d e2                                      add sl, sp, #0x1000
0083e500  0c a0 8a e2                                      add sl, sl, #0xc
0083e504  0a 00 a0 e1                                      mov r0, sl
0083e508  00 10 a0 e3                                      mov r1, #0
0083e50c  01 2c a0 e3                                      mov r2, #0x100
0083e510  93 b3 ff eb                                      bl #0x82b364
0083e514  74 10 9f e5                                      ldr r1, [pc, #0x74]
0083e518  08 20 a0 e1                                      mov r2, r8
0083e51c  0a 00 a0 e1                                      mov r0, sl
0083e520  01 10 8f e0                                      add r1, pc, r1
0083e524  6e 41 eb eb                                      bl #0x30eae4
0083e528  04 00 a0 e1                                      mov r0, r4
0083e52c  0a 10 a0 e1                                      mov r1, sl
0083e530  80 b3 ff eb                                      bl #0x82b338
0083e534  58 00 9f e5                                      ldr r0, [pc, #0x58]
0083e538  04 10 a0 e1                                      mov r1, r4
0083e53c  00 00 8f e0                                      add r0, pc, r0
0083e540  8f b4 ff eb                                      bl #0x82b784
0083e544  04 10 a0 e1                                      mov r1, r4
0083e548  00 30 96 e5                                      ldr r3, [r6]
0083e54c  06 00 a0 e1                                      mov r0, r6
0083e550  0f e0 a0 e1                                      mov lr, pc
0083e554  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083e558  07 30 95 e7                                      ldr r3, [r5, r7]
0083e55c  01 1a 8d e2                                      add r1, sp, #0x1000
0083e560  0c 21 91 e5                                      ldr r2, [r1, #0x10c]
0083e564  00 30 93 e5                                      ldr r3, [r3]
0083e568  03 00 52 e1                                      cmp r2, r3
0083e56c  02 00 00 1a                                      bne #0x83e57c
0083e570  11 de 8d e2                                      add sp, sp, #0x110
0083e574  01 da 8d e2                                      add sp, sp, #0x1000
0083e578  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083e57c  63 3f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083e580  38 66 15 00 ac 40 00 00 d0 df 0c 00 10 ff 0c 00  .byte 0x38, 0x66, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd0, 0xdf, 0x0c, 0x00, 0x10, 0xff, 0x0c, 0x00
0083e590  d8 fe 0c 00 b4 f7 0c 00                          .byte 0xd8, 0xfe, 0x0c, 0x00, 0xb4, 0xf7, 0x0c, 0x00

; FUNCTION 0x0083e598, declared_size=264, range_size=264, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser22sendGetPromoAttachmentEPci
; demangled: GLXPlayerUser::sendGetPromoAttachment(char*, int)
; decoder-mode: arm
0083e598  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083e59c  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
0083e5a0  e8 80 9f e5                                      ldr r8, [pc, #0xe8]
0083e5a4  42 dd 4d e2                                      sub sp, sp, #0x1080
0083e5a8  04 40 8f e0                                      add r4, pc, r4
0083e5ac  08 30 94 e7                                      ldr r3, [r4, r8]
0083e5b0  10 d0 4d e2                                      sub sp, sp, #0x10
0083e5b4  10 50 8d e2                                      add r5, sp, #0x10
0083e5b8  00 30 93 e5                                      ldr r3, [r3]
0083e5bc  04 50 45 e2                                      sub r5, r5, #4
0083e5c0  02 90 a0 e1                                      mov sb, r2
0083e5c4  01 2a a0 e3                                      mov r2, #0x1000
0083e5c8  02 c0 8d e0                                      add ip, sp, r2
0083e5cc  00 60 a0 e1                                      mov r6, r0
0083e5d0  01 a0 a0 e1                                      mov sl, r1
0083e5d4  05 00 a0 e1                                      mov r0, r5
0083e5d8  00 10 a0 e3                                      mov r1, #0
0083e5dc  8c 30 8c e5                                      str r3, [ip, #0x8c]
0083e5e0  5f b3 ff eb                                      bl #0x82b364
0083e5e4  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0083e5e8  01 7a 8d e2                                      add r7, sp, #0x1000
0083e5ec  08 30 96 e5                                      ldr r3, [r6, #8]
0083e5f0  cd 20 a0 e3                                      mov r2, #0xcd
0083e5f4  01 10 8f e0                                      add r1, pc, r1
0083e5f8  05 00 a0 e1                                      mov r0, r5
0083e5fc  0c 70 87 e2                                      add r7, r7, #0xc
0083e600  00 90 8d e5                                      str sb, [sp]
0083e604  36 41 eb eb                                      bl #0x30eae4
0083e608  07 00 a0 e1                                      mov r0, r7
0083e60c  00 10 a0 e3                                      mov r1, #0
0083e610  80 20 a0 e3                                      mov r2, #0x80
0083e614  91 3f eb eb                                      bl #0x30e460
0083e618  00 00 5a e3                                      cmp sl, #0
0083e61c  07 00 00 0a                                      beq #0x83e640
0083e620  70 10 9f e5                                      ldr r1, [pc, #0x70]
0083e624  0a 20 a0 e1                                      mov r2, sl
0083e628  07 00 a0 e1                                      mov r0, r7
0083e62c  01 10 8f e0                                      add r1, pc, r1
0083e630  2b 41 eb eb                                      bl #0x30eae4
0083e634  05 00 a0 e1                                      mov r0, r5
0083e638  07 10 a0 e1                                      mov r1, r7
0083e63c  3d b3 ff eb                                      bl #0x82b338
0083e640  54 00 9f e5                                      ldr r0, [pc, #0x54]
0083e644  05 10 a0 e1                                      mov r1, r5
0083e648  00 00 8f e0                                      add r0, pc, r0
0083e64c  4c b4 ff eb                                      bl #0x82b784
0083e650  05 10 a0 e1                                      mov r1, r5
0083e654  00 30 96 e5                                      ldr r3, [r6]
0083e658  06 00 a0 e1                                      mov r0, r6
0083e65c  0f e0 a0 e1                                      mov lr, pc
0083e660  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083e664  08 30 94 e7                                      ldr r3, [r4, r8]
0083e668  01 1a 8d e2                                      add r1, sp, #0x1000
0083e66c  8c 20 91 e5                                      ldr r2, [r1, #0x8c]
0083e670  00 30 93 e5                                      ldr r3, [r3]
0083e674  03 00 52 e1                                      cmp r2, r3
0083e678  02 00 00 1a                                      bne #0x83e688
0083e67c  90 d0 8d e2                                      add sp, sp, #0x90
0083e680  01 da 8d e2                                      add sp, sp, #0x1000
0083e684  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083e688  20 3f eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083e68c  e8 64 15 00 ac 40 00 00 0c fe 0c 00 e4 fd 0c 00  .byte 0xe8, 0x64, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x0c, 0xfe, 0x0c, 0x00, 0xe4, 0xfd, 0x0c, 0x00
0083e69c  d0 fd 0c 00                                      .byte 0xd0, 0xfd, 0x0c, 0x00

; FUNCTION 0x0083e6a0, declared_size=280, range_size=280, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15sendGetPromoRssEPciiS0_
; demangled: GLXPlayerUser::sendGetPromoRss(char*, int, int, char*)
; decoder-mode: arm
0083e6a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083e6a4  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
0083e6a8  f8 80 9f e5                                      ldr r8, [pc, #0xf8]
0083e6ac  42 dd 4d e2                                      sub sp, sp, #0x1080
0083e6b0  04 40 8f e0                                      add r4, pc, r4
0083e6b4  08 c0 94 e7                                      ldr ip, [r4, r8]
0083e6b8  24 d0 4d e2                                      sub sp, sp, #0x24
0083e6bc  14 20 8d e5                                      str r2, [sp, #0x14]
0083e6c0  00 c0 9c e5                                      ldr ip, [ip]
0083e6c4  01 2a a0 e3                                      mov r2, #0x1000
0083e6c8  20 50 8d e2                                      add r5, sp, #0x20
0083e6cc  02 e0 8d e0                                      add lr, sp, r2
0083e6d0  04 50 45 e2                                      sub r5, r5, #4
0083e6d4  9c c0 8e e5                                      str ip, [lr, #0x9c]
0083e6d8  00 60 a0 e1                                      mov r6, r0
0083e6dc  01 a0 a0 e1                                      mov sl, r1
0083e6e0  05 00 a0 e1                                      mov r0, r5
0083e6e4  00 10 a0 e3                                      mov r1, #0
0083e6e8  c8 b0 9e e5                                      ldr fp, [lr, #0xc8]
0083e6ec  03 90 a0 e1                                      mov sb, r3
0083e6f0  1b b3 ff eb                                      bl #0x82b364
0083e6f4  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0083e6f8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0083e6fc  01 7a 8d e2                                      add r7, sp, #0x1000
0083e700  08 30 96 e5                                      ldr r3, [r6, #8]
0083e704  cc 20 a0 e3                                      mov r2, #0xcc
0083e708  01 10 8f e0                                      add r1, pc, r1
0083e70c  05 00 a0 e1                                      mov r0, r5
0083e710  1c 70 87 e2                                      add r7, r7, #0x1c
0083e714  00 c0 8d e5                                      str ip, [sp]
0083e718  00 0a 8d e9                                      stmib sp, {sb, fp}
0083e71c  f0 40 eb eb                                      bl #0x30eae4
0083e720  07 00 a0 e1                                      mov r0, r7
0083e724  00 10 a0 e3                                      mov r1, #0
0083e728  80 20 a0 e3                                      mov r2, #0x80
0083e72c  4b 3f eb eb                                      bl #0x30e460
0083e730  00 00 5a e3                                      cmp sl, #0
0083e734  07 00 00 0a                                      beq #0x83e758
0083e738  70 10 9f e5                                      ldr r1, [pc, #0x70]
0083e73c  0a 20 a0 e1                                      mov r2, sl
0083e740  07 00 a0 e1                                      mov r0, r7
0083e744  01 10 8f e0                                      add r1, pc, r1
0083e748  e5 40 eb eb                                      bl #0x30eae4
0083e74c  05 00 a0 e1                                      mov r0, r5
0083e750  07 10 a0 e1                                      mov r1, r7
0083e754  f7 b2 ff eb                                      bl #0x82b338
0083e758  54 00 9f e5                                      ldr r0, [pc, #0x54]
0083e75c  05 10 a0 e1                                      mov r1, r5
0083e760  00 00 8f e0                                      add r0, pc, r0
0083e764  06 b4 ff eb                                      bl #0x82b784
0083e768  05 10 a0 e1                                      mov r1, r5
0083e76c  00 30 96 e5                                      ldr r3, [r6]
0083e770  06 00 a0 e1                                      mov r0, r6
0083e774  0f e0 a0 e1                                      mov lr, pc
0083e778  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0083e77c  08 30 94 e7                                      ldr r3, [r4, r8]
0083e780  01 1a 8d e2                                      add r1, sp, #0x1000
0083e784  9c 20 91 e5                                      ldr r2, [r1, #0x9c]
0083e788  00 30 93 e5                                      ldr r3, [r3]
0083e78c  03 00 52 e1                                      cmp r2, r3
0083e790  02 00 00 1a                                      bne #0x83e7a0
0083e794  a4 d0 8d e2                                      add sp, sp, #0xa4
0083e798  01 da 8d e2                                      add sp, sp, #0x1000
0083e79c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083e7a0  da 3e eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083e7a4  e0 63 15 00 ac 40 00 00 60 fd 0c 00 cc fc 0c 00  .byte 0xe0, 0x63, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x60, 0xfd, 0x0c, 0x00, 0xcc, 0xfc, 0x0c, 0x00
0083e7b4  28 fd 0c 00                                      .byte 0x28, 0xfd, 0x0c, 0x00

; FUNCTION 0x0083e7b8, declared_size=352, range_size=352, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser25sendGetUserGameTrophyListEiPcb
; demangled: GLXPlayerUser::sendGetUserGameTrophyList(int, char*, bool)
; decoder-mode: arm
0083e7b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083e7bc  38 51 9f e5                                      ldr r5, [pc, #0x138]
0083e7c0  38 81 9f e5                                      ldr r8, [pc, #0x138]
0083e7c4  42 dd 4d e2                                      sub sp, sp, #0x1080
0083e7c8  05 50 8f e0                                      add r5, pc, r5
0083e7cc  08 c0 95 e7                                      ldr ip, [r5, r8]
0083e7d0  14 d0 4d e2                                      sub sp, sp, #0x14
0083e7d4  01 7a 8d e2                                      add r7, sp, #0x1000
0083e7d8  00 c0 9c e5                                      ldr ip, [ip]
0083e7dc  01 ea 8d e2                                      add lr, sp, #0x1000
0083e7e0  0c 70 87 e2                                      add r7, r7, #0xc
0083e7e4  10 40 8d e2                                      add r4, sp, #0x10
0083e7e8  8c c0 8e e5                                      str ip, [lr, #0x8c]
0083e7ec  00 60 a0 e1                                      mov r6, r0
0083e7f0  01 90 a0 e1                                      mov sb, r1
0083e7f4  04 40 44 e2                                      sub r4, r4, #4
0083e7f8  00 10 a0 e3                                      mov r1, #0
0083e7fc  02 a0 a0 e1                                      mov sl, r2
0083e800  07 00 a0 e1                                      mov r0, r7
0083e804  80 20 a0 e3                                      mov r2, #0x80
0083e808  03 b0 a0 e1                                      mov fp, r3
0083e80c  13 3f eb eb                                      bl #0x30e460
0083e810  04 00 a0 e1                                      mov r0, r4
0083e814  00 10 a0 e3                                      mov r1, #0
0083e818  01 2a a0 e3                                      mov r2, #0x1000
0083e81c  d0 b2 ff eb                                      bl #0x82b364
0083e820  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0083e824  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083e828  08 30 96 e5                                      ldr r3, [r6, #8]
0083e82c  01 10 8f e0                                      add r1, pc, r1
0083e830  04 00 a0 e1                                      mov r0, r4
0083e834  57 20 a0 e3                                      mov r2, #0x57
0083e838  00 c0 8d e5                                      str ip, [sp]
0083e83c  a8 40 eb eb                                      bl #0x30eae4
0083e840  01 00 79 e3                                      cmn sb, #1
0083e844  07 00 00 0a                                      beq #0x83e868
0083e848  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0083e84c  09 20 a0 e1                                      mov r2, sb
0083e850  07 00 a0 e1                                      mov r0, r7
0083e854  01 10 8f e0                                      add r1, pc, r1
0083e858  a1 40 eb eb                                      bl #0x30eae4
0083e85c  04 00 a0 e1                                      mov r0, r4
0083e860  07 10 a0 e1                                      mov r1, r7
0083e864  b3 b2 ff eb                                      bl #0x82b338
0083e868  00 00 5a e3                                      cmp sl, #0
0083e86c  09 00 00 0a                                      beq #0x83e898
0083e870  00 00 5b e3                                      cmp fp, #0
0083e874  19 00 00 1a                                      bne #0x83e8e0
0083e878  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0083e87c  0a 20 a0 e1                                      mov r2, sl
0083e880  07 00 a0 e1                                      mov r0, r7
0083e884  01 10 8f e0                                      add r1, pc, r1
0083e888  95 40 eb eb                                      bl #0x30eae4
0083e88c  07 10 a0 e1                                      mov r1, r7
0083e890  04 00 a0 e1                                      mov r0, r4
0083e894  a7 b2 ff eb                                      bl #0x82b338
0083e898  70 00 9f e5                                      ldr r0, [pc, #0x70]
0083e89c  04 10 a0 e1                                      mov r1, r4
0083e8a0  00 00 8f e0                                      add r0, pc, r0
0083e8a4  b6 b3 ff eb                                      bl #0x82b784
0083e8a8  04 10 a0 e1                                      mov r1, r4
0083e8ac  00 30 96 e5                                      ldr r3, [r6]
0083e8b0  06 00 a0 e1                                      mov r0, r6
0083e8b4  0f e0 a0 e1                                      mov lr, pc
0083e8b8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083e8bc  08 30 95 e7                                      ldr r3, [r5, r8]
0083e8c0  01 1a 8d e2                                      add r1, sp, #0x1000
0083e8c4  8c 20 91 e5                                      ldr r2, [r1, #0x8c]
0083e8c8  00 30 93 e5                                      ldr r3, [r3]
0083e8cc  03 00 52 e1                                      cmp r2, r3
0083e8d0  08 00 00 1a                                      bne #0x83e8f8
0083e8d4  94 d0 8d e2                                      add sp, sp, #0x94
0083e8d8  01 da 8d e2                                      add sp, sp, #0x1000
0083e8dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083e8e0  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0083e8e4  0a 20 a0 e1                                      mov r2, sl
0083e8e8  07 00 a0 e1                                      mov r0, r7
0083e8ec  01 10 8f e0                                      add r1, pc, r1
0083e8f0  7b 40 eb eb                                      bl #0x30eae4
0083e8f4  e4 ff ff ea                                      b #0x83e88c
0083e8f8  84 3e eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083e8fc  c8 62 15 00 ac 40 00 00 a4 fc 0c 00 8c fc 0c 00  .byte 0xc8, 0x62, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0xfc, 0x0c, 0x00, 0x8c, 0xfc, 0x0c, 0x00
0083e90c  6c fc 0c 00 58 fc 0c 00 fc fb 0c 00              .byte 0x6c, 0xfc, 0x0c, 0x00, 0x58, 0xfc, 0x0c, 0x00, 0xfc, 0xfb, 0x0c, 0x00

; FUNCTION 0x0083e918, declared_size=508, range_size=508, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15sendAwardTrophyEPii
; demangled: GLXPlayerUser::sendAwardTrophy(int*, int)
; decoder-mode: arm
0083e918  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083e91c  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
0083e920  d8 c1 9f e5                                      ldr ip, [pc, #0x1d8]
0083e924  11 dc 4d e2                                      sub sp, sp, #0x1100
0083e928  34 d0 4d e2                                      sub sp, sp, #0x34
0083e92c  03 30 8f e0                                      add r3, pc, r3
0083e930  08 30 8d e5                                      str r3, [sp, #8]
0083e934  0c 30 93 e7                                      ldr r3, [r3, ip]
0083e938  00 00 51 e3                                      cmp r1, #0
0083e93c  00 00 52 13                                      cmpne r2, #0
0083e940  01 70 a0 e1                                      mov r7, r1
0083e944  00 30 93 e5                                      ldr r3, [r3]
0083e948  01 1a 8d e2                                      add r1, sp, #0x1000
0083e94c  10 c0 8d e5                                      str ip, [sp, #0x10]
0083e950  02 a0 a0 e1                                      mov sl, r2
0083e954  00 50 a0 c3                                      movgt r5, #0
0083e958  01 50 a0 d3                                      movle r5, #1
0083e95c  00 b0 a0 e1                                      mov fp, r0
0083e960  2c 31 81 e5                                      str r3, [r1, #0x12c]
0083e964  5a 00 00 da                                      ble #0x83ead4
0083e968  30 30 8d e2                                      add r3, sp, #0x30
0083e96c  14 30 43 e2                                      sub r3, r3, #0x14
0083e970  01 4a 8d e2                                      add r4, sp, #0x1000
0083e974  03 00 a0 e1                                      mov r0, r3
0083e978  05 10 a0 e1                                      mov r1, r5
0083e97c  01 2a a0 e3                                      mov r2, #0x1000
0083e980  1c 40 84 e2                                      add r4, r4, #0x1c
0083e984  11 6c 8d e2                                      add r6, sp, #0x1100
0083e988  0c 30 8d e5                                      str r3, [sp, #0xc]
0083e98c  1c 60 86 e2                                      add r6, r6, #0x1c
0083e990  73 b2 ff eb                                      bl #0x82b364
0083e994  01 2c a0 e3                                      mov r2, #0x100
0083e998  04 00 a0 e1                                      mov r0, r4
0083e99c  05 10 a0 e1                                      mov r1, r5
0083e9a0  ae 3e eb eb                                      bl #0x30e460
0083e9a4  04 30 86 e2                                      add r3, r6, #4
0083e9a8  04 50 83 e4                                      str r5, [r3], #4
0083e9ac  04 50 83 e4                                      str r5, [r3], #4
0083e9b0  01 2a 8d e2                                      add r2, sp, #0x1000
0083e9b4  01 80 5a e2                                      subs r8, sl, #1
0083e9b8  00 50 83 e5                                      str r5, [r3]
0083e9bc  1c 51 82 e5                                      str r5, [r2, #0x11c]
0083e9c0  26 00 00 0a                                      beq #0x83ea60
0083e9c4  38 31 9f e5                                      ldr r3, [pc, #0x138]
0083e9c8  38 91 9f e5                                      ldr sb, [pc, #0x138]
0083e9cc  02 a0 4a e2                                      sub sl, sl, #2
0083e9d0  03 30 8f e0                                      add r3, pc, r3
0083e9d4  09 90 8f e0                                      add sb, pc, sb
0083e9d8  14 30 8d e5                                      str r3, [sp, #0x14]
0083e9dc  03 00 00 ea                                      b #0x83e9f0
0083e9e0  01 50 85 e2                                      add r5, r5, #1
0083e9e4  08 00 55 e1                                      cmp r5, r8
0083e9e8  04 70 87 e2                                      add r7, r7, #4
0083e9ec  1b 00 00 aa                                      bge #0x83ea60
0083e9f0  10 20 a0 e3                                      mov r2, #0x10
0083e9f4  06 00 a0 e1                                      mov r0, r6
0083e9f8  00 10 a0 e3                                      mov r1, #0
0083e9fc  58 b2 ff eb                                      bl #0x82b364
0083ea00  09 10 a0 e1                                      mov r1, sb
0083ea04  00 20 97 e5                                      ldr r2, [r7]
0083ea08  06 00 a0 e1                                      mov r0, r6
0083ea0c  34 40 eb eb                                      bl #0x30eae4
0083ea10  04 00 a0 e1                                      mov r0, r4
0083ea14  06 10 a0 e1                                      mov r1, r6
0083ea18  46 b2 ff eb                                      bl #0x82b338
0083ea1c  05 00 5a e1                                      cmp sl, r5
0083ea20  ee ff ff 1a                                      bne #0x83e9e0
0083ea24  10 20 a0 e3                                      mov r2, #0x10
0083ea28  06 00 a0 e1                                      mov r0, r6
0083ea2c  00 10 a0 e3                                      mov r1, #0
0083ea30  4b b2 ff eb                                      bl #0x82b364
0083ea34  04 20 97 e5                                      ldr r2, [r7, #4]
0083ea38  14 10 9d e5                                      ldr r1, [sp, #0x14]
0083ea3c  06 00 a0 e1                                      mov r0, r6
0083ea40  27 40 eb eb                                      bl #0x30eae4
0083ea44  01 50 85 e2                                      add r5, r5, #1
0083ea48  04 00 a0 e1                                      mov r0, r4
0083ea4c  06 10 a0 e1                                      mov r1, r6
0083ea50  38 b2 ff eb                                      bl #0x82b338
0083ea54  08 00 55 e1                                      cmp r5, r8
0083ea58  04 70 87 e2                                      add r7, r7, #4
0083ea5c  e3 ff ff ba                                      blt #0x83e9f0
0083ea60  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0083ea64  0c c0 9b e5                                      ldr ip, [fp, #0xc]
0083ea68  08 30 9b e5                                      ldr r3, [fp, #8]
0083ea6c  01 10 8f e0                                      add r1, pc, r1
0083ea70  55 20 a0 e3                                      mov r2, #0x55
0083ea74  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0083ea78  00 c0 8d e5                                      str ip, [sp]
0083ea7c  04 40 8d e5                                      str r4, [sp, #4]
0083ea80  17 40 eb eb                                      bl #0x30eae4
0083ea84  84 00 9f e5                                      ldr r0, [pc, #0x84]
0083ea88  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0083ea8c  00 00 8f e0                                      add r0, pc, r0
0083ea90  3b b3 ff eb                                      bl #0x82b784
0083ea94  0b 00 a0 e1                                      mov r0, fp
0083ea98  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0083ea9c  00 30 9b e5                                      ldr r3, [fp]
0083eaa0  0f e0 a0 e1                                      mov lr, pc
0083eaa4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083eaa8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0083eaac  08 10 9d e5                                      ldr r1, [sp, #8]
0083eab0  0c 30 91 e7                                      ldr r3, [r1, ip]
0083eab4  01 ca 8d e2                                      add ip, sp, #0x1000
0083eab8  2c 21 9c e5                                      ldr r2, [ip, #0x12c]
0083eabc  00 30 93 e5                                      ldr r3, [r3]
0083eac0  03 00 52 e1                                      cmp r2, r3
0083eac4  0b 00 00 1a                                      bne #0x83eaf8
0083eac8  4d df 8d e2                                      add sp, sp, #0x134
0083eacc  01 da 8d e2                                      add sp, sp, #0x1000
0083ead0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083ead4  04 30 90 e5                                      ldr r3, [r0, #4]
0083ead8  55 10 a0 e3                                      mov r1, #0x55
0083eadc  63 20 e0 e3                                      mvn r2, #0x63
0083eae0  03 00 a0 e1                                      mov r0, r3
0083eae4  00 30 93 e5                                      ldr r3, [r3]
0083eae8  0f e0 a0 e1                                      mov lr, pc
0083eaec  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083eaf0  00 00 a0 e3                                      mov r0, #0
0083eaf4  eb ff ff ea                                      b #0x83eaa8
0083eaf8  04 3e eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083eafc  64 61 15 00 ac 40 00 00 e0 34 08 00 c4 eb 0c 00  .byte 0x64, 0x61, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x34, 0x08, 0x00, 0xc4, 0xeb, 0x0c, 0x00
0083eb0c  dc fa 0c 00 d4 fa 0c 00                          .byte 0xdc, 0xfa, 0x0c, 0x00, 0xd4, 0xfa, 0x0c, 0x00

; FUNCTION 0x0083eb14, declared_size=780, range_size=780, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser18sendUpdateUserInfoEPciS0_S0_S0_iS0_
; demangled: GLXPlayerUser::sendUpdateUserInfo(char*, int, char*, char*, char*, int, char*)
; decoder-mode: arm
0083eb14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083eb18  d4 62 9f e5                                      ldr r6, [pc, #0x2d4]
0083eb1c  d4 c2 9f e5                                      ldr ip, [pc, #0x2d4]
0083eb20  02 a0 a0 e1                                      mov sl, r2
0083eb24  06 60 8f e0                                      add r6, pc, r6
0083eb28  0c 20 96 e7                                      ldr r2, [r6, ip]
0083eb2c  42 dd 4d e2                                      sub sp, sp, #0x1080
0083eb30  24 d0 4d e2                                      sub sp, sp, #0x24
0083eb34  00 20 92 e5                                      ldr r2, [r2]
0083eb38  10 c0 8d e5                                      str ip, [sp, #0x10]
0083eb3c  01 80 a0 e1                                      mov r8, r1
0083eb40  00 00 51 e3                                      cmp r1, #0
0083eb44  01 00 7a 03                                      cmneq sl, #1
0083eb48  01 1a 8d e2                                      add r1, sp, #0x1000
0083eb4c  9c 20 81 e5                                      str r2, [r1, #0x9c]
0083eb50  cc 20 91 e5                                      ldr r2, [r1, #0xcc]
0083eb54  03 90 a0 e1                                      mov sb, r3
0083eb58  00 70 a0 e1                                      mov r7, r0
0083eb5c  0c 20 8d e5                                      str r2, [sp, #0xc]
0083eb60  d4 30 91 e5                                      ldr r3, [r1, #0xd4]
0083eb64  c8 b0 91 e5                                      ldr fp, [r1, #0xc8]
0083eb68  14 30 8d e5                                      str r3, [sp, #0x14]
0083eb6c  02 00 00 1a                                      bne #0x83eb7c
0083eb70  00 00 5b e3                                      cmp fp, #0
0083eb74  00 00 59 03                                      cmpeq sb, #0
0083eb78  8d 00 00 0a                                      beq #0x83edb4
0083eb7c  20 50 8d e2                                      add r5, sp, #0x20
0083eb80  04 50 45 e2                                      sub r5, r5, #4
0083eb84  05 00 a0 e1                                      mov r0, r5
0083eb88  00 10 a0 e3                                      mov r1, #0
0083eb8c  01 2a a0 e3                                      mov r2, #0x1000
0083eb90  f3 b1 ff eb                                      bl #0x82b364
0083eb94  60 12 9f e5                                      ldr r1, [pc, #0x260]
0083eb98  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0083eb9c  01 4a 8d e2                                      add r4, sp, #0x1000
0083eba0  08 30 97 e5                                      ldr r3, [r7, #8]
0083eba4  01 10 8f e0                                      add r1, pc, r1
0083eba8  52 20 a0 e3                                      mov r2, #0x52
0083ebac  05 00 a0 e1                                      mov r0, r5
0083ebb0  1c 40 84 e2                                      add r4, r4, #0x1c
0083ebb4  00 c0 8d e5                                      str ip, [sp]
0083ebb8  c9 3f eb eb                                      bl #0x30eae4
0083ebbc  04 00 a0 e1                                      mov r0, r4
0083ebc0  00 10 a0 e3                                      mov r1, #0
0083ebc4  80 20 a0 e3                                      mov r2, #0x80
0083ebc8  24 3e eb eb                                      bl #0x30e460
0083ebcc  00 00 58 e3                                      cmp r8, #0
0083ebd0  0b 00 00 0a                                      beq #0x83ec04
0083ebd4  04 00 a0 e1                                      mov r0, r4
0083ebd8  00 10 a0 e3                                      mov r1, #0
0083ebdc  80 20 a0 e3                                      mov r2, #0x80
0083ebe0  df b1 ff eb                                      bl #0x82b364
0083ebe4  14 12 9f e5                                      ldr r1, [pc, #0x214]
0083ebe8  08 20 a0 e1                                      mov r2, r8
0083ebec  04 00 a0 e1                                      mov r0, r4
0083ebf0  01 10 8f e0                                      add r1, pc, r1
0083ebf4  ba 3f eb eb                                      bl #0x30eae4
0083ebf8  05 00 a0 e1                                      mov r0, r5
0083ebfc  04 10 a0 e1                                      mov r1, r4
0083ec00  cc b1 ff eb                                      bl #0x82b338
0083ec04  01 00 7a e3                                      cmn sl, #1
0083ec08  0b 00 00 0a                                      beq #0x83ec3c
0083ec0c  04 00 a0 e1                                      mov r0, r4
0083ec10  00 10 a0 e3                                      mov r1, #0
0083ec14  80 20 a0 e3                                      mov r2, #0x80
0083ec18  d1 b1 ff eb                                      bl #0x82b364
0083ec1c  e0 11 9f e5                                      ldr r1, [pc, #0x1e0]
0083ec20  0a 20 a0 e1                                      mov r2, sl
0083ec24  04 00 a0 e1                                      mov r0, r4
0083ec28  01 10 8f e0                                      add r1, pc, r1
0083ec2c  ac 3f eb eb                                      bl #0x30eae4
0083ec30  05 00 a0 e1                                      mov r0, r5
0083ec34  04 10 a0 e1                                      mov r1, r4
0083ec38  be b1 ff eb                                      bl #0x82b338
0083ec3c  00 00 59 e3                                      cmp sb, #0
0083ec40  0b 00 00 0a                                      beq #0x83ec74
0083ec44  04 00 a0 e1                                      mov r0, r4
0083ec48  00 10 a0 e3                                      mov r1, #0
0083ec4c  80 20 a0 e3                                      mov r2, #0x80
0083ec50  c3 b1 ff eb                                      bl #0x82b364
0083ec54  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
0083ec58  09 20 a0 e1                                      mov r2, sb
0083ec5c  04 00 a0 e1                                      mov r0, r4
0083ec60  01 10 8f e0                                      add r1, pc, r1
0083ec64  9e 3f eb eb                                      bl #0x30eae4
0083ec68  05 00 a0 e1                                      mov r0, r5
0083ec6c  04 10 a0 e1                                      mov r1, r4
0083ec70  b0 b1 ff eb                                      bl #0x82b338
0083ec74  00 00 5b e3                                      cmp fp, #0
0083ec78  0b 00 00 0a                                      beq #0x83ecac
0083ec7c  04 00 a0 e1                                      mov r0, r4
0083ec80  00 10 a0 e3                                      mov r1, #0
0083ec84  80 20 a0 e3                                      mov r2, #0x80
0083ec88  b5 b1 ff eb                                      bl #0x82b364
0083ec8c  78 11 9f e5                                      ldr r1, [pc, #0x178]
0083ec90  0b 20 a0 e1                                      mov r2, fp
0083ec94  04 00 a0 e1                                      mov r0, r4
0083ec98  01 10 8f e0                                      add r1, pc, r1
0083ec9c  90 3f eb eb                                      bl #0x30eae4
0083eca0  05 00 a0 e1                                      mov r0, r5
0083eca4  04 10 a0 e1                                      mov r1, r4
0083eca8  a2 b1 ff eb                                      bl #0x82b338
0083ecac  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0083ecb0  00 00 51 e3                                      cmp r1, #0
0083ecb4  0b 00 00 0a                                      beq #0x83ece8
0083ecb8  04 00 a0 e1                                      mov r0, r4
0083ecbc  00 10 a0 e3                                      mov r1, #0
0083ecc0  80 20 a0 e3                                      mov r2, #0x80
0083ecc4  a6 b1 ff eb                                      bl #0x82b364
0083ecc8  40 11 9f e5                                      ldr r1, [pc, #0x140]
0083eccc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0083ecd0  04 00 a0 e1                                      mov r0, r4
0083ecd4  01 10 8f e0                                      add r1, pc, r1
0083ecd8  81 3f eb eb                                      bl #0x30eae4
0083ecdc  05 00 a0 e1                                      mov r0, r5
0083ece0  04 10 a0 e1                                      mov r1, r4
0083ece4  93 b1 ff eb                                      bl #0x82b338
0083ece8  01 2a 8d e2                                      add r2, sp, #0x1000
0083ecec  d0 20 92 e5                                      ldr r2, [r2, #0xd0]
0083ecf0  01 00 72 e3                                      cmn r2, #1
0083ecf4  0c 00 00 0a                                      beq #0x83ed2c
0083ecf8  04 00 a0 e1                                      mov r0, r4
0083ecfc  00 10 a0 e3                                      mov r1, #0
0083ed00  80 20 a0 e3                                      mov r2, #0x80
0083ed04  96 b1 ff eb                                      bl #0x82b364
0083ed08  04 11 9f e5                                      ldr r1, [pc, #0x104]
0083ed0c  01 3a 8d e2                                      add r3, sp, #0x1000
0083ed10  d0 20 93 e5                                      ldr r2, [r3, #0xd0]
0083ed14  01 10 8f e0                                      add r1, pc, r1
0083ed18  04 00 a0 e1                                      mov r0, r4
0083ed1c  70 3f eb eb                                      bl #0x30eae4
0083ed20  05 00 a0 e1                                      mov r0, r5
0083ed24  04 10 a0 e1                                      mov r1, r4
0083ed28  82 b1 ff eb                                      bl #0x82b338
0083ed2c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0083ed30  00 00 5c e3                                      cmp ip, #0
0083ed34  0b 00 00 0a                                      beq #0x83ed68
0083ed38  04 00 a0 e1                                      mov r0, r4
0083ed3c  00 10 a0 e3                                      mov r1, #0
0083ed40  80 20 a0 e3                                      mov r2, #0x80
0083ed44  86 b1 ff eb                                      bl #0x82b364
0083ed48  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
0083ed4c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0083ed50  04 00 a0 e1                                      mov r0, r4
0083ed54  01 10 8f e0                                      add r1, pc, r1
0083ed58  61 3f eb eb                                      bl #0x30eae4
0083ed5c  05 00 a0 e1                                      mov r0, r5
0083ed60  04 10 a0 e1                                      mov r1, r4
0083ed64  73 b1 ff eb                                      bl #0x82b338
0083ed68  ac 00 9f e5                                      ldr r0, [pc, #0xac]
0083ed6c  05 10 a0 e1                                      mov r1, r5
0083ed70  00 00 8f e0                                      add r0, pc, r0
0083ed74  82 b2 ff eb                                      bl #0x82b784
0083ed78  07 00 a0 e1                                      mov r0, r7
0083ed7c  05 10 a0 e1                                      mov r1, r5
0083ed80  00 30 97 e5                                      ldr r3, [r7]
0083ed84  0f e0 a0 e1                                      mov lr, pc
0083ed88  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083ed8c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0083ed90  01 ca 8d e2                                      add ip, sp, #0x1000
0083ed94  9c 20 9c e5                                      ldr r2, [ip, #0x9c]
0083ed98  01 30 96 e7                                      ldr r3, [r6, r1]
0083ed9c  00 30 93 e5                                      ldr r3, [r3]
0083eda0  03 00 52 e1                                      cmp r2, r3
0083eda4  11 00 00 1a                                      bne #0x83edf0
0083eda8  a4 d0 8d e2                                      add sp, sp, #0xa4
0083edac  01 da 8d e2                                      add sp, sp, #0x1000
0083edb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083edb4  d0 c0 91 e5                                      ldr ip, [r1, #0xd0]
0083edb8  00 00 52 e3                                      cmp r2, #0
0083edbc  01 00 7c 03                                      cmneq ip, #1
0083edc0  6d ff ff 1a                                      bne #0x83eb7c
0083edc4  00 00 53 e3                                      cmp r3, #0
0083edc8  6b ff ff 1a                                      bne #0x83eb7c
0083edcc  04 30 90 e5                                      ldr r3, [r0, #4]
0083edd0  52 10 a0 e3                                      mov r1, #0x52
0083edd4  63 20 e0 e3                                      mvn r2, #0x63
0083edd8  03 00 a0 e1                                      mov r0, r3
0083eddc  00 30 93 e5                                      ldr r3, [r3]
0083ede0  0f e0 a0 e1                                      mov lr, pc
0083ede4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083ede8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0083edec  e6 ff ff ea                                      b #0x83ed8c
0083edf0  46 3d eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083edf4  6c 5f 15 00 ac 40 00 00 2c f9 0c 00 b8 f9 0c 00  .byte 0x6c, 0x5f, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0xf9, 0x0c, 0x00, 0xb8, 0xf9, 0x0c, 0x00
0083ee04  90 f9 0c 00 68 f9 0c 00 40 f9 0c 00 14 f9 0c 00  .byte 0x90, 0xf9, 0x0c, 0x00, 0x68, 0xf9, 0x0c, 0x00, 0x40, 0xf9, 0x0c, 0x00, 0x14, 0xf9, 0x0c, 0x00
0083ee14  e4 f8 0c 00 ac f8 0c 00 a0 f8 0c 00              .byte 0xe4, 0xf8, 0x0c, 0x00, 0xac, 0xf8, 0x0c, 0x00, 0xa0, 0xf8, 0x0c, 0x00

; FUNCTION 0x0083ee20, declared_size=304, range_size=304, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser15sendGetUserInfoEPcb
; demangled: GLXPlayerUser::sendGetUserInfo(char*, bool)
; decoder-mode: arm
0083ee20  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083ee24  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0083ee28  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
0083ee2c  42 dd 4d e2                                      sub sp, sp, #0x1080
0083ee30  04 40 8f e0                                      add r4, pc, r4
0083ee34  07 30 94 e7                                      ldr r3, [r4, r7]
0083ee38  10 d0 4d e2                                      sub sp, sp, #0x10
0083ee3c  10 50 8d e2                                      add r5, sp, #0x10
0083ee40  00 30 93 e5                                      ldr r3, [r3]
0083ee44  02 90 a0 e1                                      mov sb, r2
0083ee48  01 2a a0 e3                                      mov r2, #0x1000
0083ee4c  02 c0 8d e0                                      add ip, sp, r2
0083ee50  04 50 45 e2                                      sub r5, r5, #4
0083ee54  00 60 a0 e1                                      mov r6, r0
0083ee58  8c 30 8c e5                                      str r3, [ip, #0x8c]
0083ee5c  01 80 a0 e1                                      mov r8, r1
0083ee60  05 00 a0 e1                                      mov r0, r5
0083ee64  00 10 a0 e3                                      mov r1, #0
0083ee68  3d b1 ff eb                                      bl #0x82b364
0083ee6c  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0083ee70  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083ee74  08 30 96 e5                                      ldr r3, [r6, #8]
0083ee78  01 10 8f e0                                      add r1, pc, r1
0083ee7c  05 00 a0 e1                                      mov r0, r5
0083ee80  51 20 a0 e3                                      mov r2, #0x51
0083ee84  00 c0 8d e5                                      str ip, [sp]
0083ee88  15 3f eb eb                                      bl #0x30eae4
0083ee8c  00 00 58 e3                                      cmp r8, #0
0083ee90  0f 00 00 0a                                      beq #0x83eed4
0083ee94  01 aa 8d e2                                      add sl, sp, #0x1000
0083ee98  0c a0 8a e2                                      add sl, sl, #0xc
0083ee9c  0a 00 a0 e1                                      mov r0, sl
0083eea0  00 10 a0 e3                                      mov r1, #0
0083eea4  80 20 a0 e3                                      mov r2, #0x80
0083eea8  6c 3d eb eb                                      bl #0x30e460
0083eeac  00 00 59 e3                                      cmp sb, #0
0083eeb0  19 00 00 1a                                      bne #0x83ef1c
0083eeb4  88 10 9f e5                                      ldr r1, [pc, #0x88]
0083eeb8  08 20 a0 e1                                      mov r2, r8
0083eebc  0a 00 a0 e1                                      mov r0, sl
0083eec0  01 10 8f e0                                      add r1, pc, r1
0083eec4  06 3f eb eb                                      bl #0x30eae4
0083eec8  0a 10 a0 e1                                      mov r1, sl
0083eecc  05 00 a0 e1                                      mov r0, r5
0083eed0  18 b1 ff eb                                      bl #0x82b338
0083eed4  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0083eed8  05 10 a0 e1                                      mov r1, r5
0083eedc  00 00 8f e0                                      add r0, pc, r0
0083eee0  27 b2 ff eb                                      bl #0x82b784
0083eee4  05 10 a0 e1                                      mov r1, r5
0083eee8  00 30 96 e5                                      ldr r3, [r6]
0083eeec  06 00 a0 e1                                      mov r0, r6
0083eef0  0f e0 a0 e1                                      mov lr, pc
0083eef4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083eef8  07 30 94 e7                                      ldr r3, [r4, r7]
0083eefc  01 1a 8d e2                                      add r1, sp, #0x1000
0083ef00  8c 20 91 e5                                      ldr r2, [r1, #0x8c]
0083ef04  00 30 93 e5                                      ldr r3, [r3]
0083ef08  03 00 52 e1                                      cmp r2, r3
0083ef0c  08 00 00 1a                                      bne #0x83ef34
0083ef10  90 d0 8d e2                                      add sp, sp, #0x90
0083ef14  01 da 8d e2                                      add sp, sp, #0x1000
0083ef18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083ef1c  28 10 9f e5                                      ldr r1, [pc, #0x28]
0083ef20  08 20 a0 e1                                      mov r2, r8
0083ef24  0a 00 a0 e1                                      mov r0, sl
0083ef28  01 10 8f e0                                      add r1, pc, r1
0083ef2c  ec 3e eb eb                                      bl #0x30eae4
0083ef30  e4 ff ff ea                                      b #0x83eec8
0083ef34  f5 3c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083ef38  60 5c 15 00 ac 40 00 00 58 f6 0c 00 30 f6 0c 00  .byte 0x60, 0x5c, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0xf6, 0x0c, 0x00, 0x30, 0xf6, 0x0c, 0x00
0083ef48  7c f7 0c 00 c0 f5 0c 00                          .byte 0x7c, 0xf7, 0x0c, 0x00, 0xc0, 0xf5, 0x0c, 0x00

; FUNCTION 0x0083ef50, declared_size=304, range_size=304, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17sendGetUserAvatarEPcb
; demangled: GLXPlayerUser::sendGetUserAvatar(char*, bool)
; decoder-mode: arm
0083ef50  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083ef54  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0083ef58  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
0083ef5c  42 dd 4d e2                                      sub sp, sp, #0x1080
0083ef60  04 40 8f e0                                      add r4, pc, r4
0083ef64  07 30 94 e7                                      ldr r3, [r4, r7]
0083ef68  10 d0 4d e2                                      sub sp, sp, #0x10
0083ef6c  10 50 8d e2                                      add r5, sp, #0x10
0083ef70  00 30 93 e5                                      ldr r3, [r3]
0083ef74  02 90 a0 e1                                      mov sb, r2
0083ef78  01 2a a0 e3                                      mov r2, #0x1000
0083ef7c  02 c0 8d e0                                      add ip, sp, r2
0083ef80  04 50 45 e2                                      sub r5, r5, #4
0083ef84  00 60 a0 e1                                      mov r6, r0
0083ef88  8c 30 8c e5                                      str r3, [ip, #0x8c]
0083ef8c  01 80 a0 e1                                      mov r8, r1
0083ef90  05 00 a0 e1                                      mov r0, r5
0083ef94  00 10 a0 e3                                      mov r1, #0
0083ef98  f1 b0 ff eb                                      bl #0x82b364
0083ef9c  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0083efa0  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083efa4  08 30 96 e5                                      ldr r3, [r6, #8]
0083efa8  01 10 8f e0                                      add r1, pc, r1
0083efac  05 00 a0 e1                                      mov r0, r5
0083efb0  46 20 a0 e3                                      mov r2, #0x46
0083efb4  00 c0 8d e5                                      str ip, [sp]
0083efb8  c9 3e eb eb                                      bl #0x30eae4
0083efbc  00 00 58 e3                                      cmp r8, #0
0083efc0  0f 00 00 0a                                      beq #0x83f004
0083efc4  01 aa 8d e2                                      add sl, sp, #0x1000
0083efc8  0c a0 8a e2                                      add sl, sl, #0xc
0083efcc  0a 00 a0 e1                                      mov r0, sl
0083efd0  00 10 a0 e3                                      mov r1, #0
0083efd4  80 20 a0 e3                                      mov r2, #0x80
0083efd8  20 3d eb eb                                      bl #0x30e460
0083efdc  00 00 59 e3                                      cmp sb, #0
0083efe0  19 00 00 1a                                      bne #0x83f04c
0083efe4  88 10 9f e5                                      ldr r1, [pc, #0x88]
0083efe8  08 20 a0 e1                                      mov r2, r8
0083efec  0a 00 a0 e1                                      mov r0, sl
0083eff0  01 10 8f e0                                      add r1, pc, r1
0083eff4  ba 3e eb eb                                      bl #0x30eae4
0083eff8  0a 10 a0 e1                                      mov r1, sl
0083effc  05 00 a0 e1                                      mov r0, r5
0083f000  cc b0 ff eb                                      bl #0x82b338
0083f004  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0083f008  05 10 a0 e1                                      mov r1, r5
0083f00c  00 00 8f e0                                      add r0, pc, r0
0083f010  db b1 ff eb                                      bl #0x82b784
0083f014  05 10 a0 e1                                      mov r1, r5
0083f018  00 30 96 e5                                      ldr r3, [r6]
0083f01c  06 00 a0 e1                                      mov r0, r6
0083f020  0f e0 a0 e1                                      mov lr, pc
0083f024  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083f028  07 30 94 e7                                      ldr r3, [r4, r7]
0083f02c  01 1a 8d e2                                      add r1, sp, #0x1000
0083f030  8c 20 91 e5                                      ldr r2, [r1, #0x8c]
0083f034  00 30 93 e5                                      ldr r3, [r3]
0083f038  03 00 52 e1                                      cmp r2, r3
0083f03c  08 00 00 1a                                      bne #0x83f064
0083f040  90 d0 8d e2                                      add sp, sp, #0x90
0083f044  01 da 8d e2                                      add sp, sp, #0x1000
0083f048  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083f04c  28 10 9f e5                                      ldr r1, [pc, #0x28]
0083f050  08 20 a0 e1                                      mov r2, r8
0083f054  0a 00 a0 e1                                      mov r0, sl
0083f058  01 10 8f e0                                      add r1, pc, r1
0083f05c  a0 3e eb eb                                      bl #0x30eae4
0083f060  e4 ff ff ea                                      b #0x83eff8
0083f064  a9 3c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083f068  30 5b 15 00 ac 40 00 00 c8 d4 0c 00 00 e2 0c 00  .byte 0x30, 0x5b, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0xd4, 0x0c, 0x00, 0x00, 0xe2, 0x0c, 0x00
0083f078  64 ef 0c 00 48 f6 0c 00                          .byte 0x64, 0xef, 0x0c, 0x00, 0x48, 0xf6, 0x0c, 0x00

; FUNCTION 0x0083f080, declared_size=304, range_size=304, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser20sendGetUserBestScoreEPcb
; demangled: GLXPlayerUser::sendGetUserBestScore(char*, bool)
; decoder-mode: arm
0083f080  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083f084  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0083f088  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
0083f08c  42 dd 4d e2                                      sub sp, sp, #0x1080
0083f090  04 40 8f e0                                      add r4, pc, r4
0083f094  07 30 94 e7                                      ldr r3, [r4, r7]
0083f098  10 d0 4d e2                                      sub sp, sp, #0x10
0083f09c  10 50 8d e2                                      add r5, sp, #0x10
0083f0a0  00 30 93 e5                                      ldr r3, [r3]
0083f0a4  02 90 a0 e1                                      mov sb, r2
0083f0a8  01 2a a0 e3                                      mov r2, #0x1000
0083f0ac  02 c0 8d e0                                      add ip, sp, r2
0083f0b0  04 50 45 e2                                      sub r5, r5, #4
0083f0b4  00 60 a0 e1                                      mov r6, r0
0083f0b8  8c 30 8c e5                                      str r3, [ip, #0x8c]
0083f0bc  01 80 a0 e1                                      mov r8, r1
0083f0c0  05 00 a0 e1                                      mov r0, r5
0083f0c4  00 10 a0 e3                                      mov r1, #0
0083f0c8  a5 b0 ff eb                                      bl #0x82b364
0083f0cc  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0083f0d0  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083f0d4  08 30 96 e5                                      ldr r3, [r6, #8]
0083f0d8  01 10 8f e0                                      add r1, pc, r1
0083f0dc  05 00 a0 e1                                      mov r0, r5
0083f0e0  45 20 a0 e3                                      mov r2, #0x45
0083f0e4  00 c0 8d e5                                      str ip, [sp]
0083f0e8  7d 3e eb eb                                      bl #0x30eae4
0083f0ec  00 00 58 e3                                      cmp r8, #0
0083f0f0  0f 00 00 0a                                      beq #0x83f134
0083f0f4  01 aa 8d e2                                      add sl, sp, #0x1000
0083f0f8  0c a0 8a e2                                      add sl, sl, #0xc
0083f0fc  0a 00 a0 e1                                      mov r0, sl
0083f100  00 10 a0 e3                                      mov r1, #0
0083f104  80 20 a0 e3                                      mov r2, #0x80
0083f108  d4 3c eb eb                                      bl #0x30e460
0083f10c  00 00 59 e3                                      cmp sb, #0
0083f110  19 00 00 1a                                      bne #0x83f17c
0083f114  88 10 9f e5                                      ldr r1, [pc, #0x88]
0083f118  08 20 a0 e1                                      mov r2, r8
0083f11c  0a 00 a0 e1                                      mov r0, sl
0083f120  01 10 8f e0                                      add r1, pc, r1
0083f124  6e 3e eb eb                                      bl #0x30eae4
0083f128  0a 10 a0 e1                                      mov r1, sl
0083f12c  05 00 a0 e1                                      mov r0, r5
0083f130  80 b0 ff eb                                      bl #0x82b338
0083f134  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0083f138  05 10 a0 e1                                      mov r1, r5
0083f13c  00 00 8f e0                                      add r0, pc, r0
0083f140  8f b1 ff eb                                      bl #0x82b784
0083f144  05 10 a0 e1                                      mov r1, r5
0083f148  00 30 96 e5                                      ldr r3, [r6]
0083f14c  06 00 a0 e1                                      mov r0, r6
0083f150  0f e0 a0 e1                                      mov lr, pc
0083f154  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083f158  07 30 94 e7                                      ldr r3, [r4, r7]
0083f15c  01 1a 8d e2                                      add r1, sp, #0x1000
0083f160  8c 20 91 e5                                      ldr r2, [r1, #0x8c]
0083f164  00 30 93 e5                                      ldr r3, [r3]
0083f168  03 00 52 e1                                      cmp r2, r3
0083f16c  08 00 00 1a                                      bne #0x83f194
0083f170  90 d0 8d e2                                      add sp, sp, #0x90
0083f174  01 da 8d e2                                      add sp, sp, #0x1000
0083f178  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083f17c  28 10 9f e5                                      ldr r1, [pc, #0x28]
0083f180  08 20 a0 e1                                      mov r2, r8
0083f184  0a 00 a0 e1                                      mov r0, sl
0083f188  01 10 8f e0                                      add r1, pc, r1
0083f18c  54 3e eb eb                                      bl #0x30eae4
0083f190  e4 ff ff ea                                      b #0x83f128
0083f194  5d 3c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083f198  00 5a 15 00 ac 40 00 00 f8 f3 0c 00 d0 f3 0c 00  .byte 0x00, 0x5a, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf8, 0xf3, 0x0c, 0x00, 0xd0, 0xf3, 0x0c, 0x00
0083f1a8  6c f5 0c 00 60 f3 0c 00                          .byte 0x6c, 0xf5, 0x0c, 0x00, 0x60, 0xf3, 0x0c, 0x00

; FUNCTION 0x0083f1b0, declared_size=304, range_size=304, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser17sendGetReputationEPcb
; demangled: GLXPlayerUser::sendGetReputation(char*, bool)
; decoder-mode: arm
0083f1b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083f1b4  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0083f1b8  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
0083f1bc  42 dd 4d e2                                      sub sp, sp, #0x1080
0083f1c0  04 40 8f e0                                      add r4, pc, r4
0083f1c4  07 30 94 e7                                      ldr r3, [r4, r7]
0083f1c8  10 d0 4d e2                                      sub sp, sp, #0x10
0083f1cc  10 50 8d e2                                      add r5, sp, #0x10
0083f1d0  00 30 93 e5                                      ldr r3, [r3]
0083f1d4  02 90 a0 e1                                      mov sb, r2
0083f1d8  01 2a a0 e3                                      mov r2, #0x1000
0083f1dc  02 c0 8d e0                                      add ip, sp, r2
0083f1e0  04 50 45 e2                                      sub r5, r5, #4
0083f1e4  00 60 a0 e1                                      mov r6, r0
0083f1e8  8c 30 8c e5                                      str r3, [ip, #0x8c]
0083f1ec  01 80 a0 e1                                      mov r8, r1
0083f1f0  05 00 a0 e1                                      mov r0, r5
0083f1f4  00 10 a0 e3                                      mov r1, #0
0083f1f8  59 b0 ff eb                                      bl #0x82b364
0083f1fc  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0083f200  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083f204  08 30 96 e5                                      ldr r3, [r6, #8]
0083f208  01 10 8f e0                                      add r1, pc, r1
0083f20c  05 00 a0 e1                                      mov r0, r5
0083f210  43 20 a0 e3                                      mov r2, #0x43
0083f214  00 c0 8d e5                                      str ip, [sp]
0083f218  31 3e eb eb                                      bl #0x30eae4
0083f21c  00 00 58 e3                                      cmp r8, #0
0083f220  0f 00 00 0a                                      beq #0x83f264
0083f224  01 aa 8d e2                                      add sl, sp, #0x1000
0083f228  0c a0 8a e2                                      add sl, sl, #0xc
0083f22c  0a 00 a0 e1                                      mov r0, sl
0083f230  00 10 a0 e3                                      mov r1, #0
0083f234  80 20 a0 e3                                      mov r2, #0x80
0083f238  88 3c eb eb                                      bl #0x30e460
0083f23c  00 00 59 e3                                      cmp sb, #0
0083f240  19 00 00 1a                                      bne #0x83f2ac
0083f244  88 10 9f e5                                      ldr r1, [pc, #0x88]
0083f248  08 20 a0 e1                                      mov r2, r8
0083f24c  0a 00 a0 e1                                      mov r0, sl
0083f250  01 10 8f e0                                      add r1, pc, r1
0083f254  22 3e eb eb                                      bl #0x30eae4
0083f258  0a 10 a0 e1                                      mov r1, sl
0083f25c  05 00 a0 e1                                      mov r0, r5
0083f260  34 b0 ff eb                                      bl #0x82b338
0083f264  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0083f268  05 10 a0 e1                                      mov r1, r5
0083f26c  00 00 8f e0                                      add r0, pc, r0
0083f270  43 b1 ff eb                                      bl #0x82b784
0083f274  05 10 a0 e1                                      mov r1, r5
0083f278  00 30 96 e5                                      ldr r3, [r6]
0083f27c  06 00 a0 e1                                      mov r0, r6
0083f280  0f e0 a0 e1                                      mov lr, pc
0083f284  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083f288  07 30 94 e7                                      ldr r3, [r4, r7]
0083f28c  01 1a 8d e2                                      add r1, sp, #0x1000
0083f290  8c 20 91 e5                                      ldr r2, [r1, #0x8c]
0083f294  00 30 93 e5                                      ldr r3, [r3]
0083f298  03 00 52 e1                                      cmp r2, r3
0083f29c  08 00 00 1a                                      bne #0x83f2c4
0083f2a0  90 d0 8d e2                                      add sp, sp, #0x90
0083f2a4  01 da 8d e2                                      add sp, sp, #0x1000
0083f2a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083f2ac  28 10 9f e5                                      ldr r1, [pc, #0x28]
0083f2b0  08 20 a0 e1                                      mov r2, r8
0083f2b4  0a 00 a0 e1                                      mov r0, sl
0083f2b8  01 10 8f e0                                      add r1, pc, r1
0083f2bc  08 3e eb eb                                      bl #0x30eae4
0083f2c0  e4 ff ff ea                                      b #0x83f258
0083f2c4  11 3c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083f2c8  d0 58 15 00 ac 40 00 00 c8 f2 0c 00 a0 f2 0c 00  .byte 0xd0, 0x58, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0xf2, 0x0c, 0x00, 0xa0, 0xf2, 0x0c, 0x00
0083f2d8  84 f4 0c 00 30 f2 0c 00                          .byte 0x84, 0xf4, 0x0c, 0x00, 0x30, 0xf2, 0x0c, 0x00

; FUNCTION 0x0083f2e0, declared_size=352, range_size=352, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser20sendGetUserStoreDataEPcS0_b
; demangled: GLXPlayerUser::sendGetUserStoreData(char*, char*, bool)
; decoder-mode: arm
0083f2e0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083f2e4  3c 41 9f e5                                      ldr r4, [pc, #0x13c]
0083f2e8  3c 71 9f e5                                      ldr r7, [pc, #0x13c]
0083f2ec  00 a0 51 e2                                      subs sl, r1, #0
0083f2f0  04 40 8f e0                                      add r4, pc, r4
0083f2f4  07 10 94 e7                                      ldr r1, [r4, r7]
0083f2f8  42 dd 4d e2                                      sub sp, sp, #0x1080
0083f2fc  02 80 a0 e1                                      mov r8, r2
0083f300  00 20 91 e5                                      ldr r2, [r1]
0083f304  10 d0 4d e2                                      sub sp, sp, #0x10
0083f308  01 1a 8d e2                                      add r1, sp, #0x1000
0083f30c  00 60 a0 e1                                      mov r6, r0
0083f310  03 90 a0 e1                                      mov sb, r3
0083f314  8c 20 81 e5                                      str r2, [r1, #0x8c]
0083f318  38 00 00 0a                                      beq #0x83f400
0083f31c  10 50 8d e2                                      add r5, sp, #0x10
0083f320  04 50 45 e2                                      sub r5, r5, #4
0083f324  05 00 a0 e1                                      mov r0, r5
0083f328  00 10 a0 e3                                      mov r1, #0
0083f32c  01 2a a0 e3                                      mov r2, #0x1000
0083f330  0b b0 ff eb                                      bl #0x82b364
0083f334  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
0083f338  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083f33c  08 30 96 e5                                      ldr r3, [r6, #8]
0083f340  01 10 8f e0                                      add r1, pc, r1
0083f344  05 00 a0 e1                                      mov r0, r5
0083f348  41 20 a0 e3                                      mov r2, #0x41
0083f34c  00 c0 8d e5                                      str ip, [sp]
0083f350  04 a0 8d e5                                      str sl, [sp, #4]
0083f354  e2 3d eb eb                                      bl #0x30eae4
0083f358  00 00 58 e3                                      cmp r8, #0
0083f35c  0f 00 00 0a                                      beq #0x83f3a0
0083f360  01 aa 8d e2                                      add sl, sp, #0x1000
0083f364  0c a0 8a e2                                      add sl, sl, #0xc
0083f368  0a 00 a0 e1                                      mov r0, sl
0083f36c  00 10 a0 e3                                      mov r1, #0
0083f370  80 20 a0 e3                                      mov r2, #0x80
0083f374  39 3c eb eb                                      bl #0x30e460
0083f378  00 00 59 e3                                      cmp sb, #0
0083f37c  19 00 00 1a                                      bne #0x83f3e8
0083f380  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0083f384  08 20 a0 e1                                      mov r2, r8
0083f388  0a 00 a0 e1                                      mov r0, sl
0083f38c  01 10 8f e0                                      add r1, pc, r1
0083f390  d3 3d eb eb                                      bl #0x30eae4
0083f394  0a 10 a0 e1                                      mov r1, sl
0083f398  05 00 a0 e1                                      mov r0, r5
0083f39c  e5 af ff eb                                      bl #0x82b338
0083f3a0  90 00 9f e5                                      ldr r0, [pc, #0x90]
0083f3a4  05 10 a0 e1                                      mov r1, r5
0083f3a8  00 00 8f e0                                      add r0, pc, r0
0083f3ac  f4 b0 ff eb                                      bl #0x82b784
0083f3b0  06 00 a0 e1                                      mov r0, r6
0083f3b4  05 10 a0 e1                                      mov r1, r5
0083f3b8  00 30 96 e5                                      ldr r3, [r6]
0083f3bc  0f e0 a0 e1                                      mov lr, pc
0083f3c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083f3c4  07 30 94 e7                                      ldr r3, [r4, r7]
0083f3c8  01 1a 8d e2                                      add r1, sp, #0x1000
0083f3cc  8c 20 91 e5                                      ldr r2, [r1, #0x8c]
0083f3d0  00 30 93 e5                                      ldr r3, [r3]
0083f3d4  03 00 52 e1                                      cmp r2, r3
0083f3d8  11 00 00 1a                                      bne #0x83f424
0083f3dc  90 d0 8d e2                                      add sp, sp, #0x90
0083f3e0  01 da 8d e2                                      add sp, sp, #0x1000
0083f3e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083f3e8  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0083f3ec  08 20 a0 e1                                      mov r2, r8
0083f3f0  0a 00 a0 e1                                      mov r0, sl
0083f3f4  01 10 8f e0                                      add r1, pc, r1
0083f3f8  b9 3d eb eb                                      bl #0x30eae4
0083f3fc  e4 ff ff ea                                      b #0x83f394
0083f400  04 30 90 e5                                      ldr r3, [r0, #4]
0083f404  40 10 a0 e3                                      mov r1, #0x40
0083f408  63 20 e0 e3                                      mvn r2, #0x63
0083f40c  03 00 a0 e1                                      mov r0, r3
0083f410  00 30 93 e5                                      ldr r3, [r3]
0083f414  0f e0 a0 e1                                      mov lr, pc
0083f418  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083f41c  0a 00 a0 e1                                      mov r0, sl
0083f420  e7 ff ff ea                                      b #0x83f3c4
0083f424  b9 3b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083f428  a0 57 15 00 ac 40 00 00 f8 f3 0c 00 64 f1 0c 00  .byte 0xa0, 0x57, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf8, 0xf3, 0x0c, 0x00, 0x64, 0xf1, 0x0c, 0x00
0083f438  a8 f3 0c 00 f4 f0 0c 00                          .byte 0xa8, 0xf3, 0x0c, 0x00, 0xf4, 0xf0, 0x0c, 0x00

; FUNCTION 0x0083f440, declared_size=304, range_size=304, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser16sendGetUserStateEPcb
; demangled: GLXPlayerUser::sendGetUserState(char*, bool)
; decoder-mode: arm
0083f440  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0083f444  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0083f448  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
0083f44c  42 dd 4d e2                                      sub sp, sp, #0x1080
0083f450  04 40 8f e0                                      add r4, pc, r4
0083f454  07 30 94 e7                                      ldr r3, [r4, r7]
0083f458  10 d0 4d e2                                      sub sp, sp, #0x10
0083f45c  10 50 8d e2                                      add r5, sp, #0x10
0083f460  00 30 93 e5                                      ldr r3, [r3]
0083f464  02 90 a0 e1                                      mov sb, r2
0083f468  01 2a a0 e3                                      mov r2, #0x1000
0083f46c  02 c0 8d e0                                      add ip, sp, r2
0083f470  04 50 45 e2                                      sub r5, r5, #4
0083f474  00 60 a0 e1                                      mov r6, r0
0083f478  8c 30 8c e5                                      str r3, [ip, #0x8c]
0083f47c  01 80 a0 e1                                      mov r8, r1
0083f480  05 00 a0 e1                                      mov r0, r5
0083f484  00 10 a0 e3                                      mov r1, #0
0083f488  b5 af ff eb                                      bl #0x82b364
0083f48c  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0083f490  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0083f494  08 30 96 e5                                      ldr r3, [r6, #8]
0083f498  01 10 8f e0                                      add r1, pc, r1
0083f49c  05 00 a0 e1                                      mov r0, r5
0083f4a0  40 20 a0 e3                                      mov r2, #0x40
0083f4a4  00 c0 8d e5                                      str ip, [sp]
0083f4a8  8d 3d eb eb                                      bl #0x30eae4
0083f4ac  00 00 58 e3                                      cmp r8, #0
0083f4b0  0f 00 00 0a                                      beq #0x83f4f4
0083f4b4  01 aa 8d e2                                      add sl, sp, #0x1000
0083f4b8  0c a0 8a e2                                      add sl, sl, #0xc
0083f4bc  0a 00 a0 e1                                      mov r0, sl
0083f4c0  00 10 a0 e3                                      mov r1, #0
0083f4c4  80 20 a0 e3                                      mov r2, #0x80
0083f4c8  e4 3b eb eb                                      bl #0x30e460
0083f4cc  00 00 59 e3                                      cmp sb, #0
0083f4d0  19 00 00 1a                                      bne #0x83f53c
0083f4d4  88 10 9f e5                                      ldr r1, [pc, #0x88]
0083f4d8  08 20 a0 e1                                      mov r2, r8
0083f4dc  0a 00 a0 e1                                      mov r0, sl
0083f4e0  01 10 8f e0                                      add r1, pc, r1
0083f4e4  7e 3d eb eb                                      bl #0x30eae4
0083f4e8  0a 10 a0 e1                                      mov r1, sl
0083f4ec  05 00 a0 e1                                      mov r0, r5
0083f4f0  90 af ff eb                                      bl #0x82b338
0083f4f4  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0083f4f8  05 10 a0 e1                                      mov r1, r5
0083f4fc  00 00 8f e0                                      add r0, pc, r0
0083f500  9f b0 ff eb                                      bl #0x82b784
0083f504  05 10 a0 e1                                      mov r1, r5
0083f508  00 30 96 e5                                      ldr r3, [r6]
0083f50c  06 00 a0 e1                                      mov r0, r6
0083f510  0f e0 a0 e1                                      mov lr, pc
0083f514  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083f518  07 30 94 e7                                      ldr r3, [r4, r7]
0083f51c  01 1a 8d e2                                      add r1, sp, #0x1000
0083f520  8c 20 91 e5                                      ldr r2, [r1, #0x8c]
0083f524  00 30 93 e5                                      ldr r3, [r3]
0083f528  03 00 52 e1                                      cmp r2, r3
0083f52c  08 00 00 1a                                      bne #0x83f554
0083f530  90 d0 8d e2                                      add sp, sp, #0x90
0083f534  01 da 8d e2                                      add sp, sp, #0x1000
0083f538  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0083f53c  28 10 9f e5                                      ldr r1, [pc, #0x28]
0083f540  08 20 a0 e1                                      mov r2, r8
0083f544  0a 00 a0 e1                                      mov r0, sl
0083f548  01 10 8f e0                                      add r1, pc, r1
0083f54c  64 3d eb eb                                      bl #0x30eae4
0083f550  e4 ff ff ea                                      b #0x83f4e8
0083f554  6d 3b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083f558  40 56 15 00 ac 40 00 00 38 f0 0c 00 10 f0 0c 00  .byte 0x40, 0x56, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x38, 0xf0, 0x0c, 0x00, 0x10, 0xf0, 0x0c, 0x00
0083f568  9c f2 0c 00 a0 ef 0c 00                          .byte 0x9c, 0xf2, 0x0c, 0x00, 0xa0, 0xef, 0x0c, 0x00

; FUNCTION 0x0083f570, declared_size=372, range_size=372, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUser19sendGetUserGameListEPciib
; demangled: GLXPlayerUser::sendGetUserGameList(char*, int, int, bool)
; decoder-mode: arm
0083f570  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0083f574  50 41 9f e5                                      ldr r4, [pc, #0x150]
0083f578  50 71 9f e5                                      ldr r7, [pc, #0x150]
0083f57c  02 80 a0 e1                                      mov r8, r2
0083f580  04 40 8f e0                                      add r4, pc, r4
0083f584  07 20 94 e7                                      ldr r2, [r4, r7]
0083f588  03 a0 a0 e1                                      mov sl, r3
0083f58c  42 dd 4d e2                                      sub sp, sp, #0x1080
0083f590  00 30 92 e5                                      ldr r3, [r2]
0083f594  24 d0 4d e2                                      sub sp, sp, #0x24
0083f598  01 2a 8d e2                                      add r2, sp, #0x1000
0083f59c  9c 30 82 e5                                      str r3, [r2, #0x9c]
0083f5a0  c8 30 d2 e5                                      ldrb r3, [r2, #0xc8]
0083f5a4  a8 9f a0 e1                                      lsr sb, r8, #0x1f
0083f5a8  aa 9f 99 e1                                      orrs sb, sb, sl, lsr #31
0083f5ac  00 50 a0 e1                                      mov r5, r0
0083f5b0  01 b0 a0 e1                                      mov fp, r1
0083f5b4  14 30 8d e5                                      str r3, [sp, #0x14]
0083f5b8  39 00 00 1a                                      bne #0x83f6a4
0083f5bc  20 60 8d e2                                      add r6, sp, #0x20
0083f5c0  04 60 46 e2                                      sub r6, r6, #4
0083f5c4  06 00 a0 e1                                      mov r0, r6
0083f5c8  09 10 a0 e1                                      mov r1, sb
0083f5cc  01 2a a0 e3                                      mov r2, #0x1000
0083f5d0  63 af ff eb                                      bl #0x82b364
0083f5d4  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
0083f5d8  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0083f5dc  08 30 95 e5                                      ldr r3, [r5, #8]
0083f5e0  01 10 8f e0                                      add r1, pc, r1
0083f5e4  06 00 a0 e1                                      mov r0, r6
0083f5e8  3f 20 a0 e3                                      mov r2, #0x3f
0083f5ec  00 c0 8d e5                                      str ip, [sp]
0083f5f0  00 05 8d e9                                      stmib sp, {r8, sl}
0083f5f4  3a 3d eb eb                                      bl #0x30eae4
0083f5f8  00 00 5b e3                                      cmp fp, #0
0083f5fc  10 00 00 0a                                      beq #0x83f644
0083f600  01 8a 8d e2                                      add r8, sp, #0x1000
0083f604  1c 80 88 e2                                      add r8, r8, #0x1c
0083f608  09 10 a0 e1                                      mov r1, sb
0083f60c  08 00 a0 e1                                      mov r0, r8
0083f610  80 20 a0 e3                                      mov r2, #0x80
0083f614  91 3b eb eb                                      bl #0x30e460
0083f618  14 10 9d e5                                      ldr r1, [sp, #0x14]
0083f61c  00 00 51 e3                                      cmp r1, #0
0083f620  19 00 00 1a                                      bne #0x83f68c
0083f624  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0083f628  0b 20 a0 e1                                      mov r2, fp
0083f62c  08 00 a0 e1                                      mov r0, r8
0083f630  01 10 8f e0                                      add r1, pc, r1
0083f634  2a 3d eb eb                                      bl #0x30eae4
0083f638  08 10 a0 e1                                      mov r1, r8
0083f63c  06 00 a0 e1                                      mov r0, r6
0083f640  3c af ff eb                                      bl #0x82b338
0083f644  90 00 9f e5                                      ldr r0, [pc, #0x90]
0083f648  06 10 a0 e1                                      mov r1, r6
0083f64c  00 00 8f e0                                      add r0, pc, r0
0083f650  4b b0 ff eb                                      bl #0x82b784
0083f654  05 00 a0 e1                                      mov r0, r5
0083f658  06 10 a0 e1                                      mov r1, r6
0083f65c  00 30 95 e5                                      ldr r3, [r5]
0083f660  0f e0 a0 e1                                      mov lr, pc
0083f664  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083f668  07 30 94 e7                                      ldr r3, [r4, r7]
0083f66c  01 1a 8d e2                                      add r1, sp, #0x1000
0083f670  9c 20 91 e5                                      ldr r2, [r1, #0x9c]
0083f674  00 30 93 e5                                      ldr r3, [r3]
0083f678  03 00 52 e1                                      cmp r2, r3
0083f67c  11 00 00 1a                                      bne #0x83f6c8
0083f680  a4 d0 8d e2                                      add sp, sp, #0xa4
0083f684  01 da 8d e2                                      add sp, sp, #0x1000
0083f688  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083f68c  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0083f690  0b 20 a0 e1                                      mov r2, fp
0083f694  08 00 a0 e1                                      mov r0, r8
0083f698  01 10 8f e0                                      add r1, pc, r1
0083f69c  10 3d eb eb                                      bl #0x30eae4
0083f6a0  e4 ff ff ea                                      b #0x83f638
0083f6a4  04 30 90 e5                                      ldr r3, [r0, #4]
0083f6a8  3f 10 a0 e3                                      mov r1, #0x3f
0083f6ac  63 20 e0 e3                                      mvn r2, #0x63
0083f6b0  03 00 a0 e1                                      mov r0, r3
0083f6b4  00 30 93 e5                                      ldr r3, [r3]
0083f6b8  0f e0 a0 e1                                      mov lr, pc
0083f6bc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083f6c0  00 00 a0 e3                                      mov r0, #0
0083f6c4  e7 ff ff ea                                      b #0x83f668
0083f6c8  10 3b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083f6cc  10 55 15 00 ac 40 00 00 00 f2 0c 00 c0 ee 0c 00  .byte 0x10, 0x55, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0xf2, 0x0c, 0x00, 0xc0, 0xee, 0x0c, 0x00
0083f6dc  b4 f1 0c 00 50 ee 0c 00                          .byte 0xb4, 0xf1, 0x0c, 0x00, 0x50, 0xee, 0x0c, 0x00

; FUNCTION 0x0083f754, declared_size=336, range_size=336, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUserC1Ev
; demangled: GLXPlayerUser::GLXPlayerUser()
; decoder-mode: arm
0083f754  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083f758  3c 61 9f e5                                      ldr r6, [pc, #0x13c]
0083f75c  00 40 a0 e1                                      mov r4, r0
0083f760  73 ca ff eb                                      bl #0x832134
0083f764  34 31 9f e5                                      ldr r3, [pc, #0x134]
0083f768  06 60 8f e0                                      add r6, pc, r6
0083f76c  00 50 a0 e3                                      mov r5, #0
0083f770  03 30 96 e7                                      ldr r3, [r6, r3]
0083f774  e8 50 84 e5                                      str r5, [r4, #0xe8]
0083f778  ec 50 84 e5                                      str r5, [r4, #0xec]
0083f77c  08 30 83 e2                                      add r3, r3, #8
0083f780  00 30 84 e5                                      str r3, [r4]
0083f784  f0 50 84 e5                                      str r5, [r4, #0xf0]
0083f788  f8 50 84 e5                                      str r5, [r4, #0xf8]
0083f78c  fc 50 84 e5                                      str r5, [r4, #0xfc]
0083f790  00 51 84 e5                                      str r5, [r4, #0x100]
0083f794  04 00 a0 e1                                      mov r0, r4
0083f798  89 c7 ff eb                                      bl #0x8315c4
0083f79c  28 04 00 e3                                      movw r0, #0x428
0083f7a0  39 3c eb eb                                      bl #0x30e88c
0083f7a4  10 10 94 e5                                      ldr r1, [r4, #0x10]
0083f7a8  18 20 94 e5                                      ldr r2, [r4, #0x18]
0083f7ac  14 30 94 e5                                      ldr r3, [r4, #0x14]
0083f7b0  00 70 e0 e3                                      mvn r7, #0
0083f7b4  00 60 a0 e1                                      mov r6, r0
0083f7b8  bb b9 ff eb                                      bl #0x82deac
0083f7bc  00 30 a0 e3                                      mov r3, #0
0083f7c0  00 20 a0 e3                                      mov r2, #0
0083f7c4  f0 29 c4 e1                                      strd r2, r3, [r4, #0x90]
0083f7c8  dc 00 84 e2                                      add r0, r4, #0xdc
0083f7cc  20 60 84 e5                                      str r6, [r4, #0x20]
0083f7d0  3c 50 84 e5                                      str r5, [r4, #0x3c]
0083f7d4  40 50 84 e5                                      str r5, [r4, #0x40]
0083f7d8  44 50 84 e5                                      str r5, [r4, #0x44]
0083f7dc  48 50 84 e5                                      str r5, [r4, #0x48]
0083f7e0  4c 50 84 e5                                      str r5, [r4, #0x4c]
0083f7e4  54 50 84 e5                                      str r5, [r4, #0x54]
0083f7e8  58 50 84 e5                                      str r5, [r4, #0x58]
0083f7ec  5c 50 84 e5                                      str r5, [r4, #0x5c]
0083f7f0  64 50 84 e5                                      str r5, [r4, #0x64]
0083f7f4  68 50 84 e5                                      str r5, [r4, #0x68]
0083f7f8  6c 50 84 e5                                      str r5, [r4, #0x6c]
0083f7fc  50 50 c4 e5                                      strb r5, [r4, #0x50]
0083f800  60 50 c4 e5                                      strb r5, [r4, #0x60]
0083f804  70 50 84 e5                                      str r5, [r4, #0x70]
0083f808  74 50 84 e5                                      str r5, [r4, #0x74]
0083f80c  78 50 84 e5                                      str r5, [r4, #0x78]
0083f810  7c 50 84 e5                                      str r5, [r4, #0x7c]
0083f814  98 50 84 e5                                      str r5, [r4, #0x98]
0083f818  9c 50 84 e5                                      str r5, [r4, #0x9c]
0083f81c  80 70 84 e5                                      str r7, [r4, #0x80]
0083f820  84 70 84 e5                                      str r7, [r4, #0x84]
0083f824  88 50 84 e5                                      str r5, [r4, #0x88]
0083f828  a4 70 84 e5                                      str r7, [r4, #0xa4]
0083f82c  a8 50 84 e5                                      str r5, [r4, #0xa8]
0083f830  ac 50 84 e5                                      str r5, [r4, #0xac]
0083f834  b0 50 84 e5                                      str r5, [r4, #0xb0]
0083f838  b4 50 84 e5                                      str r5, [r4, #0xb4]
0083f83c  b8 50 84 e5                                      str r5, [r4, #0xb8]
0083f840  bc 50 84 e5                                      str r5, [r4, #0xbc]
0083f844  c0 50 84 e5                                      str r5, [r4, #0xc0]
0083f848  c4 50 84 e5                                      str r5, [r4, #0xc4]
0083f84c  05 10 a0 e1                                      mov r1, r5
0083f850  c8 50 84 e5                                      str r5, [r4, #0xc8]
0083f854  08 20 a0 e3                                      mov r2, #8
0083f858  cc 50 84 e5                                      str r5, [r4, #0xcc]
0083f85c  d0 50 84 e5                                      str r5, [r4, #0xd0]
0083f860  f4 50 84 e5                                      str r5, [r4, #0xf4]
0083f864  be ae ff eb                                      bl #0x82b364
0083f868  28 71 84 e5                                      str r7, [r4, #0x128]
0083f86c  2c 51 84 e5                                      str r5, [r4, #0x12c]
0083f870  e4 50 84 e5                                      str r5, [r4, #0xe4]
0083f874  08 51 84 e5                                      str r5, [r4, #0x108]
0083f878  0c 51 84 e5                                      str r5, [r4, #0x10c]
0083f87c  10 51 84 e5                                      str r5, [r4, #0x110]
0083f880  18 51 84 e5                                      str r5, [r4, #0x118]
0083f884  1c 51 84 e5                                      str r5, [r4, #0x11c]
0083f888  20 51 84 e5                                      str r5, [r4, #0x120]
0083f88c  24 51 84 e5                                      str r5, [r4, #0x124]
0083f890  d4 70 84 e5                                      str r7, [r4, #0xd4]
0083f894  04 00 a0 e1                                      mov r0, r4
0083f898  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0083f89c  28 53 15 00 b8 11 00 00                          .byte 0x28, 0x53, 0x15, 0x00, 0xb8, 0x11, 0x00, 0x00

; FUNCTION 0x0083f8a4, declared_size=336, range_size=336, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUserC2Ev
; demangled: GLXPlayerUser::GLXPlayerUser()
; decoder-mode: arm
0083f8a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0083f8a8  3c 61 9f e5                                      ldr r6, [pc, #0x13c]
0083f8ac  00 40 a0 e1                                      mov r4, r0
0083f8b0  1f ca ff eb                                      bl #0x832134
0083f8b4  34 31 9f e5                                      ldr r3, [pc, #0x134]
0083f8b8  06 60 8f e0                                      add r6, pc, r6
0083f8bc  00 50 a0 e3                                      mov r5, #0
0083f8c0  03 30 96 e7                                      ldr r3, [r6, r3]
0083f8c4  e8 50 84 e5                                      str r5, [r4, #0xe8]
0083f8c8  ec 50 84 e5                                      str r5, [r4, #0xec]
0083f8cc  08 30 83 e2                                      add r3, r3, #8
0083f8d0  00 30 84 e5                                      str r3, [r4]
0083f8d4  f0 50 84 e5                                      str r5, [r4, #0xf0]
0083f8d8  f8 50 84 e5                                      str r5, [r4, #0xf8]
0083f8dc  fc 50 84 e5                                      str r5, [r4, #0xfc]
0083f8e0  00 51 84 e5                                      str r5, [r4, #0x100]
0083f8e4  04 00 a0 e1                                      mov r0, r4
0083f8e8  35 c7 ff eb                                      bl #0x8315c4
0083f8ec  28 04 00 e3                                      movw r0, #0x428
0083f8f0  e5 3b eb eb                                      bl #0x30e88c
0083f8f4  10 10 94 e5                                      ldr r1, [r4, #0x10]
0083f8f8  18 20 94 e5                                      ldr r2, [r4, #0x18]
0083f8fc  14 30 94 e5                                      ldr r3, [r4, #0x14]
0083f900  00 70 e0 e3                                      mvn r7, #0
0083f904  00 60 a0 e1                                      mov r6, r0
0083f908  67 b9 ff eb                                      bl #0x82deac
0083f90c  00 30 a0 e3                                      mov r3, #0
0083f910  00 20 a0 e3                                      mov r2, #0
0083f914  f0 29 c4 e1                                      strd r2, r3, [r4, #0x90]
0083f918  dc 00 84 e2                                      add r0, r4, #0xdc
0083f91c  20 60 84 e5                                      str r6, [r4, #0x20]
0083f920  3c 50 84 e5                                      str r5, [r4, #0x3c]
0083f924  40 50 84 e5                                      str r5, [r4, #0x40]
0083f928  44 50 84 e5                                      str r5, [r4, #0x44]
0083f92c  48 50 84 e5                                      str r5, [r4, #0x48]
0083f930  4c 50 84 e5                                      str r5, [r4, #0x4c]
0083f934  54 50 84 e5                                      str r5, [r4, #0x54]
0083f938  58 50 84 e5                                      str r5, [r4, #0x58]
0083f93c  5c 50 84 e5                                      str r5, [r4, #0x5c]
0083f940  64 50 84 e5                                      str r5, [r4, #0x64]
0083f944  68 50 84 e5                                      str r5, [r4, #0x68]
0083f948  6c 50 84 e5                                      str r5, [r4, #0x6c]
0083f94c  50 50 c4 e5                                      strb r5, [r4, #0x50]
0083f950  60 50 c4 e5                                      strb r5, [r4, #0x60]
0083f954  70 50 84 e5                                      str r5, [r4, #0x70]
0083f958  74 50 84 e5                                      str r5, [r4, #0x74]
0083f95c  78 50 84 e5                                      str r5, [r4, #0x78]
0083f960  7c 50 84 e5                                      str r5, [r4, #0x7c]
0083f964  98 50 84 e5                                      str r5, [r4, #0x98]
0083f968  9c 50 84 e5                                      str r5, [r4, #0x9c]
0083f96c  80 70 84 e5                                      str r7, [r4, #0x80]
0083f970  84 70 84 e5                                      str r7, [r4, #0x84]
0083f974  88 50 84 e5                                      str r5, [r4, #0x88]
0083f978  a4 70 84 e5                                      str r7, [r4, #0xa4]
0083f97c  a8 50 84 e5                                      str r5, [r4, #0xa8]
0083f980  ac 50 84 e5                                      str r5, [r4, #0xac]
0083f984  b0 50 84 e5                                      str r5, [r4, #0xb0]
0083f988  b4 50 84 e5                                      str r5, [r4, #0xb4]
0083f98c  b8 50 84 e5                                      str r5, [r4, #0xb8]
0083f990  bc 50 84 e5                                      str r5, [r4, #0xbc]
0083f994  c0 50 84 e5                                      str r5, [r4, #0xc0]
0083f998  c4 50 84 e5                                      str r5, [r4, #0xc4]
0083f99c  05 10 a0 e1                                      mov r1, r5
0083f9a0  c8 50 84 e5                                      str r5, [r4, #0xc8]
0083f9a4  08 20 a0 e3                                      mov r2, #8
0083f9a8  cc 50 84 e5                                      str r5, [r4, #0xcc]
0083f9ac  d0 50 84 e5                                      str r5, [r4, #0xd0]
0083f9b0  f4 50 84 e5                                      str r5, [r4, #0xf4]
0083f9b4  6a ae ff eb                                      bl #0x82b364
0083f9b8  28 71 84 e5                                      str r7, [r4, #0x128]
0083f9bc  2c 51 84 e5                                      str r5, [r4, #0x12c]
0083f9c0  e4 50 84 e5                                      str r5, [r4, #0xe4]
0083f9c4  08 51 84 e5                                      str r5, [r4, #0x108]
0083f9c8  0c 51 84 e5                                      str r5, [r4, #0x10c]
0083f9cc  10 51 84 e5                                      str r5, [r4, #0x110]
0083f9d0  18 51 84 e5                                      str r5, [r4, #0x118]
0083f9d4  1c 51 84 e5                                      str r5, [r4, #0x11c]
0083f9d8  20 51 84 e5                                      str r5, [r4, #0x120]
0083f9dc  24 51 84 e5                                      str r5, [r4, #0x124]
0083f9e0  d4 70 84 e5                                      str r7, [r4, #0xd4]
0083f9e4  04 00 a0 e1                                      mov r0, r4
0083f9e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0083f9ec  d8 51 15 00 b8 11 00 00                          .byte 0xd8, 0x51, 0x15, 0x00, 0xb8, 0x11, 0x00, 0x00

; FUNCTION 0x0083fb24, declared_size=608, range_size=608, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUserD1Ev
; demangled: GLXPlayerUser::~GLXPlayerUser()
; decoder-mode: arm
0083fb24  50 32 9f e5                                      ldr r3, [pc, #0x250]
0083fb28  50 22 9f e5                                      ldr r2, [pc, #0x250]
0083fb2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0083fb30  03 30 8f e0                                      add r3, pc, r3
0083fb34  02 20 93 e7                                      ldr r2, [r3, r2]
0083fb38  00 40 a0 e1                                      mov r4, r0
0083fb3c  08 20 82 e2                                      add r2, r2, #8
0083fb40  00 20 80 e5                                      str r2, [r0]
0083fb44  65 ec ff eb                                      bl #0x83ace0
0083fb48  04 00 a0 e1                                      mov r0, r4
0083fb4c  51 ec ff eb                                      bl #0x83ac98
0083fb50  04 00 a0 e1                                      mov r0, r4
0083fb54  b8 eb ff eb                                      bl #0x83aa3c
0083fb58  04 00 a0 e1                                      mov r0, r4
0083fb5c  10 ec ff eb                                      bl #0x83aba4
0083fb60  48 00 94 e5                                      ldr r0, [r4, #0x48]
0083fb64  00 00 50 e3                                      cmp r0, #0
0083fb68  02 00 00 0a                                      beq #0x83fb78
0083fb6c  51 39 eb eb                                      bl #0x30e0b8
0083fb70  00 30 a0 e3                                      mov r3, #0
0083fb74  48 30 84 e5                                      str r3, [r4, #0x48]
0083fb78  c0 00 94 e5                                      ldr r0, [r4, #0xc0]
0083fb7c  00 00 50 e3                                      cmp r0, #0
0083fb80  02 00 00 0a                                      beq #0x83fb90
0083fb84  4b 39 eb eb                                      bl #0x30e0b8
0083fb88  00 30 a0 e3                                      mov r3, #0
0083fb8c  c0 30 84 e5                                      str r3, [r4, #0xc0]
0083fb90  c4 00 94 e5                                      ldr r0, [r4, #0xc4]
0083fb94  00 00 50 e3                                      cmp r0, #0
0083fb98  02 00 00 0a                                      beq #0x83fba8
0083fb9c  45 39 eb eb                                      bl #0x30e0b8
0083fba0  00 30 a0 e3                                      mov r3, #0
0083fba4  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083fba8  c8 00 94 e5                                      ldr r0, [r4, #0xc8]
0083fbac  00 00 50 e3                                      cmp r0, #0
0083fbb0  02 00 00 0a                                      beq #0x83fbc0
0083fbb4  3f 39 eb eb                                      bl #0x30e0b8
0083fbb8  00 30 a0 e3                                      mov r3, #0
0083fbbc  c8 30 84 e5                                      str r3, [r4, #0xc8]
0083fbc0  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0083fbc4  00 00 50 e3                                      cmp r0, #0
0083fbc8  02 00 00 0a                                      beq #0x83fbd8
0083fbcc  b7 39 eb eb                                      bl #0x30e2b0
0083fbd0  00 30 a0 e3                                      mov r3, #0
0083fbd4  3c 30 84 e5                                      str r3, [r4, #0x3c]
0083fbd8  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
0083fbdc  00 00 50 e3                                      cmp r0, #0
0083fbe0  02 00 00 0a                                      beq #0x83fbf0
0083fbe4  33 39 eb eb                                      bl #0x30e0b8
0083fbe8  00 30 a0 e3                                      mov r3, #0
0083fbec  cc 30 84 e5                                      str r3, [r4, #0xcc]
0083fbf0  d0 00 94 e5                                      ldr r0, [r4, #0xd0]
0083fbf4  00 00 50 e3                                      cmp r0, #0
0083fbf8  02 00 00 0a                                      beq #0x83fc08
0083fbfc  2d 39 eb eb                                      bl #0x30e0b8
0083fc00  00 30 a0 e3                                      mov r3, #0
0083fc04  d0 30 84 e5                                      str r3, [r4, #0xd0]
0083fc08  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
0083fc0c  00 00 50 e3                                      cmp r0, #0
0083fc10  02 00 00 0a                                      beq #0x83fc20
0083fc14  a5 39 eb eb                                      bl #0x30e2b0
0083fc18  00 30 a0 e3                                      mov r3, #0
0083fc1c  f4 30 84 e5                                      str r3, [r4, #0xf4]
0083fc20  a8 00 94 e5                                      ldr r0, [r4, #0xa8]
0083fc24  00 00 50 e3                                      cmp r0, #0
0083fc28  02 00 00 0a                                      beq #0x83fc38
0083fc2c  9f 39 eb eb                                      bl #0x30e2b0
0083fc30  00 30 a0 e3                                      mov r3, #0
0083fc34  a8 30 84 e5                                      str r3, [r4, #0xa8]
0083fc38  ac 00 94 e5                                      ldr r0, [r4, #0xac]
0083fc3c  00 00 50 e3                                      cmp r0, #0
0083fc40  02 00 00 0a                                      beq #0x83fc50
0083fc44  99 39 eb eb                                      bl #0x30e2b0
0083fc48  00 30 a0 e3                                      mov r3, #0
0083fc4c  ac 30 84 e5                                      str r3, [r4, #0xac]
0083fc50  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
0083fc54  00 00 50 e3                                      cmp r0, #0
0083fc58  02 00 00 0a                                      beq #0x83fc68
0083fc5c  93 39 eb eb                                      bl #0x30e2b0
0083fc60  00 30 a0 e3                                      mov r3, #0
0083fc64  b0 30 84 e5                                      str r3, [r4, #0xb0]
0083fc68  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
0083fc6c  00 00 50 e3                                      cmp r0, #0
0083fc70  02 00 00 0a                                      beq #0x83fc80
0083fc74  8d 39 eb eb                                      bl #0x30e2b0
0083fc78  00 30 a0 e3                                      mov r3, #0
0083fc7c  b4 30 84 e5                                      str r3, [r4, #0xb4]
0083fc80  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
0083fc84  00 00 50 e3                                      cmp r0, #0
0083fc88  02 00 00 0a                                      beq #0x83fc98
0083fc8c  87 39 eb eb                                      bl #0x30e2b0
0083fc90  00 30 a0 e3                                      mov r3, #0
0083fc94  b8 30 84 e5                                      str r3, [r4, #0xb8]
0083fc98  bc 00 94 e5                                      ldr r0, [r4, #0xbc]
0083fc9c  00 00 50 e3                                      cmp r0, #0
0083fca0  02 00 00 0a                                      beq #0x83fcb0
0083fca4  81 39 eb eb                                      bl #0x30e2b0
0083fca8  00 30 a0 e3                                      mov r3, #0
0083fcac  bc 30 84 e5                                      str r3, [r4, #0xbc]
0083fcb0  18 01 94 e5                                      ldr r0, [r4, #0x118]
0083fcb4  00 00 50 e3                                      cmp r0, #0
0083fcb8  02 00 00 0a                                      beq #0x83fcc8
0083fcbc  fd 38 eb eb                                      bl #0x30e0b8
0083fcc0  00 30 a0 e3                                      mov r3, #0
0083fcc4  18 31 84 e5                                      str r3, [r4, #0x118]
0083fcc8  1c 01 94 e5                                      ldr r0, [r4, #0x11c]
0083fccc  00 00 50 e3                                      cmp r0, #0
0083fcd0  02 00 00 0a                                      beq #0x83fce0
0083fcd4  75 39 eb eb                                      bl #0x30e2b0
0083fcd8  00 30 a0 e3                                      mov r3, #0
0083fcdc  1c 31 84 e5                                      str r3, [r4, #0x11c]
0083fce0  20 01 94 e5                                      ldr r0, [r4, #0x120]
0083fce4  00 00 50 e3                                      cmp r0, #0
0083fce8  02 00 00 0a                                      beq #0x83fcf8
0083fcec  6f 39 eb eb                                      bl #0x30e2b0
0083fcf0  00 30 a0 e3                                      mov r3, #0
0083fcf4  20 31 84 e5                                      str r3, [r4, #0x120]
0083fcf8  24 01 94 e5                                      ldr r0, [r4, #0x124]
0083fcfc  00 00 50 e3                                      cmp r0, #0
0083fd00  02 00 00 0a                                      beq #0x83fd10
0083fd04  eb 38 eb eb                                      bl #0x30e0b8
0083fd08  00 30 a0 e3                                      mov r3, #0
0083fd0c  24 31 84 e5                                      str r3, [r4, #0x124]
0083fd10  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
0083fd14  00 00 53 e3                                      cmp r3, #0
0083fd18  0f 00 00 0a                                      beq #0x83fd5c
0083fd1c  04 00 13 e5                                      ldr r0, [r3, #-4]
0083fd20  80 01 83 e0                                      add r0, r3, r0, lsl #3
0083fd24  00 00 53 e1                                      cmp r3, r0
0083fd28  01 00 00 1a                                      bne #0x83fd34
0083fd2c  06 00 00 ea                                      b #0x83fd4c
0083fd30  05 00 a0 e1                                      mov r0, r5
0083fd34  08 50 40 e2                                      sub r5, r0, #8
0083fd38  05 00 a0 e1                                      mov r0, r5
0083fd3c  88 eb ff eb                                      bl #0x83ab64
0083fd40  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
0083fd44  05 00 50 e1                                      cmp r0, r5
0083fd48  f8 ff ff 1a                                      bne #0x83fd30
0083fd4c  08 00 40 e2                                      sub r0, r0, #8
0083fd50  d8 38 eb eb                                      bl #0x30e0b8
0083fd54  00 30 a0 e3                                      mov r3, #0
0083fd58  2c 31 84 e5                                      str r3, [r4, #0x12c]
0083fd5c  f8 00 84 e2                                      add r0, r4, #0xf8
0083fd60  51 ff ff eb                                      bl #0x83faac
0083fd64  e8 00 84 e2                                      add r0, r4, #0xe8
0083fd68  4f ff ff eb                                      bl #0x83faac
0083fd6c  04 00 a0 e1                                      mov r0, r4
0083fd70  a2 c8 ff eb                                      bl #0x832000
0083fd74  04 00 a0 e1                                      mov r0, r4
0083fd78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0083fd7c  60 4f 15 00 b8 11 00 00                          .byte 0x60, 0x4f, 0x15, 0x00, 0xb8, 0x11, 0x00, 0x00

; FUNCTION 0x0083fd84, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUserD0Ev
; demangled: GLXPlayerUser::~GLXPlayerUser()
; decoder-mode: arm
0083fd84  10 40 2d e9                                      push {r4, lr}
0083fd88  00 40 a0 e1                                      mov r4, r0
0083fd8c  64 ff ff eb                                      bl #0x83fb24
0083fd90  04 00 a0 e1                                      mov r0, r4
0083fd94  45 39 eb eb                                      bl #0x30e2b0
0083fd98  04 00 a0 e1                                      mov r0, r4
0083fd9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0083fda0, declared_size=608, range_size=608, mode=arm
; class-group: GLXPlayerUser
; alias: _ZN13GLXPlayerUserD2Ev
; demangled: GLXPlayerUser::~GLXPlayerUser()
; decoder-mode: arm
0083fda0  50 32 9f e5                                      ldr r3, [pc, #0x250]
0083fda4  50 22 9f e5                                      ldr r2, [pc, #0x250]
0083fda8  70 40 2d e9                                      push {r4, r5, r6, lr}
0083fdac  03 30 8f e0                                      add r3, pc, r3
0083fdb0  02 20 93 e7                                      ldr r2, [r3, r2]
0083fdb4  00 40 a0 e1                                      mov r4, r0
0083fdb8  08 20 82 e2                                      add r2, r2, #8
0083fdbc  00 20 80 e5                                      str r2, [r0]
0083fdc0  c6 eb ff eb                                      bl #0x83ace0
0083fdc4  04 00 a0 e1                                      mov r0, r4
0083fdc8  b2 eb ff eb                                      bl #0x83ac98
0083fdcc  04 00 a0 e1                                      mov r0, r4
0083fdd0  19 eb ff eb                                      bl #0x83aa3c
0083fdd4  04 00 a0 e1                                      mov r0, r4
0083fdd8  71 eb ff eb                                      bl #0x83aba4
0083fddc  48 00 94 e5                                      ldr r0, [r4, #0x48]
0083fde0  00 00 50 e3                                      cmp r0, #0
0083fde4  02 00 00 0a                                      beq #0x83fdf4
0083fde8  b2 38 eb eb                                      bl #0x30e0b8
0083fdec  00 30 a0 e3                                      mov r3, #0
0083fdf0  48 30 84 e5                                      str r3, [r4, #0x48]
0083fdf4  c0 00 94 e5                                      ldr r0, [r4, #0xc0]
0083fdf8  00 00 50 e3                                      cmp r0, #0
0083fdfc  02 00 00 0a                                      beq #0x83fe0c
0083fe00  ac 38 eb eb                                      bl #0x30e0b8
0083fe04  00 30 a0 e3                                      mov r3, #0
0083fe08  c0 30 84 e5                                      str r3, [r4, #0xc0]
0083fe0c  c4 00 94 e5                                      ldr r0, [r4, #0xc4]
0083fe10  00 00 50 e3                                      cmp r0, #0
0083fe14  02 00 00 0a                                      beq #0x83fe24
0083fe18  a6 38 eb eb                                      bl #0x30e0b8
0083fe1c  00 30 a0 e3                                      mov r3, #0
0083fe20  c4 30 84 e5                                      str r3, [r4, #0xc4]
0083fe24  c8 00 94 e5                                      ldr r0, [r4, #0xc8]
0083fe28  00 00 50 e3                                      cmp r0, #0
0083fe2c  02 00 00 0a                                      beq #0x83fe3c
0083fe30  a0 38 eb eb                                      bl #0x30e0b8
0083fe34  00 30 a0 e3                                      mov r3, #0
0083fe38  c8 30 84 e5                                      str r3, [r4, #0xc8]
0083fe3c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0083fe40  00 00 50 e3                                      cmp r0, #0
0083fe44  02 00 00 0a                                      beq #0x83fe54
0083fe48  18 39 eb eb                                      bl #0x30e2b0
0083fe4c  00 30 a0 e3                                      mov r3, #0
0083fe50  3c 30 84 e5                                      str r3, [r4, #0x3c]
0083fe54  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
0083fe58  00 00 50 e3                                      cmp r0, #0
0083fe5c  02 00 00 0a                                      beq #0x83fe6c
0083fe60  94 38 eb eb                                      bl #0x30e0b8
0083fe64  00 30 a0 e3                                      mov r3, #0
0083fe68  cc 30 84 e5                                      str r3, [r4, #0xcc]
0083fe6c  d0 00 94 e5                                      ldr r0, [r4, #0xd0]
0083fe70  00 00 50 e3                                      cmp r0, #0
0083fe74  02 00 00 0a                                      beq #0x83fe84
0083fe78  8e 38 eb eb                                      bl #0x30e0b8
0083fe7c  00 30 a0 e3                                      mov r3, #0
0083fe80  d0 30 84 e5                                      str r3, [r4, #0xd0]
0083fe84  f4 00 94 e5                                      ldr r0, [r4, #0xf4]
0083fe88  00 00 50 e3                                      cmp r0, #0
0083fe8c  02 00 00 0a                                      beq #0x83fe9c
0083fe90  06 39 eb eb                                      bl #0x30e2b0
0083fe94  00 30 a0 e3                                      mov r3, #0
0083fe98  f4 30 84 e5                                      str r3, [r4, #0xf4]
0083fe9c  a8 00 94 e5                                      ldr r0, [r4, #0xa8]
0083fea0  00 00 50 e3                                      cmp r0, #0
0083fea4  02 00 00 0a                                      beq #0x83feb4
0083fea8  00 39 eb eb                                      bl #0x30e2b0
0083feac  00 30 a0 e3                                      mov r3, #0
0083feb0  a8 30 84 e5                                      str r3, [r4, #0xa8]
0083feb4  ac 00 94 e5                                      ldr r0, [r4, #0xac]
0083feb8  00 00 50 e3                                      cmp r0, #0
0083febc  02 00 00 0a                                      beq #0x83fecc
0083fec0  fa 38 eb eb                                      bl #0x30e2b0
0083fec4  00 30 a0 e3                                      mov r3, #0
0083fec8  ac 30 84 e5                                      str r3, [r4, #0xac]
0083fecc  b0 00 94 e5                                      ldr r0, [r4, #0xb0]
0083fed0  00 00 50 e3                                      cmp r0, #0
0083fed4  02 00 00 0a                                      beq #0x83fee4
0083fed8  f4 38 eb eb                                      bl #0x30e2b0
0083fedc  00 30 a0 e3                                      mov r3, #0
0083fee0  b0 30 84 e5                                      str r3, [r4, #0xb0]
0083fee4  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
0083fee8  00 00 50 e3                                      cmp r0, #0
0083feec  02 00 00 0a                                      beq #0x83fefc
0083fef0  ee 38 eb eb                                      bl #0x30e2b0
0083fef4  00 30 a0 e3                                      mov r3, #0
0083fef8  b4 30 84 e5                                      str r3, [r4, #0xb4]
0083fefc  b8 00 94 e5                                      ldr r0, [r4, #0xb8]
0083ff00  00 00 50 e3                                      cmp r0, #0
0083ff04  02 00 00 0a                                      beq #0x83ff14
0083ff08  e8 38 eb eb                                      bl #0x30e2b0
0083ff0c  00 30 a0 e3                                      mov r3, #0
0083ff10  b8 30 84 e5                                      str r3, [r4, #0xb8]
0083ff14  bc 00 94 e5                                      ldr r0, [r4, #0xbc]
0083ff18  00 00 50 e3                                      cmp r0, #0
0083ff1c  02 00 00 0a                                      beq #0x83ff2c
0083ff20  e2 38 eb eb                                      bl #0x30e2b0
0083ff24  00 30 a0 e3                                      mov r3, #0
0083ff28  bc 30 84 e5                                      str r3, [r4, #0xbc]
0083ff2c  18 01 94 e5                                      ldr r0, [r4, #0x118]
0083ff30  00 00 50 e3                                      cmp r0, #0
0083ff34  02 00 00 0a                                      beq #0x83ff44
0083ff38  5e 38 eb eb                                      bl #0x30e0b8
0083ff3c  00 30 a0 e3                                      mov r3, #0
0083ff40  18 31 84 e5                                      str r3, [r4, #0x118]
0083ff44  1c 01 94 e5                                      ldr r0, [r4, #0x11c]
0083ff48  00 00 50 e3                                      cmp r0, #0
0083ff4c  02 00 00 0a                                      beq #0x83ff5c
0083ff50  d6 38 eb eb                                      bl #0x30e2b0
0083ff54  00 30 a0 e3                                      mov r3, #0
0083ff58  1c 31 84 e5                                      str r3, [r4, #0x11c]
0083ff5c  20 01 94 e5                                      ldr r0, [r4, #0x120]
0083ff60  00 00 50 e3                                      cmp r0, #0
0083ff64  02 00 00 0a                                      beq #0x83ff74
0083ff68  d0 38 eb eb                                      bl #0x30e2b0
0083ff6c  00 30 a0 e3                                      mov r3, #0
0083ff70  20 31 84 e5                                      str r3, [r4, #0x120]
0083ff74  24 01 94 e5                                      ldr r0, [r4, #0x124]
0083ff78  00 00 50 e3                                      cmp r0, #0
0083ff7c  02 00 00 0a                                      beq #0x83ff8c
0083ff80  4c 38 eb eb                                      bl #0x30e0b8
0083ff84  00 30 a0 e3                                      mov r3, #0
0083ff88  24 31 84 e5                                      str r3, [r4, #0x124]
0083ff8c  2c 31 94 e5                                      ldr r3, [r4, #0x12c]
0083ff90  00 00 53 e3                                      cmp r3, #0
0083ff94  0f 00 00 0a                                      beq #0x83ffd8
0083ff98  04 00 13 e5                                      ldr r0, [r3, #-4]
0083ff9c  80 01 83 e0                                      add r0, r3, r0, lsl #3
0083ffa0  00 00 53 e1                                      cmp r3, r0
0083ffa4  01 00 00 1a                                      bne #0x83ffb0
0083ffa8  06 00 00 ea                                      b #0x83ffc8
0083ffac  05 00 a0 e1                                      mov r0, r5
0083ffb0  08 50 40 e2                                      sub r5, r0, #8
0083ffb4  05 00 a0 e1                                      mov r0, r5
0083ffb8  e9 ea ff eb                                      bl #0x83ab64
0083ffbc  2c 01 94 e5                                      ldr r0, [r4, #0x12c]
0083ffc0  05 00 50 e1                                      cmp r0, r5
0083ffc4  f8 ff ff 1a                                      bne #0x83ffac
0083ffc8  08 00 40 e2                                      sub r0, r0, #8
0083ffcc  39 38 eb eb                                      bl #0x30e0b8
0083ffd0  00 30 a0 e3                                      mov r3, #0
0083ffd4  2c 31 84 e5                                      str r3, [r4, #0x12c]
0083ffd8  f8 00 84 e2                                      add r0, r4, #0xf8
0083ffdc  b2 fe ff eb                                      bl #0x83faac
0083ffe0  e8 00 84 e2                                      add r0, r4, #0xe8
0083ffe4  b0 fe ff eb                                      bl #0x83faac
0083ffe8  04 00 a0 e1                                      mov r0, r4
0083ffec  03 c8 ff eb                                      bl #0x832000
0083fff0  04 00 a0 e1                                      mov r0, r4
0083fff4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0083fff8  e4 4c 15 00 b8 11 00 00                          .byte 0xe4, 0x4c, 0x15, 0x00, 0xb8, 0x11, 0x00, 0x00
