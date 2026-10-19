; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7e78, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsPlayerInLevel
; alias: _ZN7Structs17v2IsPlayerInLevelD2Ev
; demangled: Structs::v2IsPlayerInLevel::~v2IsPlayerInLevel()
; decoder-mode: arm
004c7e78  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7e7c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7e80  10 40 2d e9                                      push {r4, lr}
004c7e84  03 30 8f e0                                      add r3, pc, r3
004c7e88  02 20 93 e7                                      ldr r2, [r3, r2]
004c7e8c  00 40 a0 e1                                      mov r4, r0
004c7e90  08 20 82 e2                                      add r2, r2, #8
004c7e94  00 20 80 e5                                      str r2, [r0]
004c7e98  87 ff ff eb                                      bl #0x4c7cbc
004c7e9c  04 00 a0 e1                                      mov r0, r4
004c7ea0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7ea4  0c cc 4c 00 b8 08 00 00                          .byte 0x0c, 0xcc, 0x4c, 0x00, 0xb8, 0x08, 0x00, 0x00

; FUNCTION 0x004c7eac, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsPlayerInLevel
; alias: _ZN7Structs17v2IsPlayerInLevelD1Ev
; demangled: Structs::v2IsPlayerInLevel::~v2IsPlayerInLevel()
; decoder-mode: arm
004c7eac  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7eb0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7eb4  10 40 2d e9                                      push {r4, lr}
004c7eb8  03 30 8f e0                                      add r3, pc, r3
004c7ebc  02 20 93 e7                                      ldr r2, [r3, r2]
004c7ec0  00 40 a0 e1                                      mov r4, r0
004c7ec4  08 20 82 e2                                      add r2, r2, #8
004c7ec8  00 20 80 e5                                      str r2, [r0]
004c7ecc  7a ff ff eb                                      bl #0x4c7cbc
004c7ed0  04 00 a0 e1                                      mov r0, r4
004c7ed4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7ed8  d8 cb 4c 00 b8 08 00 00                          .byte 0xd8, 0xcb, 0x4c, 0x00, 0xb8, 0x08, 0x00, 0x00

; FUNCTION 0x004c7ee0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsPlayerInLevel
; alias: _ZN7Structs17v2IsPlayerInLevel8finalizeEv
; demangled: Structs::v2IsPlayerInLevel::finalize()
; decoder-mode: arm
004c7ee0  77 ff ff ea                                      b #0x4c7cc4

; FUNCTION 0x004cda0c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsPlayerInLevel
; alias: _ZN7Structs17v2IsPlayerInLevelD0Ev
; demangled: Structs::v2IsPlayerInLevel::~v2IsPlayerInLevel()
; decoder-mode: arm
004cda0c  10 40 2d e9                                      push {r4, lr}
004cda10  00 40 a0 e1                                      mov r4, r0
004cda14  24 e9 ff eb                                      bl #0x4c7eac
004cda18  04 00 a0 e1                                      mov r0, r4
004cda1c  87 0a f9 eb                                      bl #0x310440
004cda20  04 00 a0 e1                                      mov r0, r4
004cda24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505c78, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2IsPlayerInLevel
; alias: _ZN7Structs17v2IsPlayerInLevel4readEP11IStreamBase
; demangled: Structs::v2IsPlayerInLevel::read(IStreamBase*)
; decoder-mode: arm
00505c78  30 40 2d e9                                      push {r4, r5, lr}
00505c7c  00 40 a0 e1                                      mov r4, r0
00505c80  0c d0 4d e2                                      sub sp, sp, #0xc
00505c84  01 50 a0 e1                                      mov r5, r1
00505c88  a6 ff ff eb                                      bl #0x505b28
00505c8c  05 00 a0 e1                                      mov r0, r5
00505c90  08 10 84 e2                                      add r1, r4, #8
00505c94  fd 4c fd eb                                      bl #0x459090
00505c98  01 30 a0 e3                                      mov r3, #1
00505c9c  00 00 53 e3                                      cmp r3, #0
00505ca0  04 30 8d e5                                      str r3, [sp, #4]
00505ca4  0f 00 00 1a                                      bne #0x505ce8
00505ca8  09 30 84 e2                                      add r3, r4, #9
00505cac  0a 20 84 e2                                      add r2, r4, #0xa
00505cb0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505cb4  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505cb8  02 00 53 e1                                      cmp r3, r2
00505cbc  01 10 20 e0                                      eor r1, r0, r1
00505cc0  01 10 43 e5                                      strb r1, [r3, #-1]
00505cc4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505cc8  00 10 21 e0                                      eor r1, r1, r0
00505ccc  01 10 c2 e5                                      strb r1, [r2, #1]
00505cd0  01 00 53 e5                                      ldrb r0, [r3, #-1]
00505cd4  01 20 42 e2                                      sub r2, r2, #1
00505cd8  00 10 21 e0                                      eor r1, r1, r0
00505cdc  01 10 43 e5                                      strb r1, [r3, #-1]
00505ce0  01 30 83 e2                                      add r3, r3, #1
00505ce4  f1 ff ff 3a                                      blo #0x505cb0
00505ce8  05 00 a0 e1                                      mov r0, r5
00505cec  0c 10 84 e2                                      add r1, r4, #0xc
00505cf0  e6 4c fd eb                                      bl #0x459090
00505cf4  01 30 a0 e3                                      mov r3, #1
00505cf8  00 00 53 e3                                      cmp r3, #0
00505cfc  04 30 8d e5                                      str r3, [sp, #4]
00505d00  0f 00 00 1a                                      bne #0x505d44
00505d04  0e 30 84 e2                                      add r3, r4, #0xe
00505d08  0d 40 84 e2                                      add r4, r4, #0xd
00505d0c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505d10  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505d14  04 00 53 e1                                      cmp r3, r4
00505d18  02 20 21 e0                                      eor r2, r1, r2
00505d1c  01 20 44 e5                                      strb r2, [r4, #-1]
00505d20  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505d24  01 20 22 e0                                      eor r2, r2, r1
00505d28  01 20 c3 e5                                      strb r2, [r3, #1]
00505d2c  01 10 54 e5                                      ldrb r1, [r4, #-1]
00505d30  01 30 43 e2                                      sub r3, r3, #1
00505d34  01 20 22 e0                                      eor r2, r2, r1
00505d38  01 20 44 e5                                      strb r2, [r4, #-1]
00505d3c  01 40 84 e2                                      add r4, r4, #1
00505d40  f1 ff ff 8a                                      bhi #0x505d0c
00505d44  0c d0 8d e2                                      add sp, sp, #0xc
00505d48  30 80 bd e8                                      pop {r4, r5, pc}
