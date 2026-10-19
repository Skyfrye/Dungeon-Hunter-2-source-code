; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7da0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestStateLower
; alias: _ZN7Structs19v2IsQuestStateLowerD2Ev
; demangled: Structs::v2IsQuestStateLower::~v2IsQuestStateLower()
; decoder-mode: arm
004c7da0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7da4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7da8  10 40 2d e9                                      push {r4, lr}
004c7dac  03 30 8f e0                                      add r3, pc, r3
004c7db0  02 20 93 e7                                      ldr r2, [r3, r2]
004c7db4  00 40 a0 e1                                      mov r4, r0
004c7db8  08 20 82 e2                                      add r2, r2, #8
004c7dbc  00 20 80 e5                                      str r2, [r0]
004c7dc0  bd ff ff eb                                      bl #0x4c7cbc
004c7dc4  04 00 a0 e1                                      mov r0, r4
004c7dc8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7dcc  e4 cc 4c 00 18 13 00 00                          .byte 0xe4, 0xcc, 0x4c, 0x00, 0x18, 0x13, 0x00, 0x00

; FUNCTION 0x004c7dd4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestStateLower
; alias: _ZN7Structs19v2IsQuestStateLowerD1Ev
; demangled: Structs::v2IsQuestStateLower::~v2IsQuestStateLower()
; decoder-mode: arm
004c7dd4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7dd8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7ddc  10 40 2d e9                                      push {r4, lr}
004c7de0  03 30 8f e0                                      add r3, pc, r3
004c7de4  02 20 93 e7                                      ldr r2, [r3, r2]
004c7de8  00 40 a0 e1                                      mov r4, r0
004c7dec  08 20 82 e2                                      add r2, r2, #8
004c7df0  00 20 80 e5                                      str r2, [r0]
004c7df4  b0 ff ff eb                                      bl #0x4c7cbc
004c7df8  04 00 a0 e1                                      mov r0, r4
004c7dfc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7e00  b0 cc 4c 00 18 13 00 00                          .byte 0xb0, 0xcc, 0x4c, 0x00, 0x18, 0x13, 0x00, 0x00

; FUNCTION 0x004c7e08, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestStateLower
; alias: _ZN7Structs19v2IsQuestStateLower8finalizeEv
; demangled: Structs::v2IsQuestStateLower::finalize()
; decoder-mode: arm
004c7e08  ad ff ff ea                                      b #0x4c7cc4

; FUNCTION 0x004cdaec, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestStateLower
; alias: _ZN7Structs19v2IsQuestStateLowerD0Ev
; demangled: Structs::v2IsQuestStateLower::~v2IsQuestStateLower()
; decoder-mode: arm
004cdaec  10 40 2d e9                                      push {r4, lr}
004cdaf0  00 40 a0 e1                                      mov r4, r0
004cdaf4  b6 e8 ff eb                                      bl #0x4c7dd4
004cdaf8  04 00 a0 e1                                      mov r0, r4
004cdafc  4f 0a f9 eb                                      bl #0x310440
004cdb00  04 00 a0 e1                                      mov r0, r4
004cdb04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505e38, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2IsQuestStateLower
; alias: _ZN7Structs19v2IsQuestStateLower4readEP11IStreamBase
; demangled: Structs::v2IsQuestStateLower::read(IStreamBase*)
; decoder-mode: arm
00505e38  30 40 2d e9                                      push {r4, r5, lr}
00505e3c  00 40 a0 e1                                      mov r4, r0
00505e40  0c d0 4d e2                                      sub sp, sp, #0xc
00505e44  01 50 a0 e1                                      mov r5, r1
00505e48  36 ff ff eb                                      bl #0x505b28
00505e4c  05 00 a0 e1                                      mov r0, r5
00505e50  08 10 84 e2                                      add r1, r4, #8
00505e54  8d 4c fd eb                                      bl #0x459090
00505e58  01 30 a0 e3                                      mov r3, #1
00505e5c  00 00 53 e3                                      cmp r3, #0
00505e60  04 30 8d e5                                      str r3, [sp, #4]
00505e64  0f 00 00 1a                                      bne #0x505ea8
00505e68  09 30 84 e2                                      add r3, r4, #9
00505e6c  0a 20 84 e2                                      add r2, r4, #0xa
00505e70  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505e74  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505e78  02 00 53 e1                                      cmp r3, r2
00505e7c  01 10 20 e0                                      eor r1, r0, r1
00505e80  01 10 43 e5                                      strb r1, [r3, #-1]
00505e84  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505e88  00 10 21 e0                                      eor r1, r1, r0
00505e8c  01 10 c2 e5                                      strb r1, [r2, #1]
00505e90  01 00 53 e5                                      ldrb r0, [r3, #-1]
00505e94  01 20 42 e2                                      sub r2, r2, #1
00505e98  00 10 21 e0                                      eor r1, r1, r0
00505e9c  01 10 43 e5                                      strb r1, [r3, #-1]
00505ea0  01 30 83 e2                                      add r3, r3, #1
00505ea4  f1 ff ff 3a                                      blo #0x505e70
00505ea8  05 00 a0 e1                                      mov r0, r5
00505eac  0c 10 84 e2                                      add r1, r4, #0xc
00505eb0  76 4c fd eb                                      bl #0x459090
00505eb4  01 30 a0 e3                                      mov r3, #1
00505eb8  00 00 53 e3                                      cmp r3, #0
00505ebc  04 30 8d e5                                      str r3, [sp, #4]
00505ec0  0f 00 00 1a                                      bne #0x505f04
00505ec4  0e 30 84 e2                                      add r3, r4, #0xe
00505ec8  0d 40 84 e2                                      add r4, r4, #0xd
00505ecc  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505ed0  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505ed4  04 00 53 e1                                      cmp r3, r4
00505ed8  02 20 21 e0                                      eor r2, r1, r2
00505edc  01 20 44 e5                                      strb r2, [r4, #-1]
00505ee0  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505ee4  01 20 22 e0                                      eor r2, r2, r1
00505ee8  01 20 c3 e5                                      strb r2, [r3, #1]
00505eec  01 10 54 e5                                      ldrb r1, [r4, #-1]
00505ef0  01 30 43 e2                                      sub r3, r3, #1
00505ef4  01 20 22 e0                                      eor r2, r2, r1
00505ef8  01 20 44 e5                                      strb r2, [r4, #-1]
00505efc  01 40 84 e2                                      add r4, r4, #1
00505f00  f1 ff ff 8a                                      bhi #0x505ecc
00505f04  0c d0 8d e2                                      add sp, sp, #0xc
00505f08  30 80 bd e8                                      pop {r4, r5, pc}
