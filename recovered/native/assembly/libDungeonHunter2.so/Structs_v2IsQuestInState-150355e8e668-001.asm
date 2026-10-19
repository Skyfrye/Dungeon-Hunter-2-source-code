; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7d34, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestInState
; alias: _ZN7Structs16v2IsQuestInStateD2Ev
; demangled: Structs::v2IsQuestInState::~v2IsQuestInState()
; decoder-mode: arm
004c7d34  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7d38  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7d3c  10 40 2d e9                                      push {r4, lr}
004c7d40  03 30 8f e0                                      add r3, pc, r3
004c7d44  02 20 93 e7                                      ldr r2, [r3, r2]
004c7d48  00 40 a0 e1                                      mov r4, r0
004c7d4c  08 20 82 e2                                      add r2, r2, #8
004c7d50  00 20 80 e5                                      str r2, [r0]
004c7d54  d8 ff ff eb                                      bl #0x4c7cbc
004c7d58  04 00 a0 e1                                      mov r0, r4
004c7d5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7d60  50 cd 4c 00 3c 39 00 00                          .byte 0x50, 0xcd, 0x4c, 0x00, 0x3c, 0x39, 0x00, 0x00

; FUNCTION 0x004c7d68, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsQuestInState
; alias: _ZN7Structs16v2IsQuestInStateD1Ev
; demangled: Structs::v2IsQuestInState::~v2IsQuestInState()
; decoder-mode: arm
004c7d68  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7d6c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7d70  10 40 2d e9                                      push {r4, lr}
004c7d74  03 30 8f e0                                      add r3, pc, r3
004c7d78  02 20 93 e7                                      ldr r2, [r3, r2]
004c7d7c  00 40 a0 e1                                      mov r4, r0
004c7d80  08 20 82 e2                                      add r2, r2, #8
004c7d84  00 20 80 e5                                      str r2, [r0]
004c7d88  cb ff ff eb                                      bl #0x4c7cbc
004c7d8c  04 00 a0 e1                                      mov r0, r4
004c7d90  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7d94  1c cd 4c 00 3c 39 00 00                          .byte 0x1c, 0xcd, 0x4c, 0x00, 0x3c, 0x39, 0x00, 0x00

; FUNCTION 0x004c7d9c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsQuestInState
; alias: _ZN7Structs16v2IsQuestInState8finalizeEv
; demangled: Structs::v2IsQuestInState::finalize()
; decoder-mode: arm
004c7d9c  c8 ff ff ea                                      b #0x4c7cc4

; FUNCTION 0x004cdbb0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsQuestInState
; alias: _ZN7Structs16v2IsQuestInStateD0Ev
; demangled: Structs::v2IsQuestInState::~v2IsQuestInState()
; decoder-mode: arm
004cdbb0  10 40 2d e9                                      push {r4, lr}
004cdbb4  00 40 a0 e1                                      mov r4, r0
004cdbb8  6a e8 ff eb                                      bl #0x4c7d68
004cdbbc  04 00 a0 e1                                      mov r0, r4
004cdbc0  1e 0a f9 eb                                      bl #0x310440
004cdbc4  04 00 a0 e1                                      mov r0, r4
004cdbc8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505f24, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2IsQuestInState
; alias: _ZN7Structs16v2IsQuestInState4readEP11IStreamBase
; demangled: Structs::v2IsQuestInState::read(IStreamBase*)
; decoder-mode: arm
00505f24  30 40 2d e9                                      push {r4, r5, lr}
00505f28  00 40 a0 e1                                      mov r4, r0
00505f2c  0c d0 4d e2                                      sub sp, sp, #0xc
00505f30  01 50 a0 e1                                      mov r5, r1
00505f34  fb fe ff eb                                      bl #0x505b28
00505f38  05 00 a0 e1                                      mov r0, r5
00505f3c  08 10 84 e2                                      add r1, r4, #8
00505f40  52 4c fd eb                                      bl #0x459090
00505f44  01 30 a0 e3                                      mov r3, #1
00505f48  00 00 53 e3                                      cmp r3, #0
00505f4c  04 30 8d e5                                      str r3, [sp, #4]
00505f50  0f 00 00 1a                                      bne #0x505f94
00505f54  09 30 84 e2                                      add r3, r4, #9
00505f58  0a 20 84 e2                                      add r2, r4, #0xa
00505f5c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505f60  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505f64  02 00 53 e1                                      cmp r3, r2
00505f68  01 10 20 e0                                      eor r1, r0, r1
00505f6c  01 10 43 e5                                      strb r1, [r3, #-1]
00505f70  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505f74  00 10 21 e0                                      eor r1, r1, r0
00505f78  01 10 c2 e5                                      strb r1, [r2, #1]
00505f7c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00505f80  01 20 42 e2                                      sub r2, r2, #1
00505f84  00 10 21 e0                                      eor r1, r1, r0
00505f88  01 10 43 e5                                      strb r1, [r3, #-1]
00505f8c  01 30 83 e2                                      add r3, r3, #1
00505f90  f1 ff ff 3a                                      blo #0x505f5c
00505f94  05 00 a0 e1                                      mov r0, r5
00505f98  0c 10 84 e2                                      add r1, r4, #0xc
00505f9c  3b 4c fd eb                                      bl #0x459090
00505fa0  01 30 a0 e3                                      mov r3, #1
00505fa4  00 00 53 e3                                      cmp r3, #0
00505fa8  04 30 8d e5                                      str r3, [sp, #4]
00505fac  0f 00 00 1a                                      bne #0x505ff0
00505fb0  0e 30 84 e2                                      add r3, r4, #0xe
00505fb4  0d 40 84 e2                                      add r4, r4, #0xd
00505fb8  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505fbc  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505fc0  04 00 53 e1                                      cmp r3, r4
00505fc4  02 20 21 e0                                      eor r2, r1, r2
00505fc8  01 20 44 e5                                      strb r2, [r4, #-1]
00505fcc  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505fd0  01 20 22 e0                                      eor r2, r2, r1
00505fd4  01 20 c3 e5                                      strb r2, [r3, #1]
00505fd8  01 10 54 e5                                      ldrb r1, [r4, #-1]
00505fdc  01 30 43 e2                                      sub r3, r3, #1
00505fe0  01 20 22 e0                                      eor r2, r2, r1
00505fe4  01 20 44 e5                                      strb r2, [r4, #-1]
00505fe8  01 40 84 e2                                      add r4, r4, #1
00505fec  f1 ff ff 8a                                      bhi #0x505fb8
00505ff0  0c d0 8d e2                                      add sp, sp, #0xc
00505ff4  30 80 bd e8                                      pop {r4, r5, pc}
