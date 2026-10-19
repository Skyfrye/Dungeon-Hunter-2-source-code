; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c76f8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AwardTrophy
; alias: _ZN7Structs11AwardTrophyD2Ev
; demangled: Structs::AwardTrophy::~AwardTrophy()
; decoder-mode: arm
004c76f8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c76fc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7700  10 40 2d e9                                      push {r4, lr}
004c7704  03 30 8f e0                                      add r3, pc, r3
004c7708  02 20 93 e7                                      ldr r2, [r3, r2]
004c770c  00 40 a0 e1                                      mov r4, r0
004c7710  08 20 82 e2                                      add r2, r2, #8
004c7714  00 20 80 e5                                      str r2, [r0]
004c7718  50 fd ff eb                                      bl #0x4c6c60
004c771c  04 00 a0 e1                                      mov r0, r4
004c7720  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7724  8c d3 4c 00 dc 14 00 00                          .byte 0x8c, 0xd3, 0x4c, 0x00, 0xdc, 0x14, 0x00, 0x00

; FUNCTION 0x004c772c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AwardTrophy
; alias: _ZN7Structs11AwardTrophyD1Ev
; demangled: Structs::AwardTrophy::~AwardTrophy()
; decoder-mode: arm
004c772c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7730  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7734  10 40 2d e9                                      push {r4, lr}
004c7738  03 30 8f e0                                      add r3, pc, r3
004c773c  02 20 93 e7                                      ldr r2, [r3, r2]
004c7740  00 40 a0 e1                                      mov r4, r0
004c7744  08 20 82 e2                                      add r2, r2, #8
004c7748  00 20 80 e5                                      str r2, [r0]
004c774c  43 fd ff eb                                      bl #0x4c6c60
004c7750  04 00 a0 e1                                      mov r0, r4
004c7754  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7758  58 d3 4c 00 dc 14 00 00                          .byte 0x58, 0xd3, 0x4c, 0x00, 0xdc, 0x14, 0x00, 0x00

; FUNCTION 0x004c7760, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AwardTrophy
; alias: _ZN7Structs11AwardTrophy8finalizeEv
; demangled: Structs::AwardTrophy::finalize()
; decoder-mode: arm
004c7760  40 fd ff ea                                      b #0x4c6c68

; FUNCTION 0x004cde88, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AwardTrophy
; alias: _ZN7Structs11AwardTrophyD0Ev
; demangled: Structs::AwardTrophy::~AwardTrophy()
; decoder-mode: arm
004cde88  10 40 2d e9                                      push {r4, lr}
004cde8c  00 40 a0 e1                                      mov r4, r0
004cde90  25 e6 ff eb                                      bl #0x4c772c
004cde94  04 00 a0 e1                                      mov r0, r4
004cde98  68 09 f9 eb                                      bl #0x310440
004cde9c  04 00 a0 e1                                      mov r0, r4
004cdea0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00502e98, declared_size=120, range_size=120, mode=arm
; class-group: Structs::AwardTrophy
; alias: _ZN7Structs11AwardTrophy4readEP11IStreamBase
; demangled: Structs::AwardTrophy::read(IStreamBase*)
; decoder-mode: arm
00502e98  30 40 2d e9                                      push {r4, r5, lr}
00502e9c  00 40 a0 e1                                      mov r4, r0
00502ea0  0c d0 4d e2                                      sub sp, sp, #0xc
00502ea4  01 50 a0 e1                                      mov r5, r1
00502ea8  5e f2 ff eb                                      bl #0x4ff828
00502eac  05 00 a0 e1                                      mov r0, r5
00502eb0  08 10 84 e2                                      add r1, r4, #8
00502eb4  75 58 fd eb                                      bl #0x459090
00502eb8  01 30 a0 e3                                      mov r3, #1
00502ebc  00 00 53 e3                                      cmp r3, #0
00502ec0  04 30 8d e5                                      str r3, [sp, #4]
00502ec4  0f 00 00 1a                                      bne #0x502f08
00502ec8  0a 30 84 e2                                      add r3, r4, #0xa
00502ecc  09 40 84 e2                                      add r4, r4, #9
00502ed0  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502ed4  01 20 54 e5                                      ldrb r2, [r4, #-1]
00502ed8  03 00 54 e1                                      cmp r4, r3
00502edc  02 20 21 e0                                      eor r2, r1, r2
00502ee0  01 20 44 e5                                      strb r2, [r4, #-1]
00502ee4  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502ee8  01 20 22 e0                                      eor r2, r2, r1
00502eec  01 20 c3 e5                                      strb r2, [r3, #1]
00502ef0  01 10 54 e5                                      ldrb r1, [r4, #-1]
00502ef4  01 30 43 e2                                      sub r3, r3, #1
00502ef8  01 20 22 e0                                      eor r2, r2, r1
00502efc  01 20 44 e5                                      strb r2, [r4, #-1]
00502f00  01 40 84 e2                                      add r4, r4, #1
00502f04  f1 ff ff 3a                                      blo #0x502ed0
00502f08  0c d0 8d e2                                      add sp, sp, #0xc
00502f0c  30 80 bd e8                                      pop {r4, r5, pc}
