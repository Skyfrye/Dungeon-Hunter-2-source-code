; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004dab88, declared_size=40, range_size=40, mode=arm
; class-group: Structs::DialogActor
; alias: _ZN7Structs11DialogActor8finalizeEv
; demangled: Structs::DialogActor::finalize()
; decoder-mode: arm
004dab88  10 40 2d e9                                      push {r4, lr}
004dab8c  00 40 a0 e1                                      mov r4, r0
004dab90  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004dab94  00 00 50 e3                                      cmp r0, #0
004dab98  03 00 00 0a                                      beq #0x4dabac
004dab9c  27 d6 f8 eb                                      bl #0x310440
004daba0  00 30 a0 e3                                      mov r3, #0
004daba4  08 30 84 e5                                      str r3, [r4, #8]
004daba8  0c 30 84 e5                                      str r3, [r4, #0xc]
004dabac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dabb0, declared_size=64, range_size=64, mode=arm
; class-group: Structs::DialogActor
; alias: _ZN7Structs11DialogActorD1Ev
; demangled: Structs::DialogActor::~DialogActor()
; decoder-mode: arm
004dabb0  10 40 2d e9                                      push {r4, lr}
004dabb4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004dabb8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004dabbc  00 40 a0 e1                                      mov r4, r0
004dabc0  03 30 8f e0                                      add r3, pc, r3
004dabc4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004dabc8  02 20 93 e7                                      ldr r2, [r3, r2]
004dabcc  00 00 50 e3                                      cmp r0, #0
004dabd0  08 20 82 e2                                      add r2, r2, #8
004dabd4  00 20 84 e5                                      str r2, [r4]
004dabd8  00 00 00 0a                                      beq #0x4dabe0
004dabdc  17 d6 f8 eb                                      bl #0x310440
004dabe0  04 00 a0 e1                                      mov r0, r4
004dabe4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004dabe8  d0 9e 4b 00 24 29 00 00                          .byte 0xd0, 0x9e, 0x4b, 0x00, 0x24, 0x29, 0x00, 0x00

; FUNCTION 0x004dabf0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DialogActor
; alias: _ZN7Structs11DialogActorD0Ev
; demangled: Structs::DialogActor::~DialogActor()
; decoder-mode: arm
004dabf0  10 40 2d e9                                      push {r4, lr}
004dabf4  00 40 a0 e1                                      mov r4, r0
004dabf8  ec ff ff eb                                      bl #0x4dabb0
004dabfc  04 00 a0 e1                                      mov r0, r4
004dac00  0e d6 f8 eb                                      bl #0x310440
004dac04  04 00 a0 e1                                      mov r0, r4
004dac08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dac0c, declared_size=64, range_size=64, mode=arm
; class-group: Structs::DialogActor
; alias: _ZN7Structs11DialogActorD2Ev
; demangled: Structs::DialogActor::~DialogActor()
; decoder-mode: arm
004dac0c  10 40 2d e9                                      push {r4, lr}
004dac10  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004dac14  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004dac18  00 40 a0 e1                                      mov r4, r0
004dac1c  03 30 8f e0                                      add r3, pc, r3
004dac20  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004dac24  02 20 93 e7                                      ldr r2, [r3, r2]
004dac28  00 00 50 e3                                      cmp r0, #0
004dac2c  08 20 82 e2                                      add r2, r2, #8
004dac30  00 20 84 e5                                      str r2, [r4]
004dac34  00 00 00 0a                                      beq #0x4dac3c
004dac38  00 d6 f8 eb                                      bl #0x310440
004dac3c  04 00 a0 e1                                      mov r0, r4
004dac40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004dac44  74 9e 4b 00 24 29 00 00                          .byte 0x74, 0x9e, 0x4b, 0x00, 0x24, 0x29, 0x00, 0x00

; FUNCTION 0x00506dc8, declared_size=372, range_size=372, mode=arm
; class-group: Structs::DialogActor
; alias: _ZN7Structs11DialogActor4readEP11IStreamBase
; demangled: Structs::DialogActor::read(IStreamBase*)
; decoder-mode: arm
00506dc8  70 40 2d e9                                      push {r4, r5, r6, lr}
00506dcc  00 40 a0 e1                                      mov r4, r0
00506dd0  08 d0 4d e2                                      sub sp, sp, #8
00506dd4  01 00 a0 e1                                      mov r0, r1
00506dd8  01 50 a0 e1                                      mov r5, r1
00506ddc  04 10 84 e2                                      add r1, r4, #4
00506de0  aa 48 fd eb                                      bl #0x459090
00506de4  01 30 a0 e3                                      mov r3, #1
00506de8  00 00 53 e3                                      cmp r3, #0
00506dec  04 30 8d e5                                      str r3, [sp, #4]
00506df0  0f 00 00 1a                                      bne #0x506e34
00506df4  05 30 84 e2                                      add r3, r4, #5
00506df8  06 20 84 e2                                      add r2, r4, #6
00506dfc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506e00  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506e04  02 00 53 e1                                      cmp r3, r2
00506e08  01 10 20 e0                                      eor r1, r0, r1
00506e0c  01 10 43 e5                                      strb r1, [r3, #-1]
00506e10  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506e14  00 10 21 e0                                      eor r1, r1, r0
00506e18  01 10 c2 e5                                      strb r1, [r2, #1]
00506e1c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506e20  01 20 42 e2                                      sub r2, r2, #1
00506e24  00 10 21 e0                                      eor r1, r1, r0
00506e28  01 10 43 e5                                      strb r1, [r3, #-1]
00506e2c  01 30 83 e2                                      add r3, r3, #1
00506e30  f1 ff ff 3a                                      blo #0x506dfc
00506e34  05 00 a0 e1                                      mov r0, r5
00506e38  08 10 84 e2                                      add r1, r4, #8
00506e3c  d7 60 fb eb                                      bl #0x3df1a0
00506e40  01 30 a0 e3                                      mov r3, #1
00506e44  00 00 53 e3                                      cmp r3, #0
00506e48  04 30 8d e5                                      str r3, [sp, #4]
00506e4c  0f 00 00 1a                                      bne #0x506e90
00506e50  09 30 84 e2                                      add r3, r4, #9
00506e54  0a 20 84 e2                                      add r2, r4, #0xa
00506e58  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506e5c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506e60  03 00 52 e1                                      cmp r2, r3
00506e64  01 10 20 e0                                      eor r1, r0, r1
00506e68  01 10 43 e5                                      strb r1, [r3, #-1]
00506e6c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506e70  00 10 21 e0                                      eor r1, r1, r0
00506e74  01 10 c2 e5                                      strb r1, [r2, #1]
00506e78  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506e7c  01 20 42 e2                                      sub r2, r2, #1
00506e80  00 10 21 e0                                      eor r1, r1, r0
00506e84  01 10 43 e5                                      strb r1, [r3, #-1]
00506e88  01 30 83 e2                                      add r3, r3, #1
00506e8c  f1 ff ff 8a                                      bhi #0x506e58
00506e90  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00506e94  00 00 50 e3                                      cmp r0, #0
00506e98  00 00 00 0a                                      beq #0x506ea0
00506e9c  67 25 f8 eb                                      bl #0x310440
00506ea0  08 00 94 e5                                      ldr r0, [r4, #8]
00506ea4  01 10 a0 e3                                      mov r1, #1
00506ea8  00 60 a0 e3                                      mov r6, #0
00506eac  01 00 80 e0                                      add r0, r0, r1
00506eb0  ad 25 f8 eb                                      bl #0x31056c
00506eb4  08 20 94 e5                                      ldr r2, [r4, #8]
00506eb8  00 10 a0 e1                                      mov r1, r0
00506ebc  0c 00 84 e5                                      str r0, [r4, #0xc]
00506ec0  06 30 a0 e1                                      mov r3, r6
00506ec4  05 00 a0 e1                                      mov r0, r5
00506ec8  61 41 f8 eb                                      bl #0x317454
00506ecc  08 30 94 e5                                      ldr r3, [r4, #8]
00506ed0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00506ed4  05 00 a0 e1                                      mov r0, r5
00506ed8  10 10 84 e2                                      add r1, r4, #0x10
00506edc  03 60 c2 e7                                      strb r6, [r2, r3]
00506ee0  6a 48 fd eb                                      bl #0x459090
00506ee4  01 30 a0 e3                                      mov r3, #1
00506ee8  06 00 53 e1                                      cmp r3, r6
00506eec  04 30 8d e5                                      str r3, [sp, #4]
00506ef0  0f 00 00 1a                                      bne #0x506f34
00506ef4  12 30 84 e2                                      add r3, r4, #0x12
00506ef8  11 40 84 e2                                      add r4, r4, #0x11
00506efc  01 10 d3 e5                                      ldrb r1, [r3, #1]
00506f00  01 20 54 e5                                      ldrb r2, [r4, #-1]
00506f04  04 00 53 e1                                      cmp r3, r4
00506f08  02 20 21 e0                                      eor r2, r1, r2
00506f0c  01 20 44 e5                                      strb r2, [r4, #-1]
00506f10  01 10 d3 e5                                      ldrb r1, [r3, #1]
00506f14  01 20 22 e0                                      eor r2, r2, r1
00506f18  01 20 c3 e5                                      strb r2, [r3, #1]
00506f1c  01 10 54 e5                                      ldrb r1, [r4, #-1]
00506f20  01 30 43 e2                                      sub r3, r3, #1
00506f24  01 20 22 e0                                      eor r2, r2, r1
00506f28  01 20 44 e5                                      strb r2, [r4, #-1]
00506f2c  01 40 84 e2                                      add r4, r4, #1
00506f30  f1 ff ff 8a                                      bhi #0x506efc
00506f34  08 d0 8d e2                                      add sp, sp, #8
00506f38  70 80 bd e8                                      pop {r4, r5, r6, pc}
