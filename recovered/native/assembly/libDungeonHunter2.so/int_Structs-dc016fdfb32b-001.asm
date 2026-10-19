; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004ac574, declared_size=76, range_size=76, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_12SoundAutoGenEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::SoundAutoGen>(char const*)
; decoder-mode: arm
004ac574  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004ac578  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004ac57c  70 40 2d e9                                      push {r4, r5, r6, lr}
004ac580  03 30 8f e0                                      add r3, pc, r3
004ac584  02 40 93 e7                                      ldr r4, [r3, r2]
004ac588  00 50 a0 e1                                      mov r5, r0
004ac58c  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ac590  61 87 f9 eb                                      bl #0x30e31c
004ac594  00 00 50 e3                                      cmp r0, #0
004ac598  05 00 00 0a                                      beq #0x4ac5b4
004ac59c  05 00 a0 e1                                      mov r0, r5
004ac5a0  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
004ac5a4  5c 87 f9 eb                                      bl #0x30e31c
004ac5a8  00 00 50 e3                                      cmp r0, #0
004ac5ac  01 00 a0 03                                      moveq r0, #1
004ac5b0  00 00 e0 13                                      mvnne r0, #0
004ac5b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ac5b8  10 85 4e 00 04 3c 00 00                          .byte 0x10, 0x85, 0x4e, 0x00, 0x04, 0x3c, 0x00, 0x00

