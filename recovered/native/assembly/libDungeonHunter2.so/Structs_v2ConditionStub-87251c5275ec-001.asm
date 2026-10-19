; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7cc8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2ConditionStub
; alias: _ZN7Structs15v2ConditionStubD2Ev
; demangled: Structs::v2ConditionStub::~v2ConditionStub()
; decoder-mode: arm
004c7cc8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7ccc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7cd0  10 40 2d e9                                      push {r4, lr}
004c7cd4  03 30 8f e0                                      add r3, pc, r3
004c7cd8  02 20 93 e7                                      ldr r2, [r3, r2]
004c7cdc  00 40 a0 e1                                      mov r4, r0
004c7ce0  08 20 82 e2                                      add r2, r2, #8
004c7ce4  00 20 80 e5                                      str r2, [r0]
004c7ce8  f3 ff ff eb                                      bl #0x4c7cbc
004c7cec  04 00 a0 e1                                      mov r0, r4
004c7cf0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7cf4  bc cd 4c 00 48 09 00 00                          .byte 0xbc, 0xcd, 0x4c, 0x00, 0x48, 0x09, 0x00, 0x00

; FUNCTION 0x004c7cfc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2ConditionStub
; alias: _ZN7Structs15v2ConditionStubD1Ev
; demangled: Structs::v2ConditionStub::~v2ConditionStub()
; decoder-mode: arm
004c7cfc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7d00  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7d04  10 40 2d e9                                      push {r4, lr}
004c7d08  03 30 8f e0                                      add r3, pc, r3
004c7d0c  02 20 93 e7                                      ldr r2, [r3, r2]
004c7d10  00 40 a0 e1                                      mov r4, r0
004c7d14  08 20 82 e2                                      add r2, r2, #8
004c7d18  00 20 80 e5                                      str r2, [r0]
004c7d1c  e6 ff ff eb                                      bl #0x4c7cbc
004c7d20  04 00 a0 e1                                      mov r0, r4
004c7d24  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7d28  88 cd 4c 00 48 09 00 00                          .byte 0x88, 0xcd, 0x4c, 0x00, 0x48, 0x09, 0x00, 0x00

; FUNCTION 0x004c7d30, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2ConditionStub
; alias: _ZN7Structs15v2ConditionStub8finalizeEv
; demangled: Structs::v2ConditionStub::finalize()
; decoder-mode: arm
004c7d30  e3 ff ff ea                                      b #0x4c7cc4

; FUNCTION 0x004cdc58, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2ConditionStub
; alias: _ZN7Structs15v2ConditionStubD0Ev
; demangled: Structs::v2ConditionStub::~v2ConditionStub()
; decoder-mode: arm
004cdc58  10 40 2d e9                                      push {r4, lr}
004cdc5c  00 40 a0 e1                                      mov r4, r0
004cdc60  25 e8 ff eb                                      bl #0x4c7cfc
004cdc64  04 00 a0 e1                                      mov r0, r4
004cdc68  f4 09 f9 eb                                      bl #0x310440
004cdc6c  04 00 a0 e1                                      mov r0, r4
004cdc70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0050600c, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2ConditionStub
; alias: _ZN7Structs15v2ConditionStub4readEP11IStreamBase
; demangled: Structs::v2ConditionStub::read(IStreamBase*)
; decoder-mode: arm
0050600c  30 40 2d e9                                      push {r4, r5, lr}
00506010  00 40 a0 e1                                      mov r4, r0
00506014  0c d0 4d e2                                      sub sp, sp, #0xc
00506018  01 50 a0 e1                                      mov r5, r1
0050601c  c1 fe ff eb                                      bl #0x505b28
00506020  05 00 a0 e1                                      mov r0, r5
00506024  08 10 84 e2                                      add r1, r4, #8
00506028  18 4c fd eb                                      bl #0x459090
0050602c  01 30 a0 e3                                      mov r3, #1
00506030  00 00 53 e3                                      cmp r3, #0
00506034  04 30 8d e5                                      str r3, [sp, #4]
00506038  0f 00 00 1a                                      bne #0x50607c
0050603c  09 30 84 e2                                      add r3, r4, #9
00506040  0a 20 84 e2                                      add r2, r4, #0xa
00506044  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506048  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050604c  02 00 53 e1                                      cmp r3, r2
00506050  01 10 20 e0                                      eor r1, r0, r1
00506054  01 10 43 e5                                      strb r1, [r3, #-1]
00506058  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050605c  00 10 21 e0                                      eor r1, r1, r0
00506060  01 10 c2 e5                                      strb r1, [r2, #1]
00506064  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506068  01 20 42 e2                                      sub r2, r2, #1
0050606c  00 10 21 e0                                      eor r1, r1, r0
00506070  01 10 43 e5                                      strb r1, [r3, #-1]
00506074  01 30 83 e2                                      add r3, r3, #1
00506078  f1 ff ff 3a                                      blo #0x506044
0050607c  05 00 a0 e1                                      mov r0, r5
00506080  0c 10 84 e2                                      add r1, r4, #0xc
00506084  01 4c fd eb                                      bl #0x459090
00506088  01 30 a0 e3                                      mov r3, #1
0050608c  00 00 53 e3                                      cmp r3, #0
00506090  04 30 8d e5                                      str r3, [sp, #4]
00506094  0f 00 00 1a                                      bne #0x5060d8
00506098  0e 30 84 e2                                      add r3, r4, #0xe
0050609c  0d 40 84 e2                                      add r4, r4, #0xd
005060a0  01 10 d3 e5                                      ldrb r1, [r3, #1]
005060a4  01 20 54 e5                                      ldrb r2, [r4, #-1]
005060a8  04 00 53 e1                                      cmp r3, r4
005060ac  02 20 21 e0                                      eor r2, r1, r2
005060b0  01 20 44 e5                                      strb r2, [r4, #-1]
005060b4  01 10 d3 e5                                      ldrb r1, [r3, #1]
005060b8  01 20 22 e0                                      eor r2, r2, r1
005060bc  01 20 c3 e5                                      strb r2, [r3, #1]
005060c0  01 10 54 e5                                      ldrb r1, [r4, #-1]
005060c4  01 30 43 e2                                      sub r3, r3, #1
005060c8  01 20 22 e0                                      eor r2, r2, r1
005060cc  01 20 44 e5                                      strb r2, [r4, #-1]
005060d0  01 40 84 e2                                      add r4, r4, #1
005060d4  f1 ff ff 8a                                      bhi #0x5060a0
005060d8  0c d0 8d e2                                      add sp, sp, #0xc
005060dc  30 80 bd e8                                      pop {r4, r5, pc}
