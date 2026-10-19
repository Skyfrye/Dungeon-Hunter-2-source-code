; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7e0c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestStateHigher
; alias: _ZN7Structs20v2IsQuestStateHigherD2Ev
; demangled: Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher()
; decoder-mode: arm
004c7e0c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7e10  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7e14  10 40 2d e9                                      push {r4, lr}
004c7e18  03 30 8f e0                                      add r3, pc, r3
004c7e1c  02 20 93 e7                                      ldr r2, [r3, r2]
004c7e20  00 40 a0 e1                                      mov r4, r0
004c7e24  08 20 82 e2                                      add r2, r2, #8
004c7e28  00 20 80 e5                                      str r2, [r0]
004c7e2c  a2 ff ff eb                                      bl #0x4c7cbc
004c7e30  04 00 a0 e1                                      mov r0, r4
004c7e34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7e38  78 cc 4c 00 d4 17 00 00                          .byte 0x78, 0xcc, 0x4c, 0x00, 0xd4, 0x17, 0x00, 0x00

; FUNCTION 0x004c7e40, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestStateHigher
; alias: _ZN7Structs20v2IsQuestStateHigherD1Ev
; demangled: Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher()
; decoder-mode: arm
004c7e40  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7e44  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7e48  10 40 2d e9                                      push {r4, lr}
004c7e4c  03 30 8f e0                                      add r3, pc, r3
004c7e50  02 20 93 e7                                      ldr r2, [r3, r2]
004c7e54  00 40 a0 e1                                      mov r4, r0
004c7e58  08 20 82 e2                                      add r2, r2, #8
004c7e5c  00 20 80 e5                                      str r2, [r0]
004c7e60  95 ff ff eb                                      bl #0x4c7cbc
004c7e64  04 00 a0 e1                                      mov r0, r4
004c7e68  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7e6c  44 cc 4c 00 d4 17 00 00                          .byte 0x44, 0xcc, 0x4c, 0x00, 0xd4, 0x17, 0x00, 0x00

; FUNCTION 0x004c7e74, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestStateHigher
; alias: _ZN7Structs20v2IsQuestStateHigher8finalizeEv
; demangled: Structs::v2IsQuestStateHigher::finalize()
; decoder-mode: arm
004c7e74  92 ff ff ea                                      b #0x4c7cc4

; FUNCTION 0x004cda28, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestStateHigher
; alias: _ZN7Structs20v2IsQuestStateHigherD0Ev
; demangled: Structs::v2IsQuestStateHigher::~v2IsQuestStateHigher()
; decoder-mode: arm
004cda28  10 40 2d e9                                      push {r4, lr}
004cda2c  00 40 a0 e1                                      mov r4, r0
004cda30  02 e9 ff eb                                      bl #0x4c7e40
004cda34  04 00 a0 e1                                      mov r0, r4
004cda38  80 0a f9 eb                                      bl #0x310440
004cda3c  04 00 a0 e1                                      mov r0, r4
004cda40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505d4c, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2IsQuestStateHigher
; alias: _ZN7Structs20v2IsQuestStateHigher4readEP11IStreamBase
; demangled: Structs::v2IsQuestStateHigher::read(IStreamBase*)
; decoder-mode: arm
00505d4c  30 40 2d e9                                      push {r4, r5, lr}
00505d50  00 40 a0 e1                                      mov r4, r0
00505d54  0c d0 4d e2                                      sub sp, sp, #0xc
00505d58  01 50 a0 e1                                      mov r5, r1
00505d5c  71 ff ff eb                                      bl #0x505b28
00505d60  05 00 a0 e1                                      mov r0, r5
00505d64  08 10 84 e2                                      add r1, r4, #8
00505d68  c8 4c fd eb                                      bl #0x459090
00505d6c  01 30 a0 e3                                      mov r3, #1
00505d70  00 00 53 e3                                      cmp r3, #0
00505d74  04 30 8d e5                                      str r3, [sp, #4]
00505d78  0f 00 00 1a                                      bne #0x505dbc
00505d7c  09 30 84 e2                                      add r3, r4, #9
00505d80  0a 20 84 e2                                      add r2, r4, #0xa
00505d84  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505d88  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505d8c  02 00 53 e1                                      cmp r3, r2
00505d90  01 10 20 e0                                      eor r1, r0, r1
00505d94  01 10 43 e5                                      strb r1, [r3, #-1]
00505d98  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505d9c  00 10 21 e0                                      eor r1, r1, r0
00505da0  01 10 c2 e5                                      strb r1, [r2, #1]
00505da4  01 00 53 e5                                      ldrb r0, [r3, #-1]
00505da8  01 20 42 e2                                      sub r2, r2, #1
00505dac  00 10 21 e0                                      eor r1, r1, r0
00505db0  01 10 43 e5                                      strb r1, [r3, #-1]
00505db4  01 30 83 e2                                      add r3, r3, #1
00505db8  f1 ff ff 3a                                      blo #0x505d84
00505dbc  05 00 a0 e1                                      mov r0, r5
00505dc0  0c 10 84 e2                                      add r1, r4, #0xc
00505dc4  b1 4c fd eb                                      bl #0x459090
00505dc8  01 30 a0 e3                                      mov r3, #1
00505dcc  00 00 53 e3                                      cmp r3, #0
00505dd0  04 30 8d e5                                      str r3, [sp, #4]
00505dd4  0f 00 00 1a                                      bne #0x505e18
00505dd8  0e 30 84 e2                                      add r3, r4, #0xe
00505ddc  0d 40 84 e2                                      add r4, r4, #0xd
00505de0  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505de4  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505de8  04 00 53 e1                                      cmp r3, r4
00505dec  02 20 21 e0                                      eor r2, r1, r2
00505df0  01 20 44 e5                                      strb r2, [r4, #-1]
00505df4  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505df8  01 20 22 e0                                      eor r2, r2, r1
00505dfc  01 20 c3 e5                                      strb r2, [r3, #1]
00505e00  01 10 54 e5                                      ldrb r1, [r4, #-1]
00505e04  01 30 43 e2                                      sub r3, r3, #1
00505e08  01 20 22 e0                                      eor r2, r2, r1
00505e0c  01 20 44 e5                                      strb r2, [r4, #-1]
00505e10  01 40 84 e2                                      add r4, r4, #1
00505e14  f1 ff ff 8a                                      bhi #0x505de0
00505e18  0c d0 8d e2                                      add sp, sp, #0xc
00505e1c  30 80 bd e8                                      pop {r4, r5, pc}