; FUNCTION 0x004ac634, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_13LangSheetListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::LangSheetList>(char const*)
; decoder-mode: arm
004ac634  20 30 9f e5                                      ldr r3, [pc, #0x20]
004ac638  20 20 9f e5                                      ldr r2, [pc, #0x20]
004ac63c  10 40 2d e9                                      push {r4, lr}
004ac640  03 30 8f e0                                      add r3, pc, r3
004ac644  02 20 93 e7                                      ldr r2, [r3, r2]
004ac648  14 10 92 e5                                      ldr r1, [r2, #0x14]
004ac64c  32 87 f9 eb                                      bl #0x30e31c
004ac650  00 00 50 e3                                      cmp r0, #0
004ac654  00 00 e0 13                                      mvnne r0, #0
004ac658  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ac65c  50 84 4e 00 a4 2f 00 00                          .byte 0x50, 0x84, 0x4e, 0x00, 0xa4, 0x2f, 0x00, 0x00

; FUNCTION 0x004ac834, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_11ColladaFileEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::ColladaFile>(char const*)
; decoder-mode: arm
004ac834  20 30 9f e5                                      ldr r3, [pc, #0x20]
004ac838  20 20 9f e5                                      ldr r2, [pc, #0x20]
004ac83c  10 40 2d e9                                      push {r4, lr}
004ac840  03 30 8f e0                                      add r3, pc, r3
004ac844  02 20 93 e7                                      ldr r2, [r3, r2]
004ac848  14 10 92 e5                                      ldr r1, [r2, #0x14]
004ac84c  b2 86 f9 eb                                      bl #0x30e31c
004ac850  00 00 50 e3                                      cmp r0, #0
004ac854  00 00 e0 13                                      mvnne r0, #0
004ac858  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ac85c  50 82 4e 00 1c 1f 00 00                          .byte 0x50, 0x82, 0x4e, 0x00, 0x1c, 0x1f, 0x00, 0x00

; FUNCTION 0x004ac8d8, declared_size=76, range_size=76, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_14WorldMapLockerEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::WorldMapLocker>(char const*)
; decoder-mode: arm
004ac8d8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004ac8dc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004ac8e0  70 40 2d e9                                      push {r4, r5, r6, lr}
004ac8e4  03 30 8f e0                                      add r3, pc, r3
004ac8e8  02 40 93 e7                                      ldr r4, [r3, r2]
004ac8ec  00 50 a0 e1                                      mov r5, r0
004ac8f0  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ac8f4  88 86 f9 eb                                      bl #0x30e31c
004ac8f8  00 00 50 e3                                      cmp r0, #0
004ac8fc  05 00 00 0a                                      beq #0x4ac918
004ac900  05 00 a0 e1                                      mov r0, r5
004ac904  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
004ac908  83 86 f9 eb                                      bl #0x30e31c
004ac90c  00 00 50 e3                                      cmp r0, #0
004ac910  01 00 a0 03                                      moveq r0, #1
004ac914  00 00 e0 13                                      mvnne r0, #0
004ac918  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ac91c  ac 81 4e 00 24 3a 00 00                          .byte 0xac, 0x81, 0x4e, 0x00, 0x24, 0x3a, 0x00, 0x00

; FUNCTION 0x004ac998, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_14WldMapLocationEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::WldMapLocation>(char const*)
; decoder-mode: arm
004ac998  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ac99c  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ac9a0  70 40 2d e9                                      push {r4, r5, r6, lr}
004ac9a4  03 30 8f e0                                      add r3, pc, r3
004ac9a8  00 60 a0 e1                                      mov r6, r0
004ac9ac  02 40 93 e7                                      ldr r4, [r3, r2]
004ac9b0  00 50 a0 e3                                      mov r5, #0
004ac9b4  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ac9b8  06 00 a0 e1                                      mov r0, r6
004ac9bc  56 86 f9 eb                                      bl #0x30e31c
004ac9c0  00 00 50 e3                                      cmp r0, #0
004ac9c4  05 00 00 0a                                      beq #0x4ac9e0
004ac9c8  01 50 85 e2                                      add r5, r5, #1
004ac9cc  03 00 55 e3                                      cmp r5, #3
004ac9d0  18 40 84 e2                                      add r4, r4, #0x18
004ac9d4  f6 ff ff 1a                                      bne #0x4ac9b4
004ac9d8  00 00 e0 e3                                      mvn r0, #0
004ac9dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ac9e0  05 00 a0 e1                                      mov r0, r5
004ac9e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ac9e8  ec 80 4e 00 b8 10 00 00                          .byte 0xec, 0x80, 0x4e, 0x00, 0xb8, 0x10, 0x00, 0x00

; FUNCTION 0x004aca64, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_7v2QuestEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::v2Quest>(char const*)
; decoder-mode: arm
004aca64  48 30 9f e5                                      ldr r3, [pc, #0x48]
004aca68  48 20 9f e5                                      ldr r2, [pc, #0x48]
004aca6c  70 40 2d e9                                      push {r4, r5, r6, lr}
004aca70  03 30 8f e0                                      add r3, pc, r3
004aca74  00 60 a0 e1                                      mov r6, r0
004aca78  02 40 93 e7                                      ldr r4, [r3, r2]
004aca7c  00 50 a0 e3                                      mov r5, #0
004aca80  14 10 94 e5                                      ldr r1, [r4, #0x14]
004aca84  06 00 a0 e1                                      mov r0, r6
004aca88  23 86 f9 eb                                      bl #0x30e31c
004aca8c  00 00 50 e3                                      cmp r0, #0
004aca90  05 00 00 0a                                      beq #0x4acaac
004aca94  01 50 85 e2                                      add r5, r5, #1
004aca98  11 00 55 e3                                      cmp r5, #0x11
004aca9c  18 40 84 e2                                      add r4, r4, #0x18
004acaa0  f6 ff ff 1a                                      bne #0x4aca80
004acaa4  00 00 e0 e3                                      mvn r0, #0
004acaa8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004acaac  05 00 a0 e1                                      mov r0, r5
004acab0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004acab4  20 80 4e 00 8c 3c 00 00                          .byte 0x20, 0x80, 0x4e, 0x00, 0x8c, 0x3c, 0x00, 0x00

; FUNCTION 0x004acb30, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_7v2EventEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::v2Event>(char const*)
; decoder-mode: arm
004acb30  48 30 9f e5                                      ldr r3, [pc, #0x48]
004acb34  48 20 9f e5                                      ldr r2, [pc, #0x48]
004acb38  70 40 2d e9                                      push {r4, r5, r6, lr}
004acb3c  03 30 8f e0                                      add r3, pc, r3
004acb40  00 60 a0 e1                                      mov r6, r0
004acb44  02 40 93 e7                                      ldr r4, [r3, r2]
004acb48  00 50 a0 e3                                      mov r5, #0
004acb4c  14 10 94 e5                                      ldr r1, [r4, #0x14]
004acb50  06 00 a0 e1                                      mov r0, r6
004acb54  f0 85 f9 eb                                      bl #0x30e31c
004acb58  00 00 50 e3                                      cmp r0, #0
004acb5c  05 00 00 0a                                      beq #0x4acb78
004acb60  01 50 85 e2                                      add r5, r5, #1
004acb64  03 00 55 e3                                      cmp r5, #3
004acb68  18 40 84 e2                                      add r4, r4, #0x18
004acb6c  f6 ff ff 1a                                      bne #0x4acb4c
004acb70  00 00 e0 e3                                      mvn r0, #0
004acb74  70 80 bd e8                                      pop {r4, r5, r6, pc}
004acb78  05 00 a0 e1                                      mov r0, r5
004acb7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004acb80  54 7f 4e 00 ec 30 00 00                          .byte 0x54, 0x7f, 0x4e, 0x00, 0xec, 0x30, 0x00, 0x00

; FUNCTION 0x004acbfc, declared_size=76, range_size=76, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_9v2CondAndEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::v2CondAnd>(char const*)
; decoder-mode: arm
004acbfc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004acc00  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004acc04  70 40 2d e9                                      push {r4, r5, r6, lr}
004acc08  03 30 8f e0                                      add r3, pc, r3
004acc0c  02 40 93 e7                                      ldr r4, [r3, r2]
004acc10  00 50 a0 e1                                      mov r5, r0
004acc14  14 10 94 e5                                      ldr r1, [r4, #0x14]
004acc18  bf 85 f9 eb                                      bl #0x30e31c
004acc1c  00 00 50 e3                                      cmp r0, #0
004acc20  05 00 00 0a                                      beq #0x4acc3c
004acc24  05 00 a0 e1                                      mov r0, r5
004acc28  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
004acc2c  ba 85 f9 eb                                      bl #0x30e31c
004acc30  00 00 50 e3                                      cmp r0, #0
004acc34  01 00 a0 03                                      moveq r0, #1
004acc38  00 00 e0 13                                      mvnne r0, #0
004acc3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004acc40  88 7e 4e 00 8c 49 00 00                          .byte 0x88, 0x7e, 0x4e, 0x00, 0x8c, 0x49, 0x00, 0x00

; FUNCTION 0x004acc48, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_6TrophyEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Trophy>(char const*)
; decoder-mode: arm
004acc48  48 30 9f e5                                      ldr r3, [pc, #0x48]
004acc4c  48 20 9f e5                                      ldr r2, [pc, #0x48]
004acc50  70 40 2d e9                                      push {r4, r5, r6, lr}
004acc54  03 30 8f e0                                      add r3, pc, r3
004acc58  00 60 a0 e1                                      mov r6, r0
004acc5c  02 40 93 e7                                      ldr r4, [r3, r2]
004acc60  00 50 a0 e3                                      mov r5, #0
004acc64  14 10 94 e5                                      ldr r1, [r4, #0x14]
004acc68  06 00 a0 e1                                      mov r0, r6
004acc6c  aa 85 f9 eb                                      bl #0x30e31c
004acc70  00 00 50 e3                                      cmp r0, #0
004acc74  05 00 00 0a                                      beq #0x4acc90
004acc78  01 50 85 e2                                      add r5, r5, #1
004acc7c  07 00 55 e3                                      cmp r5, #7
004acc80  18 40 84 e2                                      add r4, r4, #0x18
004acc84  f6 ff ff 1a                                      bne #0x4acc64
004acc88  00 00 e0 e3                                      mvn r0, #0
004acc8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
004acc90  05 00 a0 e1                                      mov r0, r5
004acc94  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004acc98  3c 7e 4e 00 5c 48 00 00                          .byte 0x3c, 0x7e, 0x4e, 0x00, 0x5c, 0x48, 0x00, 0x00

; FUNCTION 0x004acca0, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_10SpawnGroupEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::SpawnGroup>(char const*)
; decoder-mode: arm
004acca0  48 30 9f e5                                      ldr r3, [pc, #0x48]
004acca4  48 20 9f e5                                      ldr r2, [pc, #0x48]
004acca8  70 40 2d e9                                      push {r4, r5, r6, lr}
004accac  03 30 8f e0                                      add r3, pc, r3
004accb0  00 60 a0 e1                                      mov r6, r0
004accb4  02 40 93 e7                                      ldr r4, [r3, r2]
004accb8  00 50 a0 e3                                      mov r5, #0
004accbc  14 10 94 e5                                      ldr r1, [r4, #0x14]
004accc0  06 00 a0 e1                                      mov r0, r6
004accc4  94 85 f9 eb                                      bl #0x30e31c
004accc8  00 00 50 e3                                      cmp r0, #0
004acccc  05 00 00 0a                                      beq #0x4acce8
004accd0  01 50 85 e2                                      add r5, r5, #1
004accd4  03 00 55 e3                                      cmp r5, #3
004accd8  18 40 84 e2                                      add r4, r4, #0x18
004accdc  f6 ff ff 1a                                      bne #0x4accbc
004acce0  00 00 e0 e3                                      mvn r0, #0
004acce4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004acce8  05 00 a0 e1                                      mov r0, r5
004accec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004accf0  e4 7d 4e 00 e4 3a 00 00                          .byte 0xe4, 0x7d, 0x4e, 0x00, 0xe4, 0x3a, 0x00, 0x00

; FUNCTION 0x004acd6c, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_5SoundEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Sound>(char const*)
; decoder-mode: arm
004acd6c  48 30 9f e5                                      ldr r3, [pc, #0x48]
004acd70  48 20 9f e5                                      ldr r2, [pc, #0x48]
004acd74  70 40 2d e9                                      push {r4, r5, r6, lr}
004acd78  03 30 8f e0                                      add r3, pc, r3
004acd7c  00 60 a0 e1                                      mov r6, r0
004acd80  02 40 93 e7                                      ldr r4, [r3, r2]
004acd84  00 50 a0 e3                                      mov r5, #0
004acd88  14 10 94 e5                                      ldr r1, [r4, #0x14]
004acd8c  06 00 a0 e1                                      mov r0, r6
004acd90  61 85 f9 eb                                      bl #0x30e31c
004acd94  00 00 50 e3                                      cmp r0, #0
004acd98  05 00 00 0a                                      beq #0x4acdb4
004acd9c  01 50 85 e2                                      add r5, r5, #1
004acda0  09 00 55 e3                                      cmp r5, #9
004acda4  18 40 84 e2                                      add r4, r4, #0x18
004acda8  f6 ff ff 1a                                      bne #0x4acd88
004acdac  00 00 e0 e3                                      mvn r0, #0
004acdb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004acdb4  05 00 a0 e1                                      mov r0, r5
004acdb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004acdbc  18 7d 4e 00 90 2e 00 00                          .byte 0x18, 0x7d, 0x4e, 0x00, 0x90, 0x2e, 0x00, 0x00

; FUNCTION 0x004ace38, declared_size=76, range_size=76, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_10SoundGroupEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::SoundGroup>(char const*)
; decoder-mode: arm
004ace38  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004ace3c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004ace40  70 40 2d e9                                      push {r4, r5, r6, lr}
004ace44  03 30 8f e0                                      add r3, pc, r3
004ace48  02 40 93 e7                                      ldr r4, [r3, r2]
004ace4c  00 50 a0 e1                                      mov r5, r0
004ace50  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ace54  30 85 f9 eb                                      bl #0x30e31c
004ace58  00 00 50 e3                                      cmp r0, #0
004ace5c  05 00 00 0a                                      beq #0x4ace78
004ace60  05 00 a0 e1                                      mov r0, r5
004ace64  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
004ace68  2b 85 f9 eb                                      bl #0x30e31c
004ace6c  00 00 50 e3                                      cmp r0, #0
004ace70  01 00 a0 03                                      moveq r0, #1
004ace74  00 00 e0 13                                      mvnne r0, #0
004ace78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ace7c  4c 7c 4e 00 d0 09 00 00                          .byte 0x4c, 0x7c, 0x4e, 0x00, 0xd0, 0x09, 0x00, 0x00

; FUNCTION 0x004acef8, declared_size=76, range_size=76, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_9SoundBankEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::SoundBank>(char const*)
; decoder-mode: arm
004acef8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004acefc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004acf00  70 40 2d e9                                      push {r4, r5, r6, lr}
004acf04  03 30 8f e0                                      add r3, pc, r3
004acf08  02 40 93 e7                                      ldr r4, [r3, r2]
004acf0c  00 50 a0 e1                                      mov r5, r0
004acf10  14 10 94 e5                                      ldr r1, [r4, #0x14]
004acf14  00 85 f9 eb                                      bl #0x30e31c
004acf18  00 00 50 e3                                      cmp r0, #0
004acf1c  05 00 00 0a                                      beq #0x4acf38
004acf20  05 00 a0 e1                                      mov r0, r5
004acf24  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
004acf28  fb 84 f9 eb                                      bl #0x30e31c
004acf2c  00 00 50 e3                                      cmp r0, #0
004acf30  01 00 a0 03                                      moveq r0, #1
004acf34  00 00 e0 13                                      mvnne r0, #0
004acf38  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004acf3c  8c 7b 4e 00 f4 08 00 00                          .byte 0x8c, 0x7b, 0x4e, 0x00, 0xf4, 0x08, 0x00, 0x00

; FUNCTION 0x004acfb8, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_8ListenerEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Listener>(char const*)
; decoder-mode: arm
004acfb8  48 30 9f e5                                      ldr r3, [pc, #0x48]
004acfbc  48 20 9f e5                                      ldr r2, [pc, #0x48]
004acfc0  70 40 2d e9                                      push {r4, r5, r6, lr}
004acfc4  03 30 8f e0                                      add r3, pc, r3
004acfc8  00 60 a0 e1                                      mov r6, r0
004acfcc  02 40 93 e7                                      ldr r4, [r3, r2]
004acfd0  00 50 a0 e3                                      mov r5, #0
004acfd4  14 10 94 e5                                      ldr r1, [r4, #0x14]
004acfd8  06 00 a0 e1                                      mov r0, r6
004acfdc  ce 84 f9 eb                                      bl #0x30e31c
004acfe0  00 00 50 e3                                      cmp r0, #0
004acfe4  05 00 00 0a                                      beq #0x4ad000
004acfe8  01 50 85 e2                                      add r5, r5, #1
004acfec  06 00 55 e3                                      cmp r5, #6
004acff0  18 40 84 e2                                      add r4, r4, #0x18
004acff4  f6 ff ff 1a                                      bne #0x4acfd4
004acff8  00 00 e0 e3                                      mvn r0, #0
004acffc  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ad000  05 00 a0 e1                                      mov r0, r5
004ad004  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ad008  cc 7a 4e 00 18 39 00 00                          .byte 0xcc, 0x7a, 0x4e, 0x00, 0x18, 0x39, 0x00, 0x00

; FUNCTION 0x004ad084, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_10CharSoundsEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::CharSounds>(char const*)
; decoder-mode: arm
004ad084  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ad088  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ad08c  70 40 2d e9                                      push {r4, r5, r6, lr}
004ad090  03 30 8f e0                                      add r3, pc, r3
004ad094  00 60 a0 e1                                      mov r6, r0
004ad098  02 40 93 e7                                      ldr r4, [r3, r2]
004ad09c  00 50 a0 e3                                      mov r5, #0
004ad0a0  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ad0a4  06 00 a0 e1                                      mov r0, r6
004ad0a8  9b 84 f9 eb                                      bl #0x30e31c
004ad0ac  00 00 50 e3                                      cmp r0, #0
004ad0b0  05 00 00 0a                                      beq #0x4ad0cc
004ad0b4  01 50 85 e2                                      add r5, r5, #1
004ad0b8  06 00 55 e3                                      cmp r5, #6
004ad0bc  18 40 84 e2                                      add r4, r4, #0x18
004ad0c0  f6 ff ff 1a                                      bne #0x4ad0a0
004ad0c4  00 00 e0 e3                                      mvn r0, #0
004ad0c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ad0cc  05 00 a0 e1                                      mov r0, r5
004ad0d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ad0d4  00 7a 4e 00 38 38 00 00                          .byte 0x00, 0x7a, 0x4e, 0x00, 0x38, 0x38, 0x00, 0x00

; FUNCTION 0x004ad150, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_5SkillEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Skill>(char const*)
; decoder-mode: arm
004ad150  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ad154  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ad158  70 40 2d e9                                      push {r4, r5, r6, lr}
004ad15c  03 30 8f e0                                      add r3, pc, r3
004ad160  00 60 a0 e1                                      mov r6, r0
004ad164  02 50 93 e7                                      ldr r5, [r3, r2]
004ad168  00 40 a0 e3                                      mov r4, #0
004ad16c  14 10 95 e5                                      ldr r1, [r5, #0x14]
004ad170  06 00 a0 e1                                      mov r0, r6
004ad174  68 84 f9 eb                                      bl #0x30e31c
004ad178  00 00 50 e3                                      cmp r0, #0
004ad17c  05 00 00 0a                                      beq #0x4ad198
004ad180  01 40 84 e2                                      add r4, r4, #1
004ad184  0f 00 54 e3                                      cmp r4, #0xf
004ad188  18 50 85 e2                                      add r5, r5, #0x18
004ad18c  f6 ff ff 1a                                      bne #0x4ad16c
004ad190  00 00 e0 e3                                      mvn r0, #0
004ad194  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ad198  04 00 a0 e1                                      mov r0, r4
004ad19c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ad1a0  34 79 4e 00 9c 1f 00 00                          .byte 0x34, 0x79, 0x4e, 0x00, 0x9c, 0x1f, 0x00, 0x00

; FUNCTION 0x004ad21c, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_9SkillListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::SkillList>(char const*)
; decoder-mode: arm
004ad21c  20 30 9f e5                                      ldr r3, [pc, #0x20]
004ad220  20 20 9f e5                                      ldr r2, [pc, #0x20]
004ad224  10 40 2d e9                                      push {r4, lr}
004ad228  03 30 8f e0                                      add r3, pc, r3
004ad22c  02 20 93 e7                                      ldr r2, [r3, r2]
004ad230  14 10 92 e5                                      ldr r1, [r2, #0x14]
004ad234  38 84 f9 eb                                      bl #0x30e31c
004ad238  00 00 50 e3                                      cmp r0, #0
004ad23c  00 00 e0 13                                      mvnne r0, #0
004ad240  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ad244  68 78 4e 00 70 3f 00 00                          .byte 0x68, 0x78, 0x4e, 0x00, 0x70, 0x3f, 0x00, 0x00

; FUNCTION 0x004ad2c0, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_10ProjectileEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Projectile>(char const*)
; decoder-mode: arm
004ad2c0  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ad2c4  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ad2c8  70 40 2d e9                                      push {r4, r5, r6, lr}
004ad2cc  03 30 8f e0                                      add r3, pc, r3
004ad2d0  00 60 a0 e1                                      mov r6, r0
004ad2d4  02 40 93 e7                                      ldr r4, [r3, r2]
004ad2d8  00 50 a0 e3                                      mov r5, #0
004ad2dc  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ad2e0  06 00 a0 e1                                      mov r0, r6
004ad2e4  0c 84 f9 eb                                      bl #0x30e31c
004ad2e8  00 00 50 e3                                      cmp r0, #0
004ad2ec  05 00 00 0a                                      beq #0x4ad308
004ad2f0  01 50 85 e2                                      add r5, r5, #1
004ad2f4  14 00 55 e3                                      cmp r5, #0x14
004ad2f8  18 40 84 e2                                      add r4, r4, #0x18
004ad2fc  f6 ff ff 1a                                      bne #0x4ad2dc
004ad300  00 00 e0 e3                                      mvn r0, #0
004ad304  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ad308  05 00 a0 e1                                      mov r0, r5
004ad30c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ad310  c4 77 4e 00 80 16 00 00                          .byte 0xc4, 0x77, 0x4e, 0x00, 0x80, 0x16, 0x00, 0x00

; FUNCTION 0x004ad38c, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_11NumProbListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::NumProbList>(char const*)
; decoder-mode: arm
004ad38c  20 30 9f e5                                      ldr r3, [pc, #0x20]
004ad390  20 20 9f e5                                      ldr r2, [pc, #0x20]
004ad394  10 40 2d e9                                      push {r4, lr}
004ad398  03 30 8f e0                                      add r3, pc, r3
004ad39c  02 20 93 e7                                      ldr r2, [r3, r2]
004ad3a0  14 10 92 e5                                      ldr r1, [r2, #0x14]
004ad3a4  dc 83 f9 eb                                      bl #0x30e31c
004ad3a8  00 00 50 e3                                      cmp r0, #0
004ad3ac  00 00 e0 13                                      mvnne r0, #0
004ad3b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ad3b4  f8 76 4e 00 ac 32 00 00                          .byte 0xf8, 0x76, 0x4e, 0x00, 0xac, 0x32, 0x00, 0x00

; FUNCTION 0x004ad430, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_8MerchantEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Merchant>(char const*)
; decoder-mode: arm
004ad430  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ad434  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ad438  70 40 2d e9                                      push {r4, r5, r6, lr}
004ad43c  03 30 8f e0                                      add r3, pc, r3
004ad440  00 60 a0 e1                                      mov r6, r0
004ad444  02 40 93 e7                                      ldr r4, [r3, r2]
004ad448  00 50 a0 e3                                      mov r5, #0
004ad44c  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ad450  06 00 a0 e1                                      mov r0, r6
004ad454  b0 83 f9 eb                                      bl #0x30e31c
004ad458  00 00 50 e3                                      cmp r0, #0
004ad45c  05 00 00 0a                                      beq #0x4ad478
004ad460  01 50 85 e2                                      add r5, r5, #1
004ad464  03 00 55 e3                                      cmp r5, #3
004ad468  18 40 84 e2                                      add r4, r4, #0x18
004ad46c  f6 ff ff 1a                                      bne #0x4ad44c
004ad470  00 00 e0 e3                                      mvn r0, #0
004ad474  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ad478  05 00 a0 e1                                      mov r0, r5
004ad47c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ad480  54 76 4e 00 04 4b 00 00                          .byte 0x54, 0x76, 0x4e, 0x00, 0x04, 0x4b, 0x00, 0x00

; FUNCTION 0x004ad4fc, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_4LootEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Loot>(char const*)
; decoder-mode: arm
004ad4fc  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ad500  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ad504  70 40 2d e9                                      push {r4, r5, r6, lr}
004ad508  03 30 8f e0                                      add r3, pc, r3
004ad50c  00 60 a0 e1                                      mov r6, r0
004ad510  02 40 93 e7                                      ldr r4, [r3, r2]
004ad514  00 50 a0 e3                                      mov r5, #0
004ad518  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ad51c  06 00 a0 e1                                      mov r0, r6
004ad520  7d 83 f9 eb                                      bl #0x30e31c
004ad524  00 00 50 e3                                      cmp r0, #0
004ad528  05 00 00 0a                                      beq #0x4ad544
004ad52c  01 50 85 e2                                      add r5, r5, #1
004ad530  05 00 55 e3                                      cmp r5, #5
004ad534  18 40 84 e2                                      add r4, r4, #0x18
004ad538  f6 ff ff 1a                                      bne #0x4ad518
004ad53c  00 00 e0 e3                                      mvn r0, #0
004ad540  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ad544  05 00 a0 e1                                      mov r0, r5
004ad548  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ad54c  88 75 4e 00 a8 1f 00 00                          .byte 0x88, 0x75, 0x4e, 0x00, 0xa8, 0x1f, 0x00, 0x00

; FUNCTION 0x004ad5c8, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_16ItemTypeListListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::ItemTypeListList>(char const*)
; decoder-mode: arm
004ad5c8  20 30 9f e5                                      ldr r3, [pc, #0x20]
004ad5cc  20 20 9f e5                                      ldr r2, [pc, #0x20]
004ad5d0  10 40 2d e9                                      push {r4, lr}
004ad5d4  03 30 8f e0                                      add r3, pc, r3
004ad5d8  02 20 93 e7                                      ldr r2, [r3, r2]
004ad5dc  14 10 92 e5                                      ldr r1, [r2, #0x14]
004ad5e0  4d 83 f9 eb                                      bl #0x30e31c
004ad5e4  00 00 50 e3                                      cmp r0, #0
004ad5e8  00 00 e0 13                                      mvnne r0, #0
004ad5ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ad5f0  bc 74 4e 00 88 31 00 00                          .byte 0xbc, 0x74, 0x4e, 0x00, 0x88, 0x31, 0x00, 0x00

; FUNCTION 0x004ad66c, declared_size=92, range_size=92, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_4ItemEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Item>(char const*)
; decoder-mode: arm
004ad66c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004ad670  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004ad674  70 40 2d e9                                      push {r4, r5, r6, lr}
004ad678  03 30 8f e0                                      add r3, pc, r3
004ad67c  00 60 a0 e1                                      mov r6, r0
004ad680  02 40 93 e7                                      ldr r4, [r3, r2]
004ad684  00 50 a0 e3                                      mov r5, #0
004ad688  03 00 00 ea                                      b #0x4ad69c
004ad68c  01 50 85 e2                                      add r5, r5, #1
004ad690  26 00 55 e3                                      cmp r5, #0x26
004ad694  18 40 84 e2                                      add r4, r4, #0x18
004ad698  06 00 00 0a                                      beq #0x4ad6b8
004ad69c  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ad6a0  06 00 a0 e1                                      mov r0, r6
004ad6a4  1c 83 f9 eb                                      bl #0x30e31c
004ad6a8  00 00 50 e3                                      cmp r0, #0
004ad6ac  f6 ff ff 1a                                      bne #0x4ad68c
004ad6b0  05 00 a0 e1                                      mov r0, r5
004ad6b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ad6b8  00 00 e0 e3                                      mvn r0, #0
004ad6bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ad6c0  18 74 4e 00 88 24 00 00                          .byte 0x18, 0x74, 0x4e, 0x00, 0x88, 0x24, 0x00, 0x00

; FUNCTION 0x004ad73c, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_17ItemListEntryListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::ItemListEntryList>(char const*)
; decoder-mode: arm
004ad73c  20 30 9f e5                                      ldr r3, [pc, #0x20]
004ad740  20 20 9f e5                                      ldr r2, [pc, #0x20]
004ad744  10 40 2d e9                                      push {r4, lr}
004ad748  03 30 8f e0                                      add r3, pc, r3
004ad74c  02 20 93 e7                                      ldr r2, [r3, r2]
004ad750  14 10 92 e5                                      ldr r1, [r2, #0x14]
004ad754  f0 82 f9 eb                                      bl #0x30e31c
004ad758  00 00 50 e3                                      cmp r0, #0
004ad75c  00 00 e0 13                                      mvnne r0, #0
004ad760  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ad764  48 73 4e 00 fc 3f 00 00                          .byte 0x48, 0x73, 0x4e, 0x00, 0xfc, 0x3f, 0x00, 0x00

; FUNCTION 0x004ad7e0, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_9InventoryEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Inventory>(char const*)
; decoder-mode: arm
004ad7e0  20 30 9f e5                                      ldr r3, [pc, #0x20]
004ad7e4  20 20 9f e5                                      ldr r2, [pc, #0x20]
004ad7e8  10 40 2d e9                                      push {r4, lr}
004ad7ec  03 30 8f e0                                      add r3, pc, r3
004ad7f0  02 20 93 e7                                      ldr r2, [r3, r2]
004ad7f4  14 10 92 e5                                      ldr r1, [r2, #0x14]
004ad7f8  c7 82 f9 eb                                      bl #0x30e31c
004ad7fc  00 00 50 e3                                      cmp r0, #0
004ad800  00 00 e0 13                                      mvnne r0, #0
004ad804  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ad808  a4 72 4e 00 f0 24 00 00                          .byte 0xa4, 0x72, 0x4e, 0x00, 0xf0, 0x24, 0x00, 0x00

; FUNCTION 0x004ad884, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_14TileOffsetListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::TileOffsetList>(char const*)
; decoder-mode: arm
004ad884  20 30 9f e5                                      ldr r3, [pc, #0x20]
004ad888  20 20 9f e5                                      ldr r2, [pc, #0x20]
004ad88c  10 40 2d e9                                      push {r4, lr}
004ad890  03 30 8f e0                                      add r3, pc, r3
004ad894  02 20 93 e7                                      ldr r2, [r3, r2]
004ad898  14 10 92 e5                                      ldr r1, [r2, #0x14]
004ad89c  9e 82 f9 eb                                      bl #0x30e31c
004ad8a0  00 00 50 e3                                      cmp r0, #0
004ad8a4  00 00 e0 13                                      mvnne r0, #0
004ad8a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ad8ac  00 72 4e 00 08 42 00 00                          .byte 0x00, 0x72, 0x4e, 0x00, 0x08, 0x42, 0x00, 0x00

; FUNCTION 0x004ad928, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_15ItemAudioVisualEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::ItemAudioVisual>(char const*)
; decoder-mode: arm
004ad928  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ad92c  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ad930  70 40 2d e9                                      push {r4, r5, r6, lr}
004ad934  03 30 8f e0                                      add r3, pc, r3
004ad938  00 60 a0 e1                                      mov r6, r0
004ad93c  02 40 93 e7                                      ldr r4, [r3, r2]
004ad940  00 50 a0 e3                                      mov r5, #0
004ad944  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ad948  06 00 a0 e1                                      mov r0, r6
004ad94c  72 82 f9 eb                                      bl #0x30e31c
004ad950  00 00 50 e3                                      cmp r0, #0
004ad954  05 00 00 0a                                      beq #0x4ad970
004ad958  01 50 85 e2                                      add r5, r5, #1
004ad95c  03 00 55 e3                                      cmp r5, #3
004ad960  18 40 84 e2                                      add r4, r4, #0x18
004ad964  f6 ff ff 1a                                      bne #0x4ad944
004ad968  00 00 e0 e3                                      mvn r0, #0
004ad96c  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ad970  05 00 a0 e1                                      mov r0, r5
004ad974  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ad978  5c 71 4e 00 7c 09 00 00                          .byte 0x5c, 0x71, 0x4e, 0x00, 0x7c, 0x09, 0x00, 0x00

; FUNCTION 0x004ad980, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_16LevelDeclarationEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::LevelDeclaration>(char const*)
; decoder-mode: arm
004ad980  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ad984  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ad988  70 40 2d e9                                      push {r4, r5, r6, lr}
004ad98c  03 30 8f e0                                      add r3, pc, r3
004ad990  00 60 a0 e1                                      mov r6, r0
004ad994  02 50 93 e7                                      ldr r5, [r3, r2]
004ad998  00 40 a0 e3                                      mov r4, #0
004ad99c  14 10 95 e5                                      ldr r1, [r5, #0x14]
004ad9a0  06 00 a0 e1                                      mov r0, r6
004ad9a4  5c 82 f9 eb                                      bl #0x30e31c
004ad9a8  00 00 50 e3                                      cmp r0, #0
004ad9ac  05 00 00 0a                                      beq #0x4ad9c8
004ad9b0  01 40 84 e2                                      add r4, r4, #1
004ad9b4  0f 00 54 e3                                      cmp r4, #0xf
004ad9b8  18 50 85 e2                                      add r5, r5, #0x18
004ad9bc  f6 ff ff 1a                                      bne #0x4ad99c
004ad9c0  00 00 e0 e3                                      mvn r0, #0
004ad9c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ad9c8  04 00 a0 e1                                      mov r0, r4
004ad9cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ad9d0  04 71 4e 00 d0 1f 00 00                          .byte 0x04, 0x71, 0x4e, 0x00, 0xd0, 0x1f, 0x00, 0x00

; FUNCTION 0x004ada4c, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_21FastTravelDestinationEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::FastTravelDestination>(char const*)
; decoder-mode: arm
004ada4c  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ada50  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ada54  70 40 2d e9                                      push {r4, r5, r6, lr}
004ada58  03 30 8f e0                                      add r3, pc, r3
004ada5c  00 60 a0 e1                                      mov r6, r0
004ada60  02 40 93 e7                                      ldr r4, [r3, r2]
004ada64  00 50 a0 e3                                      mov r5, #0
004ada68  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ada6c  06 00 a0 e1                                      mov r0, r6
004ada70  29 82 f9 eb                                      bl #0x30e31c
004ada74  00 00 50 e3                                      cmp r0, #0
004ada78  05 00 00 0a                                      beq #0x4ada94
004ada7c  01 50 85 e2                                      add r5, r5, #1
004ada80  05 00 55 e3                                      cmp r5, #5
004ada84  18 40 84 e2                                      add r4, r4, #0x18
004ada88  f6 ff ff 1a                                      bne #0x4ada68
004ada8c  00 00 e0 e3                                      mvn r0, #0
004ada90  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ada94  05 00 a0 e1                                      mov r0, r5
004ada98  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ada9c  38 70 4e 00 5c 14 00 00                          .byte 0x38, 0x70, 0x4e, 0x00, 0x5c, 0x14, 0x00, 0x00

; FUNCTION 0x004adb18, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_17ItemBonusAttrListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::ItemBonusAttrList>(char const*)
; decoder-mode: arm
004adb18  20 30 9f e5                                      ldr r3, [pc, #0x20]
004adb1c  20 20 9f e5                                      ldr r2, [pc, #0x20]
004adb20  10 40 2d e9                                      push {r4, lr}
004adb24  03 30 8f e0                                      add r3, pc, r3
004adb28  02 20 93 e7                                      ldr r2, [r3, r2]
004adb2c  14 10 92 e5                                      ldr r1, [r2, #0x14]
004adb30  f9 81 f9 eb                                      bl #0x30e31c
004adb34  00 00 50 e3                                      cmp r0, #0
004adb38  00 00 e0 13                                      mvnne r0, #0
004adb3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004adb40  6c 6f 4e 00 6c 1e 00 00                          .byte 0x6c, 0x6f, 0x4e, 0x00, 0x6c, 0x1e, 0x00, 0x00

; FUNCTION 0x004adbbc, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_12ItemPowerRefEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::ItemPowerRef>(char const*)
; decoder-mode: arm
004adbbc  48 30 9f e5                                      ldr r3, [pc, #0x48]
004adbc0  48 20 9f e5                                      ldr r2, [pc, #0x48]
004adbc4  70 40 2d e9                                      push {r4, r5, r6, lr}
004adbc8  03 30 8f e0                                      add r3, pc, r3
004adbcc  00 60 a0 e1                                      mov r6, r0
004adbd0  02 50 93 e7                                      ldr r5, [r3, r2]
004adbd4  00 40 a0 e3                                      mov r4, #0
004adbd8  14 10 95 e5                                      ldr r1, [r5, #0x14]
004adbdc  06 00 a0 e1                                      mov r0, r6
004adbe0  cd 81 f9 eb                                      bl #0x30e31c
004adbe4  00 00 50 e3                                      cmp r0, #0
004adbe8  05 00 00 0a                                      beq #0x4adc04
004adbec  01 40 84 e2                                      add r4, r4, #1
004adbf0  08 00 54 e3                                      cmp r4, #8
004adbf4  18 50 85 e2                                      add r5, r5, #0x18
004adbf8  f6 ff ff 1a                                      bne #0x4adbd8
004adbfc  00 00 e0 e3                                      mvn r0, #0
004adc00  70 80 bd e8                                      pop {r4, r5, r6, pc}
004adc04  04 00 a0 e1                                      mov r0, r4
004adc08  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004adc0c  c8 6e 4e 00 c4 44 00 00                          .byte 0xc8, 0x6e, 0x4e, 0x00, 0xc4, 0x44, 0x00, 0x00

; FUNCTION 0x004adc88, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_18ItemPowerEntryListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::ItemPowerEntryList>(char const*)
; decoder-mode: arm
004adc88  20 30 9f e5                                      ldr r3, [pc, #0x20]
004adc8c  20 20 9f e5                                      ldr r2, [pc, #0x20]
004adc90  10 40 2d e9                                      push {r4, lr}
004adc94  03 30 8f e0                                      add r3, pc, r3
004adc98  02 20 93 e7                                      ldr r2, [r3, r2]
004adc9c  14 10 92 e5                                      ldr r1, [r2, #0x14]
004adca0  9d 81 f9 eb                                      bl #0x30e31c
004adca4  00 00 50 e3                                      cmp r0, #0
004adca8  00 00 e0 13                                      mvnne r0, #0
004adcac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004adcb0  fc 6d 4e 00 78 17 00 00                          .byte 0xfc, 0x6d, 0x4e, 0x00, 0x78, 0x17, 0x00, 0x00

; FUNCTION 0x004add2c, declared_size=76, range_size=76, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_8HintPageEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::HintPage>(char const*)
; decoder-mode: arm
004add2c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004add30  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004add34  70 40 2d e9                                      push {r4, r5, r6, lr}
004add38  03 30 8f e0                                      add r3, pc, r3
004add3c  02 40 93 e7                                      ldr r4, [r3, r2]
004add40  00 50 a0 e1                                      mov r5, r0
004add44  14 10 94 e5                                      ldr r1, [r4, #0x14]
004add48  73 81 f9 eb                                      bl #0x30e31c
004add4c  00 00 50 e3                                      cmp r0, #0
004add50  05 00 00 0a                                      beq #0x4add6c
004add54  05 00 a0 e1                                      mov r0, r5
004add58  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
004add5c  6e 81 f9 eb                                      bl #0x30e31c
004add60  00 00 50 e3                                      cmp r0, #0
004add64  01 00 a0 03                                      moveq r0, #1
004add68  00 00 e0 13                                      mvnne r0, #0
004add6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004add70  58 6d 4e 00 90 21 00 00                          .byte 0x58, 0x6d, 0x4e, 0x00, 0x90, 0x21, 0x00, 0x00

; FUNCTION 0x004addec, declared_size=76, range_size=76, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_8HelpPageEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::HelpPage>(char const*)
; decoder-mode: arm
004addec  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004addf0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004addf4  70 40 2d e9                                      push {r4, r5, r6, lr}
004addf8  03 30 8f e0                                      add r3, pc, r3
004addfc  02 40 93 e7                                      ldr r4, [r3, r2]
004ade00  00 50 a0 e1                                      mov r5, r0
004ade04  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ade08  43 81 f9 eb                                      bl #0x30e31c
004ade0c  00 00 50 e3                                      cmp r0, #0
004ade10  05 00 00 0a                                      beq #0x4ade2c
004ade14  05 00 a0 e1                                      mov r0, r5
004ade18  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
004ade1c  3e 81 f9 eb                                      bl #0x30e31c
004ade20  00 00 50 e3                                      cmp r0, #0
004ade24  01 00 a0 03                                      moveq r0, #1
004ade28  00 00 e0 13                                      mvnne r0, #0
004ade2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ade30  98 6c 4e 00 c0 1f 00 00                          .byte 0x98, 0x6c, 0x4e, 0x00, 0xc0, 0x1f, 0x00, 0x00

; FUNCTION 0x004adeac, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_11TriggerTrapEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::TriggerTrap>(char const*)
; decoder-mode: arm
004adeac  48 30 9f e5                                      ldr r3, [pc, #0x48]
004adeb0  48 20 9f e5                                      ldr r2, [pc, #0x48]
004adeb4  70 40 2d e9                                      push {r4, r5, r6, lr}
004adeb8  03 30 8f e0                                      add r3, pc, r3
004adebc  00 60 a0 e1                                      mov r6, r0
004adec0  02 40 93 e7                                      ldr r4, [r3, r2]
004adec4  00 50 a0 e3                                      mov r5, #0
004adec8  14 10 94 e5                                      ldr r1, [r4, #0x14]
004adecc  06 00 a0 e1                                      mov r0, r6
004aded0  11 81 f9 eb                                      bl #0x30e31c
004aded4  00 00 50 e3                                      cmp r0, #0
004aded8  05 00 00 0a                                      beq #0x4adef4
004adedc  01 50 85 e2                                      add r5, r5, #1
004adee0  05 00 55 e3                                      cmp r5, #5
004adee4  18 40 84 e2                                      add r4, r4, #0x18
004adee8  f6 ff ff 1a                                      bne #0x4adec8
004adeec  00 00 e0 e3                                      mvn r0, #0
004adef0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004adef4  05 00 a0 e1                                      mov r0, r5
004adef8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004adefc  d8 6b 4e 00 5c 44 00 00                          .byte 0xd8, 0x6b, 0x4e, 0x00, 0x5c, 0x44, 0x00, 0x00

; FUNCTION 0x004adf78, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_12TriggerPlateEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::TriggerPlate>(char const*)
; decoder-mode: arm
004adf78  48 30 9f e5                                      ldr r3, [pc, #0x48]
004adf7c  48 20 9f e5                                      ldr r2, [pc, #0x48]
004adf80  70 40 2d e9                                      push {r4, r5, r6, lr}
004adf84  03 30 8f e0                                      add r3, pc, r3
004adf88  00 60 a0 e1                                      mov r6, r0
004adf8c  02 40 93 e7                                      ldr r4, [r3, r2]
004adf90  00 50 a0 e3                                      mov r5, #0
004adf94  14 10 94 e5                                      ldr r1, [r4, #0x14]
004adf98  06 00 a0 e1                                      mov r0, r6
004adf9c  de 80 f9 eb                                      bl #0x30e31c
004adfa0  00 00 50 e3                                      cmp r0, #0
004adfa4  05 00 00 0a                                      beq #0x4adfc0
004adfa8  01 50 85 e2                                      add r5, r5, #1
004adfac  07 00 55 e3                                      cmp r5, #7
004adfb0  18 40 84 e2                                      add r4, r4, #0x18
004adfb4  f6 ff ff 1a                                      bne #0x4adf94
004adfb8  00 00 e0 e3                                      mvn r0, #0
004adfbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
004adfc0  05 00 a0 e1                                      mov r0, r5
004adfc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004adfc8  0c 6b 4e 00 fc 11 00 00                          .byte 0x0c, 0x6b, 0x4e, 0x00, 0xfc, 0x11, 0x00, 0x00

; FUNCTION 0x004ae044, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_13TriggerObjectEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::TriggerObject>(char const*)
; decoder-mode: arm
004ae044  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae048  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae04c  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae050  03 30 8f e0                                      add r3, pc, r3
004ae054  00 60 a0 e1                                      mov r6, r0
004ae058  02 50 93 e7                                      ldr r5, [r3, r2]
004ae05c  00 40 a0 e3                                      mov r4, #0
004ae060  14 10 95 e5                                      ldr r1, [r5, #0x14]
004ae064  06 00 a0 e1                                      mov r0, r6
004ae068  ab 80 f9 eb                                      bl #0x30e31c
004ae06c  00 00 50 e3                                      cmp r0, #0
004ae070  05 00 00 0a                                      beq #0x4ae08c
004ae074  01 40 84 e2                                      add r4, r4, #1
004ae078  04 00 54 e3                                      cmp r4, #4
004ae07c  18 50 85 e2                                      add r5, r5, #0x18
004ae080  f6 ff ff 1a                                      bne #0x4ae060
004ae084  00 00 e0 e3                                      mvn r0, #0
004ae088  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae08c  04 00 a0 e1                                      mov r0, r4
004ae090  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae094  40 6a 4e 00 44 30 00 00                          .byte 0x40, 0x6a, 0x4e, 0x00, 0x44, 0x30, 0x00, 0x00

; FUNCTION 0x004ae110, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_9TimerTrapEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::TimerTrap>(char const*)
; decoder-mode: arm
004ae110  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae114  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae118  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae11c  03 30 8f e0                                      add r3, pc, r3
004ae120  00 60 a0 e1                                      mov r6, r0
004ae124  02 40 93 e7                                      ldr r4, [r3, r2]
004ae128  00 50 a0 e3                                      mov r5, #0
004ae12c  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ae130  06 00 a0 e1                                      mov r0, r6
004ae134  78 80 f9 eb                                      bl #0x30e31c
004ae138  00 00 50 e3                                      cmp r0, #0
004ae13c  05 00 00 0a                                      beq #0x4ae158
004ae140  01 50 85 e2                                      add r5, r5, #1
004ae144  06 00 55 e3                                      cmp r5, #6
004ae148  18 40 84 e2                                      add r4, r4, #0x18
004ae14c  f6 ff ff 1a                                      bne #0x4ae12c
004ae150  00 00 e0 e3                                      mvn r0, #0
004ae154  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae158  05 00 a0 e1                                      mov r0, r5
004ae15c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae160  74 69 4e 00 88 43 00 00                          .byte 0x74, 0x69, 0x4e, 0x00, 0x88, 0x43, 0x00, 0x00

; FUNCTION 0x004ae1dc, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_14ProjectileTrapEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::ProjectileTrap>(char const*)
; decoder-mode: arm
004ae1dc  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae1e0  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae1e4  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae1e8  03 30 8f e0                                      add r3, pc, r3
004ae1ec  00 60 a0 e1                                      mov r6, r0
004ae1f0  02 50 93 e7                                      ldr r5, [r3, r2]
004ae1f4  00 40 a0 e3                                      mov r4, #0
004ae1f8  14 10 95 e5                                      ldr r1, [r5, #0x14]
004ae1fc  06 00 a0 e1                                      mov r0, r6
004ae200  45 80 f9 eb                                      bl #0x30e31c
004ae204  00 00 50 e3                                      cmp r0, #0
004ae208  05 00 00 0a                                      beq #0x4ae224
004ae20c  01 40 84 e2                                      add r4, r4, #1
004ae210  08 00 54 e3                                      cmp r4, #8
004ae214  18 50 85 e2                                      add r5, r5, #0x18
004ae218  f6 ff ff 1a                                      bne #0x4ae1f8
004ae21c  00 00 e0 e3                                      mvn r0, #0
004ae220  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae224  04 00 a0 e1                                      mov r0, r4
004ae228  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae22c  a8 68 4e 00 18 0f 00 00                          .byte 0xa8, 0x68, 0x4e, 0x00, 0x18, 0x0f, 0x00, 0x00

; FUNCTION 0x004ae234, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_17OpenableContainerEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::OpenableContainer>(char const*)
; decoder-mode: arm
004ae234  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae238  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae23c  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae240  03 30 8f e0                                      add r3, pc, r3
004ae244  00 60 a0 e1                                      mov r6, r0
004ae248  02 50 93 e7                                      ldr r5, [r3, r2]
004ae24c  00 40 a0 e3                                      mov r4, #0
004ae250  14 10 95 e5                                      ldr r1, [r5, #0x14]
004ae254  06 00 a0 e1                                      mov r0, r6
004ae258  2f 80 f9 eb                                      bl #0x30e31c
004ae25c  00 00 50 e3                                      cmp r0, #0
004ae260  05 00 00 0a                                      beq #0x4ae27c
004ae264  01 40 84 e2                                      add r4, r4, #1
004ae268  08 00 54 e3                                      cmp r4, #8
004ae26c  18 50 85 e2                                      add r5, r5, #0x18
004ae270  f6 ff ff 1a                                      bne #0x4ae250
004ae274  00 00 e0 e3                                      mvn r0, #0
004ae278  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae27c  04 00 a0 e1                                      mov r0, r4
004ae280  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae284  50 68 4e 00 bc 0e 00 00                          .byte 0x50, 0x68, 0x4e, 0x00, 0xbc, 0x0e, 0x00, 0x00

; FUNCTION 0x004ae300, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_14LiftableObjectEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::LiftableObject>(char const*)
; decoder-mode: arm
004ae300  20 30 9f e5                                      ldr r3, [pc, #0x20]
004ae304  20 20 9f e5                                      ldr r2, [pc, #0x20]
004ae308  10 40 2d e9                                      push {r4, lr}
004ae30c  03 30 8f e0                                      add r3, pc, r3
004ae310  02 20 93 e7                                      ldr r2, [r3, r2]
004ae314  14 10 92 e5                                      ldr r1, [r2, #0x14]
004ae318  ff 7f f9 eb                                      bl #0x30e31c
004ae31c  00 00 50 e3                                      cmp r0, #0
004ae320  00 00 e0 13                                      mvnne r0, #0
004ae324  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ae328  84 67 4e 00 b0 38 00 00                          .byte 0x84, 0x67, 0x4e, 0x00, 0xb0, 0x38, 0x00, 0x00

; FUNCTION 0x004ae3a4, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_16GameObjectDamageEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::GameObjectDamage>(char const*)
; decoder-mode: arm
004ae3a4  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae3a8  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae3ac  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae3b0  03 30 8f e0                                      add r3, pc, r3
004ae3b4  00 60 a0 e1                                      mov r6, r0
004ae3b8  02 40 93 e7                                      ldr r4, [r3, r2]
004ae3bc  00 50 a0 e3                                      mov r5, #0
004ae3c0  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ae3c4  06 00 a0 e1                                      mov r0, r6
004ae3c8  d3 7f f9 eb                                      bl #0x30e31c
004ae3cc  00 00 50 e3                                      cmp r0, #0
004ae3d0  05 00 00 0a                                      beq #0x4ae3ec
004ae3d4  01 50 85 e2                                      add r5, r5, #1
004ae3d8  05 00 55 e3                                      cmp r5, #5
004ae3dc  18 40 84 e2                                      add r4, r4, #0x18
004ae3e0  f6 ff ff 1a                                      bne #0x4ae3c0
004ae3e4  00 00 e0 e3                                      mvn r0, #0
004ae3e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae3ec  05 00 a0 e1                                      mov r0, r5
004ae3f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae3f4  e0 66 4e 00 1c 12 00 00                          .byte 0xe0, 0x66, 0x4e, 0x00, 0x1c, 0x12, 0x00, 0x00

; FUNCTION 0x004ae470, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_13ExplosiveTrapEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::ExplosiveTrap>(char const*)
; decoder-mode: arm
004ae470  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae474  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae478  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae47c  03 30 8f e0                                      add r3, pc, r3
004ae480  00 60 a0 e1                                      mov r6, r0
004ae484  02 50 93 e7                                      ldr r5, [r3, r2]
004ae488  00 40 a0 e3                                      mov r4, #0
004ae48c  14 10 95 e5                                      ldr r1, [r5, #0x14]
004ae490  06 00 a0 e1                                      mov r0, r6
004ae494  a0 7f f9 eb                                      bl #0x30e31c
004ae498  00 00 50 e3                                      cmp r0, #0
004ae49c  05 00 00 0a                                      beq #0x4ae4b8
004ae4a0  01 40 84 e2                                      add r4, r4, #1
004ae4a4  04 00 54 e3                                      cmp r4, #4
004ae4a8  18 50 85 e2                                      add r5, r5, #0x18
004ae4ac  f6 ff ff 1a                                      bne #0x4ae48c
004ae4b0  00 00 e0 e3                                      mvn r0, #0
004ae4b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae4b8  04 00 a0 e1                                      mov r0, r4
004ae4bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae4c0  14 66 4e 00 64 1f 00 00                          .byte 0x14, 0x66, 0x4e, 0x00, 0x64, 0x1f, 0x00, 0x00

; FUNCTION 0x004ae53c, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_4DoorEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Door>(char const*)
; decoder-mode: arm
004ae53c  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae540  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae544  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae548  03 30 8f e0                                      add r3, pc, r3
004ae54c  00 60 a0 e1                                      mov r6, r0
004ae550  02 50 93 e7                                      ldr r5, [r3, r2]
004ae554  00 40 a0 e3                                      mov r4, #0
004ae558  14 10 95 e5                                      ldr r1, [r5, #0x14]
004ae55c  06 00 a0 e1                                      mov r0, r6
004ae560  6d 7f f9 eb                                      bl #0x30e31c
004ae564  00 00 50 e3                                      cmp r0, #0
004ae568  05 00 00 0a                                      beq #0x4ae584
004ae56c  01 40 84 e2                                      add r4, r4, #1
004ae570  04 00 54 e3                                      cmp r4, #4
004ae574  18 50 85 e2                                      add r5, r5, #0x18
004ae578  f6 ff ff 1a                                      bne #0x4ae558
004ae57c  00 00 e0 e3                                      mvn r0, #0
004ae580  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae584  04 00 a0 e1                                      mov r0, r4
004ae588  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae58c  48 65 4e 00 ac 20 00 00                          .byte 0x48, 0x65, 0x4e, 0x00, 0xac, 0x20, 0x00, 0x00

; FUNCTION 0x004ae594, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_21DestructibleContainerEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::DestructibleContainer>(char const*)
; decoder-mode: arm
004ae594  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae598  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae59c  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae5a0  03 30 8f e0                                      add r3, pc, r3
004ae5a4  00 60 a0 e1                                      mov r6, r0
004ae5a8  02 50 93 e7                                      ldr r5, [r3, r2]
004ae5ac  00 40 a0 e3                                      mov r4, #0
004ae5b0  14 10 95 e5                                      ldr r1, [r5, #0x14]
004ae5b4  06 00 a0 e1                                      mov r0, r6
004ae5b8  57 7f f9 eb                                      bl #0x30e31c
004ae5bc  00 00 50 e3                                      cmp r0, #0
004ae5c0  05 00 00 0a                                      beq #0x4ae5dc
004ae5c4  01 40 84 e2                                      add r4, r4, #1
004ae5c8  0f 00 54 e3                                      cmp r4, #0xf
004ae5cc  18 50 85 e2                                      add r5, r5, #0x18
004ae5d0  f6 ff ff 1a                                      bne #0x4ae5b0
004ae5d4  00 00 e0 e3                                      mvn r0, #0
004ae5d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae5dc  04 00 a0 e1                                      mov r0, r4
004ae5e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae5e4  f0 64 4e 00 14 3f 00 00                          .byte 0xf0, 0x64, 0x4e, 0x00, 0x14, 0x3f, 0x00, 0x00

; FUNCTION 0x004ae660, declared_size=76, range_size=76, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_12FontColorDefEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::FontColorDef>(char const*)
; decoder-mode: arm
004ae660  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004ae664  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
004ae668  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae66c  03 30 8f e0                                      add r3, pc, r3
004ae670  02 40 93 e7                                      ldr r4, [r3, r2]
004ae674  00 50 a0 e1                                      mov r5, r0
004ae678  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ae67c  26 7f f9 eb                                      bl #0x30e31c
004ae680  00 00 50 e3                                      cmp r0, #0
004ae684  05 00 00 0a                                      beq #0x4ae6a0
004ae688  05 00 a0 e1                                      mov r0, r5
004ae68c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
004ae690  21 7f f9 eb                                      bl #0x30e31c
004ae694  00 00 50 e3                                      cmp r0, #0
004ae698  01 00 a0 03                                      moveq r0, #1
004ae69c  00 00 e0 13                                      mvnne r0, #0
004ae6a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae6a4  24 64 4e 00 50 4b 00 00                          .byte 0x24, 0x64, 0x4e, 0x00, 0x50, 0x4b, 0x00, 0x00

; FUNCTION 0x004ae720, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_5FaeryEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Faery>(char const*)
; decoder-mode: arm
004ae720  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae724  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae728  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae72c  03 30 8f e0                                      add r3, pc, r3
004ae730  00 60 a0 e1                                      mov r6, r0
004ae734  02 40 93 e7                                      ldr r4, [r3, r2]
004ae738  00 50 a0 e3                                      mov r5, #0
004ae73c  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ae740  06 00 a0 e1                                      mov r0, r6
004ae744  f4 7e f9 eb                                      bl #0x30e31c
004ae748  00 00 50 e3                                      cmp r0, #0
004ae74c  05 00 00 0a                                      beq #0x4ae768
004ae750  01 50 85 e2                                      add r5, r5, #1
004ae754  07 00 55 e3                                      cmp r5, #7
004ae758  18 40 84 e2                                      add r4, r4, #0x18
004ae75c  f6 ff ff 1a                                      bne #0x4ae73c
004ae760  00 00 e0 e3                                      mvn r0, #0
004ae764  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae768  05 00 a0 e1                                      mov r0, r5
004ae76c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae770  64 63 4e 00 04 29 00 00                          .byte 0x64, 0x63, 0x4e, 0x00, 0x04, 0x29, 0x00, 0x00

; FUNCTION 0x004ae7ec, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_9FaeryListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::FaeryList>(char const*)
; decoder-mode: arm
004ae7ec  20 30 9f e5                                      ldr r3, [pc, #0x20]
004ae7f0  20 20 9f e5                                      ldr r2, [pc, #0x20]
004ae7f4  10 40 2d e9                                      push {r4, lr}
004ae7f8  03 30 8f e0                                      add r3, pc, r3
004ae7fc  02 20 93 e7                                      ldr r2, [r3, r2]
004ae800  14 10 92 e5                                      ldr r1, [r2, #0x14]
004ae804  c4 7e f9 eb                                      bl #0x30e31c
004ae808  00 00 50 e3                                      cmp r0, #0
004ae80c  00 00 e0 13                                      mvnne r0, #0
004ae810  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004ae814  98 62 4e 00 a4 43 00 00                          .byte 0x98, 0x62, 0x4e, 0x00, 0xa4, 0x43, 0x00, 0x00

; FUNCTION 0x004ae890, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_14FootstepEffectEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::FootstepEffect>(char const*)
; decoder-mode: arm
004ae890  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae894  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae898  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae89c  03 30 8f e0                                      add r3, pc, r3
004ae8a0  00 60 a0 e1                                      mov r6, r0
004ae8a4  02 50 93 e7                                      ldr r5, [r3, r2]
004ae8a8  00 40 a0 e3                                      mov r4, #0
004ae8ac  14 10 95 e5                                      ldr r1, [r5, #0x14]
004ae8b0  06 00 a0 e1                                      mov r0, r6
004ae8b4  98 7e f9 eb                                      bl #0x30e31c
004ae8b8  00 00 50 e3                                      cmp r0, #0
004ae8bc  05 00 00 0a                                      beq #0x4ae8d8
004ae8c0  01 40 84 e2                                      add r4, r4, #1
004ae8c4  04 00 54 e3                                      cmp r4, #4
004ae8c8  18 50 85 e2                                      add r5, r5, #0x18
004ae8cc  f6 ff ff 1a                                      bne #0x4ae8ac
004ae8d0  00 00 e0 e3                                      mvn r0, #0
004ae8d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae8d8  04 00 a0 e1                                      mov r0, r4
004ae8dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae8e0  f4 61 4e 00 54 44 00 00                          .byte 0xf4, 0x61, 0x4e, 0x00, 0x54, 0x44, 0x00, 0x00

; FUNCTION 0x004ae95c, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_10CharEffectEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::CharEffect>(char const*)
; decoder-mode: arm
004ae95c  48 30 9f e5                                      ldr r3, [pc, #0x48]
004ae960  48 20 9f e5                                      ldr r2, [pc, #0x48]
004ae964  70 40 2d e9                                      push {r4, r5, r6, lr}
004ae968  03 30 8f e0                                      add r3, pc, r3
004ae96c  00 60 a0 e1                                      mov r6, r0
004ae970  02 40 93 e7                                      ldr r4, [r3, r2]
004ae974  00 50 a0 e3                                      mov r5, #0
004ae978  14 10 94 e5                                      ldr r1, [r4, #0x14]
004ae97c  06 00 a0 e1                                      mov r0, r6
004ae980  65 7e f9 eb                                      bl #0x30e31c
004ae984  00 00 50 e3                                      cmp r0, #0
004ae988  05 00 00 0a                                      beq #0x4ae9a4
004ae98c  01 50 85 e2                                      add r5, r5, #1
004ae990  05 00 55 e3                                      cmp r5, #5
004ae994  18 40 84 e2                                      add r4, r4, #0x18
004ae998  f6 ff ff 1a                                      bne #0x4ae978
004ae99c  00 00 e0 e3                                      mvn r0, #0
004ae9a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004ae9a4  05 00 a0 e1                                      mov r0, r5
004ae9a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004ae9ac  28 61 4e 00 8c 3f 00 00                          .byte 0x28, 0x61, 0x4e, 0x00, 0x8c, 0x3f, 0x00, 0x00

; FUNCTION 0x004aea28, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_9AnimFXTplEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::AnimFXTpl>(char const*)
; decoder-mode: arm
004aea28  48 30 9f e5                                      ldr r3, [pc, #0x48]
004aea2c  48 20 9f e5                                      ldr r2, [pc, #0x48]
004aea30  70 40 2d e9                                      push {r4, r5, r6, lr}
004aea34  03 30 8f e0                                      add r3, pc, r3
004aea38  00 60 a0 e1                                      mov r6, r0
004aea3c  02 50 93 e7                                      ldr r5, [r3, r2]
004aea40  00 40 a0 e3                                      mov r4, #0
004aea44  14 10 95 e5                                      ldr r1, [r5, #0x14]
004aea48  06 00 a0 e1                                      mov r0, r6
004aea4c  32 7e f9 eb                                      bl #0x30e31c
004aea50  00 00 50 e3                                      cmp r0, #0
004aea54  05 00 00 0a                                      beq #0x4aea70
004aea58  01 40 84 e2                                      add r4, r4, #1
004aea5c  04 00 54 e3                                      cmp r4, #4
004aea60  18 50 85 e2                                      add r5, r5, #0x18
004aea64  f6 ff ff 1a                                      bne #0x4aea44
004aea68  00 00 e0 e3                                      mvn r0, #0
004aea6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
004aea70  04 00 a0 e1                                      mov r0, r4
004aea74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004aea78  5c 60 4e 00 94 16 00 00                          .byte 0x5c, 0x60, 0x4e, 0x00, 0x94, 0x16, 0x00, 0x00

; FUNCTION 0x004aeaf4, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_14DialogStepListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::DialogStepList>(char const*)
; decoder-mode: arm
004aeaf4  20 30 9f e5                                      ldr r3, [pc, #0x20]
004aeaf8  20 20 9f e5                                      ldr r2, [pc, #0x20]
004aeafc  10 40 2d e9                                      push {r4, lr}
004aeb00  03 30 8f e0                                      add r3, pc, r3
004aeb04  02 20 93 e7                                      ldr r2, [r3, r2]
004aeb08  14 10 92 e5                                      ldr r1, [r2, #0x14]
004aeb0c  02 7e f9 eb                                      bl #0x30e31c
004aeb10  00 00 50 e3                                      cmp r0, #0
004aeb14  00 00 e0 13                                      mvnne r0, #0
004aeb18  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004aeb1c  90 5f 4e 00 94 2e 00 00                          .byte 0x90, 0x5f, 0x4e, 0x00, 0x94, 0x2e, 0x00, 0x00

; FUNCTION 0x004aeb98, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_11DialogActorEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::DialogActor>(char const*)
; decoder-mode: arm
004aeb98  48 30 9f e5                                      ldr r3, [pc, #0x48]
004aeb9c  48 20 9f e5                                      ldr r2, [pc, #0x48]
004aeba0  70 40 2d e9                                      push {r4, r5, r6, lr}
004aeba4  03 30 8f e0                                      add r3, pc, r3
004aeba8  00 60 a0 e1                                      mov r6, r0
004aebac  02 40 93 e7                                      ldr r4, [r3, r2]
004aebb0  00 50 a0 e3                                      mov r5, #0
004aebb4  14 10 94 e5                                      ldr r1, [r4, #0x14]
004aebb8  06 00 a0 e1                                      mov r0, r6
004aebbc  d6 7d f9 eb                                      bl #0x30e31c
004aebc0  00 00 50 e3                                      cmp r0, #0
004aebc4  05 00 00 0a                                      beq #0x4aebe0
004aebc8  01 50 85 e2                                      add r5, r5, #1
004aebcc  03 00 55 e3                                      cmp r5, #3
004aebd0  18 40 84 e2                                      add r4, r4, #0x18
004aebd4  f6 ff ff 1a                                      bne #0x4aebb4
004aebd8  00 00 e0 e3                                      mvn r0, #0
004aebdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
004aebe0  05 00 a0 e1                                      mov r0, r5
004aebe4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004aebe8  ec 5e 4e 00 e4 39 00 00                          .byte 0xec, 0x5e, 0x4e, 0x00, 0xe4, 0x39, 0x00, 0x00

; FUNCTION 0x004aec64, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_10GameOptionEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::GameOption>(char const*)
; decoder-mode: arm
004aec64  48 30 9f e5                                      ldr r3, [pc, #0x48]
004aec68  48 20 9f e5                                      ldr r2, [pc, #0x48]
004aec6c  70 40 2d e9                                      push {r4, r5, r6, lr}
004aec70  03 30 8f e0                                      add r3, pc, r3
004aec74  00 60 a0 e1                                      mov r6, r0
004aec78  02 40 93 e7                                      ldr r4, [r3, r2]
004aec7c  00 50 a0 e3                                      mov r5, #0
004aec80  14 10 94 e5                                      ldr r1, [r4, #0x14]
004aec84  06 00 a0 e1                                      mov r0, r6
004aec88  a3 7d f9 eb                                      bl #0x30e31c
004aec8c  00 00 50 e3                                      cmp r0, #0
004aec90  05 00 00 0a                                      beq #0x4aecac
004aec94  01 50 85 e2                                      add r5, r5, #1
004aec98  07 00 55 e3                                      cmp r5, #7
004aec9c  18 40 84 e2                                      add r4, r4, #0x18
004aeca0  f6 ff ff 1a                                      bne #0x4aec80
004aeca4  00 00 e0 e3                                      mvn r0, #0
004aeca8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004aecac  05 00 a0 e1                                      mov r0, r5
004aecb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004aecb4  20 5e 4e 00 80 12 00 00                          .byte 0x20, 0x5e, 0x4e, 0x00, 0x80, 0x12, 0x00, 0x00

; FUNCTION 0x004aed30, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_14GameDifficultyEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::GameDifficulty>(char const*)
; decoder-mode: arm
004aed30  48 30 9f e5                                      ldr r3, [pc, #0x48]
004aed34  48 20 9f e5                                      ldr r2, [pc, #0x48]
004aed38  70 40 2d e9                                      push {r4, r5, r6, lr}
004aed3c  03 30 8f e0                                      add r3, pc, r3
004aed40  00 60 a0 e1                                      mov r6, r0
004aed44  02 40 93 e7                                      ldr r4, [r3, r2]
004aed48  00 50 a0 e3                                      mov r5, #0
004aed4c  14 10 94 e5                                      ldr r1, [r4, #0x14]
004aed50  06 00 a0 e1                                      mov r0, r6
004aed54  70 7d f9 eb                                      bl #0x30e31c
004aed58  00 00 50 e3                                      cmp r0, #0
004aed5c  05 00 00 0a                                      beq #0x4aed78
004aed60  01 50 85 e2                                      add r5, r5, #1
004aed64  05 00 55 e3                                      cmp r5, #5
004aed68  18 40 84 e2                                      add r4, r4, #0x18
004aed6c  f6 ff ff 1a                                      bne #0x4aed4c
004aed70  00 00 e0 e3                                      mvn r0, #0
004aed74  70 80 bd e8                                      pop {r4, r5, r6, pc}
004aed78  05 00 a0 e1                                      mov r0, r5
004aed7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004aed80  54 5d 4e 00 50 1c 00 00                          .byte 0x54, 0x5d, 0x4e, 0x00, 0x50, 0x1c, 0x00, 0x00

; FUNCTION 0x004aedfc, declared_size=92, range_size=92, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_14DesignSettingsEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::DesignSettings>(char const*)
; decoder-mode: arm
004aedfc  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004aee00  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004aee04  70 40 2d e9                                      push {r4, r5, r6, lr}
004aee08  03 30 8f e0                                      add r3, pc, r3
004aee0c  00 60 a0 e1                                      mov r6, r0
004aee10  02 50 93 e7                                      ldr r5, [r3, r2]
004aee14  00 40 a0 e3                                      mov r4, #0
004aee18  03 00 00 ea                                      b #0x4aee2c
004aee1c  01 40 84 e2                                      add r4, r4, #1
004aee20  2b 00 54 e3                                      cmp r4, #0x2b
004aee24  18 50 85 e2                                      add r5, r5, #0x18
004aee28  06 00 00 0a                                      beq #0x4aee48
004aee2c  14 10 95 e5                                      ldr r1, [r5, #0x14]
004aee30  06 00 a0 e1                                      mov r0, r6
004aee34  38 7d f9 eb                                      bl #0x30e31c
004aee38  00 00 50 e3                                      cmp r0, #0
004aee3c  f6 ff ff 1a                                      bne #0x4aee1c
004aee40  04 00 a0 e1                                      mov r0, r4
004aee44  70 80 bd e8                                      pop {r4, r5, r6, pc}
004aee48  00 00 e0 e3                                      mvn r0, #0
004aee4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004aee50  88 5c 4e 00 9c 09 00 00                          .byte 0x88, 0x5c, 0x4e, 0x00, 0x9c, 0x09, 0x00, 0x00

; FUNCTION 0x004aeecc, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_4RectEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::Rect>(char const*)
; decoder-mode: arm
004aeecc  48 30 9f e5                                      ldr r3, [pc, #0x48]
004aeed0  48 20 9f e5                                      ldr r2, [pc, #0x48]
004aeed4  70 40 2d e9                                      push {r4, r5, r6, lr}
004aeed8  03 30 8f e0                                      add r3, pc, r3
004aeedc  00 60 a0 e1                                      mov r6, r0
004aeee0  02 50 93 e7                                      ldr r5, [r3, r2]
004aeee4  00 40 a0 e3                                      mov r4, #0
004aeee8  14 10 95 e5                                      ldr r1, [r5, #0x14]
004aeeec  06 00 a0 e1                                      mov r0, r6
004aeef0  09 7d f9 eb                                      bl #0x30e31c
004aeef4  00 00 50 e3                                      cmp r0, #0
004aeef8  05 00 00 0a                                      beq #0x4aef14
004aeefc  01 40 84 e2                                      add r4, r4, #1
004aef00  04 00 54 e3                                      cmp r4, #4
004aef04  18 50 85 e2                                      add r5, r5, #0x18
004aef08  f6 ff ff 1a                                      bne #0x4aeee8
004aef0c  00 00 e0 e3                                      mvn r0, #0
004aef10  70 80 bd e8                                      pop {r4, r5, r6, pc}
004aef14  04 00 a0 e1                                      mov r0, r4
004aef18  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004aef1c  b8 5b 4e 00 3c 4a 00 00                          .byte 0xb8, 0x5b, 0x4e, 0x00, 0x3c, 0x4a, 0x00, 0x00

; FUNCTION 0x004aef98, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_12CharTemplateEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::CharTemplate>(char const*)
; decoder-mode: arm
004aef98  20 30 9f e5                                      ldr r3, [pc, #0x20]
004aef9c  20 20 9f e5                                      ldr r2, [pc, #0x20]
004aefa0  10 40 2d e9                                      push {r4, lr}
004aefa4  03 30 8f e0                                      add r3, pc, r3
004aefa8  02 20 93 e7                                      ldr r2, [r3, r2]
004aefac  14 10 92 e5                                      ldr r1, [r2, #0x14]
004aefb0  d9 7c f9 eb                                      bl #0x30e31c
004aefb4  00 00 50 e3                                      cmp r0, #0
004aefb8  00 00 e0 13                                      mvnne r0, #0
004aefbc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004aefc0  ec 5a 4e 00 10 17 00 00                          .byte 0xec, 0x5a, 0x4e, 0x00, 0x10, 0x17, 0x00, 0x00

; FUNCTION 0x004af03c, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_12StatListListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::StatListList>(char const*)
; decoder-mode: arm
004af03c  20 30 9f e5                                      ldr r3, [pc, #0x20]
004af040  20 20 9f e5                                      ldr r2, [pc, #0x20]
004af044  10 40 2d e9                                      push {r4, lr}
004af048  03 30 8f e0                                      add r3, pc, r3
004af04c  02 20 93 e7                                      ldr r2, [r3, r2]
004af050  14 10 92 e5                                      ldr r1, [r2, #0x14]
004af054  b0 7c f9 eb                                      bl #0x30e31c
004af058  00 00 50 e3                                      cmp r0, #0
004af05c  00 00 e0 13                                      mvnne r0, #0
004af060  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004af064  48 5a 4e 00 dc 29 00 00                          .byte 0x48, 0x5a, 0x4e, 0x00, 0xdc, 0x29, 0x00, 0x00

; FUNCTION 0x004af0e0, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_24StatAutoAssignTargetListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::StatAutoAssignTargetList>(char const*)
; decoder-mode: arm
004af0e0  20 30 9f e5                                      ldr r3, [pc, #0x20]
004af0e4  20 20 9f e5                                      ldr r2, [pc, #0x20]
004af0e8  10 40 2d e9                                      push {r4, lr}
004af0ec  03 30 8f e0                                      add r3, pc, r3
004af0f0  02 20 93 e7                                      ldr r2, [r3, r2]
004af0f4  14 10 92 e5                                      ldr r1, [r2, #0x14]
004af0f8  87 7c f9 eb                                      bl #0x30e31c
004af0fc  00 00 50 e3                                      cmp r0, #0
004af100  00 00 e0 13                                      mvnne r0, #0
004af104  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004af108  a4 59 4e 00 20 29 00 00                          .byte 0xa4, 0x59, 0x4e, 0x00, 0x20, 0x29, 0x00, 0x00

; FUNCTION 0x004af110, declared_size=92, range_size=92, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_19CharacterPropertiesEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::CharacterProperties>(char const*)
; decoder-mode: arm
004af110  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004af114  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004af118  70 40 2d e9                                      push {r4, r5, r6, lr}
004af11c  03 30 8f e0                                      add r3, pc, r3
004af120  00 60 a0 e1                                      mov r6, r0
004af124  02 40 93 e7                                      ldr r4, [r3, r2]
004af128  00 50 a0 e3                                      mov r5, #0
004af12c  03 00 00 ea                                      b #0x4af140
004af130  01 50 85 e2                                      add r5, r5, #1
004af134  e0 00 55 e3                                      cmp r5, #0xe0
004af138  18 40 84 e2                                      add r4, r4, #0x18
004af13c  06 00 00 0a                                      beq #0x4af15c
004af140  14 10 94 e5                                      ldr r1, [r4, #0x14]
004af144  06 00 a0 e1                                      mov r0, r6
004af148  73 7c f9 eb                                      bl #0x30e31c
004af14c  00 00 50 e3                                      cmp r0, #0
004af150  f6 ff ff 1a                                      bne #0x4af130
004af154  05 00 a0 e1                                      mov r0, r5
004af158  70 80 bd e8                                      pop {r4, r5, r6, pc}
004af15c  00 00 e0 e3                                      mvn r0, #0
004af160  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004af164  74 59 4e 00 cc 19 00 00                          .byte 0x74, 0x59, 0x4e, 0x00, 0xcc, 0x19, 0x00, 0x00

; FUNCTION 0x004af1e0, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_13ClassFuncListEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::ClassFuncList>(char const*)
; decoder-mode: arm
004af1e0  20 30 9f e5                                      ldr r3, [pc, #0x20]
004af1e4  20 20 9f e5                                      ldr r2, [pc, #0x20]
004af1e8  10 40 2d e9                                      push {r4, lr}
004af1ec  03 30 8f e0                                      add r3, pc, r3
004af1f0  02 20 93 e7                                      ldr r2, [r3, r2]
004af1f4  14 10 92 e5                                      ldr r1, [r2, #0x14]
004af1f8  47 7c f9 eb                                      bl #0x30e31c
004af1fc  00 00 50 e3                                      cmp r0, #0
004af200  00 00 e0 13                                      mvnne r0, #0
004af204  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004af208  a4 58 4e 00 74 1d 00 00                          .byte 0xa4, 0x58, 0x4e, 0x00, 0x74, 0x1d, 0x00, 0x00

; FUNCTION 0x004af284, declared_size=92, range_size=92, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_8CharAnimEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::CharAnim>(char const*)
; decoder-mode: arm
004af284  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004af288  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004af28c  70 40 2d e9                                      push {r4, r5, r6, lr}
004af290  03 30 8f e0                                      add r3, pc, r3
004af294  00 60 a0 e1                                      mov r6, r0
004af298  02 40 93 e7                                      ldr r4, [r3, r2]
004af29c  00 50 a0 e3                                      mov r5, #0
004af2a0  03 00 00 ea                                      b #0x4af2b4
004af2a4  01 50 85 e2                                      add r5, r5, #1
004af2a8  25 00 55 e3                                      cmp r5, #0x25
004af2ac  18 40 84 e2                                      add r4, r4, #0x18
004af2b0  06 00 00 0a                                      beq #0x4af2d0
004af2b4  14 10 94 e5                                      ldr r1, [r4, #0x14]
004af2b8  06 00 a0 e1                                      mov r0, r6
004af2bc  16 7c f9 eb                                      bl #0x30e31c
004af2c0  00 00 50 e3                                      cmp r0, #0
004af2c4  f6 ff ff 1a                                      bne #0x4af2a4
004af2c8  05 00 a0 e1                                      mov r0, r5
004af2cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
004af2d0  00 00 e0 e3                                      mvn r0, #0
004af2d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004af2d8  00 58 4e 00 f4 0b 00 00                          .byte 0x00, 0x58, 0x4e, 0x00, 0xf4, 0x0b, 0x00, 0x00

; FUNCTION 0x004af354, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_10CamAnimSetEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::CamAnimSet>(char const*)
; decoder-mode: arm
004af354  48 30 9f e5                                      ldr r3, [pc, #0x48]
004af358  48 20 9f e5                                      ldr r2, [pc, #0x48]
004af35c  70 40 2d e9                                      push {r4, r5, r6, lr}
004af360  03 30 8f e0                                      add r3, pc, r3
004af364  00 60 a0 e1                                      mov r6, r0
004af368  02 40 93 e7                                      ldr r4, [r3, r2]
004af36c  00 50 a0 e3                                      mov r5, #0
004af370  14 10 94 e5                                      ldr r1, [r4, #0x14]
004af374  06 00 a0 e1                                      mov r0, r6
004af378  e7 7b f9 eb                                      bl #0x30e31c
004af37c  00 00 50 e3                                      cmp r0, #0
004af380  05 00 00 0a                                      beq #0x4af39c
004af384  01 50 85 e2                                      add r5, r5, #1
004af388  05 00 55 e3                                      cmp r5, #5
004af38c  18 40 84 e2                                      add r4, r4, #0x18
004af390  f6 ff ff 1a                                      bne #0x4af370
004af394  00 00 e0 e3                                      mvn r0, #0
004af398  70 80 bd e8                                      pop {r4, r5, r6, pc}
004af39c  05 00 a0 e1                                      mov r0, r5
004af3a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004af3a4  30 57 4e 00 28 2b 00 00                          .byte 0x30, 0x57, 0x4e, 0x00, 0x28, 0x2b, 0x00, 0x00

; FUNCTION 0x004af420, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_7AnimTplEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::AnimTpl>(char const*)
; decoder-mode: arm
004af420  48 30 9f e5                                      ldr r3, [pc, #0x48]
004af424  48 20 9f e5                                      ldr r2, [pc, #0x48]
004af428  70 40 2d e9                                      push {r4, r5, r6, lr}
004af42c  03 30 8f e0                                      add r3, pc, r3
004af430  00 60 a0 e1                                      mov r6, r0
004af434  02 40 93 e7                                      ldr r4, [r3, r2]
004af438  00 50 a0 e3                                      mov r5, #0
004af43c  14 10 94 e5                                      ldr r1, [r4, #0x14]
004af440  06 00 a0 e1                                      mov r0, r6
004af444  b4 7b f9 eb                                      bl #0x30e31c
004af448  00 00 50 e3                                      cmp r0, #0
004af44c  05 00 00 0a                                      beq #0x4af468
004af450  01 50 85 e2                                      add r5, r5, #1
004af454  03 00 55 e3                                      cmp r5, #3
004af458  18 40 84 e2                                      add r4, r4, #0x18
004af45c  f6 ff ff 1a                                      bne #0x4af43c
004af460  00 00 e0 e3                                      mvn r0, #0
004af464  70 80 bd e8                                      pop {r4, r5, r6, pc}
004af468  05 00 a0 e1                                      mov r0, r5
004af46c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004af470  64 56 4e 00 c4 3c 00 00                          .byte 0x64, 0x56, 0x4e, 0x00, 0xc4, 0x3c, 0x00, 0x00

; FUNCTION 0x004af4ec, declared_size=48, range_size=48, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_10AIFactionsEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::AIFactions>(char const*)
; decoder-mode: arm
004af4ec  20 30 9f e5                                      ldr r3, [pc, #0x20]
004af4f0  20 20 9f e5                                      ldr r2, [pc, #0x20]
004af4f4  10 40 2d e9                                      push {r4, lr}
004af4f8  03 30 8f e0                                      add r3, pc, r3
004af4fc  02 20 93 e7                                      ldr r2, [r3, r2]
004af500  14 10 92 e5                                      ldr r1, [r2, #0x14]
004af504  84 7b f9 eb                                      bl #0x30e31c
004af508  00 00 50 e3                                      cmp r0, #0
004af50c  00 00 e0 13                                      mvnne r0, #0
004af510  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004af514  98 55 4e 00 d8 2a 00 00                          .byte 0x98, 0x55, 0x4e, 0x00, 0xd8, 0x2a, 0x00, 0x00

; FUNCTION 0x004af590, declared_size=88, range_size=88, mode=arm
; class-group: int Structs
; alias: _ZN7Structs19GetMemberIDByStringINS_7AIPropsEEEiPKc
; demangled: int Structs::GetMemberIDByString<Structs::AIProps>(char const*)
; decoder-mode: arm
004af590  48 30 9f e5                                      ldr r3, [pc, #0x48]
004af594  48 20 9f e5                                      ldr r2, [pc, #0x48]
004af598  70 40 2d e9                                      push {r4, r5, r6, lr}
004af59c  03 30 8f e0                                      add r3, pc, r3
004af5a0  00 60 a0 e1                                      mov r6, r0
004af5a4  02 50 93 e7                                      ldr r5, [r3, r2]
004af5a8  00 40 a0 e3                                      mov r4, #0
004af5ac  14 10 95 e5                                      ldr r1, [r5, #0x14]
004af5b0  06 00 a0 e1                                      mov r0, r6
004af5b4  58 7b f9 eb                                      bl #0x30e31c
004af5b8  00 00 50 e3                                      cmp r0, #0
004af5bc  05 00 00 0a                                      beq #0x4af5d8
004af5c0  01 40 84 e2                                      add r4, r4, #1
004af5c4  0f 00 54 e3                                      cmp r4, #0xf
004af5c8  18 50 85 e2                                      add r5, r5, #0x18
004af5cc  f6 ff ff 1a                                      bne #0x4af5ac
004af5d0  00 00 e0 e3                                      mvn r0, #0
004af5d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004af5d8  04 00 a0 e1                                      mov r0, r4
004af5dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004af5e0  f4 54 4e 00 80 1e 00 00                          .byte 0xf4, 0x54, 0x4e, 0x00, 0x80, 0x1e, 0x00, 0x00
