; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003868b8, declared_size=44, range_size=44, mode=arm
; class-group: GSLevelMap
; alias: _ZN10GSLevelMapC2Ev
; demangled: GSLevelMap::GSLevelMap()
; decoder-mode: arm
003868b8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
003868bc  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
003868c0  00 c0 e0 e3                                      mvn ip, #0
003868c4  03 30 8f e0                                      add r3, pc, r3
003868c8  02 20 93 e7                                      ldr r2, [r3, r2]
003868cc  04 c0 80 e5                                      str ip, [r0, #4]
003868d0  08 20 82 e2                                      add r2, r2, #8
003868d4  00 20 80 e5                                      str r2, [r0]
003868d8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003868dc  cc e1 60 00 80 0a 00 00                          .byte 0xcc, 0xe1, 0x60, 0x00, 0x80, 0x0a, 0x00, 0x00

; FUNCTION 0x003868e4, declared_size=44, range_size=44, mode=arm
; class-group: GSLevelMap
; alias: _ZN10GSLevelMapC1Ev
; demangled: GSLevelMap::GSLevelMap()
; decoder-mode: arm
003868e4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
003868e8  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
003868ec  00 c0 e0 e3                                      mvn ip, #0
003868f0  03 30 8f e0                                      add r3, pc, r3
003868f4  02 20 93 e7                                      ldr r2, [r3, r2]
003868f8  04 c0 80 e5                                      str ip, [r0, #4]
003868fc  08 20 82 e2                                      add r2, r2, #8
00386900  00 20 80 e5                                      str r2, [r0]
00386904  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00386908  a0 e1 60 00 80 0a 00 00                          .byte 0xa0, 0xe1, 0x60, 0x00, 0x80, 0x0a, 0x00, 0x00

; FUNCTION 0x00386910, declared_size=4, range_size=4, mode=arm
; class-group: GSLevelMap
; alias: _ZN10GSLevelMapD2Ev
; demangled: GSLevelMap::~GSLevelMap()
; decoder-mode: arm
00386910  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386914, declared_size=4, range_size=4, mode=arm
; class-group: GSLevelMap
; alias: _ZN10GSLevelMapD1Ev
; demangled: GSLevelMap::~GSLevelMap()
; decoder-mode: arm
00386914  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386938, declared_size=8, range_size=8, mode=arm
; class-group: GSLevelMap
; alias: _ZN10GSLevelMap4DrawEPK12StateMachine
; demangled: GSLevelMap::Draw(StateMachine const*)
; decoder-mode: arm
00386938  08 00 90 e5                                      ldr r0, [r0, #8]
0038693c  e8 cc 01 ea                                      b #0x3f9ce4

; FUNCTION 0x00386940, declared_size=8, range_size=8, mode=arm
; class-group: GSLevelMap
; alias: _ZN10GSLevelMap6UpdateEP12StateMachined
; demangled: GSLevelMap::Update(StateMachine*, double)
; decoder-mode: arm
00386940  08 00 90 e5                                      ldr r0, [r0, #8]
00386944  eb cc 01 ea                                      b #0x3f9cf8

; FUNCTION 0x00386948, declared_size=56, range_size=56, mode=arm
; class-group: GSLevelMap
; alias: _ZN10GSLevelMap4DtorEPK12StateMachine
; demangled: GSLevelMap::Dtor(StateMachine const*)
; decoder-mode: arm
00386948  10 40 2d e9                                      push {r4, lr}
0038694c  00 40 a0 e1                                      mov r4, r0
00386950  08 00 90 e5                                      ldr r0, [r0, #8]
00386954  ec cc 01 eb                                      bl #0x3f9d0c
00386958  08 30 94 e5                                      ldr r3, [r4, #8]
0038695c  00 00 53 e3                                      cmp r3, #0
00386960  05 00 00 0a                                      beq #0x38697c
00386964  03 00 a0 e1                                      mov r0, r3
00386968  00 30 93 e5                                      ldr r3, [r3]
0038696c  0f e0 a0 e1                                      mov lr, pc
00386970  04 f0 93 e5                                      ldr pc, [r3, #4]
00386974  00 30 a0 e3                                      mov r3, #0
00386978  08 30 84 e5                                      str r3, [r4, #8]
0038697c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00386980, declared_size=48, range_size=48, mode=arm
; class-group: GSLevelMap
; alias: _ZN10GSLevelMap4CtorEPK12StateMachine
; demangled: GSLevelMap::Ctor(StateMachine const*)
; decoder-mode: arm
00386980  70 40 2d e9                                      push {r4, r5, r6, lr}
00386984  00 10 a0 e3                                      mov r1, #0
00386988  00 50 a0 e1                                      mov r5, r0
0038698c  08 00 a0 e3                                      mov r0, #8
00386990  f6 26 fe eb                                      bl #0x310570
00386994  04 10 95 e5                                      ldr r1, [r5, #4]
00386998  00 40 a0 e1                                      mov r4, r0
0038699c  bc cc 01 eb                                      bl #0x3f9c94
003869a0  04 00 a0 e1                                      mov r0, r4
003869a4  08 40 85 e5                                      str r4, [r5, #8]
003869a8  70 40 bd e8                                      pop {r4, r5, r6, lr}
003869ac  df cc 01 ea                                      b #0x3f9d30

; FUNCTION 0x003869b0, declared_size=144, range_size=144, mode=arm
; class-group: GSLevelMap
; alias: _ZN10GSLevelMap4InstEi
; demangled: GSLevelMap::Inst(int)
; decoder-mode: arm
003869b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003869b4  70 60 9f e5                                      ldr r6, [pc, #0x70]
003869b8  70 50 9f e5                                      ldr r5, [pc, #0x70]
003869bc  00 40 a0 e1                                      mov r4, r0
003869c0  06 60 8f e0                                      add r6, pc, r6
003869c4  0c 30 96 e5                                      ldr r3, [r6, #0xc]
003869c8  05 50 8f e0                                      add r5, pc, r5
003869cc  01 00 13 e3                                      tst r3, #1
003869d0  04 00 00 0a                                      beq #0x3869e8
003869d4  58 00 9f e5                                      ldr r0, [pc, #0x58]
003869d8  00 00 8f e0                                      add r0, pc, r0
003869dc  14 40 80 e5                                      str r4, [r0, #0x14]
003869e0  10 00 80 e2                                      add r0, r0, #0x10
003869e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003869e8  0c 70 86 e2                                      add r7, r6, #0xc
003869ec  07 00 a0 e1                                      mov r0, r7
003869f0  5d 1f fe eb                                      bl #0x30e76c
003869f4  00 00 50 e3                                      cmp r0, #0
003869f8  f5 ff ff 0a                                      beq #0x3869d4
003869fc  10 60 86 e2                                      add r6, r6, #0x10
00386a00  06 00 a0 e1                                      mov r0, r6
00386a04  b6 ff ff eb                                      bl #0x3868e4
00386a08  07 00 a0 e1                                      mov r0, r7
00386a0c  0a 20 fe eb                                      bl #0x30ea3c
00386a10  20 30 9f e5                                      ldr r3, [pc, #0x20]
00386a14  06 00 a0 e1                                      mov r0, r6
00386a18  03 10 95 e7                                      ldr r1, [r5, r3]
00386a1c  18 30 9f e5                                      ldr r3, [pc, #0x18]
00386a20  03 20 95 e7                                      ldr r2, [r5, r3]
00386a24  36 1e fe eb                                      bl #0x30e304
00386a28  e9 ff ff ea                                      b #0x3869d4
; mapping-symbol data/literal pool
00386a2c  98 bc 61 00 c8 e0 60 00 80 bc 61 00 74 17 00 00  .byte 0x98, 0xbc, 0x61, 0x00, 0xc8, 0xe0, 0x60, 0x00, 0x80, 0xbc, 0x61, 0x00, 0x74, 0x17, 0x00, 0x00
00386a3c  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00386a40, declared_size=28, range_size=28, mode=arm
; class-group: GSLevelMap
; alias: _ZN10GSLevelMapD0Ev
; demangled: GSLevelMap::~GSLevelMap()
; decoder-mode: arm
00386a40  10 40 2d e9                                      push {r4, lr}
00386a44  00 40 a0 e1                                      mov r4, r0
00386a48  b1 ff ff eb                                      bl #0x386914
00386a4c  04 00 a0 e1                                      mov r0, r4
00386a50  7a 26 fe eb                                      bl #0x310440
00386a54  04 00 a0 e1                                      mov r0, r4
00386a58  10 80 bd e8                                      pop {r4, pc}
