; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00364b80, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_8AnimDictEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::AnimDict>(char const*)
; decoder-mode: arm
00364b80  60 30 9f e5                                      ldr r3, [pc, #0x60]
00364b84  60 20 9f e5                                      ldr r2, [pc, #0x60]
00364b88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00364b8c  03 30 8f e0                                      add r3, pc, r3
00364b90  02 20 93 e7                                      ldr r2, [r3, r2]
00364b94  00 60 a0 e1                                      mov r6, r0
00364b98  00 50 92 e5                                      ldr r5, [r2]
00364b9c  00 00 55 e3                                      cmp r5, #0
00364ba0  0e 00 00 0a                                      beq #0x364be0
00364ba4  44 20 9f e5                                      ldr r2, [pc, #0x44]
00364ba8  00 40 a0 e3                                      mov r4, #0
00364bac  02 30 93 e7                                      ldr r3, [r3, r2]
00364bb0  00 70 93 e5                                      ldr r7, [r3]
00364bb4  02 00 00 ea                                      b #0x364bc4
00364bb8  01 40 84 e2                                      add r4, r4, #1
00364bbc  05 00 54 e1                                      cmp r4, r5
00364bc0  06 00 00 0a                                      beq #0x364be0
00364bc4  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
00364bc8  06 00 a0 e1                                      mov r0, r6
00364bcc  d2 a5 fe eb                                      bl #0x30e31c
00364bd0  00 00 50 e3                                      cmp r0, #0
00364bd4  f7 ff ff 1a                                      bne #0x364bb8
00364bd8  04 00 a0 e1                                      mov r0, r4
00364bdc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00364be0  00 00 e0 e3                                      mvn r0, #0
00364be4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00364be8  04 ff 62 00 38 22 00 00 98 2e 00 00              .byte 0x04, 0xff, 0x62, 0x00, 0x38, 0x22, 0x00, 0x00, 0x98, 0x2e, 0x00, 0x00

; FUNCTION 0x0037ba84, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_6SoundsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::Sounds>(char const*)
; decoder-mode: arm
0037ba84  60 30 9f e5                                      ldr r3, [pc, #0x60]
0037ba88  60 20 9f e5                                      ldr r2, [pc, #0x60]
0037ba8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0037ba90  03 30 8f e0                                      add r3, pc, r3
0037ba94  02 20 93 e7                                      ldr r2, [r3, r2]
0037ba98  00 60 a0 e1                                      mov r6, r0
0037ba9c  00 50 92 e5                                      ldr r5, [r2]
0037baa0  00 00 55 e3                                      cmp r5, #0
0037baa4  0e 00 00 0a                                      beq #0x37bae4
0037baa8  44 20 9f e5                                      ldr r2, [pc, #0x44]
0037baac  00 40 a0 e3                                      mov r4, #0
0037bab0  02 30 93 e7                                      ldr r3, [r3, r2]
0037bab4  00 70 93 e5                                      ldr r7, [r3]
0037bab8  02 00 00 ea                                      b #0x37bac8
0037babc  01 40 84 e2                                      add r4, r4, #1
0037bac0  05 00 54 e1                                      cmp r4, r5
0037bac4  06 00 00 0a                                      beq #0x37bae4
0037bac8  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
0037bacc  06 00 a0 e1                                      mov r0, r6
0037bad0  11 4a fe eb                                      bl #0x30e31c
0037bad4  00 00 50 e3                                      cmp r0, #0
0037bad8  f7 ff ff 1a                                      bne #0x37babc
0037badc  04 00 a0 e1                                      mov r0, r4
0037bae0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0037bae4  00 00 e0 e3                                      mvn r0, #0
0037bae8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0037baec  00 90 61 00 38 3d 00 00 a8 39 00 00              .byte 0x00, 0x90, 0x61, 0x00, 0x38, 0x3d, 0x00, 0x00, 0xa8, 0x39, 0x00, 0x00

; FUNCTION 0x0039c2c8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_9LevelListEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::LevelList>(char const*)
; decoder-mode: arm
0039c2c8  60 30 9f e5                                      ldr r3, [pc, #0x60]
0039c2cc  60 20 9f e5                                      ldr r2, [pc, #0x60]
0039c2d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039c2d4  03 30 8f e0                                      add r3, pc, r3
0039c2d8  02 20 93 e7                                      ldr r2, [r3, r2]
0039c2dc  00 60 a0 e1                                      mov r6, r0
0039c2e0  00 50 92 e5                                      ldr r5, [r2]
0039c2e4  00 00 55 e3                                      cmp r5, #0
0039c2e8  0e 00 00 0a                                      beq #0x39c328
0039c2ec  44 20 9f e5                                      ldr r2, [pc, #0x44]
0039c2f0  00 40 a0 e3                                      mov r4, #0
0039c2f4  02 30 93 e7                                      ldr r3, [r3, r2]
0039c2f8  00 70 93 e5                                      ldr r7, [r3]
0039c2fc  02 00 00 ea                                      b #0x39c30c
0039c300  01 40 84 e2                                      add r4, r4, #1
0039c304  05 00 54 e1                                      cmp r4, r5
0039c308  06 00 00 0a                                      beq #0x39c328
0039c30c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
0039c310  06 00 a0 e1                                      mov r0, r6
0039c314  00 c8 fd eb                                      bl #0x30e31c
0039c318  00 00 50 e3                                      cmp r0, #0
0039c31c  f7 ff ff 1a                                      bne #0x39c300
0039c320  04 00 a0 e1                                      mov r0, r4
0039c324  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0039c328  00 00 e0 e3                                      mvn r0, #0
0039c32c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0039c330  bc 87 5f 00 c0 18 00 00 5c 3b 00 00              .byte 0xbc, 0x87, 0x5f, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00

; FUNCTION 0x003a1084, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_22DestructibleContainersEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(char const*)
; decoder-mode: arm
003a1084  60 30 9f e5                                      ldr r3, [pc, #0x60]
003a1088  60 20 9f e5                                      ldr r2, [pc, #0x60]
003a108c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003a1090  03 30 8f e0                                      add r3, pc, r3
003a1094  02 20 93 e7                                      ldr r2, [r3, r2]
003a1098  00 60 a0 e1                                      mov r6, r0
003a109c  00 50 92 e5                                      ldr r5, [r2]
003a10a0  00 00 55 e3                                      cmp r5, #0
003a10a4  0e 00 00 0a                                      beq #0x3a10e4
003a10a8  44 20 9f e5                                      ldr r2, [pc, #0x44]
003a10ac  00 40 a0 e3                                      mov r4, #0
003a10b0  02 30 93 e7                                      ldr r3, [r3, r2]
003a10b4  00 70 93 e5                                      ldr r7, [r3]
003a10b8  02 00 00 ea                                      b #0x3a10c8
003a10bc  01 40 84 e2                                      add r4, r4, #1
003a10c0  05 00 54 e1                                      cmp r4, r5
003a10c4  06 00 00 0a                                      beq #0x3a10e4
003a10c8  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
003a10cc  06 00 a0 e1                                      mov r0, r6
003a10d0  91 b4 fd eb                                      bl #0x30e31c
003a10d4  00 00 50 e3                                      cmp r0, #0
003a10d8  f7 ff ff 1a                                      bne #0x3a10bc
003a10dc  04 00 a0 e1                                      mov r0, r4
003a10e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003a10e4  00 00 e0 e3                                      mvn r0, #0
003a10e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003a10ec  00 3a 5f 00 ac 33 00 00 5c 2b 00 00              .byte 0x00, 0x3a, 0x5f, 0x00, 0xac, 0x33, 0x00, 0x00, 0x5c, 0x2b, 0x00, 0x00

; FUNCTION 0x003a1708, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_18OpenableContainersEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::OpenableContainers>(char const*)
; decoder-mode: arm
003a1708  60 30 9f e5                                      ldr r3, [pc, #0x60]
003a170c  60 20 9f e5                                      ldr r2, [pc, #0x60]
003a1710  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003a1714  03 30 8f e0                                      add r3, pc, r3
003a1718  02 20 93 e7                                      ldr r2, [r3, r2]
003a171c  00 60 a0 e1                                      mov r6, r0
003a1720  00 50 92 e5                                      ldr r5, [r2]
003a1724  00 00 55 e3                                      cmp r5, #0
003a1728  0e 00 00 0a                                      beq #0x3a1768
003a172c  44 20 9f e5                                      ldr r2, [pc, #0x44]
003a1730  00 40 a0 e3                                      mov r4, #0
003a1734  02 30 93 e7                                      ldr r3, [r3, r2]
003a1738  00 70 93 e5                                      ldr r7, [r3]
003a173c  02 00 00 ea                                      b #0x3a174c
003a1740  01 40 84 e2                                      add r4, r4, #1
003a1744  05 00 54 e1                                      cmp r4, r5
003a1748  06 00 00 0a                                      beq #0x3a1768
003a174c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
003a1750  06 00 a0 e1                                      mov r0, r6
003a1754  f0 b2 fd eb                                      bl #0x30e31c
003a1758  00 00 50 e3                                      cmp r0, #0
003a175c  f7 ff ff 1a                                      bne #0x3a1740
003a1760  04 00 a0 e1                                      mov r0, r4
003a1764  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003a1768  00 00 e0 e3                                      mvn r0, #0
003a176c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003a1770  7c 33 5f 00 fc 3a 00 00 60 18 00 00              .byte 0x7c, 0x33, 0x5f, 0x00, 0xfc, 0x3a, 0x00, 0x00, 0x60, 0x18, 0x00, 0x00

; FUNCTION 0x003a3f70, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_11TrophyTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::TrophyTable>(char const*)
; decoder-mode: arm
003a3f70  60 30 9f e5                                      ldr r3, [pc, #0x60]
003a3f74  60 20 9f e5                                      ldr r2, [pc, #0x60]
003a3f78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003a3f7c  03 30 8f e0                                      add r3, pc, r3
003a3f80  02 20 93 e7                                      ldr r2, [r3, r2]
003a3f84  00 60 a0 e1                                      mov r6, r0
003a3f88  00 50 92 e5                                      ldr r5, [r2]
003a3f8c  00 00 55 e3                                      cmp r5, #0
003a3f90  0e 00 00 0a                                      beq #0x3a3fd0
003a3f94  44 20 9f e5                                      ldr r2, [pc, #0x44]
003a3f98  00 40 a0 e3                                      mov r4, #0
003a3f9c  02 30 93 e7                                      ldr r3, [r3, r2]
003a3fa0  00 70 93 e5                                      ldr r7, [r3]
003a3fa4  02 00 00 ea                                      b #0x3a3fb4
003a3fa8  01 40 84 e2                                      add r4, r4, #1
003a3fac  05 00 54 e1                                      cmp r4, r5
003a3fb0  06 00 00 0a                                      beq #0x3a3fd0
003a3fb4  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
003a3fb8  06 00 a0 e1                                      mov r0, r6
003a3fbc  d6 a8 fd eb                                      bl #0x30e31c
003a3fc0  00 00 50 e3                                      cmp r0, #0
003a3fc4  f7 ff ff 1a                                      bne #0x3a3fa8
003a3fc8  04 00 a0 e1                                      mov r0, r4
003a3fcc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003a3fd0  00 00 e0 e3                                      mvn r0, #0
003a3fd4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003a3fd8  14 0b 5f 00 fc 0e 00 00 2c 10 00 00              .byte 0x14, 0x0b, 0x5f, 0x00, 0xfc, 0x0e, 0x00, 0x00, 0x2c, 0x10, 0x00, 0x00

; FUNCTION 0x003e8bcc, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_11SpawnGroupsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::SpawnGroups>(char const*)
; decoder-mode: arm
003e8bcc  60 30 9f e5                                      ldr r3, [pc, #0x60]
003e8bd0  60 20 9f e5                                      ldr r2, [pc, #0x60]
003e8bd4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e8bd8  03 30 8f e0                                      add r3, pc, r3
003e8bdc  02 20 93 e7                                      ldr r2, [r3, r2]
003e8be0  00 60 a0 e1                                      mov r6, r0
003e8be4  00 50 92 e5                                      ldr r5, [r2]
003e8be8  00 00 55 e3                                      cmp r5, #0
003e8bec  0e 00 00 0a                                      beq #0x3e8c2c
003e8bf0  44 20 9f e5                                      ldr r2, [pc, #0x44]
003e8bf4  00 40 a0 e3                                      mov r4, #0
003e8bf8  02 30 93 e7                                      ldr r3, [r3, r2]
003e8bfc  00 70 93 e5                                      ldr r7, [r3]
003e8c00  02 00 00 ea                                      b #0x3e8c10
003e8c04  01 40 84 e2                                      add r4, r4, #1
003e8c08  05 00 54 e1                                      cmp r4, r5
003e8c0c  06 00 00 0a                                      beq #0x3e8c2c
003e8c10  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
003e8c14  06 00 a0 e1                                      mov r0, r6
003e8c18  bf 95 fc eb                                      bl #0x30e31c
003e8c1c  00 00 50 e3                                      cmp r0, #0
003e8c20  f7 ff ff 1a                                      bne #0x3e8c04
003e8c24  04 00 a0 e1                                      mov r0, r4
003e8c28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e8c2c  00 00 e0 e3                                      mvn r0, #0
003e8c30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003e8c34  b8 be 5a 00 5c 4b 00 00 84 1e 00 00              .byte 0xb8, 0xbe, 0x5a, 0x00, 0x5c, 0x4b, 0x00, 0x00, 0x84, 0x1e, 0x00, 0x00

; FUNCTION 0x003fa188, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14CharacterTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::CharacterTable>(char const*)
; decoder-mode: arm
003fa188  60 30 9f e5                                      ldr r3, [pc, #0x60]
003fa18c  60 20 9f e5                                      ldr r2, [pc, #0x60]
003fa190  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fa194  03 30 8f e0                                      add r3, pc, r3
003fa198  02 20 93 e7                                      ldr r2, [r3, r2]
003fa19c  00 60 a0 e1                                      mov r6, r0
003fa1a0  00 50 92 e5                                      ldr r5, [r2]
003fa1a4  00 00 55 e3                                      cmp r5, #0
003fa1a8  0e 00 00 0a                                      beq #0x3fa1e8
003fa1ac  44 20 9f e5                                      ldr r2, [pc, #0x44]
003fa1b0  00 40 a0 e3                                      mov r4, #0
003fa1b4  02 30 93 e7                                      ldr r3, [r3, r2]
003fa1b8  00 70 93 e5                                      ldr r7, [r3]
003fa1bc  02 00 00 ea                                      b #0x3fa1cc
003fa1c0  01 40 84 e2                                      add r4, r4, #1
003fa1c4  05 00 54 e1                                      cmp r4, r5
003fa1c8  06 00 00 0a                                      beq #0x3fa1e8
003fa1cc  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
003fa1d0  06 00 a0 e1                                      mov r0, r6
003fa1d4  50 50 fc eb                                      bl #0x30e31c
003fa1d8  00 00 50 e3                                      cmp r0, #0
003fa1dc  f7 ff ff 1a                                      bne #0x3fa1c0
003fa1e0  04 00 a0 e1                                      mov r0, r4
003fa1e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fa1e8  00 00 e0 e3                                      mvn r0, #0
003fa1ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003fa1f0  fc a8 59 00 04 42 00 00 08 3c 00 00              .byte 0xfc, 0xa8, 0x59, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00

; FUNCTION 0x004ac5c0, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_15StrID_LanguagesEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::StrID_Languages>(char const*)
; decoder-mode: arm
004ac5c0  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ac5c4  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ac5c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ac5cc  03 30 8f e0                                      add r3, pc, r3
004ac5d0  02 20 93 e7                                      ldr r2, [r3, r2]
004ac5d4  00 60 a0 e1                                      mov r6, r0
004ac5d8  00 50 92 e5                                      ldr r5, [r2]
004ac5dc  00 00 55 e3                                      cmp r5, #0
004ac5e0  0e 00 00 0a                                      beq #0x4ac620
004ac5e4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ac5e8  00 40 a0 e3                                      mov r4, #0
004ac5ec  02 30 93 e7                                      ldr r3, [r3, r2]
004ac5f0  00 70 93 e5                                      ldr r7, [r3]
004ac5f4  02 00 00 ea                                      b #0x4ac604
004ac5f8  01 40 84 e2                                      add r4, r4, #1
004ac5fc  05 00 54 e1                                      cmp r4, r5
004ac600  06 00 00 0a                                      beq #0x4ac620
004ac604  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ac608  06 00 a0 e1                                      mov r0, r6
004ac60c  42 87 f9 eb                                      bl #0x30e31c
004ac610  00 00 50 e3                                      cmp r0, #0
004ac614  f7 ff ff 1a                                      bne #0x4ac5f8
004ac618  04 00 a0 e1                                      mov r0, r4
004ac61c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ac620  00 00 e0 e3                                      mvn r0, #0
004ac624  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ac628  c4 84 4e 00 60 43 00 00 f8 24 00 00              .byte 0xc4, 0x84, 0x4e, 0x00, 0x60, 0x43, 0x00, 0x00, 0xf8, 0x24, 0x00, 0x00

; FUNCTION 0x004ac664, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14GameObjectDictEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::GameObjectDict>(char const*)
; decoder-mode: arm
004ac664  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ac668  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ac66c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ac670  03 30 8f e0                                      add r3, pc, r3
004ac674  02 20 93 e7                                      ldr r2, [r3, r2]
004ac678  00 60 a0 e1                                      mov r6, r0
004ac67c  00 50 92 e5                                      ldr r5, [r2]
004ac680  00 00 55 e3                                      cmp r5, #0
004ac684  0e 00 00 0a                                      beq #0x4ac6c4
004ac688  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ac68c  00 40 a0 e3                                      mov r4, #0
004ac690  02 30 93 e7                                      ldr r3, [r3, r2]
004ac694  00 70 93 e5                                      ldr r7, [r3]
004ac698  02 00 00 ea                                      b #0x4ac6a8
004ac69c  01 40 84 e2                                      add r4, r4, #1
004ac6a0  05 00 54 e1                                      cmp r4, r5
004ac6a4  06 00 00 0a                                      beq #0x4ac6c4
004ac6a8  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ac6ac  06 00 a0 e1                                      mov r0, r6
004ac6b0  19 87 f9 eb                                      bl #0x30e31c
004ac6b4  00 00 50 e3                                      cmp r0, #0
004ac6b8  f7 ff ff 1a                                      bne #0x4ac69c
004ac6bc  04 00 a0 e1                                      mov r0, r4
004ac6c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ac6c4  00 00 e0 e3                                      mvn r0, #0
004ac6c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ac6cc  20 84 4e 00 48 11 00 00 a0 46 00 00              .byte 0x20, 0x84, 0x4e, 0x00, 0x48, 0x11, 0x00, 0x00, 0xa0, 0x46, 0x00, 0x00

; FUNCTION 0x004ac6d8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14ProjectileDictEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ProjectileDict>(char const*)
; decoder-mode: arm
004ac6d8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ac6dc  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ac6e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ac6e4  03 30 8f e0                                      add r3, pc, r3
004ac6e8  02 20 93 e7                                      ldr r2, [r3, r2]
004ac6ec  00 60 a0 e1                                      mov r6, r0
004ac6f0  00 50 92 e5                                      ldr r5, [r2]
004ac6f4  00 00 55 e3                                      cmp r5, #0
004ac6f8  0e 00 00 0a                                      beq #0x4ac738
004ac6fc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ac700  00 40 a0 e3                                      mov r4, #0
004ac704  02 30 93 e7                                      ldr r3, [r3, r2]
004ac708  00 70 93 e5                                      ldr r7, [r3]
004ac70c  02 00 00 ea                                      b #0x4ac71c
004ac710  01 40 84 e2                                      add r4, r4, #1
004ac714  05 00 54 e1                                      cmp r4, r5
004ac718  06 00 00 0a                                      beq #0x4ac738
004ac71c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ac720  06 00 a0 e1                                      mov r0, r6
004ac724  fc 86 f9 eb                                      bl #0x30e31c
004ac728  00 00 50 e3                                      cmp r0, #0
004ac72c  f7 ff ff 1a                                      bne #0x4ac710
004ac730  04 00 a0 e1                                      mov r0, r4
004ac734  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ac738  00 00 e0 e3                                      mvn r0, #0
004ac73c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ac740  ac 83 4e 00 54 13 00 00 40 35 00 00              .byte 0xac, 0x83, 0x4e, 0x00, 0x54, 0x13, 0x00, 0x00, 0x40, 0x35, 0x00, 0x00

; FUNCTION 0x004ac74c, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_10EffectDictEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::EffectDict>(char const*)
; decoder-mode: arm
004ac74c  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ac750  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ac754  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ac758  03 30 8f e0                                      add r3, pc, r3
004ac75c  02 20 93 e7                                      ldr r2, [r3, r2]
004ac760  00 60 a0 e1                                      mov r6, r0
004ac764  00 50 92 e5                                      ldr r5, [r2]
004ac768  00 00 55 e3                                      cmp r5, #0
004ac76c  0e 00 00 0a                                      beq #0x4ac7ac
004ac770  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ac774  00 40 a0 e3                                      mov r4, #0
004ac778  02 30 93 e7                                      ldr r3, [r3, r2]
004ac77c  00 70 93 e5                                      ldr r7, [r3]
004ac780  02 00 00 ea                                      b #0x4ac790
004ac784  01 40 84 e2                                      add r4, r4, #1
004ac788  05 00 54 e1                                      cmp r4, r5
004ac78c  06 00 00 0a                                      beq #0x4ac7ac
004ac790  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ac794  06 00 a0 e1                                      mov r0, r6
004ac798  df 86 f9 eb                                      bl #0x30e31c
004ac79c  00 00 50 e3                                      cmp r0, #0
004ac7a0  f7 ff ff 1a                                      bne #0x4ac784
004ac7a4  04 00 a0 e1                                      mov r0, r4
004ac7a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ac7ac  00 00 e0 e3                                      mvn r0, #0
004ac7b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ac7b4  38 83 4e 00 88 0b 00 00 ec 26 00 00              .byte 0x38, 0x83, 0x4e, 0x00, 0x88, 0x0b, 0x00, 0x00, 0xec, 0x26, 0x00, 0x00

; FUNCTION 0x004ac7c0, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_9ModelDictEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ModelDict>(char const*)
; decoder-mode: arm
004ac7c0  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ac7c4  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ac7c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ac7cc  03 30 8f e0                                      add r3, pc, r3
004ac7d0  02 20 93 e7                                      ldr r2, [r3, r2]
004ac7d4  00 60 a0 e1                                      mov r6, r0
004ac7d8  00 50 92 e5                                      ldr r5, [r2]
004ac7dc  00 00 55 e3                                      cmp r5, #0
004ac7e0  0e 00 00 0a                                      beq #0x4ac820
004ac7e4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ac7e8  00 40 a0 e3                                      mov r4, #0
004ac7ec  02 30 93 e7                                      ldr r3, [r3, r2]
004ac7f0  00 70 93 e5                                      ldr r7, [r3]
004ac7f4  02 00 00 ea                                      b #0x4ac804
004ac7f8  01 40 84 e2                                      add r4, r4, #1
004ac7fc  05 00 54 e1                                      cmp r4, r5
004ac800  06 00 00 0a                                      beq #0x4ac820
004ac804  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ac808  06 00 a0 e1                                      mov r0, r6
004ac80c  c2 86 f9 eb                                      bl #0x30e31c
004ac810  00 00 50 e3                                      cmp r0, #0
004ac814  f7 ff ff 1a                                      bne #0x4ac7f8
004ac818  04 00 a0 e1                                      mov r0, r4
004ac81c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ac820  00 00 e0 e3                                      mvn r0, #0
004ac824  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ac828  c4 82 4e 00 0c 3c 00 00 68 32 00 00              .byte 0xc4, 0x82, 0x4e, 0x00, 0x0c, 0x3c, 0x00, 0x00, 0x68, 0x32, 0x00, 0x00

; FUNCTION 0x004ac864, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_15WorldMapLockersEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::WorldMapLockers>(char const*)
; decoder-mode: arm
004ac864  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ac868  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ac86c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ac870  03 30 8f e0                                      add r3, pc, r3
004ac874  02 20 93 e7                                      ldr r2, [r3, r2]
004ac878  00 60 a0 e1                                      mov r6, r0
004ac87c  00 50 92 e5                                      ldr r5, [r2]
004ac880  00 00 55 e3                                      cmp r5, #0
004ac884  0e 00 00 0a                                      beq #0x4ac8c4
004ac888  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ac88c  00 40 a0 e3                                      mov r4, #0
004ac890  02 30 93 e7                                      ldr r3, [r3, r2]
004ac894  00 70 93 e5                                      ldr r7, [r3]
004ac898  02 00 00 ea                                      b #0x4ac8a8
004ac89c  01 40 84 e2                                      add r4, r4, #1
004ac8a0  05 00 54 e1                                      cmp r4, r5
004ac8a4  06 00 00 0a                                      beq #0x4ac8c4
004ac8a8  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ac8ac  06 00 a0 e1                                      mov r0, r6
004ac8b0  99 86 f9 eb                                      bl #0x30e31c
004ac8b4  00 00 50 e3                                      cmp r0, #0
004ac8b8  f7 ff ff 1a                                      bne #0x4ac89c
004ac8bc  04 00 a0 e1                                      mov r0, r4
004ac8c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ac8c4  00 00 e0 e3                                      mvn r0, #0
004ac8c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ac8cc  20 82 4e 00 e0 27 00 00 cc 3c 00 00              .byte 0x20, 0x82, 0x4e, 0x00, 0xe0, 0x27, 0x00, 0x00, 0xcc, 0x3c, 0x00, 0x00

; FUNCTION 0x004ac924, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_8WorldMapEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::WorldMap>(char const*)
; decoder-mode: arm
004ac924  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ac928  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ac92c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ac930  03 30 8f e0                                      add r3, pc, r3
004ac934  02 20 93 e7                                      ldr r2, [r3, r2]
004ac938  00 60 a0 e1                                      mov r6, r0
004ac93c  00 50 92 e5                                      ldr r5, [r2]
004ac940  00 00 55 e3                                      cmp r5, #0
004ac944  0e 00 00 0a                                      beq #0x4ac984
004ac948  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ac94c  00 40 a0 e3                                      mov r4, #0
004ac950  02 30 93 e7                                      ldr r3, [r3, r2]
004ac954  00 70 93 e5                                      ldr r7, [r3]
004ac958  02 00 00 ea                                      b #0x4ac968
004ac95c  01 40 84 e2                                      add r4, r4, #1
004ac960  05 00 54 e1                                      cmp r4, r5
004ac964  06 00 00 0a                                      beq #0x4ac984
004ac968  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ac96c  06 00 a0 e1                                      mov r0, r6
004ac970  69 86 f9 eb                                      bl #0x30e31c
004ac974  00 00 50 e3                                      cmp r0, #0
004ac978  f7 ff ff 1a                                      bne #0x4ac95c
004ac97c  04 00 a0 e1                                      mov r0, r4
004ac980  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ac984  00 00 e0 e3                                      mvn r0, #0
004ac988  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ac98c  60 81 4e 00 74 22 00 00 68 23 00 00              .byte 0x60, 0x81, 0x4e, 0x00, 0x74, 0x22, 0x00, 0x00, 0x68, 0x23, 0x00, 0x00

; FUNCTION 0x004ac9f0, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_8v2QuestsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::v2Quests>(char const*)
; decoder-mode: arm
004ac9f0  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ac9f4  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ac9f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ac9fc  03 30 8f e0                                      add r3, pc, r3
004aca00  02 20 93 e7                                      ldr r2, [r3, r2]
004aca04  00 60 a0 e1                                      mov r6, r0
004aca08  00 50 92 e5                                      ldr r5, [r2]
004aca0c  00 00 55 e3                                      cmp r5, #0
004aca10  0e 00 00 0a                                      beq #0x4aca50
004aca14  44 20 9f e5                                      ldr r2, [pc, #0x44]
004aca18  00 40 a0 e3                                      mov r4, #0
004aca1c  02 30 93 e7                                      ldr r3, [r3, r2]
004aca20  00 70 93 e5                                      ldr r7, [r3]
004aca24  02 00 00 ea                                      b #0x4aca34
004aca28  01 40 84 e2                                      add r4, r4, #1
004aca2c  05 00 54 e1                                      cmp r4, r5
004aca30  06 00 00 0a                                      beq #0x4aca50
004aca34  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004aca38  06 00 a0 e1                                      mov r0, r6
004aca3c  36 86 f9 eb                                      bl #0x30e31c
004aca40  00 00 50 e3                                      cmp r0, #0
004aca44  f7 ff ff 1a                                      bne #0x4aca28
004aca48  04 00 a0 e1                                      mov r0, r4
004aca4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004aca50  00 00 e0 e3                                      mvn r0, #0
004aca54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aca58  94 80 4e 00 24 44 00 00 cc 20 00 00              .byte 0x94, 0x80, 0x4e, 0x00, 0x24, 0x44, 0x00, 0x00, 0xcc, 0x20, 0x00, 0x00

; FUNCTION 0x004acabc, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_8v2EventsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::v2Events>(char const*)
; decoder-mode: arm
004acabc  60 30 9f e5                                      ldr r3, [pc, #0x60]
004acac0  60 20 9f e5                                      ldr r2, [pc, #0x60]
004acac4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004acac8  03 30 8f e0                                      add r3, pc, r3
004acacc  02 20 93 e7                                      ldr r2, [r3, r2]
004acad0  00 60 a0 e1                                      mov r6, r0
004acad4  00 50 92 e5                                      ldr r5, [r2]
004acad8  00 00 55 e3                                      cmp r5, #0
004acadc  0e 00 00 0a                                      beq #0x4acb1c
004acae0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004acae4  00 40 a0 e3                                      mov r4, #0
004acae8  02 30 93 e7                                      ldr r3, [r3, r2]
004acaec  00 70 93 e5                                      ldr r7, [r3]
004acaf0  02 00 00 ea                                      b #0x4acb00
004acaf4  01 40 84 e2                                      add r4, r4, #1
004acaf8  05 00 54 e1                                      cmp r4, r5
004acafc  06 00 00 0a                                      beq #0x4acb1c
004acb00  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004acb04  06 00 a0 e1                                      mov r0, r6
004acb08  03 86 f9 eb                                      bl #0x30e31c
004acb0c  00 00 50 e3                                      cmp r0, #0
004acb10  f7 ff ff 1a                                      bne #0x4acaf4
004acb14  04 00 a0 e1                                      mov r0, r4
004acb18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004acb1c  00 00 e0 e3                                      mvn r0, #0
004acb20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004acb24  c8 7f 4e 00 60 08 00 00 d0 37 00 00              .byte 0xc8, 0x7f, 0x4e, 0x00, 0x60, 0x08, 0x00, 0x00, 0xd0, 0x37, 0x00, 0x00

; FUNCTION 0x004acb88, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_12v2ConditionsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::v2Conditions>(char const*)
; decoder-mode: arm
004acb88  60 30 9f e5                                      ldr r3, [pc, #0x60]
004acb8c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004acb90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004acb94  03 30 8f e0                                      add r3, pc, r3
004acb98  02 20 93 e7                                      ldr r2, [r3, r2]
004acb9c  00 60 a0 e1                                      mov r6, r0
004acba0  00 50 92 e5                                      ldr r5, [r2]
004acba4  00 00 55 e3                                      cmp r5, #0
004acba8  0e 00 00 0a                                      beq #0x4acbe8
004acbac  44 20 9f e5                                      ldr r2, [pc, #0x44]
004acbb0  00 40 a0 e3                                      mov r4, #0
004acbb4  02 30 93 e7                                      ldr r3, [r3, r2]
004acbb8  00 70 93 e5                                      ldr r7, [r3]
004acbbc  02 00 00 ea                                      b #0x4acbcc
004acbc0  01 40 84 e2                                      add r4, r4, #1
004acbc4  05 00 54 e1                                      cmp r4, r5
004acbc8  06 00 00 0a                                      beq #0x4acbe8
004acbcc  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004acbd0  06 00 a0 e1                                      mov r0, r6
004acbd4  d0 85 f9 eb                                      bl #0x30e31c
004acbd8  00 00 50 e3                                      cmp r0, #0
004acbdc  f7 ff ff 1a                                      bne #0x4acbc0
004acbe0  04 00 a0 e1                                      mov r0, r4
004acbe4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004acbe8  00 00 e0 e3                                      mvn r0, #0
004acbec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004acbf0  fc 7e 4e 00 64 2f 00 00 54 35 00 00              .byte 0xfc, 0x7e, 0x4e, 0x00, 0x64, 0x2f, 0x00, 0x00, 0x54, 0x35, 0x00, 0x00

; FUNCTION 0x004accf8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_10Sounds_bakEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::Sounds_bak>(char const*)
; decoder-mode: arm
004accf8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004accfc  60 20 9f e5                                      ldr r2, [pc, #0x60]
004acd00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004acd04  03 30 8f e0                                      add r3, pc, r3
004acd08  02 20 93 e7                                      ldr r2, [r3, r2]
004acd0c  00 60 a0 e1                                      mov r6, r0
004acd10  00 50 92 e5                                      ldr r5, [r2]
004acd14  00 00 55 e3                                      cmp r5, #0
004acd18  0e 00 00 0a                                      beq #0x4acd58
004acd1c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004acd20  00 40 a0 e3                                      mov r4, #0
004acd24  02 30 93 e7                                      ldr r3, [r3, r2]
004acd28  00 70 93 e5                                      ldr r7, [r3]
004acd2c  02 00 00 ea                                      b #0x4acd3c
004acd30  01 40 84 e2                                      add r4, r4, #1
004acd34  05 00 54 e1                                      cmp r4, r5
004acd38  06 00 00 0a                                      beq #0x4acd58
004acd3c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004acd40  06 00 a0 e1                                      mov r0, r6
004acd44  74 85 f9 eb                                      bl #0x30e31c
004acd48  00 00 50 e3                                      cmp r0, #0
004acd4c  f7 ff ff 1a                                      bne #0x4acd30
004acd50  04 00 a0 e1                                      mov r0, r4
004acd54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004acd58  00 00 e0 e3                                      mvn r0, #0
004acd5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004acd60  8c 7d 4e 00 fc 05 00 00 2c 0a 00 00              .byte 0x8c, 0x7d, 0x4e, 0x00, 0xfc, 0x05, 0x00, 0x00, 0x2c, 0x0a, 0x00, 0x00

; FUNCTION 0x004acdc4, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_18SoundGroupsRoutingEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::SoundGroupsRouting>(char const*)
; decoder-mode: arm
004acdc4  60 30 9f e5                                      ldr r3, [pc, #0x60]
004acdc8  60 20 9f e5                                      ldr r2, [pc, #0x60]
004acdcc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004acdd0  03 30 8f e0                                      add r3, pc, r3
004acdd4  02 20 93 e7                                      ldr r2, [r3, r2]
004acdd8  00 60 a0 e1                                      mov r6, r0
004acddc  00 50 92 e5                                      ldr r5, [r2]
004acde0  00 00 55 e3                                      cmp r5, #0
004acde4  0e 00 00 0a                                      beq #0x4ace24
004acde8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004acdec  00 40 a0 e3                                      mov r4, #0
004acdf0  02 30 93 e7                                      ldr r3, [r3, r2]
004acdf4  00 70 93 e5                                      ldr r7, [r3]
004acdf8  02 00 00 ea                                      b #0x4ace08
004acdfc  01 40 84 e2                                      add r4, r4, #1
004ace00  05 00 54 e1                                      cmp r4, r5
004ace04  06 00 00 0a                                      beq #0x4ace24
004ace08  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ace0c  06 00 a0 e1                                      mov r0, r6
004ace10  41 85 f9 eb                                      bl #0x30e31c
004ace14  00 00 50 e3                                      cmp r0, #0
004ace18  f7 ff ff 1a                                      bne #0x4acdfc
004ace1c  04 00 a0 e1                                      mov r0, r4
004ace20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ace24  00 00 e0 e3                                      mvn r0, #0
004ace28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ace2c  c0 7c 4e 00 58 47 00 00 e4 12 00 00              .byte 0xc0, 0x7c, 0x4e, 0x00, 0x58, 0x47, 0x00, 0x00, 0xe4, 0x12, 0x00, 0x00

; FUNCTION 0x004ace84, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_17SoundBankPlaybackEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::SoundBankPlayback>(char const*)
; decoder-mode: arm
004ace84  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ace88  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ace8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ace90  03 30 8f e0                                      add r3, pc, r3
004ace94  02 20 93 e7                                      ldr r2, [r3, r2]
004ace98  00 60 a0 e1                                      mov r6, r0
004ace9c  00 50 92 e5                                      ldr r5, [r2]
004acea0  00 00 55 e3                                      cmp r5, #0
004acea4  0e 00 00 0a                                      beq #0x4acee4
004acea8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004aceac  00 40 a0 e3                                      mov r4, #0
004aceb0  02 30 93 e7                                      ldr r3, [r3, r2]
004aceb4  00 70 93 e5                                      ldr r7, [r3]
004aceb8  02 00 00 ea                                      b #0x4acec8
004acebc  01 40 84 e2                                      add r4, r4, #1
004acec0  05 00 54 e1                                      cmp r4, r5
004acec4  06 00 00 0a                                      beq #0x4acee4
004acec8  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004acecc  06 00 a0 e1                                      mov r0, r6
004aced0  11 85 f9 eb                                      bl #0x30e31c
004aced4  00 00 50 e3                                      cmp r0, #0
004aced8  f7 ff ff 1a                                      bne #0x4acebc
004acedc  04 00 a0 e1                                      mov r0, r4
004acee0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004acee4  00 00 e0 e3                                      mvn r0, #0
004acee8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aceec  00 7c 4e 00 94 32 00 00 80 34 00 00              .byte 0x00, 0x7c, 0x4e, 0x00, 0x94, 0x32, 0x00, 0x00, 0x80, 0x34, 0x00, 0x00

; FUNCTION 0x004acf44, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_9ListenersEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::Listeners>(char const*)
; decoder-mode: arm
004acf44  60 30 9f e5                                      ldr r3, [pc, #0x60]
004acf48  60 20 9f e5                                      ldr r2, [pc, #0x60]
004acf4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004acf50  03 30 8f e0                                      add r3, pc, r3
004acf54  02 20 93 e7                                      ldr r2, [r3, r2]
004acf58  00 60 a0 e1                                      mov r6, r0
004acf5c  00 50 92 e5                                      ldr r5, [r2]
004acf60  00 00 55 e3                                      cmp r5, #0
004acf64  0e 00 00 0a                                      beq #0x4acfa4
004acf68  44 20 9f e5                                      ldr r2, [pc, #0x44]
004acf6c  00 40 a0 e3                                      mov r4, #0
004acf70  02 30 93 e7                                      ldr r3, [r3, r2]
004acf74  00 70 93 e5                                      ldr r7, [r3]
004acf78  02 00 00 ea                                      b #0x4acf88
004acf7c  01 40 84 e2                                      add r4, r4, #1
004acf80  05 00 54 e1                                      cmp r4, r5
004acf84  06 00 00 0a                                      beq #0x4acfa4
004acf88  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004acf8c  06 00 a0 e1                                      mov r0, r6
004acf90  e1 84 f9 eb                                      bl #0x30e31c
004acf94  00 00 50 e3                                      cmp r0, #0
004acf98  f7 ff ff 1a                                      bne #0x4acf7c
004acf9c  04 00 a0 e1                                      mov r0, r4
004acfa0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004acfa4  00 00 e0 e3                                      mvn r0, #0
004acfa8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004acfac  40 7b 4e 00 70 3a 00 00 28 16 00 00              .byte 0x40, 0x7b, 0x4e, 0x00, 0x70, 0x3a, 0x00, 0x00, 0x28, 0x16, 0x00, 0x00

; FUNCTION 0x004ad010, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_15CharSoundsTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::CharSoundsTable>(char const*)
; decoder-mode: arm
004ad010  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad014  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad018  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad01c  03 30 8f e0                                      add r3, pc, r3
004ad020  02 20 93 e7                                      ldr r2, [r3, r2]
004ad024  00 60 a0 e1                                      mov r6, r0
004ad028  00 50 92 e5                                      ldr r5, [r2]
004ad02c  00 00 55 e3                                      cmp r5, #0
004ad030  0e 00 00 0a                                      beq #0x4ad070
004ad034  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad038  00 40 a0 e3                                      mov r4, #0
004ad03c  02 30 93 e7                                      ldr r3, [r3, r2]
004ad040  00 70 93 e5                                      ldr r7, [r3]
004ad044  02 00 00 ea                                      b #0x4ad054
004ad048  01 40 84 e2                                      add r4, r4, #1
004ad04c  05 00 54 e1                                      cmp r4, r5
004ad050  06 00 00 0a                                      beq #0x4ad070
004ad054  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad058  06 00 a0 e1                                      mov r0, r6
004ad05c  ae 84 f9 eb                                      bl #0x30e31c
004ad060  00 00 50 e3                                      cmp r0, #0
004ad064  f7 ff ff 1a                                      bne #0x4ad048
004ad068  04 00 a0 e1                                      mov r0, r4
004ad06c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad070  00 00 e0 e3                                      mvn r0, #0
004ad074  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad078  74 7a 4e 00 20 2a 00 00 90 14 00 00              .byte 0x74, 0x7a, 0x4e, 0x00, 0x20, 0x2a, 0x00, 0x00, 0x90, 0x14, 0x00, 0x00

; FUNCTION 0x004ad0dc, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_10SkillTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::SkillTable>(char const*)
; decoder-mode: arm
004ad0dc  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad0e0  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad0e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad0e8  03 30 8f e0                                      add r3, pc, r3
004ad0ec  02 20 93 e7                                      ldr r2, [r3, r2]
004ad0f0  00 60 a0 e1                                      mov r6, r0
004ad0f4  00 50 92 e5                                      ldr r5, [r2]
004ad0f8  00 00 55 e3                                      cmp r5, #0
004ad0fc  0e 00 00 0a                                      beq #0x4ad13c
004ad100  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad104  00 40 a0 e3                                      mov r4, #0
004ad108  02 30 93 e7                                      ldr r3, [r3, r2]
004ad10c  00 70 93 e5                                      ldr r7, [r3]
004ad110  02 00 00 ea                                      b #0x4ad120
004ad114  01 40 84 e2                                      add r4, r4, #1
004ad118  05 00 54 e1                                      cmp r4, r5
004ad11c  06 00 00 0a                                      beq #0x4ad13c
004ad120  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad124  06 00 a0 e1                                      mov r0, r6
004ad128  7b 84 f9 eb                                      bl #0x30e31c
004ad12c  00 00 50 e3                                      cmp r0, #0
004ad130  f7 ff ff 1a                                      bne #0x4ad114
004ad134  04 00 a0 e1                                      mov r0, r4
004ad138  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad13c  00 00 e0 e3                                      mvn r0, #0
004ad140  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad144  a8 79 4e 00 28 27 00 00 d8 32 00 00              .byte 0xa8, 0x79, 0x4e, 0x00, 0x28, 0x27, 0x00, 0x00, 0xd8, 0x32, 0x00, 0x00

; FUNCTION 0x004ad1a8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14SkillListTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::SkillListTable>(char const*)
; decoder-mode: arm
004ad1a8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad1ac  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad1b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad1b4  03 30 8f e0                                      add r3, pc, r3
004ad1b8  02 20 93 e7                                      ldr r2, [r3, r2]
004ad1bc  00 60 a0 e1                                      mov r6, r0
004ad1c0  00 50 92 e5                                      ldr r5, [r2]
004ad1c4  00 00 55 e3                                      cmp r5, #0
004ad1c8  0e 00 00 0a                                      beq #0x4ad208
004ad1cc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad1d0  00 40 a0 e3                                      mov r4, #0
004ad1d4  02 30 93 e7                                      ldr r3, [r3, r2]
004ad1d8  00 70 93 e5                                      ldr r7, [r3]
004ad1dc  02 00 00 ea                                      b #0x4ad1ec
004ad1e0  01 40 84 e2                                      add r4, r4, #1
004ad1e4  05 00 54 e1                                      cmp r4, r5
004ad1e8  06 00 00 0a                                      beq #0x4ad208
004ad1ec  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad1f0  06 00 a0 e1                                      mov r0, r6
004ad1f4  48 84 f9 eb                                      bl #0x30e31c
004ad1f8  00 00 50 e3                                      cmp r0, #0
004ad1fc  f7 ff ff 1a                                      bne #0x4ad1e0
004ad200  04 00 a0 e1                                      mov r0, r4
004ad204  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad208  00 00 e0 e3                                      mvn r0, #0
004ad20c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad210  dc 78 4e 00 78 2d 00 00 3c 10 00 00              .byte 0xdc, 0x78, 0x4e, 0x00, 0x78, 0x2d, 0x00, 0x00, 0x3c, 0x10, 0x00, 0x00

; FUNCTION 0x004ad24c, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_15ProjectileTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ProjectileTable>(char const*)
; decoder-mode: arm
004ad24c  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad250  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad254  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad258  03 30 8f e0                                      add r3, pc, r3
004ad25c  02 20 93 e7                                      ldr r2, [r3, r2]
004ad260  00 60 a0 e1                                      mov r6, r0
004ad264  00 50 92 e5                                      ldr r5, [r2]
004ad268  00 00 55 e3                                      cmp r5, #0
004ad26c  0e 00 00 0a                                      beq #0x4ad2ac
004ad270  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad274  00 40 a0 e3                                      mov r4, #0
004ad278  02 30 93 e7                                      ldr r3, [r3, r2]
004ad27c  00 70 93 e5                                      ldr r7, [r3]
004ad280  02 00 00 ea                                      b #0x4ad290
004ad284  01 40 84 e2                                      add r4, r4, #1
004ad288  05 00 54 e1                                      cmp r4, r5
004ad28c  06 00 00 0a                                      beq #0x4ad2ac
004ad290  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad294  06 00 a0 e1                                      mov r0, r6
004ad298  1f 84 f9 eb                                      bl #0x30e31c
004ad29c  00 00 50 e3                                      cmp r0, #0
004ad2a0  f7 ff ff 1a                                      bne #0x4ad284
004ad2a4  04 00 a0 e1                                      mov r0, r4
004ad2a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad2ac  00 00 e0 e3                                      mvn r0, #0
004ad2b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad2b4  38 78 4e 00 70 09 00 00 78 2a 00 00              .byte 0x38, 0x78, 0x4e, 0x00, 0x70, 0x09, 0x00, 0x00, 0x78, 0x2a, 0x00, 0x00

; FUNCTION 0x004ad318, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_12NumProbArrayEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::NumProbArray>(char const*)
; decoder-mode: arm
004ad318  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad31c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad320  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad324  03 30 8f e0                                      add r3, pc, r3
004ad328  02 20 93 e7                                      ldr r2, [r3, r2]
004ad32c  00 60 a0 e1                                      mov r6, r0
004ad330  00 50 92 e5                                      ldr r5, [r2]
004ad334  00 00 55 e3                                      cmp r5, #0
004ad338  0e 00 00 0a                                      beq #0x4ad378
004ad33c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad340  00 40 a0 e3                                      mov r4, #0
004ad344  02 30 93 e7                                      ldr r3, [r3, r2]
004ad348  00 70 93 e5                                      ldr r7, [r3]
004ad34c  02 00 00 ea                                      b #0x4ad35c
004ad350  01 40 84 e2                                      add r4, r4, #1
004ad354  05 00 54 e1                                      cmp r4, r5
004ad358  06 00 00 0a                                      beq #0x4ad378
004ad35c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad360  06 00 a0 e1                                      mov r0, r6
004ad364  ec 83 f9 eb                                      bl #0x30e31c
004ad368  00 00 50 e3                                      cmp r0, #0
004ad36c  f7 ff ff 1a                                      bne #0x4ad350
004ad370  04 00 a0 e1                                      mov r0, r4
004ad374  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad378  00 00 e0 e3                                      mvn r0, #0
004ad37c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad380  6c 77 4e 00 54 4b 00 00 e0 37 00 00              .byte 0x6c, 0x77, 0x4e, 0x00, 0x54, 0x4b, 0x00, 0x00, 0xe0, 0x37, 0x00, 0x00

; FUNCTION 0x004ad3bc, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_13MerchantTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::MerchantTable>(char const*)
; decoder-mode: arm
004ad3bc  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad3c0  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad3c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad3c8  03 30 8f e0                                      add r3, pc, r3
004ad3cc  02 20 93 e7                                      ldr r2, [r3, r2]
004ad3d0  00 60 a0 e1                                      mov r6, r0
004ad3d4  00 50 92 e5                                      ldr r5, [r2]
004ad3d8  00 00 55 e3                                      cmp r5, #0
004ad3dc  0e 00 00 0a                                      beq #0x4ad41c
004ad3e0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad3e4  00 40 a0 e3                                      mov r4, #0
004ad3e8  02 30 93 e7                                      ldr r3, [r3, r2]
004ad3ec  00 70 93 e5                                      ldr r7, [r3]
004ad3f0  02 00 00 ea                                      b #0x4ad400
004ad3f4  01 40 84 e2                                      add r4, r4, #1
004ad3f8  05 00 54 e1                                      cmp r4, r5
004ad3fc  06 00 00 0a                                      beq #0x4ad41c
004ad400  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad404  06 00 a0 e1                                      mov r0, r6
004ad408  c3 83 f9 eb                                      bl #0x30e31c
004ad40c  00 00 50 e3                                      cmp r0, #0
004ad410  f7 ff ff 1a                                      bne #0x4ad3f4
004ad414  04 00 a0 e1                                      mov r0, r4
004ad418  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad41c  00 00 e0 e3                                      mvn r0, #0
004ad420  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad424  c8 76 4e 00 08 22 00 00 94 4b 00 00              .byte 0xc8, 0x76, 0x4e, 0x00, 0x08, 0x22, 0x00, 0x00, 0x94, 0x4b, 0x00, 0x00

; FUNCTION 0x004ad488, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_9LootTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::LootTable>(char const*)
; decoder-mode: arm
004ad488  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad48c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad490  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad494  03 30 8f e0                                      add r3, pc, r3
004ad498  02 20 93 e7                                      ldr r2, [r3, r2]
004ad49c  00 60 a0 e1                                      mov r6, r0
004ad4a0  00 50 92 e5                                      ldr r5, [r2]
004ad4a4  00 00 55 e3                                      cmp r5, #0
004ad4a8  0e 00 00 0a                                      beq #0x4ad4e8
004ad4ac  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad4b0  00 40 a0 e3                                      mov r4, #0
004ad4b4  02 30 93 e7                                      ldr r3, [r3, r2]
004ad4b8  00 70 93 e5                                      ldr r7, [r3]
004ad4bc  02 00 00 ea                                      b #0x4ad4cc
004ad4c0  01 40 84 e2                                      add r4, r4, #1
004ad4c4  05 00 54 e1                                      cmp r4, r5
004ad4c8  06 00 00 0a                                      beq #0x4ad4e8
004ad4cc  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad4d0  06 00 a0 e1                                      mov r0, r6
004ad4d4  90 83 f9 eb                                      bl #0x30e31c
004ad4d8  00 00 50 e3                                      cmp r0, #0
004ad4dc  f7 ff ff 1a                                      bne #0x4ad4c0
004ad4e0  04 00 a0 e1                                      mov r0, r4
004ad4e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad4e8  00 00 e0 e3                                      mvn r0, #0
004ad4ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad4f0  fc 75 4e 00 20 35 00 00 78 2e 00 00              .byte 0xfc, 0x75, 0x4e, 0x00, 0x20, 0x35, 0x00, 0x00, 0x78, 0x2e, 0x00, 0x00

; FUNCTION 0x004ad554, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_12ItemTypeListEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ItemTypeList>(char const*)
; decoder-mode: arm
004ad554  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad558  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad55c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad560  03 30 8f e0                                      add r3, pc, r3
004ad564  02 20 93 e7                                      ldr r2, [r3, r2]
004ad568  00 60 a0 e1                                      mov r6, r0
004ad56c  00 50 92 e5                                      ldr r5, [r2]
004ad570  00 00 55 e3                                      cmp r5, #0
004ad574  0e 00 00 0a                                      beq #0x4ad5b4
004ad578  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad57c  00 40 a0 e3                                      mov r4, #0
004ad580  02 30 93 e7                                      ldr r3, [r3, r2]
004ad584  00 70 93 e5                                      ldr r7, [r3]
004ad588  02 00 00 ea                                      b #0x4ad598
004ad58c  01 40 84 e2                                      add r4, r4, #1
004ad590  05 00 54 e1                                      cmp r4, r5
004ad594  06 00 00 0a                                      beq #0x4ad5b4
004ad598  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad59c  06 00 a0 e1                                      mov r0, r6
004ad5a0  5d 83 f9 eb                                      bl #0x30e31c
004ad5a4  00 00 50 e3                                      cmp r0, #0
004ad5a8  f7 ff ff 1a                                      bne #0x4ad58c
004ad5ac  04 00 a0 e1                                      mov r0, r4
004ad5b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad5b4  00 00 e0 e3                                      mvn r0, #0
004ad5b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad5bc  30 75 4e 00 20 25 00 00 18 43 00 00              .byte 0x30, 0x75, 0x4e, 0x00, 0x20, 0x25, 0x00, 0x00, 0x18, 0x43, 0x00, 0x00

; FUNCTION 0x004ad5f8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_9ItemTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ItemTable>(char const*)
; decoder-mode: arm
004ad5f8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad5fc  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad600  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad604  03 30 8f e0                                      add r3, pc, r3
004ad608  02 20 93 e7                                      ldr r2, [r3, r2]
004ad60c  00 60 a0 e1                                      mov r6, r0
004ad610  00 50 92 e5                                      ldr r5, [r2]
004ad614  00 00 55 e3                                      cmp r5, #0
004ad618  0e 00 00 0a                                      beq #0x4ad658
004ad61c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad620  00 40 a0 e3                                      mov r4, #0
004ad624  02 30 93 e7                                      ldr r3, [r3, r2]
004ad628  00 70 93 e5                                      ldr r7, [r3]
004ad62c  02 00 00 ea                                      b #0x4ad63c
004ad630  01 40 84 e2                                      add r4, r4, #1
004ad634  05 00 54 e1                                      cmp r4, r5
004ad638  06 00 00 0a                                      beq #0x4ad658
004ad63c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad640  06 00 a0 e1                                      mov r0, r6
004ad644  34 83 f9 eb                                      bl #0x30e31c
004ad648  00 00 50 e3                                      cmp r0, #0
004ad64c  f7 ff ff 1a                                      bne #0x4ad630
004ad650  04 00 a0 e1                                      mov r0, r4
004ad654  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad658  00 00 e0 e3                                      mvn r0, #0
004ad65c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad660  8c 74 4e 00 60 0d 00 00 54 1c 00 00              .byte 0x8c, 0x74, 0x4e, 0x00, 0x60, 0x0d, 0x00, 0x00, 0x54, 0x1c, 0x00, 0x00

; FUNCTION 0x004ad6c8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_8ItemListEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ItemList>(char const*)
; decoder-mode: arm
004ad6c8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad6cc  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad6d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad6d4  03 30 8f e0                                      add r3, pc, r3
004ad6d8  02 20 93 e7                                      ldr r2, [r3, r2]
004ad6dc  00 60 a0 e1                                      mov r6, r0
004ad6e0  00 50 92 e5                                      ldr r5, [r2]
004ad6e4  00 00 55 e3                                      cmp r5, #0
004ad6e8  0e 00 00 0a                                      beq #0x4ad728
004ad6ec  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad6f0  00 40 a0 e3                                      mov r4, #0
004ad6f4  02 30 93 e7                                      ldr r3, [r3, r2]
004ad6f8  00 70 93 e5                                      ldr r7, [r3]
004ad6fc  02 00 00 ea                                      b #0x4ad70c
004ad700  01 40 84 e2                                      add r4, r4, #1
004ad704  05 00 54 e1                                      cmp r4, r5
004ad708  06 00 00 0a                                      beq #0x4ad728
004ad70c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad710  06 00 a0 e1                                      mov r0, r6
004ad714  00 83 f9 eb                                      bl #0x30e31c
004ad718  00 00 50 e3                                      cmp r0, #0
004ad71c  f7 ff ff 1a                                      bne #0x4ad700
004ad720  04 00 a0 e1                                      mov r0, r4
004ad724  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad728  00 00 e0 e3                                      mvn r0, #0
004ad72c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad730  bc 73 4e 00 d0 2a 00 00 94 14 00 00              .byte 0xbc, 0x73, 0x4e, 0x00, 0xd0, 0x2a, 0x00, 0x00, 0x94, 0x14, 0x00, 0x00

; FUNCTION 0x004ad76c, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14InventoryTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::InventoryTable>(char const*)
; decoder-mode: arm
004ad76c  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad770  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad774  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad778  03 30 8f e0                                      add r3, pc, r3
004ad77c  02 20 93 e7                                      ldr r2, [r3, r2]
004ad780  00 60 a0 e1                                      mov r6, r0
004ad784  00 50 92 e5                                      ldr r5, [r2]
004ad788  00 00 55 e3                                      cmp r5, #0
004ad78c  0e 00 00 0a                                      beq #0x4ad7cc
004ad790  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad794  00 40 a0 e3                                      mov r4, #0
004ad798  02 30 93 e7                                      ldr r3, [r3, r2]
004ad79c  00 70 93 e5                                      ldr r7, [r3]
004ad7a0  02 00 00 ea                                      b #0x4ad7b0
004ad7a4  01 40 84 e2                                      add r4, r4, #1
004ad7a8  05 00 54 e1                                      cmp r4, r5
004ad7ac  06 00 00 0a                                      beq #0x4ad7cc
004ad7b0  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad7b4  06 00 a0 e1                                      mov r0, r6
004ad7b8  d7 82 f9 eb                                      bl #0x30e31c
004ad7bc  00 00 50 e3                                      cmp r0, #0
004ad7c0  f7 ff ff 1a                                      bne #0x4ad7a4
004ad7c4  04 00 a0 e1                                      mov r0, r4
004ad7c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad7cc  00 00 e0 e3                                      mvn r0, #0
004ad7d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad7d4  18 73 4e 00 ec 07 00 00 14 3d 00 00              .byte 0x18, 0x73, 0x4e, 0x00, 0xec, 0x07, 0x00, 0x00, 0x14, 0x3d, 0x00, 0x00

; FUNCTION 0x004ad810, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_21DropTilePriorityTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::DropTilePriorityTable>(char const*)
; decoder-mode: arm
004ad810  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad814  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad818  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad81c  03 30 8f e0                                      add r3, pc, r3
004ad820  02 20 93 e7                                      ldr r2, [r3, r2]
004ad824  00 60 a0 e1                                      mov r6, r0
004ad828  00 50 92 e5                                      ldr r5, [r2]
004ad82c  00 00 55 e3                                      cmp r5, #0
004ad830  0e 00 00 0a                                      beq #0x4ad870
004ad834  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad838  00 40 a0 e3                                      mov r4, #0
004ad83c  02 30 93 e7                                      ldr r3, [r3, r2]
004ad840  00 70 93 e5                                      ldr r7, [r3]
004ad844  02 00 00 ea                                      b #0x4ad854
004ad848  01 40 84 e2                                      add r4, r4, #1
004ad84c  05 00 54 e1                                      cmp r4, r5
004ad850  06 00 00 0a                                      beq #0x4ad870
004ad854  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad858  06 00 a0 e1                                      mov r0, r6
004ad85c  ae 82 f9 eb                                      bl #0x30e31c
004ad860  00 00 50 e3                                      cmp r0, #0
004ad864  f7 ff ff 1a                                      bne #0x4ad848
004ad868  04 00 a0 e1                                      mov r0, r4
004ad86c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad870  00 00 e0 e3                                      mvn r0, #0
004ad874  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad878  74 72 4e 00 b4 49 00 00 6c 22 00 00              .byte 0x74, 0x72, 0x4e, 0x00, 0xb4, 0x49, 0x00, 0x00, 0x6c, 0x22, 0x00, 0x00

; FUNCTION 0x004ad8b4, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_20ItemAudioVisualTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ItemAudioVisualTable>(char const*)
; decoder-mode: arm
004ad8b4  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad8b8  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad8bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad8c0  03 30 8f e0                                      add r3, pc, r3
004ad8c4  02 20 93 e7                                      ldr r2, [r3, r2]
004ad8c8  00 60 a0 e1                                      mov r6, r0
004ad8cc  00 50 92 e5                                      ldr r5, [r2]
004ad8d0  00 00 55 e3                                      cmp r5, #0
004ad8d4  0e 00 00 0a                                      beq #0x4ad914
004ad8d8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ad8dc  00 40 a0 e3                                      mov r4, #0
004ad8e0  02 30 93 e7                                      ldr r3, [r3, r2]
004ad8e4  00 70 93 e5                                      ldr r7, [r3]
004ad8e8  02 00 00 ea                                      b #0x4ad8f8
004ad8ec  01 40 84 e2                                      add r4, r4, #1
004ad8f0  05 00 54 e1                                      cmp r4, r5
004ad8f4  06 00 00 0a                                      beq #0x4ad914
004ad8f8  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ad8fc  06 00 a0 e1                                      mov r0, r6
004ad900  85 82 f9 eb                                      bl #0x30e31c
004ad904  00 00 50 e3                                      cmp r0, #0
004ad908  f7 ff ff 1a                                      bne #0x4ad8ec
004ad90c  04 00 a0 e1                                      mov r0, r4
004ad910  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ad914  00 00 e0 e3                                      mvn r0, #0
004ad918  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ad91c  d0 71 4e 00 10 45 00 00 a8 14 00 00              .byte 0xd0, 0x71, 0x4e, 0x00, 0x10, 0x45, 0x00, 0x00, 0xa8, 0x14, 0x00, 0x00

; FUNCTION 0x004ad9d8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14FastTravelListEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::FastTravelList>(char const*)
; decoder-mode: arm
004ad9d8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ad9dc  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ad9e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ad9e4  03 30 8f e0                                      add r3, pc, r3
004ad9e8  02 20 93 e7                                      ldr r2, [r3, r2]
004ad9ec  00 60 a0 e1                                      mov r6, r0
004ad9f0  00 50 92 e5                                      ldr r5, [r2]
004ad9f4  00 00 55 e3                                      cmp r5, #0
004ad9f8  0e 00 00 0a                                      beq #0x4ada38
004ad9fc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ada00  00 40 a0 e3                                      mov r4, #0
004ada04  02 30 93 e7                                      ldr r3, [r3, r2]
004ada08  00 70 93 e5                                      ldr r7, [r3]
004ada0c  02 00 00 ea                                      b #0x4ada1c
004ada10  01 40 84 e2                                      add r4, r4, #1
004ada14  05 00 54 e1                                      cmp r4, r5
004ada18  06 00 00 0a                                      beq #0x4ada38
004ada1c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ada20  06 00 a0 e1                                      mov r0, r6
004ada24  3c 82 f9 eb                                      bl #0x30e31c
004ada28  00 00 50 e3                                      cmp r0, #0
004ada2c  f7 ff ff 1a                                      bne #0x4ada10
004ada30  04 00 a0 e1                                      mov r0, r4
004ada34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ada38  00 00 e0 e3                                      mvn r0, #0
004ada3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ada40  ac 70 4e 00 f4 45 00 00 e4 1e 00 00              .byte 0xac, 0x70, 0x4e, 0x00, 0xf4, 0x45, 0x00, 0x00, 0xe4, 0x1e, 0x00, 0x00

; FUNCTION 0x004adaa4, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_21ItemBonusAttrMonopolyEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ItemBonusAttrMonopoly>(char const*)
; decoder-mode: arm
004adaa4  60 30 9f e5                                      ldr r3, [pc, #0x60]
004adaa8  60 20 9f e5                                      ldr r2, [pc, #0x60]
004adaac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004adab0  03 30 8f e0                                      add r3, pc, r3
004adab4  02 20 93 e7                                      ldr r2, [r3, r2]
004adab8  00 60 a0 e1                                      mov r6, r0
004adabc  00 50 92 e5                                      ldr r5, [r2]
004adac0  00 00 55 e3                                      cmp r5, #0
004adac4  0e 00 00 0a                                      beq #0x4adb04
004adac8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004adacc  00 40 a0 e3                                      mov r4, #0
004adad0  02 30 93 e7                                      ldr r3, [r3, r2]
004adad4  00 70 93 e5                                      ldr r7, [r3]
004adad8  02 00 00 ea                                      b #0x4adae8
004adadc  01 40 84 e2                                      add r4, r4, #1
004adae0  05 00 54 e1                                      cmp r4, r5
004adae4  06 00 00 0a                                      beq #0x4adb04
004adae8  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004adaec  06 00 a0 e1                                      mov r0, r6
004adaf0  09 82 f9 eb                                      bl #0x30e31c
004adaf4  00 00 50 e3                                      cmp r0, #0
004adaf8  f7 ff ff 1a                                      bne #0x4adadc
004adafc  04 00 a0 e1                                      mov r0, r4
004adb00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004adb04  00 00 e0 e3                                      mvn r0, #0
004adb08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004adb0c  e0 6f 4e 00 1c 1c 00 00 3c 08 00 00              .byte 0xe0, 0x6f, 0x4e, 0x00, 0x1c, 0x1c, 0x00, 0x00, 0x3c, 0x08, 0x00, 0x00

; FUNCTION 0x004adb48, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14ItemPowerTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ItemPowerTable>(char const*)
; decoder-mode: arm
004adb48  60 30 9f e5                                      ldr r3, [pc, #0x60]
004adb4c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004adb50  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004adb54  03 30 8f e0                                      add r3, pc, r3
004adb58  02 20 93 e7                                      ldr r2, [r3, r2]
004adb5c  00 60 a0 e1                                      mov r6, r0
004adb60  00 50 92 e5                                      ldr r5, [r2]
004adb64  00 00 55 e3                                      cmp r5, #0
004adb68  0e 00 00 0a                                      beq #0x4adba8
004adb6c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004adb70  00 40 a0 e3                                      mov r4, #0
004adb74  02 30 93 e7                                      ldr r3, [r3, r2]
004adb78  00 70 93 e5                                      ldr r7, [r3]
004adb7c  02 00 00 ea                                      b #0x4adb8c
004adb80  01 40 84 e2                                      add r4, r4, #1
004adb84  05 00 54 e1                                      cmp r4, r5
004adb88  06 00 00 0a                                      beq #0x4adba8
004adb8c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004adb90  06 00 a0 e1                                      mov r0, r6
004adb94  e0 81 f9 eb                                      bl #0x30e31c
004adb98  00 00 50 e3                                      cmp r0, #0
004adb9c  f7 ff ff 1a                                      bne #0x4adb80
004adba0  04 00 a0 e1                                      mov r0, r4
004adba4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004adba8  00 00 e0 e3                                      mvn r0, #0
004adbac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004adbb0  3c 6f 4e 00 88 11 00 00 cc 12 00 00              .byte 0x3c, 0x6f, 0x4e, 0x00, 0x88, 0x11, 0x00, 0x00, 0xcc, 0x12, 0x00, 0x00

; FUNCTION 0x004adc14, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_13ItemPowerListEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ItemPowerList>(char const*)
; decoder-mode: arm
004adc14  60 30 9f e5                                      ldr r3, [pc, #0x60]
004adc18  60 20 9f e5                                      ldr r2, [pc, #0x60]
004adc1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004adc20  03 30 8f e0                                      add r3, pc, r3
004adc24  02 20 93 e7                                      ldr r2, [r3, r2]
004adc28  00 60 a0 e1                                      mov r6, r0
004adc2c  00 50 92 e5                                      ldr r5, [r2]
004adc30  00 00 55 e3                                      cmp r5, #0
004adc34  0e 00 00 0a                                      beq #0x4adc74
004adc38  44 20 9f e5                                      ldr r2, [pc, #0x44]
004adc3c  00 40 a0 e3                                      mov r4, #0
004adc40  02 30 93 e7                                      ldr r3, [r3, r2]
004adc44  00 70 93 e5                                      ldr r7, [r3]
004adc48  02 00 00 ea                                      b #0x4adc58
004adc4c  01 40 84 e2                                      add r4, r4, #1
004adc50  05 00 54 e1                                      cmp r4, r5
004adc54  06 00 00 0a                                      beq #0x4adc74
004adc58  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004adc5c  06 00 a0 e1                                      mov r0, r6
004adc60  ad 81 f9 eb                                      bl #0x30e31c
004adc64  00 00 50 e3                                      cmp r0, #0
004adc68  f7 ff ff 1a                                      bne #0x4adc4c
004adc6c  04 00 a0 e1                                      mov r0, r4
004adc70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004adc74  00 00 e0 e3                                      mvn r0, #0
004adc78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004adc7c  70 6e 4e 00 48 0b 00 00 30 41 00 00              .byte 0x70, 0x6e, 0x4e, 0x00, 0x48, 0x0b, 0x00, 0x00, 0x30, 0x41, 0x00, 0x00

; FUNCTION 0x004adcb8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_9HintPagesEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::HintPages>(char const*)
; decoder-mode: arm
004adcb8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004adcbc  60 20 9f e5                                      ldr r2, [pc, #0x60]
004adcc0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004adcc4  03 30 8f e0                                      add r3, pc, r3
004adcc8  02 20 93 e7                                      ldr r2, [r3, r2]
004adccc  00 60 a0 e1                                      mov r6, r0
004adcd0  00 50 92 e5                                      ldr r5, [r2]
004adcd4  00 00 55 e3                                      cmp r5, #0
004adcd8  0e 00 00 0a                                      beq #0x4add18
004adcdc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004adce0  00 40 a0 e3                                      mov r4, #0
004adce4  02 30 93 e7                                      ldr r3, [r3, r2]
004adce8  00 70 93 e5                                      ldr r7, [r3]
004adcec  02 00 00 ea                                      b #0x4adcfc
004adcf0  01 40 84 e2                                      add r4, r4, #1
004adcf4  05 00 54 e1                                      cmp r4, r5
004adcf8  06 00 00 0a                                      beq #0x4add18
004adcfc  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004add00  06 00 a0 e1                                      mov r0, r6
004add04  84 81 f9 eb                                      bl #0x30e31c
004add08  00 00 50 e3                                      cmp r0, #0
004add0c  f7 ff ff 1a                                      bne #0x4adcf0
004add10  04 00 a0 e1                                      mov r0, r4
004add14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004add18  00 00 e0 e3                                      mvn r0, #0
004add1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004add20  cc 6d 4e 00 74 31 00 00 74 12 00 00              .byte 0xcc, 0x6d, 0x4e, 0x00, 0x74, 0x31, 0x00, 0x00, 0x74, 0x12, 0x00, 0x00

; FUNCTION 0x004add78, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_9HelpPagesEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::HelpPages>(char const*)
; decoder-mode: arm
004add78  60 30 9f e5                                      ldr r3, [pc, #0x60]
004add7c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004add80  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004add84  03 30 8f e0                                      add r3, pc, r3
004add88  02 20 93 e7                                      ldr r2, [r3, r2]
004add8c  00 60 a0 e1                                      mov r6, r0
004add90  00 50 92 e5                                      ldr r5, [r2]
004add94  00 00 55 e3                                      cmp r5, #0
004add98  0e 00 00 0a                                      beq #0x4addd8
004add9c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004adda0  00 40 a0 e3                                      mov r4, #0
004adda4  02 30 93 e7                                      ldr r3, [r3, r2]
004adda8  00 70 93 e5                                      ldr r7, [r3]
004addac  02 00 00 ea                                      b #0x4addbc
004addb0  01 40 84 e2                                      add r4, r4, #1
004addb4  05 00 54 e1                                      cmp r4, r5
004addb8  06 00 00 0a                                      beq #0x4addd8
004addbc  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004addc0  06 00 a0 e1                                      mov r0, r6
004addc4  54 81 f9 eb                                      bl #0x30e31c
004addc8  00 00 50 e3                                      cmp r0, #0
004addcc  f7 ff ff 1a                                      bne #0x4addb0
004addd0  04 00 a0 e1                                      mov r0, r4
004addd4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004addd8  00 00 e0 e3                                      mvn r0, #0
004adddc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004adde0  0c 6d 4e 00 68 31 00 00 ac 05 00 00              .byte 0x0c, 0x6d, 0x4e, 0x00, 0x68, 0x31, 0x00, 0x00, 0xac, 0x05, 0x00, 0x00

; FUNCTION 0x004ade38, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_12TriggerTrapsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::TriggerTraps>(char const*)
; decoder-mode: arm
004ade38  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ade3c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ade40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ade44  03 30 8f e0                                      add r3, pc, r3
004ade48  02 20 93 e7                                      ldr r2, [r3, r2]
004ade4c  00 60 a0 e1                                      mov r6, r0
004ade50  00 50 92 e5                                      ldr r5, [r2]
004ade54  00 00 55 e3                                      cmp r5, #0
004ade58  0e 00 00 0a                                      beq #0x4ade98
004ade5c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ade60  00 40 a0 e3                                      mov r4, #0
004ade64  02 30 93 e7                                      ldr r3, [r3, r2]
004ade68  00 70 93 e5                                      ldr r7, [r3]
004ade6c  02 00 00 ea                                      b #0x4ade7c
004ade70  01 40 84 e2                                      add r4, r4, #1
004ade74  05 00 54 e1                                      cmp r4, r5
004ade78  06 00 00 0a                                      beq #0x4ade98
004ade7c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ade80  06 00 a0 e1                                      mov r0, r6
004ade84  24 81 f9 eb                                      bl #0x30e31c
004ade88  00 00 50 e3                                      cmp r0, #0
004ade8c  f7 ff ff 1a                                      bne #0x4ade70
004ade90  04 00 a0 e1                                      mov r0, r4
004ade94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ade98  00 00 e0 e3                                      mvn r0, #0
004ade9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004adea0  4c 6c 4e 00 8c 0d 00 00 2c 06 00 00              .byte 0x4c, 0x6c, 0x4e, 0x00, 0x8c, 0x0d, 0x00, 0x00, 0x2c, 0x06, 0x00, 0x00

; FUNCTION 0x004adf04, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_13TriggerPlatesEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::TriggerPlates>(char const*)
; decoder-mode: arm
004adf04  60 30 9f e5                                      ldr r3, [pc, #0x60]
004adf08  60 20 9f e5                                      ldr r2, [pc, #0x60]
004adf0c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004adf10  03 30 8f e0                                      add r3, pc, r3
004adf14  02 20 93 e7                                      ldr r2, [r3, r2]
004adf18  00 60 a0 e1                                      mov r6, r0
004adf1c  00 50 92 e5                                      ldr r5, [r2]
004adf20  00 00 55 e3                                      cmp r5, #0
004adf24  0e 00 00 0a                                      beq #0x4adf64
004adf28  44 20 9f e5                                      ldr r2, [pc, #0x44]
004adf2c  00 40 a0 e3                                      mov r4, #0
004adf30  02 30 93 e7                                      ldr r3, [r3, r2]
004adf34  00 70 93 e5                                      ldr r7, [r3]
004adf38  02 00 00 ea                                      b #0x4adf48
004adf3c  01 40 84 e2                                      add r4, r4, #1
004adf40  05 00 54 e1                                      cmp r4, r5
004adf44  06 00 00 0a                                      beq #0x4adf64
004adf48  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004adf4c  06 00 a0 e1                                      mov r0, r6
004adf50  f1 80 f9 eb                                      bl #0x30e31c
004adf54  00 00 50 e3                                      cmp r0, #0
004adf58  f7 ff ff 1a                                      bne #0x4adf3c
004adf5c  04 00 a0 e1                                      mov r0, r4
004adf60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004adf64  00 00 e0 e3                                      mvn r0, #0
004adf68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004adf6c  80 6b 4e 00 c8 27 00 00 48 15 00 00              .byte 0x80, 0x6b, 0x4e, 0x00, 0xc8, 0x27, 0x00, 0x00, 0x48, 0x15, 0x00, 0x00

; FUNCTION 0x004adfd0, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14TriggerObjectsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::TriggerObjects>(char const*)
; decoder-mode: arm
004adfd0  60 30 9f e5                                      ldr r3, [pc, #0x60]
004adfd4  60 20 9f e5                                      ldr r2, [pc, #0x60]
004adfd8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004adfdc  03 30 8f e0                                      add r3, pc, r3
004adfe0  02 20 93 e7                                      ldr r2, [r3, r2]
004adfe4  00 60 a0 e1                                      mov r6, r0
004adfe8  00 50 92 e5                                      ldr r5, [r2]
004adfec  00 00 55 e3                                      cmp r5, #0
004adff0  0e 00 00 0a                                      beq #0x4ae030
004adff4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004adff8  00 40 a0 e3                                      mov r4, #0
004adffc  02 30 93 e7                                      ldr r3, [r3, r2]
004ae000  00 70 93 e5                                      ldr r7, [r3]
004ae004  02 00 00 ea                                      b #0x4ae014
004ae008  01 40 84 e2                                      add r4, r4, #1
004ae00c  05 00 54 e1                                      cmp r4, r5
004ae010  06 00 00 0a                                      beq #0x4ae030
004ae014  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae018  06 00 a0 e1                                      mov r0, r6
004ae01c  be 80 f9 eb                                      bl #0x30e31c
004ae020  00 00 50 e3                                      cmp r0, #0
004ae024  f7 ff ff 1a                                      bne #0x4ae008
004ae028  04 00 a0 e1                                      mov r0, r4
004ae02c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae030  00 00 e0 e3                                      mvn r0, #0
004ae034  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae038  b4 6a 4e 00 a8 0c 00 00 58 42 00 00              .byte 0xb4, 0x6a, 0x4e, 0x00, 0xa8, 0x0c, 0x00, 0x00, 0x58, 0x42, 0x00, 0x00

; FUNCTION 0x004ae09c, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_10TimerTrapsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::TimerTraps>(char const*)
; decoder-mode: arm
004ae09c  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae0a0  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae0a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae0a8  03 30 8f e0                                      add r3, pc, r3
004ae0ac  02 20 93 e7                                      ldr r2, [r3, r2]
004ae0b0  00 60 a0 e1                                      mov r6, r0
004ae0b4  00 50 92 e5                                      ldr r5, [r2]
004ae0b8  00 00 55 e3                                      cmp r5, #0
004ae0bc  0e 00 00 0a                                      beq #0x4ae0fc
004ae0c0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae0c4  00 40 a0 e3                                      mov r4, #0
004ae0c8  02 30 93 e7                                      ldr r3, [r3, r2]
004ae0cc  00 70 93 e5                                      ldr r7, [r3]
004ae0d0  02 00 00 ea                                      b #0x4ae0e0
004ae0d4  01 40 84 e2                                      add r4, r4, #1
004ae0d8  05 00 54 e1                                      cmp r4, r5
004ae0dc  06 00 00 0a                                      beq #0x4ae0fc
004ae0e0  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae0e4  06 00 a0 e1                                      mov r0, r6
004ae0e8  8b 80 f9 eb                                      bl #0x30e31c
004ae0ec  00 00 50 e3                                      cmp r0, #0
004ae0f0  f7 ff ff 1a                                      bne #0x4ae0d4
004ae0f4  04 00 a0 e1                                      mov r0, r4
004ae0f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae0fc  00 00 e0 e3                                      mvn r0, #0
004ae100  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae104  e8 69 4e 00 f8 0d 00 00 0c 10 00 00              .byte 0xe8, 0x69, 0x4e, 0x00, 0xf8, 0x0d, 0x00, 0x00, 0x0c, 0x10, 0x00, 0x00

; FUNCTION 0x004ae168, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_15ProjectileTrapsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ProjectileTraps>(char const*)
; decoder-mode: arm
004ae168  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae16c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae170  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae174  03 30 8f e0                                      add r3, pc, r3
004ae178  02 20 93 e7                                      ldr r2, [r3, r2]
004ae17c  00 60 a0 e1                                      mov r6, r0
004ae180  00 50 92 e5                                      ldr r5, [r2]
004ae184  00 00 55 e3                                      cmp r5, #0
004ae188  0e 00 00 0a                                      beq #0x4ae1c8
004ae18c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae190  00 40 a0 e3                                      mov r4, #0
004ae194  02 30 93 e7                                      ldr r3, [r3, r2]
004ae198  00 70 93 e5                                      ldr r7, [r3]
004ae19c  02 00 00 ea                                      b #0x4ae1ac
004ae1a0  01 40 84 e2                                      add r4, r4, #1
004ae1a4  05 00 54 e1                                      cmp r4, r5
004ae1a8  06 00 00 0a                                      beq #0x4ae1c8
004ae1ac  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae1b0  06 00 a0 e1                                      mov r0, r6
004ae1b4  58 80 f9 eb                                      bl #0x30e31c
004ae1b8  00 00 50 e3                                      cmp r0, #0
004ae1bc  f7 ff ff 1a                                      bne #0x4ae1a0
004ae1c0  04 00 a0 e1                                      mov r0, r4
004ae1c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae1c8  00 00 e0 e3                                      mvn r0, #0
004ae1cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae1d0  1c 69 4e 00 a4 12 00 00 e0 3c 00 00              .byte 0x1c, 0x69, 0x4e, 0x00, 0xa4, 0x12, 0x00, 0x00, 0xe0, 0x3c, 0x00, 0x00

; FUNCTION 0x004ae28c, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_15LiftableObjectsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::LiftableObjects>(char const*)
; decoder-mode: arm
004ae28c  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae290  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae294  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae298  03 30 8f e0                                      add r3, pc, r3
004ae29c  02 20 93 e7                                      ldr r2, [r3, r2]
004ae2a0  00 60 a0 e1                                      mov r6, r0
004ae2a4  00 50 92 e5                                      ldr r5, [r2]
004ae2a8  00 00 55 e3                                      cmp r5, #0
004ae2ac  0e 00 00 0a                                      beq #0x4ae2ec
004ae2b0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae2b4  00 40 a0 e3                                      mov r4, #0
004ae2b8  02 30 93 e7                                      ldr r3, [r3, r2]
004ae2bc  00 70 93 e5                                      ldr r7, [r3]
004ae2c0  02 00 00 ea                                      b #0x4ae2d0
004ae2c4  01 40 84 e2                                      add r4, r4, #1
004ae2c8  05 00 54 e1                                      cmp r4, r5
004ae2cc  06 00 00 0a                                      beq #0x4ae2ec
004ae2d0  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae2d4  06 00 a0 e1                                      mov r0, r6
004ae2d8  0f 80 f9 eb                                      bl #0x30e31c
004ae2dc  00 00 50 e3                                      cmp r0, #0
004ae2e0  f7 ff ff 1a                                      bne #0x4ae2c4
004ae2e4  04 00 a0 e1                                      mov r0, r4
004ae2e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae2ec  00 00 e0 e3                                      mvn r0, #0
004ae2f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae2f4  f8 67 4e 00 38 20 00 00 6c 3b 00 00              .byte 0xf8, 0x67, 0x4e, 0x00, 0x38, 0x20, 0x00, 0x00, 0x6c, 0x3b, 0x00, 0x00

; FUNCTION 0x004ae330, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_17GameObjectDamagerEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::GameObjectDamager>(char const*)
; decoder-mode: arm
004ae330  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae334  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae338  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae33c  03 30 8f e0                                      add r3, pc, r3
004ae340  02 20 93 e7                                      ldr r2, [r3, r2]
004ae344  00 60 a0 e1                                      mov r6, r0
004ae348  00 50 92 e5                                      ldr r5, [r2]
004ae34c  00 00 55 e3                                      cmp r5, #0
004ae350  0e 00 00 0a                                      beq #0x4ae390
004ae354  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae358  00 40 a0 e3                                      mov r4, #0
004ae35c  02 30 93 e7                                      ldr r3, [r3, r2]
004ae360  00 70 93 e5                                      ldr r7, [r3]
004ae364  02 00 00 ea                                      b #0x4ae374
004ae368  01 40 84 e2                                      add r4, r4, #1
004ae36c  05 00 54 e1                                      cmp r4, r5
004ae370  06 00 00 0a                                      beq #0x4ae390
004ae374  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae378  06 00 a0 e1                                      mov r0, r6
004ae37c  e6 7f f9 eb                                      bl #0x30e31c
004ae380  00 00 50 e3                                      cmp r0, #0
004ae384  f7 ff ff 1a                                      bne #0x4ae368
004ae388  04 00 a0 e1                                      mov r0, r4
004ae38c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae390  00 00 e0 e3                                      mvn r0, #0
004ae394  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae398  54 67 4e 00 0c 2f 00 00 10 15 00 00              .byte 0x54, 0x67, 0x4e, 0x00, 0x0c, 0x2f, 0x00, 0x00, 0x10, 0x15, 0x00, 0x00

; FUNCTION 0x004ae3fc, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14ExplosiveTrapsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ExplosiveTraps>(char const*)
; decoder-mode: arm
004ae3fc  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae400  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae404  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae408  03 30 8f e0                                      add r3, pc, r3
004ae40c  02 20 93 e7                                      ldr r2, [r3, r2]
004ae410  00 60 a0 e1                                      mov r6, r0
004ae414  00 50 92 e5                                      ldr r5, [r2]
004ae418  00 00 55 e3                                      cmp r5, #0
004ae41c  0e 00 00 0a                                      beq #0x4ae45c
004ae420  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae424  00 40 a0 e3                                      mov r4, #0
004ae428  02 30 93 e7                                      ldr r3, [r3, r2]
004ae42c  00 70 93 e5                                      ldr r7, [r3]
004ae430  02 00 00 ea                                      b #0x4ae440
004ae434  01 40 84 e2                                      add r4, r4, #1
004ae438  05 00 54 e1                                      cmp r4, r5
004ae43c  06 00 00 0a                                      beq #0x4ae45c
004ae440  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae444  06 00 a0 e1                                      mov r0, r6
004ae448  b3 7f f9 eb                                      bl #0x30e31c
004ae44c  00 00 50 e3                                      cmp r0, #0
004ae450  f7 ff ff 1a                                      bne #0x4ae434
004ae454  04 00 a0 e1                                      mov r0, r4
004ae458  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae45c  00 00 e0 e3                                      mvn r0, #0
004ae460  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae464  88 66 4e 00 d0 3f 00 00 70 08 00 00              .byte 0x88, 0x66, 0x4e, 0x00, 0xd0, 0x3f, 0x00, 0x00, 0x70, 0x08, 0x00, 0x00

; FUNCTION 0x004ae4c8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_5DoorsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::Doors>(char const*)
; decoder-mode: arm
004ae4c8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae4cc  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae4d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae4d4  03 30 8f e0                                      add r3, pc, r3
004ae4d8  02 20 93 e7                                      ldr r2, [r3, r2]
004ae4dc  00 60 a0 e1                                      mov r6, r0
004ae4e0  00 50 92 e5                                      ldr r5, [r2]
004ae4e4  00 00 55 e3                                      cmp r5, #0
004ae4e8  0e 00 00 0a                                      beq #0x4ae528
004ae4ec  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae4f0  00 40 a0 e3                                      mov r4, #0
004ae4f4  02 30 93 e7                                      ldr r3, [r3, r2]
004ae4f8  00 70 93 e5                                      ldr r7, [r3]
004ae4fc  02 00 00 ea                                      b #0x4ae50c
004ae500  01 40 84 e2                                      add r4, r4, #1
004ae504  05 00 54 e1                                      cmp r4, r5
004ae508  06 00 00 0a                                      beq #0x4ae528
004ae50c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae510  06 00 a0 e1                                      mov r0, r6
004ae514  80 7f f9 eb                                      bl #0x30e31c
004ae518  00 00 50 e3                                      cmp r0, #0
004ae51c  f7 ff ff 1a                                      bne #0x4ae500
004ae520  04 00 a0 e1                                      mov r0, r4
004ae524  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae528  00 00 e0 e3                                      mvn r0, #0
004ae52c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae530  bc 65 4e 00 f4 12 00 00 88 44 00 00              .byte 0xbc, 0x65, 0x4e, 0x00, 0xf4, 0x12, 0x00, 0x00, 0x88, 0x44, 0x00, 0x00

; FUNCTION 0x004ae5ec, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_11FontPaletteEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::FontPalette>(char const*)
; decoder-mode: arm
004ae5ec  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae5f0  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae5f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae5f8  03 30 8f e0                                      add r3, pc, r3
004ae5fc  02 20 93 e7                                      ldr r2, [r3, r2]
004ae600  00 60 a0 e1                                      mov r6, r0
004ae604  00 50 92 e5                                      ldr r5, [r2]
004ae608  00 00 55 e3                                      cmp r5, #0
004ae60c  0e 00 00 0a                                      beq #0x4ae64c
004ae610  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae614  00 40 a0 e3                                      mov r4, #0
004ae618  02 30 93 e7                                      ldr r3, [r3, r2]
004ae61c  00 70 93 e5                                      ldr r7, [r3]
004ae620  02 00 00 ea                                      b #0x4ae630
004ae624  01 40 84 e2                                      add r4, r4, #1
004ae628  05 00 54 e1                                      cmp r4, r5
004ae62c  06 00 00 0a                                      beq #0x4ae64c
004ae630  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae634  06 00 a0 e1                                      mov r0, r6
004ae638  37 7f f9 eb                                      bl #0x30e31c
004ae63c  00 00 50 e3                                      cmp r0, #0
004ae640  f7 ff ff 1a                                      bne #0x4ae624
004ae644  04 00 a0 e1                                      mov r0, r4
004ae648  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae64c  00 00 e0 e3                                      mvn r0, #0
004ae650  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae654  98 64 4e 00 1c 25 00 00 a0 19 00 00              .byte 0x98, 0x64, 0x4e, 0x00, 0x1c, 0x25, 0x00, 0x00, 0xa0, 0x19, 0x00, 0x00

; FUNCTION 0x004ae6ac, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_10FaeryTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::FaeryTable>(char const*)
; decoder-mode: arm
004ae6ac  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae6b0  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae6b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae6b8  03 30 8f e0                                      add r3, pc, r3
004ae6bc  02 20 93 e7                                      ldr r2, [r3, r2]
004ae6c0  00 60 a0 e1                                      mov r6, r0
004ae6c4  00 50 92 e5                                      ldr r5, [r2]
004ae6c8  00 00 55 e3                                      cmp r5, #0
004ae6cc  0e 00 00 0a                                      beq #0x4ae70c
004ae6d0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae6d4  00 40 a0 e3                                      mov r4, #0
004ae6d8  02 30 93 e7                                      ldr r3, [r3, r2]
004ae6dc  00 70 93 e5                                      ldr r7, [r3]
004ae6e0  02 00 00 ea                                      b #0x4ae6f0
004ae6e4  01 40 84 e2                                      add r4, r4, #1
004ae6e8  05 00 54 e1                                      cmp r4, r5
004ae6ec  06 00 00 0a                                      beq #0x4ae70c
004ae6f0  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae6f4  06 00 a0 e1                                      mov r0, r6
004ae6f8  07 7f f9 eb                                      bl #0x30e31c
004ae6fc  00 00 50 e3                                      cmp r0, #0
004ae700  f7 ff ff 1a                                      bne #0x4ae6e4
004ae704  04 00 a0 e1                                      mov r0, r4
004ae708  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae70c  00 00 e0 e3                                      mvn r0, #0
004ae710  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae714  d8 63 4e 00 d4 30 00 00 d0 0e 00 00              .byte 0xd8, 0x63, 0x4e, 0x00, 0xd4, 0x30, 0x00, 0x00, 0xd0, 0x0e, 0x00, 0x00

; FUNCTION 0x004ae778, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14FaeryListTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::FaeryListTable>(char const*)
; decoder-mode: arm
004ae778  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae77c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae780  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae784  03 30 8f e0                                      add r3, pc, r3
004ae788  02 20 93 e7                                      ldr r2, [r3, r2]
004ae78c  00 60 a0 e1                                      mov r6, r0
004ae790  00 50 92 e5                                      ldr r5, [r2]
004ae794  00 00 55 e3                                      cmp r5, #0
004ae798  0e 00 00 0a                                      beq #0x4ae7d8
004ae79c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae7a0  00 40 a0 e3                                      mov r4, #0
004ae7a4  02 30 93 e7                                      ldr r3, [r3, r2]
004ae7a8  00 70 93 e5                                      ldr r7, [r3]
004ae7ac  02 00 00 ea                                      b #0x4ae7bc
004ae7b0  01 40 84 e2                                      add r4, r4, #1
004ae7b4  05 00 54 e1                                      cmp r4, r5
004ae7b8  06 00 00 0a                                      beq #0x4ae7d8
004ae7bc  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae7c0  06 00 a0 e1                                      mov r0, r6
004ae7c4  d4 7e f9 eb                                      bl #0x30e31c
004ae7c8  00 00 50 e3                                      cmp r0, #0
004ae7cc  f7 ff ff 1a                                      bne #0x4ae7b0
004ae7d0  04 00 a0 e1                                      mov r0, r4
004ae7d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae7d8  00 00 e0 e3                                      mvn r0, #0
004ae7dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae7e0  0c 63 4e 00 14 45 00 00 fc 0a 00 00              .byte 0x0c, 0x63, 0x4e, 0x00, 0x14, 0x45, 0x00, 0x00, 0xfc, 0x0a, 0x00, 0x00

; FUNCTION 0x004ae81c, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_19FootstepEffectTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::FootstepEffectTable>(char const*)
; decoder-mode: arm
004ae81c  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae820  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae824  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae828  03 30 8f e0                                      add r3, pc, r3
004ae82c  02 20 93 e7                                      ldr r2, [r3, r2]
004ae830  00 60 a0 e1                                      mov r6, r0
004ae834  00 50 92 e5                                      ldr r5, [r2]
004ae838  00 00 55 e3                                      cmp r5, #0
004ae83c  0e 00 00 0a                                      beq #0x4ae87c
004ae840  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae844  00 40 a0 e3                                      mov r4, #0
004ae848  02 30 93 e7                                      ldr r3, [r3, r2]
004ae84c  00 70 93 e5                                      ldr r7, [r3]
004ae850  02 00 00 ea                                      b #0x4ae860
004ae854  01 40 84 e2                                      add r4, r4, #1
004ae858  05 00 54 e1                                      cmp r4, r5
004ae85c  06 00 00 0a                                      beq #0x4ae87c
004ae860  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae864  06 00 a0 e1                                      mov r0, r6
004ae868  ab 7e f9 eb                                      bl #0x30e31c
004ae86c  00 00 50 e3                                      cmp r0, #0
004ae870  f7 ff ff 1a                                      bne #0x4ae854
004ae874  04 00 a0 e1                                      mov r0, r4
004ae878  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae87c  00 00 e0 e3                                      mvn r0, #0
004ae880  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae884  68 62 4e 00 ac 1b 00 00 68 38 00 00              .byte 0x68, 0x62, 0x4e, 0x00, 0xac, 0x1b, 0x00, 0x00, 0x68, 0x38, 0x00, 0x00

; FUNCTION 0x004ae8e8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_15CharEffectTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::CharEffectTable>(char const*)
; decoder-mode: arm
004ae8e8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae8ec  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae8f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae8f4  03 30 8f e0                                      add r3, pc, r3
004ae8f8  02 20 93 e7                                      ldr r2, [r3, r2]
004ae8fc  00 60 a0 e1                                      mov r6, r0
004ae900  00 50 92 e5                                      ldr r5, [r2]
004ae904  00 00 55 e3                                      cmp r5, #0
004ae908  0e 00 00 0a                                      beq #0x4ae948
004ae90c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae910  00 40 a0 e3                                      mov r4, #0
004ae914  02 30 93 e7                                      ldr r3, [r3, r2]
004ae918  00 70 93 e5                                      ldr r7, [r3]
004ae91c  02 00 00 ea                                      b #0x4ae92c
004ae920  01 40 84 e2                                      add r4, r4, #1
004ae924  05 00 54 e1                                      cmp r4, r5
004ae928  06 00 00 0a                                      beq #0x4ae948
004ae92c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae930  06 00 a0 e1                                      mov r0, r6
004ae934  78 7e f9 eb                                      bl #0x30e31c
004ae938  00 00 50 e3                                      cmp r0, #0
004ae93c  f7 ff ff 1a                                      bne #0x4ae920
004ae940  04 00 a0 e1                                      mov r0, r4
004ae944  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004ae948  00 00 e0 e3                                      mvn r0, #0
004ae94c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ae950  9c 61 4e 00 ec 11 00 00 38 23 00 00              .byte 0x9c, 0x61, 0x4e, 0x00, 0xec, 0x11, 0x00, 0x00, 0x38, 0x23, 0x00, 0x00

; FUNCTION 0x004ae9b4, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_19AnimatedEffectTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::AnimatedEffectTable>(char const*)
; decoder-mode: arm
004ae9b4  60 30 9f e5                                      ldr r3, [pc, #0x60]
004ae9b8  60 20 9f e5                                      ldr r2, [pc, #0x60]
004ae9bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ae9c0  03 30 8f e0                                      add r3, pc, r3
004ae9c4  02 20 93 e7                                      ldr r2, [r3, r2]
004ae9c8  00 60 a0 e1                                      mov r6, r0
004ae9cc  00 50 92 e5                                      ldr r5, [r2]
004ae9d0  00 00 55 e3                                      cmp r5, #0
004ae9d4  0e 00 00 0a                                      beq #0x4aea14
004ae9d8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004ae9dc  00 40 a0 e3                                      mov r4, #0
004ae9e0  02 30 93 e7                                      ldr r3, [r3, r2]
004ae9e4  00 70 93 e5                                      ldr r7, [r3]
004ae9e8  02 00 00 ea                                      b #0x4ae9f8
004ae9ec  01 40 84 e2                                      add r4, r4, #1
004ae9f0  05 00 54 e1                                      cmp r4, r5
004ae9f4  06 00 00 0a                                      beq #0x4aea14
004ae9f8  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004ae9fc  06 00 a0 e1                                      mov r0, r6
004aea00  45 7e f9 eb                                      bl #0x30e31c
004aea04  00 00 50 e3                                      cmp r0, #0
004aea08  f7 ff ff 1a                                      bne #0x4ae9ec
004aea0c  04 00 a0 e1                                      mov r0, r4
004aea10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004aea14  00 00 e0 e3                                      mvn r0, #0
004aea18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aea1c  d0 60 4e 00 c4 06 00 00 94 12 00 00              .byte 0xd0, 0x60, 0x4e, 0x00, 0xc4, 0x06, 0x00, 0x00, 0x94, 0x12, 0x00, 0x00

; FUNCTION 0x004aea80, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_7DialogsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::Dialogs>(char const*)
; decoder-mode: arm
004aea80  60 30 9f e5                                      ldr r3, [pc, #0x60]
004aea84  60 20 9f e5                                      ldr r2, [pc, #0x60]
004aea88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004aea8c  03 30 8f e0                                      add r3, pc, r3
004aea90  02 20 93 e7                                      ldr r2, [r3, r2]
004aea94  00 60 a0 e1                                      mov r6, r0
004aea98  00 50 92 e5                                      ldr r5, [r2]
004aea9c  00 00 55 e3                                      cmp r5, #0
004aeaa0  0e 00 00 0a                                      beq #0x4aeae0
004aeaa4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004aeaa8  00 40 a0 e3                                      mov r4, #0
004aeaac  02 30 93 e7                                      ldr r3, [r3, r2]
004aeab0  00 70 93 e5                                      ldr r7, [r3]
004aeab4  02 00 00 ea                                      b #0x4aeac4
004aeab8  01 40 84 e2                                      add r4, r4, #1
004aeabc  05 00 54 e1                                      cmp r4, r5
004aeac0  06 00 00 0a                                      beq #0x4aeae0
004aeac4  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004aeac8  06 00 a0 e1                                      mov r0, r6
004aeacc  12 7e f9 eb                                      bl #0x30e31c
004aead0  00 00 50 e3                                      cmp r0, #0
004aead4  f7 ff ff 1a                                      bne #0x4aeab8
004aead8  04 00 a0 e1                                      mov r0, r4
004aeadc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004aeae0  00 00 e0 e3                                      mvn r0, #0
004aeae4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aeae8  04 60 4e 00 b8 38 00 00 54 17 00 00              .byte 0x04, 0x60, 0x4e, 0x00, 0xb8, 0x38, 0x00, 0x00, 0x54, 0x17, 0x00, 0x00

; FUNCTION 0x004aeb24, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_12DialogActorsEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::DialogActors>(char const*)
; decoder-mode: arm
004aeb24  60 30 9f e5                                      ldr r3, [pc, #0x60]
004aeb28  60 20 9f e5                                      ldr r2, [pc, #0x60]
004aeb2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004aeb30  03 30 8f e0                                      add r3, pc, r3
004aeb34  02 20 93 e7                                      ldr r2, [r3, r2]
004aeb38  00 60 a0 e1                                      mov r6, r0
004aeb3c  00 50 92 e5                                      ldr r5, [r2]
004aeb40  00 00 55 e3                                      cmp r5, #0
004aeb44  0e 00 00 0a                                      beq #0x4aeb84
004aeb48  44 20 9f e5                                      ldr r2, [pc, #0x44]
004aeb4c  00 40 a0 e3                                      mov r4, #0
004aeb50  02 30 93 e7                                      ldr r3, [r3, r2]
004aeb54  00 70 93 e5                                      ldr r7, [r3]
004aeb58  02 00 00 ea                                      b #0x4aeb68
004aeb5c  01 40 84 e2                                      add r4, r4, #1
004aeb60  05 00 54 e1                                      cmp r4, r5
004aeb64  06 00 00 0a                                      beq #0x4aeb84
004aeb68  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004aeb6c  06 00 a0 e1                                      mov r0, r6
004aeb70  e9 7d f9 eb                                      bl #0x30e31c
004aeb74  00 00 50 e3                                      cmp r0, #0
004aeb78  f7 ff ff 1a                                      bne #0x4aeb5c
004aeb7c  04 00 a0 e1                                      mov r0, r4
004aeb80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004aeb84  00 00 e0 e3                                      mvn r0, #0
004aeb88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aeb8c  60 5f 4e 00 64 49 00 00 78 3b 00 00              .byte 0x60, 0x5f, 0x4e, 0x00, 0x64, 0x49, 0x00, 0x00, 0x78, 0x3b, 0x00, 0x00

; FUNCTION 0x004aebf0, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_15GameOptionTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::GameOptionTable>(char const*)
; decoder-mode: arm
004aebf0  60 30 9f e5                                      ldr r3, [pc, #0x60]
004aebf4  60 20 9f e5                                      ldr r2, [pc, #0x60]
004aebf8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004aebfc  03 30 8f e0                                      add r3, pc, r3
004aec00  02 20 93 e7                                      ldr r2, [r3, r2]
004aec04  00 60 a0 e1                                      mov r6, r0
004aec08  00 50 92 e5                                      ldr r5, [r2]
004aec0c  00 00 55 e3                                      cmp r5, #0
004aec10  0e 00 00 0a                                      beq #0x4aec50
004aec14  44 20 9f e5                                      ldr r2, [pc, #0x44]
004aec18  00 40 a0 e3                                      mov r4, #0
004aec1c  02 30 93 e7                                      ldr r3, [r3, r2]
004aec20  00 70 93 e5                                      ldr r7, [r3]
004aec24  02 00 00 ea                                      b #0x4aec34
004aec28  01 40 84 e2                                      add r4, r4, #1
004aec2c  05 00 54 e1                                      cmp r4, r5
004aec30  06 00 00 0a                                      beq #0x4aec50
004aec34  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004aec38  06 00 a0 e1                                      mov r0, r6
004aec3c  b6 7d f9 eb                                      bl #0x30e31c
004aec40  00 00 50 e3                                      cmp r0, #0
004aec44  f7 ff ff 1a                                      bne #0x4aec28
004aec48  04 00 a0 e1                                      mov r0, r4
004aec4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004aec50  00 00 e0 e3                                      mvn r0, #0
004aec54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aec58  94 5e 4e 00 60 35 00 00 3c 1f 00 00              .byte 0x94, 0x5e, 0x4e, 0x00, 0x60, 0x35, 0x00, 0x00, 0x3c, 0x1f, 0x00, 0x00

; FUNCTION 0x004aecbc, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_16GameDifficultiesEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::GameDifficulties>(char const*)
; decoder-mode: arm
004aecbc  60 30 9f e5                                      ldr r3, [pc, #0x60]
004aecc0  60 20 9f e5                                      ldr r2, [pc, #0x60]
004aecc4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004aecc8  03 30 8f e0                                      add r3, pc, r3
004aeccc  02 20 93 e7                                      ldr r2, [r3, r2]
004aecd0  00 60 a0 e1                                      mov r6, r0
004aecd4  00 50 92 e5                                      ldr r5, [r2]
004aecd8  00 00 55 e3                                      cmp r5, #0
004aecdc  0e 00 00 0a                                      beq #0x4aed1c
004aece0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004aece4  00 40 a0 e3                                      mov r4, #0
004aece8  02 30 93 e7                                      ldr r3, [r3, r2]
004aecec  00 70 93 e5                                      ldr r7, [r3]
004aecf0  02 00 00 ea                                      b #0x4aed00
004aecf4  01 40 84 e2                                      add r4, r4, #1
004aecf8  05 00 54 e1                                      cmp r4, r5
004aecfc  06 00 00 0a                                      beq #0x4aed1c
004aed00  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004aed04  06 00 a0 e1                                      mov r0, r6
004aed08  83 7d f9 eb                                      bl #0x30e31c
004aed0c  00 00 50 e3                                      cmp r0, #0
004aed10  f7 ff ff 1a                                      bne #0x4aecf4
004aed14  04 00 a0 e1                                      mov r0, r4
004aed18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004aed1c  00 00 e0 e3                                      mvn r0, #0
004aed20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aed24  c8 5d 4e 00 30 35 00 00 80 48 00 00              .byte 0xc8, 0x5d, 0x4e, 0x00, 0x30, 0x35, 0x00, 0x00, 0x80, 0x48, 0x00, 0x00

; FUNCTION 0x004aed88, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_19DesignSettingsTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::DesignSettingsTable>(char const*)
; decoder-mode: arm
004aed88  60 30 9f e5                                      ldr r3, [pc, #0x60]
004aed8c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004aed90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004aed94  03 30 8f e0                                      add r3, pc, r3
004aed98  02 20 93 e7                                      ldr r2, [r3, r2]
004aed9c  00 60 a0 e1                                      mov r6, r0
004aeda0  00 50 92 e5                                      ldr r5, [r2]
004aeda4  00 00 55 e3                                      cmp r5, #0
004aeda8  0e 00 00 0a                                      beq #0x4aede8
004aedac  44 20 9f e5                                      ldr r2, [pc, #0x44]
004aedb0  00 40 a0 e3                                      mov r4, #0
004aedb4  02 30 93 e7                                      ldr r3, [r3, r2]
004aedb8  00 70 93 e5                                      ldr r7, [r3]
004aedbc  02 00 00 ea                                      b #0x4aedcc
004aedc0  01 40 84 e2                                      add r4, r4, #1
004aedc4  05 00 54 e1                                      cmp r4, r5
004aedc8  06 00 00 0a                                      beq #0x4aede8
004aedcc  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004aedd0  06 00 a0 e1                                      mov r0, r6
004aedd4  50 7d f9 eb                                      bl #0x30e31c
004aedd8  00 00 50 e3                                      cmp r0, #0
004aeddc  f7 ff ff 1a                                      bne #0x4aedc0
004aede0  04 00 a0 e1                                      mov r0, r4
004aede4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004aede8  00 00 e0 e3                                      mvn r0, #0
004aedec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aedf0  fc 5c 4e 00 e4 2e 00 00 24 48 00 00              .byte 0xfc, 0x5c, 0x4e, 0x00, 0xe4, 0x2e, 0x00, 0x00, 0x24, 0x48, 0x00, 0x00

; FUNCTION 0x004aee58, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_9RectTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::RectTable>(char const*)
; decoder-mode: arm
004aee58  60 30 9f e5                                      ldr r3, [pc, #0x60]
004aee5c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004aee60  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004aee64  03 30 8f e0                                      add r3, pc, r3
004aee68  02 20 93 e7                                      ldr r2, [r3, r2]
004aee6c  00 60 a0 e1                                      mov r6, r0
004aee70  00 50 92 e5                                      ldr r5, [r2]
004aee74  00 00 55 e3                                      cmp r5, #0
004aee78  0e 00 00 0a                                      beq #0x4aeeb8
004aee7c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004aee80  00 40 a0 e3                                      mov r4, #0
004aee84  02 30 93 e7                                      ldr r3, [r3, r2]
004aee88  00 70 93 e5                                      ldr r7, [r3]
004aee8c  02 00 00 ea                                      b #0x4aee9c
004aee90  01 40 84 e2                                      add r4, r4, #1
004aee94  05 00 54 e1                                      cmp r4, r5
004aee98  06 00 00 0a                                      beq #0x4aeeb8
004aee9c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004aeea0  06 00 a0 e1                                      mov r0, r6
004aeea4  1c 7d f9 eb                                      bl #0x30e31c
004aeea8  00 00 50 e3                                      cmp r0, #0
004aeeac  f7 ff ff 1a                                      bne #0x4aee90
004aeeb0  04 00 a0 e1                                      mov r0, r4
004aeeb4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004aeeb8  00 00 e0 e3                                      mvn r0, #0
004aeebc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aeec0  2c 5c 4e 00 cc 33 00 00 68 47 00 00              .byte 0x2c, 0x5c, 0x4e, 0x00, 0xcc, 0x33, 0x00, 0x00, 0x68, 0x47, 0x00, 0x00

; FUNCTION 0x004aef24, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_18Charater_TemplatesEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::Charater_Templates>(char const*)
; decoder-mode: arm
004aef24  60 30 9f e5                                      ldr r3, [pc, #0x60]
004aef28  60 20 9f e5                                      ldr r2, [pc, #0x60]
004aef2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004aef30  03 30 8f e0                                      add r3, pc, r3
004aef34  02 20 93 e7                                      ldr r2, [r3, r2]
004aef38  00 60 a0 e1                                      mov r6, r0
004aef3c  00 50 92 e5                                      ldr r5, [r2]
004aef40  00 00 55 e3                                      cmp r5, #0
004aef44  0e 00 00 0a                                      beq #0x4aef84
004aef48  44 20 9f e5                                      ldr r2, [pc, #0x44]
004aef4c  00 40 a0 e3                                      mov r4, #0
004aef50  02 30 93 e7                                      ldr r3, [r3, r2]
004aef54  00 70 93 e5                                      ldr r7, [r3]
004aef58  02 00 00 ea                                      b #0x4aef68
004aef5c  01 40 84 e2                                      add r4, r4, #1
004aef60  05 00 54 e1                                      cmp r4, r5
004aef64  06 00 00 0a                                      beq #0x4aef84
004aef68  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004aef6c  06 00 a0 e1                                      mov r0, r6
004aef70  e9 7c f9 eb                                      bl #0x30e31c
004aef74  00 00 50 e3                                      cmp r0, #0
004aef78  f7 ff ff 1a                                      bne #0x4aef5c
004aef7c  04 00 a0 e1                                      mov r0, r4
004aef80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004aef84  00 00 e0 e3                                      mvn r0, #0
004aef88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004aef8c  60 5b 4e 00 c8 0b 00 00 3c 17 00 00              .byte 0x60, 0x5b, 0x4e, 0x00, 0xc8, 0x0b, 0x00, 0x00, 0x3c, 0x17, 0x00, 0x00

; FUNCTION 0x004aefc8, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_13StatListTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::StatListTable>(char const*)
; decoder-mode: arm
004aefc8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004aefcc  60 20 9f e5                                      ldr r2, [pc, #0x60]
004aefd0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004aefd4  03 30 8f e0                                      add r3, pc, r3
004aefd8  02 20 93 e7                                      ldr r2, [r3, r2]
004aefdc  00 60 a0 e1                                      mov r6, r0
004aefe0  00 50 92 e5                                      ldr r5, [r2]
004aefe4  00 00 55 e3                                      cmp r5, #0
004aefe8  0e 00 00 0a                                      beq #0x4af028
004aefec  44 20 9f e5                                      ldr r2, [pc, #0x44]
004aeff0  00 40 a0 e3                                      mov r4, #0
004aeff4  02 30 93 e7                                      ldr r3, [r3, r2]
004aeff8  00 70 93 e5                                      ldr r7, [r3]
004aeffc  02 00 00 ea                                      b #0x4af00c
004af000  01 40 84 e2                                      add r4, r4, #1
004af004  05 00 54 e1                                      cmp r4, r5
004af008  06 00 00 0a                                      beq #0x4af028
004af00c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004af010  06 00 a0 e1                                      mov r0, r6
004af014  c0 7c f9 eb                                      bl #0x30e31c
004af018  00 00 50 e3                                      cmp r0, #0
004af01c  f7 ff ff 1a                                      bne #0x4af000
004af020  04 00 a0 e1                                      mov r0, r4
004af024  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004af028  00 00 e0 e3                                      mvn r0, #0
004af02c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004af030  bc 5a 4e 00 50 23 00 00 68 1d 00 00              .byte 0xbc, 0x5a, 0x4e, 0x00, 0x50, 0x23, 0x00, 0x00, 0x68, 0x1d, 0x00, 0x00

; FUNCTION 0x004af06c, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_25StatAutoAssignSchemeTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::StatAutoAssignSchemeTable>(char const*)
; decoder-mode: arm
004af06c  60 30 9f e5                                      ldr r3, [pc, #0x60]
004af070  60 20 9f e5                                      ldr r2, [pc, #0x60]
004af074  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004af078  03 30 8f e0                                      add r3, pc, r3
004af07c  02 20 93 e7                                      ldr r2, [r3, r2]
004af080  00 60 a0 e1                                      mov r6, r0
004af084  00 50 92 e5                                      ldr r5, [r2]
004af088  00 00 55 e3                                      cmp r5, #0
004af08c  0e 00 00 0a                                      beq #0x4af0cc
004af090  44 20 9f e5                                      ldr r2, [pc, #0x44]
004af094  00 40 a0 e3                                      mov r4, #0
004af098  02 30 93 e7                                      ldr r3, [r3, r2]
004af09c  00 70 93 e5                                      ldr r7, [r3]
004af0a0  02 00 00 ea                                      b #0x4af0b0
004af0a4  01 40 84 e2                                      add r4, r4, #1
004af0a8  05 00 54 e1                                      cmp r4, r5
004af0ac  06 00 00 0a                                      beq #0x4af0cc
004af0b0  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004af0b4  06 00 a0 e1                                      mov r0, r6
004af0b8  97 7c f9 eb                                      bl #0x30e31c
004af0bc  00 00 50 e3                                      cmp r0, #0
004af0c0  f7 ff ff 1a                                      bne #0x4af0a4
004af0c4  04 00 a0 e1                                      mov r0, r4
004af0c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004af0cc  00 00 e0 e3                                      mvn r0, #0
004af0d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004af0d4  18 5a 4e 00 e8 23 00 00 44 0d 00 00              .byte 0x18, 0x5a, 0x4e, 0x00, 0xe8, 0x23, 0x00, 0x00, 0x44, 0x0d, 0x00, 0x00

; FUNCTION 0x004af16c, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_10ClassTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::ClassTable>(char const*)
; decoder-mode: arm
004af16c  60 30 9f e5                                      ldr r3, [pc, #0x60]
004af170  60 20 9f e5                                      ldr r2, [pc, #0x60]
004af174  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004af178  03 30 8f e0                                      add r3, pc, r3
004af17c  02 20 93 e7                                      ldr r2, [r3, r2]
004af180  00 60 a0 e1                                      mov r6, r0
004af184  00 50 92 e5                                      ldr r5, [r2]
004af188  00 00 55 e3                                      cmp r5, #0
004af18c  0e 00 00 0a                                      beq #0x4af1cc
004af190  44 20 9f e5                                      ldr r2, [pc, #0x44]
004af194  00 40 a0 e3                                      mov r4, #0
004af198  02 30 93 e7                                      ldr r3, [r3, r2]
004af19c  00 70 93 e5                                      ldr r7, [r3]
004af1a0  02 00 00 ea                                      b #0x4af1b0
004af1a4  01 40 84 e2                                      add r4, r4, #1
004af1a8  05 00 54 e1                                      cmp r4, r5
004af1ac  06 00 00 0a                                      beq #0x4af1cc
004af1b0  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004af1b4  06 00 a0 e1                                      mov r0, r6
004af1b8  57 7c f9 eb                                      bl #0x30e31c
004af1bc  00 00 50 e3                                      cmp r0, #0
004af1c0  f7 ff ff 1a                                      bne #0x4af1a4
004af1c4  04 00 a0 e1                                      mov r0, r4
004af1c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004af1cc  00 00 e0 e3                                      mvn r0, #0
004af1d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004af1d4  18 59 4e 00 68 35 00 00 90 2a 00 00              .byte 0x18, 0x59, 0x4e, 0x00, 0x68, 0x35, 0x00, 0x00, 0x90, 0x2a, 0x00, 0x00

; FUNCTION 0x004af210, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_13CharAnimTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::CharAnimTable>(char const*)
; decoder-mode: arm
004af210  60 30 9f e5                                      ldr r3, [pc, #0x60]
004af214  60 20 9f e5                                      ldr r2, [pc, #0x60]
004af218  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004af21c  03 30 8f e0                                      add r3, pc, r3
004af220  02 20 93 e7                                      ldr r2, [r3, r2]
004af224  00 60 a0 e1                                      mov r6, r0
004af228  00 50 92 e5                                      ldr r5, [r2]
004af22c  00 00 55 e3                                      cmp r5, #0
004af230  0e 00 00 0a                                      beq #0x4af270
004af234  44 20 9f e5                                      ldr r2, [pc, #0x44]
004af238  00 40 a0 e3                                      mov r4, #0
004af23c  02 30 93 e7                                      ldr r3, [r3, r2]
004af240  00 70 93 e5                                      ldr r7, [r3]
004af244  02 00 00 ea                                      b #0x4af254
004af248  01 40 84 e2                                      add r4, r4, #1
004af24c  05 00 54 e1                                      cmp r4, r5
004af250  06 00 00 0a                                      beq #0x4af270
004af254  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004af258  06 00 a0 e1                                      mov r0, r6
004af25c  2e 7c f9 eb                                      bl #0x30e31c
004af260  00 00 50 e3                                      cmp r0, #0
004af264  f7 ff ff 1a                                      bne #0x4af248
004af268  04 00 a0 e1                                      mov r0, r4
004af26c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004af270  00 00 e0 e3                                      mvn r0, #0
004af274  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004af278  74 58 4e 00 c0 28 00 00 08 0d 00 00              .byte 0x74, 0x58, 0x4e, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x08, 0x0d, 0x00, 0x00

; FUNCTION 0x004af2e0, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_15CamAnimSetTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::CamAnimSetTable>(char const*)
; decoder-mode: arm
004af2e0  60 30 9f e5                                      ldr r3, [pc, #0x60]
004af2e4  60 20 9f e5                                      ldr r2, [pc, #0x60]
004af2e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004af2ec  03 30 8f e0                                      add r3, pc, r3
004af2f0  02 20 93 e7                                      ldr r2, [r3, r2]
004af2f4  00 60 a0 e1                                      mov r6, r0
004af2f8  00 50 92 e5                                      ldr r5, [r2]
004af2fc  00 00 55 e3                                      cmp r5, #0
004af300  0e 00 00 0a                                      beq #0x4af340
004af304  44 20 9f e5                                      ldr r2, [pc, #0x44]
004af308  00 40 a0 e3                                      mov r4, #0
004af30c  02 30 93 e7                                      ldr r3, [r3, r2]
004af310  00 70 93 e5                                      ldr r7, [r3]
004af314  02 00 00 ea                                      b #0x4af324
004af318  01 40 84 e2                                      add r4, r4, #1
004af31c  05 00 54 e1                                      cmp r4, r5
004af320  06 00 00 0a                                      beq #0x4af340
004af324  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004af328  06 00 a0 e1                                      mov r0, r6
004af32c  fa 7b f9 eb                                      bl #0x30e31c
004af330  00 00 50 e3                                      cmp r0, #0
004af334  f7 ff ff 1a                                      bne #0x4af318
004af338  04 00 a0 e1                                      mov r0, r4
004af33c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004af340  00 00 e0 e3                                      mvn r0, #0
004af344  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004af348  a4 57 4e 00 e4 38 00 00 5c 3a 00 00              .byte 0xa4, 0x57, 0x4e, 0x00, 0xe4, 0x38, 0x00, 0x00, 0x5c, 0x3a, 0x00, 0x00

; FUNCTION 0x004af3ac, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_9AnimTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::AnimTable>(char const*)
; decoder-mode: arm
004af3ac  60 30 9f e5                                      ldr r3, [pc, #0x60]
004af3b0  60 20 9f e5                                      ldr r2, [pc, #0x60]
004af3b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004af3b8  03 30 8f e0                                      add r3, pc, r3
004af3bc  02 20 93 e7                                      ldr r2, [r3, r2]
004af3c0  00 60 a0 e1                                      mov r6, r0
004af3c4  00 50 92 e5                                      ldr r5, [r2]
004af3c8  00 00 55 e3                                      cmp r5, #0
004af3cc  0e 00 00 0a                                      beq #0x4af40c
004af3d0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004af3d4  00 40 a0 e3                                      mov r4, #0
004af3d8  02 30 93 e7                                      ldr r3, [r3, r2]
004af3dc  00 70 93 e5                                      ldr r7, [r3]
004af3e0  02 00 00 ea                                      b #0x4af3f0
004af3e4  01 40 84 e2                                      add r4, r4, #1
004af3e8  05 00 54 e1                                      cmp r4, r5
004af3ec  06 00 00 0a                                      beq #0x4af40c
004af3f0  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004af3f4  06 00 a0 e1                                      mov r0, r6
004af3f8  c7 7b f9 eb                                      bl #0x30e31c
004af3fc  00 00 50 e3                                      cmp r0, #0
004af400  f7 ff ff 1a                                      bne #0x4af3e4
004af404  04 00 a0 e1                                      mov r0, r4
004af408  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004af40c  00 00 e0 e3                                      mvn r0, #0
004af410  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004af414  d8 56 4e 00 48 2a 00 00 44 20 00 00              .byte 0xd8, 0x56, 0x4e, 0x00, 0x48, 0x2a, 0x00, 0x00, 0x44, 0x20, 0x00, 0x00

; FUNCTION 0x004af478, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_14AIFactionTableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::AIFactionTable>(char const*)
; decoder-mode: arm
004af478  60 30 9f e5                                      ldr r3, [pc, #0x60]
004af47c  60 20 9f e5                                      ldr r2, [pc, #0x60]
004af480  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004af484  03 30 8f e0                                      add r3, pc, r3
004af488  02 20 93 e7                                      ldr r2, [r3, r2]
004af48c  00 60 a0 e1                                      mov r6, r0
004af490  00 50 92 e5                                      ldr r5, [r2]
004af494  00 00 55 e3                                      cmp r5, #0
004af498  0e 00 00 0a                                      beq #0x4af4d8
004af49c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004af4a0  00 40 a0 e3                                      mov r4, #0
004af4a4  02 30 93 e7                                      ldr r3, [r3, r2]
004af4a8  00 70 93 e5                                      ldr r7, [r3]
004af4ac  02 00 00 ea                                      b #0x4af4bc
004af4b0  01 40 84 e2                                      add r4, r4, #1
004af4b4  05 00 54 e1                                      cmp r4, r5
004af4b8  06 00 00 0a                                      beq #0x4af4d8
004af4bc  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004af4c0  06 00 a0 e1                                      mov r0, r6
004af4c4  94 7b f9 eb                                      bl #0x30e31c
004af4c8  00 00 50 e3                                      cmp r0, #0
004af4cc  f7 ff ff 1a                                      bne #0x4af4b0
004af4d0  04 00 a0 e1                                      mov r0, r4
004af4d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004af4d8  00 00 e0 e3                                      mvn r0, #0
004af4dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004af4e0  0c 56 4e 00 44 22 00 00 34 37 00 00              .byte 0x0c, 0x56, 0x4e, 0x00, 0x44, 0x22, 0x00, 0x00, 0x34, 0x37, 0x00, 0x00

; FUNCTION 0x004af51c, declared_size=116, range_size=116, mode=arm
; class-group: int Arrays
; alias: _ZN6Arrays19GetMemberIDByStringINS_7AITableEEEiPKc
; demangled: int Arrays::GetMemberIDByString<Arrays::AITable>(char const*)
; decoder-mode: arm
004af51c  60 30 9f e5                                      ldr r3, [pc, #0x60]
004af520  60 20 9f e5                                      ldr r2, [pc, #0x60]
004af524  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004af528  03 30 8f e0                                      add r3, pc, r3
004af52c  02 20 93 e7                                      ldr r2, [r3, r2]
004af530  00 60 a0 e1                                      mov r6, r0
004af534  00 50 92 e5                                      ldr r5, [r2]
004af538  00 00 55 e3                                      cmp r5, #0
004af53c  0e 00 00 0a                                      beq #0x4af57c
004af540  44 20 9f e5                                      ldr r2, [pc, #0x44]
004af544  00 40 a0 e3                                      mov r4, #0
004af548  02 30 93 e7                                      ldr r3, [r3, r2]
004af54c  00 70 93 e5                                      ldr r7, [r3]
004af550  02 00 00 ea                                      b #0x4af560
004af554  01 40 84 e2                                      add r4, r4, #1
004af558  05 00 54 e1                                      cmp r4, r5
004af55c  06 00 00 0a                                      beq #0x4af57c
004af560  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
004af564  06 00 a0 e1                                      mov r0, r6
004af568  6b 7b f9 eb                                      bl #0x30e31c
004af56c  00 00 50 e3                                      cmp r0, #0
004af570  f7 ff ff 1a                                      bne #0x4af554
004af574  04 00 a0 e1                                      mov r0, r4
004af578  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004af57c  00 00 e0 e3                                      mvn r0, #0
004af580  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004af584  68 55 4e 00 2c 11 00 00 fc 4a 00 00              .byte 0x68, 0x55, 0x4e, 0x00, 0x2c, 0x11, 0x00, 0x00, 0xfc, 0x4a, 0x00, 0x00
