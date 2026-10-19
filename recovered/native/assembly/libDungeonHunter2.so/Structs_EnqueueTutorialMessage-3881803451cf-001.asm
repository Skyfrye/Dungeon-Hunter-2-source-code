; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7914, declared_size=52, range_size=52, mode=arm
; class-group: Structs::EnqueueTutorialMessage
; alias: _ZN7Structs22EnqueueTutorialMessageD2Ev
; demangled: Structs::EnqueueTutorialMessage::~EnqueueTutorialMessage()
; decoder-mode: arm
004c7914  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7918  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c791c  10 40 2d e9                                      push {r4, lr}
004c7920  03 30 8f e0                                      add r3, pc, r3
004c7924  02 20 93 e7                                      ldr r2, [r3, r2]
004c7928  00 40 a0 e1                                      mov r4, r0
004c792c  08 20 82 e2                                      add r2, r2, #8
004c7930  00 20 80 e5                                      str r2, [r0]
004c7934  c9 fc ff eb                                      bl #0x4c6c60
004c7938  04 00 a0 e1                                      mov r0, r4
004c793c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7940  70 d1 4c 00 5c 1f 00 00                          .byte 0x70, 0xd1, 0x4c, 0x00, 0x5c, 0x1f, 0x00, 0x00

; FUNCTION 0x004c7948, declared_size=52, range_size=52, mode=arm
; class-group: Structs::EnqueueTutorialMessage
; alias: _ZN7Structs22EnqueueTutorialMessageD1Ev
; demangled: Structs::EnqueueTutorialMessage::~EnqueueTutorialMessage()
; decoder-mode: arm
004c7948  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c794c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7950  10 40 2d e9                                      push {r4, lr}
004c7954  03 30 8f e0                                      add r3, pc, r3
004c7958  02 20 93 e7                                      ldr r2, [r3, r2]
004c795c  00 40 a0 e1                                      mov r4, r0
004c7960  08 20 82 e2                                      add r2, r2, #8
004c7964  00 20 80 e5                                      str r2, [r0]
004c7968  bc fc ff eb                                      bl #0x4c6c60
004c796c  04 00 a0 e1                                      mov r0, r4
004c7970  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7974  3c d1 4c 00 5c 1f 00 00                          .byte 0x3c, 0xd1, 0x4c, 0x00, 0x5c, 0x1f, 0x00, 0x00

; FUNCTION 0x004c797c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::EnqueueTutorialMessage
; alias: _ZN7Structs22EnqueueTutorialMessage8finalizeEv
; demangled: Structs::EnqueueTutorialMessage::finalize()
; decoder-mode: arm
004c797c  b9 fc ff ea                                      b #0x4c6c68

; FUNCTION 0x004cddfc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::EnqueueTutorialMessage
; alias: _ZN7Structs22EnqueueTutorialMessageD0Ev
; demangled: Structs::EnqueueTutorialMessage::~EnqueueTutorialMessage()
; decoder-mode: arm
004cddfc  10 40 2d e9                                      push {r4, lr}
004cde00  00 40 a0 e1                                      mov r4, r0
004cde04  cf e6 ff eb                                      bl #0x4c7948
004cde08  04 00 a0 e1                                      mov r0, r4
004cde0c  8b 09 f9 eb                                      bl #0x310440
004cde10  04 00 a0 e1                                      mov r0, r4
004cde14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00502dc4, declared_size=212, range_size=212, mode=arm
; class-group: Structs::EnqueueTutorialMessage
; alias: _ZN7Structs22EnqueueTutorialMessage4readEP11IStreamBase
; demangled: Structs::EnqueueTutorialMessage::read(IStreamBase*)
; decoder-mode: arm
00502dc4  30 40 2d e9                                      push {r4, r5, lr}
00502dc8  00 40 a0 e1                                      mov r4, r0
00502dcc  0c d0 4d e2                                      sub sp, sp, #0xc
00502dd0  01 50 a0 e1                                      mov r5, r1
00502dd4  93 f2 ff eb                                      bl #0x4ff828
00502dd8  05 00 a0 e1                                      mov r0, r5
00502ddc  08 10 84 e2                                      add r1, r4, #8
00502de0  aa 58 fd eb                                      bl #0x459090
00502de4  01 30 a0 e3                                      mov r3, #1
00502de8  00 00 53 e3                                      cmp r3, #0
00502dec  04 30 8d e5                                      str r3, [sp, #4]
00502df0  0f 00 00 1a                                      bne #0x502e34
00502df4  09 30 84 e2                                      add r3, r4, #9
00502df8  0a 20 84 e2                                      add r2, r4, #0xa
00502dfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502e00  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502e04  02 00 53 e1                                      cmp r3, r2
00502e08  01 10 20 e0                                      eor r1, r0, r1
00502e0c  01 10 43 e5                                      strb r1, [r3, #-1]
00502e10  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502e14  00 10 21 e0                                      eor r1, r1, r0
00502e18  01 10 c2 e5                                      strb r1, [r2, #1]
00502e1c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502e20  01 20 42 e2                                      sub r2, r2, #1
00502e24  00 10 21 e0                                      eor r1, r1, r0
00502e28  01 10 43 e5                                      strb r1, [r3, #-1]
00502e2c  01 30 83 e2                                      add r3, r3, #1
00502e30  f1 ff ff 3a                                      blo #0x502dfc
00502e34  05 00 a0 e1                                      mov r0, r5
00502e38  0c 10 84 e2                                      add r1, r4, #0xc
00502e3c  93 58 fd eb                                      bl #0x459090
00502e40  01 30 a0 e3                                      mov r3, #1
00502e44  00 00 53 e3                                      cmp r3, #0
00502e48  04 30 8d e5                                      str r3, [sp, #4]
00502e4c  0f 00 00 1a                                      bne #0x502e90
00502e50  0e 30 84 e2                                      add r3, r4, #0xe
00502e54  0d 40 84 e2                                      add r4, r4, #0xd
00502e58  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502e5c  01 20 54 e5                                      ldrb r2, [r4, #-1]
00502e60  04 00 53 e1                                      cmp r3, r4
00502e64  02 20 21 e0                                      eor r2, r1, r2
00502e68  01 20 44 e5                                      strb r2, [r4, #-1]
00502e6c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502e70  01 20 22 e0                                      eor r2, r2, r1
00502e74  01 20 c3 e5                                      strb r2, [r3, #1]
00502e78  01 10 54 e5                                      ldrb r1, [r4, #-1]
00502e7c  01 30 43 e2                                      sub r3, r3, #1
00502e80  01 20 22 e0                                      eor r2, r2, r1
00502e84  01 20 44 e5                                      strb r2, [r4, #-1]
00502e88  01 40 84 e2                                      add r4, r4, #1
00502e8c  f1 ff ff 8a                                      bhi #0x502e58
00502e90  0c d0 8d e2                                      add sp, sp, #0xc
00502e94  30 80 bd e8                                      pop {r4, r5, pc}
