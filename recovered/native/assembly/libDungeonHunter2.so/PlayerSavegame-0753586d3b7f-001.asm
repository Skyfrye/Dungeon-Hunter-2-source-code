; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004634e4, declared_size=16, range_size=16, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame20SG_GetFilenamePrefixEv
; demangled: PlayerSavegame::SG_GetFilenamePrefix()
; decoder-mode: arm
004634e4  04 00 9f e5                                      ldr r0, [pc, #4]
004634e8  00 00 8f e0                                      add r0, pc, r0
004634ec  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
004634f0  70 b0 45 00                                      .byte 0x70, 0xb0, 0x45, 0x00

; FUNCTION 0x004634f4, declared_size=16, range_size=16, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame23SG_GetFilenameExtensionEv
; demangled: PlayerSavegame::SG_GetFilenameExtension()
; decoder-mode: arm
004634f4  04 00 9f e5                                      ldr r0, [pc, #4]
004634f8  00 00 8f e0                                      add r0, pc, r0
004634fc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00463500  88 d2 45 00                                      .byte 0x88, 0xd2, 0x45, 0x00

; FUNCTION 0x00463504, declared_size=16, range_size=16, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame33SG_GetCheckpointFilenameExtensionEv
; demangled: PlayerSavegame::SG_GetCheckpointFilenameExtension()
; decoder-mode: arm
00463504  04 00 9f e5                                      ldr r0, [pc, #4]
00463508  00 00 8f e0                                      add r0, pc, r0
0046350c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00463510  b0 9c 46 00                                      .byte 0xb0, 0x9c, 0x46, 0x00

; FUNCTION 0x00463514, declared_size=72, range_size=72, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame9SG_ExistsEPKc
; demangled: PlayerSavegame::SG_Exists(char const*)
; decoder-mode: arm
00463514  38 30 9f e5                                      ldr r3, [pc, #0x38]
00463518  00 10 50 e2                                      subs r1, r0, #0
0046351c  10 40 2d e9                                      push {r4, lr}
00463520  03 30 8f e0                                      add r3, pc, r3
00463524  08 00 00 0a                                      beq #0x46354c
00463528  28 20 9f e5                                      ldr r2, [pc, #0x28]
0046352c  02 30 93 e7                                      ldr r3, [r3, r2]
00463530  10 30 93 e5                                      ldr r3, [r3, #0x10]
00463534  34 30 93 e5                                      ldr r3, [r3, #0x34]
00463538  03 00 a0 e1                                      mov r0, r3
0046353c  00 30 93 e5                                      ldr r3, [r3]
00463540  0f e0 a0 e1                                      mov lr, pc
00463544  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
00463548  10 80 bd e8                                      pop {r4, pc}
0046354c  01 00 a0 e1                                      mov r0, r1
00463550  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00463554  70 15 53 00 f4 37 00 00                          .byte 0x70, 0x15, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0046355c, declared_size=72, range_size=72, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame9SG_DeleteEPKc
; demangled: PlayerSavegame::SG_Delete(char const*)
; decoder-mode: arm
0046355c  38 30 9f e5                                      ldr r3, [pc, #0x38]
00463560  00 10 50 e2                                      subs r1, r0, #0
00463564  10 40 2d e9                                      push {r4, lr}
00463568  03 30 8f e0                                      add r3, pc, r3
0046356c  08 00 00 0a                                      beq #0x463594
00463570  28 20 9f e5                                      ldr r2, [pc, #0x28]
00463574  02 30 93 e7                                      ldr r3, [r3, r2]
00463578  10 30 93 e5                                      ldr r3, [r3, #0x10]
0046357c  34 30 93 e5                                      ldr r3, [r3, #0x34]
00463580  03 00 a0 e1                                      mov r0, r3
00463584  00 30 93 e5                                      ldr r3, [r3]
00463588  0f e0 a0 e1                                      mov lr, pc
0046358c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00463590  10 80 bd e8                                      pop {r4, pc}
00463594  01 00 a0 e1                                      mov r0, r1
00463598  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0046359c  28 15 53 00 f4 37 00 00                          .byte 0x28, 0x15, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004635a4, declared_size=12, range_size=12, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame18SG_GetSavefileNameEv
; demangled: PlayerSavegame::SG_GetSavefileName() const
; decoder-mode: arm
004635a4  08 30 90 e5                                      ldr r3, [r0, #8]
004635a8  18 00 93 e5                                      ldr r0, [r3, #0x18]
004635ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x00463654, declared_size=84, range_size=84, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame14SG_SynchronizeEb
; demangled: PlayerSavegame::SG_Synchronize(bool)
; decoder-mode: arm
00463654  44 30 9f e5                                      ldr r3, [pc, #0x44]
00463658  44 20 9f e5                                      ldr r2, [pc, #0x44]
0046365c  04 40 2d e5                                      str r4, [sp, #-4]!
00463660  03 30 8f e0                                      add r3, pc, r3
00463664  02 40 93 e7                                      ldr r4, [r3, r2]
00463668  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
0046366c  01 20 a0 e1                                      mov r2, r1
00463670  00 30 94 e5                                      ldr r3, [r4]
00463674  03 00 5c e1                                      cmp ip, r3
00463678  03 00 00 ba                                      blt #0x46368c
0046367c  46 1f 80 e2                                      add r1, r0, #0x118
00463680  b8 00 80 e2                                      add r0, r0, #0xb8
00463684  10 00 bd e8                                      ldm sp!, {r4}
00463688  ed 1f 00 ea                                      b #0x46b644
0046368c  00 00 51 e3                                      cmp r1, #0
00463690  f9 ff ff 0a                                      beq #0x46367c
00463694  00 00 a0 e3                                      mov r0, #0
00463698  10 00 bd e8                                      ldm sp!, {r4}
0046369c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
004636a0  30 14 53 00 9c 1a 00 00                          .byte 0x30, 0x14, 0x53, 0x00, 0x9c, 0x1a, 0x00, 0x00

; FUNCTION 0x004636a8, declared_size=28, range_size=28, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame22SG_GetSlotFromFilenameEPKc
; demangled: PlayerSavegame::SG_GetSlotFromFilename(char const*)
; decoder-mode: arm
004636a8  10 40 2d e9                                      push {r4, lr}
004636ac  00 40 a0 e1                                      mov r4, r0
004636b0  8b ff ff eb                                      bl #0x4634e4
004636b4  e6 a9 fa eb                                      bl #0x30de54
004636b8  00 00 84 e0                                      add r0, r4, r0
004636bc  10 40 bd e8                                      pop {r4, lr}
004636c0  73 aa fa ea                                      b #0x30e094

; FUNCTION 0x004636c4, declared_size=36, range_size=36, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame9SG_UpdateEb
; demangled: PlayerSavegame::SG_Update(bool)
; decoder-mode: arm
004636c4  70 40 2d e9                                      push {r4, r5, r6, lr}
004636c8  00 40 a0 e1                                      mov r4, r0
004636cc  01 50 a0 e1                                      mov r5, r1
004636d0  c4 10 00 eb                                      bl #0x4679e8
004636d4  04 00 a0 e1                                      mov r0, r4
004636d8  a9 0b 00 eb                                      bl #0x466584
004636dc  05 10 a0 e1                                      mov r1, r5
004636e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004636e4  1b 21 00 ea                                      b #0x46bb58

; FUNCTION 0x0046378c, declared_size=228, range_size=228, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegameD1Ev
; demangled: PlayerSavegame::~PlayerSavegame()
; decoder-mode: arm
0046378c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00463790  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
00463794  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
00463798  08 10 90 e5                                      ldr r1, [r0, #8]
0046379c  03 30 8f e0                                      add r3, pc, r3
004637a0  02 20 93 e7                                      ldr r2, [r3, r2]
004637a4  00 00 51 e3                                      cmp r1, #0
004637a8  00 50 a0 e1                                      mov r5, r0
004637ac  08 20 82 e2                                      add r2, r2, #8
004637b0  00 20 80 e5                                      str r2, [r0]
004637b4  05 00 00 0a                                      beq #0x4637d0
004637b8  00 30 91 e5                                      ldr r3, [r1]
004637bc  01 00 a0 e1                                      mov r0, r1
004637c0  0f e0 a0 e1                                      mov lr, pc
004637c4  04 f0 93 e5                                      ldr pc, [r3, #4]
004637c8  00 30 a0 e3                                      mov r3, #0
004637cc  08 30 85 e5                                      str r3, [r5, #8]
004637d0  00 60 a0 e3                                      mov r6, #0
004637d4  05 40 a0 e1                                      mov r4, r5
004637d8  06 70 a0 e1                                      mov r7, r6
004637dc  68 00 94 e5                                      ldr r0, [r4, #0x68]
004637e0  01 60 86 e2                                      add r6, r6, #1
004637e4  00 00 50 e3                                      cmp r0, #0
004637e8  01 00 00 0a                                      beq #0x4637f4
004637ec  13 b3 fa eb                                      bl #0x310440
004637f0  68 70 84 e5                                      str r7, [r4, #0x68]
004637f4  74 00 94 e5                                      ldr r0, [r4, #0x74]
004637f8  00 00 50 e3                                      cmp r0, #0
004637fc  01 00 00 0a                                      beq #0x463808
00463800  0e b3 fa eb                                      bl #0x310440
00463804  74 70 84 e5                                      str r7, [r4, #0x74]
00463808  94 00 94 e5                                      ldr r0, [r4, #0x94]
0046380c  00 00 50 e3                                      cmp r0, #0
00463810  01 00 00 0a                                      beq #0x46381c
00463814  09 b3 fa eb                                      bl #0x310440
00463818  94 70 84 e5                                      str r7, [r4, #0x94]
0046381c  03 00 56 e3                                      cmp r6, #3
00463820  04 40 84 e2                                      add r4, r4, #4
00463824  ec ff ff 1a                                      bne #0x4637dc
00463828  80 00 95 e5                                      ldr r0, [r5, #0x80]
0046382c  00 00 50 e3                                      cmp r0, #0
00463830  02 00 00 0a                                      beq #0x463840
00463834  01 b3 fa eb                                      bl #0x310440
00463838  00 30 a0 e3                                      mov r3, #0
0046383c  80 30 85 e5                                      str r3, [r5, #0x80]
00463840  46 0f 85 e2                                      add r0, r5, #0x118
00463844  88 21 00 eb                                      bl #0x46be6c
00463848  b8 00 85 e2                                      add r0, r5, #0xb8
0046384c  86 21 00 eb                                      bl #0x46be6c
00463850  88 00 85 e2                                      add r0, r5, #0x88
00463854  a3 ff ff eb                                      bl #0x4636e8
00463858  18 00 85 e2                                      add r0, r5, #0x18
0046385c  52 c0 fa eb                                      bl #0x3139ac
00463860  05 00 a0 e1                                      mov r0, r5
00463864  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00463868  f4 12 53 00 bc 4b 00 00                          .byte 0xf4, 0x12, 0x53, 0x00, 0xbc, 0x4b, 0x00, 0x00

; FUNCTION 0x00463870, declared_size=28, range_size=28, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegameD0Ev
; demangled: PlayerSavegame::~PlayerSavegame()
; decoder-mode: arm
00463870  10 40 2d e9                                      push {r4, lr}
00463874  00 40 a0 e1                                      mov r4, r0
00463878  c3 ff ff eb                                      bl #0x46378c
0046387c  04 00 a0 e1                                      mov r0, r4
00463880  ee b2 fa eb                                      bl #0x310440
00463884  04 00 a0 e1                                      mov r0, r4
00463888  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0046388c, declared_size=228, range_size=228, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegameD2Ev
; demangled: PlayerSavegame::~PlayerSavegame()
; decoder-mode: arm
0046388c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00463890  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
00463894  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
00463898  08 10 90 e5                                      ldr r1, [r0, #8]
0046389c  03 30 8f e0                                      add r3, pc, r3
004638a0  02 20 93 e7                                      ldr r2, [r3, r2]
004638a4  00 00 51 e3                                      cmp r1, #0
004638a8  00 50 a0 e1                                      mov r5, r0
004638ac  08 20 82 e2                                      add r2, r2, #8
004638b0  00 20 80 e5                                      str r2, [r0]
004638b4  05 00 00 0a                                      beq #0x4638d0
004638b8  00 30 91 e5                                      ldr r3, [r1]
004638bc  01 00 a0 e1                                      mov r0, r1
004638c0  0f e0 a0 e1                                      mov lr, pc
004638c4  04 f0 93 e5                                      ldr pc, [r3, #4]
004638c8  00 30 a0 e3                                      mov r3, #0
004638cc  08 30 85 e5                                      str r3, [r5, #8]
004638d0  00 60 a0 e3                                      mov r6, #0
004638d4  05 40 a0 e1                                      mov r4, r5
004638d8  06 70 a0 e1                                      mov r7, r6
004638dc  68 00 94 e5                                      ldr r0, [r4, #0x68]
004638e0  01 60 86 e2                                      add r6, r6, #1
004638e4  00 00 50 e3                                      cmp r0, #0
004638e8  01 00 00 0a                                      beq #0x4638f4
004638ec  d3 b2 fa eb                                      bl #0x310440
004638f0  68 70 84 e5                                      str r7, [r4, #0x68]
004638f4  74 00 94 e5                                      ldr r0, [r4, #0x74]
004638f8  00 00 50 e3                                      cmp r0, #0
004638fc  01 00 00 0a                                      beq #0x463908
00463900  ce b2 fa eb                                      bl #0x310440
00463904  74 70 84 e5                                      str r7, [r4, #0x74]
00463908  94 00 94 e5                                      ldr r0, [r4, #0x94]
0046390c  00 00 50 e3                                      cmp r0, #0
00463910  01 00 00 0a                                      beq #0x46391c
00463914  c9 b2 fa eb                                      bl #0x310440
00463918  94 70 84 e5                                      str r7, [r4, #0x94]
0046391c  03 00 56 e3                                      cmp r6, #3
00463920  04 40 84 e2                                      add r4, r4, #4
00463924  ec ff ff 1a                                      bne #0x4638dc
00463928  80 00 95 e5                                      ldr r0, [r5, #0x80]
0046392c  00 00 50 e3                                      cmp r0, #0
00463930  02 00 00 0a                                      beq #0x463940
00463934  c1 b2 fa eb                                      bl #0x310440
00463938  00 30 a0 e3                                      mov r3, #0
0046393c  80 30 85 e5                                      str r3, [r5, #0x80]
00463940  46 0f 85 e2                                      add r0, r5, #0x118
00463944  48 21 00 eb                                      bl #0x46be6c
00463948  b8 00 85 e2                                      add r0, r5, #0xb8
0046394c  46 21 00 eb                                      bl #0x46be6c
00463950  88 00 85 e2                                      add r0, r5, #0x88
00463954  63 ff ff eb                                      bl #0x4636e8
00463958  18 00 85 e2                                      add r0, r5, #0x18
0046395c  12 c0 fa eb                                      bl #0x3139ac
00463960  05 00 a0 e1                                      mov r0, r5
00463964  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00463968  f4 11 53 00 bc 4b 00 00                          .byte 0xf4, 0x11, 0x53, 0x00, 0xbc, 0x4b, 0x00, 0x00

; FUNCTION 0x00463c84, declared_size=232, range_size=232, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame14SG_GetFilenameEjRSsbb
; demangled: PlayerSavegame::SG_GetFilename(unsigned int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >&, bool, bool)
; decoder-mode: arm
00463c84  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00463c88  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
00463c8c  c4 60 9f e5                                      ldr r6, [pc, #0xc4]
00463c90  02 50 a0 e1                                      mov r5, r2
00463c94  04 40 8f e0                                      add r4, pc, r4
00463c98  06 20 94 e7                                      ldr r2, [r4, r6]
00463c9c  50 d0 4d e2                                      sub sp, sp, #0x50
00463ca0  00 80 a0 e1                                      mov r8, r0
00463ca4  00 20 92 e5                                      ldr r2, [r2]
00463ca8  01 70 a0 e1                                      mov r7, r1
00463cac  03 a0 a0 e1                                      mov sl, r3
00463cb0  4c 20 8d e5                                      str r2, [sp, #0x4c]
00463cb4  0a fe ff eb                                      bl #0x4634e4
00463cb8  00 00 55 e3                                      cmp r5, #0
00463cbc  00 90 a0 e1                                      mov sb, r0
00463cc0  06 00 00 0a                                      beq #0x463ce0
00463cc4  00 00 5a e3                                      cmp sl, #0
00463cc8  1d 00 00 1a                                      bne #0x463d44
00463ccc  88 a0 9f e5                                      ldr sl, [pc, #0x88]
00463cd0  0a a0 8f e0                                      add sl, pc, sl
00463cd4  0a fe ff eb                                      bl #0x463504
00463cd8  00 c0 a0 e1                                      mov ip, r0
00463cdc  03 00 00 ea                                      b #0x463cf0
00463ce0  03 fe ff eb                                      bl #0x4634f4
00463ce4  74 a0 9f e5                                      ldr sl, [pc, #0x74]
00463ce8  00 c0 a0 e1                                      mov ip, r0
00463cec  0a a0 8f e0                                      add sl, pc, sl
00463cf0  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00463cf4  0c 50 8d e2                                      add r5, sp, #0xc
00463cf8  08 30 a0 e1                                      mov r3, r8
00463cfc  09 20 a0 e1                                      mov r2, sb
00463d00  01 10 8f e0                                      add r1, pc, r1
00463d04  05 00 a0 e1                                      mov r0, r5
00463d08  00 14 8d e8                                      stm sp, {sl, ip}
00463d0c  74 ab fa eb                                      bl #0x30eae4
00463d10  05 00 a0 e1                                      mov r0, r5
00463d14  4e a8 fa eb                                      bl #0x30de54
00463d18  05 10 a0 e1                                      mov r1, r5
00463d1c  00 20 85 e0                                      add r2, r5, r0
00463d20  07 00 a0 e1                                      mov r0, r7
00463d24  2d b3 fa eb                                      bl #0x3109e0
00463d28  06 30 94 e7                                      ldr r3, [r4, r6]
00463d2c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00463d30  00 30 93 e5                                      ldr r3, [r3]
00463d34  03 00 52 e1                                      cmp r2, r3
00463d38  04 00 00 1a                                      bne #0x463d50
00463d3c  50 d0 8d e2                                      add sp, sp, #0x50
00463d40  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00463d44  1c a0 9f e5                                      ldr sl, [pc, #0x1c]
00463d48  0a a0 8f e0                                      add sl, pc, sl
00463d4c  e0 ff ff ea                                      b #0x463cd4
00463d50  6e a9 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00463d54  fc 0d 53 00 ac 40 00 00 98 94 46 00 1c 7b 46 00  .byte 0xfc, 0x0d, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0x94, 0x46, 0x00, 0x1c, 0x7b, 0x46, 0x00
00463d64  c8 94 46 00 28 94 46 00                          .byte 0xc8, 0x94, 0x46, 0x00, 0x28, 0x94, 0x46, 0x00

; FUNCTION 0x0046403c, declared_size=668, range_size=668, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame18SG_GetSavegameListEb
; demangled: PlayerSavegame::SG_GetSavegameList(bool)
; decoder-mode: arm
0046403c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00464040  74 82 9f e5                                      ldr r8, [pc, #0x274]
00464044  74 22 9f e5                                      ldr r2, [pc, #0x274]
00464048  74 a2 9f e5                                      ldr sl, [pc, #0x274]
0046404c  34 d0 4d e2                                      sub sp, sp, #0x34
00464050  08 80 8f e0                                      add r8, pc, r8
00464054  08 20 8d e5                                      str r2, [sp, #8]
00464058  02 20 98 e7                                      ldr r2, [r8, r2]
0046405c  0a 30 98 e7                                      ldr r3, [r8, sl]
00464060  00 60 a0 e1                                      mov r6, r0
00464064  00 00 a0 e3                                      mov r0, #0
00464068  00 20 92 e5                                      ldr r2, [r2]
0046406c  08 00 86 e5                                      str r0, [r6, #8]
00464070  00 00 86 e5                                      str r0, [r6]
00464074  04 00 86 e5                                      str r0, [r6, #4]
00464078  10 30 93 e5                                      ldr r3, [r3, #0x10]
0046407c  2c 20 8d e5                                      str r2, [sp, #0x2c]
00464080  04 10 8d e5                                      str r1, [sp, #4]
00464084  34 30 93 e5                                      ldr r3, [r3, #0x34]
00464088  00 00 53 e1                                      cmp r3, r0
0046408c  39 00 00 0a                                      beq #0x464178
00464090  30 12 9f e5                                      ldr r1, [pc, #0x230]
00464094  03 00 a0 e1                                      mov r0, r3
00464098  06 20 a0 e1                                      mov r2, r6
0046409c  00 30 93 e5                                      ldr r3, [r3]
004640a0  01 10 8f e0                                      add r1, pc, r1
004640a4  0f e0 a0 e1                                      mov lr, pc
004640a8  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
004640ac  18 32 9f e5                                      ldr r3, [pc, #0x218]
004640b0  18 52 9f e5                                      ldr r5, [pc, #0x218]
004640b4  18 92 9f e5                                      ldr sb, [pc, #0x218]
004640b8  03 30 8f e0                                      add r3, pc, r3
004640bc  0c 30 8d e5                                      str r3, [sp, #0xc]
004640c0  05 50 8f e0                                      add r5, pc, r5
004640c4  09 90 8f e0                                      add sb, pc, sb
004640c8  00 b0 96 e5                                      ldr fp, [r6]
004640cc  10 40 8d e2                                      add r4, sp, #0x10
004640d0  04 00 00 ea                                      b #0x4640e8
004640d4  0b 10 a0 e1                                      mov r1, fp
004640d8  06 00 a0 e1                                      mov r0, r6
004640dc  04 20 a0 e1                                      mov r2, r4
004640e0  c1 30 fb eb                                      bl #0x3303ec
004640e4  00 b0 a0 e1                                      mov fp, r0
004640e8  04 30 96 e5                                      ldr r3, [r6, #4]
004640ec  03 00 5b e1                                      cmp fp, r3
004640f0  1d 00 00 0a                                      beq #0x46416c
004640f4  14 70 9b e5                                      ldr r7, [fp, #0x14]
004640f8  05 10 a0 e1                                      mov r1, r5
004640fc  07 00 a0 e1                                      mov r0, r7
00464100  b3 aa fa eb                                      bl #0x30ebd4
00464104  00 00 50 e3                                      cmp r0, #0
00464108  f1 ff ff 1a                                      bne #0x4640d4
0046410c  07 00 a0 e1                                      mov r0, r7
00464110  09 10 a0 e1                                      mov r1, sb
00464114  ae aa fa eb                                      bl #0x30ebd4
00464118  00 00 50 e3                                      cmp r0, #0
0046411c  ec ff ff 1a                                      bne #0x4640d4
00464120  07 00 a0 e1                                      mov r0, r7
00464124  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00464128  a9 aa fa eb                                      bl #0x30ebd4
0046412c  00 00 50 e3                                      cmp r0, #0
00464130  e7 ff ff 1a                                      bne #0x4640d4
00464134  ee fc ff eb                                      bl #0x4634f4
00464138  00 10 a0 e1                                      mov r1, r0
0046413c  07 00 a0 e1                                      mov r0, r7
00464140  a3 aa fa eb                                      bl #0x30ebd4
00464144  00 00 50 e3                                      cmp r0, #0
00464148  e1 ff ff 0a                                      beq #0x4640d4
0046414c  e4 fc ff eb                                      bl #0x4634e4
00464150  00 10 a0 e1                                      mov r1, r0
00464154  07 00 a0 e1                                      mov r0, r7
00464158  9d aa fa eb                                      bl #0x30ebd4
0046415c  00 00 50 e3                                      cmp r0, #0
00464160  db ff ff 0a                                      beq #0x4640d4
00464164  18 b0 8b e2                                      add fp, fp, #0x18
00464168  de ff ff ea                                      b #0x4640e8
0046416c  04 30 9d e5                                      ldr r3, [sp, #4]
00464170  00 00 53 e3                                      cmp r3, #0
00464174  08 00 00 1a                                      bne #0x46419c
00464178  08 20 9d e5                                      ldr r2, [sp, #8]
0046417c  06 00 a0 e1                                      mov r0, r6
00464180  02 30 98 e7                                      ldr r3, [r8, r2]
00464184  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00464188  00 30 93 e5                                      ldr r3, [r3]
0046418c  03 00 52 e1                                      cmp r2, r3
00464190  48 00 00 1a                                      bne #0x4642b8
00464194  34 d0 8d e2                                      add sp, sp, #0x34
00464198  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046419c  00 20 96 e5                                      ldr r2, [r6]
004641a0  0b b0 62 e0                                      rsb fp, r2, fp
004641a4  cb 31 a0 e1                                      asr r3, fp, #3
004641a8  03 11 83 e0                                      add r1, r3, r3, lsl #2
004641ac  01 12 81 e0                                      add r1, r1, r1, lsl #4
004641b0  01 14 81 e0                                      add r1, r1, r1, lsl #8
004641b4  01 18 81 e0                                      add r1, r1, r1, lsl #16
004641b8  81 30 83 e0                                      add r3, r3, r1, lsl #1
004641bc  00 00 53 e3                                      cmp r3, #0
004641c0  ec ff ff 0a                                      beq #0x464178
004641c4  00 10 a0 e3                                      mov r1, #0
004641c8  04 10 8d e5                                      str r1, [sp, #4]
004641cc  14 90 8d e2                                      add sb, sp, #0x14
004641d0  00 40 a0 e3                                      mov r4, #0
004641d4  04 70 a0 e1                                      mov r7, r4
004641d8  02 00 00 ea                                      b #0x4641e8
004641dc  04 08 96 e8                                      ldm r6, {r2, fp}
004641e0  05 40 a0 e1                                      mov r4, r5
004641e4  0b b0 62 e0                                      rsb fp, r2, fp
004641e8  cb 31 a0 e1                                      asr r3, fp, #3
004641ec  03 11 83 e0                                      add r1, r3, r3, lsl #2
004641f0  01 12 81 e0                                      add r1, r1, r1, lsl #4
004641f4  01 14 81 e0                                      add r1, r1, r1, lsl #8
004641f8  01 18 81 e0                                      add r1, r1, r1, lsl #16
004641fc  81 30 83 e0                                      add r3, r3, r1, lsl #1
00464200  01 10 43 e2                                      sub r1, r3, #1
00464204  07 00 51 e1                                      cmp r1, r7
00464208  24 00 00 9a                                      bls #0x4642a0
0046420c  0a 30 98 e7                                      ldr r3, [r8, sl]
00464210  18 50 84 e2                                      add r5, r4, #0x18
00464214  04 00 82 e0                                      add r0, r2, r4
00464218  10 30 93 e5                                      ldr r3, [r3, #0x10]
0046421c  05 20 82 e0                                      add r2, r2, r5
00464220  14 10 92 e5                                      ldr r1, [r2, #0x14]
00464224  34 30 93 e5                                      ldr r3, [r3, #0x34]
00464228  14 20 90 e5                                      ldr r2, [r0, #0x14]
0046422c  01 70 87 e2                                      add r7, r7, #1
00464230  03 00 a0 e1                                      mov r0, r3
00464234  00 30 93 e5                                      ldr r3, [r3]
00464238  0f e0 a0 e1                                      mov lr, pc
0046423c  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
00464240  00 00 50 e3                                      cmp r0, #0
00464244  e4 ff ff 0a                                      beq #0x4641dc
00464248  00 10 96 e5                                      ldr r1, [r6]
0046424c  09 00 a0 e1                                      mov r0, sb
00464250  04 10 81 e0                                      add r1, r1, r4
00464254  af 1d fb eb                                      bl #0x32b918
00464258  00 30 96 e5                                      ldr r3, [r6]
0046425c  04 00 83 e0                                      add r0, r3, r4
00464260  05 30 83 e0                                      add r3, r3, r5
00464264  03 00 50 e1                                      cmp r0, r3
00464268  04 00 00 0a                                      beq #0x464280
0046426c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00464270  14 10 93 e5                                      ldr r1, [r3, #0x14]
00464274  d9 b1 fa eb                                      bl #0x3109e0
00464278  00 00 96 e5                                      ldr r0, [r6]
0046427c  05 00 80 e0                                      add r0, r0, r5
00464280  09 00 50 e1                                      cmp r0, sb
00464284  02 00 00 0a                                      beq #0x464294
00464288  28 10 9d e5                                      ldr r1, [sp, #0x28]
0046428c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00464290  d2 b1 fa eb                                      bl #0x3109e0
00464294  09 00 a0 e1                                      mov r0, sb
00464298  c3 bd fa eb                                      bl #0x3139ac
0046429c  ce ff ff ea                                      b #0x4641dc
004642a0  04 10 9d e5                                      ldr r1, [sp, #4]
004642a4  01 10 81 e2                                      add r1, r1, #1
004642a8  03 00 51 e1                                      cmp r1, r3
004642ac  04 10 8d e5                                      str r1, [sp, #4]
004642b0  c6 ff ff 3a                                      blo #0x4641d0
004642b4  af ff ff ea                                      b #0x464178
004642b8  14 a8 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004642bc  40 0a 53 00 ac 40 00 00 f4 37 00 00 a8 90 46 00  .byte 0x40, 0x0a, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa8, 0x90, 0x46, 0x00
004642cc  a0 b8 4a 00 a0 a4 45 00 14 91 46 00              .byte 0xa0, 0xb8, 0x4a, 0x00, 0xa0, 0xa4, 0x45, 0x00, 0x14, 0x91, 0x46, 0x00

; FUNCTION 0x00464a68, declared_size=196, range_size=196, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame19SG_DeleteCheckpointEjb
; demangled: PlayerSavegame::SG_DeleteCheckpoint(unsigned int, bool)
; decoder-mode: arm
00464a68  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00464a6c  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
00464a70  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00464a74  03 30 8f e0                                      add r3, pc, r3
00464a78  02 50 93 e7                                      ldr r5, [r3, r2]
00464a7c  24 d0 4d e2                                      sub sp, sp, #0x24
00464a80  04 40 8d e2                                      add r4, sp, #4
00464a84  00 20 95 e5                                      ldr r2, [r5]
00464a88  00 60 a0 e1                                      mov r6, r0
00464a8c  01 70 a0 e1                                      mov r7, r1
00464a90  04 00 a0 e1                                      mov r0, r4
00464a94  10 10 a0 e3                                      mov r1, #0x10
00464a98  1c 20 8d e5                                      str r2, [sp, #0x1c]
00464a9c  14 40 8d e5                                      str r4, [sp, #0x14]
00464aa0  18 40 8d e5                                      str r4, [sp, #0x18]
00464aa4  f4 b2 fa eb                                      bl #0x31167c
00464aa8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00464aac  00 10 a0 e3                                      mov r1, #0
00464ab0  07 30 a0 e1                                      mov r3, r7
00464ab4  00 10 c2 e5                                      strb r1, [r2]
00464ab8  06 00 a0 e1                                      mov r0, r6
00464abc  04 10 a0 e1                                      mov r1, r4
00464ac0  01 20 a0 e3                                      mov r2, #1
00464ac4  6e fc ff eb                                      bl #0x463c84
00464ac8  18 00 9d e5                                      ldr r0, [sp, #0x18]
00464acc  a2 fa ff eb                                      bl #0x46355c
00464ad0  50 10 9f e5                                      ldr r1, [pc, #0x50]
00464ad4  00 60 a0 e1                                      mov r6, r0
00464ad8  04 00 a0 e1                                      mov r0, r4
00464adc  01 10 8f e0                                      add r1, pc, r1
00464ae0  04 20 81 e2                                      add r2, r1, #4
00464ae4  46 af fa eb                                      bl #0x310804
00464ae8  18 00 9d e5                                      ldr r0, [sp, #0x18]
00464aec  9a fa ff eb                                      bl #0x46355c
00464af0  06 60 80 e1                                      orr r6, r0, r6
00464af4  04 00 a0 e1                                      mov r0, r4
00464af8  ab bb fa eb                                      bl #0x3139ac
00464afc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00464b00  00 30 95 e5                                      ldr r3, [r5]
00464b04  76 60 ef e6                                      uxtb r6, r6
00464b08  06 00 a0 e1                                      mov r0, r6
00464b0c  03 00 52 e1                                      cmp r2, r3
00464b10  01 00 00 1a                                      bne #0x464b1c
00464b14  24 d0 8d e2                                      add sp, sp, #0x24
00464b18  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00464b1c  fb a5 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00464b20  1c 00 53 00 ac 40 00 00 84 9a 45 00              .byte 0x1c, 0x00, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x9a, 0x45, 0x00

; FUNCTION 0x00464b2c, declared_size=372, range_size=372, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame7SG_SaveEv
; demangled: PlayerSavegame::SG_Save()
; decoder-mode: arm
00464b2c  70 40 2d e9                                      push {r4, r5, r6, lr}
00464b30  08 30 90 e5                                      ldr r3, [r0, #8]
00464b34  58 61 9f e5                                      ldr r6, [pc, #0x158]
00464b38  08 d0 4d e2                                      sub sp, sp, #8
00464b3c  00 00 53 e3                                      cmp r3, #0
00464b40  00 40 a0 e1                                      mov r4, r0
00464b44  06 60 8f e0                                      add r6, pc, r6
00464b48  02 00 00 0a                                      beq #0x464b58
00464b4c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00464b50  00 00 53 e3                                      cmp r3, #0
00464b54  01 00 00 0a                                      beq #0x464b60
00464b58  08 d0 8d e2                                      add sp, sp, #8
00464b5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00464b60  0b 63 0e eb                                      bl #0x7fd794
00464b64  05 30 d0 e5                                      ldrb r3, [r0, #5]
00464b68  00 00 53 e3                                      cmp r3, #0
00464b6c  0b 00 00 1a                                      bne #0x464ba0
00464b70  01 30 a0 e3                                      mov r3, #1
00464b74  78 31 84 e5                                      str r3, [r4, #0x178]
00464b78  05 63 0e eb                                      bl #0x7fd794
00464b7c  05 30 d0 e5                                      ldrb r3, [r0, #5]
00464b80  00 00 53 e3                                      cmp r3, #0
00464b84  12 00 00 1a                                      bne #0x464bd4
00464b88  08 00 94 e5                                      ldr r0, [r4, #8]
00464b8c  09 c5 fa eb                                      bl #0x315fb8
00464b90  04 00 a0 e1                                      mov r0, r4
00464b94  08 d0 8d e2                                      add sp, sp, #8
00464b98  70 40 bd e8                                      pop {r4, r5, r6, lr}
00464b9c  53 0e 00 ea                                      b #0x4684f0
00464ba0  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
00464ba4  03 50 96 e7                                      ldr r5, [r6, r3]
00464ba8  40 00 95 e5                                      ldr r0, [r5, #0x40]
00464bac  30 29 fc eb                                      bl #0x36f074
00464bb0  00 00 50 e3                                      cmp r0, #0
00464bb4  ed ff ff 0a                                      beq #0x464b70
00464bb8  40 30 95 e5                                      ldr r3, [r5, #0x40]
00464bbc  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
00464bc0  00 00 53 e3                                      cmp r3, #0
00464bc4  e9 ff ff 1a                                      bne #0x464b70
00464bc8  02 30 a0 e3                                      mov r3, #2
00464bcc  78 31 84 e5                                      str r3, [r4, #0x178]
00464bd0  e8 ff ff ea                                      b #0x464b78
00464bd4  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00464bd8  03 50 96 e7                                      ldr r5, [r6, r3]
00464bdc  40 00 95 e5                                      ldr r0, [r5, #0x40]
00464be0  23 29 fc eb                                      bl #0x36f074
00464be4  00 00 50 e3                                      cmp r0, #0
00464be8  21 00 00 1a                                      bne #0x464c74
00464bec  01 10 a0 e3                                      mov r1, #1
00464bf0  04 00 a0 e1                                      mov r0, r4
00464bf4  96 fa ff eb                                      bl #0x463654
00464bf8  00 50 a0 e1                                      mov r5, r0
00464bfc  01 10 a0 e3                                      mov r1, #1
00464c00  04 00 a0 e1                                      mov r0, r4
00464c04  05 20 a0 e1                                      mov r2, r5
00464c08  88 0e 00 eb                                      bl #0x468630
00464c0c  08 00 94 e5                                      ldr r0, [r4, #8]
00464c10  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
00464c14  00 00 51 e3                                      cmp r1, #0
00464c18  1a 00 00 0a                                      beq #0x464c88
00464c1c  e5 c4 fa eb                                      bl #0x315fb8
00464c20  04 00 a0 e1                                      mov r0, r4
00464c24  00 10 a0 e3                                      mov r1, #0
00464c28  05 20 a0 e1                                      mov r2, r5
00464c2c  7f 0e 00 eb                                      bl #0x468630
00464c30  00 00 55 e3                                      cmp r5, #0
00464c34  d5 ff ff 0a                                      beq #0x464b90
00464c38  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00464c3c  00 50 a0 e3                                      mov r5, #0
00464c40  04 00 94 e5                                      ldr r0, [r4, #4]
00464c44  03 30 96 e7                                      ldr r3, [r6, r3]
00464c48  05 10 a0 e1                                      mov r1, r5
00464c4c  01 c0 a0 e3                                      mov ip, #1
00464c50  00 30 93 e5                                      ldr r3, [r3]
00464c54  05 20 a0 e1                                      mov r2, r5
00464c58  00 c0 8d e5                                      str ip, [sp]
00464c5c  04 50 8d e5                                      str r5, [sp, #4]
00464c60  a3 f6 ff eb                                      bl #0x4626f4
00464c64  05 10 a0 e1                                      mov r1, r5
00464c68  04 00 94 e5                                      ldr r0, [r4, #4]
00464c6c  7d ff ff eb                                      bl #0x464a68
00464c70  c6 ff ff ea                                      b #0x464b90
00464c74  40 30 95 e5                                      ldr r3, [r5, #0x40]
00464c78  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
00464c7c  00 00 53 e3                                      cmp r3, #0
00464c80  c0 ff ff 0a                                      beq #0x464b88
00464c84  d8 ff ff ea                                      b #0x464bec
00464c88  90 c3 fa eb                                      bl #0x315ad0
00464c8c  08 00 94 e5                                      ldr r0, [r4, #8]
00464c90  e1 ff ff ea                                      b #0x464c1c
; mapping-symbol data/literal pool
00464c94  4c ff 52 00 f4 37 00 00 9c 1a 00 00              .byte 0x4c, 0xff, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x9c, 0x1a, 0x00, 0x00

; FUNCTION 0x00464ca0, declared_size=188, range_size=188, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame9SG_DeleteEj
; demangled: PlayerSavegame::SG_Delete(unsigned int)
; decoder-mode: arm
00464ca0  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00464ca4  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00464ca8  70 40 2d e9                                      push {r4, r5, r6, lr}
00464cac  03 30 8f e0                                      add r3, pc, r3
00464cb0  02 50 93 e7                                      ldr r5, [r3, r2]
00464cb4  20 d0 4d e2                                      sub sp, sp, #0x20
00464cb8  04 40 8d e2                                      add r4, sp, #4
00464cbc  00 20 95 e5                                      ldr r2, [r5]
00464cc0  00 60 a0 e1                                      mov r6, r0
00464cc4  10 10 a0 e3                                      mov r1, #0x10
00464cc8  04 00 a0 e1                                      mov r0, r4
00464ccc  1c 20 8d e5                                      str r2, [sp, #0x1c]
00464cd0  14 40 8d e5                                      str r4, [sp, #0x14]
00464cd4  18 40 8d e5                                      str r4, [sp, #0x18]
00464cd8  67 b2 fa eb                                      bl #0x31167c
00464cdc  14 10 9d e5                                      ldr r1, [sp, #0x14]
00464ce0  00 30 a0 e3                                      mov r3, #0
00464ce4  03 20 a0 e1                                      mov r2, r3
00464ce8  00 30 c1 e5                                      strb r3, [r1]
00464cec  06 00 a0 e1                                      mov r0, r6
00464cf0  04 10 a0 e1                                      mov r1, r4
00464cf4  e2 fb ff eb                                      bl #0x463c84
00464cf8  18 00 9d e5                                      ldr r0, [sp, #0x18]
00464cfc  16 fa ff eb                                      bl #0x46355c
00464d00  50 10 9f e5                                      ldr r1, [pc, #0x50]
00464d04  00 60 a0 e1                                      mov r6, r0
00464d08  04 00 a0 e1                                      mov r0, r4
00464d0c  01 10 8f e0                                      add r1, pc, r1
00464d10  04 20 81 e2                                      add r2, r1, #4
00464d14  ba ae fa eb                                      bl #0x310804
00464d18  18 00 9d e5                                      ldr r0, [sp, #0x18]
00464d1c  0e fa ff eb                                      bl #0x46355c
00464d20  06 60 80 e1                                      orr r6, r0, r6
00464d24  04 00 a0 e1                                      mov r0, r4
00464d28  1f bb fa eb                                      bl #0x3139ac
00464d2c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00464d30  00 30 95 e5                                      ldr r3, [r5]
00464d34  76 60 ef e6                                      uxtb r6, r6
00464d38  06 00 a0 e1                                      mov r0, r6
00464d3c  03 00 52 e1                                      cmp r2, r3
00464d40  01 00 00 1a                                      bne #0x464d4c
00464d44  20 d0 8d e2                                      add sp, sp, #0x20
00464d48  70 80 bd e8                                      pop {r4, r5, r6, pc}
00464d4c  6f a5 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00464d50  e4 fd 52 00 ac 40 00 00 54 98 45 00              .byte 0xe4, 0xfd, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x98, 0x45, 0x00

; FUNCTION 0x00464d5c, declared_size=496, range_size=496, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame9SG_ExistsEj
; demangled: PlayerSavegame::SG_Exists(unsigned int)
; decoder-mode: arm
00464d5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00464d60  d8 41 9f e5                                      ldr r4, [pc, #0x1d8]
00464d64  d8 61 9f e5                                      ldr r6, [pc, #0x1d8]
00464d68  38 d0 4d e2                                      sub sp, sp, #0x38
00464d6c  04 40 8f e0                                      add r4, pc, r4
00464d70  06 30 94 e7                                      ldr r3, [r4, r6]
00464d74  1c 50 8d e2                                      add r5, sp, #0x1c
00464d78  00 70 a0 e1                                      mov r7, r0
00464d7c  00 30 93 e5                                      ldr r3, [r3]
00464d80  10 10 a0 e3                                      mov r1, #0x10
00464d84  05 00 a0 e1                                      mov r0, r5
00464d88  34 30 8d e5                                      str r3, [sp, #0x34]
00464d8c  2c 50 8d e5                                      str r5, [sp, #0x2c]
00464d90  30 50 8d e5                                      str r5, [sp, #0x30]
00464d94  38 b2 fa eb                                      bl #0x31167c
00464d98  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00464d9c  00 30 a0 e3                                      mov r3, #0
00464da0  03 20 a0 e1                                      mov r2, r3
00464da4  00 30 c1 e5                                      strb r3, [r1]
00464da8  07 00 a0 e1                                      mov r0, r7
00464dac  05 10 a0 e1                                      mov r1, r5
00464db0  b3 fb ff eb                                      bl #0x463c84
00464db4  30 00 9d e5                                      ldr r0, [sp, #0x30]
00464db8  d5 f9 ff eb                                      bl #0x463514
00464dbc  00 80 50 e2                                      subs r8, r0, #0
00464dc0  01 80 a0 13                                      movne r8, #1
00464dc4  09 00 00 0a                                      beq #0x464df0
00464dc8  05 00 a0 e1                                      mov r0, r5
00464dcc  f6 ba fa eb                                      bl #0x3139ac
00464dd0  06 30 94 e7                                      ldr r3, [r4, r6]
00464dd4  34 20 9d e5                                      ldr r2, [sp, #0x34]
00464dd8  08 00 a0 e1                                      mov r0, r8
00464ddc  00 30 93 e5                                      ldr r3, [r3]
00464de0  03 00 52 e1                                      cmp r2, r3
00464de4  54 00 00 1a                                      bne #0x464f3c
00464de8  38 d0 8d e2                                      add sp, sp, #0x38
00464dec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00464df0  30 30 9d e5                                      ldr r3, [sp, #0x30]
00464df4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00464df8  04 70 8d e2                                      add r7, sp, #4
00464dfc  07 00 a0 e1                                      mov r0, r7
00464e00  01 10 63 e0                                      rsb r1, r3, r1
00464e04  05 10 81 e2                                      add r1, r1, #5
00464e08  14 70 8d e5                                      str r7, [sp, #0x14]
00464e0c  18 70 8d e5                                      str r7, [sp, #0x18]
00464e10  19 b2 fa eb                                      bl #0x31167c
00464e14  14 30 9d e5                                      ldr r3, [sp, #0x14]
00464e18  07 00 a0 e1                                      mov r0, r7
00464e1c  00 80 c3 e5                                      strb r8, [r3]
00464e20  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00464e24  30 10 9d e5                                      ldr r1, [sp, #0x30]
00464e28  75 ae fa eb                                      bl #0x310804
00464e2c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00464e30  07 00 53 e1                                      cmp r3, r7
00464e34  04 20 9d 15                                      ldrne r2, [sp, #4]
00464e38  14 30 9d e5                                      ldr r3, [sp, #0x14]
00464e3c  10 20 87 02                                      addeq r2, r7, #0x10
00464e40  02 20 63 e0                                      rsb r2, r3, r2
00464e44  04 00 52 e3                                      cmp r2, #4
00464e48  16 00 00 9a                                      bls #0x464ea8
00464e4c  2e 20 a0 e3                                      mov r2, #0x2e
00464e50  00 20 c3 e5                                      strb r2, [r3]
00464e54  14 20 9d e5                                      ldr r2, [sp, #0x14]
00464e58  62 10 a0 e3                                      mov r1, #0x62
00464e5c  01 10 c2 e5                                      strb r1, [r2, #1]
00464e60  01 30 82 e2                                      add r3, r2, #1
00464e64  6b 20 a0 e3                                      mov r2, #0x6b
00464e68  02 20 c3 e5                                      strb r2, [r3, #2]
00464e6c  61 20 a0 e3                                      mov r2, #0x61
00464e70  01 20 c3 e5                                      strb r2, [r3, #1]
00464e74  14 30 9d e5                                      ldr r3, [sp, #0x14]
00464e78  00 20 a0 e3                                      mov r2, #0
00464e7c  04 20 c3 e5                                      strb r2, [r3, #4]
00464e80  14 30 9d e5                                      ldr r3, [sp, #0x14]
00464e84  18 80 9d e5                                      ldr r8, [sp, #0x18]
00464e88  04 30 83 e2                                      add r3, r3, #4
00464e8c  14 30 8d e5                                      str r3, [sp, #0x14]
00464e90  08 00 a0 e1                                      mov r0, r8
00464e94  9e f9 ff eb                                      bl #0x463514
00464e98  00 80 a0 e1                                      mov r8, r0
00464e9c  07 00 a0 e1                                      mov r0, r7
00464ea0  c1 ba fa eb                                      bl #0x3139ac
00464ea4  c7 ff ff ea                                      b #0x464dc8
00464ea8  07 00 a0 e1                                      mov r0, r7
00464eac  04 10 a0 e3                                      mov r1, #4
00464eb0  3a ae fa eb                                      bl #0x3107a0
00464eb4  00 90 50 e2                                      subs sb, r0, #0
00464eb8  09 80 a0 01                                      moveq r8, sb
00464ebc  16 00 00 1a                                      bne #0x464f1c
00464ec0  18 10 9d e5                                      ldr r1, [sp, #0x18]
00464ec4  14 a0 9d e5                                      ldr sl, [sp, #0x14]
00464ec8  0a 00 51 e1                                      cmp r1, sl
00464ecc  08 00 a0 01                                      moveq r0, r8
00464ed0  04 00 00 0a                                      beq #0x464ee8
00464ed4  0a a0 61 e0                                      rsb sl, r1, sl
00464ed8  08 00 a0 e1                                      mov r0, r8
00464edc  0a 20 a0 e1                                      mov r2, sl
00464ee0  60 a6 fa eb                                      bl #0x30e868
00464ee4  0a 00 80 e0                                      add r0, r0, sl
00464ee8  58 10 9f e5                                      ldr r1, [pc, #0x58]
00464eec  04 20 a0 e3                                      mov r2, #4
00464ef0  01 10 8f e0                                      add r1, pc, r1
00464ef4  5b a6 fa eb                                      bl #0x30e868
00464ef8  00 30 a0 e3                                      mov r3, #0
00464efc  04 30 c0 e5                                      strb r3, [r0, #4]
00464f00  04 a0 80 e2                                      add sl, r0, #4
00464f04  07 00 a0 e1                                      mov r0, r7
00464f08  a7 ba fa eb                                      bl #0x3139ac
00464f0c  04 90 8d e5                                      str sb, [sp, #4]
00464f10  14 a0 8d e5                                      str sl, [sp, #0x14]
00464f14  18 80 8d e5                                      str r8, [sp, #0x18]
00464f18  dc ff ff ea                                      b #0x464e90
00464f1c  38 00 8d e2                                      add r0, sp, #0x38
00464f20  38 90 20 e5                                      str sb, [r0, #-0x38]!
00464f24  0d 00 a0 e1                                      mov r0, sp
00464f28  99 ba fa eb                                      bl #0x313994
00464f2c  00 90 9d e5                                      ldr sb, [sp]
00464f30  00 80 a0 e1                                      mov r8, r0
00464f34  09 90 80 e0                                      add sb, r0, sb
00464f38  e0 ff ff ea                                      b #0x464ec0
00464f3c  f3 a4 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00464f40  24 fd 52 00 ac 40 00 00 70 96 45 00              .byte 0x24, 0xfd, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x70, 0x96, 0x45, 0x00

; FUNCTION 0x00464f4c, declared_size=1252, range_size=1252, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame5_LoadEi
; demangled: PlayerSavegame::_Load(int)
; decoder-mode: arm
00464f4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00464f50  0c 54 9f e5                                      ldr r5, [pc, #0x40c]
00464f54  0c 74 9f e5                                      ldr r7, [pc, #0x40c]
00464f58  08 80 90 e5                                      ldr r8, [r0, #8]
00464f5c  05 50 8f e0                                      add r5, pc, r5
00464f60  07 30 95 e7                                      ldr r3, [r5, r7]
00464f64  2c d0 4d e2                                      sub sp, sp, #0x2c
00464f68  00 00 58 e3                                      cmp r8, #0
00464f6c  00 30 93 e5                                      ldr r3, [r3]
00464f70  00 40 a0 e1                                      mov r4, r0
00464f74  01 60 a0 e1                                      mov r6, r1
00464f78  24 30 8d e5                                      str r3, [sp, #0x24]
00464f7c  db 00 00 0a                                      beq #0x4652f0
00464f80  01 00 16 e3                                      tst r6, #1
00464f84  40 00 00 0a                                      beq #0x46508c
00464f88  08 00 94 e5                                      ldr r0, [r4, #8]
00464f8c  00 00 50 e3                                      cmp r0, #0
00464f90  3d 00 00 0a                                      beq #0x46508c
00464f94  d0 33 9f e5                                      ldr r3, [pc, #0x3d0]
00464f98  d0 13 9f e5                                      ldr r1, [pc, #0x3d0]
00464f9c  00 40 8d e5                                      str r4, [sp]
00464fa0  03 20 95 e7                                      ldr r2, [r5, r3]
00464fa4  c8 33 9f e5                                      ldr r3, [pc, #0x3c8]
00464fa8  01 10 8f e0                                      add r1, pc, r1
00464fac  03 30 95 e7                                      ldr r3, [r5, r3]
00464fb0  24 c2 fa eb                                      bl #0x315848
00464fb4  bc 33 9f e5                                      ldr r3, [pc, #0x3bc]
00464fb8  bc 13 9f e5                                      ldr r1, [pc, #0x3bc]
00464fbc  08 00 94 e5                                      ldr r0, [r4, #8]
00464fc0  03 20 95 e7                                      ldr r2, [r5, r3]
00464fc4  b4 33 9f e5                                      ldr r3, [pc, #0x3b4]
00464fc8  01 10 8f e0                                      add r1, pc, r1
00464fcc  00 40 8d e5                                      str r4, [sp]
00464fd0  03 30 95 e7                                      ldr r3, [r5, r3]
00464fd4  1b c2 fa eb                                      bl #0x315848
00464fd8  a4 33 9f e5                                      ldr r3, [pc, #0x3a4]
00464fdc  a4 13 9f e5                                      ldr r1, [pc, #0x3a4]
00464fe0  08 00 94 e5                                      ldr r0, [r4, #8]
00464fe4  03 20 95 e7                                      ldr r2, [r5, r3]
00464fe8  9c 33 9f e5                                      ldr r3, [pc, #0x39c]
00464fec  01 10 8f e0                                      add r1, pc, r1
00464ff0  00 40 8d e5                                      str r4, [sp]
00464ff4  03 30 95 e7                                      ldr r3, [r5, r3]
00464ff8  12 c2 fa eb                                      bl #0x315848
00464ffc  8c 33 9f e5                                      ldr r3, [pc, #0x38c]
00465000  8c 13 9f e5                                      ldr r1, [pc, #0x38c]
00465004  08 00 94 e5                                      ldr r0, [r4, #8]
00465008  03 20 95 e7                                      ldr r2, [r5, r3]
0046500c  84 33 9f e5                                      ldr r3, [pc, #0x384]
00465010  01 10 8f e0                                      add r1, pc, r1
00465014  00 40 8d e5                                      str r4, [sp]
00465018  03 30 95 e7                                      ldr r3, [r5, r3]
0046501c  09 c2 fa eb                                      bl #0x315848
00465020  74 33 9f e5                                      ldr r3, [pc, #0x374]
00465024  74 13 9f e5                                      ldr r1, [pc, #0x374]
00465028  08 00 94 e5                                      ldr r0, [r4, #8]
0046502c  03 20 95 e7                                      ldr r2, [r5, r3]
00465030  6c 33 9f e5                                      ldr r3, [pc, #0x36c]
00465034  01 10 8f e0                                      add r1, pc, r1
00465038  00 40 8d e5                                      str r4, [sp]
0046503c  03 30 95 e7                                      ldr r3, [r5, r3]
00465040  00 c2 fa eb                                      bl #0x315848
00465044  5c 33 9f e5                                      ldr r3, [pc, #0x35c]
00465048  5c 13 9f e5                                      ldr r1, [pc, #0x35c]
0046504c  08 00 94 e5                                      ldr r0, [r4, #8]
00465050  03 20 95 e7                                      ldr r2, [r5, r3]
00465054  54 33 9f e5                                      ldr r3, [pc, #0x354]
00465058  01 10 8f e0                                      add r1, pc, r1
0046505c  00 40 8d e5                                      str r4, [sp]
00465060  03 30 95 e7                                      ldr r3, [r5, r3]
00465064  f7 c1 fa eb                                      bl #0x315848
00465068  44 33 9f e5                                      ldr r3, [pc, #0x344]
0046506c  44 13 9f e5                                      ldr r1, [pc, #0x344]
00465070  08 00 94 e5                                      ldr r0, [r4, #8]
00465074  03 20 95 e7                                      ldr r2, [r5, r3]
00465078  3c 33 9f e5                                      ldr r3, [pc, #0x33c]
0046507c  01 10 8f e0                                      add r1, pc, r1
00465080  00 40 8d e5                                      str r4, [sp]
00465084  03 30 95 e7                                      ldr r3, [r5, r3]
00465088  ee c1 fa eb                                      bl #0x315848
0046508c  02 00 16 e3                                      tst r6, #2
00465090  8b 00 00 1a                                      bne #0x4652c4
00465094  04 00 16 e3                                      tst r6, #4
00465098  56 00 00 0a                                      beq #0x4651f8
0046509c  08 00 94 e5                                      ldr r0, [r4, #8]
004650a0  00 00 50 e3                                      cmp r0, #0
004650a4  53 00 00 0a                                      beq #0x4651f8
004650a8  10 33 9f e5                                      ldr r3, [pc, #0x310]
004650ac  10 13 9f e5                                      ldr r1, [pc, #0x310]
004650b0  00 40 8d e5                                      str r4, [sp]
004650b4  03 20 95 e7                                      ldr r2, [r5, r3]
004650b8  08 33 9f e5                                      ldr r3, [pc, #0x308]
004650bc  01 10 8f e0                                      add r1, pc, r1
004650c0  03 30 95 e7                                      ldr r3, [r5, r3]
004650c4  df c1 fa eb                                      bl #0x315848
004650c8  fc 32 9f e5                                      ldr r3, [pc, #0x2fc]
004650cc  fc 12 9f e5                                      ldr r1, [pc, #0x2fc]
004650d0  08 00 94 e5                                      ldr r0, [r4, #8]
004650d4  03 20 95 e7                                      ldr r2, [r5, r3]
004650d8  f4 32 9f e5                                      ldr r3, [pc, #0x2f4]
004650dc  01 10 8f e0                                      add r1, pc, r1
004650e0  00 40 8d e5                                      str r4, [sp]
004650e4  03 30 95 e7                                      ldr r3, [r5, r3]
004650e8  d6 c1 fa eb                                      bl #0x315848
004650ec  e4 32 9f e5                                      ldr r3, [pc, #0x2e4]
004650f0  e4 12 9f e5                                      ldr r1, [pc, #0x2e4]
004650f4  08 00 94 e5                                      ldr r0, [r4, #8]
004650f8  03 20 95 e7                                      ldr r2, [r5, r3]
004650fc  dc 32 9f e5                                      ldr r3, [pc, #0x2dc]
00465100  01 10 8f e0                                      add r1, pc, r1
00465104  00 40 8d e5                                      str r4, [sp]
00465108  03 30 95 e7                                      ldr r3, [r5, r3]
0046510c  cd c1 fa eb                                      bl #0x315848
00465110  08 80 94 e5                                      ldr r8, [r4, #8]
00465114  9e 61 0e eb                                      bl #0x7fd794
00465118  05 30 d0 e5                                      ldrb r3, [r0, #5]
0046511c  00 00 53 e3                                      cmp r3, #0
00465120  08 00 00 0a                                      beq #0x465148
00465124  b8 32 9f e5                                      ldr r3, [pc, #0x2b8]
00465128  03 30 95 e7                                      ldr r3, [r5, r3]
0046512c  40 30 93 e5                                      ldr r3, [r3, #0x40]
00465130  1b 37 d3 e5                                      ldrb r3, [r3, #0x71b]
00465134  00 00 53 e3                                      cmp r3, #0
00465138  02 00 00 1a                                      bne #0x465148
0046513c  a4 32 9f e5                                      ldr r3, [pc, #0x2a4]
00465140  03 20 95 e7                                      ldr r2, [r5, r3]
00465144  00 00 00 ea                                      b #0x46514c
00465148  00 20 a0 e3                                      mov r2, #0
0046514c  98 32 9f e5                                      ldr r3, [pc, #0x298]
00465150  98 12 9f e5                                      ldr r1, [pc, #0x298]
00465154  08 00 a0 e1                                      mov r0, r8
00465158  03 30 95 e7                                      ldr r3, [r5, r3]
0046515c  01 10 8f e0                                      add r1, pc, r1
00465160  00 40 8d e5                                      str r4, [sp]
00465164  b7 c1 fa eb                                      bl #0x315848
00465168  84 32 9f e5                                      ldr r3, [pc, #0x284]
0046516c  84 12 9f e5                                      ldr r1, [pc, #0x284]
00465170  08 00 94 e5                                      ldr r0, [r4, #8]
00465174  03 20 95 e7                                      ldr r2, [r5, r3]
00465178  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
0046517c  01 10 8f e0                                      add r1, pc, r1
00465180  00 40 8d e5                                      str r4, [sp]
00465184  03 30 95 e7                                      ldr r3, [r5, r3]
00465188  ae c1 fa eb                                      bl #0x315848
0046518c  6c 32 9f e5                                      ldr r3, [pc, #0x26c]
00465190  6c 12 9f e5                                      ldr r1, [pc, #0x26c]
00465194  08 00 94 e5                                      ldr r0, [r4, #8]
00465198  03 20 95 e7                                      ldr r2, [r5, r3]
0046519c  64 32 9f e5                                      ldr r3, [pc, #0x264]
004651a0  01 10 8f e0                                      add r1, pc, r1
004651a4  00 40 8d e5                                      str r4, [sp]
004651a8  03 30 95 e7                                      ldr r3, [r5, r3]
004651ac  a5 c1 fa eb                                      bl #0x315848
004651b0  54 32 9f e5                                      ldr r3, [pc, #0x254]
004651b4  54 12 9f e5                                      ldr r1, [pc, #0x254]
004651b8  08 00 94 e5                                      ldr r0, [r4, #8]
004651bc  03 20 95 e7                                      ldr r2, [r5, r3]
004651c0  4c 32 9f e5                                      ldr r3, [pc, #0x24c]
004651c4  01 10 8f e0                                      add r1, pc, r1
004651c8  00 40 8d e5                                      str r4, [sp]
004651cc  03 30 95 e7                                      ldr r3, [r5, r3]
004651d0  9c c1 fa eb                                      bl #0x315848
004651d4  3c 32 9f e5                                      ldr r3, [pc, #0x23c]
004651d8  3c 12 9f e5                                      ldr r1, [pc, #0x23c]
004651dc  08 00 94 e5                                      ldr r0, [r4, #8]
004651e0  03 20 95 e7                                      ldr r2, [r5, r3]
004651e4  34 32 9f e5                                      ldr r3, [pc, #0x234]
004651e8  01 10 8f e0                                      add r1, pc, r1
004651ec  00 40 8d e5                                      str r4, [sp]
004651f0  03 30 95 e7                                      ldr r3, [r5, r3]
004651f4  93 c1 fa eb                                      bl #0x315848
004651f8  08 00 16 e3                                      tst r6, #8
004651fc  0a 00 00 0a                                      beq #0x46522c
00465200  08 00 94 e5                                      ldr r0, [r4, #8]
00465204  00 00 50 e3                                      cmp r0, #0
00465208  07 00 00 0a                                      beq #0x46522c
0046520c  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
00465210  0c 12 9f e5                                      ldr r1, [pc, #0x20c]
00465214  00 40 8d e5                                      str r4, [sp]
00465218  03 20 95 e7                                      ldr r2, [r5, r3]
0046521c  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
00465220  01 10 8f e0                                      add r1, pc, r1
00465224  03 30 95 e7                                      ldr r3, [r5, r3]
00465228  86 c1 fa eb                                      bl #0x315848
0046522c  20 00 16 e3                                      tst r6, #0x20
00465230  0a 00 00 0a                                      beq #0x465260
00465234  08 00 94 e5                                      ldr r0, [r4, #8]
00465238  00 00 50 e3                                      cmp r0, #0
0046523c  07 00 00 0a                                      beq #0x465260
00465240  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
00465244  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
00465248  00 40 8d e5                                      str r4, [sp]
0046524c  03 20 95 e7                                      ldr r2, [r5, r3]
00465250  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
00465254  01 10 8f e0                                      add r1, pc, r1
00465258  03 30 95 e7                                      ldr r3, [r5, r3]
0046525c  79 c1 fa eb                                      bl #0x315848
00465260  10 00 16 e3                                      tst r6, #0x10
00465264  0f 00 00 0a                                      beq #0x4652a8
00465268  08 30 94 e5                                      ldr r3, [r4, #8]
0046526c  00 00 53 e3                                      cmp r3, #0
00465270  0c 00 00 0a                                      beq #0x4652a8
00465274  b8 00 84 e2                                      add r0, r4, #0xb8
00465278  ca 1b 00 eb                                      bl #0x46c1a8
0046527c  46 0f 84 e2                                      add r0, r4, #0x118
00465280  c8 1b 00 eb                                      bl #0x46c1a8
00465284  68 31 9f e5                                      ldr r3, [pc, #0x168]
00465288  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
0046528c  08 00 94 e5                                      ldr r0, [r4, #8]
00465290  03 20 95 e7                                      ldr r2, [r5, r3]
00465294  60 31 9f e5                                      ldr r3, [pc, #0x160]
00465298  01 10 8f e0                                      add r1, pc, r1
0046529c  00 40 8d e5                                      str r4, [sp]
004652a0  03 30 95 e7                                      ldr r3, [r5, r3]
004652a4  67 c1 fa eb                                      bl #0x315848
004652a8  07 30 95 e7                                      ldr r3, [r5, r7]
004652ac  24 20 9d e5                                      ldr r2, [sp, #0x24]
004652b0  00 30 93 e5                                      ldr r3, [r3]
004652b4  03 00 52 e1                                      cmp r2, r3
004652b8  28 00 00 1a                                      bne #0x465360
004652bc  2c d0 8d e2                                      add sp, sp, #0x2c
004652c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004652c4  04 00 a0 e1                                      mov r0, r4
004652c8  9f 10 00 eb                                      bl #0x46954c
004652cc  04 00 a0 e1                                      mov r0, r4
004652d0  23 11 00 eb                                      bl #0x469764
004652d4  04 00 a0 e1                                      mov r0, r4
004652d8  7a 10 00 eb                                      bl #0x4694c8
004652dc  b8 00 84 e2                                      add r0, r4, #0xb8
004652e0  b0 1b 00 eb                                      bl #0x46c1a8
004652e4  46 0f 84 e2                                      add r0, r4, #0x118
004652e8  ae 1b 00 eb                                      bl #0x46c1a8
004652ec  68 ff ff ea                                      b #0x465094
004652f0  04 30 90 e5                                      ldr r3, [r0, #4]
004652f4  01 00 73 e3                                      cmn r3, #1
004652f8  20 ff ff 0a                                      beq #0x464f80
004652fc  0c a0 8d e2                                      add sl, sp, #0xc
00465300  0a 00 a0 e1                                      mov r0, sl
00465304  10 10 a0 e3                                      mov r1, #0x10
00465308  1c a0 8d e5                                      str sl, [sp, #0x1c]
0046530c  20 a0 8d e5                                      str sl, [sp, #0x20]
00465310  d9 b0 fa eb                                      bl #0x31167c
00465314  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00465318  08 30 a0 e1                                      mov r3, r8
0046531c  0a 10 a0 e1                                      mov r1, sl
00465320  00 80 c2 e5                                      strb r8, [r2]
00465324  04 00 94 e5                                      ldr r0, [r4, #4]
00465328  08 20 a0 e1                                      mov r2, r8
0046532c  54 fa ff eb                                      bl #0x463c84
00465330  08 10 a0 e1                                      mov r1, r8
00465334  3c 00 a0 e3                                      mov r0, #0x3c
00465338  20 b0 9d e5                                      ldr fp, [sp, #0x20]
0046533c  8b ac fa eb                                      bl #0x310570
00465340  0b 10 a0 e1                                      mov r1, fp
00465344  00 90 a0 e1                                      mov sb, r0
00465348  08 20 a0 e1                                      mov r2, r8
0046534c  e1 c2 fa eb                                      bl #0x315ed8
00465350  08 90 84 e5                                      str sb, [r4, #8]
00465354  0a 00 a0 e1                                      mov r0, sl
00465358  93 b9 fa eb                                      bl #0x3139ac
0046535c  07 ff ff ea                                      b #0x464f80
00465360  ea a3 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00465364  34 fb 52 00 ac 40 00 00 08 15 00 00 40 82 46 00  .byte 0x34, 0xfb, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x08, 0x15, 0x00, 0x00, 0x40, 0x82, 0x46, 0x00
00465374  f4 1b 00 00 68 1f 00 00 28 82 46 00 f0 15 00 00  .byte 0xf4, 0x1b, 0x00, 0x00, 0x68, 0x1f, 0x00, 0x00, 0x28, 0x82, 0x46, 0x00, 0xf0, 0x15, 0x00, 0x00
00465384  bc 20 00 00 0c 82 46 00 c8 2e 00 00 28 0d 00 00  .byte 0xbc, 0x20, 0x00, 0x00, 0x0c, 0x82, 0x46, 0x00, 0xc8, 0x2e, 0x00, 0x00, 0x28, 0x0d, 0x00, 0x00
00465394  f0 81 46 00 b8 1a 00 00 24 36 00 00 d4 81 46 00  .byte 0xf0, 0x81, 0x46, 0x00, 0xb8, 0x1a, 0x00, 0x00, 0x24, 0x36, 0x00, 0x00, 0xd4, 0x81, 0x46, 0x00
004653a4  78 37 00 00 4c 3d 00 00 b8 81 46 00 b0 26 00 00  .byte 0x78, 0x37, 0x00, 0x00, 0x4c, 0x3d, 0x00, 0x00, 0xb8, 0x81, 0x46, 0x00, 0xb0, 0x26, 0x00, 0x00
004653b4  30 40 00 00 9c 81 46 00 6c 26 00 00 00 3f 00 00  .byte 0x30, 0x40, 0x00, 0x00, 0x9c, 0x81, 0x46, 0x00, 0x6c, 0x26, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x00
004653c4  64 81 46 00 7c 46 00 00 94 28 00 00 4c 81 46 00  .byte 0x64, 0x81, 0x46, 0x00, 0x7c, 0x46, 0x00, 0x00, 0x94, 0x28, 0x00, 0x00, 0x4c, 0x81, 0x46, 0x00
004653d4  34 1b 00 00 3c 13 00 00 30 81 46 00 24 07 00 00  .byte 0x34, 0x1b, 0x00, 0x00, 0x3c, 0x13, 0x00, 0x00, 0x30, 0x81, 0x46, 0x00, 0x24, 0x07, 0x00, 0x00
004653e4  f4 37 00 00 cc 2a 00 00 f4 2c 00 00 dc 80 46 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xcc, 0x2a, 0x00, 0x00, 0xf4, 0x2c, 0x00, 0x00, 0xdc, 0x80, 0x46, 0x00
004653f4  48 26 00 00 c4 80 46 00 18 34 00 00 44 07 00 00  .byte 0x48, 0x26, 0x00, 0x00, 0xc4, 0x80, 0x46, 0x00, 0x18, 0x34, 0x00, 0x00, 0x44, 0x07, 0x00, 0x00
00465404  a8 80 46 00 ec 4b 00 00 3c 24 00 00 8c 80 46 00  .byte 0xa8, 0x80, 0x46, 0x00, 0xec, 0x4b, 0x00, 0x00, 0x3c, 0x24, 0x00, 0x00, 0x8c, 0x80, 0x46, 0x00
00465414  88 42 00 00 8c 0e 00 00 70 80 46 00 60 1c 00 00  .byte 0x88, 0x42, 0x00, 0x00, 0x8c, 0x0e, 0x00, 0x00, 0x70, 0x80, 0x46, 0x00, 0x60, 0x1c, 0x00, 0x00
00465424  08 80 46 00 f4 7f 46 00 a8 7f 46 00              .byte 0x08, 0x80, 0x46, 0x00, 0xf4, 0x7f, 0x46, 0x00, 0xa8, 0x7f, 0x46, 0x00

; FUNCTION 0x00465430, declared_size=32, range_size=32, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame7SG_LoadEi
; demangled: PlayerSavegame::SG_Load(int)
; decoder-mode: arm
00465430  70 40 2d e9                                      push {r4, r5, r6, lr}
00465434  00 50 a0 e1                                      mov r5, r0
00465438  01 40 a0 e1                                      mov r4, r1
0046543c  c2 fe ff eb                                      bl #0x464f4c
00465440  05 00 a0 e1                                      mov r0, r5
00465444  04 10 a0 e1                                      mov r1, r4
00465448  70 40 bd e8                                      pop {r4, r5, r6, lr}
0046544c  48 0c 00 ea                                      b #0x468574

; FUNCTION 0x00465450, declared_size=348, range_size=348, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17SG_LoadCheckpointEi
; demangled: PlayerSavegame::SG_LoadCheckpoint(int)
; decoder-mode: arm
00465450  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00465454  44 61 9f e5                                      ldr r6, [pc, #0x144]
00465458  44 71 9f e5                                      ldr r7, [pc, #0x144]
0046545c  08 20 90 e5                                      ldr r2, [r0, #8]
00465460  06 60 8f e0                                      add r6, pc, r6
00465464  07 30 96 e7                                      ldr r3, [r6, r7]
00465468  20 d0 4d e2                                      sub sp, sp, #0x20
0046546c  00 00 52 e3                                      cmp r2, #0
00465470  00 30 93 e5                                      ldr r3, [r3]
00465474  00 40 a0 e1                                      mov r4, r0
00465478  01 80 a0 e1                                      mov r8, r1
0046547c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00465480  43 00 00 0a                                      beq #0x465594
00465484  04 50 8d e2                                      add r5, sp, #4
00465488  05 00 a0 e1                                      mov r0, r5
0046548c  10 10 a0 e3                                      mov r1, #0x10
00465490  14 50 8d e5                                      str r5, [sp, #0x14]
00465494  18 50 8d e5                                      str r5, [sp, #0x18]
00465498  77 b0 fa eb                                      bl #0x31167c
0046549c  14 30 9d e5                                      ldr r3, [sp, #0x14]
004654a0  00 20 a0 e3                                      mov r2, #0
004654a4  00 20 c3 e5                                      strb r2, [r3]
004654a8  04 a0 94 e5                                      ldr sl, [r4, #4]
004654ac  b8 60 0e eb                                      bl #0x7fd794
004654b0  05 30 d0 e5                                      ldrb r3, [r0, #5]
004654b4  00 00 53 e3                                      cmp r3, #0
004654b8  28 00 00 1a                                      bne #0x465560
004654bc  00 30 a0 e3                                      mov r3, #0
004654c0  0a 00 a0 e1                                      mov r0, sl
004654c4  05 10 a0 e1                                      mov r1, r5
004654c8  01 20 a0 e3                                      mov r2, #1
004654cc  ec f9 ff eb                                      bl #0x463c84
004654d0  18 a0 9d e5                                      ldr sl, [sp, #0x18]
004654d4  0a 00 a0 e1                                      mov r0, sl
004654d8  5d a2 fa eb                                      bl #0x30de54
004654dc  08 30 94 e5                                      ldr r3, [r4, #8]
004654e0  00 20 8a e0                                      add r2, sl, r0
004654e4  0a 10 a0 e1                                      mov r1, sl
004654e8  04 00 83 e2                                      add r0, r3, #4
004654ec  3b ad fa eb                                      bl #0x3109e0
004654f0  08 00 94 e5                                      ldr r0, [r4, #8]
004654f4  00 10 a0 e3                                      mov r1, #0
004654f8  74 c1 fa eb                                      bl #0x315ad0
004654fc  08 10 a0 e1                                      mov r1, r8
00465500  04 00 a0 e1                                      mov r0, r4
00465504  c9 ff ff eb                                      bl #0x465430
00465508  00 20 a0 e3                                      mov r2, #0
0046550c  02 30 a0 e1                                      mov r3, r2
00465510  05 10 a0 e1                                      mov r1, r5
00465514  04 00 94 e5                                      ldr r0, [r4, #4]
00465518  d9 f9 ff eb                                      bl #0x463c84
0046551c  18 80 9d e5                                      ldr r8, [sp, #0x18]
00465520  08 00 a0 e1                                      mov r0, r8
00465524  4a a2 fa eb                                      bl #0x30de54
00465528  08 30 94 e5                                      ldr r3, [r4, #8]
0046552c  00 20 88 e0                                      add r2, r8, r0
00465530  08 10 a0 e1                                      mov r1, r8
00465534  04 00 83 e2                                      add r0, r3, #4
00465538  28 ad fa eb                                      bl #0x3109e0
0046553c  05 00 a0 e1                                      mov r0, r5
00465540  19 b9 fa eb                                      bl #0x3139ac
00465544  07 30 96 e7                                      ldr r3, [r6, r7]
00465548  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0046554c  00 30 93 e5                                      ldr r3, [r3]
00465550  03 00 52 e1                                      cmp r2, r3
00465554  10 00 00 1a                                      bne #0x46559c
00465558  20 d0 8d e2                                      add sp, sp, #0x20
0046555c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00465560  40 30 9f e5                                      ldr r3, [pc, #0x40]
00465564  03 90 96 e7                                      ldr sb, [r6, r3]
00465568  40 00 99 e5                                      ldr r0, [sb, #0x40]
0046556c  c0 26 fc eb                                      bl #0x36f074
00465570  00 00 50 e3                                      cmp r0, #0
00465574  01 30 a0 03                                      moveq r3, #1
00465578  d0 ff ff 0a                                      beq #0x4654c0
0046557c  40 30 99 e5                                      ldr r3, [sb, #0x40]
00465580  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
00465584  00 00 53 e3                                      cmp r3, #0
00465588  cb ff ff 0a                                      beq #0x4654bc
0046558c  01 30 a0 e3                                      mov r3, #1
00465590  ca ff ff ea                                      b #0x4654c0
00465594  a5 ff ff eb                                      bl #0x465430
00465598  e9 ff ff ea                                      b #0x465544
0046559c  5b a3 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004655a0  30 f6 52 00 ac 40 00 00 f4 37 00 00              .byte 0x30, 0xf6, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004655ac, declared_size=272, range_size=272, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegameC1Ejib
; demangled: PlayerSavegame::PlayerSavegame(unsigned int, int, bool)
; decoder-mode: arm
004655ac  00 31 9f e5                                      ldr r3, [pc, #0x100]
004655b0  70 40 2d e9                                      push {r4, r5, r6, lr}
004655b4  fc e0 9f e5                                      ldr lr, [pc, #0xfc]
004655b8  03 30 8f e0                                      add r3, pc, r3
004655bc  00 40 a0 e1                                      mov r4, r0
004655c0  0e e0 93 e7                                      ldr lr, [r3, lr]
004655c4  00 50 a0 e3                                      mov r5, #0
004655c8  18 c0 80 e2                                      add ip, r0, #0x18
004655cc  08 e0 8e e2                                      add lr, lr, #8
004655d0  00 e0 80 e5                                      str lr, [r0]
004655d4  04 10 80 e5                                      str r1, [r0, #4]
004655d8  0c 00 a0 e1                                      mov r0, ip
004655dc  28 c0 84 e5                                      str ip, [r4, #0x28]
004655e0  2c c0 84 e5                                      str ip, [r4, #0x2c]
004655e4  10 10 a0 e3                                      mov r1, #0x10
004655e8  08 50 84 e5                                      str r5, [r4, #8]
004655ec  0c 50 c4 e5                                      strb r5, [r4, #0xc]
004655f0  10 50 84 e5                                      str r5, [r4, #0x10]
004655f4  14 50 c4 e5                                      strb r5, [r4, #0x14]
004655f8  02 60 a0 e1                                      mov r6, r2
004655fc  1e b0 fa eb                                      bl #0x31167c
00465600  28 30 94 e5                                      ldr r3, [r4, #0x28]
00465604  b8 00 84 e2                                      add r0, r4, #0xb8
00465608  00 50 c3 e5                                      strb r5, [r3]
0046560c  01 30 a0 e3                                      mov r3, #1
00465610  30 30 84 e5                                      str r3, [r4, #0x30]
00465614  00 30 e0 e3                                      mvn r3, #0
00465618  34 30 84 e5                                      str r3, [r4, #0x34]
0046561c  3c 50 84 e5                                      str r5, [r4, #0x3c]
00465620  80 50 84 e5                                      str r5, [r4, #0x80]
00465624  84 50 84 e5                                      str r5, [r4, #0x84]
00465628  88 50 84 e5                                      str r5, [r4, #0x88]
0046562c  8c 50 84 e5                                      str r5, [r4, #0x8c]
00465630  90 50 84 e5                                      str r5, [r4, #0x90]
00465634  9a 16 00 eb                                      bl #0x46b0a4
00465638  46 0f 84 e2                                      add r0, r4, #0x118
0046563c  98 16 00 eb                                      bl #0x46b0a4
00465640  5f 2f 84 e2                                      add r2, r4, #0x17c
00465644  05 30 a0 e1                                      mov r3, r5
00465648  05 30 82 e7                                      str r3, [r2, r5]
0046564c  05 10 82 e0                                      add r1, r2, r5
00465650  08 50 85 e2                                      add r5, r5, #8
00465654  18 00 55 e3                                      cmp r5, #0x18
00465658  04 30 81 e5                                      str r3, [r1, #4]
0046565c  f9 ff ff 1a                                      bne #0x465648
00465660  03 10 a0 e1                                      mov r1, r3
00465664  94 31 c4 e5                                      strb r3, [r4, #0x194]
00465668  01 20 a0 e1                                      mov r2, r1
0046566c  04 30 a0 e1                                      mov r3, r4
00465670  01 10 81 e2                                      add r1, r1, #1
00465674  03 00 51 e3                                      cmp r1, #3
00465678  94 20 83 e5                                      str r2, [r3, #0x94]
0046567c  a0 20 83 e5                                      str r2, [r3, #0xa0]
00465680  ac 20 83 e5                                      str r2, [r3, #0xac]
00465684  40 20 83 e5                                      str r2, [r3, #0x40]
00465688  68 20 83 e5                                      str r2, [r3, #0x68]
0046568c  74 20 83 e5                                      str r2, [r3, #0x74]
00465690  5c 20 83 e5                                      str r2, [r3, #0x5c]
00465694  50 20 83 e5                                      str r2, [r3, #0x50]
00465698  04 30 83 e2                                      add r3, r3, #4
0046569c  f3 ff ff 1a                                      bne #0x465670
004656a0  04 00 a0 e1                                      mov r0, r4
004656a4  06 10 a0 e1                                      mov r1, r6
004656a8  60 ff ff eb                                      bl #0x465430
004656ac  04 00 a0 e1                                      mov r0, r4
004656b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004656b4  d8 f4 52 00 bc 4b 00 00                          .byte 0xd8, 0xf4, 0x52, 0x00, 0xbc, 0x4b, 0x00, 0x00

; FUNCTION 0x004656bc, declared_size=272, range_size=272, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegameC2Ejib
; demangled: PlayerSavegame::PlayerSavegame(unsigned int, int, bool)
; decoder-mode: arm
004656bc  00 31 9f e5                                      ldr r3, [pc, #0x100]
004656c0  70 40 2d e9                                      push {r4, r5, r6, lr}
004656c4  fc e0 9f e5                                      ldr lr, [pc, #0xfc]
004656c8  03 30 8f e0                                      add r3, pc, r3
004656cc  00 40 a0 e1                                      mov r4, r0
004656d0  0e e0 93 e7                                      ldr lr, [r3, lr]
004656d4  00 50 a0 e3                                      mov r5, #0
004656d8  18 c0 80 e2                                      add ip, r0, #0x18
004656dc  08 e0 8e e2                                      add lr, lr, #8
004656e0  00 e0 80 e5                                      str lr, [r0]
004656e4  04 10 80 e5                                      str r1, [r0, #4]
004656e8  0c 00 a0 e1                                      mov r0, ip
004656ec  28 c0 84 e5                                      str ip, [r4, #0x28]
004656f0  2c c0 84 e5                                      str ip, [r4, #0x2c]
004656f4  10 10 a0 e3                                      mov r1, #0x10
004656f8  08 50 84 e5                                      str r5, [r4, #8]
004656fc  0c 50 c4 e5                                      strb r5, [r4, #0xc]
00465700  10 50 84 e5                                      str r5, [r4, #0x10]
00465704  14 50 c4 e5                                      strb r5, [r4, #0x14]
00465708  02 60 a0 e1                                      mov r6, r2
0046570c  da af fa eb                                      bl #0x31167c
00465710  28 30 94 e5                                      ldr r3, [r4, #0x28]
00465714  b8 00 84 e2                                      add r0, r4, #0xb8
00465718  00 50 c3 e5                                      strb r5, [r3]
0046571c  01 30 a0 e3                                      mov r3, #1
00465720  30 30 84 e5                                      str r3, [r4, #0x30]
00465724  00 30 e0 e3                                      mvn r3, #0
00465728  34 30 84 e5                                      str r3, [r4, #0x34]
0046572c  3c 50 84 e5                                      str r5, [r4, #0x3c]
00465730  80 50 84 e5                                      str r5, [r4, #0x80]
00465734  84 50 84 e5                                      str r5, [r4, #0x84]
00465738  88 50 84 e5                                      str r5, [r4, #0x88]
0046573c  8c 50 84 e5                                      str r5, [r4, #0x8c]
00465740  90 50 84 e5                                      str r5, [r4, #0x90]
00465744  56 16 00 eb                                      bl #0x46b0a4
00465748  46 0f 84 e2                                      add r0, r4, #0x118
0046574c  54 16 00 eb                                      bl #0x46b0a4
00465750  5f 2f 84 e2                                      add r2, r4, #0x17c
00465754  05 30 a0 e1                                      mov r3, r5
00465758  05 30 82 e7                                      str r3, [r2, r5]
0046575c  05 10 82 e0                                      add r1, r2, r5
00465760  08 50 85 e2                                      add r5, r5, #8
00465764  18 00 55 e3                                      cmp r5, #0x18
00465768  04 30 81 e5                                      str r3, [r1, #4]
0046576c  f9 ff ff 1a                                      bne #0x465758
00465770  03 10 a0 e1                                      mov r1, r3
00465774  94 31 c4 e5                                      strb r3, [r4, #0x194]
00465778  01 20 a0 e1                                      mov r2, r1
0046577c  04 30 a0 e1                                      mov r3, r4
00465780  01 10 81 e2                                      add r1, r1, #1
00465784  03 00 51 e3                                      cmp r1, #3
00465788  94 20 83 e5                                      str r2, [r3, #0x94]
0046578c  a0 20 83 e5                                      str r2, [r3, #0xa0]
00465790  ac 20 83 e5                                      str r2, [r3, #0xac]
00465794  40 20 83 e5                                      str r2, [r3, #0x40]
00465798  68 20 83 e5                                      str r2, [r3, #0x68]
0046579c  74 20 83 e5                                      str r2, [r3, #0x74]
004657a0  5c 20 83 e5                                      str r2, [r3, #0x5c]
004657a4  50 20 83 e5                                      str r2, [r3, #0x50]
004657a8  04 30 83 e2                                      add r3, r3, #4
004657ac  f3 ff ff 1a                                      bne #0x465780
004657b0  04 00 a0 e1                                      mov r0, r4
004657b4  06 10 a0 e1                                      mov r1, r6
004657b8  1c ff ff eb                                      bl #0x465430
004657bc  04 00 a0 e1                                      mov r0, r4
004657c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004657c4  c8 f3 52 00 bc 4b 00 00                          .byte 0xc8, 0xf3, 0x52, 0x00, 0xbc, 0x4b, 0x00, 0x00

; FUNCTION 0x00465ae0, declared_size=352, range_size=352, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegameC1Ev
; demangled: PlayerSavegame::PlayerSavegame()
; decoder-mode: arm
00465ae0  50 31 9f e5                                      ldr r3, [pc, #0x150]
00465ae4  50 11 9f e5                                      ldr r1, [pc, #0x150]
00465ae8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00465aec  03 30 8f e0                                      add r3, pc, r3
00465af0  01 10 93 e7                                      ldr r1, [r3, r1]
00465af4  00 40 a0 e1                                      mov r4, r0
00465af8  00 50 a0 e3                                      mov r5, #0
00465afc  18 20 80 e2                                      add r2, r0, #0x18
00465b00  08 10 81 e2                                      add r1, r1, #8
00465b04  00 60 e0 e3                                      mvn r6, #0
00465b08  00 10 80 e5                                      str r1, [r0]
00465b0c  18 d0 4d e2                                      sub sp, sp, #0x18
00465b10  02 00 a0 e1                                      mov r0, r2
00465b14  28 20 84 e5                                      str r2, [r4, #0x28]
00465b18  2c 20 84 e5                                      str r2, [r4, #0x2c]
00465b1c  10 10 a0 e3                                      mov r1, #0x10
00465b20  04 60 84 e5                                      str r6, [r4, #4]
00465b24  08 50 84 e5                                      str r5, [r4, #8]
00465b28  0c 50 c4 e5                                      strb r5, [r4, #0xc]
00465b2c  10 50 84 e5                                      str r5, [r4, #0x10]
00465b30  14 50 c4 e5                                      strb r5, [r4, #0x14]
00465b34  d0 ae fa eb                                      bl #0x31167c
00465b38  28 30 94 e5                                      ldr r3, [r4, #0x28]
00465b3c  b8 00 84 e2                                      add r0, r4, #0xb8
00465b40  00 50 c3 e5                                      strb r5, [r3]
00465b44  34 60 84 e5                                      str r6, [r4, #0x34]
00465b48  30 50 84 e5                                      str r5, [r4, #0x30]
00465b4c  3c 50 84 e5                                      str r5, [r4, #0x3c]
00465b50  80 50 84 e5                                      str r5, [r4, #0x80]
00465b54  84 50 84 e5                                      str r5, [r4, #0x84]
00465b58  88 50 84 e5                                      str r5, [r4, #0x88]
00465b5c  8c 50 84 e5                                      str r5, [r4, #0x8c]
00465b60  90 50 84 e5                                      str r5, [r4, #0x90]
00465b64  4e 15 00 eb                                      bl #0x46b0a4
00465b68  46 0f 84 e2                                      add r0, r4, #0x118
00465b6c  4c 15 00 eb                                      bl #0x46b0a4
00465b70  05 30 a0 e1                                      mov r3, r5
00465b74  78 51 84 e5                                      str r5, [r4, #0x178]
00465b78  5f 1f 84 e2                                      add r1, r4, #0x17c
00465b7c  05 20 a0 e1                                      mov r2, r5
00465b80  03 20 81 e7                                      str r2, [r1, r3]
00465b84  03 00 81 e0                                      add r0, r1, r3
00465b88  08 30 83 e2                                      add r3, r3, #8
00465b8c  18 00 53 e3                                      cmp r3, #0x18
00465b90  04 20 80 e5                                      str r2, [r0, #4]
00465b94  f9 ff ff 1a                                      bne #0x465b80
00465b98  02 50 a0 e1                                      mov r5, r2
00465b9c  94 21 c4 e5                                      strb r2, [r4, #0x194]
00465ba0  88 80 84 e2                                      add r8, r4, #0x88
00465ba4  0d 60 a0 e1                                      mov r6, sp
00465ba8  02 70 a0 e1                                      mov r7, r2
00465bac  08 00 a0 e1                                      mov r0, r8
00465bb0  0d 10 a0 e1                                      mov r1, sp
00465bb4  04 70 8d e5                                      str r7, [sp, #4]
00465bb8  00 70 cd e5                                      strb r7, [sp]
00465bbc  08 60 8d e5                                      str r6, [sp, #8]
00465bc0  0c 60 8d e5                                      str r6, [sp, #0xc]
00465bc4  10 70 8d e5                                      str r7, [sp, #0x10]
00465bc8  9e ff ff eb                                      bl #0x465a48
00465bcc  10 30 9d e5                                      ldr r3, [sp, #0x10]
00465bd0  01 50 85 e2                                      add r5, r5, #1
00465bd4  00 00 53 e3                                      cmp r3, #0
00465bd8  02 00 00 0a                                      beq #0x465be8
00465bdc  0d 00 a0 e1                                      mov r0, sp
00465be0  04 10 9d e5                                      ldr r1, [sp, #4]
00465be4  2a 80 fb eb                                      bl #0x345c94
00465be8  02 00 55 e3                                      cmp r5, #2
00465bec  ee ff ff 1a                                      bne #0x465bac
00465bf0  00 10 a0 e3                                      mov r1, #0
00465bf4  04 30 a0 e1                                      mov r3, r4
00465bf8  01 20 a0 e1                                      mov r2, r1
00465bfc  01 10 81 e2                                      add r1, r1, #1
00465c00  03 00 51 e3                                      cmp r1, #3
00465c04  94 20 83 e5                                      str r2, [r3, #0x94]
00465c08  a0 20 83 e5                                      str r2, [r3, #0xa0]
00465c0c  ac 20 83 e5                                      str r2, [r3, #0xac]
00465c10  40 20 83 e5                                      str r2, [r3, #0x40]
00465c14  68 20 83 e5                                      str r2, [r3, #0x68]
00465c18  74 20 83 e5                                      str r2, [r3, #0x74]
00465c1c  5c 20 83 e5                                      str r2, [r3, #0x5c]
00465c20  50 20 83 e5                                      str r2, [r3, #0x50]
00465c24  04 30 83 e2                                      add r3, r3, #4
00465c28  f3 ff ff 1a                                      bne #0x465bfc
00465c2c  04 00 a0 e1                                      mov r0, r4
00465c30  18 d0 8d e2                                      add sp, sp, #0x18
00465c34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00465c38  a4 ef 52 00 bc 4b 00 00                          .byte 0xa4, 0xef, 0x52, 0x00, 0xbc, 0x4b, 0x00, 0x00

; FUNCTION 0x00465c40, declared_size=352, range_size=352, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegameC2Ev
; demangled: PlayerSavegame::PlayerSavegame()
; decoder-mode: arm
00465c40  50 31 9f e5                                      ldr r3, [pc, #0x150]
00465c44  50 11 9f e5                                      ldr r1, [pc, #0x150]
00465c48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00465c4c  03 30 8f e0                                      add r3, pc, r3
00465c50  01 10 93 e7                                      ldr r1, [r3, r1]
00465c54  00 40 a0 e1                                      mov r4, r0
00465c58  00 50 a0 e3                                      mov r5, #0
00465c5c  18 20 80 e2                                      add r2, r0, #0x18
00465c60  08 10 81 e2                                      add r1, r1, #8
00465c64  00 60 e0 e3                                      mvn r6, #0
00465c68  00 10 80 e5                                      str r1, [r0]
00465c6c  18 d0 4d e2                                      sub sp, sp, #0x18
00465c70  02 00 a0 e1                                      mov r0, r2
00465c74  28 20 84 e5                                      str r2, [r4, #0x28]
00465c78  2c 20 84 e5                                      str r2, [r4, #0x2c]
00465c7c  10 10 a0 e3                                      mov r1, #0x10
00465c80  04 60 84 e5                                      str r6, [r4, #4]
00465c84  08 50 84 e5                                      str r5, [r4, #8]
00465c88  0c 50 c4 e5                                      strb r5, [r4, #0xc]
00465c8c  10 50 84 e5                                      str r5, [r4, #0x10]
00465c90  14 50 c4 e5                                      strb r5, [r4, #0x14]
00465c94  78 ae fa eb                                      bl #0x31167c
00465c98  28 30 94 e5                                      ldr r3, [r4, #0x28]
00465c9c  b8 00 84 e2                                      add r0, r4, #0xb8
00465ca0  00 50 c3 e5                                      strb r5, [r3]
00465ca4  34 60 84 e5                                      str r6, [r4, #0x34]
00465ca8  30 50 84 e5                                      str r5, [r4, #0x30]
00465cac  3c 50 84 e5                                      str r5, [r4, #0x3c]
00465cb0  80 50 84 e5                                      str r5, [r4, #0x80]
00465cb4  84 50 84 e5                                      str r5, [r4, #0x84]
00465cb8  88 50 84 e5                                      str r5, [r4, #0x88]
00465cbc  8c 50 84 e5                                      str r5, [r4, #0x8c]
00465cc0  90 50 84 e5                                      str r5, [r4, #0x90]
00465cc4  f6 14 00 eb                                      bl #0x46b0a4
00465cc8  46 0f 84 e2                                      add r0, r4, #0x118
00465ccc  f4 14 00 eb                                      bl #0x46b0a4
00465cd0  05 30 a0 e1                                      mov r3, r5
00465cd4  78 51 84 e5                                      str r5, [r4, #0x178]
00465cd8  5f 1f 84 e2                                      add r1, r4, #0x17c
00465cdc  05 20 a0 e1                                      mov r2, r5
00465ce0  03 20 81 e7                                      str r2, [r1, r3]
00465ce4  03 00 81 e0                                      add r0, r1, r3
00465ce8  08 30 83 e2                                      add r3, r3, #8
00465cec  18 00 53 e3                                      cmp r3, #0x18
00465cf0  04 20 80 e5                                      str r2, [r0, #4]
00465cf4  f9 ff ff 1a                                      bne #0x465ce0
00465cf8  02 50 a0 e1                                      mov r5, r2
00465cfc  94 21 c4 e5                                      strb r2, [r4, #0x194]
00465d00  88 80 84 e2                                      add r8, r4, #0x88
00465d04  0d 60 a0 e1                                      mov r6, sp
00465d08  02 70 a0 e1                                      mov r7, r2
00465d0c  08 00 a0 e1                                      mov r0, r8
00465d10  0d 10 a0 e1                                      mov r1, sp
00465d14  04 70 8d e5                                      str r7, [sp, #4]
00465d18  00 70 cd e5                                      strb r7, [sp]
00465d1c  08 60 8d e5                                      str r6, [sp, #8]
00465d20  0c 60 8d e5                                      str r6, [sp, #0xc]
00465d24  10 70 8d e5                                      str r7, [sp, #0x10]
00465d28  46 ff ff eb                                      bl #0x465a48
00465d2c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00465d30  01 50 85 e2                                      add r5, r5, #1
00465d34  00 00 53 e3                                      cmp r3, #0
00465d38  02 00 00 0a                                      beq #0x465d48
00465d3c  0d 00 a0 e1                                      mov r0, sp
00465d40  04 10 9d e5                                      ldr r1, [sp, #4]
00465d44  d2 7f fb eb                                      bl #0x345c94
00465d48  02 00 55 e3                                      cmp r5, #2
00465d4c  ee ff ff 1a                                      bne #0x465d0c
00465d50  00 10 a0 e3                                      mov r1, #0
00465d54  04 30 a0 e1                                      mov r3, r4
00465d58  01 20 a0 e1                                      mov r2, r1
00465d5c  01 10 81 e2                                      add r1, r1, #1
00465d60  03 00 51 e3                                      cmp r1, #3
00465d64  94 20 83 e5                                      str r2, [r3, #0x94]
00465d68  a0 20 83 e5                                      str r2, [r3, #0xa0]
00465d6c  ac 20 83 e5                                      str r2, [r3, #0xac]
00465d70  40 20 83 e5                                      str r2, [r3, #0x40]
00465d74  68 20 83 e5                                      str r2, [r3, #0x68]
00465d78  74 20 83 e5                                      str r2, [r3, #0x74]
00465d7c  5c 20 83 e5                                      str r2, [r3, #0x5c]
00465d80  50 20 83 e5                                      str r2, [r3, #0x50]
00465d84  04 30 83 e2                                      add r3, r3, #4
00465d88  f3 ff ff 1a                                      bne #0x465d5c
00465d8c  04 00 a0 e1                                      mov r0, r4
00465d90  18 d0 8d e2                                      add sp, sp, #0x18
00465d94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00465d98  44 ee 52 00 bc 4b 00 00                          .byte 0x44, 0xee, 0x52, 0x00, 0xbc, 0x4b, 0x00, 0x00

; FUNCTION 0x004660c8, declared_size=188, range_size=188, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame18SG_GetNextFreeSlotEv
; demangled: PlayerSavegame::SG_GetNextFreeSlot()
; decoder-mode: arm
004660c8  70 40 2d e9                                      push {r4, r5, r6, lr}
004660cc  10 d0 4d e2                                      sub sp, sp, #0x10
004660d0  04 40 8d e2                                      add r4, sp, #4
004660d4  04 00 a0 e1                                      mov r0, r4
004660d8  00 10 a0 e3                                      mov r1, #0
004660dc  d6 f7 ff eb                                      bl #0x46403c
004660e0  03 00 9d e9                                      ldmib sp, {r0, r1}
004660e4  d5 ff ff eb                                      bl #0x466040
004660e8  04 30 9d e5                                      ldr r3, [sp, #4]
004660ec  08 20 9d e5                                      ldr r2, [sp, #8]
004660f0  02 20 63 e0                                      rsb r2, r3, r2
004660f4  c2 21 a0 e1                                      asr r2, r2, #3
004660f8  02 51 82 e0                                      add r5, r2, r2, lsl #2
004660fc  05 52 85 e0                                      add r5, r5, r5, lsl #4
00466100  05 54 85 e0                                      add r5, r5, r5, lsl #8
00466104  05 58 85 e0                                      add r5, r5, r5, lsl #16
00466108  85 50 92 e0                                      adds r5, r2, r5, lsl #1
0046610c  06 00 00 0a                                      beq #0x46612c
00466110  00 60 a0 e3                                      mov r6, #0
00466114  06 50 a0 e1                                      mov r5, r6
00466118  06 30 83 e0                                      add r3, r3, r6
0046611c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00466120  60 f5 ff eb                                      bl #0x4636a8
00466124  00 00 55 e1                                      cmp r5, r0
00466128  04 00 00 0a                                      beq #0x466140
0046612c  04 00 a0 e1                                      mov r0, r4
00466130  7e b7 fa eb                                      bl #0x313f30
00466134  05 00 a0 e1                                      mov r0, r5
00466138  10 d0 8d e2                                      add sp, sp, #0x10
0046613c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00466140  05 fb ff eb                                      bl #0x464d5c
00466144  00 00 50 e3                                      cmp r0, #0
00466148  f7 ff ff 0a                                      beq #0x46612c
0046614c  04 30 9d e5                                      ldr r3, [sp, #4]
00466150  08 20 9d e5                                      ldr r2, [sp, #8]
00466154  01 50 85 e2                                      add r5, r5, #1
00466158  18 60 86 e2                                      add r6, r6, #0x18
0046615c  02 20 63 e0                                      rsb r2, r3, r2
00466160  c2 21 a0 e1                                      asr r2, r2, #3
00466164  02 11 82 e0                                      add r1, r2, r2, lsl #2
00466168  01 12 81 e0                                      add r1, r1, r1, lsl #4
0046616c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00466170  01 18 81 e0                                      add r1, r1, r1, lsl #16
00466174  81 20 82 e0                                      add r2, r2, r1, lsl #1
00466178  02 00 55 e1                                      cmp r5, r2
0046617c  e5 ff ff 3a                                      blo #0x466118
00466180  e9 ff ff ea                                      b #0x46612c

; FUNCTION 0x00466184, declared_size=428, range_size=428, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17SG_SaveCheckpointEv
; demangled: PlayerSavegame::SG_SaveCheckpoint()
; decoder-mode: arm
00466184  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00466188  94 41 9f e5                                      ldr r4, [pc, #0x194]
0046618c  94 61 9f e5                                      ldr r6, [pc, #0x194]
00466190  08 20 90 e5                                      ldr r2, [r0, #8]
00466194  04 40 8f e0                                      add r4, pc, r4
00466198  06 30 94 e7                                      ldr r3, [r4, r6]
0046619c  24 d0 4d e2                                      sub sp, sp, #0x24
004661a0  00 00 52 e3                                      cmp r2, #0
004661a4  00 30 93 e5                                      ldr r3, [r3]
004661a8  00 50 a0 e1                                      mov r5, r0
004661ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
004661b0  02 00 00 0a                                      beq #0x4661c0
004661b4  0c 80 d0 e5                                      ldrb r8, [r0, #0xc]
004661b8  00 00 58 e3                                      cmp r8, #0
004661bc  06 00 00 0a                                      beq #0x4661dc
004661c0  06 30 94 e7                                      ldr r3, [r4, r6]
004661c4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004661c8  00 30 93 e5                                      ldr r3, [r3]
004661cc  03 00 52 e1                                      cmp r2, r3
004661d0  52 00 00 1a                                      bne #0x466320
004661d4  24 d0 8d e2                                      add sp, sp, #0x24
004661d8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004661dc  04 70 8d e2                                      add r7, sp, #4
004661e0  07 00 a0 e1                                      mov r0, r7
004661e4  10 10 a0 e3                                      mov r1, #0x10
004661e8  14 70 8d e5                                      str r7, [sp, #0x14]
004661ec  18 70 8d e5                                      str r7, [sp, #0x18]
004661f0  21 ad fa eb                                      bl #0x31167c
004661f4  14 30 9d e5                                      ldr r3, [sp, #0x14]
004661f8  00 80 c3 e5                                      strb r8, [r3]
004661fc  04 80 95 e5                                      ldr r8, [r5, #4]
00466200  63 5d 0e eb                                      bl #0x7fd794
00466204  05 30 d0 e5                                      ldrb r3, [r0, #5]
00466208  00 00 53 e3                                      cmp r3, #0
0046620c  34 00 00 1a                                      bne #0x4662e4
00466210  00 30 a0 e3                                      mov r3, #0
00466214  08 00 a0 e1                                      mov r0, r8
00466218  07 10 a0 e1                                      mov r1, r7
0046621c  01 20 a0 e3                                      mov r2, #1
00466220  97 f6 ff eb                                      bl #0x463c84
00466224  18 80 9d e5                                      ldr r8, [sp, #0x18]
00466228  08 00 a0 e1                                      mov r0, r8
0046622c  08 9f fa eb                                      bl #0x30de54
00466230  08 30 95 e5                                      ldr r3, [r5, #8]
00466234  00 20 88 e0                                      add r2, r8, r0
00466238  08 10 a0 e1                                      mov r1, r8
0046623c  04 00 83 e2                                      add r0, r3, #4
00466240  e6 a9 fa eb                                      bl #0x3109e0
00466244  52 5d 0e eb                                      bl #0x7fd794
00466248  05 30 d0 e5                                      ldrb r3, [r0, #5]
0046624c  00 00 53 e3                                      cmp r3, #0
00466250  0f 00 00 0a                                      beq #0x466294
00466254  02 30 a0 e3                                      mov r3, #2
00466258  05 00 a0 e1                                      mov r0, r5
0046625c  01 10 a0 e3                                      mov r1, #1
00466260  78 31 85 e5                                      str r3, [r5, #0x178]
00466264  00 20 a0 e3                                      mov r2, #0
00466268  f0 08 00 eb                                      bl #0x468630
0046626c  08 00 95 e5                                      ldr r0, [r5, #8]
00466270  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
00466274  00 00 51 e3                                      cmp r1, #0
00466278  25 00 00 0a                                      beq #0x466314
0046627c  4d bf fa eb                                      bl #0x315fb8
00466280  00 10 a0 e3                                      mov r1, #0
00466284  05 00 a0 e1                                      mov r0, r5
00466288  01 20 a0 e1                                      mov r2, r1
0046628c  e7 08 00 eb                                      bl #0x468630
00466290  03 00 00 ea                                      b #0x4662a4
00466294  01 30 a0 e3                                      mov r3, #1
00466298  78 31 85 e5                                      str r3, [r5, #0x178]
0046629c  08 00 95 e5                                      ldr r0, [r5, #8]
004662a0  44 bf fa eb                                      bl #0x315fb8
004662a4  00 20 a0 e3                                      mov r2, #0
004662a8  02 30 a0 e1                                      mov r3, r2
004662ac  07 10 a0 e1                                      mov r1, r7
004662b0  04 00 95 e5                                      ldr r0, [r5, #4]
004662b4  72 f6 ff eb                                      bl #0x463c84
004662b8  18 80 9d e5                                      ldr r8, [sp, #0x18]
004662bc  08 00 a0 e1                                      mov r0, r8
004662c0  e3 9e fa eb                                      bl #0x30de54
004662c4  08 30 95 e5                                      ldr r3, [r5, #8]
004662c8  00 20 88 e0                                      add r2, r8, r0
004662cc  08 10 a0 e1                                      mov r1, r8
004662d0  04 00 83 e2                                      add r0, r3, #4
004662d4  c1 a9 fa eb                                      bl #0x3109e0
004662d8  07 00 a0 e1                                      mov r0, r7
004662dc  b2 b5 fa eb                                      bl #0x3139ac
004662e0  b6 ff ff ea                                      b #0x4661c0
004662e4  40 30 9f e5                                      ldr r3, [pc, #0x40]
004662e8  03 a0 94 e7                                      ldr sl, [r4, r3]
004662ec  40 00 9a e5                                      ldr r0, [sl, #0x40]
004662f0  5f 23 fc eb                                      bl #0x36f074
004662f4  00 00 50 e3                                      cmp r0, #0
004662f8  03 00 00 0a                                      beq #0x46630c
004662fc  40 30 9a e5                                      ldr r3, [sl, #0x40]
00466300  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
00466304  00 00 53 e3                                      cmp r3, #0
00466308  c0 ff ff 0a                                      beq #0x466210
0046630c  01 30 a0 e3                                      mov r3, #1
00466310  bf ff ff ea                                      b #0x466214
00466314  ed bd fa eb                                      bl #0x315ad0
00466318  08 00 95 e5                                      ldr r0, [r5, #8]
0046631c  d6 ff ff ea                                      b #0x46627c
00466320  fa 9f fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00466324  fc e8 52 00 ac 40 00 00 f4 37 00 00              .byte 0xfc, 0xe8, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00466384, declared_size=116, range_size=116, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame23SG_UnlockAllFastTravelsEv
; demangled: PlayerSavegame::SG_UnlockAllFastTravels()
; decoder-mode: arm
00466384  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00466388  60 50 9f e5                                      ldr r5, [pc, #0x60]
0046638c  60 70 9f e5                                      ldr r7, [pc, #0x60]
00466390  00 90 a0 e1                                      mov sb, r0
00466394  05 50 8f e0                                      add r5, pc, r5
00466398  07 a0 95 e7                                      ldr sl, [r5, r7]
0046639c  00 80 a0 e3                                      mov r8, #0
004663a0  00 30 9a e5                                      ldr r3, [sl]
004663a4  00 00 53 e3                                      cmp r3, #0
004663a8  0c 00 00 0a                                      beq #0x4663e0
004663ac  88 61 89 e0                                      add r6, sb, r8, lsl #3
004663b0  00 10 a0 e3                                      mov r1, #0
004663b4  5f 6f 86 e2                                      add r6, r6, #0x17c
004663b8  01 40 a0 e1                                      mov r4, r1
004663bc  06 00 a0 e1                                      mov r0, r6
004663c0  01 20 a0 e3                                      mov r2, #1
004663c4  d9 ff ff eb                                      bl #0x466330
004663c8  07 30 95 e7                                      ldr r3, [r5, r7]
004663cc  01 40 84 e2                                      add r4, r4, #1
004663d0  04 10 a0 e1                                      mov r1, r4
004663d4  00 30 93 e5                                      ldr r3, [r3]
004663d8  03 00 54 e1                                      cmp r4, r3
004663dc  f6 ff ff 3a                                      blo #0x4663bc
004663e0  01 80 88 e2                                      add r8, r8, #1
004663e4  03 00 58 e3                                      cmp r8, #3
004663e8  ec ff ff 1a                                      bne #0x4663a0
004663ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
004663f0  fc e6 52 00 f4 45 00 00                          .byte 0xfc, 0xe6, 0x52, 0x00, 0xf4, 0x45, 0x00, 0x00

; FUNCTION 0x004663f8, declared_size=164, range_size=164, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame26SG_SetFastTravelIdUnlockedEPKcbi
; demangled: PlayerSavegame::SG_SetFastTravelIdUnlocked(char const*, bool, int)
; decoder-mode: arm
004663f8  90 c0 9f e5                                      ldr ip, [pc, #0x90]
004663fc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00466400  00 50 a0 e1                                      mov r5, r0
00466404  88 00 9f e5                                      ldr r0, [pc, #0x88]
00466408  0c c0 8f e0                                      add ip, pc, ip
0046640c  01 40 a0 e1                                      mov r4, r1
00466410  00 00 9c e7                                      ldr r0, [ip, r0]
00466414  02 70 a0 e1                                      mov r7, r2
00466418  03 90 a0 e1                                      mov sb, r3
0046641c  00 60 90 e5                                      ldr r6, [r0]
00466420  00 00 56 e3                                      cmp r6, #0
00466424  16 00 00 0a                                      beq #0x466484
00466428  68 30 9f e5                                      ldr r3, [pc, #0x68]
0046642c  00 80 a0 e3                                      mov r8, #0
00466430  03 30 9c e7                                      ldr r3, [ip, r3]
00466434  00 a0 93 e5                                      ldr sl, [r3]
00466438  02 00 00 ea                                      b #0x466448
0046643c  01 80 88 e2                                      add r8, r8, #1
00466440  06 00 58 e1                                      cmp r8, r6
00466444  0f 00 00 0a                                      beq #0x466488
00466448  08 11 9a e7                                      ldr r1, [sl, r8, lsl #2]
0046644c  04 00 a0 e1                                      mov r0, r4
00466450  b1 9f fa eb                                      bl #0x30e31c
00466454  00 00 50 e3                                      cmp r0, #0
00466458  f7 ff ff 1a                                      bne #0x46643c
0046645c  00 00 58 e3                                      cmp r8, #0
00466460  09 00 00 ba                                      blt #0x46648c
00466464  08 00 56 e1                                      cmp r6, r8
00466468  05 00 00 9a                                      bls #0x466484
0046646c  89 01 85 e0                                      add r0, r5, sb, lsl #3
00466470  5f 0f 80 e2                                      add r0, r0, #0x17c
00466474  08 10 a0 e1                                      mov r1, r8
00466478  07 20 a0 e1                                      mov r2, r7
0046647c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00466480  aa ff ff ea                                      b #0x466330
00466484  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00466488  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0046648c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00466490  88 e6 52 00 f4 45 00 00 e4 1e 00 00              .byte 0x88, 0xe6, 0x52, 0x00, 0xf4, 0x45, 0x00, 0x00, 0xe4, 0x1e, 0x00, 0x00

; FUNCTION 0x0046649c, declared_size=200, range_size=200, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame26SG_GetFastTravelIdUnlockedEPKci
; demangled: PlayerSavegame::SG_GetFastTravelIdUnlocked(char const*, int)
; decoder-mode: arm
0046649c  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
004664a0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004664a4  00 50 a0 e1                                      mov r5, r0
004664a8  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
004664ac  03 30 8f e0                                      add r3, pc, r3
004664b0  01 40 a0 e1                                      mov r4, r1
004664b4  00 00 93 e7                                      ldr r0, [r3, r0]
004664b8  02 a0 a0 e1                                      mov sl, r2
004664bc  00 70 90 e5                                      ldr r7, [r0]
004664c0  00 00 57 e3                                      cmp r7, #0
004664c4  1c 00 00 0a                                      beq #0x46653c
004664c8  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
004664cc  00 60 a0 e3                                      mov r6, #0
004664d0  02 30 93 e7                                      ldr r3, [r3, r2]
004664d4  00 80 93 e5                                      ldr r8, [r3]
004664d8  02 00 00 ea                                      b #0x4664e8
004664dc  01 60 86 e2                                      add r6, r6, #1
004664e0  07 00 56 e1                                      cmp r6, r7
004664e4  14 00 00 0a                                      beq #0x46653c
004664e8  06 11 98 e7                                      ldr r1, [r8, r6, lsl #2]
004664ec  04 00 a0 e1                                      mov r0, r4
004664f0  89 9f fa eb                                      bl #0x30e31c
004664f4  00 00 50 e3                                      cmp r0, #0
004664f8  f7 ff ff 1a                                      bne #0x4664dc
004664fc  00 00 56 e3                                      cmp r6, #0
00466500  0d 00 00 ba                                      blt #0x46653c
00466504  07 00 56 e1                                      cmp r6, r7
00466508  0b 00 00 2a                                      bhs #0x46653c
0046650c  3f 00 56 e3                                      cmp r6, #0x3f
00466510  0b 00 00 8a                                      bhi #0x466544
00466514  8a a0 a0 e1                                      lsl sl, sl, #1
00466518  a6 a2 8a e0                                      add sl, sl, r6, lsr #5
0046651c  01 20 a0 e3                                      mov r2, #1
00466520  0a 51 85 e0                                      add r5, r5, sl, lsl #2
00466524  7c 31 95 e5                                      ldr r3, [r5, #0x17c]
00466528  1f 60 06 e2                                      and r6, r6, #0x1f
0046652c  12 36 13 e0                                      ands r3, r3, r2, lsl r6
00466530  00 00 a0 03                                      moveq r0, #0
00466534  01 00 a0 13                                      movne r0, #1
00466538  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0046653c  00 00 a0 e3                                      mov r0, #0
00466540  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00466544  14 00 9f e5                                      ldr r0, [pc, #0x14]
00466548  00 00 8f e0                                      add r0, pc, r0
0046654c  57 8a 0a eb                                      bl #0x708eb0
00466550  ef ff ff ea                                      b #0x466514
; mapping-symbol data/literal pool
00466554  e4 e5 52 00 f4 45 00 00 e4 1e 00 00 80 b7 45 00  .byte 0xe4, 0xe5, 0x52, 0x00, 0xf4, 0x45, 0x00, 0x00, 0xe4, 0x1e, 0x00, 0x00, 0x80, 0xb7, 0x45, 0x00

; FUNCTION 0x00466564, declared_size=32, range_size=32, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame13SG_GetQuestSGEv
; demangled: PlayerSavegame::SG_GetQuestSG() const
; decoder-mode: arm
00466564  10 40 2d e9                                      push {r4, lr}
00466568  00 40 a0 e1                                      mov r4, r0
0046656c  88 5c 0e eb                                      bl #0x7fd794
00466570  05 30 d0 e5                                      ldrb r3, [r0, #5]
00466574  00 00 53 e3                                      cmp r3, #0
00466578  46 0f 84 12                                      addne r0, r4, #0x118
0046657c  b8 00 84 02                                      addeq r0, r4, #0xb8
00466580  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00466584, declared_size=4, range_size=4, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame13SG_GetQuestSGEv
; demangled: PlayerSavegame::SG_GetQuestSG()
; decoder-mode: arm
00466584  f6 ff ff ea                                      b #0x466564

; FUNCTION 0x00466588, declared_size=180, range_size=180, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17SG_SetFaerieStateEjii
; demangled: PlayerSavegame::SG_SetFaerieState(unsigned int, int, int)
; decoder-mode: arm
00466588  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0046658c  03 60 a0 e1                                      mov r6, r3
00466590  28 30 83 e2                                      add r3, r3, #0x28
00466594  00 50 a0 e1                                      mov r5, r0
00466598  03 01 90 e7                                      ldr r0, [r0, r3, lsl #2]
0046659c  80 30 9f e5                                      ldr r3, [pc, #0x80]
004665a0  0c d0 4d e2                                      sub sp, sp, #0xc
004665a4  01 00 50 e1                                      cmp r0, r1
004665a8  01 40 a0 e1                                      mov r4, r1
004665ac  03 30 8f e0                                      add r3, pc, r3
004665b0  02 70 a0 e1                                      mov r7, r2
004665b4  08 00 00 8a                                      bhi #0x4665dc
004665b8  68 20 9f e5                                      ldr r2, [pc, #0x68]
004665bc  02 20 93 e7                                      ldr r2, [r3, r2]
004665c0  00 20 92 e5                                      ldr r2, [r2]
004665c4  02 00 52 e3                                      cmp r2, #2
004665c8  00 30 a0 03                                      moveq r3, #0
004665cc  00 30 83 05                                      streq r3, [r3]
004665d0  01 00 00 0a                                      beq #0x4665dc
004665d4  01 00 52 e3                                      cmp r2, #1
004665d8  04 00 00 0a                                      beq #0x4665f0
004665dc  06 51 85 e0                                      add r5, r5, r6, lsl #2
004665e0  94 30 95 e5                                      ldr r3, [r5, #0x94]
004665e4  04 71 c3 e7                                      strb r7, [r3, r4, lsl #2]
004665e8  0c d0 8d e2                                      add sp, sp, #0xc
004665ec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004665f0  34 00 9f e5                                      ldr r0, [pc, #0x34]
004665f4  34 10 9f e5                                      ldr r1, [pc, #0x34]
004665f8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004665fc  00 00 93 e7                                      ldr r0, [r3, r0]
00466600  30 30 9f e5                                      ldr r3, [pc, #0x30]
00466604  4a c1 00 e3                                      movw ip, #0x14a
00466608  01 10 8f e0                                      add r1, pc, r1
0046660c  02 20 8f e0                                      add r2, pc, r2
00466610  03 30 8f e0                                      add r3, pc, r3
00466614  a8 00 80 e2                                      add r0, r0, #0xa8
00466618  00 c0 8d e5                                      str ip, [sp]
0046661c  78 9e fa eb                                      bl #0x30e004
00466620  ed ff ff ea                                      b #0x4665dc
; mapping-symbol data/literal pool
00466624  e4 e4 52 00 c0 39 00 00 c0 19 00 00 d0 7d 45 00  .byte 0xe4, 0xe4, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xd0, 0x7d, 0x45, 0x00
00466634  54 6c 46 00 70 6c 46 00                          .byte 0x54, 0x6c, 0x46, 0x00, 0x70, 0x6c, 0x46, 0x00

; FUNCTION 0x0046663c, declared_size=196, range_size=196, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17SG_SetFaerieLevelEjii
; demangled: PlayerSavegame::SG_SetFaerieLevel(unsigned int, int, int)
; decoder-mode: arm
0046663c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00466640  28 70 83 e2                                      add r7, r3, #0x28
00466644  00 50 a0 e1                                      mov r5, r0
00466648  07 01 90 e7                                      ldr r0, [r0, r7, lsl #2]
0046664c  03 60 a0 e1                                      mov r6, r3
00466650  90 30 9f e5                                      ldr r3, [pc, #0x90]
00466654  01 00 50 e1                                      cmp r0, r1
00466658  08 d0 4d e2                                      sub sp, sp, #8
0046665c  01 40 a0 e1                                      mov r4, r1
00466660  03 30 8f e0                                      add r3, pc, r3
00466664  02 80 a0 e1                                      mov r8, r2
00466668  19 00 00 8a                                      bhi #0x4666d4
0046666c  78 20 9f e5                                      ldr r2, [pc, #0x78]
00466670  02 20 93 e7                                      ldr r2, [r3, r2]
00466674  00 20 92 e5                                      ldr r2, [r2]
00466678  02 00 52 e3                                      cmp r2, #2
0046667c  00 30 a0 03                                      moveq r3, #0
00466680  00 30 83 05                                      streq r3, [r3]
00466684  01 00 00 0a                                      beq #0x466690
00466688  01 00 52 e3                                      cmp r2, #1
0046668c  01 00 00 0a                                      beq #0x466698
00466690  08 d0 8d e2                                      add sp, sp, #8
00466694  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00466698  50 00 9f e5                                      ldr r0, [pc, #0x50]
0046669c  50 10 9f e5                                      ldr r1, [pc, #0x50]
004666a0  50 20 9f e5                                      ldr r2, [pc, #0x50]
004666a4  00 00 93 e7                                      ldr r0, [r3, r0]
004666a8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004666ac  33 c1 00 e3                                      movw ip, #0x133
004666b0  01 10 8f e0                                      add r1, pc, r1
004666b4  03 30 8f e0                                      add r3, pc, r3
004666b8  a8 00 80 e2                                      add r0, r0, #0xa8
004666bc  02 20 8f e0                                      add r2, pc, r2
004666c0  00 c0 8d e5                                      str ip, [sp]
004666c4  4e 9e fa eb                                      bl #0x30e004
004666c8  07 31 95 e7                                      ldr r3, [r5, r7, lsl #2]
004666cc  03 00 54 e1                                      cmp r4, r3
004666d0  ee ff ff 2a                                      bhs #0x466690
004666d4  06 51 85 e0                                      add r5, r5, r6, lsl #2
004666d8  94 30 95 e5                                      ldr r3, [r5, #0x94]
004666dc  04 41 83 e0                                      add r4, r3, r4, lsl #2
004666e0  b2 80 c4 e1                                      strh r8, [r4, #2]
004666e4  e9 ff ff ea                                      b #0x466690
; mapping-symbol data/literal pool
004666e8  30 e4 52 00 c0 39 00 00 c0 19 00 00 28 7d 45 00  .byte 0x30, 0xe4, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x28, 0x7d, 0x45, 0x00
004666f8  a4 6b 46 00 cc 6b 46 00                          .byte 0xa4, 0x6b, 0x46, 0x00, 0xcc, 0x6b, 0x46, 0x00

; FUNCTION 0x00466700, declared_size=196, range_size=196, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame17SG_GetFaerieLevelEji
; demangled: PlayerSavegame::SG_GetFaerieLevel(unsigned int, int) const
; decoder-mode: arm
00466700  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00466704  28 70 82 e2                                      add r7, r2, #0x28
00466708  02 60 a0 e1                                      mov r6, r2
0046670c  07 21 90 e7                                      ldr r2, [r0, r7, lsl #2]
00466710  94 30 9f e5                                      ldr r3, [pc, #0x94]
00466714  0c d0 4d e2                                      sub sp, sp, #0xc
00466718  01 00 52 e1                                      cmp r2, r1
0046671c  00 50 a0 e1                                      mov r5, r0
00466720  01 40 a0 e1                                      mov r4, r1
00466724  03 30 8f e0                                      add r3, pc, r3
00466728  1a 00 00 8a                                      bhi #0x466798
0046672c  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00466730  02 20 93 e7                                      ldr r2, [r3, r2]
00466734  00 20 92 e5                                      ldr r2, [r2]
00466738  02 00 52 e3                                      cmp r2, #2
0046673c  00 00 a0 03                                      moveq r0, #0
00466740  00 00 80 05                                      streq r0, [r0]
00466744  02 00 00 0a                                      beq #0x466754
00466748  01 00 52 e3                                      cmp r2, #1
0046674c  02 00 00 0a                                      beq #0x46675c
00466750  00 00 a0 e3                                      mov r0, #0
00466754  0c d0 8d e2                                      add sp, sp, #0xc
00466758  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0046675c  50 00 9f e5                                      ldr r0, [pc, #0x50]
00466760  50 10 9f e5                                      ldr r1, [pc, #0x50]
00466764  50 20 9f e5                                      ldr r2, [pc, #0x50]
00466768  00 00 93 e7                                      ldr r0, [r3, r0]
0046676c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00466770  4a cf a0 e3                                      mov ip, #0x128
00466774  01 10 8f e0                                      add r1, pc, r1
00466778  03 30 8f e0                                      add r3, pc, r3
0046677c  a8 00 80 e2                                      add r0, r0, #0xa8
00466780  02 20 8f e0                                      add r2, pc, r2
00466784  00 c0 8d e5                                      str ip, [sp]
00466788  1d 9e fa eb                                      bl #0x30e004
0046678c  07 31 95 e7                                      ldr r3, [r5, r7, lsl #2]
00466790  03 00 54 e1                                      cmp r4, r3
00466794  ed ff ff 2a                                      bhs #0x466750
00466798  06 51 85 e0                                      add r5, r5, r6, lsl #2
0046679c  94 30 95 e5                                      ldr r3, [r5, #0x94]
004667a0  04 41 83 e0                                      add r4, r3, r4, lsl #2
004667a4  b2 00 d4 e1                                      ldrh r0, [r4, #2]
004667a8  e9 ff ff ea                                      b #0x466754
; mapping-symbol data/literal pool
004667ac  6c e3 52 00 c0 39 00 00 c0 19 00 00 64 7c 45 00  .byte 0x6c, 0xe3, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x64, 0x7c, 0x45, 0x00
004667bc  e0 6a 46 00 08 6b 46 00                          .byte 0xe0, 0x6a, 0x46, 0x00, 0x08, 0x6b, 0x46, 0x00

; FUNCTION 0x004667c4, declared_size=280, range_size=280, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame16SG_SetSkillLevelEji
; demangled: PlayerSavegame::SG_SetSkillLevel(unsigned int, int)
; decoder-mode: arm
004667c4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004667c8  84 30 90 e5                                      ldr r3, [r0, #0x84]
004667cc  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
004667d0  0c d0 4d e2                                      sub sp, sp, #0xc
004667d4  01 00 53 e1                                      cmp r3, r1
004667d8  00 50 a0 e1                                      mov r5, r0
004667dc  01 60 a0 e1                                      mov r6, r1
004667e0  04 40 8f e0                                      add r4, pc, r4
004667e4  02 70 a0 e1                                      mov r7, r2
004667e8  08 00 00 8a                                      bhi #0x466810
004667ec  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
004667f0  03 30 94 e7                                      ldr r3, [r4, r3]
004667f4  00 30 93 e5                                      ldr r3, [r3]
004667f8  02 00 53 e3                                      cmp r3, #2
004667fc  00 30 a0 03                                      moveq r3, #0
00466800  00 30 83 05                                      streq r3, [r3]
00466804  01 00 00 0a                                      beq #0x466810
00466808  01 00 53 e3                                      cmp r3, #1
0046680c  1c 00 00 0a                                      beq #0x466884
00466810  80 30 95 e5                                      ldr r3, [r5, #0x80]
00466814  00 00 53 e3                                      cmp r3, #0
00466818  03 00 00 0a                                      beq #0x46682c
0046681c  86 61 83 e0                                      add r6, r3, r6, lsl #3
00466820  b4 70 c6 e1                                      strh r7, [r6, #4]
00466824  0c d0 8d e2                                      add sp, sp, #0xc
00466828  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0046682c  88 20 9f e5                                      ldr r2, [pc, #0x88]
00466830  02 20 94 e7                                      ldr r2, [r4, r2]
00466834  00 20 92 e5                                      ldr r2, [r2]
00466838  02 00 52 e3                                      cmp r2, #2
0046683c  00 30 83 05                                      streq r3, [r3]
00466840  f5 ff ff 0a                                      beq #0x46681c
00466844  01 00 52 e3                                      cmp r2, #1
00466848  f3 ff ff 1a                                      bne #0x46681c
0046684c  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00466850  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00466854  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00466858  00 00 94 e7                                      ldr r0, [r4, r0]
0046685c  68 30 9f e5                                      ldr r3, [pc, #0x68]
00466860  b2 c0 a0 e3                                      mov ip, #0xb2
00466864  01 10 8f e0                                      add r1, pc, r1
00466868  03 30 8f e0                                      add r3, pc, r3
0046686c  a8 00 80 e2                                      add r0, r0, #0xa8
00466870  02 20 8f e0                                      add r2, pc, r2
00466874  00 c0 8d e5                                      str ip, [sp]
00466878  e1 9d fa eb                                      bl #0x30e004
0046687c  80 30 95 e5                                      ldr r3, [r5, #0x80]
00466880  e5 ff ff ea                                      b #0x46681c
00466884  34 00 9f e5                                      ldr r0, [pc, #0x34]
00466888  40 10 9f e5                                      ldr r1, [pc, #0x40]
0046688c  40 20 9f e5                                      ldr r2, [pc, #0x40]
00466890  00 00 94 e7                                      ldr r0, [r4, r0]
00466894  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00466898  b1 c0 a0 e3                                      mov ip, #0xb1
0046689c  01 10 8f e0                                      add r1, pc, r1
004668a0  02 20 8f e0                                      add r2, pc, r2
004668a4  03 30 8f e0                                      add r3, pc, r3
004668a8  a8 00 80 e2                                      add r0, r0, #0xa8
004668ac  00 c0 8d e5                                      str ip, [sp]
004668b0  d3 9d fa eb                                      bl #0x30e004
004668b4  d5 ff ff ea                                      b #0x466810
; mapping-symbol data/literal pool
004668b8  b0 e2 52 00 c0 39 00 00 c0 19 00 00 74 7b 45 00  .byte 0xb0, 0xe2, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x74, 0x7b, 0x45, 0x00
004668c8  78 6a 46 00 18 6a 46 00 3c 7b 45 00 30 6a 46 00  .byte 0x78, 0x6a, 0x46, 0x00, 0x18, 0x6a, 0x46, 0x00, 0x3c, 0x7b, 0x45, 0x00, 0x30, 0x6a, 0x46, 0x00
004668d8  dc 69 46 00                                      .byte 0xdc, 0x69, 0x46, 0x00

; FUNCTION 0x004668dc, declared_size=300, range_size=300, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame16SG_GetSkillLevelEj
; demangled: PlayerSavegame::SG_GetSkillLevel(unsigned int) const
; decoder-mode: arm
004668dc  70 40 2d e9                                      push {r4, r5, r6, lr}
004668e0  84 30 90 e5                                      ldr r3, [r0, #0x84]
004668e4  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
004668e8  08 d0 4d e2                                      sub sp, sp, #8
004668ec  01 00 53 e1                                      cmp r3, r1
004668f0  00 50 a0 e1                                      mov r5, r0
004668f4  01 60 a0 e1                                      mov r6, r1
004668f8  04 40 8f e0                                      add r4, pc, r4
004668fc  08 00 00 8a                                      bhi #0x466924
00466900  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00466904  03 30 94 e7                                      ldr r3, [r4, r3]
00466908  00 30 93 e5                                      ldr r3, [r3]
0046690c  02 00 53 e3                                      cmp r3, #2
00466910  00 30 a0 03                                      moveq r3, #0
00466914  00 30 83 05                                      streq r3, [r3]
00466918  01 00 00 0a                                      beq #0x466924
0046691c  01 00 53 e3                                      cmp r3, #1
00466920  11 00 00 0a                                      beq #0x46696c
00466924  80 30 95 e5                                      ldr r3, [r5, #0x80]
00466928  00 00 53 e3                                      cmp r3, #0
0046692c  03 00 00 0a                                      beq #0x466940
00466930  86 61 83 e0                                      add r6, r3, r6, lsl #3
00466934  b4 00 d6 e1                                      ldrh r0, [r6, #4]
00466938  08 d0 8d e2                                      add sp, sp, #8
0046693c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00466940  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00466944  02 20 94 e7                                      ldr r2, [r4, r2]
00466948  00 20 92 e5                                      ldr r2, [r2]
0046694c  02 00 52 e3                                      cmp r2, #2
00466950  00 30 83 05                                      streq r3, [r3]
00466954  00 00 e0 03                                      mvneq r0, #0
00466958  f6 ff ff 0a                                      beq #0x466938
0046695c  01 00 52 e3                                      cmp r2, #1
00466960  0e 00 00 0a                                      beq #0x4669a0
00466964  00 00 e0 e3                                      mvn r0, #0
00466968  f2 ff ff ea                                      b #0x466938
0046696c  78 00 9f e5                                      ldr r0, [pc, #0x78]
00466970  78 10 9f e5                                      ldr r1, [pc, #0x78]
00466974  78 20 9f e5                                      ldr r2, [pc, #0x78]
00466978  00 00 94 e7                                      ldr r0, [r4, r0]
0046697c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00466980  a5 c0 a0 e3                                      mov ip, #0xa5
00466984  01 10 8f e0                                      add r1, pc, r1
00466988  02 20 8f e0                                      add r2, pc, r2
0046698c  03 30 8f e0                                      add r3, pc, r3
00466990  a8 00 80 e2                                      add r0, r0, #0xa8
00466994  00 c0 8d e5                                      str ip, [sp]
00466998  99 9d fa eb                                      bl #0x30e004
0046699c  e0 ff ff ea                                      b #0x466924
004669a0  44 00 9f e5                                      ldr r0, [pc, #0x44]
004669a4  50 10 9f e5                                      ldr r1, [pc, #0x50]
004669a8  50 20 9f e5                                      ldr r2, [pc, #0x50]
004669ac  00 00 94 e7                                      ldr r0, [r4, r0]
004669b0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004669b4  a6 c0 a0 e3                                      mov ip, #0xa6
004669b8  01 10 8f e0                                      add r1, pc, r1
004669bc  03 30 8f e0                                      add r3, pc, r3
004669c0  a8 00 80 e2                                      add r0, r0, #0xa8
004669c4  02 20 8f e0                                      add r2, pc, r2
004669c8  00 c0 8d e5                                      str ip, [sp]
004669cc  8c 9d fa eb                                      bl #0x30e004
004669d0  80 30 95 e5                                      ldr r3, [r5, #0x80]
004669d4  00 00 53 e3                                      cmp r3, #0
004669d8  d4 ff ff 1a                                      bne #0x466930
004669dc  00 00 e0 e3                                      mvn r0, #0
004669e0  d4 ff ff ea                                      b #0x466938
; mapping-symbol data/literal pool
004669e4  98 e1 52 00 c0 39 00 00 c0 19 00 00 54 7a 45 00  .byte 0x98, 0xe1, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x54, 0x7a, 0x45, 0x00
004669f4  48 69 46 00 f4 68 46 00 20 7a 45 00 24 69 46 00  .byte 0x48, 0x69, 0x46, 0x00, 0xf4, 0x68, 0x46, 0x00, 0x20, 0x7a, 0x45, 0x00, 0x24, 0x69, 0x46, 0x00
00466a04  c4 68 46 00                                      .byte 0xc4, 0x68, 0x46, 0x00

; FUNCTION 0x00466a08, declared_size=272, range_size=272, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame13SG_GetSkillIdEj
; demangled: PlayerSavegame::SG_GetSkillId(unsigned int) const
; decoder-mode: arm
00466a08  70 40 2d e9                                      push {r4, r5, r6, lr}
00466a0c  84 30 90 e5                                      ldr r3, [r0, #0x84]
00466a10  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
00466a14  08 d0 4d e2                                      sub sp, sp, #8
00466a18  01 00 53 e1                                      cmp r3, r1
00466a1c  00 50 a0 e1                                      mov r5, r0
00466a20  01 60 a0 e1                                      mov r6, r1
00466a24  04 40 8f e0                                      add r4, pc, r4
00466a28  08 00 00 8a                                      bhi #0x466a50
00466a2c  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00466a30  03 30 94 e7                                      ldr r3, [r4, r3]
00466a34  00 30 93 e5                                      ldr r3, [r3]
00466a38  02 00 53 e3                                      cmp r3, #2
00466a3c  00 30 a0 03                                      moveq r3, #0
00466a40  00 30 83 05                                      streq r3, [r3]
00466a44  01 00 00 0a                                      beq #0x466a50
00466a48  01 00 53 e3                                      cmp r3, #1
00466a4c  1b 00 00 0a                                      beq #0x466ac0
00466a50  80 30 95 e5                                      ldr r3, [r5, #0x80]
00466a54  00 00 53 e3                                      cmp r3, #0
00466a58  02 00 00 0a                                      beq #0x466a68
00466a5c  86 01 93 e7                                      ldr r0, [r3, r6, lsl #3]
00466a60  08 d0 8d e2                                      add sp, sp, #8
00466a64  70 80 bd e8                                      pop {r4, r5, r6, pc}
00466a68  88 20 9f e5                                      ldr r2, [pc, #0x88]
00466a6c  02 20 94 e7                                      ldr r2, [r4, r2]
00466a70  00 20 92 e5                                      ldr r2, [r2]
00466a74  02 00 52 e3                                      cmp r2, #2
00466a78  00 30 83 05                                      streq r3, [r3]
00466a7c  f6 ff ff 0a                                      beq #0x466a5c
00466a80  01 00 52 e3                                      cmp r2, #1
00466a84  f4 ff ff 1a                                      bne #0x466a5c
00466a88  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00466a8c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00466a90  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00466a94  00 00 94 e7                                      ldr r0, [r4, r0]
00466a98  68 30 9f e5                                      ldr r3, [pc, #0x68]
00466a9c  9c c0 a0 e3                                      mov ip, #0x9c
00466aa0  01 10 8f e0                                      add r1, pc, r1
00466aa4  03 30 8f e0                                      add r3, pc, r3
00466aa8  a8 00 80 e2                                      add r0, r0, #0xa8
00466aac  02 20 8f e0                                      add r2, pc, r2
00466ab0  00 c0 8d e5                                      str ip, [sp]
00466ab4  52 9d fa eb                                      bl #0x30e004
00466ab8  80 30 95 e5                                      ldr r3, [r5, #0x80]
00466abc  e6 ff ff ea                                      b #0x466a5c
00466ac0  34 00 9f e5                                      ldr r0, [pc, #0x34]
00466ac4  40 10 9f e5                                      ldr r1, [pc, #0x40]
00466ac8  40 20 9f e5                                      ldr r2, [pc, #0x40]
00466acc  00 00 94 e7                                      ldr r0, [r4, r0]
00466ad0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00466ad4  9b c0 a0 e3                                      mov ip, #0x9b
00466ad8  01 10 8f e0                                      add r1, pc, r1
00466adc  02 20 8f e0                                      add r2, pc, r2
00466ae0  03 30 8f e0                                      add r3, pc, r3
00466ae4  a8 00 80 e2                                      add r0, r0, #0xa8
00466ae8  00 c0 8d e5                                      str ip, [sp]
00466aec  44 9d fa eb                                      bl #0x30e004
00466af0  d6 ff ff ea                                      b #0x466a50
; mapping-symbol data/literal pool
00466af4  6c e0 52 00 c0 39 00 00 c0 19 00 00 38 79 45 00  .byte 0x6c, 0xe0, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x38, 0x79, 0x45, 0x00
00466b04  3c 68 46 00 dc 67 46 00 00 79 45 00 f4 67 46 00  .byte 0x3c, 0x68, 0x46, 0x00, 0xdc, 0x67, 0x46, 0x00, 0x00, 0x79, 0x45, 0x00, 0xf4, 0x67, 0x46, 0x00
00466b14  a0 67 46 00                                      .byte 0xa0, 0x67, 0x46, 0x00

; FUNCTION 0x00466b18, declared_size=504, range_size=504, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17SG_SetMapLocStateEiii
; demangled: PlayerSavegame::SG_SetMapLocState(int, int, int)
; decoder-mode: arm
00466b18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00466b1c  ac 41 9f e5                                      ldr r4, [pc, #0x1ac]
00466b20  00 60 51 e2                                      subs r6, r1, #0
00466b24  08 d0 4d e2                                      sub sp, sp, #8
00466b28  04 40 8f e0                                      add r4, pc, r4
00466b2c  00 80 a0 e1                                      mov r8, r0
00466b30  02 50 a0 e1                                      mov r5, r2
00466b34  03 70 a0 e1                                      mov r7, r3
00466b38  1d 00 00 ba                                      blt #0x466bb4
00466b3c  90 31 9f e5                                      ldr r3, [pc, #0x190]
00466b40  03 30 94 e7                                      ldr r3, [r4, r3]
00466b44  00 30 93 e5                                      ldr r3, [r3]
00466b48  03 00 56 e1                                      cmp r6, r3
00466b4c  08 00 00 ba                                      blt #0x466b74
00466b50  80 31 9f e5                                      ldr r3, [pc, #0x180]
00466b54  03 30 94 e7                                      ldr r3, [r4, r3]
00466b58  00 30 93 e5                                      ldr r3, [r3]
00466b5c  02 00 53 e3                                      cmp r3, #2
00466b60  00 30 a0 03                                      moveq r3, #0
00466b64  00 30 83 05                                      streq r3, [r3]
00466b68  01 00 00 0a                                      beq #0x466b74
00466b6c  01 00 53 e3                                      cmp r3, #1
00466b70  49 00 00 0a                                      beq #0x466c9c
00466b74  00 00 55 e3                                      cmp r5, #0
00466b78  23 00 00 ba                                      blt #0x466c0c
00466b7c  02 00 55 e3                                      cmp r5, #2
00466b80  06 00 00 da                                      ble #0x466ba0
00466b84  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
00466b88  03 30 94 e7                                      ldr r3, [r4, r3]
00466b8c  00 30 93 e5                                      ldr r3, [r3]
00466b90  02 00 53 e3                                      cmp r3, #2
00466b94  30 00 00 0a                                      beq #0x466c5c
00466b98  01 00 53 e3                                      cmp r3, #1
00466b9c  31 00 00 0a                                      beq #0x466c68
00466ba0  07 71 88 e0                                      add r7, r8, r7, lsl #2
00466ba4  74 30 97 e5                                      ldr r3, [r7, #0x74]
00466ba8  06 51 83 e7                                      str r5, [r3, r6, lsl #2]
00466bac  08 d0 8d e2                                      add sp, sp, #8
00466bb0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00466bb4  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00466bb8  03 30 94 e7                                      ldr r3, [r4, r3]
00466bbc  00 30 93 e5                                      ldr r3, [r3]
00466bc0  02 00 53 e3                                      cmp r3, #2
00466bc4  00 30 a0 03                                      moveq r3, #0
00466bc8  00 30 83 05                                      streq r3, [r3]
00466bcc  da ff ff 0a                                      beq #0x466b3c
00466bd0  01 00 53 e3                                      cmp r3, #1
00466bd4  d8 ff ff 1a                                      bne #0x466b3c
00466bd8  fc 00 9f e5                                      ldr r0, [pc, #0xfc]
00466bdc  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
00466be0  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
00466be4  00 00 94 e7                                      ldr r0, [r4, r0]
00466be8  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00466bec  7d c0 a0 e3                                      mov ip, #0x7d
00466bf0  01 10 8f e0                                      add r1, pc, r1
00466bf4  02 20 8f e0                                      add r2, pc, r2
00466bf8  03 30 8f e0                                      add r3, pc, r3
00466bfc  a8 00 80 e2                                      add r0, r0, #0xa8
00466c00  00 c0 8d e5                                      str ip, [sp]
00466c04  fe 9c fa eb                                      bl #0x30e004
00466c08  cb ff ff ea                                      b #0x466b3c
00466c0c  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00466c10  03 30 94 e7                                      ldr r3, [r4, r3]
00466c14  00 30 93 e5                                      ldr r3, [r3]
00466c18  02 00 53 e3                                      cmp r3, #2
00466c1c  0e 00 00 0a                                      beq #0x466c5c
00466c20  01 00 53 e3                                      cmp r3, #1
00466c24  dd ff ff 1a                                      bne #0x466ba0
00466c28  ac 00 9f e5                                      ldr r0, [pc, #0xac]
00466c2c  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
00466c30  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
00466c34  00 00 94 e7                                      ldr r0, [r4, r0]
00466c38  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00466c3c  7f c0 a0 e3                                      mov ip, #0x7f
00466c40  01 10 8f e0                                      add r1, pc, r1
00466c44  02 20 8f e0                                      add r2, pc, r2
00466c48  03 30 8f e0                                      add r3, pc, r3
00466c4c  a8 00 80 e2                                      add r0, r0, #0xa8
00466c50  00 c0 8d e5                                      str ip, [sp]
00466c54  ea 9c fa eb                                      bl #0x30e004
00466c58  d0 ff ff ea                                      b #0x466ba0
00466c5c  00 30 a0 e3                                      mov r3, #0
00466c60  00 30 83 e5                                      str r3, [r3]
00466c64  cd ff ff ea                                      b #0x466ba0
00466c68  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00466c6c  84 10 9f e5                                      ldr r1, [pc, #0x84]
00466c70  84 20 9f e5                                      ldr r2, [pc, #0x84]
00466c74  00 00 94 e7                                      ldr r0, [r4, r0]
00466c78  80 30 9f e5                                      ldr r3, [pc, #0x80]
00466c7c  80 c0 a0 e3                                      mov ip, #0x80
00466c80  01 10 8f e0                                      add r1, pc, r1
00466c84  02 20 8f e0                                      add r2, pc, r2
00466c88  03 30 8f e0                                      add r3, pc, r3
00466c8c  a8 00 80 e2                                      add r0, r0, #0xa8
00466c90  00 c0 8d e5                                      str ip, [sp]
00466c94  da 9c fa eb                                      bl #0x30e004
00466c98  c0 ff ff ea                                      b #0x466ba0
00466c9c  38 00 9f e5                                      ldr r0, [pc, #0x38]
00466ca0  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00466ca4  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00466ca8  00 00 94 e7                                      ldr r0, [r4, r0]
00466cac  58 30 9f e5                                      ldr r3, [pc, #0x58]
00466cb0  7e c0 a0 e3                                      mov ip, #0x7e
00466cb4  01 10 8f e0                                      add r1, pc, r1
00466cb8  02 20 8f e0                                      add r2, pc, r2
00466cbc  03 30 8f e0                                      add r3, pc, r3
00466cc0  a8 00 80 e2                                      add r0, r0, #0xa8
00466cc4  00 c0 8d e5                                      str ip, [sp]
00466cc8  cd 9c fa eb                                      bl #0x30e004
00466ccc  a8 ff ff ea                                      b #0x466b74
; mapping-symbol data/literal pool
00466cd0  68 df 52 00 74 22 00 00 c0 39 00 00 c0 19 00 00  .byte 0x68, 0xdf, 0x52, 0x00, 0x74, 0x22, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00466ce0  e8 77 45 00 04 67 46 00 88 66 46 00 98 77 45 00  .byte 0xe8, 0x77, 0x45, 0x00, 0x04, 0x67, 0x46, 0x00, 0x88, 0x66, 0x46, 0x00, 0x98, 0x77, 0x45, 0x00
00466cf0  ec 66 46 00 38 66 46 00 58 77 45 00 bc 66 46 00  .byte 0xec, 0x66, 0x46, 0x00, 0x38, 0x66, 0x46, 0x00, 0x58, 0x77, 0x45, 0x00, 0xbc, 0x66, 0x46, 0x00
00466d00  f8 65 46 00 24 77 45 00 50 66 46 00 c4 65 46 00  .byte 0xf8, 0x65, 0x46, 0x00, 0x24, 0x77, 0x45, 0x00, 0x50, 0x66, 0x46, 0x00, 0xc4, 0x65, 0x46, 0x00

; FUNCTION 0x00466d10, declared_size=288, range_size=288, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame17SG_GetMapLocStateEii
; demangled: PlayerSavegame::SG_GetMapLocState(int, int) const
; decoder-mode: arm
00466d10  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00466d14  ec 40 9f e5                                      ldr r4, [pc, #0xec]
00466d18  00 50 51 e2                                      subs r5, r1, #0
00466d1c  0c d0 4d e2                                      sub sp, sp, #0xc
00466d20  00 60 a0 e1                                      mov r6, r0
00466d24  04 40 8f e0                                      add r4, pc, r4
00466d28  02 70 a0 e1                                      mov r7, r2
00466d2c  12 00 00 ba                                      blt #0x466d7c
00466d30  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
00466d34  03 30 94 e7                                      ldr r3, [r4, r3]
00466d38  00 30 93 e5                                      ldr r3, [r3]
00466d3c  03 00 55 e1                                      cmp r5, r3
00466d40  08 00 00 ba                                      blt #0x466d68
00466d44  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00466d48  03 30 94 e7                                      ldr r3, [r4, r3]
00466d4c  00 30 93 e5                                      ldr r3, [r3]
00466d50  02 00 53 e3                                      cmp r3, #2
00466d54  00 30 a0 03                                      moveq r3, #0
00466d58  00 30 83 05                                      streq r3, [r3]
00466d5c  01 00 00 0a                                      beq #0x466d68
00466d60  01 00 53 e3                                      cmp r3, #1
00466d64  1a 00 00 0a                                      beq #0x466dd4
00466d68  07 61 86 e0                                      add r6, r6, r7, lsl #2
00466d6c  74 30 96 e5                                      ldr r3, [r6, #0x74]
00466d70  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00466d74  0c d0 8d e2                                      add sp, sp, #0xc
00466d78  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00466d7c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00466d80  03 30 94 e7                                      ldr r3, [r4, r3]
00466d84  00 30 93 e5                                      ldr r3, [r3]
00466d88  02 00 53 e3                                      cmp r3, #2
00466d8c  00 30 a0 03                                      moveq r3, #0
00466d90  00 30 83 05                                      streq r3, [r3]
00466d94  e5 ff ff 0a                                      beq #0x466d30
00466d98  01 00 53 e3                                      cmp r3, #1
00466d9c  e3 ff ff 1a                                      bne #0x466d30
00466da0  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00466da4  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00466da8  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00466dac  00 00 94 e7                                      ldr r0, [r4, r0]
00466db0  68 30 9f e5                                      ldr r3, [pc, #0x68]
00466db4  73 c0 a0 e3                                      mov ip, #0x73
00466db8  01 10 8f e0                                      add r1, pc, r1
00466dbc  02 20 8f e0                                      add r2, pc, r2
00466dc0  03 30 8f e0                                      add r3, pc, r3
00466dc4  a8 00 80 e2                                      add r0, r0, #0xa8
00466dc8  00 c0 8d e5                                      str ip, [sp]
00466dcc  8c 9c fa eb                                      bl #0x30e004
00466dd0  d6 ff ff ea                                      b #0x466d30
00466dd4  38 00 9f e5                                      ldr r0, [pc, #0x38]
00466dd8  44 10 9f e5                                      ldr r1, [pc, #0x44]
00466ddc  44 20 9f e5                                      ldr r2, [pc, #0x44]
00466de0  00 00 94 e7                                      ldr r0, [r4, r0]
00466de4  40 30 9f e5                                      ldr r3, [pc, #0x40]
00466de8  74 c0 a0 e3                                      mov ip, #0x74
00466dec  01 10 8f e0                                      add r1, pc, r1
00466df0  02 20 8f e0                                      add r2, pc, r2
00466df4  03 30 8f e0                                      add r3, pc, r3
00466df8  a8 00 80 e2                                      add r0, r0, #0xa8
00466dfc  00 c0 8d e5                                      str ip, [sp]
00466e00  7f 9c fa eb                                      bl #0x30e004
00466e04  d7 ff ff ea                                      b #0x466d68
; mapping-symbol data/literal pool
00466e08  6c dd 52 00 74 22 00 00 c0 39 00 00 c0 19 00 00  .byte 0x6c, 0xdd, 0x52, 0x00, 0x74, 0x22, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00466e18  20 76 45 00 3c 65 46 00 c0 64 46 00 ec 75 45 00  .byte 0x20, 0x76, 0x45, 0x00, 0x3c, 0x65, 0x46, 0x00, 0xc0, 0x64, 0x46, 0x00, 0xec, 0x75, 0x45, 0x00
00466e28  18 65 46 00 8c 64 46 00                          .byte 0x18, 0x65, 0x46, 0x00, 0x8c, 0x64, 0x46, 0x00

; FUNCTION 0x00466e30, declared_size=24, range_size=24, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame15SG_IsMapLocSeenEii
; demangled: PlayerSavegame::SG_IsMapLocSeen(int, int) const
; decoder-mode: arm
00466e30  10 40 2d e9                                      push {r4, lr}
00466e34  b5 ff ff eb                                      bl #0x466d10
00466e38  02 00 50 e3                                      cmp r0, #2
00466e3c  00 00 a0 13                                      movne r0, #0
00466e40  01 00 a0 03                                      moveq r0, #1
00466e44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00466e48, declared_size=504, range_size=504, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame16SG_SetLevelStateEiii
; demangled: PlayerSavegame::SG_SetLevelState(int, int, int)
; decoder-mode: arm
00466e48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00466e4c  ac 41 9f e5                                      ldr r4, [pc, #0x1ac]
00466e50  00 60 51 e2                                      subs r6, r1, #0
00466e54  08 d0 4d e2                                      sub sp, sp, #8
00466e58  04 40 8f e0                                      add r4, pc, r4
00466e5c  00 80 a0 e1                                      mov r8, r0
00466e60  02 50 a0 e1                                      mov r5, r2
00466e64  03 70 a0 e1                                      mov r7, r3
00466e68  1d 00 00 ba                                      blt #0x466ee4
00466e6c  90 31 9f e5                                      ldr r3, [pc, #0x190]
00466e70  03 30 94 e7                                      ldr r3, [r4, r3]
00466e74  00 30 93 e5                                      ldr r3, [r3]
00466e78  03 00 56 e1                                      cmp r6, r3
00466e7c  08 00 00 ba                                      blt #0x466ea4
00466e80  80 31 9f e5                                      ldr r3, [pc, #0x180]
00466e84  03 30 94 e7                                      ldr r3, [r4, r3]
00466e88  00 30 93 e5                                      ldr r3, [r3]
00466e8c  02 00 53 e3                                      cmp r3, #2
00466e90  00 30 a0 03                                      moveq r3, #0
00466e94  00 30 83 05                                      streq r3, [r3]
00466e98  01 00 00 0a                                      beq #0x466ea4
00466e9c  01 00 53 e3                                      cmp r3, #1
00466ea0  49 00 00 0a                                      beq #0x466fcc
00466ea4  00 00 55 e3                                      cmp r5, #0
00466ea8  23 00 00 ba                                      blt #0x466f3c
00466eac  01 00 55 e3                                      cmp r5, #1
00466eb0  06 00 00 da                                      ble #0x466ed0
00466eb4  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
00466eb8  03 30 94 e7                                      ldr r3, [r4, r3]
00466ebc  00 30 93 e5                                      ldr r3, [r3]
00466ec0  02 00 53 e3                                      cmp r3, #2
00466ec4  30 00 00 0a                                      beq #0x466f8c
00466ec8  01 00 53 e3                                      cmp r3, #1
00466ecc  31 00 00 0a                                      beq #0x466f98
00466ed0  1a 70 87 e2                                      add r7, r7, #0x1a
00466ed4  07 31 98 e7                                      ldr r3, [r8, r7, lsl #2]
00466ed8  06 51 83 e7                                      str r5, [r3, r6, lsl #2]
00466edc  08 d0 8d e2                                      add sp, sp, #8
00466ee0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00466ee4  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00466ee8  03 30 94 e7                                      ldr r3, [r4, r3]
00466eec  00 30 93 e5                                      ldr r3, [r3]
00466ef0  02 00 53 e3                                      cmp r3, #2
00466ef4  00 30 a0 03                                      moveq r3, #0
00466ef8  00 30 83 05                                      streq r3, [r3]
00466efc  da ff ff 0a                                      beq #0x466e6c
00466f00  01 00 53 e3                                      cmp r3, #1
00466f04  d8 ff ff 1a                                      bne #0x466e6c
00466f08  fc 00 9f e5                                      ldr r0, [pc, #0xfc]
00466f0c  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
00466f10  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
00466f14  00 00 94 e7                                      ldr r0, [r4, r0]
00466f18  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00466f1c  5b c0 a0 e3                                      mov ip, #0x5b
00466f20  01 10 8f e0                                      add r1, pc, r1
00466f24  02 20 8f e0                                      add r2, pc, r2
00466f28  03 30 8f e0                                      add r3, pc, r3
00466f2c  a8 00 80 e2                                      add r0, r0, #0xa8
00466f30  00 c0 8d e5                                      str ip, [sp]
00466f34  32 9c fa eb                                      bl #0x30e004
00466f38  cb ff ff ea                                      b #0x466e6c
00466f3c  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00466f40  03 30 94 e7                                      ldr r3, [r4, r3]
00466f44  00 30 93 e5                                      ldr r3, [r3]
00466f48  02 00 53 e3                                      cmp r3, #2
00466f4c  0e 00 00 0a                                      beq #0x466f8c
00466f50  01 00 53 e3                                      cmp r3, #1
00466f54  dd ff ff 1a                                      bne #0x466ed0
00466f58  ac 00 9f e5                                      ldr r0, [pc, #0xac]
00466f5c  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
00466f60  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
00466f64  00 00 94 e7                                      ldr r0, [r4, r0]
00466f68  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00466f6c  5d c0 a0 e3                                      mov ip, #0x5d
00466f70  01 10 8f e0                                      add r1, pc, r1
00466f74  02 20 8f e0                                      add r2, pc, r2
00466f78  03 30 8f e0                                      add r3, pc, r3
00466f7c  a8 00 80 e2                                      add r0, r0, #0xa8
00466f80  00 c0 8d e5                                      str ip, [sp]
00466f84  1e 9c fa eb                                      bl #0x30e004
00466f88  d0 ff ff ea                                      b #0x466ed0
00466f8c  00 30 a0 e3                                      mov r3, #0
00466f90  00 30 83 e5                                      str r3, [r3]
00466f94  cd ff ff ea                                      b #0x466ed0
00466f98  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
00466f9c  84 10 9f e5                                      ldr r1, [pc, #0x84]
00466fa0  84 20 9f e5                                      ldr r2, [pc, #0x84]
00466fa4  00 00 94 e7                                      ldr r0, [r4, r0]
00466fa8  80 30 9f e5                                      ldr r3, [pc, #0x80]
00466fac  5e c0 a0 e3                                      mov ip, #0x5e
00466fb0  01 10 8f e0                                      add r1, pc, r1
00466fb4  02 20 8f e0                                      add r2, pc, r2
00466fb8  03 30 8f e0                                      add r3, pc, r3
00466fbc  a8 00 80 e2                                      add r0, r0, #0xa8
00466fc0  00 c0 8d e5                                      str ip, [sp]
00466fc4  0e 9c fa eb                                      bl #0x30e004
00466fc8  c0 ff ff ea                                      b #0x466ed0
00466fcc  38 00 9f e5                                      ldr r0, [pc, #0x38]
00466fd0  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00466fd4  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00466fd8  00 00 94 e7                                      ldr r0, [r4, r0]
00466fdc  58 30 9f e5                                      ldr r3, [pc, #0x58]
00466fe0  5c c0 a0 e3                                      mov ip, #0x5c
00466fe4  01 10 8f e0                                      add r1, pc, r1
00466fe8  02 20 8f e0                                      add r2, pc, r2
00466fec  03 30 8f e0                                      add r3, pc, r3
00466ff0  a8 00 80 e2                                      add r0, r0, #0xa8
00466ff4  00 c0 8d e5                                      str ip, [sp]
00466ff8  01 9c fa eb                                      bl #0x30e004
00466ffc  a8 ff ff ea                                      b #0x466ea4
; mapping-symbol data/literal pool
00467000  38 dc 52 00 c0 18 00 00 c0 39 00 00 c0 19 00 00  .byte 0x38, 0xdc, 0x52, 0x00, 0xc0, 0x18, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00467010  b8 74 45 00 4c 64 46 00 58 63 46 00 68 74 45 00  .byte 0xb8, 0x74, 0x45, 0x00, 0x4c, 0x64, 0x46, 0x00, 0x58, 0x63, 0x46, 0x00, 0x68, 0x74, 0x45, 0x00
00467020  bc 63 46 00 08 63 46 00 28 74 45 00 f4 63 46 00  .byte 0xbc, 0x63, 0x46, 0x00, 0x08, 0x63, 0x46, 0x00, 0x28, 0x74, 0x45, 0x00, 0xf4, 0x63, 0x46, 0x00
00467030  c8 62 46 00 f4 73 45 00 98 63 46 00 94 62 46 00  .byte 0xc8, 0x62, 0x46, 0x00, 0xf4, 0x73, 0x45, 0x00, 0x98, 0x63, 0x46, 0x00, 0x94, 0x62, 0x46, 0x00

; FUNCTION 0x00467040, declared_size=288, range_size=288, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame16SG_GetLevelStateEii
; demangled: PlayerSavegame::SG_GetLevelState(int, int) const
; decoder-mode: arm
00467040  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00467044  ec 40 9f e5                                      ldr r4, [pc, #0xec]
00467048  00 50 51 e2                                      subs r5, r1, #0
0046704c  0c d0 4d e2                                      sub sp, sp, #0xc
00467050  00 60 a0 e1                                      mov r6, r0
00467054  04 40 8f e0                                      add r4, pc, r4
00467058  02 70 a0 e1                                      mov r7, r2
0046705c  12 00 00 ba                                      blt #0x4670ac
00467060  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
00467064  03 30 94 e7                                      ldr r3, [r4, r3]
00467068  00 30 93 e5                                      ldr r3, [r3]
0046706c  03 00 55 e1                                      cmp r5, r3
00467070  08 00 00 ba                                      blt #0x467098
00467074  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00467078  03 30 94 e7                                      ldr r3, [r4, r3]
0046707c  00 30 93 e5                                      ldr r3, [r3]
00467080  02 00 53 e3                                      cmp r3, #2
00467084  00 30 a0 03                                      moveq r3, #0
00467088  00 30 83 05                                      streq r3, [r3]
0046708c  01 00 00 0a                                      beq #0x467098
00467090  01 00 53 e3                                      cmp r3, #1
00467094  1a 00 00 0a                                      beq #0x467104
00467098  1a 70 87 e2                                      add r7, r7, #0x1a
0046709c  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
004670a0  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
004670a4  0c d0 8d e2                                      add sp, sp, #0xc
004670a8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004670ac  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
004670b0  03 30 94 e7                                      ldr r3, [r4, r3]
004670b4  00 30 93 e5                                      ldr r3, [r3]
004670b8  02 00 53 e3                                      cmp r3, #2
004670bc  00 30 a0 03                                      moveq r3, #0
004670c0  00 30 83 05                                      streq r3, [r3]
004670c4  e5 ff ff 0a                                      beq #0x467060
004670c8  01 00 53 e3                                      cmp r3, #1
004670cc  e3 ff ff 1a                                      bne #0x467060
004670d0  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
004670d4  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
004670d8  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004670dc  00 00 94 e7                                      ldr r0, [r4, r0]
004670e0  68 30 9f e5                                      ldr r3, [pc, #0x68]
004670e4  51 c0 a0 e3                                      mov ip, #0x51
004670e8  01 10 8f e0                                      add r1, pc, r1
004670ec  02 20 8f e0                                      add r2, pc, r2
004670f0  03 30 8f e0                                      add r3, pc, r3
004670f4  a8 00 80 e2                                      add r0, r0, #0xa8
004670f8  00 c0 8d e5                                      str ip, [sp]
004670fc  c0 9b fa eb                                      bl #0x30e004
00467100  d6 ff ff ea                                      b #0x467060
00467104  38 00 9f e5                                      ldr r0, [pc, #0x38]
00467108  44 10 9f e5                                      ldr r1, [pc, #0x44]
0046710c  44 20 9f e5                                      ldr r2, [pc, #0x44]
00467110  00 00 94 e7                                      ldr r0, [r4, r0]
00467114  40 30 9f e5                                      ldr r3, [pc, #0x40]
00467118  52 c0 a0 e3                                      mov ip, #0x52
0046711c  01 10 8f e0                                      add r1, pc, r1
00467120  02 20 8f e0                                      add r2, pc, r2
00467124  03 30 8f e0                                      add r3, pc, r3
00467128  a8 00 80 e2                                      add r0, r0, #0xa8
0046712c  00 c0 8d e5                                      str ip, [sp]
00467130  b3 9b fa eb                                      bl #0x30e004
00467134  d7 ff ff ea                                      b #0x467098
; mapping-symbol data/literal pool
00467138  3c da 52 00 c0 18 00 00 c0 39 00 00 c0 19 00 00  .byte 0x3c, 0xda, 0x52, 0x00, 0xc0, 0x18, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00467148  f0 72 45 00 84 62 46 00 90 61 46 00 bc 72 45 00  .byte 0xf0, 0x72, 0x45, 0x00, 0x84, 0x62, 0x46, 0x00, 0x90, 0x61, 0x46, 0x00, 0xbc, 0x72, 0x45, 0x00
00467158  60 62 46 00 5c 61 46 00                          .byte 0x60, 0x62, 0x46, 0x00, 0x5c, 0x61, 0x46, 0x00

; FUNCTION 0x00467160, declared_size=116, range_size=116, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame18SG_UnpackQuestSyncER12StreamBuffer
; demangled: PlayerSavegame::SG_UnpackQuestSync(StreamBuffer&)
; decoder-mode: arm
00467160  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00467164  46 5f 80 e2                                      add r5, r0, #0x118
00467168  01 70 a0 e1                                      mov r7, r1
0046716c  00 60 a0 e1                                      mov r6, r0
00467170  05 00 a0 e1                                      mov r0, r5
00467174  0b 14 00 eb                                      bl #0x46c1a8
00467178  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
0046717c  00 20 a0 e3                                      mov r2, #0
00467180  00 30 a0 e3                                      mov r3, #0
00467184  07 00 a0 e1                                      mov r0, r7
00467188  00 10 97 e5                                      ldr r1, [r7]
0046718c  0f e0 a0 e1                                      mov lr, pc
00467190  20 f0 91 e5                                      ldr pc, [r1, #0x20]
00467194  34 30 9f e5                                      ldr r3, [pc, #0x34]
00467198  04 40 8f e0                                      add r4, pc, r4
0046719c  07 20 a0 e1                                      mov r2, r7
004671a0  03 10 94 e7                                      ldr r1, [r4, r3]
004671a4  05 00 a0 e1                                      mov r0, r5
004671a8  01 30 a0 e3                                      mov r3, #1
004671ac  00 10 91 e5                                      ldr r1, [r1]
004671b0  b5 14 00 eb                                      bl #0x46c48c
004671b4  05 00 a0 e1                                      mov r0, r5
004671b8  01 10 a0 e3                                      mov r1, #1
004671bc  98 11 00 eb                                      bl #0x46b824
004671c0  01 30 a0 e3                                      mov r3, #1
004671c4  14 30 c6 e5                                      strb r3, [r6, #0x14]
004671c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004671cc  f8 d8 52 00 9c 1a 00 00                          .byte 0xf8, 0xd8, 0x52, 0x00, 0x9c, 0x1a, 0x00, 0x00

; FUNCTION 0x004671d4, declared_size=24, range_size=24, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame21SG_VerifyCurrentQuestEi
; demangled: PlayerSavegame::SG_VerifyCurrentQuest(int)
; decoder-mode: arm
004671d4  10 40 2d e9                                      push {r4, lr}
004671d8  01 40 a0 e1                                      mov r4, r1
004671dc  e8 fc ff eb                                      bl #0x466584
004671e0  04 10 a0 e1                                      mov r1, r4
004671e4  10 40 bd e8                                      pop {r4, lr}
004671e8  c8 10 00 ea                                      b #0x46b510

; FUNCTION 0x004671ec, declared_size=24, range_size=24, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame25SG_GetCurrentPrimaryQuestEi
; demangled: PlayerSavegame::SG_GetCurrentPrimaryQuest(int)
; decoder-mode: arm
004671ec  10 40 2d e9                                      push {r4, lr}
004671f0  01 40 a0 e1                                      mov r4, r1
004671f4  e2 fc ff eb                                      bl #0x466584
004671f8  04 10 a0 e1                                      mov r1, r4
004671fc  10 40 bd e8                                      pop {r4, lr}
00467200  55 10 00 ea                                      b #0x46b35c

; FUNCTION 0x00467204, declared_size=24, range_size=24, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame18SG_GetCurrentQuestEi
; demangled: PlayerSavegame::SG_GetCurrentQuest(int)
; decoder-mode: arm
00467204  10 40 2d e9                                      push {r4, lr}
00467208  01 40 a0 e1                                      mov r4, r1
0046720c  dc fc ff eb                                      bl #0x466584
00467210  04 10 a0 e1                                      mov r1, r4
00467214  10 40 bd e8                                      pop {r4, lr}
00467218  e8 10 00 ea                                      b #0x46b5c0

; FUNCTION 0x0046721c, declared_size=40, range_size=40, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame15SG_GetPrevQuestEPFbPK5QuestEii
; demangled: PlayerSavegame::SG_GetPrevQuest(bool (*)(Quest const*), int, int) const
; decoder-mode: arm
0046721c  70 40 2d e9                                      push {r4, r5, r6, lr}
00467220  01 60 a0 e1                                      mov r6, r1
00467224  02 50 a0 e1                                      mov r5, r2
00467228  03 40 a0 e1                                      mov r4, r3
0046722c  cc fc ff eb                                      bl #0x466564
00467230  06 10 a0 e1                                      mov r1, r6
00467234  05 20 a0 e1                                      mov r2, r5
00467238  04 30 a0 e1                                      mov r3, r4
0046723c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00467240  23 10 00 ea                                      b #0x46b2d4

; FUNCTION 0x00467244, declared_size=40, range_size=40, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame15SG_GetNextQuestEPFbPK5QuestEii
; demangled: PlayerSavegame::SG_GetNextQuest(bool (*)(Quest const*), int, int) const
; decoder-mode: arm
00467244  70 40 2d e9                                      push {r4, r5, r6, lr}
00467248  01 60 a0 e1                                      mov r6, r1
0046724c  02 50 a0 e1                                      mov r5, r2
00467250  03 40 a0 e1                                      mov r4, r3
00467254  c2 fc ff eb                                      bl #0x466564
00467258  06 10 a0 e1                                      mov r1, r6
0046725c  05 20 a0 e1                                      mov r2, r5
00467260  04 30 a0 e1                                      mov r3, r4
00467264  70 40 bd e8                                      pop {r4, r5, r6, lr}
00467268  fa 0f 00 ea                                      b #0x46b258

; FUNCTION 0x0046726c, declared_size=40, range_size=40, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame15SG_GetQuestByIDEPFbPK5QuestEii
; demangled: PlayerSavegame::SG_GetQuestByID(bool (*)(Quest const*), int, int) const
; decoder-mode: arm
0046726c  70 40 2d e9                                      push {r4, r5, r6, lr}
00467270  01 60 a0 e1                                      mov r6, r1
00467274  02 50 a0 e1                                      mov r5, r2
00467278  03 40 a0 e1                                      mov r4, r3
0046727c  b8 fc ff eb                                      bl #0x466564
00467280  06 10 a0 e1                                      mov r1, r6
00467284  05 20 a0 e1                                      mov r2, r5
00467288  04 30 a0 e1                                      mov r3, r4
0046728c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00467290  ce 0f 00 ea                                      b #0x46b1d0

; FUNCTION 0x00467294, declared_size=32, range_size=32, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame15SG_GetNumQuestsEPFbPK5QuestEi
; demangled: PlayerSavegame::SG_GetNumQuests(bool (*)(Quest const*), int) const
; decoder-mode: arm
00467294  70 40 2d e9                                      push {r4, r5, r6, lr}
00467298  01 50 a0 e1                                      mov r5, r1
0046729c  02 40 a0 e1                                      mov r4, r2
004672a0  af fc ff eb                                      bl #0x466564
004672a4  05 10 a0 e1                                      mov r1, r5
004672a8  04 20 a0 e1                                      mov r2, r4
004672ac  70 40 bd e8                                      pop {r4, r5, r6, lr}
004672b0  ae 0f 00 ea                                      b #0x46b170

; FUNCTION 0x004672b4, declared_size=40, range_size=40, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame36SG_DBG_TraceDetailedQuestInformationEP7__sFILEii
; demangled: PlayerSavegame::SG_DBG_TraceDetailedQuestInformation(__sFILE*, int, int)
; decoder-mode: arm
004672b4  70 40 2d e9                                      push {r4, r5, r6, lr}
004672b8  01 60 a0 e1                                      mov r6, r1
004672bc  02 50 a0 e1                                      mov r5, r2
004672c0  03 40 a0 e1                                      mov r4, r3
004672c4  ae fc ff eb                                      bl #0x466584
004672c8  06 10 a0 e1                                      mov r1, r6
004672cc  05 20 a0 e1                                      mov r2, r5
004672d0  04 30 a0 e1                                      mov r3, r4
004672d4  70 40 bd e8                                      pop {r4, r5, r6, lr}
004672d8  74 11 00 ea                                      b #0x46b8b0

; FUNCTION 0x004672dc, declared_size=32, range_size=32, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17SG_GetQuestByNameEPKci
; demangled: PlayerSavegame::SG_GetQuestByName(char const*, int)
; decoder-mode: arm
004672dc  70 40 2d e9                                      push {r4, r5, r6, lr}
004672e0  01 50 a0 e1                                      mov r5, r1
004672e4  02 40 a0 e1                                      mov r4, r2
004672e8  a5 fc ff eb                                      bl #0x466584
004672ec  05 10 a0 e1                                      mov r1, r5
004672f0  04 20 a0 e1                                      mov r2, r4
004672f4  70 40 bd e8                                      pop {r4, r5, r6, lr}
004672f8  d3 11 00 ea                                      b #0x46ba4c

; FUNCTION 0x004672fc, declared_size=40, range_size=40, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame15SG_GetQuestByIDEiib
; demangled: PlayerSavegame::SG_GetQuestByID(int, int, bool)
; decoder-mode: arm
004672fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00467300  01 60 a0 e1                                      mov r6, r1
00467304  02 50 a0 e1                                      mov r5, r2
00467308  03 40 a0 e1                                      mov r4, r3
0046730c  9c fc ff eb                                      bl #0x466584
00467310  06 10 a0 e1                                      mov r1, r6
00467314  05 20 a0 e1                                      mov r2, r5
00467318  04 30 a0 e1                                      mov r3, r4
0046731c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00467320  86 11 00 ea                                      b #0x46b940

; FUNCTION 0x00467324, declared_size=56, range_size=56, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame15SG_ReloadSkillsEv
; demangled: PlayerSavegame::SG_ReloadSkills()
; decoder-mode: arm
00467324  10 40 2d e9                                      push {r4, lr}
00467328  00 40 a0 e1                                      mov r4, r0
0046732c  80 00 90 e5                                      ldr r0, [r0, #0x80]
00467330  00 00 50 e3                                      cmp r0, #0
00467334  02 00 00 0a                                      beq #0x467344
00467338  40 a4 fa eb                                      bl #0x310440
0046733c  00 30 a0 e3                                      mov r3, #0
00467340  80 30 84 e5                                      str r3, [r4, #0x80]
00467344  04 00 a0 e1                                      mov r0, r4
00467348  05 09 00 eb                                      bl #0x469764
0046734c  04 00 a0 e1                                      mov r0, r4
00467350  08 10 a0 e3                                      mov r1, #8
00467354  10 40 bd e8                                      pop {r4, lr}
00467358  34 f8 ff ea                                      b #0x465430

; FUNCTION 0x0046735c, declared_size=300, range_size=300, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame12SG_TellSlotsEPFvijPvES0_
; demangled: PlayerSavegame::SG_TellSlots(void (*)(int, unsigned int, void*), void*) const
; decoder-mode: arm
0046735c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00467360  08 31 9f e5                                      ldr r3, [pc, #0x108]
00467364  00 40 51 e2                                      subs r4, r1, #0
00467368  0c d0 4d e2                                      sub sp, sp, #0xc
0046736c  00 60 a0 e1                                      mov r6, r0
00467370  03 30 8f e0                                      add r3, pc, r3
00467374  02 50 a0 e1                                      mov r5, r2
00467378  27 00 00 0a                                      beq #0x46741c
0046737c  10 00 96 e5                                      ldr r0, [r6, #0x10]
00467380  00 10 e0 e3                                      mvn r1, #0
00467384  18 70 a0 e3                                      mov r7, #0x18
00467388  df 0f 80 e2                                      add r0, r0, #0x37c
0046738c  c3 54 fe eb                                      bl #0x3fc6a0
00467390  88 30 96 e5                                      ldr r3, [r6, #0x88]
00467394  97 30 27 e0                                      mla r7, r7, r0, r3
00467398  08 60 97 e5                                      ldr r6, [r7, #8]
0046739c  07 00 56 e1                                      cmp r6, r7
004673a0  0e 00 00 0a                                      beq #0x4673e0
004673a4  05 20 a0 e1                                      mov r2, r5
004673a8  10 00 96 e5                                      ldr r0, [r6, #0x10]
004673ac  14 10 96 e5                                      ldr r1, [r6, #0x14]
004673b0  34 ff 2f e1                                      blx r4
004673b4  0c 20 96 e5                                      ldr r2, [r6, #0xc]
004673b8  00 00 52 e3                                      cmp r2, #0
004673bc  01 00 00 1a                                      bne #0x4673c8
004673c0  08 00 00 ea                                      b #0x4673e8
004673c4  03 20 a0 e1                                      mov r2, r3
004673c8  08 30 92 e5                                      ldr r3, [r2, #8]
004673cc  00 00 53 e3                                      cmp r3, #0
004673d0  fb ff ff 1a                                      bne #0x4673c4
004673d4  02 60 a0 e1                                      mov r6, r2
004673d8  06 00 57 e1                                      cmp r7, r6
004673dc  f0 ff ff 1a                                      bne #0x4673a4
004673e0  0c d0 8d e2                                      add sp, sp, #0xc
004673e4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004673e8  04 30 96 e5                                      ldr r3, [r6, #4]
004673ec  0c 10 93 e5                                      ldr r1, [r3, #0xc]
004673f0  06 00 51 e1                                      cmp r1, r6
004673f4  05 00 00 1a                                      bne #0x467410
004673f8  03 60 a0 e1                                      mov r6, r3
004673fc  04 30 93 e5                                      ldr r3, [r3, #4]
00467400  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00467404  06 00 52 e1                                      cmp r2, r6
00467408  fa ff ff 0a                                      beq #0x4673f8
0046740c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00467410  02 00 53 e1                                      cmp r3, r2
00467414  03 60 a0 11                                      movne r6, r3
00467418  ee ff ff ea                                      b #0x4673d8
0046741c  50 20 9f e5                                      ldr r2, [pc, #0x50]
00467420  02 20 93 e7                                      ldr r2, [r3, r2]
00467424  00 20 92 e5                                      ldr r2, [r2]
00467428  02 00 52 e3                                      cmp r2, #2
0046742c  00 40 84 05                                      streq r4, [r4]
00467430  d1 ff ff 0a                                      beq #0x46737c
00467434  01 00 52 e3                                      cmp r2, #1
00467438  cf ff ff 1a                                      bne #0x46737c
0046743c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00467440  34 10 9f e5                                      ldr r1, [pc, #0x34]
00467444  34 20 9f e5                                      ldr r2, [pc, #0x34]
00467448  00 00 93 e7                                      ldr r0, [r3, r0]
0046744c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00467450  11 c1 00 e3                                      movw ip, #0x111
00467454  01 10 8f e0                                      add r1, pc, r1
00467458  02 20 8f e0                                      add r2, pc, r2
0046745c  03 30 8f e0                                      add r3, pc, r3
00467460  a8 00 80 e2                                      add r0, r0, #0xa8
00467464  00 c0 8d e5                                      str ip, [sp]
00467468  e5 9a fa eb                                      bl #0x30e004
0046746c  c2 ff ff ea                                      b #0x46737c
; mapping-symbol data/literal pool
00467470  20 d7 52 00 c0 39 00 00 c0 19 00 00 84 6f 45 00  .byte 0x20, 0xd7, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x84, 0x6f, 0x45, 0x00
00467480  c8 73 45 00 24 5e 46 00                          .byte 0xc8, 0x73, 0x45, 0x00, 0x24, 0x5e, 0x46, 0x00

; FUNCTION 0x00467488, declared_size=164, range_size=164, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame17SG_GetSkillInSlotEi
; demangled: PlayerSavegame::SG_GetSkillInSlot(int) const
; decoder-mode: arm
00467488  70 40 2d e9                                      push {r4, r5, r6, lr}
0046748c  00 60 a0 e1                                      mov r6, r0
00467490  10 00 90 e5                                      ldr r0, [r0, #0x10]
00467494  01 50 a0 e1                                      mov r5, r1
00467498  00 10 e0 e3                                      mvn r1, #0
0046749c  df 0f 80 e2                                      add r0, r0, #0x37c
004674a0  7e 54 fe eb                                      bl #0x3fc6a0
004674a4  88 30 96 e5                                      ldr r3, [r6, #0x88]
004674a8  18 20 a0 e3                                      mov r2, #0x18
004674ac  92 30 23 e0                                      mla r3, r2, r0, r3
004674b0  04 40 93 e5                                      ldr r4, [r3, #4]
004674b4  00 00 54 e3                                      cmp r4, #0
004674b8  0f 00 00 0a                                      beq #0x4674fc
004674bc  03 c0 a0 e1                                      mov ip, r3
004674c0  00 00 00 ea                                      b #0x4674c8
004674c4  01 40 a0 e1                                      mov r4, r1
004674c8  10 10 94 e5                                      ldr r1, [r4, #0x10]
004674cc  01 00 55 e1                                      cmp r5, r1
004674d0  0c 10 94 c5                                      ldrgt r1, [r4, #0xc]
004674d4  08 10 94 d5                                      ldrle r1, [r4, #8]
004674d8  0c 40 a0 c1                                      movgt r4, ip
004674dc  04 c0 a0 e1                                      mov ip, r4
004674e0  00 00 51 e3                                      cmp r1, #0
004674e4  f6 ff ff 1a                                      bne #0x4674c4
004674e8  04 00 53 e1                                      cmp r3, r4
004674ec  03 00 00 0a                                      beq #0x467500
004674f0  10 20 94 e5                                      ldr r2, [r4, #0x10]
004674f4  02 00 55 e1                                      cmp r5, r2
004674f8  00 00 00 aa                                      bge #0x467500
004674fc  03 40 a0 e1                                      mov r4, r3
00467500  10 00 96 e5                                      ldr r0, [r6, #0x10]
00467504  00 10 e0 e3                                      mvn r1, #0
00467508  df 0f 80 e2                                      add r0, r0, #0x37c
0046750c  63 54 fe eb                                      bl #0x3fc6a0
00467510  88 30 96 e5                                      ldr r3, [r6, #0x88]
00467514  18 20 a0 e3                                      mov r2, #0x18
00467518  92 30 23 e0                                      mla r3, r2, r0, r3
0046751c  03 00 54 e1                                      cmp r4, r3
00467520  00 00 e0 03                                      mvneq r0, #0
00467524  14 00 94 15                                      ldrne r0, [r4, #0x14]
00467528  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0046752c, declared_size=440, range_size=440, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame15SG_GetSkillSlotEj
; demangled: PlayerSavegame::SG_GetSkillSlot(unsigned int) const
; decoder-mode: arm
0046752c  70 40 2d e9                                      push {r4, r5, r6, lr}
00467530  84 30 90 e5                                      ldr r3, [r0, #0x84]
00467534  84 61 9f e5                                      ldr r6, [pc, #0x184]
00467538  08 d0 4d e2                                      sub sp, sp, #8
0046753c  01 00 53 e1                                      cmp r3, r1
00467540  00 50 a0 e1                                      mov r5, r0
00467544  01 40 a0 e1                                      mov r4, r1
00467548  06 60 8f e0                                      add r6, pc, r6
0046754c  08 00 00 8a                                      bhi #0x467574
00467550  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
00467554  03 30 96 e7                                      ldr r3, [r6, r3]
00467558  00 30 93 e5                                      ldr r3, [r3]
0046755c  02 00 53 e3                                      cmp r3, #2
00467560  00 30 a0 03                                      moveq r3, #0
00467564  00 30 83 05                                      streq r3, [r3]
00467568  01 00 00 0a                                      beq #0x467574
0046756c  01 00 53 e3                                      cmp r3, #1
00467570  30 00 00 0a                                      beq #0x467638
00467574  80 30 95 e5                                      ldr r3, [r5, #0x80]
00467578  00 00 53 e3                                      cmp r3, #0
0046757c  3a 00 00 0a                                      beq #0x46766c
00467580  10 00 95 e5                                      ldr r0, [r5, #0x10]
00467584  00 10 e0 e3                                      mvn r1, #0
00467588  df 0f 80 e2                                      add r0, r0, #0x37c
0046758c  43 54 fe eb                                      bl #0x3fc6a0
00467590  88 30 95 e5                                      ldr r3, [r5, #0x88]
00467594  18 20 a0 e3                                      mov r2, #0x18
00467598  92 30 23 e0                                      mla r3, r2, r0, r3
0046759c  08 10 93 e5                                      ldr r1, [r3, #8]
004675a0  03 00 51 e1                                      cmp r1, r3
004675a4  20 00 00 0a                                      beq #0x46762c
004675a8  14 20 91 e5                                      ldr r2, [r1, #0x14]
004675ac  02 00 54 e1                                      cmp r4, r2
004675b0  0d 00 00 0a                                      beq #0x4675ec
004675b4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
004675b8  00 00 5c e3                                      cmp ip, #0
004675bc  01 00 00 1a                                      bne #0x4675c8
004675c0  0b 00 00 ea                                      b #0x4675f4
004675c4  01 c0 a0 e1                                      mov ip, r1
004675c8  08 10 9c e5                                      ldr r1, [ip, #8]
004675cc  00 00 51 e3                                      cmp r1, #0
004675d0  fb ff ff 1a                                      bne #0x4675c4
004675d4  0c 10 a0 e1                                      mov r1, ip
004675d8  01 00 53 e1                                      cmp r3, r1
004675dc  12 00 00 0a                                      beq #0x46762c
004675e0  14 c0 91 e5                                      ldr ip, [r1, #0x14]
004675e4  0c 00 54 e1                                      cmp r4, ip
004675e8  f1 ff ff 1a                                      bne #0x4675b4
004675ec  10 00 91 e5                                      ldr r0, [r1, #0x10]
004675f0  0e 00 00 ea                                      b #0x467630
004675f4  04 50 91 e5                                      ldr r5, [r1, #4]
004675f8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
004675fc  01 00 52 e1                                      cmp r2, r1
00467600  05 00 00 1a                                      bne #0x46761c
00467604  05 10 a0 e1                                      mov r1, r5
00467608  04 50 95 e5                                      ldr r5, [r5, #4]
0046760c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00467610  01 00 5c e1                                      cmp ip, r1
00467614  fa ff ff 0a                                      beq #0x467604
00467618  0c c0 91 e5                                      ldr ip, [r1, #0xc]
0046761c  0c 00 55 e1                                      cmp r5, ip
00467620  05 10 a0 11                                      movne r1, r5
00467624  01 00 53 e1                                      cmp r3, r1
00467628  ec ff ff 1a                                      bne #0x4675e0
0046762c  00 00 e0 e3                                      mvn r0, #0
00467630  08 d0 8d e2                                      add sp, sp, #8
00467634  70 80 bd e8                                      pop {r4, r5, r6, pc}
00467638  88 00 9f e5                                      ldr r0, [pc, #0x88]
0046763c  88 10 9f e5                                      ldr r1, [pc, #0x88]
00467640  88 20 9f e5                                      ldr r2, [pc, #0x88]
00467644  00 00 96 e7                                      ldr r0, [r6, r0]
00467648  84 30 9f e5                                      ldr r3, [pc, #0x84]
0046764c  c0 c0 a0 e3                                      mov ip, #0xc0
00467650  01 10 8f e0                                      add r1, pc, r1
00467654  02 20 8f e0                                      add r2, pc, r2
00467658  03 30 8f e0                                      add r3, pc, r3
0046765c  a8 00 80 e2                                      add r0, r0, #0xa8
00467660  00 c0 8d e5                                      str ip, [sp]
00467664  66 9a fa eb                                      bl #0x30e004
00467668  c1 ff ff ea                                      b #0x467574
0046766c  50 20 9f e5                                      ldr r2, [pc, #0x50]
00467670  02 20 96 e7                                      ldr r2, [r6, r2]
00467674  00 20 92 e5                                      ldr r2, [r2]
00467678  02 00 52 e3                                      cmp r2, #2
0046767c  00 30 83 05                                      streq r3, [r3]
00467680  be ff ff 0a                                      beq #0x467580
00467684  01 00 52 e3                                      cmp r2, #1
00467688  bc ff ff 1a                                      bne #0x467580
0046768c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00467690  40 10 9f e5                                      ldr r1, [pc, #0x40]
00467694  40 20 9f e5                                      ldr r2, [pc, #0x40]
00467698  00 00 96 e7                                      ldr r0, [r6, r0]
0046769c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004676a0  c1 c0 a0 e3                                      mov ip, #0xc1
004676a4  01 10 8f e0                                      add r1, pc, r1
004676a8  02 20 8f e0                                      add r2, pc, r2
004676ac  03 30 8f e0                                      add r3, pc, r3
004676b0  a8 00 80 e2                                      add r0, r0, #0xa8
004676b4  00 c0 8d e5                                      str ip, [sp]
004676b8  51 9a fa eb                                      bl #0x30e004
004676bc  af ff ff ea                                      b #0x467580
; mapping-symbol data/literal pool
004676c0  48 d5 52 00 c0 39 00 00 c0 19 00 00 88 6d 45 00  .byte 0x48, 0xd5, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x88, 0x6d, 0x45, 0x00
004676d0  7c 5c 46 00 28 5c 46 00 34 6d 45 00 40 5c 46 00  .byte 0x7c, 0x5c, 0x46, 0x00, 0x28, 0x5c, 0x46, 0x00, 0x34, 0x6d, 0x45, 0x00, 0x40, 0x5c, 0x46, 0x00
004676e0  d4 5b 46 00                                      .byte 0xd4, 0x5b, 0x46, 0x00

; FUNCTION 0x004676e4, declared_size=52, range_size=52, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame16SG_HasSkillSlotsEv
; demangled: PlayerSavegame::SG_HasSkillSlots() const
; decoder-mode: arm
004676e4  10 40 2d e9                                      push {r4, lr}
004676e8  00 40 a0 e1                                      mov r4, r0
004676ec  10 00 90 e5                                      ldr r0, [r0, #0x10]
004676f0  00 10 e0 e3                                      mvn r1, #0
004676f4  df 0f 80 e2                                      add r0, r0, #0x37c
004676f8  e8 53 fe eb                                      bl #0x3fc6a0
004676fc  88 30 94 e5                                      ldr r3, [r4, #0x88]
00467700  18 20 a0 e3                                      mov r2, #0x18
00467704  92 30 23 e0                                      mla r3, r2, r0, r3
00467708  10 00 93 e5                                      ldr r0, [r3, #0x10]
0046770c  00 00 50 e2                                      subs r0, r0, #0
00467710  01 00 a0 13                                      movne r0, #1
00467714  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00467718, declared_size=44, range_size=44, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame16SG_GenerateSeedsEv
; demangled: PlayerSavegame::SG_GenerateSeeds()
; decoder-mode: arm
00467718  10 40 2d e9                                      push {r4, lr}
0046771c  00 40 a0 e1                                      mov r4, r0
00467720  69 8e 06 eb                                      bl #0x60b0cc
00467724  53 3c 80 e2                                      add r3, r0, #0x5300
00467728  7b 30 83 e2                                      add r3, r3, #0x7b
0046772c  fd 2c 83 e2                                      add r2, r3, #0xfd00
00467730  2f 20 82 e2                                      add r2, r2, #0x2f
00467734  64 20 84 e5                                      str r2, [r4, #0x64]
00467738  5c 00 84 e5                                      str r0, [r4, #0x5c]
0046773c  60 30 84 e5                                      str r3, [r4, #0x60]
00467740  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00467744, declared_size=24, range_size=24, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame14SG_SetSaveDateEv
; demangled: PlayerSavegame::SG_SetSaveDate()
; decoder-mode: arm
00467744  10 40 2d e9                                      push {r4, lr}
00467748  00 40 a0 e1                                      mov r4, r0
0046774c  00 00 a0 e3                                      mov r0, #0
00467750  8a 9b fa eb                                      bl #0x30e580
00467754  38 00 84 e5                                      str r0, [r4, #0x38]
00467758  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004679e8, declared_size=560, range_size=560, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame15SG_TryQuestSyncEv
; demangled: PlayerSavegame::SG_TryQuestSync()
; decoder-mode: arm
004679e8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004679ec  3c d0 4d e2                                      sub sp, sp, #0x3c
004679f0  00 50 a0 e1                                      mov r5, r0
004679f4  66 57 0e eb                                      bl #0x7fd794
004679f8  05 30 d0 e5                                      ldrb r3, [r0, #5]
004679fc  e4 41 9f e5                                      ldr r4, [pc, #0x1e4]
00467a00  00 00 53 e3                                      cmp r3, #0
00467a04  01 30 a0 03                                      moveq r3, #1
00467a08  04 40 8f e0                                      add r4, pc, r4
00467a0c  14 30 c5 05                                      strbeq r3, [r5, #0x14]
00467a10  01 00 00 1a                                      bne #0x467a1c
00467a14  3c d0 8d e2                                      add sp, sp, #0x3c
00467a18  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00467a1c  c8 61 9f e5                                      ldr r6, [pc, #0x1c8]
00467a20  10 10 95 e5                                      ldr r1, [r5, #0x10]
00467a24  06 30 94 e7                                      ldr r3, [r4, r6]
00467a28  40 00 93 e5                                      ldr r0, [r3, #0x40]
00467a2c  72 1d fc eb                                      bl #0x36effc
00467a30  00 00 50 e3                                      cmp r0, #0
00467a34  07 00 00 1a                                      bne #0x467a58
00467a38  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
00467a3c  03 30 94 e7                                      ldr r3, [r4, r3]
00467a40  00 30 93 e5                                      ldr r3, [r3]
00467a44  02 00 53 e3                                      cmp r3, #2
00467a48  00 00 80 05                                      streq r0, [r0]
00467a4c  01 00 00 0a                                      beq #0x467a58
00467a50  01 00 53 e3                                      cmp r3, #1
00467a54  56 00 00 0a                                      beq #0x467bb4
00467a58  14 30 d5 e5                                      ldrb r3, [r5, #0x14]
00467a5c  00 00 53 e3                                      cmp r3, #0
00467a60  eb ff ff 1a                                      bne #0x467a14
00467a64  06 60 94 e7                                      ldr r6, [r4, r6]
00467a68  40 00 96 e5                                      ldr r0, [r6, #0x40]
00467a6c  80 1d fc eb                                      bl #0x36f074
00467a70  00 00 50 e3                                      cmp r0, #0
00467a74  3f 00 00 0a                                      beq #0x467b78
00467a78  08 60 8d e2                                      add r6, sp, #8
00467a7c  06 00 a0 e1                                      mov r0, r6
00467a80  ad bc fa eb                                      bl #0x316d3c
00467a84  06 00 a0 e1                                      mov r0, r6
00467a88  fa 2f a0 e3                                      mov r2, #0x3e8
00467a8c  00 30 a0 e3                                      mov r3, #0
00467a90  ba bd fa eb                                      bl #0x317180
00467a94  58 31 9f e5                                      ldr r3, [pc, #0x158]
00467a98  46 0f 85 e2                                      add r0, r5, #0x118
00467a9c  06 20 a0 e1                                      mov r2, r6
00467aa0  03 30 94 e7                                      ldr r3, [r4, r3]
00467aa4  00 10 93 e5                                      ldr r1, [r3]
00467aa8  ea 12 00 eb                                      bl #0x46c658
00467aac  c2 8d 0e eb                                      bl #0x80b1bc
00467ab0  34 30 dd e5                                      ldrb r3, [sp, #0x34]
00467ab4  00 80 a0 e1                                      mov r8, r0
00467ab8  18 70 9d e5                                      ldr r7, [sp, #0x18]
00467abc  00 00 53 e3                                      cmp r3, #0
00467ac0  13 00 00 1a                                      bne #0x467b14
00467ac4  24 21 9f e5                                      ldr r2, [pc, #0x124]
00467ac8  02 20 94 e7                                      ldr r2, [r4, r2]
00467acc  00 20 92 e5                                      ldr r2, [r2]
00467ad0  02 00 52 e3                                      cmp r2, #2
00467ad4  00 30 83 05                                      streq r3, [r3]
00467ad8  0d 00 00 0a                                      beq #0x467b14
00467adc  01 00 52 e3                                      cmp r2, #1
00467ae0  0b 00 00 1a                                      bne #0x467b14
00467ae4  0c 01 9f e5                                      ldr r0, [pc, #0x10c]
00467ae8  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
00467aec  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
00467af0  00 00 94 e7                                      ldr r0, [r4, r0]
00467af4  08 31 9f e5                                      ldr r3, [pc, #0x108]
00467af8  82 c0 a0 e3                                      mov ip, #0x82
00467afc  01 10 8f e0                                      add r1, pc, r1
00467b00  a8 00 80 e2                                      add r0, r0, #0xa8
00467b04  02 20 8f e0                                      add r2, pc, r2
00467b08  03 30 8f e0                                      add r3, pc, r3
00467b0c  00 c0 8d e5                                      str ip, [sp]
00467b10  3b 99 fa eb                                      bl #0x30e004
00467b14  ec 00 9f e5                                      ldr r0, [pc, #0xec]
00467b18  24 30 9d e5                                      ldr r3, [sp, #0x24]
00467b1c  01 10 a0 e3                                      mov r1, #1
00467b20  00 00 8f e0                                      add r0, pc, r0
00467b24  00 a0 93 e5                                      ldr sl, [r3]
00467b28  c5 89 0e eb                                      bl #0x80a244
00467b2c  00 30 a0 e3                                      mov r3, #0
00467b30  54 30 80 e5                                      str r3, [r0, #0x54]
00467b34  00 40 a0 e1                                      mov r4, r0
00467b38  50 70 80 e5                                      str r7, [r0, #0x50]
00467b3c  02 10 a0 e3                                      mov r1, #2
00467b40  07 00 a0 e1                                      mov r0, r7
00467b44  88 a2 fa eb                                      bl #0x31056c
00467b48  07 20 a0 e1                                      mov r2, r7
00467b4c  0a 10 a0 e1                                      mov r1, sl
00467b50  58 00 84 e5                                      str r0, [r4, #0x58]
00467b54  43 9b fa eb                                      bl #0x30e868
00467b58  08 00 a0 e1                                      mov r0, r8
00467b5c  04 10 a0 e1                                      mov r1, r4
00467b60  cf 99 0e eb                                      bl #0x80e2a4
00467b64  01 30 a0 e3                                      mov r3, #1
00467b68  14 30 c5 e5                                      strb r3, [r5, #0x14]
00467b6c  06 00 a0 e1                                      mov r0, r6
00467b70  93 bb fa eb                                      bl #0x3169c4
00467b74  a6 ff ff ea                                      b #0x467a14
00467b78  06 00 a0 e1                                      mov r0, r6
00467b7c  84 de fa eb                                      bl #0x31f594
00467b80  40 30 96 e5                                      ldr r3, [r6, #0x40]
00467b84  10 27 d3 e5                                      ldrb r2, [r3, #0x710]
00467b88  00 00 52 e3                                      cmp r2, #0
00467b8c  a0 ff ff 0a                                      beq #0x467a14
00467b90  00 00 50 e3                                      cmp r0, #0
00467b94  9e ff ff 0a                                      beq #0x467a14
00467b98  30 21 90 e5                                      ldr r2, [r0, #0x130]
00467b9c  26 00 52 e3                                      cmp r2, #0x26
00467ba0  9b ff ff 1a                                      bne #0x467a14
00467ba4  03 00 a0 e1                                      mov r0, r3
00467ba8  05 10 a0 e1                                      mov r1, r5
00467bac  18 17 fc eb                                      bl #0x36d814
00467bb0  97 ff ff ea                                      b #0x467a14
00467bb4  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00467bb8  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00467bbc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00467bc0  00 00 94 e7                                      ldr r0, [r4, r0]
00467bc4  48 30 9f e5                                      ldr r3, [pc, #0x48]
00467bc8  b6 c1 00 e3                                      movw ip, #0x1b6
00467bcc  01 10 8f e0                                      add r1, pc, r1
00467bd0  02 20 8f e0                                      add r2, pc, r2
00467bd4  03 30 8f e0                                      add r3, pc, r3
00467bd8  a8 00 80 e2                                      add r0, r0, #0xa8
00467bdc  00 c0 8d e5                                      str ip, [sp]
00467be0  07 99 fa eb                                      bl #0x30e004
00467be4  9b ff ff ea                                      b #0x467a58
; mapping-symbol data/literal pool
00467be8  88 d0 52 00 f4 37 00 00 c0 39 00 00 9c 1a 00 00  .byte 0x88, 0xd0, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x9c, 0x1a, 0x00, 0x00
00467bf8  c0 19 00 00 dc 68 45 00 c4 6a 45 00 b8 ec 45 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xdc, 0x68, 0x45, 0x00, 0xc4, 0x6a, 0x45, 0x00, 0xb8, 0xec, 0x45, 0x00
00467c08  78 73 45 00 0c 68 45 00 00 58 46 00 ac 56 46 00  .byte 0x78, 0x73, 0x45, 0x00, 0x0c, 0x68, 0x45, 0x00, 0x00, 0x58, 0x46, 0x00, 0xac, 0x56, 0x46, 0x00

; FUNCTION 0x00467c54, declared_size=144, range_size=144, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame26SG_GetFastTravelIdUnlockedEii
; demangled: PlayerSavegame::SG_GetFastTravelIdUnlocked(int, int)
; decoder-mode: arm
00467c54  30 40 2d e9                                      push {r4, r5, lr}
00467c58  78 30 9f e5                                      ldr r3, [pc, #0x78]
00467c5c  00 40 51 e2                                      subs r4, r1, #0
00467c60  0c d0 4d e2                                      sub sp, sp, #0xc
00467c64  00 50 a0 e1                                      mov r5, r0
00467c68  03 30 8f e0                                      add r3, pc, r3
00467c6c  04 00 00 ba                                      blt #0x467c84
00467c70  64 10 9f e5                                      ldr r1, [pc, #0x64]
00467c74  01 30 93 e7                                      ldr r3, [r3, r1]
00467c78  00 30 93 e5                                      ldr r3, [r3]
00467c7c  03 00 54 e1                                      cmp r4, r3
00467c80  02 00 00 3a                                      blo #0x467c90
00467c84  00 00 a0 e3                                      mov r0, #0
00467c88  0c d0 8d e2                                      add sp, sp, #0xc
00467c8c  30 80 bd e8                                      pop {r4, r5, pc}
00467c90  3f 00 54 e3                                      cmp r4, #0x3f
00467c94  09 00 00 8a                                      bhi #0x467cc0
00467c98  82 20 a0 e1                                      lsl r2, r2, #1
00467c9c  a4 22 82 e0                                      add r2, r2, r4, lsr #5
00467ca0  1f 40 04 e2                                      and r4, r4, #0x1f
00467ca4  02 51 85 e0                                      add r5, r5, r2, lsl #2
00467ca8  7c 31 95 e5                                      ldr r3, [r5, #0x17c]
00467cac  01 20 a0 e3                                      mov r2, #1
00467cb0  12 34 13 e0                                      ands r3, r3, r2, lsl r4
00467cb4  00 00 a0 03                                      moveq r0, #0
00467cb8  01 00 a0 13                                      movne r0, #1
00467cbc  f1 ff ff ea                                      b #0x467c88
00467cc0  18 00 9f e5                                      ldr r0, [pc, #0x18]
00467cc4  04 20 8d e5                                      str r2, [sp, #4]
00467cc8  00 00 8f e0                                      add r0, pc, r0
00467ccc  77 84 0a eb                                      bl #0x708eb0
00467cd0  04 20 9d e5                                      ldr r2, [sp, #4]
00467cd4  ef ff ff ea                                      b #0x467c98
; mapping-symbol data/literal pool
00467cd8  28 ce 52 00 f4 45 00 00 00 a0 45 00              .byte 0x28, 0xce, 0x52, 0x00, 0xf4, 0x45, 0x00, 0x00, 0x00, 0xa0, 0x45, 0x00

; FUNCTION 0x00467ce4, declared_size=372, range_size=372, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame19SG_IsFaerieUnlockedEji
; demangled: PlayerSavegame::SG_IsFaerieUnlocked(unsigned int, int) const
; decoder-mode: arm
00467ce4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00467ce8  44 41 9f e5                                      ldr r4, [pc, #0x144]
00467cec  44 51 9f e5                                      ldr r5, [pc, #0x144]
00467cf0  28 70 82 e2                                      add r7, r2, #0x28
00467cf4  04 40 8f e0                                      add r4, pc, r4
00467cf8  05 30 94 e7                                      ldr r3, [r4, r5]
00467cfc  02 b0 a0 e1                                      mov fp, r2
00467d00  07 21 90 e7                                      ldr r2, [r0, r7, lsl #2]
00467d04  00 30 93 e5                                      ldr r3, [r3]
00467d08  2c d0 4d e2                                      sub sp, sp, #0x2c
00467d0c  01 00 52 e1                                      cmp r2, r1
00467d10  24 30 8d e5                                      str r3, [sp, #0x24]
00467d14  00 60 a0 e1                                      mov r6, r0
00467d18  01 90 a0 e1                                      mov sb, r1
00467d1c  08 00 00 8a                                      bhi #0x467d44
00467d20  14 31 9f e5                                      ldr r3, [pc, #0x114]
00467d24  03 30 94 e7                                      ldr r3, [r4, r3]
00467d28  00 30 93 e5                                      ldr r3, [r3]
00467d2c  02 00 53 e3                                      cmp r3, #2
00467d30  00 30 a0 03                                      moveq r3, #0
00467d34  00 30 83 05                                      streq r3, [r3]
00467d38  01 00 00 0a                                      beq #0x467d44
00467d3c  01 00 53 e3                                      cmp r3, #1
00467d40  2d 00 00 0a                                      beq #0x467dfc
00467d44  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
00467d48  0c 80 8d e2                                      add r8, sp, #0xc
00467d4c  03 a0 94 e7                                      ldr sl, [r4, r3]
00467d50  0a 00 a0 e1                                      mov r0, sl
00467d54  cb 3e fb eb                                      bl #0x337888
00467d58  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
00467d5c  08 20 8d e2                                      add r2, sp, #8
00467d60  08 00 a0 e1                                      mov r0, r8
00467d64  01 10 8f e0                                      add r1, pc, r1
00467d68  df b0 fa eb                                      bl #0x3140ec
00467d6c  0a 00 a0 e1                                      mov r0, sl
00467d70  08 10 a0 e1                                      mov r1, r8
00467d74  43 3f fb eb                                      bl #0x337a88
00467d78  00 a0 a0 e1                                      mov sl, r0
00467d7c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00467d80  08 00 50 e1                                      cmp r0, r8
00467d84  06 00 00 0a                                      beq #0x467da4
00467d88  00 00 50 e3                                      cmp r0, #0
00467d8c  04 00 00 0a                                      beq #0x467da4
00467d90  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00467d94  01 10 60 e0                                      rsb r1, r0, r1
00467d98  80 00 51 e3                                      cmp r1, #0x80
00467d9c  14 00 00 8a                                      bhi #0x467df4
00467da0  56 84 0a eb                                      bl #0x708f00
00467da4  00 00 5a e3                                      cmp sl, #0
00467da8  01 00 a0 13                                      movne r0, #1
00467dac  09 00 00 1a                                      bne #0x467dd8
00467db0  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
00467db4  03 00 59 e1                                      cmp sb, r3
00467db8  0a 00 a0 21                                      movhs r0, sl
00467dbc  05 00 00 2a                                      bhs #0x467dd8
00467dc0  0b 61 86 e0                                      add r6, r6, fp, lsl #2
00467dc4  94 30 96 e5                                      ldr r3, [r6, #0x94]
00467dc8  09 01 d3 e7                                      ldrb r0, [r3, sb, lsl #2]
00467dcc  01 00 50 e3                                      cmp r0, #1
00467dd0  00 00 a0 13                                      movne r0, #0
00467dd4  01 00 a0 03                                      moveq r0, #1
00467dd8  05 30 94 e7                                      ldr r3, [r4, r5]
00467ddc  24 20 9d e5                                      ldr r2, [sp, #0x24]
00467de0  00 30 93 e5                                      ldr r3, [r3]
00467de4  03 00 52 e1                                      cmp r2, r3
00467de8  10 00 00 1a                                      bne #0x467e30
00467dec  2c d0 8d e2                                      add sp, sp, #0x2c
00467df0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00467df4  91 a1 fa eb                                      bl #0x310440
00467df8  e9 ff ff ea                                      b #0x467da4
00467dfc  44 00 9f e5                                      ldr r0, [pc, #0x44]
00467e00  44 10 9f e5                                      ldr r1, [pc, #0x44]
00467e04  44 20 9f e5                                      ldr r2, [pc, #0x44]
00467e08  00 00 94 e7                                      ldr r0, [r4, r0]
00467e0c  40 30 9f e5                                      ldr r3, [pc, #0x40]
00467e10  4f cf a0 e3                                      mov ip, #0x13c
00467e14  01 10 8f e0                                      add r1, pc, r1
00467e18  02 20 8f e0                                      add r2, pc, r2
00467e1c  03 30 8f e0                                      add r3, pc, r3
00467e20  a8 00 80 e2                                      add r0, r0, #0xa8
00467e24  00 c0 8d e5                                      str ip, [sp]
00467e28  75 98 fa eb                                      bl #0x30e004
00467e2c  c4 ff ff ea                                      b #0x467d44
00467e30  36 99 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00467e34  9c cd 52 00 ac 40 00 00 c0 39 00 00 84 08 00 00  .byte 0x9c, 0xcd, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
00467e44  b4 56 46 00 c0 19 00 00 c4 65 45 00 48 54 46 00  .byte 0xb4, 0x56, 0x46, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc4, 0x65, 0x45, 0x00, 0x48, 0x54, 0x46, 0x00
00467e54  64 54 46 00                                      .byte 0x64, 0x54, 0x46, 0x00

; FUNCTION 0x00467e58, declared_size=280, range_size=280, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame17SG_IsMapLocLockedEii
; demangled: PlayerSavegame::SG_IsMapLocLocked(int, int) const
; decoder-mode: arm
00467e58  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00467e5c  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
00467e60  f4 60 9f e5                                      ldr r6, [pc, #0xf4]
00467e64  f4 c0 9f e5                                      ldr ip, [pc, #0xf4]
00467e68  04 40 8f e0                                      add r4, pc, r4
00467e6c  06 30 94 e7                                      ldr r3, [r4, r6]
00467e70  0c 70 94 e7                                      ldr r7, [r4, ip]
00467e74  20 d0 4d e2                                      sub sp, sp, #0x20
00467e78  00 30 93 e5                                      ldr r3, [r3]
00467e7c  00 a0 a0 e1                                      mov sl, r0
00467e80  07 00 a0 e1                                      mov r0, r7
00467e84  1c 30 8d e5                                      str r3, [sp, #0x1c]
00467e88  01 80 a0 e1                                      mov r8, r1
00467e8c  02 90 a0 e1                                      mov sb, r2
00467e90  7c 3e fb eb                                      bl #0x337888
00467e94  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
00467e98  04 50 8d e2                                      add r5, sp, #4
00467e9c  0d 20 a0 e1                                      mov r2, sp
00467ea0  01 10 8f e0                                      add r1, pc, r1
00467ea4  05 00 a0 e1                                      mov r0, r5
00467ea8  8f b0 fa eb                                      bl #0x3140ec
00467eac  07 00 a0 e1                                      mov r0, r7
00467eb0  05 10 a0 e1                                      mov r1, r5
00467eb4  f3 3e fb eb                                      bl #0x337a88
00467eb8  00 00 50 e3                                      cmp r0, #0
00467ebc  1a 00 00 0a                                      beq #0x467f2c
00467ec0  01 70 a0 e3                                      mov r7, #1
00467ec4  18 00 9d e5                                      ldr r0, [sp, #0x18]
00467ec8  05 00 50 e1                                      cmp r0, r5
00467ecc  06 00 00 0a                                      beq #0x467eec
00467ed0  00 00 50 e3                                      cmp r0, #0
00467ed4  04 00 00 0a                                      beq #0x467eec
00467ed8  04 10 9d e5                                      ldr r1, [sp, #4]
00467edc  01 10 60 e0                                      rsb r1, r0, r1
00467ee0  80 00 51 e3                                      cmp r1, #0x80
00467ee4  18 00 00 8a                                      bhi #0x467f4c
00467ee8  04 84 0a eb                                      bl #0x708f00
00467eec  00 00 57 e3                                      cmp r7, #0
00467ef0  00 00 a0 13                                      movne r0, #0
00467ef4  05 00 00 1a                                      bne #0x467f10
00467ef8  0a 00 a0 e1                                      mov r0, sl
00467efc  08 10 a0 e1                                      mov r1, r8
00467f00  09 20 a0 e1                                      mov r2, sb
00467f04  81 fb ff eb                                      bl #0x466d10
00467f08  01 00 70 e2                                      rsbs r0, r0, #1
00467f0c  00 00 a0 33                                      movlo r0, #0
00467f10  06 30 94 e7                                      ldr r3, [r4, r6]
00467f14  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00467f18  00 30 93 e5                                      ldr r3, [r3]
00467f1c  03 00 52 e1                                      cmp r2, r3
00467f20  0b 00 00 1a                                      bne #0x467f54
00467f24  20 d0 8d e2                                      add sp, sp, #0x20
00467f28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00467f2c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00467f30  34 10 9f e5                                      ldr r1, [pc, #0x34]
00467f34  03 00 94 e7                                      ldr r0, [r4, r3]
00467f38  01 10 8f e0                                      add r1, pc, r1
00467f3c  b4 e3 fa eb                                      bl #0x320e14
00467f40  00 70 50 e2                                      subs r7, r0, #0
00467f44  de ff ff 0a                                      beq #0x467ec4
00467f48  dc ff ff ea                                      b #0x467ec0
00467f4c  3b a1 fa eb                                      bl #0x310440
00467f50  e5 ff ff ea                                      b #0x467eec
00467f54  ed 98 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00467f58  28 cc 52 00 ac 40 00 00 84 08 00 00 90 55 46 00  .byte 0x28, 0xcc, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x90, 0x55, 0x46, 0x00
00467f68  f4 37 00 00 08 55 46 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0x08, 0x55, 0x46, 0x00

; FUNCTION 0x00467f70, declared_size=280, range_size=280, mode=arm
; class-group: PlayerSavegame
; alias: _ZNK14PlayerSavegame16SG_IsLevelLockedEii
; demangled: PlayerSavegame::SG_IsLevelLocked(int, int) const
; decoder-mode: arm
00467f70  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00467f74  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
00467f78  f4 60 9f e5                                      ldr r6, [pc, #0xf4]
00467f7c  f4 c0 9f e5                                      ldr ip, [pc, #0xf4]
00467f80  04 40 8f e0                                      add r4, pc, r4
00467f84  06 30 94 e7                                      ldr r3, [r4, r6]
00467f88  0c 70 94 e7                                      ldr r7, [r4, ip]
00467f8c  20 d0 4d e2                                      sub sp, sp, #0x20
00467f90  00 30 93 e5                                      ldr r3, [r3]
00467f94  00 a0 a0 e1                                      mov sl, r0
00467f98  07 00 a0 e1                                      mov r0, r7
00467f9c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00467fa0  01 80 a0 e1                                      mov r8, r1
00467fa4  02 90 a0 e1                                      mov sb, r2
00467fa8  36 3e fb eb                                      bl #0x337888
00467fac  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
00467fb0  04 50 8d e2                                      add r5, sp, #4
00467fb4  0d 20 a0 e1                                      mov r2, sp
00467fb8  01 10 8f e0                                      add r1, pc, r1
00467fbc  05 00 a0 e1                                      mov r0, r5
00467fc0  49 b0 fa eb                                      bl #0x3140ec
00467fc4  07 00 a0 e1                                      mov r0, r7
00467fc8  05 10 a0 e1                                      mov r1, r5
00467fcc  ad 3e fb eb                                      bl #0x337a88
00467fd0  00 00 50 e3                                      cmp r0, #0
00467fd4  1a 00 00 0a                                      beq #0x468044
00467fd8  01 70 a0 e3                                      mov r7, #1
00467fdc  18 00 9d e5                                      ldr r0, [sp, #0x18]
00467fe0  05 00 50 e1                                      cmp r0, r5
00467fe4  06 00 00 0a                                      beq #0x468004
00467fe8  00 00 50 e3                                      cmp r0, #0
00467fec  04 00 00 0a                                      beq #0x468004
00467ff0  04 10 9d e5                                      ldr r1, [sp, #4]
00467ff4  01 10 60 e0                                      rsb r1, r0, r1
00467ff8  80 00 51 e3                                      cmp r1, #0x80
00467ffc  18 00 00 8a                                      bhi #0x468064
00468000  be 83 0a eb                                      bl #0x708f00
00468004  00 00 57 e3                                      cmp r7, #0
00468008  00 00 a0 13                                      movne r0, #0
0046800c  05 00 00 1a                                      bne #0x468028
00468010  0a 00 a0 e1                                      mov r0, sl
00468014  08 10 a0 e1                                      mov r1, r8
00468018  09 20 a0 e1                                      mov r2, sb
0046801c  07 fc ff eb                                      bl #0x467040
00468020  01 00 70 e2                                      rsbs r0, r0, #1
00468024  00 00 a0 33                                      movlo r0, #0
00468028  06 30 94 e7                                      ldr r3, [r4, r6]
0046802c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00468030  00 30 93 e5                                      ldr r3, [r3]
00468034  03 00 52 e1                                      cmp r2, r3
00468038  0b 00 00 1a                                      bne #0x46806c
0046803c  20 d0 8d e2                                      add sp, sp, #0x20
00468040  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00468044  34 30 9f e5                                      ldr r3, [pc, #0x34]
00468048  34 10 9f e5                                      ldr r1, [pc, #0x34]
0046804c  03 00 94 e7                                      ldr r0, [r4, r3]
00468050  01 10 8f e0                                      add r1, pc, r1
00468054  6e e3 fa eb                                      bl #0x320e14
00468058  00 70 50 e2                                      subs r7, r0, #0
0046805c  de ff ff 0a                                      beq #0x467fdc
00468060  dc ff ff ea                                      b #0x467fd8
00468064  f5 a0 fa eb                                      bl #0x310440
00468068  e5 ff ff ea                                      b #0x468004
0046806c  a7 98 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00468070  10 cb 52 00 ac 40 00 00 84 08 00 00 78 54 46 00  .byte 0x10, 0xcb, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x78, 0x54, 0x46, 0x00
00468080  f4 37 00 00 f0 53 46 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0xf0, 0x53, 0x46, 0x00

; FUNCTION 0x004680a8, declared_size=968, range_size=968, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17SG_SetSkillInSlotEij
; demangled: PlayerSavegame::SG_SetSkillInSlot(int, unsigned int)
; decoder-mode: arm
004680a8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004680ac  84 30 90 e5                                      ldr r3, [r0, #0x84]
004680b0  02 50 a0 e1                                      mov r5, r2
004680b4  84 73 9f e5                                      ldr r7, [pc, #0x384]
004680b8  02 00 53 e1                                      cmp r3, r2
004680bc  00 20 a0 83                                      movhi r2, #0
004680c0  01 20 a0 93                                      movls r2, #1
004680c4  01 00 75 e3                                      cmn r5, #1
004680c8  00 20 a0 03                                      moveq r2, #0
004680cc  00 00 52 e3                                      cmp r2, #0
004680d0  20 d0 4d e2                                      sub sp, sp, #0x20
004680d4  00 60 a0 e1                                      mov r6, r0
004680d8  07 70 8f e0                                      add r7, pc, r7
004680dc  01 40 a0 e1                                      mov r4, r1
004680e0  08 00 00 0a                                      beq #0x468108
004680e4  58 33 9f e5                                      ldr r3, [pc, #0x358]
004680e8  03 30 97 e7                                      ldr r3, [r7, r3]
004680ec  00 30 93 e5                                      ldr r3, [r3]
004680f0  02 00 53 e3                                      cmp r3, #2
004680f4  00 30 a0 03                                      moveq r3, #0
004680f8  00 30 83 05                                      streq r3, [r3]
004680fc  01 00 00 0a                                      beq #0x468108
00468100  01 00 53 e3                                      cmp r3, #1
00468104  ab 00 00 0a                                      beq #0x4683b8
00468108  00 00 54 e3                                      cmp r4, #0
0046810c  93 00 00 ba                                      blt #0x468360
00468110  80 30 96 e5                                      ldr r3, [r6, #0x80]
00468114  00 00 53 e3                                      cmp r3, #0
00468118  b3 00 00 0a                                      beq #0x4683ec
0046811c  10 00 96 e5                                      ldr r0, [r6, #0x10]
00468120  00 10 e0 e3                                      mvn r1, #0
00468124  df 0f 80 e2                                      add r0, r0, #0x37c
00468128  5c 51 fe eb                                      bl #0x3fc6a0
0046812c  04 10 a0 e1                                      mov r1, r4
00468130  00 70 a0 e1                                      mov r7, r0
00468134  06 00 a0 e1                                      mov r0, r6
00468138  d2 fc ff eb                                      bl #0x467488
0046813c  01 00 75 e3                                      cmn r5, #1
00468140  6c 00 00 0a                                      beq #0x4682f8
00468144  18 a0 a0 e3                                      mov sl, #0x18
00468148  9a 07 0a e0                                      mul sl, sl, r7
0046814c  88 00 96 e5                                      ldr r0, [r6, #0x88]
00468150  18 90 8d e2                                      add sb, sp, #0x18
00468154  0a 80 80 e0                                      add r8, r0, sl
00468158  08 30 98 e5                                      ldr r3, [r8, #8]
0046815c  03 00 58 e1                                      cmp r8, r3
00468160  0d 00 00 0a                                      beq #0x46819c
00468164  14 20 93 e5                                      ldr r2, [r3, #0x14]
00468168  02 00 55 e1                                      cmp r5, r2
0046816c  28 00 00 0a                                      beq #0x468214
00468170  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00468174  00 00 52 e3                                      cmp r2, #0
00468178  01 00 00 1a                                      bne #0x468184
0046817c  33 00 00 ea                                      b #0x468250
00468180  03 20 a0 e1                                      mov r2, r3
00468184  08 30 92 e5                                      ldr r3, [r2, #8]
00468188  00 00 53 e3                                      cmp r3, #0
0046818c  fb ff ff 1a                                      bne #0x468180
00468190  02 30 a0 e1                                      mov r3, r2
00468194  03 00 58 e1                                      cmp r8, r3
00468198  f1 ff ff 1a                                      bne #0x468164
0046819c  0a 10 80 e0                                      add r1, r0, sl
004681a0  04 c0 91 e5                                      ldr ip, [r1, #4]
004681a4  00 00 5c e3                                      cmp ip, #0
004681a8  01 c0 a0 01                                      moveq ip, r1
004681ac  0a 00 00 0a                                      beq #0x4681dc
004681b0  01 20 a0 e1                                      mov r2, r1
004681b4  00 00 00 ea                                      b #0x4681bc
004681b8  03 c0 a0 e1                                      mov ip, r3
004681bc  10 30 9c e5                                      ldr r3, [ip, #0x10]
004681c0  03 00 54 e1                                      cmp r4, r3
004681c4  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
004681c8  08 30 9c d5                                      ldrle r3, [ip, #8]
004681cc  02 c0 a0 c1                                      movgt ip, r2
004681d0  0c 20 a0 e1                                      mov r2, ip
004681d4  00 00 53 e3                                      cmp r3, #0
004681d8  f6 ff ff 1a                                      bne #0x4681b8
004681dc  0c 00 51 e1                                      cmp r1, ip
004681e0  27 00 00 0a                                      beq #0x468284
004681e4  10 20 9c e5                                      ldr r2, [ip, #0x10]
004681e8  0c 30 a0 e1                                      mov r3, ip
004681ec  02 00 54 e1                                      cmp r4, r2
004681f0  23 00 00 ba                                      blt #0x468284
004681f4  14 50 83 e5                                      str r5, [r3, #0x14]
004681f8  10 00 96 e5                                      ldr r0, [r6, #0x10]
004681fc  00 00 50 e3                                      cmp r0, #0
00468200  01 00 00 0a                                      beq #0x46820c
00468204  f2 0f 80 e2                                      add r0, r0, #0x3c8
00468208  fd c1 fd eb                                      bl #0x3d8a04
0046820c  20 d0 8d e2                                      add sp, sp, #0x20
00468210  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00468214  0c 70 93 e5                                      ldr r7, [r3, #0xc]
00468218  0a 00 80 e0                                      add r0, r0, sl
0046821c  00 00 57 e3                                      cmp r7, #0
00468220  01 00 00 1a                                      bne #0x46822c
00468224  20 00 00 ea                                      b #0x4682ac
00468228  02 70 a0 e1                                      mov r7, r2
0046822c  08 20 97 e5                                      ldr r2, [r7, #8]
00468230  00 00 52 e3                                      cmp r2, #0
00468234  fb ff ff 1a                                      bne #0x468228
00468238  09 10 a0 e1                                      mov r1, sb
0046823c  18 30 8d e5                                      str r3, [sp, #0x18]
00468240  74 fe ff eb                                      bl #0x467c18
00468244  07 30 a0 e1                                      mov r3, r7
00468248  88 00 96 e5                                      ldr r0, [r6, #0x88]
0046824c  c2 ff ff ea                                      b #0x46815c
00468250  04 10 93 e5                                      ldr r1, [r3, #4]
00468254  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00468258  0c 00 53 e1                                      cmp r3, ip
0046825c  05 00 00 1a                                      bne #0x468278
00468260  01 30 a0 e1                                      mov r3, r1
00468264  04 10 91 e5                                      ldr r1, [r1, #4]
00468268  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0046826c  03 00 52 e1                                      cmp r2, r3
00468270  fa ff ff 0a                                      beq #0x468260
00468274  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00468278  01 00 52 e1                                      cmp r2, r1
0046827c  01 30 a0 11                                      movne r3, r1
00468280  b5 ff ff ea                                      b #0x46815c
00468284  08 30 8d e2                                      add r3, sp, #8
00468288  00 e0 a0 e3                                      mov lr, #0
0046828c  10 00 8d e2                                      add r0, sp, #0x10
00468290  14 20 8d e2                                      add r2, sp, #0x14
00468294  08 40 8d e5                                      str r4, [sp, #8]
00468298  0c e0 8d e5                                      str lr, [sp, #0xc]
0046829c  14 c0 8d e5                                      str ip, [sp, #0x14]
004682a0  45 6a fb eb                                      bl #0x342bbc
004682a4  10 30 9d e5                                      ldr r3, [sp, #0x10]
004682a8  d1 ff ff ea                                      b #0x4681f4
004682ac  04 20 93 e5                                      ldr r2, [r3, #4]
004682b0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
004682b4  01 00 53 e1                                      cmp r3, r1
004682b8  03 70 a0 11                                      movne r7, r3
004682bc  04 00 00 1a                                      bne #0x4682d4
004682c0  02 70 a0 e1                                      mov r7, r2
004682c4  04 20 92 e5                                      ldr r2, [r2, #4]
004682c8  0c 10 92 e5                                      ldr r1, [r2, #0xc]
004682cc  07 00 51 e1                                      cmp r1, r7
004682d0  fa ff ff 0a                                      beq #0x4682c0
004682d4  0c 10 97 e5                                      ldr r1, [r7, #0xc]
004682d8  18 30 8d e5                                      str r3, [sp, #0x18]
004682dc  01 00 52 e1                                      cmp r2, r1
004682e0  02 70 a0 11                                      movne r7, r2
004682e4  09 10 a0 e1                                      mov r1, sb
004682e8  4a fe ff eb                                      bl #0x467c18
004682ec  07 30 a0 e1                                      mov r3, r7
004682f0  88 00 96 e5                                      ldr r0, [r6, #0x88]
004682f4  98 ff ff ea                                      b #0x46815c
004682f8  88 30 96 e5                                      ldr r3, [r6, #0x88]
004682fc  18 00 a0 e3                                      mov r0, #0x18
00468300  90 37 20 e0                                      mla r0, r0, r7, r3
00468304  04 30 90 e5                                      ldr r3, [r0, #4]
00468308  00 00 53 e3                                      cmp r3, #0
0046830c  be ff ff 0a                                      beq #0x46820c
00468310  00 10 a0 e1                                      mov r1, r0
00468314  00 00 00 ea                                      b #0x46831c
00468318  02 30 a0 e1                                      mov r3, r2
0046831c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00468320  02 00 54 e1                                      cmp r4, r2
00468324  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
00468328  08 20 93 d5                                      ldrle r2, [r3, #8]
0046832c  01 30 a0 c1                                      movgt r3, r1
00468330  03 10 a0 e1                                      mov r1, r3
00468334  00 00 52 e3                                      cmp r2, #0
00468338  f6 ff ff 1a                                      bne #0x468318
0046833c  03 00 50 e1                                      cmp r0, r3
00468340  b1 ff ff 0a                                      beq #0x46820c
00468344  10 20 93 e5                                      ldr r2, [r3, #0x10]
00468348  02 00 54 e1                                      cmp r4, r2
0046834c  ae ff ff ba                                      blt #0x46820c
00468350  20 10 8d e2                                      add r1, sp, #0x20
00468354  04 30 21 e5                                      str r3, [r1, #-4]!
00468358  2e fe ff eb                                      bl #0x467c18
0046835c  aa ff ff ea                                      b #0x46820c
00468360  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
00468364  03 30 97 e7                                      ldr r3, [r7, r3]
00468368  00 30 93 e5                                      ldr r3, [r3]
0046836c  02 00 53 e3                                      cmp r3, #2
00468370  00 30 a0 03                                      moveq r3, #0
00468374  00 30 83 05                                      streq r3, [r3]
00468378  64 ff ff 0a                                      beq #0x468110
0046837c  01 00 53 e3                                      cmp r3, #1
00468380  62 ff ff 1a                                      bne #0x468110
00468384  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
00468388  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0046838c  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
00468390  00 00 97 e7                                      ldr r0, [r7, r0]
00468394  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00468398  e2 c0 a0 e3                                      mov ip, #0xe2
0046839c  01 10 8f e0                                      add r1, pc, r1
004683a0  02 20 8f e0                                      add r2, pc, r2
004683a4  03 30 8f e0                                      add r3, pc, r3
004683a8  a8 00 80 e2                                      add r0, r0, #0xa8
004683ac  00 c0 8d e5                                      str ip, [sp]
004683b0  13 97 fa eb                                      bl #0x30e004
004683b4  55 ff ff ea                                      b #0x468110
004683b8  88 00 9f e5                                      ldr r0, [pc, #0x88]
004683bc  94 10 9f e5                                      ldr r1, [pc, #0x94]
004683c0  94 20 9f e5                                      ldr r2, [pc, #0x94]
004683c4  00 00 97 e7                                      ldr r0, [r7, r0]
004683c8  90 30 9f e5                                      ldr r3, [pc, #0x90]
004683cc  e1 c0 a0 e3                                      mov ip, #0xe1
004683d0  01 10 8f e0                                      add r1, pc, r1
004683d4  02 20 8f e0                                      add r2, pc, r2
004683d8  03 30 8f e0                                      add r3, pc, r3
004683dc  a8 00 80 e2                                      add r0, r0, #0xa8
004683e0  00 c0 8d e5                                      str ip, [sp]
004683e4  06 97 fa eb                                      bl #0x30e004
004683e8  46 ff ff ea                                      b #0x468108
004683ec  50 20 9f e5                                      ldr r2, [pc, #0x50]
004683f0  02 20 97 e7                                      ldr r2, [r7, r2]
004683f4  00 20 92 e5                                      ldr r2, [r2]
004683f8  02 00 52 e3                                      cmp r2, #2
004683fc  00 30 83 05                                      streq r3, [r3]
00468400  45 ff ff 0a                                      beq #0x46811c
00468404  01 00 52 e3                                      cmp r2, #1
00468408  43 ff ff 1a                                      bne #0x46811c
0046840c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00468410  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00468414  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00468418  00 00 97 e7                                      ldr r0, [r7, r0]
0046841c  48 30 9f e5                                      ldr r3, [pc, #0x48]
00468420  e3 c0 a0 e3                                      mov ip, #0xe3
00468424  01 10 8f e0                                      add r1, pc, r1
00468428  02 20 8f e0                                      add r2, pc, r2
0046842c  03 30 8f e0                                      add r3, pc, r3
00468430  a8 00 80 e2                                      add r0, r0, #0xa8
00468434  00 c0 8d e5                                      str ip, [sp]
00468438  f1 96 fa eb                                      bl #0x30e004
0046843c  36 ff ff ea                                      b #0x46811c
; mapping-symbol data/literal pool
00468440  b8 c9 52 00 c0 39 00 00 c0 19 00 00 3c 60 45 00  .byte 0xb8, 0xc9, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x3c, 0x60, 0x45, 0x00
00468450  e8 50 46 00 dc 4e 46 00 08 60 45 00 7c 50 46 00  .byte 0xe8, 0x50, 0x46, 0x00, 0xdc, 0x4e, 0x46, 0x00, 0x08, 0x60, 0x45, 0x00, 0x7c, 0x50, 0x46, 0x00
00468460  a8 4e 46 00 b4 5f 45 00 c0 4e 46 00 54 4e 46 00  .byte 0xa8, 0x4e, 0x46, 0x00, 0xb4, 0x5f, 0x45, 0x00, 0xc0, 0x4e, 0x46, 0x00, 0x54, 0x4e, 0x46, 0x00

; FUNCTION 0x00468470, declared_size=128, range_size=128, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame16SG_GetPlayerNameEj
; demangled: PlayerSavegame::SG_GetPlayerName(unsigned int)
; decoder-mode: arm
00468470  70 40 2d e9                                      push {r4, r5, r6, lr}
00468474  00 60 a0 e1                                      mov r6, r0
00468478  37 f2 ff eb                                      bl #0x464d5c
0046847c  64 40 9f e5                                      ldr r4, [pc, #0x64]
00468480  00 00 50 e3                                      cmp r0, #0
00468484  04 40 8f e0                                      add r4, pc, r4
00468488  15 00 00 0a                                      beq #0x4684e4
0046848c  00 10 a0 e3                                      mov r1, #0
00468490  66 0f a0 e3                                      mov r0, #0x198
00468494  35 a0 fa eb                                      bl #0x310570
00468498  06 10 a0 e1                                      mov r1, r6
0046849c  00 50 a0 e1                                      mov r5, r0
004684a0  00 30 a0 e3                                      mov r3, #0
004684a4  01 20 a0 e3                                      mov r2, #1
004684a8  3f f4 ff eb                                      bl #0x4655ac
004684ac  2c 60 95 e5                                      ldr r6, [r5, #0x2c]
004684b0  06 00 a0 e1                                      mov r0, r6
004684b4  66 96 fa eb                                      bl #0x30de54
004684b8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004684bc  00 20 86 e0                                      add r2, r6, r0
004684c0  06 10 a0 e1                                      mov r1, r6
004684c4  03 40 94 e7                                      ldr r4, [r4, r3]
004684c8  04 00 a0 e1                                      mov r0, r4
004684cc  43 a1 fa eb                                      bl #0x3109e0
004684d0  05 00 a0 e1                                      mov r0, r5
004684d4  00 30 95 e5                                      ldr r3, [r5]
004684d8  0f e0 a0 e1                                      mov lr, pc
004684dc  04 f0 93 e5                                      ldr pc, [r3, #4]
004684e0  14 00 94 e5                                      ldr r0, [r4, #0x14]
004684e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004684e8  0c c6 52 00 20 1b 00 00                          .byte 0x0c, 0xc6, 0x52, 0x00, 0x20, 0x1b, 0x00, 0x00

; FUNCTION 0x004684f0, declared_size=132, range_size=132, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame22_SaveVolatileQuestsLogEv
; demangled: PlayerSavegame::_SaveVolatileQuestsLog()
; decoder-mode: arm
004684f0  70 40 2d e9                                      push {r4, r5, r6, lr}
004684f4  00 50 a0 e1                                      mov r5, r0
004684f8  a5 54 0e eb                                      bl #0x7fd794
004684fc  05 30 d0 e5                                      ldrb r3, [r0, #5]
00468500  60 40 9f e5                                      ldr r4, [pc, #0x60]
00468504  00 00 53 e3                                      cmp r3, #0
00468508  04 40 8f e0                                      add r4, pc, r4
0046850c  00 00 00 1a                                      bne #0x468514
00468510  70 80 bd e8                                      pop {r4, r5, r6, pc}
00468514  50 30 9f e5                                      ldr r3, [pc, #0x50]
00468518  03 60 94 e7                                      ldr r6, [r4, r3]
0046851c  40 00 96 e5                                      ldr r0, [r6, #0x40]
00468520  d3 1a fc eb                                      bl #0x36f074
00468524  00 00 50 e3                                      cmp r0, #0
00468528  40 60 96 05                                      ldreq r6, [r6, #0x40]
0046852c  03 00 00 0a                                      beq #0x468540
00468530  40 60 96 e5                                      ldr r6, [r6, #0x40]
00468534  19 37 d6 e5                                      ldrb r3, [r6, #0x719]
00468538  00 00 53 e3                                      cmp r3, #0
0046853c  f3 ff ff 0a                                      beq #0x468510
00468540  6e 6e 86 e2                                      add r6, r6, #0x6e0
00468544  06 00 a0 e1                                      mov r0, r6
00468548  3e b9 fa eb                                      bl #0x316a48
0046854c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00468550  46 0f 85 e2                                      add r0, r5, #0x118
00468554  06 20 a0 e1                                      mov r2, r6
00468558  03 30 94 e7                                      ldr r3, [r4, r3]
0046855c  00 10 93 e5                                      ldr r1, [r3]
00468560  70 40 bd e8                                      pop {r4, r5, r6, lr}
00468564  3b 10 00 ea                                      b #0x46c658
; mapping-symbol data/literal pool
00468568  88 c5 52 00 f4 37 00 00 9c 1a 00 00              .byte 0x88, 0xc5, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x9c, 0x1a, 0x00, 0x00

; FUNCTION 0x00468574, declared_size=188, range_size=188, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame22_LoadVolatileQuestsLogEi
; demangled: PlayerSavegame::_LoadVolatileQuestsLog(int)
; decoder-mode: arm
00468574  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00468578  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
0046857c  14 00 11 e3                                      tst r1, #0x14
00468580  00 50 a0 e1                                      mov r5, r0
00468584  04 40 8f e0                                      add r4, pc, r4
00468588  00 00 00 1a                                      bne #0x468590
0046858c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00468590  7f 54 0e eb                                      bl #0x7fd794
00468594  05 30 d0 e5                                      ldrb r3, [r0, #5]
00468598  00 00 53 e3                                      cmp r3, #0
0046859c  fa ff ff 0a                                      beq #0x46858c
004685a0  80 30 9f e5                                      ldr r3, [pc, #0x80]
004685a4  03 60 94 e7                                      ldr r6, [r4, r3]
004685a8  40 00 96 e5                                      ldr r0, [r6, #0x40]
004685ac  b0 1a fc eb                                      bl #0x36f074
004685b0  00 00 50 e3                                      cmp r0, #0
004685b4  40 70 96 05                                      ldreq r7, [r6, #0x40]
004685b8  14 00 00 1a                                      bne #0x468610
004685bc  6e 6e 87 e2                                      add r6, r7, #0x6e0
004685c0  e0 36 97 e5                                      ldr r3, [r7, #0x6e0]
004685c4  06 00 a0 e1                                      mov r0, r6
004685c8  0f e0 a0 e1                                      mov lr, pc
004685cc  08 f0 93 e5                                      ldr pc, [r3, #8]
004685d0  01 10 90 e1                                      orrs r1, r0, r1
004685d4  ec ff ff 0a                                      beq #0x46858c
004685d8  e0 16 97 e5                                      ldr r1, [r7, #0x6e0]
004685dc  06 00 a0 e1                                      mov r0, r6
004685e0  00 20 a0 e3                                      mov r2, #0
004685e4  00 30 a0 e3                                      mov r3, #0
004685e8  0f e0 a0 e1                                      mov lr, pc
004685ec  20 f0 91 e5                                      ldr pc, [r1, #0x20]
004685f0  34 30 9f e5                                      ldr r3, [pc, #0x34]
004685f4  46 0f 85 e2                                      add r0, r5, #0x118
004685f8  06 20 a0 e1                                      mov r2, r6
004685fc  03 10 94 e7                                      ldr r1, [r4, r3]
00468600  00 30 a0 e3                                      mov r3, #0
00468604  00 10 91 e5                                      ldr r1, [r1]
00468608  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0046860c  9e 0f 00 ea                                      b #0x46c48c
00468610  40 70 96 e5                                      ldr r7, [r6, #0x40]
00468614  19 37 d7 e5                                      ldrb r3, [r7, #0x719]
00468618  00 00 53 e3                                      cmp r3, #0
0046861c  da ff ff 0a                                      beq #0x46858c
00468620  e5 ff ff ea                                      b #0x4685bc
; mapping-symbol data/literal pool
00468624  0c c5 52 00 f4 37 00 00 9c 1a 00 00              .byte 0x0c, 0xc5, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x9c, 0x1a, 0x00, 0x00

; FUNCTION 0x00468630, declared_size=656, range_size=656, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame19_SetupSavedSectionsEbb
; demangled: PlayerSavegame::_SetupSavedSections(bool, bool)
; decoder-mode: arm
00468630  70 40 2d e9                                      push {r4, r5, r6, lr}
00468634  10 42 9f e5                                      ldr r4, [pc, #0x210]
00468638  00 00 51 e3                                      cmp r1, #0
0046863c  08 d0 4d e2                                      sub sp, sp, #8
00468640  00 50 a0 e1                                      mov r5, r0
00468644  04 40 8f e0                                      add r4, pc, r4
00468648  02 60 a0 e1                                      mov r6, r2
0046864c  03 00 00 0a                                      beq #0x468660
00468650  00 00 52 e3                                      cmp r2, #0
00468654  43 00 00 0a                                      beq #0x468768
00468658  08 d0 8d e2                                      add sp, sp, #8
0046865c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00468660  00 00 52 e3                                      cmp r2, #0
00468664  fb ff ff 1a                                      bne #0x468658
00468668  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
0046866c  e0 11 9f e5                                      ldr r1, [pc, #0x1e0]
00468670  08 00 90 e5                                      ldr r0, [r0, #8]
00468674  03 20 94 e7                                      ldr r2, [r4, r3]
00468678  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
0046867c  01 10 8f e0                                      add r1, pc, r1
00468680  00 50 8d e5                                      str r5, [sp]
00468684  03 30 94 e7                                      ldr r3, [r4, r3]
00468688  9d b4 fa eb                                      bl #0x315904
0046868c  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
00468690  c8 11 9f e5                                      ldr r1, [pc, #0x1c8]
00468694  08 00 95 e5                                      ldr r0, [r5, #8]
00468698  03 20 94 e7                                      ldr r2, [r4, r3]
0046869c  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
004686a0  01 10 8f e0                                      add r1, pc, r1
004686a4  00 50 8d e5                                      str r5, [sp]
004686a8  03 30 94 e7                                      ldr r3, [r4, r3]
004686ac  94 b4 fa eb                                      bl #0x315904
004686b0  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
004686b4  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
004686b8  08 00 95 e5                                      ldr r0, [r5, #8]
004686bc  03 20 94 e7                                      ldr r2, [r4, r3]
004686c0  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
004686c4  01 10 8f e0                                      add r1, pc, r1
004686c8  00 50 8d e5                                      str r5, [sp]
004686cc  03 30 94 e7                                      ldr r3, [r4, r3]
004686d0  8b b4 fa eb                                      bl #0x315904
004686d4  98 31 9f e5                                      ldr r3, [pc, #0x198]
004686d8  98 11 9f e5                                      ldr r1, [pc, #0x198]
004686dc  08 00 95 e5                                      ldr r0, [r5, #8]
004686e0  03 20 94 e7                                      ldr r2, [r4, r3]
004686e4  90 31 9f e5                                      ldr r3, [pc, #0x190]
004686e8  01 10 8f e0                                      add r1, pc, r1
004686ec  00 50 8d e5                                      str r5, [sp]
004686f0  03 30 94 e7                                      ldr r3, [r4, r3]
004686f4  82 b4 fa eb                                      bl #0x315904
004686f8  80 31 9f e5                                      ldr r3, [pc, #0x180]
004686fc  80 11 9f e5                                      ldr r1, [pc, #0x180]
00468700  08 00 95 e5                                      ldr r0, [r5, #8]
00468704  03 20 94 e7                                      ldr r2, [r4, r3]
00468708  78 31 9f e5                                      ldr r3, [pc, #0x178]
0046870c  01 10 8f e0                                      add r1, pc, r1
00468710  00 50 8d e5                                      str r5, [sp]
00468714  03 30 94 e7                                      ldr r3, [r4, r3]
00468718  79 b4 fa eb                                      bl #0x315904
0046871c  68 31 9f e5                                      ldr r3, [pc, #0x168]
00468720  68 11 9f e5                                      ldr r1, [pc, #0x168]
00468724  08 00 95 e5                                      ldr r0, [r5, #8]
00468728  03 20 94 e7                                      ldr r2, [r4, r3]
0046872c  60 31 9f e5                                      ldr r3, [pc, #0x160]
00468730  01 10 8f e0                                      add r1, pc, r1
00468734  00 50 8d e5                                      str r5, [sp]
00468738  03 30 94 e7                                      ldr r3, [r4, r3]
0046873c  70 b4 fa eb                                      bl #0x315904
00468740  50 31 9f e5                                      ldr r3, [pc, #0x150]
00468744  50 11 9f e5                                      ldr r1, [pc, #0x150]
00468748  08 00 95 e5                                      ldr r0, [r5, #8]
0046874c  03 20 94 e7                                      ldr r2, [r4, r3]
00468750  48 31 9f e5                                      ldr r3, [pc, #0x148]
00468754  01 10 8f e0                                      add r1, pc, r1
00468758  00 50 8d e5                                      str r5, [sp]
0046875c  03 30 94 e7                                      ldr r3, [r4, r3]
00468760  67 b4 fa eb                                      bl #0x315904
00468764  bb ff ff ea                                      b #0x468658
00468768  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
0046876c  30 11 9f e5                                      ldr r1, [pc, #0x130]
00468770  08 00 90 e5                                      ldr r0, [r0, #8]
00468774  03 20 94 e7                                      ldr r2, [r4, r3]
00468778  01 10 8f e0                                      add r1, pc, r1
0046877c  06 30 a0 e1                                      mov r3, r6
00468780  00 50 8d e5                                      str r5, [sp]
00468784  5e b4 fa eb                                      bl #0x315904
00468788  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0046878c  14 11 9f e5                                      ldr r1, [pc, #0x114]
00468790  08 00 95 e5                                      ldr r0, [r5, #8]
00468794  03 20 94 e7                                      ldr r2, [r4, r3]
00468798  01 10 8f e0                                      add r1, pc, r1
0046879c  06 30 a0 e1                                      mov r3, r6
004687a0  00 50 8d e5                                      str r5, [sp]
004687a4  56 b4 fa eb                                      bl #0x315904
004687a8  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
004687ac  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
004687b0  08 00 95 e5                                      ldr r0, [r5, #8]
004687b4  03 20 94 e7                                      ldr r2, [r4, r3]
004687b8  01 10 8f e0                                      add r1, pc, r1
004687bc  06 30 a0 e1                                      mov r3, r6
004687c0  00 50 8d e5                                      str r5, [sp]
004687c4  4e b4 fa eb                                      bl #0x315904
004687c8  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
004687cc  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
004687d0  08 00 95 e5                                      ldr r0, [r5, #8]
004687d4  03 20 94 e7                                      ldr r2, [r4, r3]
004687d8  01 10 8f e0                                      add r1, pc, r1
004687dc  06 30 a0 e1                                      mov r3, r6
004687e0  00 50 8d e5                                      str r5, [sp]
004687e4  46 b4 fa eb                                      bl #0x315904
004687e8  90 30 9f e5                                      ldr r3, [pc, #0x90]
004687ec  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
004687f0  08 00 95 e5                                      ldr r0, [r5, #8]
004687f4  03 20 94 e7                                      ldr r2, [r4, r3]
004687f8  01 10 8f e0                                      add r1, pc, r1
004687fc  06 30 a0 e1                                      mov r3, r6
00468800  00 50 8d e5                                      str r5, [sp]
00468804  3e b4 fa eb                                      bl #0x315904
00468808  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0046880c  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
00468810  08 00 95 e5                                      ldr r0, [r5, #8]
00468814  03 20 94 e7                                      ldr r2, [r4, r3]
00468818  01 10 8f e0                                      add r1, pc, r1
0046881c  06 30 a0 e1                                      mov r3, r6
00468820  00 50 8d e5                                      str r5, [sp]
00468824  36 b4 fa eb                                      bl #0x315904
00468828  68 30 9f e5                                      ldr r3, [pc, #0x68]
0046882c  88 10 9f e5                                      ldr r1, [pc, #0x88]
00468830  08 00 95 e5                                      ldr r0, [r5, #8]
00468834  03 20 94 e7                                      ldr r2, [r4, r3]
00468838  01 10 8f e0                                      add r1, pc, r1
0046883c  06 30 a0 e1                                      mov r3, r6
00468840  00 50 8d e5                                      str r5, [sp]
00468844  2e b4 fa eb                                      bl #0x315904
00468848  82 ff ff ea                                      b #0x468658
; mapping-symbol data/literal pool
0046884c  4c c4 52 00 28 0d 00 00 84 4b 46 00 b8 1a 00 00  .byte 0x4c, 0xc4, 0x52, 0x00, 0x28, 0x0d, 0x00, 0x00, 0x84, 0x4b, 0x46, 0x00, 0xb8, 0x1a, 0x00, 0x00
0046885c  24 36 00 00 68 4b 46 00 78 37 00 00 4c 3d 00 00  .byte 0x24, 0x36, 0x00, 0x00, 0x68, 0x4b, 0x46, 0x00, 0x78, 0x37, 0x00, 0x00, 0x4c, 0x3d, 0x00, 0x00
0046886c  4c 4b 46 00 b0 26 00 00 30 40 00 00 30 4b 46 00  .byte 0x4c, 0x4b, 0x46, 0x00, 0xb0, 0x26, 0x00, 0x00, 0x30, 0x40, 0x00, 0x00, 0x30, 0x4b, 0x46, 0x00
0046887c  6c 26 00 00 00 3f 00 00 14 4b 46 00 7c 46 00 00  .byte 0x6c, 0x26, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x00, 0x14, 0x4b, 0x46, 0x00, 0x7c, 0x46, 0x00, 0x00
0046888c  3c 13 00 00 00 4b 46 00 24 07 00 00 8c 0e 00 00  .byte 0x3c, 0x13, 0x00, 0x00, 0x00, 0x4b, 0x46, 0x00, 0x24, 0x07, 0x00, 0x00, 0x8c, 0x0e, 0x00, 0x00
0046889c  04 4b 46 00 60 1c 00 00 88 4a 46 00 70 4a 46 00  .byte 0x04, 0x4b, 0x46, 0x00, 0x60, 0x1c, 0x00, 0x00, 0x88, 0x4a, 0x46, 0x00, 0x70, 0x4a, 0x46, 0x00
004688ac  58 4a 46 00 40 4a 46 00 28 4a 46 00 18 4a 46 00  .byte 0x58, 0x4a, 0x46, 0x00, 0x40, 0x4a, 0x46, 0x00, 0x28, 0x4a, 0x46, 0x00, 0x18, 0x4a, 0x46, 0x00
004688bc  20 4a 46 00                                      .byte 0x20, 0x4a, 0x46, 0x00

; FUNCTION 0x004688c0, declared_size=8, range_size=8, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame16__SavePlayerNameEP11IStreamBasePv
; demangled: PlayerSavegame::__SavePlayerName(IStreamBase*, void*)
; decoder-mode: arm
004688c0  18 10 81 e2                                      add r1, r1, #0x18
004688c4  67 e3 ff ea                                      b #0x461668

; FUNCTION 0x004688c8, declared_size=48, range_size=48, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame21__SaveLevelEntryPointEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveLevelEntryPoint(IStreamBase*, void*)
; decoder-mode: arm
004688c8  70 40 2d e9                                      push {r4, r5, r6, lr}
004688cc  01 40 a0 e1                                      mov r4, r1
004688d0  00 50 a0 e1                                      mov r5, r0
004688d4  40 10 81 e2                                      add r1, r1, #0x40
004688d8  ca 8b fc eb                                      bl #0x38b808
004688dc  05 00 a0 e1                                      mov r0, r5
004688e0  44 10 84 e2                                      add r1, r4, #0x44
004688e4  c7 8b fc eb                                      bl #0x38b808
004688e8  05 00 a0 e1                                      mov r0, r5
004688ec  48 10 84 e2                                      add r1, r4, #0x48
004688f0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004688f4  c3 8b fc ea                                      b #0x38b808

; FUNCTION 0x004688f8, declared_size=56, range_size=56, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame21__SaveDifficultyLevelEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveDifficultyLevel(IStreamBase*, void*)
; decoder-mode: arm
004688f8  28 30 9f e5                                      ldr r3, [pc, #0x28]
004688fc  28 20 9f e5                                      ldr r2, [pc, #0x28]
00468900  70 40 2d e9                                      push {r4, r5, r6, lr}
00468904  03 30 8f e0                                      add r3, pc, r3
00468908  01 40 a0 e1                                      mov r4, r1
0046890c  02 10 93 e7                                      ldr r1, [r3, r2]
00468910  00 50 a0 e1                                      mov r5, r0
00468914  bb 8b fc eb                                      bl #0x38b808
00468918  05 00 a0 e1                                      mov r0, r5
0046891c  3c 10 84 e2                                      add r1, r4, #0x3c
00468920  70 40 bd e8                                      pop {r4, r5, r6, lr}
00468924  b7 8b fc ea                                      b #0x38b808
; mapping-symbol data/literal pool
00468928  8c c1 52 00 9c 1a 00 00                          .byte 0x8c, 0xc1, 0x52, 0x00, 0x9c, 0x1a, 0x00, 0x00

; FUNCTION 0x00468930, declared_size=8, range_size=8, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17__SavePlayerLevelEP11IStreamBasePv
; demangled: PlayerSavegame::__SavePlayerLevel(IStreamBase*, void*)
; decoder-mode: arm
00468930  30 10 81 e2                                      add r1, r1, #0x30
00468934  b3 8b fc ea                                      b #0x38b808

; FUNCTION 0x00468938, declared_size=48, range_size=48, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame21__LoadLevelEntryPointEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadLevelEntryPoint(IStreamBase*, void*)
; decoder-mode: arm
00468938  70 40 2d e9                                      push {r4, r5, r6, lr}
0046893c  01 40 a0 e1                                      mov r4, r1
00468940  00 50 a0 e1                                      mov r5, r0
00468944  40 10 81 e2                                      add r1, r1, #0x40
00468948  82 8b fc eb                                      bl #0x38b758
0046894c  05 00 a0 e1                                      mov r0, r5
00468950  44 10 84 e2                                      add r1, r4, #0x44
00468954  7f 8b fc eb                                      bl #0x38b758
00468958  05 00 a0 e1                                      mov r0, r5
0046895c  48 10 84 e2                                      add r1, r4, #0x48
00468960  70 40 bd e8                                      pop {r4, r5, r6, lr}
00468964  7b 8b fc ea                                      b #0x38b758

; FUNCTION 0x00468968, declared_size=56, range_size=56, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame21__LoadDifficultyLevelEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadDifficultyLevel(IStreamBase*, void*)
; decoder-mode: arm
00468968  28 30 9f e5                                      ldr r3, [pc, #0x28]
0046896c  28 20 9f e5                                      ldr r2, [pc, #0x28]
00468970  70 40 2d e9                                      push {r4, r5, r6, lr}
00468974  03 30 8f e0                                      add r3, pc, r3
00468978  01 40 a0 e1                                      mov r4, r1
0046897c  02 10 93 e7                                      ldr r1, [r3, r2]
00468980  00 50 a0 e1                                      mov r5, r0
00468984  73 8b fc eb                                      bl #0x38b758
00468988  05 00 a0 e1                                      mov r0, r5
0046898c  3c 10 84 e2                                      add r1, r4, #0x3c
00468990  70 40 bd e8                                      pop {r4, r5, r6, lr}
00468994  6f 8b fc ea                                      b #0x38b758
; mapping-symbol data/literal pool
00468998  1c c1 52 00 9c 1a 00 00                          .byte 0x1c, 0xc1, 0x52, 0x00, 0x9c, 0x1a, 0x00, 0x00

; FUNCTION 0x004689a0, declared_size=8, range_size=8, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17__LoadPlayerLevelEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadPlayerLevel(IStreamBase*, void*)
; decoder-mode: arm
004689a0  30 10 81 e2                                      add r1, r1, #0x30
004689a4  6b 8b fc ea                                      b #0x38b758

; FUNCTION 0x004689a8, declared_size=48, range_size=48, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame19__SaveUseSpawnPointEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveUseSpawnPoint(IStreamBase*, void*)
; decoder-mode: arm
004689a8  70 40 2d e9                                      push {r4, r5, r6, lr}
004689ac  01 40 a0 e1                                      mov r4, r1
004689b0  00 50 a0 e1                                      mov r5, r0
004689b4  4c 10 81 e2                                      add r1, r1, #0x4c
004689b8  de 55 fb eb                                      bl #0x33e138
004689bc  05 00 a0 e1                                      mov r0, r5
004689c0  4d 10 84 e2                                      add r1, r4, #0x4d
004689c4  db 55 fb eb                                      bl #0x33e138
004689c8  05 00 a0 e1                                      mov r0, r5
004689cc  4e 10 84 e2                                      add r1, r4, #0x4e
004689d0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004689d4  d7 55 fb ea                                      b #0x33e138

; FUNCTION 0x004689d8, declared_size=280, range_size=280, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame16__SavePropertiesEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveProperties(IStreamBase*, void*)
; decoder-mode: arm
004689d8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004689dc  10 70 91 e5                                      ldr r7, [r1, #0x10]
004689e0  ec 50 9f e5                                      ldr r5, [pc, #0xec]
004689e4  14 d0 4d e2                                      sub sp, sp, #0x14
004689e8  00 00 57 e3                                      cmp r7, #0
004689ec  01 60 a0 e1                                      mov r6, r1
004689f0  00 40 a0 e1                                      mov r4, r0
004689f4  05 50 8f e0                                      add r5, pc, r5
004689f8  1d 00 00 0a                                      beq #0x468a74
004689fc  e0 30 a0 e3                                      mov r3, #0xe0
00468a00  10 10 8d e2                                      add r1, sp, #0x10
00468a04  04 30 21 e5                                      str r3, [r1, #-4]!
00468a08  04 00 a0 e1                                      mov r0, r4
00468a0c  7d 8b fc eb                                      bl #0x38b808
00468a10  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00468a14  00 00 53 e3                                      cmp r3, #0
00468a18  10 00 00 da                                      ble #0x468a60
00468a1c  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00468a20  8e 7e 87 e2                                      add r7, r7, #0x8e0
00468a24  0c 70 87 e2                                      add r7, r7, #0xc
00468a28  03 a0 95 e7                                      ldr sl, [r5, r3]
00468a2c  08 80 8d e2                                      add r8, sp, #8
00468a30  00 50 a0 e3                                      mov r5, #0
00468a34  05 31 9a e7                                      ldr r3, [sl, r5, lsl #2]
00468a38  04 00 a0 e1                                      mov r0, r4
00468a3c  08 10 a0 e1                                      mov r1, r8
00468a40  03 30 87 e0                                      add r3, r7, r3
00468a44  04 30 93 e5                                      ldr r3, [r3, #4]
00468a48  01 50 85 e2                                      add r5, r5, #1
00468a4c  08 30 8d e5                                      str r3, [sp, #8]
00468a50  6c 8b fc eb                                      bl #0x38b808
00468a54  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00468a58  05 00 53 e1                                      cmp r3, r5
00468a5c  f4 ff ff ca                                      bgt #0x468a34
00468a60  04 00 a0 e1                                      mov r0, r4
00468a64  65 1f 86 e2                                      add r1, r6, #0x194
00468a68  b2 55 fb eb                                      bl #0x33e138
00468a6c  14 d0 8d e2                                      add sp, sp, #0x14
00468a70  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00468a74  60 30 9f e5                                      ldr r3, [pc, #0x60]
00468a78  03 30 95 e7                                      ldr r3, [r5, r3]
00468a7c  00 30 93 e5                                      ldr r3, [r3]
00468a80  02 00 53 e3                                      cmp r3, #2
00468a84  00 70 87 05                                      streq r7, [r7]
00468a88  f7 ff ff 0a                                      beq #0x468a6c
00468a8c  01 00 53 e3                                      cmp r3, #1
00468a90  f5 ff ff 1a                                      bne #0x468a6c
00468a94  44 00 9f e5                                      ldr r0, [pc, #0x44]
00468a98  44 10 9f e5                                      ldr r1, [pc, #0x44]
00468a9c  44 20 9f e5                                      ldr r2, [pc, #0x44]
00468aa0  00 00 95 e7                                      ldr r0, [r5, r0]
00468aa4  40 30 9f e5                                      ldr r3, [pc, #0x40]
00468aa8  d1 cf a0 e3                                      mov ip, #0x344
00468aac  01 10 8f e0                                      add r1, pc, r1
00468ab0  a8 00 80 e2                                      add r0, r0, #0xa8
00468ab4  02 20 8f e0                                      add r2, pc, r2
00468ab8  03 30 8f e0                                      add r3, pc, r3
00468abc  00 c0 8d e5                                      str ip, [sp]
00468ac0  4f 95 fa eb                                      bl #0x30e004
00468ac4  10 70 96 e5                                      ldr r7, [r6, #0x10]
00468ac8  00 00 57 e3                                      cmp r7, #0
00468acc  ca ff ff 1a                                      bne #0x4689fc
00468ad0  e5 ff ff ea                                      b #0x468a6c
; mapping-symbol data/literal pool
00468ad4  9c c0 52 00 a8 22 00 00 c0 39 00 00 c0 19 00 00  .byte 0x9c, 0xc0, 0x52, 0x00, 0xa8, 0x22, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00468ae4  2c 59 45 00 e4 49 46 00 f0 49 46 00              .byte 0x2c, 0x59, 0x45, 0x00, 0xe4, 0x49, 0x46, 0x00, 0xf0, 0x49, 0x46, 0x00

; FUNCTION 0x00468af0, declared_size=48, range_size=48, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame19__LoadUseSpawnPointEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadUseSpawnPoint(IStreamBase*, void*)
; decoder-mode: arm
00468af0  70 40 2d e9                                      push {r4, r5, r6, lr}
00468af4  01 40 a0 e1                                      mov r4, r1
00468af8  00 50 a0 e1                                      mov r5, r0
00468afc  4c 10 81 e2                                      add r1, r1, #0x4c
00468b00  4e 55 fb eb                                      bl #0x33e040
00468b04  05 00 a0 e1                                      mov r0, r5
00468b08  4d 10 84 e2                                      add r1, r4, #0x4d
00468b0c  4b 55 fb eb                                      bl #0x33e040
00468b10  05 00 a0 e1                                      mov r0, r5
00468b14  4e 10 84 e2                                      add r1, r4, #0x4e
00468b18  70 40 bd e8                                      pop {r4, r5, r6, lr}
00468b1c  47 55 fb ea                                      b #0x33e040

; FUNCTION 0x00468b20, declared_size=88, range_size=88, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame15__SaveLevelNameEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveLevelName(IStreamBase*, void*)
; decoder-mode: arm
00468b20  70 40 2d e9                                      push {r4, r5, r6, lr}
00468b24  01 50 a0 e1                                      mov r5, r1
00468b28  38 10 81 e2                                      add r1, r1, #0x38
00468b2c  00 60 a0 e1                                      mov r6, r0
00468b30  0e e3 ff eb                                      bl #0x461770
00468b34  00 40 a0 e3                                      mov r4, #0
00468b38  14 10 84 e2                                      add r1, r4, #0x14
00468b3c  01 11 85 e0                                      add r1, r5, r1, lsl #2
00468b40  06 00 a0 e1                                      mov r0, r6
00468b44  2f 8b fc eb                                      bl #0x38b808
00468b48  04 11 85 e0                                      add r1, r5, r4, lsl #2
00468b4c  5c 10 81 e2                                      add r1, r1, #0x5c
00468b50  06 00 a0 e1                                      mov r0, r6
00468b54  2b 8b fc eb                                      bl #0x38b808
00468b58  04 11 85 e0                                      add r1, r5, r4, lsl #2
00468b5c  fc 10 81 e2                                      add r1, r1, #0xfc
00468b60  01 40 84 e2                                      add r4, r4, #1
00468b64  06 00 a0 e1                                      mov r0, r6
00468b68  26 8b fc eb                                      bl #0x38b808
00468b6c  03 00 54 e3                                      cmp r4, #3
00468b70  f0 ff ff 1a                                      bne #0x468b38
00468b74  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00468b78, declared_size=120, range_size=120, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame15__LoadLevelNameEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadLevelName(IStreamBase*, void*)
; decoder-mode: arm
00468b78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00468b7c  01 70 a0 e1                                      mov r7, r1
00468b80  08 d0 4d e2                                      sub sp, sp, #8
00468b84  38 10 81 e2                                      add r1, r1, #0x38
00468b88  00 60 a0 e1                                      mov r6, r0
00468b8c  ed ab fa eb                                      bl #0x313b48
00468b90  07 50 a0 e1                                      mov r5, r7
00468b94  00 40 a0 e3                                      mov r4, #0
00468b98  04 80 8d e2                                      add r8, sp, #4
00468b9c  14 10 84 e2                                      add r1, r4, #0x14
00468ba0  01 11 87 e0                                      add r1, r7, r1, lsl #2
00468ba4  06 00 a0 e1                                      mov r0, r6
00468ba8  ea 8a fc eb                                      bl #0x38b758
00468bac  04 11 87 e0                                      add r1, r7, r4, lsl #2
00468bb0  5c 10 81 e2                                      add r1, r1, #0x5c
00468bb4  06 00 a0 e1                                      mov r0, r6
00468bb8  e6 8a fc eb                                      bl #0x38b758
00468bbc  06 00 a0 e1                                      mov r0, r6
00468bc0  08 10 a0 e1                                      mov r1, r8
00468bc4  e3 8a fc eb                                      bl #0x38b758
00468bc8  04 30 9d e5                                      ldr r3, [sp, #4]
00468bcc  01 40 84 e2                                      add r4, r4, #1
00468bd0  03 00 54 e3                                      cmp r4, #3
00468bd4  fc 30 85 e5                                      str r3, [r5, #0xfc]
00468bd8  04 30 9d e5                                      ldr r3, [sp, #4]
00468bdc  5c 31 85 e5                                      str r3, [r5, #0x15c]
00468be0  04 50 85 e2                                      add r5, r5, #4
00468be4  ec ff ff 1a                                      bne #0x468b9c
00468be8  08 d0 8d e2                                      add sp, sp, #8
00468bec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00468bf0, declared_size=228, range_size=228, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame18__SaveCurrentFaeryEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveCurrentFaery(IStreamBase*, void*)
; decoder-mode: arm
00468bf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00468bf4  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00468bf8  14 d0 4d e2                                      sub sp, sp, #0x14
00468bfc  bc 80 9f e5                                      ldr r8, [pc, #0xbc]
00468c00  03 30 8f e0                                      add r3, pc, r3
00468c04  08 30 8d e5                                      str r3, [sp, #8]
00468c08  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00468c0c  b4 b0 9f e5                                      ldr fp, [pc, #0xb4]
00468c10  b4 a0 9f e5                                      ldr sl, [pc, #0xb4]
00468c14  03 30 8f e0                                      add r3, pc, r3
00468c18  b0 90 9f e5                                      ldr sb, [pc, #0xb0]
00468c1c  01 60 a0 e1                                      mov r6, r1
00468c20  00 70 a0 e1                                      mov r7, r0
00468c24  0b b0 8f e0                                      add fp, pc, fp
00468c28  0c 30 8d e5                                      str r3, [sp, #0xc]
00468c2c  01 50 a0 e1                                      mov r5, r1
00468c30  00 40 a0 e3                                      mov r4, #0
00468c34  08 80 8f e0                                      add r8, pc, r8
00468c38  94 30 95 e5                                      ldr r3, [r5, #0x94]
00468c3c  00 00 53 e3                                      cmp r3, #0
00468c40  09 00 00 0a                                      beq #0x468c6c
00468c44  04 11 86 e0                                      add r1, r6, r4, lsl #2
00468c48  ac 10 81 e2                                      add r1, r1, #0xac
00468c4c  01 40 84 e2                                      add r4, r4, #1
00468c50  07 00 a0 e1                                      mov r0, r7
00468c54  eb 8a fc eb                                      bl #0x38b808
00468c58  03 00 54 e3                                      cmp r4, #3
00468c5c  04 50 85 e2                                      add r5, r5, #4
00468c60  f4 ff ff 1a                                      bne #0x468c38
00468c64  14 d0 8d e2                                      add sp, sp, #0x14
00468c68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00468c6c  0a 20 98 e7                                      ldr r2, [r8, sl]
00468c70  00 20 92 e5                                      ldr r2, [r2]
00468c74  02 00 52 e3                                      cmp r2, #2
00468c78  0d 00 00 0a                                      beq #0x468cb4
00468c7c  01 00 52 e3                                      cmp r2, #1
00468c80  f7 ff ff 1a                                      bne #0x468c64
00468c84  09 00 98 e7                                      ldr r0, [r8, sb]
00468c88  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00468c8c  95 cf a0 e3                                      mov ip, #0x254
00468c90  0b 10 a0 e1                                      mov r1, fp
00468c94  08 20 9d e5                                      ldr r2, [sp, #8]
00468c98  a8 00 80 e2                                      add r0, r0, #0xa8
00468c9c  00 c0 8d e5                                      str ip, [sp]
00468ca0  d7 94 fa eb                                      bl #0x30e004
00468ca4  94 30 95 e5                                      ldr r3, [r5, #0x94]
00468ca8  00 00 53 e3                                      cmp r3, #0
00468cac  e4 ff ff 1a                                      bne #0x468c44
00468cb0  eb ff ff ea                                      b #0x468c64
00468cb4  00 30 83 e5                                      str r3, [r3]
00468cb8  e9 ff ff ea                                      b #0x468c64
; mapping-symbol data/literal pool
00468cbc  00 49 46 00 5c be 52 00 94 48 46 00 b4 57 45 00  .byte 0x00, 0x49, 0x46, 0x00, 0x5c, 0xbe, 0x52, 0x00, 0x94, 0x48, 0x46, 0x00, 0xb4, 0x57, 0x45, 0x00
00468ccc  c0 39 00 00 c0 19 00 00                          .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00

; FUNCTION 0x00468cd4, declared_size=228, range_size=228, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame18__LoadCurrentFaeryEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadCurrentFaery(IStreamBase*, void*)
; decoder-mode: arm
00468cd4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00468cd8  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00468cdc  14 d0 4d e2                                      sub sp, sp, #0x14
00468ce0  bc 80 9f e5                                      ldr r8, [pc, #0xbc]
00468ce4  03 30 8f e0                                      add r3, pc, r3
00468ce8  08 30 8d e5                                      str r3, [sp, #8]
00468cec  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00468cf0  b4 b0 9f e5                                      ldr fp, [pc, #0xb4]
00468cf4  b4 a0 9f e5                                      ldr sl, [pc, #0xb4]
00468cf8  03 30 8f e0                                      add r3, pc, r3
00468cfc  b0 90 9f e5                                      ldr sb, [pc, #0xb0]
00468d00  01 60 a0 e1                                      mov r6, r1
00468d04  00 70 a0 e1                                      mov r7, r0
00468d08  0b b0 8f e0                                      add fp, pc, fp
00468d0c  0c 30 8d e5                                      str r3, [sp, #0xc]
00468d10  01 50 a0 e1                                      mov r5, r1
00468d14  00 40 a0 e3                                      mov r4, #0
00468d18  08 80 8f e0                                      add r8, pc, r8
00468d1c  94 30 95 e5                                      ldr r3, [r5, #0x94]
00468d20  00 00 53 e3                                      cmp r3, #0
00468d24  09 00 00 0a                                      beq #0x468d50
00468d28  04 11 86 e0                                      add r1, r6, r4, lsl #2
00468d2c  ac 10 81 e2                                      add r1, r1, #0xac
00468d30  01 40 84 e2                                      add r4, r4, #1
00468d34  07 00 a0 e1                                      mov r0, r7
00468d38  86 8a fc eb                                      bl #0x38b758
00468d3c  03 00 54 e3                                      cmp r4, #3
00468d40  04 50 85 e2                                      add r5, r5, #4
00468d44  f4 ff ff 1a                                      bne #0x468d1c
00468d48  14 d0 8d e2                                      add sp, sp, #0x14
00468d4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00468d50  0a 20 98 e7                                      ldr r2, [r8, sl]
00468d54  00 20 92 e5                                      ldr r2, [r2]
00468d58  02 00 52 e3                                      cmp r2, #2
00468d5c  0d 00 00 0a                                      beq #0x468d98
00468d60  01 00 52 e3                                      cmp r2, #1
00468d64  f7 ff ff 1a                                      bne #0x468d48
00468d68  09 00 98 e7                                      ldr r0, [r8, sb]
00468d6c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00468d70  45 c2 00 e3                                      movw ip, #0x245
00468d74  0b 10 a0 e1                                      mov r1, fp
00468d78  08 20 9d e5                                      ldr r2, [sp, #8]
00468d7c  a8 00 80 e2                                      add r0, r0, #0xa8
00468d80  00 c0 8d e5                                      str ip, [sp]
00468d84  9e 94 fa eb                                      bl #0x30e004
00468d88  94 30 95 e5                                      ldr r3, [r5, #0x94]
00468d8c  00 00 53 e3                                      cmp r3, #0
00468d90  e4 ff ff 1a                                      bne #0x468d28
00468d94  eb ff ff ea                                      b #0x468d48
00468d98  00 30 83 e5                                      str r3, [r3]
00468d9c  e9 ff ff ea                                      b #0x468d48
; mapping-symbol data/literal pool
00468da0  1c 48 46 00 78 bd 52 00 b0 47 46 00 d0 56 45 00  .byte 0x1c, 0x48, 0x46, 0x00, 0x78, 0xbd, 0x52, 0x00, 0xb0, 0x47, 0x46, 0x00, 0xd0, 0x56, 0x45, 0x00
00468db0  c0 39 00 00 c0 19 00 00                          .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00

; FUNCTION 0x00468f18, declared_size=344, range_size=344, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame13__SaveFaeriesEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveFaeries(IStreamBase*, void*)
; decoder-mode: arm
00468f18  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00468f1c  34 31 9f e5                                      ldr r3, [pc, #0x134]
00468f20  2c d0 4d e2                                      sub sp, sp, #0x2c
00468f24  30 a1 9f e5                                      ldr sl, [pc, #0x130]
00468f28  0c 30 8d e5                                      str r3, [sp, #0xc]
00468f2c  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
00468f30  01 70 a0 e1                                      mov r7, r1
00468f34  00 50 a0 e1                                      mov r5, r0
00468f38  10 30 8d e5                                      str r3, [sp, #0x10]
00468f3c  20 31 9f e5                                      ldr r3, [pc, #0x120]
00468f40  01 40 a0 e1                                      mov r4, r1
00468f44  00 60 a0 e3                                      mov r6, #0
00468f48  03 30 8f e0                                      add r3, pc, r3
00468f4c  14 30 8d e5                                      str r3, [sp, #0x14]
00468f50  10 31 9f e5                                      ldr r3, [pc, #0x110]
00468f54  24 80 8d e2                                      add r8, sp, #0x24
00468f58  0a a0 8f e0                                      add sl, pc, sl
00468f5c  03 30 8f e0                                      add r3, pc, r3
00468f60  18 30 8d e5                                      str r3, [sp, #0x18]
00468f64  00 31 9f e5                                      ldr r3, [pc, #0x100]
00468f68  03 30 8f e0                                      add r3, pc, r3
00468f6c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00468f70  94 30 94 e5                                      ldr r3, [r4, #0x94]
00468f74  00 00 53 e3                                      cmp r3, #0
00468f78  20 00 00 0a                                      beq #0x469000
00468f7c  06 11 87 e0                                      add r1, r7, r6, lsl #2
00468f80  ac 10 81 e2                                      add r1, r1, #0xac
00468f84  05 00 a0 e1                                      mov r0, r5
00468f88  1e 8a fc eb                                      bl #0x38b808
00468f8c  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00468f90  05 00 a0 e1                                      mov r0, r5
00468f94  08 10 a0 e1                                      mov r1, r8
00468f98  24 30 8d e5                                      str r3, [sp, #0x24]
00468f9c  f3 e1 ff eb                                      bl #0x461770
00468fa0  24 30 9d e5                                      ldr r3, [sp, #0x24]
00468fa4  00 00 53 e3                                      cmp r3, #0
00468fa8  0e 00 00 0a                                      beq #0x468fe8
00468fac  00 90 a0 e3                                      mov sb, #0
00468fb0  94 10 94 e5                                      ldr r1, [r4, #0x94]
00468fb4  09 b1 a0 e1                                      lsl fp, sb, #2
00468fb8  05 00 a0 e1                                      mov r0, r5
00468fbc  0b 10 81 e0                                      add r1, r1, fp
00468fc0  02 10 81 e2                                      add r1, r1, #2
00468fc4  7b ff ff eb                                      bl #0x468db8
00468fc8  94 10 94 e5                                      ldr r1, [r4, #0x94]
00468fcc  05 00 a0 e1                                      mov r0, r5
00468fd0  01 90 89 e2                                      add sb, sb, #1
00468fd4  0b 10 81 e0                                      add r1, r1, fp
00468fd8  a2 ff ff eb                                      bl #0x468e68
00468fdc  24 30 9d e5                                      ldr r3, [sp, #0x24]
00468fe0  09 00 53 e1                                      cmp r3, sb
00468fe4  f1 ff ff 8a                                      bhi #0x468fb0
00468fe8  01 60 86 e2                                      add r6, r6, #1
00468fec  03 00 56 e3                                      cmp r6, #3
00468ff0  04 40 84 e2                                      add r4, r4, #4
00468ff4  dd ff ff 1a                                      bne #0x468f70
00468ff8  2c d0 8d e2                                      add sp, sp, #0x2c
00468ffc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00469000  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00469004  01 20 9a e7                                      ldr r2, [sl, r1]
00469008  00 20 92 e5                                      ldr r2, [r2]
0046900c  02 00 52 e3                                      cmp r2, #2
00469010  0e 00 00 0a                                      beq #0x469050
00469014  01 00 52 e3                                      cmp r2, #1
00469018  f6 ff ff 1a                                      bne #0x468ff8
0046901c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00469020  8b cf a0 e3                                      mov ip, #0x22c
00469024  14 10 9d e5                                      ldr r1, [sp, #0x14]
00469028  03 00 9a e7                                      ldr r0, [sl, r3]
0046902c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00469030  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00469034  a8 00 80 e2                                      add r0, r0, #0xa8
00469038  00 c0 8d e5                                      str ip, [sp]
0046903c  f0 93 fa eb                                      bl #0x30e004
00469040  94 30 94 e5                                      ldr r3, [r4, #0x94]
00469044  00 00 53 e3                                      cmp r3, #0
00469048  cb ff ff 1a                                      bne #0x468f7c
0046904c  e9 ff ff ea                                      b #0x468ff8
00469050  00 30 83 e5                                      str r3, [r3]
00469054  e7 ff ff ea                                      b #0x468ff8
; mapping-symbol data/literal pool
00469058  c0 39 00 00 38 bb 52 00 c0 19 00 00 90 54 45 00  .byte 0xc0, 0x39, 0x00, 0x00, 0x38, 0xbb, 0x52, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x90, 0x54, 0x45, 0x00
00469068  a4 45 46 00 40 45 46 00                          .byte 0xa4, 0x45, 0x46, 0x00, 0x40, 0x45, 0x46, 0x00

; FUNCTION 0x004691d0, declared_size=348, range_size=348, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame13__LoadFaeriesEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadFaeries(IStreamBase*, void*)
; decoder-mode: arm
004691d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004691d4  38 31 9f e5                                      ldr r3, [pc, #0x138]
004691d8  2c d0 4d e2                                      sub sp, sp, #0x2c
004691dc  34 a1 9f e5                                      ldr sl, [pc, #0x134]
004691e0  0c 30 8d e5                                      str r3, [sp, #0xc]
004691e4  30 31 9f e5                                      ldr r3, [pc, #0x130]
004691e8  01 70 a0 e1                                      mov r7, r1
004691ec  00 50 a0 e1                                      mov r5, r0
004691f0  10 30 8d e5                                      str r3, [sp, #0x10]
004691f4  24 31 9f e5                                      ldr r3, [pc, #0x124]
004691f8  01 40 a0 e1                                      mov r4, r1
004691fc  00 60 a0 e3                                      mov r6, #0
00469200  03 30 8f e0                                      add r3, pc, r3
00469204  14 30 8d e5                                      str r3, [sp, #0x14]
00469208  14 31 9f e5                                      ldr r3, [pc, #0x114]
0046920c  24 80 8d e2                                      add r8, sp, #0x24
00469210  0a a0 8f e0                                      add sl, pc, sl
00469214  03 30 8f e0                                      add r3, pc, r3
00469218  18 30 8d e5                                      str r3, [sp, #0x18]
0046921c  04 31 9f e5                                      ldr r3, [pc, #0x104]
00469220  03 30 8f e0                                      add r3, pc, r3
00469224  1c 30 8d e5                                      str r3, [sp, #0x1c]
00469228  94 30 94 e5                                      ldr r3, [r4, #0x94]
0046922c  00 00 53 e3                                      cmp r3, #0
00469230  21 00 00 0a                                      beq #0x4692bc
00469234  06 11 87 e0                                      add r1, r7, r6, lsl #2
00469238  ac 10 81 e2                                      add r1, r1, #0xac
0046923c  05 00 a0 e1                                      mov r0, r5
00469240  44 89 fc eb                                      bl #0x38b758
00469244  05 00 a0 e1                                      mov r0, r5
00469248  08 10 a0 e1                                      mov r1, r8
0046924c  3d aa fa eb                                      bl #0x313b48
00469250  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00469254  24 20 9d e5                                      ldr r2, [sp, #0x24]
00469258  02 00 53 e1                                      cmp r3, r2
0046925c  14 00 00 1a                                      bne #0x4692b4
00469260  00 00 53 e3                                      cmp r3, #0
00469264  0e 00 00 0a                                      beq #0x4692a4
00469268  00 90 a0 e3                                      mov sb, #0
0046926c  94 10 94 e5                                      ldr r1, [r4, #0x94]
00469270  09 b1 a0 e1                                      lsl fp, sb, #2
00469274  05 00 a0 e1                                      mov r0, r5
00469278  0b 10 81 e0                                      add r1, r1, fp
0046927c  02 10 81 e2                                      add r1, r1, #2
00469280  7a ff ff eb                                      bl #0x469070
00469284  94 10 94 e5                                      ldr r1, [r4, #0x94]
00469288  05 00 a0 e1                                      mov r0, r5
0046928c  01 90 89 e2                                      add sb, sb, #1
00469290  0b 10 81 e0                                      add r1, r1, fp
00469294  a1 ff ff eb                                      bl #0x469120
00469298  24 30 9d e5                                      ldr r3, [sp, #0x24]
0046929c  09 00 53 e1                                      cmp r3, sb
004692a0  f1 ff ff 8a                                      bhi #0x46926c
004692a4  01 60 86 e2                                      add r6, r6, #1
004692a8  03 00 56 e3                                      cmp r6, #3
004692ac  04 40 84 e2                                      add r4, r4, #4
004692b0  dc ff ff 1a                                      bne #0x469228
004692b4  2c d0 8d e2                                      add sp, sp, #0x2c
004692b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004692bc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004692c0  01 20 9a e7                                      ldr r2, [sl, r1]
004692c4  00 20 92 e5                                      ldr r2, [r2]
004692c8  02 00 52 e3                                      cmp r2, #2
004692cc  0e 00 00 0a                                      beq #0x46930c
004692d0  01 00 52 e3                                      cmp r2, #1
004692d4  f6 ff ff 1a                                      bne #0x4692b4
004692d8  10 30 9d e5                                      ldr r3, [sp, #0x10]
004692dc  0d c2 00 e3                                      movw ip, #0x20d
004692e0  14 10 9d e5                                      ldr r1, [sp, #0x14]
004692e4  03 00 9a e7                                      ldr r0, [sl, r3]
004692e8  18 20 9d e5                                      ldr r2, [sp, #0x18]
004692ec  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
004692f0  a8 00 80 e2                                      add r0, r0, #0xa8
004692f4  00 c0 8d e5                                      str ip, [sp]
004692f8  41 93 fa eb                                      bl #0x30e004
004692fc  94 30 94 e5                                      ldr r3, [r4, #0x94]
00469300  00 00 53 e3                                      cmp r3, #0
00469304  ca ff ff 1a                                      bne #0x469234
00469308  e9 ff ff ea                                      b #0x4692b4
0046930c  00 30 83 e5                                      str r3, [r3]
00469310  e7 ff ff ea                                      b #0x4692b4
; mapping-symbol data/literal pool
00469314  c0 39 00 00 80 b8 52 00 c0 19 00 00 d8 51 45 00  .byte 0xc0, 0x39, 0x00, 0x00, 0x80, 0xb8, 0x52, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xd8, 0x51, 0x45, 0x00
00469324  ec 42 46 00 88 42 46 00                          .byte 0xec, 0x42, 0x46, 0x00, 0x88, 0x42, 0x46, 0x00

; FUNCTION 0x0046932c, declared_size=296, range_size=296, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame16__LoadPropertiesEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadProperties(IStreamBase*, void*)
; decoder-mode: arm
0046932c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00469330  10 90 91 e5                                      ldr sb, [r1, #0x10]
00469334  fc 50 9f e5                                      ldr r5, [pc, #0xfc]
00469338  14 d0 4d e2                                      sub sp, sp, #0x14
0046933c  00 00 59 e3                                      cmp sb, #0
00469340  01 60 a0 e1                                      mov r6, r1
00469344  00 40 a0 e1                                      mov r4, r0
00469348  05 50 8f e0                                      add r5, pc, r5
0046934c  21 00 00 0a                                      beq #0x4693d8
00469350  04 00 a0 e1                                      mov r0, r4
00469354  0c 10 8d e2                                      add r1, sp, #0xc
00469358  fe 88 fc eb                                      bl #0x38b758
0046935c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00469360  56 8e 89 e2                                      add r8, sb, #0x560
00469364  e0 00 53 e3                                      cmp r3, #0xe0
00469368  01 00 00 0a                                      beq #0x469374
0046936c  14 d0 8d e2                                      add sp, sp, #0x14
00469370  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00469374  c0 b0 9f e5                                      ldr fp, [pc, #0xc0]
00469378  8e 9e 89 e2                                      add sb, sb, #0x8e0
0046937c  0c 90 89 e2                                      add sb, sb, #0xc
00469380  00 70 a0 e3                                      mov r7, #0
00469384  08 a0 8d e2                                      add sl, sp, #8
00469388  04 00 a0 e1                                      mov r0, r4
0046938c  0a 10 a0 e1                                      mov r1, sl
00469390  f0 88 fc eb                                      bl #0x38b758
00469394  07 10 a0 e1                                      mov r1, r7
00469398  08 00 a0 e1                                      mov r0, r8
0046939c  cd d6 fd eb                                      bl #0x3deed8
004693a0  20 00 10 e3                                      tst r0, #0x20
004693a4  0b 30 95 17                                      ldrne r3, [r5, fp]
004693a8  08 20 9d 15                                      ldrne r2, [sp, #8]
004693ac  07 31 93 17                                      ldrne r3, [r3, r7, lsl #2]
004693b0  01 70 87 e2                                      add r7, r7, #1
004693b4  03 30 89 10                                      addne r3, sb, r3
004693b8  04 20 83 15                                      strne r2, [r3, #4]
004693bc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004693c0  07 00 53 e1                                      cmp r3, r7
004693c4  ef ff ff ca                                      bgt #0x469388
004693c8  04 00 a0 e1                                      mov r0, r4
004693cc  65 1f 86 e2                                      add r1, r6, #0x194
004693d0  1a 53 fb eb                                      bl #0x33e040
004693d4  e4 ff ff ea                                      b #0x46936c
004693d8  60 30 9f e5                                      ldr r3, [pc, #0x60]
004693dc  03 30 95 e7                                      ldr r3, [r5, r3]
004693e0  00 30 93 e5                                      ldr r3, [r3]
004693e4  02 00 53 e3                                      cmp r3, #2
004693e8  00 90 89 05                                      streq sb, [sb]
004693ec  de ff ff 0a                                      beq #0x46936c
004693f0  01 00 53 e3                                      cmp r3, #1
004693f4  dc ff ff 1a                                      bne #0x46936c
004693f8  44 00 9f e5                                      ldr r0, [pc, #0x44]
004693fc  44 10 9f e5                                      ldr r1, [pc, #0x44]
00469400  44 20 9f e5                                      ldr r2, [pc, #0x44]
00469404  00 00 95 e7                                      ldr r0, [r5, r0]
00469408  40 30 9f e5                                      ldr r3, [pc, #0x40]
0046940c  1a c3 00 e3                                      movw ip, #0x31a
00469410  01 10 8f e0                                      add r1, pc, r1
00469414  a8 00 80 e2                                      add r0, r0, #0xa8
00469418  02 20 8f e0                                      add r2, pc, r2
0046941c  03 30 8f e0                                      add r3, pc, r3
00469420  00 c0 8d e5                                      str ip, [sp]
00469424  f6 92 fa eb                                      bl #0x30e004
00469428  10 90 96 e5                                      ldr sb, [r6, #0x10]
0046942c  00 00 59 e3                                      cmp sb, #0
00469430  c6 ff ff 1a                                      bne #0x469350
00469434  cc ff ff ea                                      b #0x46936c
; mapping-symbol data/literal pool
00469438  48 b7 52 00 a8 22 00 00 c0 39 00 00 c0 19 00 00  .byte 0x48, 0xb7, 0x52, 0x00, 0xa8, 0x22, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00469448  c8 4f 45 00 80 40 46 00 8c 40 46 00              .byte 0xc8, 0x4f, 0x45, 0x00, 0x80, 0x40, 0x46, 0x00, 0x8c, 0x40, 0x46, 0x00

; FUNCTION 0x00469454, declared_size=36, range_size=36, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame12__SaveQuestsEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveQuests(IStreamBase*, void*)
; decoder-mode: arm
00469454  78 21 91 e5                                      ldr r2, [r1, #0x178]
00469458  01 30 a0 e1                                      mov r3, r1
0046945c  00 10 a0 e1                                      mov r1, r0
00469460  01 00 12 e3                                      tst r2, #1
00469464  01 00 00 1a                                      bne #0x469470
00469468  46 0f 83 e2                                      add r0, r3, #0x118
0046946c  a2 0c 00 ea                                      b #0x46c6fc
00469470  b8 00 83 e2                                      add r0, r3, #0xb8
00469474  a0 0c 00 ea                                      b #0x46c6fc

; FUNCTION 0x00469478, declared_size=80, range_size=80, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame12__LoadQuestsEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadQuests(IStreamBase*, void*)
; decoder-mode: arm
00469478  70 40 2d e9                                      push {r4, r5, r6, lr}
0046947c  00 30 90 e5                                      ldr r3, [r0]
00469480  00 40 a0 e1                                      mov r4, r0
00469484  01 50 a0 e1                                      mov r5, r1
00469488  0f e0 a0 e1                                      mov lr, pc
0046948c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00469490  04 10 a0 e1                                      mov r1, r4
00469494  00 60 a0 e1                                      mov r6, r0
00469498  b8 00 85 e2                                      add r0, r5, #0xb8
0046949c  2b 0c 00 eb                                      bl #0x46c550
004694a0  04 00 a0 e1                                      mov r0, r4
004694a4  00 10 94 e5                                      ldr r1, [r4]
004694a8  06 20 a0 e1                                      mov r2, r6
004694ac  00 30 a0 e3                                      mov r3, #0
004694b0  0f e0 a0 e1                                      mov lr, pc
004694b4  20 f0 91 e5                                      ldr pc, [r1, #0x20]
004694b8  46 0f 85 e2                                      add r0, r5, #0x118
004694bc  04 10 a0 e1                                      mov r1, r4
004694c0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004694c4  21 0c 00 ea                                      b #0x46c550

; FUNCTION 0x004694c8, declared_size=132, range_size=132, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame12_InitFaeriesEv
; demangled: PlayerSavegame::_InitFaeries()
; decoder-mode: arm
004694c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004694cc  00 50 a0 e3                                      mov r5, #0
004694d0  00 40 a0 e1                                      mov r4, r0
004694d4  05 80 a0 e3                                      mov r8, #5
004694d8  05 70 a0 e1                                      mov r7, r5
004694dc  94 60 94 e5                                      ldr r6, [r4, #0x94]
004694e0  00 00 56 e3                                      cmp r6, #0
004694e4  04 00 00 0a                                      beq #0x4694fc
004694e8  01 50 85 e2                                      add r5, r5, #1
004694ec  03 00 55 e3                                      cmp r5, #3
004694f0  04 40 84 e2                                      add r4, r4, #4
004694f4  f8 ff ff 1a                                      bne #0x4694dc
004694f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004694fc  a0 80 84 e5                                      str r8, [r4, #0xa0]
00469500  14 00 a0 e3                                      mov r0, #0x14
00469504  06 10 a0 e1                                      mov r1, r6
00469508  17 9c fa eb                                      bl #0x31056c
0046950c  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00469510  94 00 84 e5                                      str r0, [r4, #0x94]
00469514  00 00 53 e3                                      cmp r3, #0
00469518  01 00 00 1a                                      bne #0x469524
0046951c  f1 ff ff ea                                      b #0x4694e8
00469520  94 00 94 e5                                      ldr r0, [r4, #0x94]
00469524  06 01 80 e0                                      add r0, r0, r6, lsl #2
00469528  00 30 a0 e3                                      mov r3, #0
0046952c  b2 30 c0 e1                                      strh r3, [r0, #2]
00469530  94 30 94 e5                                      ldr r3, [r4, #0x94]
00469534  06 71 c3 e7                                      strb r7, [r3, r6, lsl #2]
00469538  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
0046953c  01 60 86 e2                                      add r6, r6, #1
00469540  06 00 53 e1                                      cmp r3, r6
00469544  f5 ff ff 8a                                      bhi #0x469520
00469548  e6 ff ff ea                                      b #0x4694e8

; FUNCTION 0x0046954c, declared_size=316, range_size=316, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame16_InitLevelStatesEv
; demangled: PlayerSavegame::_InitLevelStates()
; decoder-mode: arm
0046954c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00469550  1c 71 9f e5                                      ldr r7, [pc, #0x11c]
00469554  0c d0 4d e2                                      sub sp, sp, #0xc
00469558  18 a1 9f e5                                      ldr sl, [pc, #0x118]
0046955c  18 91 9f e5                                      ldr sb, [pc, #0x118]
00469560  18 81 9f e5                                      ldr r8, [pc, #0x118]
00469564  18 c1 9f e5                                      ldr ip, [pc, #0x118]
00469568  00 40 a0 e1                                      mov r4, r0
0046956c  00 50 a0 e3                                      mov r5, #0
00469570  07 70 8f e0                                      add r7, pc, r7
00469574  68 60 94 e5                                      ldr r6, [r4, #0x68]
00469578  00 00 56 e3                                      cmp r6, #0
0046957c  08 00 00 0a                                      beq #0x4695a4
00469580  74 60 94 e5                                      ldr r6, [r4, #0x74]
00469584  00 00 56 e3                                      cmp r6, #0
00469588  20 00 00 0a                                      beq #0x469610
0046958c  01 50 85 e2                                      add r5, r5, #1
00469590  03 00 55 e3                                      cmp r5, #3
00469594  04 40 84 e2                                      add r4, r4, #4
00469598  f5 ff ff 1a                                      bne #0x469574
0046959c  0c d0 8d e2                                      add sp, sp, #0xc
004695a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004695a4  0a b0 97 e7                                      ldr fp, [r7, sl]
004695a8  06 10 a0 e1                                      mov r1, r6
004695ac  00 00 9b e5                                      ldr r0, [fp]
004695b0  04 c0 8d e5                                      str ip, [sp, #4]
004695b4  00 01 a0 e1                                      lsl r0, r0, #2
004695b8  eb 9b fa eb                                      bl #0x31056c
004695bc  68 00 84 e5                                      str r0, [r4, #0x68]
004695c0  00 30 9b e5                                      ldr r3, [fp]
004695c4  04 c0 9d e5                                      ldr ip, [sp, #4]
004695c8  00 00 53 e3                                      cmp r3, #0
004695cc  eb ff ff 0a                                      beq #0x469580
004695d0  09 20 97 e7                                      ldr r2, [r7, sb]
004695d4  06 30 a0 e1                                      mov r3, r6
004695d8  00 00 00 ea                                      b #0x4695e0
004695dc  68 00 94 e5                                      ldr r0, [r4, #0x68]
004695e0  00 10 92 e5                                      ldr r1, [r2]
004695e4  06 10 81 e0                                      add r1, r1, r6
004695e8  28 10 91 e5                                      ldr r1, [r1, #0x28]
004695ec  48 60 86 e2                                      add r6, r6, #0x48
004695f0  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
004695f4  00 10 9b e5                                      ldr r1, [fp]
004695f8  01 30 83 e2                                      add r3, r3, #1
004695fc  03 00 51 e1                                      cmp r1, r3
00469600  f5 ff ff 8a                                      bhi #0x4695dc
00469604  74 60 94 e5                                      ldr r6, [r4, #0x74]
00469608  00 00 56 e3                                      cmp r6, #0
0046960c  de ff ff 1a                                      bne #0x46958c
00469610  08 b0 97 e7                                      ldr fp, [r7, r8]
00469614  06 10 a0 e1                                      mov r1, r6
00469618  00 00 9b e5                                      ldr r0, [fp]
0046961c  04 c0 8d e5                                      str ip, [sp, #4]
00469620  00 01 a0 e1                                      lsl r0, r0, #2
00469624  d0 9b fa eb                                      bl #0x31056c
00469628  74 00 84 e5                                      str r0, [r4, #0x74]
0046962c  00 30 9b e5                                      ldr r3, [fp]
00469630  04 c0 9d e5                                      ldr ip, [sp, #4]
00469634  00 00 53 e3                                      cmp r3, #0
00469638  d3 ff ff 0a                                      beq #0x46958c
0046963c  0c 20 97 e7                                      ldr r2, [r7, ip]
00469640  06 30 a0 e1                                      mov r3, r6
00469644  00 00 00 ea                                      b #0x46964c
00469648  74 00 94 e5                                      ldr r0, [r4, #0x74]
0046964c  00 10 92 e5                                      ldr r1, [r2]
00469650  06 10 81 e0                                      add r1, r1, r6
00469654  08 10 91 e5                                      ldr r1, [r1, #8]
00469658  14 60 86 e2                                      add r6, r6, #0x14
0046965c  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00469660  00 10 9b e5                                      ldr r1, [fp]
00469664  01 30 83 e2                                      add r3, r3, #1
00469668  03 00 51 e1                                      cmp r1, r3
0046966c  f5 ff ff 8a                                      bhi #0x469648
00469670  c5 ff ff ea                                      b #0x46958c
; mapping-symbol data/literal pool
00469674  20 b5 52 00 c0 18 00 00 74 08 00 00 74 22 00 00  .byte 0x20, 0xb5, 0x52, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00, 0x74, 0x22, 0x00, 0x00
00469684  d0 3d 00 00                                      .byte 0xd0, 0x3d, 0x00, 0x00

; FUNCTION 0x00469764, declared_size=288, range_size=288, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame11_InitSkillsEv
; demangled: PlayerSavegame::_InitSkills()
; decoder-mode: arm
00469764  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00469768  80 50 90 e5                                      ldr r5, [r0, #0x80]
0046976c  00 40 a0 e1                                      mov r4, r0
00469770  00 00 55 e3                                      cmp r5, #0
00469774  00 00 00 0a                                      beq #0x46977c
00469778  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0046977c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00469780  9d 4b fd eb                                      bl #0x3bc5fc
00469784  00 60 a0 e1                                      mov r6, r0
00469788  04 00 90 e5                                      ldr r0, [r0, #4]
0046978c  05 10 a0 e1                                      mov r1, r5
00469790  84 00 84 e5                                      str r0, [r4, #0x84]
00469794  80 01 a0 e1                                      lsl r0, r0, #3
00469798  73 9b fa eb                                      bl #0x31056c
0046979c  84 30 94 e5                                      ldr r3, [r4, #0x84]
004697a0  80 00 84 e5                                      str r0, [r4, #0x80]
004697a4  00 00 53 e3                                      cmp r3, #0
004697a8  0d 00 00 0a                                      beq #0x4697e4
004697ac  05 10 a0 e1                                      mov r1, r5
004697b0  00 00 00 ea                                      b #0x4697b8
004697b4  80 00 94 e5                                      ldr r0, [r4, #0x80]
004697b8  08 20 96 e5                                      ldr r2, [r6, #8]
004697bc  85 31 80 e0                                      add r3, r0, r5, lsl #3
004697c0  05 21 92 e7                                      ldr r2, [r2, r5, lsl #2]
004697c4  85 21 80 e7                                      str r2, [r0, r5, lsl #3]
004697c8  00 20 a0 e3                                      mov r2, #0
004697cc  06 10 c3 e5                                      strb r1, [r3, #6]
004697d0  b4 20 c3 e1                                      strh r2, [r3, #4]
004697d4  84 30 94 e5                                      ldr r3, [r4, #0x84]
004697d8  01 50 85 e2                                      add r5, r5, #1
004697dc  05 00 53 e1                                      cmp r3, r5
004697e0  f3 ff ff 8a                                      bhi #0x4697b4
004697e4  88 10 94 e5                                      ldr r1, [r4, #0x88]
004697e8  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
004697ec  00 30 61 e0                                      rsb r3, r1, r0
004697f0  c3 31 a0 e1                                      asr r3, r3, #3
004697f4  03 21 83 e0                                      add r2, r3, r3, lsl #2
004697f8  02 22 82 e0                                      add r2, r2, r2, lsl #4
004697fc  02 24 82 e0                                      add r2, r2, r2, lsl #8
00469800  02 28 82 e0                                      add r2, r2, r2, lsl #16
00469804  82 30 83 e0                                      add r3, r3, r2, lsl #1
00469808  00 00 53 e3                                      cmp r3, #0
0046980c  d9 ff ff 0a                                      beq #0x469778
00469810  00 60 a0 e3                                      mov r6, #0
00469814  06 70 a0 e1                                      mov r7, r6
00469818  06 80 a0 e1                                      mov r8, r6
0046981c  08 00 00 ea                                      b #0x469844
00469820  00 30 61 e0                                      rsb r3, r1, r0
00469824  c3 31 a0 e1                                      asr r3, r3, #3
00469828  03 21 83 e0                                      add r2, r3, r3, lsl #2
0046982c  02 22 82 e0                                      add r2, r2, r2, lsl #4
00469830  02 24 82 e0                                      add r2, r2, r2, lsl #8
00469834  02 28 82 e0                                      add r2, r2, r2, lsl #16
00469838  82 30 83 e0                                      add r3, r3, r2, lsl #1
0046983c  03 00 57 e1                                      cmp r7, r3
00469840  cc ff ff 2a                                      bhs #0x469778
00469844  06 50 81 e0                                      add r5, r1, r6
00469848  10 30 95 e5                                      ldr r3, [r5, #0x10]
0046984c  01 70 87 e2                                      add r7, r7, #1
00469850  18 60 86 e2                                      add r6, r6, #0x18
00469854  00 00 53 e3                                      cmp r3, #0
00469858  f0 ff ff 0a                                      beq #0x469820
0046985c  05 00 a0 e1                                      mov r0, r5
00469860  04 10 95 e5                                      ldr r1, [r5, #4]
00469864  0a 71 fb eb                                      bl #0x345c94
00469868  10 80 85 e5                                      str r8, [r5, #0x10]
0046986c  08 50 85 e5                                      str r5, [r5, #8]
00469870  04 80 85 e5                                      str r8, [r5, #4]
00469874  0c 50 85 e5                                      str r5, [r5, #0xc]
00469878  88 10 94 e5                                      ldr r1, [r4, #0x88]
0046987c  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
00469880  e6 ff ff ea                                      b #0x469820

; FUNCTION 0x004698dc, declared_size=8, range_size=8, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame16__LoadPlayerNameEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadPlayerName(IStreamBase*, void*)
; decoder-mode: arm
004698dc  18 10 81 e2                                      add r1, r1, #0x18
004698e0  30 e1 ff ea                                      b #0x461da8

; FUNCTION 0x004698e4, declared_size=188, range_size=188, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17__SavePlayerClassEP11IStreamBasePv
; demangled: PlayerSavegame::__SavePlayerClass(IStreamBase*, void*)
; decoder-mode: arm
004698e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004698e8  a0 40 9f e5                                      ldr r4, [pc, #0xa0]
004698ec  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
004698f0  20 d0 4d e2                                      sub sp, sp, #0x20
004698f4  04 40 8f e0                                      add r4, pc, r4
004698f8  05 30 94 e7                                      ldr r3, [r4, r5]
004698fc  00 70 a0 e1                                      mov r7, r0
00469900  00 30 93 e5                                      ldr r3, [r3]
00469904  1c 30 8d e5                                      str r3, [sp, #0x1c]
00469908  34 30 91 e5                                      ldr r3, [r1, #0x34]
0046990c  00 00 53 e3                                      cmp r3, #0
00469910  16 00 00 ba                                      blt #0x469970
00469914  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00469918  02 20 94 e7                                      ldr r2, [r4, r2]
0046991c  00 20 92 e5                                      ldr r2, [r2]
00469920  02 00 53 e1                                      cmp r3, r2
00469924  11 00 00 8a                                      bhi #0x469970
00469928  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0046992c  04 60 8d e2                                      add r6, sp, #4
00469930  02 20 94 e7                                      ldr r2, [r4, r2]
00469934  00 20 92 e5                                      ldr r2, [r2]
00469938  03 81 92 e7                                      ldr r8, [r2, r3, lsl #2]
0046993c  14 60 8d e5                                      str r6, [sp, #0x14]
00469940  18 60 8d e5                                      str r6, [sp, #0x18]
00469944  08 00 a0 e1                                      mov r0, r8
00469948  41 91 fa eb                                      bl #0x30de54
0046994c  08 10 a0 e1                                      mov r1, r8
00469950  00 20 88 e0                                      add r2, r8, r0
00469954  06 00 a0 e1                                      mov r0, r6
00469958  62 9f fa eb                                      bl #0x3116e8
0046995c  07 00 a0 e1                                      mov r0, r7
00469960  06 10 a0 e1                                      mov r1, r6
00469964  3f df ff eb                                      bl #0x461668
00469968  06 00 a0 e1                                      mov r0, r6
0046996c  0e a8 fa eb                                      bl #0x3139ac
00469970  05 30 94 e7                                      ldr r3, [r4, r5]
00469974  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00469978  00 30 93 e5                                      ldr r3, [r3]
0046997c  03 00 52 e1                                      cmp r2, r3
00469980  01 00 00 1a                                      bne #0x46998c
00469984  20 d0 8d e2                                      add sp, sp, #0x20
00469988  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0046998c  5f 92 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00469990  9c b1 52 00 ac 40 00 00 04 42 00 00 08 3c 00 00  .byte 0x9c, 0xb1, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00

; FUNCTION 0x00469b18, declared_size=452, range_size=452, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame20__LoadFastTravelListEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadFastTravelList(IStreamBase*, void*)
; decoder-mode: arm
00469b18  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00469b1c  a8 b1 9f e5                                      ldr fp, [pc, #0x1a8]
00469b20  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
00469b24  44 d0 4d e2                                      sub sp, sp, #0x44
00469b28  0b b0 8f e0                                      add fp, pc, fp
00469b2c  02 30 9b e7                                      ldr r3, [fp, r2]
00469b30  9c 61 9f e5                                      ldr r6, [pc, #0x19c]
00469b34  14 20 8d e5                                      str r2, [sp, #0x14]
00469b38  00 30 93 e5                                      ldr r3, [r3]
00469b3c  0c 00 8d e5                                      str r0, [sp, #0xc]
00469b40  01 50 a0 e1                                      mov r5, r1
00469b44  3c 30 8d e5                                      str r3, [sp, #0x3c]
00469b48  88 31 9f e5                                      ldr r3, [pc, #0x188]
00469b4c  06 60 8f e0                                      add r6, pc, r6
00469b50  00 80 a0 e3                                      mov r8, #0
00469b54  03 30 8f e0                                      add r3, pc, r3
00469b58  10 30 8d e5                                      str r3, [sp, #0x10]
00469b5c  24 40 8d e2                                      add r4, sp, #0x24
00469b60  1c 90 8d e2                                      add sb, sp, #0x1c
00469b64  01 a0 a0 e3                                      mov sl, #1
00469b68  04 00 a0 e1                                      mov r0, r4
00469b6c  10 10 a0 e3                                      mov r1, #0x10
00469b70  34 40 8d e5                                      str r4, [sp, #0x34]
00469b74  38 40 8d e5                                      str r4, [sp, #0x38]
00469b78  bf 9e fa eb                                      bl #0x31167c
00469b7c  34 30 9d e5                                      ldr r3, [sp, #0x34]
00469b80  00 70 a0 e3                                      mov r7, #0
00469b84  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00469b88  04 10 a0 e1                                      mov r1, r4
00469b8c  00 70 c3 e5                                      strb r7, [r3]
00469b90  84 e0 ff eb                                      bl #0x461da8
00469b94  38 10 9d e5                                      ldr r1, [sp, #0x38]
00469b98  34 30 9d e5                                      ldr r3, [sp, #0x34]
00469b9c  03 30 61 e0                                      rsb r3, r1, r3
00469ba0  40 00 53 e3                                      cmp r3, #0x40
00469ba4  44 00 00 8a                                      bhi #0x469cbc
00469ba8  00 20 e0 e3                                      mvn r2, #0
00469bac  02 00 53 e1                                      cmp r3, r2
00469bb0  02 30 a0 21                                      movhs r3, r2
00469bb4  3f 00 53 e3                                      cmp r3, #0x3f
00469bb8  04 70 89 e5                                      str r7, [sb, #4]
00469bbc  00 70 89 e5                                      str r7, [sb]
00469bc0  39 00 00 9a                                      bls #0x469cac
00469bc4  3f 20 a0 e3                                      mov r2, #0x3f
00469bc8  40 30 a0 e3                                      mov r3, #0x40
00469bcc  10 02 8d e9                                      stmib sp, {r4, sb}
00469bd0  00 70 a0 e3                                      mov r7, #0
00469bd4  08 90 a0 e1                                      mov sb, r8
00469bd8  03 40 a0 e1                                      mov r4, r3
00469bdc  05 80 a0 e1                                      mov r8, r5
00469be0  02 50 a0 e1                                      mov r5, r2
00469be4  07 00 00 ea                                      b #0x469c08
00469be8  30 00 53 e3                                      cmp r3, #0x30
00469bec  01 00 00 0a                                      beq #0x469bf8
00469bf0  06 00 a0 e1                                      mov r0, r6
00469bf4  d5 7c 0a eb                                      bl #0x708f50
00469bf8  01 70 87 e2                                      add r7, r7, #1
00469bfc  07 00 54 e1                                      cmp r4, r7
00469c00  10 00 00 9a                                      bls #0x469c48
00469c04  38 10 9d e5                                      ldr r1, [sp, #0x38]
00469c08  05 30 67 e0                                      rsb r3, r7, r5
00469c0c  03 30 d1 e7                                      ldrb r3, [r1, r3]
00469c10  31 00 53 e3                                      cmp r3, #0x31
00469c14  f3 ff ff 1a                                      bne #0x469be8
00469c18  3f 00 57 e3                                      cmp r7, #0x3f
00469c1c  1f 00 00 8a                                      bhi #0x469ca0
00469c20  a7 32 a0 e1                                      lsr r3, r7, #5
00469c24  40 20 8d e2                                      add r2, sp, #0x40
00469c28  03 31 82 e0                                      add r3, r2, r3, lsl #2
00469c2c  24 20 13 e5                                      ldr r2, [r3, #-0x24]
00469c30  1f 10 07 e2                                      and r1, r7, #0x1f
00469c34  01 70 87 e2                                      add r7, r7, #1
00469c38  1a 21 82 e1                                      orr r2, r2, sl, lsl r1
00469c3c  07 00 54 e1                                      cmp r4, r7
00469c40  24 20 03 e5                                      str r2, [r3, #-0x24]
00469c44  ee ff ff 8a                                      bhi #0x469c04
00469c48  08 50 a0 e1                                      mov r5, r8
00469c4c  04 40 9d e5                                      ldr r4, [sp, #4]
00469c50  09 80 a0 e1                                      mov r8, sb
00469c54  08 90 9d e5                                      ldr sb, [sp, #8]
00469c58  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00469c5c  01 80 88 e2                                      add r8, r8, #1
00469c60  04 00 a0 e1                                      mov r0, r4
00469c64  7c 31 85 e5                                      str r3, [r5, #0x17c]
00469c68  20 30 9d e5                                      ldr r3, [sp, #0x20]
00469c6c  80 31 85 e5                                      str r3, [r5, #0x180]
00469c70  4d a7 fa eb                                      bl #0x3139ac
00469c74  03 00 58 e3                                      cmp r8, #3
00469c78  08 50 85 e2                                      add r5, r5, #8
00469c7c  b9 ff ff 1a                                      bne #0x469b68
00469c80  14 20 9d e5                                      ldr r2, [sp, #0x14]
00469c84  02 30 9b e7                                      ldr r3, [fp, r2]
00469c88  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00469c8c  00 30 93 e5                                      ldr r3, [r3]
00469c90  03 00 52 e1                                      cmp r2, r3
00469c94  0b 00 00 1a                                      bne #0x469cc8
00469c98  44 d0 8d e2                                      add sp, sp, #0x44
00469c9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00469ca0  10 00 9d e5                                      ldr r0, [sp, #0x10]
00469ca4  81 7c 0a eb                                      bl #0x708eb0
00469ca8  dc ff ff ea                                      b #0x469c20
00469cac  00 00 53 e3                                      cmp r3, #0
00469cb0  01 20 43 12                                      subne r2, r3, #1
00469cb4  c4 ff ff 1a                                      bne #0x469bcc
00469cb8  e6 ff ff ea                                      b #0x469c58
00469cbc  04 00 a0 e1                                      mov r0, r4
00469cc0  39 a7 fa eb                                      bl #0x3139ac
00469cc4  ed ff ff ea                                      b #0x469c80
00469cc8  90 91 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00469ccc  68 af 52 00 ac 40 00 00 7c 81 45 00 74 81 45 00  .byte 0x68, 0xaf, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x7c, 0x81, 0x45, 0x00, 0x74, 0x81, 0x45, 0x00

; FUNCTION 0x00469cdc, declared_size=172, range_size=172, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame20__SaveFastTravelListEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveFastTravelList(IStreamBase*, void*)
; decoder-mode: arm
00469cdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00469ce0  98 60 9f e5                                      ldr r6, [pc, #0x98]
00469ce4  98 b0 9f e5                                      ldr fp, [pc, #0x98]
00469ce8  24 d0 4d e2                                      sub sp, sp, #0x24
00469cec  06 60 8f e0                                      add r6, pc, r6
00469cf0  0b 30 96 e7                                      ldr r3, [r6, fp]
00469cf4  00 50 a0 e3                                      mov r5, #0
00469cf8  00 90 a0 e1                                      mov sb, r0
00469cfc  00 30 93 e5                                      ldr r3, [r3]
00469d00  01 a0 a0 e1                                      mov sl, r1
00469d04  04 40 8d e2                                      add r4, sp, #4
00469d08  05 80 a0 e1                                      mov r8, r5
00469d0c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00469d10  04 00 a0 e1                                      mov r0, r4
00469d14  10 10 a0 e3                                      mov r1, #0x10
00469d18  14 40 8d e5                                      str r4, [sp, #0x14]
00469d1c  18 40 8d e5                                      str r4, [sp, #0x18]
00469d20  55 9e fa eb                                      bl #0x31167c
00469d24  14 30 9d e5                                      ldr r3, [sp, #0x14]
00469d28  85 71 8a e0                                      add r7, sl, r5, lsl #3
00469d2c  5f 7f 87 e2                                      add r7, r7, #0x17c
00469d30  00 80 c3 e5                                      strb r8, [r3]
00469d34  07 00 a0 e1                                      mov r0, r7
00469d38  04 10 a0 e1                                      mov r1, r4
00469d3c  17 ff ff eb                                      bl #0x4699a0
00469d40  09 00 a0 e1                                      mov r0, sb
00469d44  04 10 a0 e1                                      mov r1, r4
00469d48  46 de ff eb                                      bl #0x461668
00469d4c  01 50 85 e2                                      add r5, r5, #1
00469d50  04 00 a0 e1                                      mov r0, r4
00469d54  14 a7 fa eb                                      bl #0x3139ac
00469d58  03 00 55 e3                                      cmp r5, #3
00469d5c  eb ff ff 1a                                      bne #0x469d10
00469d60  0b 30 96 e7                                      ldr r3, [r6, fp]
00469d64  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00469d68  00 30 93 e5                                      ldr r3, [r3]
00469d6c  03 00 52 e1                                      cmp r2, r3
00469d70  01 00 00 1a                                      bne #0x469d7c
00469d74  24 d0 8d e2                                      add sp, sp, #0x24
00469d78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00469d7c  63 91 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00469d80  a4 ad 52 00 ac 40 00 00                          .byte 0xa4, 0xad, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00469d88, declared_size=228, range_size=228, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17__LoadPlayerClassEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadPlayerClass(IStreamBase*, void*)
; decoder-mode: arm
00469d88  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00469d8c  c8 80 9f e5                                      ldr r8, [pc, #0xc8]
00469d90  c8 90 9f e5                                      ldr sb, [pc, #0xc8]
00469d94  24 d0 4d e2                                      sub sp, sp, #0x24
00469d98  08 80 8f e0                                      add r8, pc, r8
00469d9c  09 30 98 e7                                      ldr r3, [r8, sb]
00469da0  04 a0 8d e2                                      add sl, sp, #4
00469da4  00 50 a0 e1                                      mov r5, r0
00469da8  00 30 93 e5                                      ldr r3, [r3]
00469dac  0a 00 a0 e1                                      mov r0, sl
00469db0  01 b0 a0 e1                                      mov fp, r1
00469db4  10 10 a0 e3                                      mov r1, #0x10
00469db8  1c 30 8d e5                                      str r3, [sp, #0x1c]
00469dbc  14 a0 8d e5                                      str sl, [sp, #0x14]
00469dc0  18 a0 8d e5                                      str sl, [sp, #0x18]
00469dc4  2c 9e fa eb                                      bl #0x31167c
00469dc8  14 30 9d e5                                      ldr r3, [sp, #0x14]
00469dcc  00 40 a0 e3                                      mov r4, #0
00469dd0  05 00 a0 e1                                      mov r0, r5
00469dd4  00 40 c3 e5                                      strb r4, [r3]
00469dd8  0a 10 a0 e1                                      mov r1, sl
00469ddc  f1 df ff eb                                      bl #0x461da8
00469de0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00469de4  18 60 9d e5                                      ldr r6, [sp, #0x18]
00469de8  03 30 98 e7                                      ldr r3, [r8, r3]
00469dec  00 50 93 e5                                      ldr r5, [r3]
00469df0  04 00 55 e1                                      cmp r5, r4
00469df4  15 00 00 0a                                      beq #0x469e50
00469df8  68 30 9f e5                                      ldr r3, [pc, #0x68]
00469dfc  03 30 98 e7                                      ldr r3, [r8, r3]
00469e00  00 70 93 e5                                      ldr r7, [r3]
00469e04  02 00 00 ea                                      b #0x469e14
00469e08  01 40 84 e2                                      add r4, r4, #1
00469e0c  05 00 54 e1                                      cmp r4, r5
00469e10  0e 00 00 0a                                      beq #0x469e50
00469e14  06 00 a0 e1                                      mov r0, r6
00469e18  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
00469e1c  3e 91 fa eb                                      bl #0x30e31c
00469e20  00 00 50 e3                                      cmp r0, #0
00469e24  f7 ff ff 1a                                      bne #0x469e08
00469e28  34 40 8b e5                                      str r4, [fp, #0x34]
00469e2c  0a 00 a0 e1                                      mov r0, sl
00469e30  dd a6 fa eb                                      bl #0x3139ac
00469e34  09 30 98 e7                                      ldr r3, [r8, sb]
00469e38  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00469e3c  00 30 93 e5                                      ldr r3, [r3]
00469e40  03 00 52 e1                                      cmp r2, r3
00469e44  03 00 00 1a                                      bne #0x469e58
00469e48  24 d0 8d e2                                      add sp, sp, #0x24
00469e4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00469e50  00 40 e0 e3                                      mvn r4, #0
00469e54  f3 ff ff ea                                      b #0x469e28
00469e58  2c 91 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00469e5c  f8 ac 52 00 ac 40 00 00 04 42 00 00 08 3c 00 00  .byte 0xf8, 0xac, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0x42, 0x00, 0x00, 0x08, 0x3c, 0x00, 0x00

; FUNCTION 0x00469e6c, declared_size=584, range_size=584, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame12__SaveSkillsEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveSkills(IStreamBase*, void*)
; decoder-mode: arm
00469e6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00469e70  1c 92 9f e5                                      ldr sb, [pc, #0x21c]
00469e74  1c 22 9f e5                                      ldr r2, [pc, #0x21c]
00469e78  3c d0 4d e2                                      sub sp, sp, #0x3c
00469e7c  09 90 8f e0                                      add sb, pc, sb
00469e80  0c 20 8d e5                                      str r2, [sp, #0xc]
00469e84  02 20 99 e7                                      ldr r2, [sb, r2]
00469e88  80 30 91 e5                                      ldr r3, [r1, #0x80]
00469e8c  01 50 a0 e1                                      mov r5, r1
00469e90  00 20 92 e5                                      ldr r2, [r2]
00469e94  00 00 53 e3                                      cmp r3, #0
00469e98  00 40 a0 e1                                      mov r4, r0
00469e9c  34 20 8d e5                                      str r2, [sp, #0x34]
00469ea0  62 00 00 0a                                      beq #0x46a030
00469ea4  84 30 95 e5                                      ldr r3, [r5, #0x84]
00469ea8  1c 70 8d e2                                      add r7, sp, #0x1c
00469eac  07 00 a0 e1                                      mov r0, r7
00469eb0  10 10 a0 e3                                      mov r1, #0x10
00469eb4  18 30 8d e5                                      str r3, [sp, #0x18]
00469eb8  2c 70 8d e5                                      str r7, [sp, #0x2c]
00469ebc  30 70 8d e5                                      str r7, [sp, #0x30]
00469ec0  ed 9d fa eb                                      bl #0x31167c
00469ec4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00469ec8  00 60 a0 e3                                      mov r6, #0
00469ecc  04 00 a0 e1                                      mov r0, r4
00469ed0  00 60 c3 e5                                      strb r6, [r3]
00469ed4  18 10 8d e2                                      add r1, sp, #0x18
00469ed8  4a 86 fc eb                                      bl #0x38b808
00469edc  18 30 9d e5                                      ldr r3, [sp, #0x18]
00469ee0  06 00 53 e1                                      cmp r3, r6
00469ee4  18 00 00 da                                      ble #0x469f4c
00469ee8  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
00469eec  03 a0 99 e7                                      ldr sl, [sb, r3]
00469ef0  80 20 95 e5                                      ldr r2, [r5, #0x80]
00469ef4  00 30 9a e5                                      ldr r3, [sl]
00469ef8  86 81 a0 e1                                      lsl r8, r6, #3
00469efc  86 21 92 e7                                      ldr r2, [r2, r6, lsl #3]
00469f00  01 60 86 e2                                      add r6, r6, #1
00469f04  02 b1 93 e7                                      ldr fp, [r3, r2, lsl #2]
00469f08  0b 00 a0 e1                                      mov r0, fp
00469f0c  d0 8f fa eb                                      bl #0x30de54
00469f10  0b 10 a0 e1                                      mov r1, fp
00469f14  00 20 8b e0                                      add r2, fp, r0
00469f18  07 00 a0 e1                                      mov r0, r7
00469f1c  af 9a fa eb                                      bl #0x3109e0
00469f20  04 00 a0 e1                                      mov r0, r4
00469f24  07 10 a0 e1                                      mov r1, r7
00469f28  ce dd ff eb                                      bl #0x461668
00469f2c  80 10 95 e5                                      ldr r1, [r5, #0x80]
00469f30  04 00 a0 e1                                      mov r0, r4
00469f34  08 10 81 e0                                      add r1, r1, r8
00469f38  04 10 81 e2                                      add r1, r1, #4
00469f3c  9d fb ff eb                                      bl #0x468db8
00469f40  18 30 9d e5                                      ldr r3, [sp, #0x18]
00469f44  06 00 53 e1                                      cmp r3, r6
00469f48  e8 ff ff ca                                      bgt #0x469ef0
00469f4c  00 a0 a0 e3                                      mov sl, #0
00469f50  14 b0 8d e2                                      add fp, sp, #0x14
00469f54  88 30 95 e5                                      ldr r3, [r5, #0x88]
00469f58  04 00 a0 e1                                      mov r0, r4
00469f5c  0b 10 a0 e1                                      mov r1, fp
00469f60  0a 30 83 e0                                      add r3, r3, sl
00469f64  10 30 93 e5                                      ldr r3, [r3, #0x10]
00469f68  14 30 8d e5                                      str r3, [sp, #0x14]
00469f6c  ff dd ff eb                                      bl #0x461770
00469f70  88 80 95 e5                                      ldr r8, [r5, #0x88]
00469f74  0a 80 88 e0                                      add r8, r8, sl
00469f78  08 60 98 e5                                      ldr r6, [r8, #8]
00469f7c  08 00 56 e1                                      cmp r6, r8
00469f80  10 00 00 0a                                      beq #0x469fc8
00469f84  10 10 86 e2                                      add r1, r6, #0x10
00469f88  04 00 a0 e1                                      mov r0, r4
00469f8c  1d 86 fc eb                                      bl #0x38b808
00469f90  04 00 a0 e1                                      mov r0, r4
00469f94  14 10 86 e2                                      add r1, r6, #0x14
00469f98  1a 86 fc eb                                      bl #0x38b808
00469f9c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00469fa0  00 00 52 e3                                      cmp r2, #0
00469fa4  01 00 00 1a                                      bne #0x469fb0
00469fa8  13 00 00 ea                                      b #0x469ffc
00469fac  03 20 a0 e1                                      mov r2, r3
00469fb0  08 30 92 e5                                      ldr r3, [r2, #8]
00469fb4  00 00 53 e3                                      cmp r3, #0
00469fb8  fb ff ff 1a                                      bne #0x469fac
00469fbc  02 60 a0 e1                                      mov r6, r2
00469fc0  06 00 58 e1                                      cmp r8, r6
00469fc4  ee ff ff 1a                                      bne #0x469f84
00469fc8  18 a0 8a e2                                      add sl, sl, #0x18
00469fcc  30 00 5a e3                                      cmp sl, #0x30
00469fd0  df ff ff 1a                                      bne #0x469f54
00469fd4  07 00 a0 e1                                      mov r0, r7
00469fd8  73 a6 fa eb                                      bl #0x3139ac
00469fdc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00469fe0  02 30 99 e7                                      ldr r3, [sb, r2]
00469fe4  34 20 9d e5                                      ldr r2, [sp, #0x34]
00469fe8  00 30 93 e5                                      ldr r3, [r3]
00469fec  03 00 52 e1                                      cmp r2, r3
00469ff0  26 00 00 1a                                      bne #0x46a090
00469ff4  3c d0 8d e2                                      add sp, sp, #0x3c
00469ff8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00469ffc  04 30 96 e5                                      ldr r3, [r6, #4]
0046a000  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0046a004  01 00 56 e1                                      cmp r6, r1
0046a008  05 00 00 1a                                      bne #0x46a024
0046a00c  03 60 a0 e1                                      mov r6, r3
0046a010  04 30 93 e5                                      ldr r3, [r3, #4]
0046a014  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0046a018  06 00 52 e1                                      cmp r2, r6
0046a01c  fa ff ff 0a                                      beq #0x46a00c
0046a020  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0046a024  02 00 53 e1                                      cmp r3, r2
0046a028  03 60 a0 11                                      movne r6, r3
0046a02c  e3 ff ff ea                                      b #0x469fc0
0046a030  68 20 9f e5                                      ldr r2, [pc, #0x68]
0046a034  02 20 99 e7                                      ldr r2, [sb, r2]
0046a038  00 20 92 e5                                      ldr r2, [r2]
0046a03c  02 00 52 e3                                      cmp r2, #2
0046a040  00 30 83 05                                      streq r3, [r3]
0046a044  e4 ff ff 0a                                      beq #0x469fdc
0046a048  01 00 52 e3                                      cmp r2, #1
0046a04c  e2 ff ff 1a                                      bne #0x469fdc
0046a050  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
0046a054  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0046a058  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0046a05c  00 00 99 e7                                      ldr r0, [sb, r0]
0046a060  48 30 9f e5                                      ldr r3, [pc, #0x48]
0046a064  cf c1 00 e3                                      movw ip, #0x1cf
0046a068  01 10 8f e0                                      add r1, pc, r1
0046a06c  03 30 8f e0                                      add r3, pc, r3
0046a070  a8 00 80 e2                                      add r0, r0, #0xa8
0046a074  02 20 8f e0                                      add r2, pc, r2
0046a078  00 c0 8d e5                                      str ip, [sp]
0046a07c  e0 8f fa eb                                      bl #0x30e004
0046a080  80 30 95 e5                                      ldr r3, [r5, #0x80]
0046a084  00 00 53 e3                                      cmp r3, #0
0046a088  85 ff ff 1a                                      bne #0x469ea4
0046a08c  d2 ff ff ea                                      b #0x469fdc
0046a090  9e 90 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046a094  14 ac 52 00 ac 40 00 00 d8 32 00 00 c0 39 00 00  .byte 0x14, 0xac, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd8, 0x32, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0046a0a4  c0 19 00 00 70 43 45 00 a4 34 46 00 3c 34 46 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x70, 0x43, 0x45, 0x00, 0xa4, 0x34, 0x46, 0x00, 0x3c, 0x34, 0x46, 0x00

; FUNCTION 0x0046a0b4, declared_size=748, range_size=748, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame15__SaveInventoryEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveInventory(IStreamBase*, void*)
; decoder-mode: arm
0046a0b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046a0b8  bc 92 9f e5                                      ldr sb, [pc, #0x2bc]
0046a0bc  bc 22 9f e5                                      ldr r2, [pc, #0x2bc]
0046a0c0  74 d0 4d e2                                      sub sp, sp, #0x74
0046a0c4  09 90 8f e0                                      add sb, pc, sb
0046a0c8  2c 20 8d e5                                      str r2, [sp, #0x2c]
0046a0cc  02 20 99 e7                                      ldr r2, [sb, r2]
0046a0d0  10 30 91 e5                                      ldr r3, [r1, #0x10]
0046a0d4  01 50 a0 e1                                      mov r5, r1
0046a0d8  00 20 92 e5                                      ldr r2, [r2]
0046a0dc  00 00 53 e3                                      cmp r3, #0
0046a0e0  00 40 a0 e1                                      mov r4, r0
0046a0e4  6c 20 8d e5                                      str r2, [sp, #0x6c]
0046a0e8  8a 00 00 0a                                      beq #0x46a318
0046a0ec  9c 23 93 e5                                      ldr r2, [r3, #0x39c]
0046a0f0  df 0f 83 e2                                      add r0, r3, #0x37c
0046a0f4  00 10 e0 e3                                      mvn r1, #0
0046a0f8  4c 20 8d e5                                      str r2, [sp, #0x4c]
0046a0fc  69 49 fe eb                                      bl #0x3fc6a8
0046a100  10 30 95 e5                                      ldr r3, [r5, #0x10]
0046a104  48 00 8d e5                                      str r0, [sp, #0x48]
0046a108  4c 10 8d e2                                      add r1, sp, #0x4c
0046a10c  84 23 93 e5                                      ldr r2, [r3, #0x384]
0046a110  88 33 93 e5                                      ldr r3, [r3, #0x388]
0046a114  04 00 a0 e1                                      mov r0, r4
0046a118  54 60 8d e2                                      add r6, sp, #0x54
0046a11c  03 30 62 e0                                      rsb r3, r2, r3
0046a120  43 31 a0 e1                                      asr r3, r3, #2
0046a124  44 30 8d e5                                      str r3, [sp, #0x44]
0046a128  90 dd ff eb                                      bl #0x461770
0046a12c  04 00 a0 e1                                      mov r0, r4
0046a130  48 10 8d e2                                      add r1, sp, #0x48
0046a134  8d dd ff eb                                      bl #0x461770
0046a138  04 00 a0 e1                                      mov r0, r4
0046a13c  44 10 8d e2                                      add r1, sp, #0x44
0046a140  8a dd ff eb                                      bl #0x461770
0046a144  10 30 95 e5                                      ldr r3, [r5, #0x10]
0046a148  06 00 a0 e1                                      mov r0, r6
0046a14c  10 10 a0 e3                                      mov r1, #0x10
0046a150  88 23 93 e5                                      ldr r2, [r3, #0x388]
0046a154  08 20 8d e5                                      str r2, [sp, #8]
0046a158  84 a3 93 e5                                      ldr sl, [r3, #0x384]
0046a15c  64 60 8d e5                                      str r6, [sp, #0x64]
0046a160  68 60 8d e5                                      str r6, [sp, #0x68]
0046a164  44 9d fa eb                                      bl #0x31167c
0046a168  08 30 9d e5                                      ldr r3, [sp, #8]
0046a16c  00 20 a0 e3                                      mov r2, #0
0046a170  03 00 5a e1                                      cmp sl, r3
0046a174  64 30 9d e5                                      ldr r3, [sp, #0x64]
0046a178  00 20 c3 e5                                      strb r2, [r3]
0046a17c  5b 00 00 0a                                      beq #0x46a2f0
0046a180  3c 30 8d e2                                      add r3, sp, #0x3c
0046a184  1c 30 8d e5                                      str r3, [sp, #0x1c]
0046a188  f4 31 9f e5                                      ldr r3, [pc, #0x1f4]
0046a18c  f4 21 9f e5                                      ldr r2, [pc, #0x1f4]
0046a190  03 30 99 e7                                      ldr r3, [sb, r3]
0046a194  28 20 8d e5                                      str r2, [sp, #0x28]
0046a198  38 20 8d e2                                      add r2, sp, #0x38
0046a19c  24 30 8d e5                                      str r3, [sp, #0x24]
0046a1a0  18 20 8d e5                                      str r2, [sp, #0x18]
0046a1a4  34 30 8d e2                                      add r3, sp, #0x34
0046a1a8  30 20 8d e2                                      add r2, sp, #0x30
0046a1ac  14 30 8d e5                                      str r3, [sp, #0x14]
0046a1b0  10 20 8d e5                                      str r2, [sp, #0x10]
0046a1b4  53 30 8d e2                                      add r3, sp, #0x53
0046a1b8  40 20 8d e2                                      add r2, sp, #0x40
0046a1bc  0c 30 8d e5                                      str r3, [sp, #0xc]
0046a1c0  20 20 8d e5                                      str r2, [sp, #0x20]
0046a1c4  00 50 9a e5                                      ldr r5, [sl]
0046a1c8  24 30 9d e5                                      ldr r3, [sp, #0x24]
0046a1cc  00 70 95 e5                                      ldr r7, [r5]
0046a1d0  00 80 93 e5                                      ldr r8, [r3]
0046a1d4  07 00 a0 e1                                      mov r0, r7
0046a1d8  08 3f fe eb                                      bl #0x3f9e00
0046a1dc  00 81 98 e7                                      ldr r8, [r8, r0, lsl #2]
0046a1e0  08 00 a0 e1                                      mov r0, r8
0046a1e4  1a 8f fa eb                                      bl #0x30de54
0046a1e8  08 10 a0 e1                                      mov r1, r8
0046a1ec  00 20 88 e0                                      add r2, r8, r0
0046a1f0  06 00 a0 e1                                      mov r0, r6
0046a1f4  f9 99 fa eb                                      bl #0x3109e0
0046a1f8  04 00 a0 e1                                      mov r0, r4
0046a1fc  06 10 a0 e1                                      mov r1, r6
0046a200  18 dd ff eb                                      bl #0x461668
0046a204  d4 30 d5 e1                                      ldrsb r3, [r5, #4]
0046a208  04 00 a0 e1                                      mov r0, r4
0046a20c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0046a210  3c 30 8d e5                                      str r3, [sp, #0x3c]
0046a214  7b 85 fc eb                                      bl #0x38b808
0046a218  d5 30 d5 e1                                      ldrsb r3, [r5, #5]
0046a21c  04 00 a0 e1                                      mov r0, r4
0046a220  18 10 9d e5                                      ldr r1, [sp, #0x18]
0046a224  38 30 8d e5                                      str r3, [sp, #0x38]
0046a228  76 85 fc eb                                      bl #0x38b808
0046a22c  f0 35 d7 e1                                      ldrsh r3, [r7, #0x50]
0046a230  04 00 a0 e1                                      mov r0, r4
0046a234  14 10 9d e5                                      ldr r1, [sp, #0x14]
0046a238  34 30 8d e5                                      str r3, [sp, #0x34]
0046a23c  71 85 fc eb                                      bl #0x38b808
0046a240  54 30 97 e5                                      ldr r3, [r7, #0x54]
0046a244  04 00 a0 e1                                      mov r0, r4
0046a248  10 10 9d e5                                      ldr r1, [sp, #0x10]
0046a24c  30 30 8d e5                                      str r3, [sp, #0x30]
0046a250  6c 85 fc eb                                      bl #0x38b808
0046a254  68 30 d7 e5                                      ldrb r3, [r7, #0x68]
0046a258  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0046a25c  04 00 a0 e1                                      mov r0, r4
0046a260  53 30 cd e5                                      strb r3, [sp, #0x53]
0046a264  6f d5 fc eb                                      bl #0x39f828
0046a268  07 00 a0 e1                                      mov r0, r7
0046a26c  03 3f fe eb                                      bl #0x3f9e80
0046a270  20 10 9d e5                                      ldr r1, [sp, #0x20]
0046a274  40 00 8d e5                                      str r0, [sp, #0x40]
0046a278  04 00 a0 e1                                      mov r0, r4
0046a27c  3b dd ff eb                                      bl #0x461770
0046a280  40 30 9d e5                                      ldr r3, [sp, #0x40]
0046a284  00 00 53 e3                                      cmp r3, #0
0046a288  14 00 00 0a                                      beq #0x46a2e0
0046a28c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0046a290  00 50 a0 e3                                      mov r5, #0
0046a294  02 80 99 e7                                      ldr r8, [sb, r2]
0046a298  05 10 a0 e1                                      mov r1, r5
0046a29c  07 00 a0 e1                                      mov r0, r7
0046a2a0  00 b0 98 e5                                      ldr fp, [r8]
0046a2a4  63 3f fe eb                                      bl #0x3fa038
0046a2a8  00 b1 9b e7                                      ldr fp, [fp, r0, lsl #2]
0046a2ac  01 50 85 e2                                      add r5, r5, #1
0046a2b0  0b 00 a0 e1                                      mov r0, fp
0046a2b4  e6 8e fa eb                                      bl #0x30de54
0046a2b8  0b 10 a0 e1                                      mov r1, fp
0046a2bc  00 20 8b e0                                      add r2, fp, r0
0046a2c0  06 00 a0 e1                                      mov r0, r6
0046a2c4  c5 99 fa eb                                      bl #0x3109e0
0046a2c8  04 00 a0 e1                                      mov r0, r4
0046a2cc  06 10 a0 e1                                      mov r1, r6
0046a2d0  e4 dc ff eb                                      bl #0x461668
0046a2d4  40 30 9d e5                                      ldr r3, [sp, #0x40]
0046a2d8  05 00 53 e1                                      cmp r3, r5
0046a2dc  ed ff ff 8a                                      bhi #0x46a298
0046a2e0  08 30 9d e5                                      ldr r3, [sp, #8]
0046a2e4  04 a0 8a e2                                      add sl, sl, #4
0046a2e8  03 00 5a e1                                      cmp sl, r3
0046a2ec  b4 ff ff 1a                                      bne #0x46a1c4
0046a2f0  06 00 a0 e1                                      mov r0, r6
0046a2f4  ac a5 fa eb                                      bl #0x3139ac
0046a2f8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0046a2fc  02 30 99 e7                                      ldr r3, [sb, r2]
0046a300  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0046a304  00 30 93 e5                                      ldr r3, [r3]
0046a308  03 00 52 e1                                      cmp r2, r3
0046a30c  19 00 00 1a                                      bne #0x46a378
0046a310  74 d0 8d e2                                      add sp, sp, #0x74
0046a314  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046a318  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0046a31c  02 20 99 e7                                      ldr r2, [sb, r2]
0046a320  00 20 92 e5                                      ldr r2, [r2]
0046a324  02 00 52 e3                                      cmp r2, #2
0046a328  00 30 83 05                                      streq r3, [r3]
0046a32c  f1 ff ff 0a                                      beq #0x46a2f8
0046a330  01 00 52 e3                                      cmp r2, #1
0046a334  ef ff ff 1a                                      bne #0x46a2f8
0046a338  50 00 9f e5                                      ldr r0, [pc, #0x50]
0046a33c  50 10 9f e5                                      ldr r1, [pc, #0x50]
0046a340  50 20 9f e5                                      ldr r2, [pc, #0x50]
0046a344  00 00 99 e7                                      ldr r0, [sb, r0]
0046a348  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0046a34c  de c2 00 e3                                      movw ip, #0x2de
0046a350  01 10 8f e0                                      add r1, pc, r1
0046a354  03 30 8f e0                                      add r3, pc, r3
0046a358  a8 00 80 e2                                      add r0, r0, #0xa8
0046a35c  02 20 8f e0                                      add r2, pc, r2
0046a360  00 c0 8d e5                                      str ip, [sp]
0046a364  26 8f fa eb                                      bl #0x30e004
0046a368  10 30 95 e5                                      ldr r3, [r5, #0x10]
0046a36c  00 00 53 e3                                      cmp r3, #0
0046a370  e0 ff ff 0a                                      beq #0x46a2f8
0046a374  5c ff ff ea                                      b #0x46a0ec
0046a378  e4 8f fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046a37c  cc a9 52 00 ac 40 00 00 54 1c 00 00 cc 12 00 00  .byte 0xcc, 0xa9, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x1c, 0x00, 0x00, 0xcc, 0x12, 0x00, 0x00
0046a38c  c0 39 00 00 c0 19 00 00 88 40 45 00 3c 31 46 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x88, 0x40, 0x45, 0x00, 0x3c, 0x31, 0x46, 0x00
0046a39c  54 31 46 00                                      .byte 0x54, 0x31, 0x46, 0x00

; FUNCTION 0x0046a3a0, declared_size=1024, range_size=1024, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame15__LoadInventoryEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadInventory(IStreamBase*, void*)
; decoder-mode: arm
0046a3a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046a3a4  c8 43 9f e5                                      ldr r4, [pc, #0x3c8]
0046a3a8  c8 23 9f e5                                      ldr r2, [pc, #0x3c8]
0046a3ac  84 d0 4d e2                                      sub sp, sp, #0x84
0046a3b0  04 40 8f e0                                      add r4, pc, r4
0046a3b4  3c 20 8d e5                                      str r2, [sp, #0x3c]
0046a3b8  02 20 94 e7                                      ldr r2, [r4, r2]
0046a3bc  14 10 8d e5                                      str r1, [sp, #0x14]
0046a3c0  10 30 91 e5                                      ldr r3, [r1, #0x10]
0046a3c4  00 20 92 e5                                      ldr r2, [r2]
0046a3c8  00 50 a0 e1                                      mov r5, r0
0046a3cc  00 00 53 e3                                      cmp r3, #0
0046a3d0  7c 20 8d e5                                      str r2, [sp, #0x7c]
0046a3d4  cc 00 00 0a                                      beq #0x46a70c
0046a3d8  64 10 8d e2                                      add r1, sp, #0x64
0046a3dc  01 00 a0 e1                                      mov r0, r1
0046a3e0  08 10 8d e5                                      str r1, [sp, #8]
0046a3e4  10 10 a0 e3                                      mov r1, #0x10
0046a3e8  74 00 8d e5                                      str r0, [sp, #0x74]
0046a3ec  78 00 8d e5                                      str r0, [sp, #0x78]
0046a3f0  a1 9c fa eb                                      bl #0x31167c
0046a3f4  74 30 9d e5                                      ldr r3, [sp, #0x74]
0046a3f8  00 60 a0 e3                                      mov r6, #0
0046a3fc  5c 10 8d e2                                      add r1, sp, #0x5c
0046a400  00 60 c3 e5                                      strb r6, [r3]
0046a404  05 00 a0 e1                                      mov r0, r5
0046a408  ce a5 fa eb                                      bl #0x313b48
0046a40c  05 00 a0 e1                                      mov r0, r5
0046a410  58 10 8d e2                                      add r1, sp, #0x58
0046a414  cb a5 fa eb                                      bl #0x313b48
0046a418  05 00 a0 e1                                      mov r0, r5
0046a41c  54 10 8d e2                                      add r1, sp, #0x54
0046a420  c8 a5 fa eb                                      bl #0x313b48
0046a424  14 30 9d e5                                      ldr r3, [sp, #0x14]
0046a428  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
0046a42c  10 00 93 e5                                      ldr r0, [r3, #0x10]
0046a430  df 0f 80 e2                                      add r0, r0, #0x37c
0046a434  e7 4e fe eb                                      bl #0x3fdfd8
0046a438  14 00 9d e5                                      ldr r0, [sp, #0x14]
0046a43c  58 20 9d e5                                      ldr r2, [sp, #0x58]
0046a440  10 30 90 e5                                      ldr r3, [r0, #0x10]
0046a444  aa 23 c3 e5                                      strb r2, [r3, #0x3aa]
0046a448  54 30 9d e5                                      ldr r3, [sp, #0x54]
0046a44c  06 00 53 e1                                      cmp r3, r6
0046a450  9f 00 00 0a                                      beq #0x46a6d4
0046a454  20 13 9f e5                                      ldr r1, [pc, #0x320]
0046a458  20 23 9f e5                                      ldr r2, [pc, #0x320]
0046a45c  20 33 9f e5                                      ldr r3, [pc, #0x320]
0046a460  20 03 9f e5                                      ldr r0, [pc, #0x320]
0046a464  20 10 8d e5                                      str r1, [sp, #0x20]
0046a468  38 20 8d e5                                      str r2, [sp, #0x38]
0046a46c  50 10 8d e2                                      add r1, sp, #0x50
0046a470  4c 20 8d e2                                      add r2, sp, #0x4c
0046a474  0c 30 8d e5                                      str r3, [sp, #0xc]
0046a478  10 00 8d e5                                      str r0, [sp, #0x10]
0046a47c  1c 10 8d e5                                      str r1, [sp, #0x1c]
0046a480  34 20 8d e5                                      str r2, [sp, #0x34]
0046a484  48 30 8d e2                                      add r3, sp, #0x48
0046a488  44 00 8d e2                                      add r0, sp, #0x44
0046a48c  63 10 8d e2                                      add r1, sp, #0x63
0046a490  40 20 8d e2                                      add r2, sp, #0x40
0046a494  18 60 8d e5                                      str r6, [sp, #0x18]
0046a498  30 30 8d e5                                      str r3, [sp, #0x30]
0046a49c  2c 00 8d e5                                      str r0, [sp, #0x2c]
0046a4a0  24 10 8d e5                                      str r1, [sp, #0x24]
0046a4a4  28 20 8d e5                                      str r2, [sp, #0x28]
0046a4a8  05 00 a0 e1                                      mov r0, r5
0046a4ac  08 10 9d e5                                      ldr r1, [sp, #8]
0046a4b0  3c de ff eb                                      bl #0x461da8
0046a4b4  20 00 9d e5                                      ldr r0, [sp, #0x20]
0046a4b8  78 a0 9d e5                                      ldr sl, [sp, #0x78]
0046a4bc  00 30 94 e7                                      ldr r3, [r4, r0]
0046a4c0  00 70 93 e5                                      ldr r7, [r3]
0046a4c4  00 00 57 e3                                      cmp r7, #0
0046a4c8  8d 00 00 0a                                      beq #0x46a704
0046a4cc  38 10 9d e5                                      ldr r1, [sp, #0x38]
0046a4d0  00 60 a0 e3                                      mov r6, #0
0046a4d4  01 30 94 e7                                      ldr r3, [r4, r1]
0046a4d8  00 80 93 e5                                      ldr r8, [r3]
0046a4dc  02 00 00 ea                                      b #0x46a4ec
0046a4e0  01 60 86 e2                                      add r6, r6, #1
0046a4e4  07 00 56 e1                                      cmp r6, r7
0046a4e8  85 00 00 0a                                      beq #0x46a704
0046a4ec  0a 00 a0 e1                                      mov r0, sl
0046a4f0  06 11 98 e7                                      ldr r1, [r8, r6, lsl #2]
0046a4f4  88 8f fa eb                                      bl #0x30e31c
0046a4f8  00 00 50 e3                                      cmp r0, #0
0046a4fc  f7 ff ff 1a                                      bne #0x46a4e0
0046a500  05 00 a0 e1                                      mov r0, r5
0046a504  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0046a508  92 84 fc eb                                      bl #0x38b758
0046a50c  05 00 a0 e1                                      mov r0, r5
0046a510  34 10 9d e5                                      ldr r1, [sp, #0x34]
0046a514  8f 84 fc eb                                      bl #0x38b758
0046a518  05 00 a0 e1                                      mov r0, r5
0046a51c  30 10 9d e5                                      ldr r1, [sp, #0x30]
0046a520  8c 84 fc eb                                      bl #0x38b758
0046a524  05 00 a0 e1                                      mov r0, r5
0046a528  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0046a52c  89 84 fc eb                                      bl #0x38b758
0046a530  05 00 a0 e1                                      mov r0, r5
0046a534  24 10 9d e5                                      ldr r1, [sp, #0x24]
0046a538  3e d4 fc eb                                      bl #0x39f638
0046a53c  05 00 a0 e1                                      mov r0, r5
0046a540  28 10 9d e5                                      ldr r1, [sp, #0x28]
0046a544  7f a5 fa eb                                      bl #0x313b48
0046a548  00 10 a0 e3                                      mov r1, #0
0046a54c  6c 00 a0 e3                                      mov r0, #0x6c
0046a550  06 98 fa eb                                      bl #0x310570
0046a554  06 10 a0 e1                                      mov r1, r6
0046a558  00 70 a0 e1                                      mov r7, r0
0046a55c  48 20 9d e5                                      ldr r2, [sp, #0x48]
0046a560  41 47 fe eb                                      bl #0x3fc26c
0046a564  07 00 a0 e1                                      mov r0, r7
0046a568  44 10 9d e5                                      ldr r1, [sp, #0x44]
0046a56c  b9 45 fe eb                                      bl #0x3fbc58
0046a570  63 30 dd e5                                      ldrb r3, [sp, #0x63]
0046a574  00 30 53 e2                                      subs r3, r3, #0
0046a578  01 30 a0 13                                      movne r3, #1
0046a57c  68 30 c7 e5                                      strb r3, [r7, #0x68]
0046a580  40 30 9d e5                                      ldr r3, [sp, #0x40]
0046a584  00 00 53 e3                                      cmp r3, #0
0046a588  1e 00 00 0a                                      beq #0x46a608
0046a58c  00 60 a0 e3                                      mov r6, #0
0046a590  05 00 a0 e1                                      mov r0, r5
0046a594  08 10 9d e5                                      ldr r1, [sp, #8]
0046a598  02 de ff eb                                      bl #0x461da8
0046a59c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0046a5a0  78 90 9d e5                                      ldr sb, [sp, #0x78]
0046a5a4  02 30 94 e7                                      ldr r3, [r4, r2]
0046a5a8  00 a0 93 e5                                      ldr sl, [r3]
0046a5ac  00 00 5a e3                                      cmp sl, #0
0046a5b0  51 00 00 0a                                      beq #0x46a6fc
0046a5b4  10 00 9d e5                                      ldr r0, [sp, #0x10]
0046a5b8  00 80 a0 e3                                      mov r8, #0
0046a5bc  00 30 94 e7                                      ldr r3, [r4, r0]
0046a5c0  00 b0 93 e5                                      ldr fp, [r3]
0046a5c4  02 00 00 ea                                      b #0x46a5d4
0046a5c8  01 80 88 e2                                      add r8, r8, #1
0046a5cc  0a 00 58 e1                                      cmp r8, sl
0046a5d0  49 00 00 0a                                      beq #0x46a6fc
0046a5d4  09 00 a0 e1                                      mov r0, sb
0046a5d8  08 11 9b e7                                      ldr r1, [fp, r8, lsl #2]
0046a5dc  4e 8f fa eb                                      bl #0x30e31c
0046a5e0  00 00 50 e3                                      cmp r0, #0
0046a5e4  f7 ff ff 1a                                      bne #0x46a5c8
0046a5e8  08 10 a0 e1                                      mov r1, r8
0046a5ec  07 00 a0 e1                                      mov r0, r7
0046a5f0  00 20 e0 e3                                      mvn r2, #0
0046a5f4  99 45 fe eb                                      bl #0x3fbc60
0046a5f8  40 30 9d e5                                      ldr r3, [sp, #0x40]
0046a5fc  01 60 86 e2                                      add r6, r6, #1
0046a600  06 00 53 e1                                      cmp r3, r6
0046a604  e1 ff ff 8a                                      bhi #0x46a590
0046a608  14 10 9d e5                                      ldr r1, [sp, #0x14]
0046a60c  01 20 a0 e3                                      mov r2, #1
0046a610  02 30 a0 e1                                      mov r3, r2
0046a614  10 00 91 e5                                      ldr r0, [r1, #0x10]
0046a618  07 10 a0 e1                                      mov r1, r7
0046a61c  df 0f 80 e2                                      add r0, r0, #0x37c
0046a620  eb 53 fe eb                                      bl #0x3ff5d4
0046a624  50 30 9d e5                                      ldr r3, [sp, #0x50]
0046a628  00 60 a0 e1                                      mov r6, r0
0046a62c  01 00 73 e3                                      cmn r3, #1
0046a630  0e 00 00 0a                                      beq #0x46a670
0046a634  14 20 9d e5                                      ldr r2, [sp, #0x14]
0046a638  01 30 a0 e3                                      mov r3, #1
0046a63c  10 10 92 e5                                      ldr r1, [r2, #0x10]
0046a640  00 20 a0 e1                                      mov r2, r0
0046a644  00 00 a0 e3                                      mov r0, #0
0046a648  aa 73 d1 e5                                      ldrb r7, [r1, #0x3aa]
0046a64c  aa 03 c1 e5                                      strb r0, [r1, #0x3aa]
0046a650  14 10 9d e5                                      ldr r1, [sp, #0x14]
0046a654  10 00 91 e5                                      ldr r0, [r1, #0x10]
0046a658  50 10 9d e5                                      ldr r1, [sp, #0x50]
0046a65c  df 0f 80 e2                                      add r0, r0, #0x37c
0046a660  f3 57 fe eb                                      bl #0x400634
0046a664  14 20 9d e5                                      ldr r2, [sp, #0x14]
0046a668  10 30 92 e5                                      ldr r3, [r2, #0x10]
0046a66c  aa 73 c3 e5                                      strb r7, [r3, #0x3aa]
0046a670  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0046a674  01 00 73 e3                                      cmn r3, #1
0046a678  0e 00 00 0a                                      beq #0x46a6b8
0046a67c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0046a680  01 00 a0 e3                                      mov r0, #1
0046a684  06 20 a0 e1                                      mov r2, r6
0046a688  10 10 93 e5                                      ldr r1, [r3, #0x10]
0046a68c  01 30 a0 e3                                      mov r3, #1
0046a690  aa 63 d1 e5                                      ldrb r6, [r1, #0x3aa]
0046a694  aa 03 c1 e5                                      strb r0, [r1, #0x3aa]
0046a698  14 10 9d e5                                      ldr r1, [sp, #0x14]
0046a69c  10 00 91 e5                                      ldr r0, [r1, #0x10]
0046a6a0  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0046a6a4  df 0f 80 e2                                      add r0, r0, #0x37c
0046a6a8  e1 57 fe eb                                      bl #0x400634
0046a6ac  14 20 9d e5                                      ldr r2, [sp, #0x14]
0046a6b0  10 30 92 e5                                      ldr r3, [r2, #0x10]
0046a6b4  aa 63 c3 e5                                      strb r6, [r3, #0x3aa]
0046a6b8  18 30 9d e5                                      ldr r3, [sp, #0x18]
0046a6bc  01 30 83 e2                                      add r3, r3, #1
0046a6c0  18 30 8d e5                                      str r3, [sp, #0x18]
0046a6c4  18 00 9d e5                                      ldr r0, [sp, #0x18]
0046a6c8  54 30 9d e5                                      ldr r3, [sp, #0x54]
0046a6cc  00 00 53 e1                                      cmp r3, r0
0046a6d0  74 ff ff 8a                                      bhi #0x46a4a8
0046a6d4  08 00 9d e5                                      ldr r0, [sp, #8]
0046a6d8  b3 a4 fa eb                                      bl #0x3139ac
0046a6dc  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0046a6e0  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0046a6e4  01 30 94 e7                                      ldr r3, [r4, r1]
0046a6e8  00 30 93 e5                                      ldr r3, [r3]
0046a6ec  03 00 52 e1                                      cmp r2, r3
0046a6f0  1e 00 00 1a                                      bne #0x46a770
0046a6f4  84 d0 8d e2                                      add sp, sp, #0x84
0046a6f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046a6fc  00 10 e0 e3                                      mvn r1, #0
0046a700  b9 ff ff ea                                      b #0x46a5ec
0046a704  00 60 e0 e3                                      mvn r6, #0
0046a708  7c ff ff ea                                      b #0x46a500
0046a70c  78 20 9f e5                                      ldr r2, [pc, #0x78]
0046a710  02 20 94 e7                                      ldr r2, [r4, r2]
0046a714  00 20 92 e5                                      ldr r2, [r2]
0046a718  02 00 52 e3                                      cmp r2, #2
0046a71c  00 30 83 05                                      streq r3, [r3]
0046a720  ed ff ff 0a                                      beq #0x46a6dc
0046a724  01 00 52 e3                                      cmp r2, #1
0046a728  eb ff ff 1a                                      bne #0x46a6dc
0046a72c  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
0046a730  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0046a734  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0046a738  00 00 94 e7                                      ldr r0, [r4, r0]
0046a73c  58 30 9f e5                                      ldr r3, [pc, #0x58]
0046a740  8f c2 00 e3                                      movw ip, #0x28f
0046a744  01 10 8f e0                                      add r1, pc, r1
0046a748  03 30 8f e0                                      add r3, pc, r3
0046a74c  a8 00 80 e2                                      add r0, r0, #0xa8
0046a750  02 20 8f e0                                      add r2, pc, r2
0046a754  00 c0 8d e5                                      str ip, [sp]
0046a758  29 8e fa eb                                      bl #0x30e004
0046a75c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0046a760  10 30 90 e5                                      ldr r3, [r0, #0x10]
0046a764  00 00 53 e3                                      cmp r3, #0
0046a768  db ff ff 0a                                      beq #0x46a6dc
0046a76c  19 ff ff ea                                      b #0x46a3d8
0046a770  e6 8e fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046a774  e0 a6 52 00 ac 40 00 00 60 0d 00 00 54 1c 00 00  .byte 0xe0, 0xa6, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x60, 0x0d, 0x00, 0x00, 0x54, 0x1c, 0x00, 0x00
0046a784  88 11 00 00 cc 12 00 00 c0 39 00 00 c0 19 00 00  .byte 0x88, 0x11, 0x00, 0x00, 0xcc, 0x12, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0046a794  94 3c 45 00 48 2d 46 00 60 2d 46 00              .byte 0x94, 0x3c, 0x45, 0x00, 0x48, 0x2d, 0x46, 0x00, 0x60, 0x2d, 0x46, 0x00

; FUNCTION 0x0046a7a0, declared_size=556, range_size=556, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17__SaveLevelStatesEP11IStreamBasePv
; demangled: PlayerSavegame::__SaveLevelStates(IStreamBase*, void*)
; decoder-mode: arm
0046a7a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046a7a4  08 22 9f e5                                      ldr r2, [pc, #0x208]
0046a7a8  08 32 9f e5                                      ldr r3, [pc, #0x208]
0046a7ac  44 d0 4d e2                                      sub sp, sp, #0x44
0046a7b0  02 20 8f e0                                      add r2, pc, r2
0046a7b4  14 30 8d e5                                      str r3, [sp, #0x14]
0046a7b8  03 30 92 e7                                      ldr r3, [r2, r3]
0046a7bc  68 00 71 e3                                      cmn r1, #0x68
0046a7c0  04 20 8d e5                                      str r2, [sp, #4]
0046a7c4  00 30 93 e5                                      ldr r3, [r3]
0046a7c8  01 70 a0 e1                                      mov r7, r1
0046a7cc  00 50 a0 e1                                      mov r5, r0
0046a7d0  3c 30 8d e5                                      str r3, [sp, #0x3c]
0046a7d4  6c 00 00 0a                                      beq #0x46a98c
0046a7d8  74 00 71 e3                                      cmn r1, #0x74
0046a7dc  6a 00 00 0a                                      beq #0x46a98c
0046a7e0  24 60 8d e2                                      add r6, sp, #0x24
0046a7e4  10 10 a0 e3                                      mov r1, #0x10
0046a7e8  06 00 a0 e1                                      mov r0, r6
0046a7ec  34 60 8d e5                                      str r6, [sp, #0x34]
0046a7f0  38 60 8d e5                                      str r6, [sp, #0x38]
0046a7f4  a0 9b fa eb                                      bl #0x31167c
0046a7f8  04 20 9d e5                                      ldr r2, [sp, #4]
0046a7fc  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
0046a800  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
0046a804  00 80 a0 e3                                      mov r8, #0
0046a808  03 30 92 e7                                      ldr r3, [r2, r3]
0046a80c  0c 10 8d e5                                      str r1, [sp, #0xc]
0046a810  1c 90 8d e2                                      add sb, sp, #0x1c
0046a814  08 30 8d e5                                      str r3, [sp, #8]
0046a818  34 30 9d e5                                      ldr r3, [sp, #0x34]
0046a81c  00 80 c3 e5                                      strb r8, [r3]
0046a820  20 30 8d e2                                      add r3, sp, #0x20
0046a824  10 30 8d e5                                      str r3, [sp, #0x10]
0046a828  08 10 9d e5                                      ldr r1, [sp, #8]
0046a82c  05 00 a0 e1                                      mov r0, r5
0046a830  00 30 91 e5                                      ldr r3, [r1]
0046a834  10 10 9d e5                                      ldr r1, [sp, #0x10]
0046a838  20 30 8d e5                                      str r3, [sp, #0x20]
0046a83c  f1 83 fc eb                                      bl #0x38b808
0046a840  20 30 9d e5                                      ldr r3, [sp, #0x20]
0046a844  00 00 53 e3                                      cmp r3, #0
0046a848  1a 00 00 da                                      ble #0x46a8b8
0046a84c  04 30 9d e5                                      ldr r3, [sp, #4]
0046a850  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0046a854  00 40 a0 e3                                      mov r4, #0
0046a858  02 a0 93 e7                                      ldr sl, [r3, r2]
0046a85c  00 30 9a e5                                      ldr r3, [sl]
0046a860  04 b1 93 e7                                      ldr fp, [r3, r4, lsl #2]
0046a864  0b 00 a0 e1                                      mov r0, fp
0046a868  79 8d fa eb                                      bl #0x30de54
0046a86c  0b 10 a0 e1                                      mov r1, fp
0046a870  00 20 8b e0                                      add r2, fp, r0
0046a874  06 00 a0 e1                                      mov r0, r6
0046a878  58 98 fa eb                                      bl #0x3109e0
0046a87c  05 00 a0 e1                                      mov r0, r5
0046a880  06 10 a0 e1                                      mov r1, r6
0046a884  77 db ff eb                                      bl #0x461668
0046a888  04 10 a0 e1                                      mov r1, r4
0046a88c  08 20 a0 e1                                      mov r2, r8
0046a890  07 00 a0 e1                                      mov r0, r7
0046a894  e9 f1 ff eb                                      bl #0x467040
0046a898  09 10 a0 e1                                      mov r1, sb
0046a89c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0046a8a0  05 00 a0 e1                                      mov r0, r5
0046a8a4  d7 83 fc eb                                      bl #0x38b808
0046a8a8  20 30 9d e5                                      ldr r3, [sp, #0x20]
0046a8ac  01 40 84 e2                                      add r4, r4, #1
0046a8b0  04 00 53 e1                                      cmp r3, r4
0046a8b4  e8 ff ff ca                                      bgt #0x46a85c
0046a8b8  01 80 88 e2                                      add r8, r8, #1
0046a8bc  03 00 58 e3                                      cmp r8, #3
0046a8c0  d8 ff ff 1a                                      bne #0x46a828
0046a8c4  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0046a8c8  04 20 9d e5                                      ldr r2, [sp, #4]
0046a8cc  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
0046a8d0  00 80 a0 e3                                      mov r8, #0
0046a8d4  03 30 92 e7                                      ldr r3, [r2, r3]
0046a8d8  0c 10 8d e5                                      str r1, [sp, #0xc]
0046a8dc  1c 90 8d e2                                      add sb, sp, #0x1c
0046a8e0  08 30 8d e5                                      str r3, [sp, #8]
0046a8e4  07 a0 a0 e1                                      mov sl, r7
0046a8e8  08 10 9d e5                                      ldr r1, [sp, #8]
0046a8ec  05 00 a0 e1                                      mov r0, r5
0046a8f0  00 30 91 e5                                      ldr r3, [r1]
0046a8f4  10 10 9d e5                                      ldr r1, [sp, #0x10]
0046a8f8  20 30 8d e5                                      str r3, [sp, #0x20]
0046a8fc  c1 83 fc eb                                      bl #0x38b808
0046a900  20 30 9d e5                                      ldr r3, [sp, #0x20]
0046a904  00 00 53 e3                                      cmp r3, #0
0046a908  1a 00 00 da                                      ble #0x46a978
0046a90c  04 30 9d e5                                      ldr r3, [sp, #4]
0046a910  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0046a914  00 40 a0 e3                                      mov r4, #0
0046a918  02 70 93 e7                                      ldr r7, [r3, r2]
0046a91c  00 30 97 e5                                      ldr r3, [r7]
0046a920  04 b1 93 e7                                      ldr fp, [r3, r4, lsl #2]
0046a924  0b 00 a0 e1                                      mov r0, fp
0046a928  49 8d fa eb                                      bl #0x30de54
0046a92c  0b 10 a0 e1                                      mov r1, fp
0046a930  00 20 8b e0                                      add r2, fp, r0
0046a934  06 00 a0 e1                                      mov r0, r6
0046a938  28 98 fa eb                                      bl #0x3109e0
0046a93c  05 00 a0 e1                                      mov r0, r5
0046a940  06 10 a0 e1                                      mov r1, r6
0046a944  47 db ff eb                                      bl #0x461668
0046a948  04 10 a0 e1                                      mov r1, r4
0046a94c  08 20 a0 e1                                      mov r2, r8
0046a950  0a 00 a0 e1                                      mov r0, sl
0046a954  ed f0 ff eb                                      bl #0x466d10
0046a958  09 10 a0 e1                                      mov r1, sb
0046a95c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0046a960  05 00 a0 e1                                      mov r0, r5
0046a964  a7 83 fc eb                                      bl #0x38b808
0046a968  20 30 9d e5                                      ldr r3, [sp, #0x20]
0046a96c  01 40 84 e2                                      add r4, r4, #1
0046a970  04 00 53 e1                                      cmp r3, r4
0046a974  e8 ff ff ca                                      bgt #0x46a91c
0046a978  01 80 88 e2                                      add r8, r8, #1
0046a97c  03 00 58 e3                                      cmp r8, #3
0046a980  d8 ff ff 1a                                      bne #0x46a8e8
0046a984  06 00 a0 e1                                      mov r0, r6
0046a988  07 a4 fa eb                                      bl #0x3139ac
0046a98c  04 20 9d e5                                      ldr r2, [sp, #4]
0046a990  14 10 9d e5                                      ldr r1, [sp, #0x14]
0046a994  01 30 92 e7                                      ldr r3, [r2, r1]
0046a998  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0046a99c  00 30 93 e5                                      ldr r3, [r3]
0046a9a0  03 00 52 e1                                      cmp r2, r3
0046a9a4  01 00 00 1a                                      bne #0x46a9b0
0046a9a8  44 d0 8d e2                                      add sp, sp, #0x44
0046a9ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046a9b0  56 8e fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046a9b4  e0 a2 52 00 ac 40 00 00 c0 18 00 00 5c 3b 00 00  .byte 0xe0, 0xa2, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00
0046a9c4  74 22 00 00 68 23 00 00                          .byte 0x74, 0x22, 0x00, 0x00, 0x68, 0x23, 0x00, 0x00

; FUNCTION 0x0046a9cc, declared_size=648, range_size=648, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame17__LoadLevelStatesEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadLevelStates(IStreamBase*, void*)
; decoder-mode: arm
0046a9cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046a9d0  64 42 9f e5                                      ldr r4, [pc, #0x264]
0046a9d4  64 22 9f e5                                      ldr r2, [pc, #0x264]
0046a9d8  4c d0 4d e2                                      sub sp, sp, #0x4c
0046a9dc  04 40 8f e0                                      add r4, pc, r4
0046a9e0  02 30 94 e7                                      ldr r3, [r4, r2]
0046a9e4  68 00 71 e3                                      cmn r1, #0x68
0046a9e8  1c 20 8d e5                                      str r2, [sp, #0x1c]
0046a9ec  00 30 93 e5                                      ldr r3, [r3]
0046a9f0  14 10 8d e5                                      str r1, [sp, #0x14]
0046a9f4  00 50 a0 e1                                      mov r5, r0
0046a9f8  44 30 8d e5                                      str r3, [sp, #0x44]
0046a9fc  7d 00 00 0a                                      beq #0x46abf8
0046aa00  74 00 71 e3                                      cmn r1, #0x74
0046aa04  7b 00 00 0a                                      beq #0x46abf8
0046aa08  2c 70 8d e2                                      add r7, sp, #0x2c
0046aa0c  07 00 a0 e1                                      mov r0, r7
0046aa10  10 10 a0 e3                                      mov r1, #0x10
0046aa14  3c 70 8d e5                                      str r7, [sp, #0x3c]
0046aa18  40 70 8d e5                                      str r7, [sp, #0x40]
0046aa1c  16 9b fa eb                                      bl #0x31167c
0046aa20  1c 22 9f e5                                      ldr r2, [pc, #0x21c]
0046aa24  1c 32 9f e5                                      ldr r3, [pc, #0x21c]
0046aa28  04 20 8d e5                                      str r2, [sp, #4]
0046aa2c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0046aa30  0c 30 8d e5                                      str r3, [sp, #0xc]
0046aa34  00 30 a0 e3                                      mov r3, #0
0046aa38  00 30 c2 e5                                      strb r3, [r2]
0046aa3c  10 30 8d e5                                      str r3, [sp, #0x10]
0046aa40  28 20 8d e2                                      add r2, sp, #0x28
0046aa44  24 30 8d e2                                      add r3, sp, #0x24
0046aa48  18 20 8d e5                                      str r2, [sp, #0x18]
0046aa4c  08 30 8d e5                                      str r3, [sp, #8]
0046aa50  05 00 a0 e1                                      mov r0, r5
0046aa54  18 10 9d e5                                      ldr r1, [sp, #0x18]
0046aa58  3e 83 fc eb                                      bl #0x38b758
0046aa5c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0046aa60  00 00 53 e3                                      cmp r3, #0
0046aa64  24 00 00 da                                      ble #0x46aafc
0046aa68  00 60 a0 e3                                      mov r6, #0
0046aa6c  05 00 a0 e1                                      mov r0, r5
0046aa70  07 10 a0 e1                                      mov r1, r7
0046aa74  cb dc ff eb                                      bl #0x461da8
0046aa78  04 20 9d e5                                      ldr r2, [sp, #4]
0046aa7c  40 90 9d e5                                      ldr sb, [sp, #0x40]
0046aa80  02 30 94 e7                                      ldr r3, [r4, r2]
0046aa84  00 a0 93 e5                                      ldr sl, [r3]
0046aa88  00 00 5a e3                                      cmp sl, #0
0046aa8c  65 00 00 0a                                      beq #0x46ac28
0046aa90  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0046aa94  00 80 a0 e3                                      mov r8, #0
0046aa98  02 30 94 e7                                      ldr r3, [r4, r2]
0046aa9c  00 b0 93 e5                                      ldr fp, [r3]
0046aaa0  02 00 00 ea                                      b #0x46aab0
0046aaa4  01 80 88 e2                                      add r8, r8, #1
0046aaa8  0a 00 58 e1                                      cmp r8, sl
0046aaac  5d 00 00 0a                                      beq #0x46ac28
0046aab0  09 00 a0 e1                                      mov r0, sb
0046aab4  08 11 9b e7                                      ldr r1, [fp, r8, lsl #2]
0046aab8  17 8e fa eb                                      bl #0x30e31c
0046aabc  00 00 50 e3                                      cmp r0, #0
0046aac0  f7 ff ff 1a                                      bne #0x46aaa4
0046aac4  05 00 a0 e1                                      mov r0, r5
0046aac8  08 10 9d e5                                      ldr r1, [sp, #8]
0046aacc  21 83 fc eb                                      bl #0x38b758
0046aad0  01 00 78 e3                                      cmn r8, #1
0046aad4  04 00 00 0a                                      beq #0x46aaec
0046aad8  08 10 a0 e1                                      mov r1, r8
0046aadc  14 00 9d e5                                      ldr r0, [sp, #0x14]
0046aae0  24 20 9d e5                                      ldr r2, [sp, #0x24]
0046aae4  10 30 9d e5                                      ldr r3, [sp, #0x10]
0046aae8  d6 f0 ff eb                                      bl #0x466e48
0046aaec  28 30 9d e5                                      ldr r3, [sp, #0x28]
0046aaf0  01 60 86 e2                                      add r6, r6, #1
0046aaf4  06 00 53 e1                                      cmp r3, r6
0046aaf8  db ff ff ca                                      bgt #0x46aa6c
0046aafc  10 30 9d e5                                      ldr r3, [sp, #0x10]
0046ab00  01 30 83 e2                                      add r3, r3, #1
0046ab04  03 00 53 e3                                      cmp r3, #3
0046ab08  10 30 8d e5                                      str r3, [sp, #0x10]
0046ab0c  cf ff ff 1a                                      bne #0x46aa50
0046ab10  34 21 9f e5                                      ldr r2, [pc, #0x134]
0046ab14  34 31 9f e5                                      ldr r3, [pc, #0x134]
0046ab18  08 20 8d e5                                      str r2, [sp, #8]
0046ab1c  0c 30 8d e5                                      str r3, [sp, #0xc]
0046ab20  00 20 a0 e3                                      mov r2, #0
0046ab24  24 30 8d e2                                      add r3, sp, #0x24
0046ab28  10 20 8d e5                                      str r2, [sp, #0x10]
0046ab2c  04 30 8d e5                                      str r3, [sp, #4]
0046ab30  05 00 a0 e1                                      mov r0, r5
0046ab34  18 10 9d e5                                      ldr r1, [sp, #0x18]
0046ab38  06 83 fc eb                                      bl #0x38b758
0046ab3c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0046ab40  00 00 53 e3                                      cmp r3, #0
0046ab44  24 00 00 da                                      ble #0x46abdc
0046ab48  00 60 a0 e3                                      mov r6, #0
0046ab4c  05 00 a0 e1                                      mov r0, r5
0046ab50  07 10 a0 e1                                      mov r1, r7
0046ab54  93 dc ff eb                                      bl #0x461da8
0046ab58  08 20 9d e5                                      ldr r2, [sp, #8]
0046ab5c  40 90 9d e5                                      ldr sb, [sp, #0x40]
0046ab60  02 30 94 e7                                      ldr r3, [r4, r2]
0046ab64  00 a0 93 e5                                      ldr sl, [r3]
0046ab68  00 00 5a e3                                      cmp sl, #0
0046ab6c  29 00 00 0a                                      beq #0x46ac18
0046ab70  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0046ab74  00 80 a0 e3                                      mov r8, #0
0046ab78  02 30 94 e7                                      ldr r3, [r4, r2]
0046ab7c  00 b0 93 e5                                      ldr fp, [r3]
0046ab80  02 00 00 ea                                      b #0x46ab90
0046ab84  01 80 88 e2                                      add r8, r8, #1
0046ab88  0a 00 58 e1                                      cmp r8, sl
0046ab8c  21 00 00 0a                                      beq #0x46ac18
0046ab90  09 00 a0 e1                                      mov r0, sb
0046ab94  08 11 9b e7                                      ldr r1, [fp, r8, lsl #2]
0046ab98  df 8d fa eb                                      bl #0x30e31c
0046ab9c  00 00 50 e3                                      cmp r0, #0
0046aba0  f7 ff ff 1a                                      bne #0x46ab84
0046aba4  05 00 a0 e1                                      mov r0, r5
0046aba8  04 10 9d e5                                      ldr r1, [sp, #4]
0046abac  e9 82 fc eb                                      bl #0x38b758
0046abb0  01 00 78 e3                                      cmn r8, #1
0046abb4  04 00 00 0a                                      beq #0x46abcc
0046abb8  08 10 a0 e1                                      mov r1, r8
0046abbc  14 00 9d e5                                      ldr r0, [sp, #0x14]
0046abc0  24 20 9d e5                                      ldr r2, [sp, #0x24]
0046abc4  10 30 9d e5                                      ldr r3, [sp, #0x10]
0046abc8  d2 ef ff eb                                      bl #0x466b18
0046abcc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0046abd0  01 60 86 e2                                      add r6, r6, #1
0046abd4  06 00 53 e1                                      cmp r3, r6
0046abd8  db ff ff ca                                      bgt #0x46ab4c
0046abdc  10 30 9d e5                                      ldr r3, [sp, #0x10]
0046abe0  01 30 83 e2                                      add r3, r3, #1
0046abe4  03 00 53 e3                                      cmp r3, #3
0046abe8  10 30 8d e5                                      str r3, [sp, #0x10]
0046abec  cf ff ff 1a                                      bne #0x46ab30
0046abf0  07 00 a0 e1                                      mov r0, r7
0046abf4  6c a3 fa eb                                      bl #0x3139ac
0046abf8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0046abfc  02 30 94 e7                                      ldr r3, [r4, r2]
0046ac00  44 20 9d e5                                      ldr r2, [sp, #0x44]
0046ac04  00 30 93 e5                                      ldr r3, [r3]
0046ac08  03 00 52 e1                                      cmp r2, r3
0046ac0c  09 00 00 1a                                      bne #0x46ac38
0046ac10  4c d0 8d e2                                      add sp, sp, #0x4c
0046ac14  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046ac18  05 00 a0 e1                                      mov r0, r5
0046ac1c  04 10 9d e5                                      ldr r1, [sp, #4]
0046ac20  cc 82 fc eb                                      bl #0x38b758
0046ac24  e8 ff ff ea                                      b #0x46abcc
0046ac28  05 00 a0 e1                                      mov r0, r5
0046ac2c  08 10 9d e5                                      ldr r1, [sp, #8]
0046ac30  c8 82 fc eb                                      bl #0x38b758
0046ac34  ac ff ff ea                                      b #0x46aaec
0046ac38  b4 8d fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046ac3c  b4 a0 52 00 ac 40 00 00 c0 18 00 00 5c 3b 00 00  .byte 0xb4, 0xa0, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00
0046ac4c  74 22 00 00 68 23 00 00                          .byte 0x74, 0x22, 0x00, 0x00, 0x68, 0x23, 0x00, 0x00

; FUNCTION 0x0046ac74, declared_size=912, range_size=912, mode=arm
; class-group: PlayerSavegame
; alias: _ZN14PlayerSavegame12__LoadSkillsEP11IStreamBasePv
; demangled: PlayerSavegame::__LoadSkills(IStreamBase*, void*)
; decoder-mode: arm
0046ac74  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046ac78  54 73 9f e5                                      ldr r7, [pc, #0x354]
0046ac7c  54 23 9f e5                                      ldr r2, [pc, #0x354]
0046ac80  64 d0 4d e2                                      sub sp, sp, #0x64
0046ac84  07 70 8f e0                                      add r7, pc, r7
0046ac88  1c 20 8d e5                                      str r2, [sp, #0x1c]
0046ac8c  02 20 97 e7                                      ldr r2, [r7, r2]
0046ac90  80 30 91 e5                                      ldr r3, [r1, #0x80]
0046ac94  01 60 a0 e1                                      mov r6, r1
0046ac98  00 20 92 e5                                      ldr r2, [r2]
0046ac9c  00 00 53 e3                                      cmp r3, #0
0046aca0  00 40 a0 e1                                      mov r4, r0
0046aca4  5c 20 8d e5                                      str r2, [sp, #0x5c]
0046aca8  9e 00 00 0a                                      beq #0x46af28
0046acac  10 30 96 e5                                      ldr r3, [r6, #0x10]
0046acb0  00 00 53 e3                                      cmp r3, #0
0046acb4  b0 00 00 0a                                      beq #0x46af7c
0046acb8  80 30 96 e5                                      ldr r3, [r6, #0x80]
0046acbc  00 00 53 e3                                      cmp r3, #0
0046acc0  87 00 00 0a                                      beq #0x46aee4
0046acc4  10 30 96 e5                                      ldr r3, [r6, #0x10]
0046acc8  00 00 53 e3                                      cmp r3, #0
0046accc  84 00 00 0a                                      beq #0x46aee4
0046acd0  44 30 8d e2                                      add r3, sp, #0x44
0046acd4  03 00 a0 e1                                      mov r0, r3
0046acd8  10 10 a0 e3                                      mov r1, #0x10
0046acdc  0c 30 8d e5                                      str r3, [sp, #0xc]
0046ace0  54 30 8d e5                                      str r3, [sp, #0x54]
0046ace4  58 30 8d e5                                      str r3, [sp, #0x58]
0046ace8  63 9a fa eb                                      bl #0x31167c
0046acec  54 30 9d e5                                      ldr r3, [sp, #0x54]
0046acf0  00 b0 a0 e3                                      mov fp, #0
0046acf4  04 00 a0 e1                                      mov r0, r4
0046acf8  00 b0 c3 e5                                      strb fp, [r3]
0046acfc  3c 10 8d e2                                      add r1, sp, #0x3c
0046ad00  94 82 fc eb                                      bl #0x38b758
0046ad04  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0046ad08  0b 00 53 e1                                      cmp r3, fp
0046ad0c  31 00 00 da                                      ble #0x46add8
0046ad10  c4 22 9f e5                                      ldr r2, [pc, #0x2c4]
0046ad14  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
0046ad18  42 c0 8d e2                                      add ip, sp, #0x42
0046ad1c  10 20 8d e5                                      str r2, [sp, #0x10]
0046ad20  14 30 8d e5                                      str r3, [sp, #0x14]
0046ad24  18 c0 8d e5                                      str ip, [sp, #0x18]
0046ad28  04 00 a0 e1                                      mov r0, r4
0046ad2c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0046ad30  1c dc ff eb                                      bl #0x461da8
0046ad34  10 20 9d e5                                      ldr r2, [sp, #0x10]
0046ad38  58 a0 9d e5                                      ldr sl, [sp, #0x58]
0046ad3c  02 30 97 e7                                      ldr r3, [r7, r2]
0046ad40  00 80 93 e5                                      ldr r8, [r3]
0046ad44  00 00 58 e3                                      cmp r8, #0
0046ad48  6d 00 00 0a                                      beq #0x46af04
0046ad4c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0046ad50  00 50 a0 e3                                      mov r5, #0
0046ad54  0c 30 97 e7                                      ldr r3, [r7, ip]
0046ad58  00 90 93 e5                                      ldr sb, [r3]
0046ad5c  02 00 00 ea                                      b #0x46ad6c
0046ad60  01 50 85 e2                                      add r5, r5, #1
0046ad64  08 00 55 e1                                      cmp r5, r8
0046ad68  65 00 00 0a                                      beq #0x46af04
0046ad6c  0a 00 a0 e1                                      mov r0, sl
0046ad70  05 11 99 e7                                      ldr r1, [sb, r5, lsl #2]
0046ad74  68 8d fa eb                                      bl #0x30e31c
0046ad78  00 00 50 e3                                      cmp r0, #0
0046ad7c  f7 ff ff 1a                                      bne #0x46ad60
0046ad80  84 00 96 e5                                      ldr r0, [r6, #0x84]
0046ad84  00 00 50 e3                                      cmp r0, #0
0046ad88  0b 00 00 0a                                      beq #0x46adbc
0046ad8c  80 20 96 e5                                      ldr r2, [r6, #0x80]
0046ad90  00 30 92 e5                                      ldr r3, [r2]
0046ad94  05 00 53 e1                                      cmp r3, r5
0046ad98  00 30 a0 13                                      movne r3, #0
0046ad9c  03 00 00 1a                                      bne #0x46adb0
0046ada0  59 00 00 ea                                      b #0x46af0c
0046ada4  08 10 b2 e5                                      ldr r1, [r2, #8]!
0046ada8  05 00 51 e1                                      cmp r1, r5
0046adac  56 00 00 0a                                      beq #0x46af0c
0046adb0  01 30 83 e2                                      add r3, r3, #1
0046adb4  00 00 53 e1                                      cmp r3, r0
0046adb8  f9 ff ff 1a                                      bne #0x46ada4
0046adbc  04 00 a0 e1                                      mov r0, r4
0046adc0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0046adc4  a9 f8 ff eb                                      bl #0x469070
0046adc8  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0046adcc  01 b0 8b e2                                      add fp, fp, #1
0046add0  0b 00 53 e1                                      cmp r3, fp
0046add4  d3 ff ff ca                                      bgt #0x46ad28
0046add8  00 30 a0 e3                                      mov r3, #0
0046addc  03 80 a0 e1                                      mov r8, r3
0046ade0  38 30 8d e5                                      str r3, [sp, #0x38]
0046ade4  34 30 8d e5                                      str r3, [sp, #0x34]
0046ade8  38 20 8d e2                                      add r2, sp, #0x38
0046adec  24 30 8d e2                                      add r3, sp, #0x24
0046adf0  14 70 8d e5                                      str r7, [sp, #0x14]
0046adf4  10 20 8d e5                                      str r2, [sp, #0x10]
0046adf8  34 a0 8d e2                                      add sl, sp, #0x34
0046adfc  2c 90 8d e2                                      add sb, sp, #0x2c
0046ae00  30 b0 8d e2                                      add fp, sp, #0x30
0046ae04  03 70 a0 e1                                      mov r7, r3
0046ae08  04 00 a0 e1                                      mov r0, r4
0046ae0c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0046ae10  50 82 fc eb                                      bl #0x38b758
0046ae14  38 30 9d e5                                      ldr r3, [sp, #0x38]
0046ae18  00 00 53 e3                                      cmp r3, #0
0046ae1c  2a 00 00 da                                      ble #0x46aecc
0046ae20  00 50 a0 e3                                      mov r5, #0
0046ae24  0a 10 a0 e1                                      mov r1, sl
0046ae28  04 00 a0 e1                                      mov r0, r4
0046ae2c  49 82 fc eb                                      bl #0x38b758
0046ae30  88 10 96 e5                                      ldr r1, [r6, #0x88]
0046ae34  08 10 81 e0                                      add r1, r1, r8
0046ae38  04 c0 91 e5                                      ldr ip, [r1, #4]
0046ae3c  00 00 5c e3                                      cmp ip, #0
0046ae40  35 00 00 0a                                      beq #0x46af1c
0046ae44  34 e0 9d e5                                      ldr lr, [sp, #0x34]
0046ae48  01 20 a0 e1                                      mov r2, r1
0046ae4c  01 00 00 ea                                      b #0x46ae58
0046ae50  0c 20 a0 e1                                      mov r2, ip
0046ae54  03 c0 a0 e1                                      mov ip, r3
0046ae58  10 30 9c e5                                      ldr r3, [ip, #0x10]
0046ae5c  0e 00 53 e1                                      cmp r3, lr
0046ae60  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
0046ae64  08 30 9c a5                                      ldrge r3, [ip, #8]
0046ae68  02 c0 a0 b1                                      movlt ip, r2
0046ae6c  00 00 53 e3                                      cmp r3, #0
0046ae70  f6 ff ff 1a                                      bne #0x46ae50
0046ae74  0c 00 51 e1                                      cmp r1, ip
0046ae78  03 00 00 0a                                      beq #0x46ae8c
0046ae7c  10 20 9c e5                                      ldr r2, [ip, #0x10]
0046ae80  0c 30 a0 e1                                      mov r3, ip
0046ae84  0e 00 52 e1                                      cmp r2, lr
0046ae88  08 00 00 da                                      ble #0x46aeb0
0046ae8c  07 30 a0 e1                                      mov r3, r7
0046ae90  30 c0 8d e5                                      str ip, [sp, #0x30]
0046ae94  09 00 a0 e1                                      mov r0, sb
0046ae98  00 c0 a0 e3                                      mov ip, #0
0046ae9c  0b 20 a0 e1                                      mov r2, fp
0046aea0  24 e0 8d e5                                      str lr, [sp, #0x24]
0046aea4  28 c0 8d e5                                      str ip, [sp, #0x28]
0046aea8  43 5f fb eb                                      bl #0x342bbc
0046aeac  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0046aeb0  14 10 83 e2                                      add r1, r3, #0x14
0046aeb4  04 00 a0 e1                                      mov r0, r4
0046aeb8  26 82 fc eb                                      bl #0x38b758
0046aebc  38 30 9d e5                                      ldr r3, [sp, #0x38]
0046aec0  01 50 85 e2                                      add r5, r5, #1
0046aec4  05 00 53 e1                                      cmp r3, r5
0046aec8  d5 ff ff ca                                      bgt #0x46ae24
0046aecc  18 80 88 e2                                      add r8, r8, #0x18
0046aed0  30 00 58 e3                                      cmp r8, #0x30
0046aed4  cb ff ff 1a                                      bne #0x46ae08
0046aed8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0046aedc  14 70 9d e5                                      ldr r7, [sp, #0x14]
0046aee0  b1 a2 fa eb                                      bl #0x3139ac
0046aee4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0046aee8  02 30 97 e7                                      ldr r3, [r7, r2]
0046aeec  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0046aef0  00 30 93 e5                                      ldr r3, [r3]
0046aef4  03 00 52 e1                                      cmp r2, r3
0046aef8  34 00 00 1a                                      bne #0x46afd0
0046aefc  64 d0 8d e2                                      add sp, sp, #0x64
0046af00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046af04  00 50 e0 e3                                      mvn r5, #0
0046af08  9c ff ff ea                                      b #0x46ad80
0046af0c  04 10 82 e2                                      add r1, r2, #4
0046af10  04 00 a0 e1                                      mov r0, r4
0046af14  55 f8 ff eb                                      bl #0x469070
0046af18  aa ff ff ea                                      b #0x46adc8
0046af1c  34 e0 9d e5                                      ldr lr, [sp, #0x34]
0046af20  01 c0 a0 e1                                      mov ip, r1
0046af24  d2 ff ff ea                                      b #0x46ae74
0046af28  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0046af2c  02 20 97 e7                                      ldr r2, [r7, r2]
0046af30  00 20 92 e5                                      ldr r2, [r2]
0046af34  02 00 52 e3                                      cmp r2, #2
0046af38  00 30 83 05                                      streq r3, [r3]
0046af3c  5a ff ff 0a                                      beq #0x46acac
0046af40  01 00 52 e3                                      cmp r2, #1
0046af44  58 ff ff 1a                                      bne #0x46acac
0046af48  98 00 9f e5                                      ldr r0, [pc, #0x98]
0046af4c  98 10 9f e5                                      ldr r1, [pc, #0x98]
0046af50  98 20 9f e5                                      ldr r2, [pc, #0x98]
0046af54  00 00 97 e7                                      ldr r0, [r7, r0]
0046af58  94 30 9f e5                                      ldr r3, [pc, #0x94]
0046af5c  92 c1 00 e3                                      movw ip, #0x192
0046af60  01 10 8f e0                                      add r1, pc, r1
0046af64  02 20 8f e0                                      add r2, pc, r2
0046af68  03 30 8f e0                                      add r3, pc, r3
0046af6c  a8 00 80 e2                                      add r0, r0, #0xa8
0046af70  00 c0 8d e5                                      str ip, [sp]
0046af74  22 8c fa eb                                      bl #0x30e004
0046af78  4b ff ff ea                                      b #0x46acac
0046af7c  60 20 9f e5                                      ldr r2, [pc, #0x60]
0046af80  02 20 97 e7                                      ldr r2, [r7, r2]
0046af84  00 20 92 e5                                      ldr r2, [r2]
0046af88  02 00 52 e3                                      cmp r2, #2
0046af8c  00 30 83 05                                      streq r3, [r3]
0046af90  48 ff ff 0a                                      beq #0x46acb8
0046af94  01 00 52 e3                                      cmp r2, #1
0046af98  46 ff ff 1a                                      bne #0x46acb8
0046af9c  44 00 9f e5                                      ldr r0, [pc, #0x44]
0046afa0  50 10 9f e5                                      ldr r1, [pc, #0x50]
0046afa4  50 20 9f e5                                      ldr r2, [pc, #0x50]
0046afa8  00 00 97 e7                                      ldr r0, [r7, r0]
0046afac  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0046afb0  93 c1 00 e3                                      movw ip, #0x193
0046afb4  01 10 8f e0                                      add r1, pc, r1
0046afb8  02 20 8f e0                                      add r2, pc, r2
0046afbc  03 30 8f e0                                      add r3, pc, r3
0046afc0  a8 00 80 e2                                      add r0, r0, #0xa8
0046afc4  00 c0 8d e5                                      str ip, [sp]
0046afc8  0d 8c fa eb                                      bl #0x30e004
0046afcc  39 ff ff ea                                      b #0x46acb8
0046afd0  ce 8c fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046afd4  0c 9e 52 00 ac 40 00 00 28 27 00 00 d8 32 00 00  .byte 0x0c, 0x9e, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00, 0x28, 0x27, 0x00, 0x00, 0xd8, 0x32, 0x00, 0x00
0046afe4  c0 39 00 00 c0 19 00 00 78 34 45 00 b4 25 46 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x78, 0x34, 0x45, 0x00, 0xb4, 0x25, 0x46, 0x00
0046aff4  40 25 46 00 24 34 45 00 e0 24 46 00 ec 24 46 00  .byte 0x40, 0x25, 0x46, 0x00, 0x24, 0x34, 0x45, 0x00, 0xe0, 0x24, 0x46, 0x00, 0xec, 0x24, 0x46, 0x00
