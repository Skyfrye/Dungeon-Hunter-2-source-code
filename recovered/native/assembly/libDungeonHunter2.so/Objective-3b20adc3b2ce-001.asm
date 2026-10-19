; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00479f6c, declared_size=4, range_size=4, mode=arm
; class-group: Objective
; alias: _ZN9Objective7CompileEv
; demangled: Objective::Compile()
; decoder-mode: arm
00479f6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00479f70, declared_size=16, range_size=16, mode=arm
; class-group: Objective
; alias: _ZN9Objective17InvalidateCompileEv
; demangled: Objective::InvalidateCompile()
; decoder-mode: arm
00479f70  00 30 a0 e3                                      mov r3, #0
00479f74  14 30 c0 e5                                      strb r3, [r0, #0x14]
00479f78  08 30 c0 e5                                      strb r3, [r0, #8]
00479f7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00479f80, declared_size=4, range_size=4, mode=arm
; class-group: Objective
; alias: _ZN9Objective22InstallObjectiveMarkerEii
; demangled: Objective::InstallObjectiveMarker(int, int)
; decoder-mode: arm
00479f80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00479f84, declared_size=4, range_size=4, mode=arm
; class-group: Objective
; alias: _ZN9Objective21RemoveObjectiveMarkerEv
; demangled: Objective::RemoveObjectiveMarker()
; decoder-mode: arm
00479f84  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a1e4, declared_size=4, range_size=4, mode=arm
; class-group: Objective
; alias: _ZN9ObjectiveD2Ev
; demangled: Objective::~Objective()
; decoder-mode: arm
0047a1e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a378, declared_size=4, range_size=4, mode=arm
; class-group: Objective
; alias: _ZN9ObjectiveD1Ev
; demangled: Objective::~Objective()
; decoder-mode: arm
0047a378  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a37c, declared_size=12, range_size=12, mode=arm
; class-group: Objective
; alias: _ZN9Objective10_resetDataEv
; demangled: Objective::_resetData()
; decoder-mode: arm
0047a37c  00 30 a0 e3                                      mov r3, #0
0047a380  14 30 c0 e5                                      strb r3, [r0, #0x14]
0047a384  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a3a0, declared_size=12, range_size=12, mode=arm
; class-group: Objective
; alias: _ZNK9Objective12GetDescStrIdEv
; demangled: Objective::GetDescStrId() const
; decoder-mode: arm
0047a3a0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0047a3a4  08 00 93 e5                                      ldr r0, [r3, #8]
0047a3a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a8b0, declared_size=28, range_size=28, mode=arm
; class-group: Objective
; alias: _ZN9ObjectiveD0Ev
; demangled: Objective::~Objective()
; decoder-mode: arm
0047a8b0  10 40 2d e9                                      push {r4, lr}
0047a8b4  00 40 a0 e1                                      mov r4, r0
0047a8b8  ae fe ff eb                                      bl #0x47a378
0047a8bc  04 00 a0 e1                                      mov r0, r4
0047a8c0  de 56 fa eb                                      bl #0x310440
0047a8c4  04 00 a0 e1                                      mov r0, r4
0047a8c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047ab3c, declared_size=24, range_size=24, mode=arm
; class-group: Objective
; alias: _ZN9Objective9_loadDataEP11IStreamBase
; demangled: Objective::_loadData(IStreamBase*)
; decoder-mode: arm
0047ab3c  10 40 2d e9                                      push {r4, lr}
0047ab40  00 40 a0 e1                                      mov r4, r0
0047ab44  01 00 a0 e1                                      mov r0, r1
0047ab48  33 bc fe eb                                      bl #0x429c1c
0047ab4c  14 00 c4 e5                                      strb r0, [r4, #0x14]
0047ab50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047ab74, declared_size=16, range_size=16, mode=arm
; class-group: Objective
; alias: _ZN9Objective9_saveDataEP11IStreamBase
; demangled: Objective::_saveData(IStreamBase*)
; decoder-mode: arm
0047ab74  14 30 d0 e5                                      ldrb r3, [r0, #0x14]
0047ab78  01 00 a0 e1                                      mov r0, r1
0047ab7c  03 10 a0 e1                                      mov r1, r3
0047ab80  7f bc fe ea                                      b #0x429d84

; FUNCTION 0x0047b7ac, declared_size=116, range_size=116, mode=arm
; class-group: Objective
; alias: _ZNK9Objective37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: Objective::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047b7ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0047b7b0  00 60 a0 e1                                      mov r6, r0
0047b7b4  50 00 9f e5                                      ldr r0, [pc, #0x50]
0047b7b8  01 50 a0 e1                                      mov r5, r1
0047b7bc  05 30 a0 e1                                      mov r3, r5
0047b7c0  01 10 a0 e3                                      mov r1, #1
0047b7c4  25 20 a0 e3                                      mov r2, #0x25
0047b7c8  00 00 8f e0                                      add r0, pc, r0
0047b7cc  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
0047b7d0  70 4b fa eb                                      bl #0x30e598
0047b7d4  38 30 9f e5                                      ldr r3, [pc, #0x38]
0047b7d8  04 40 8f e0                                      add r4, pc, r4
0047b7dc  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047b7e0  03 30 94 e7                                      ldr r3, [r4, r3]
0047b7e4  04 20 96 e5                                      ldr r2, [r6, #4]
0047b7e8  01 10 8f e0                                      add r1, pc, r1
0047b7ec  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0047b7f0  c4 24 01 eb                                      bl #0x4c4b08
0047b7f4  20 10 9f e5                                      ldr r1, [pc, #0x20]
0047b7f8  00 20 a0 e1                                      mov r2, r0
0047b7fc  05 00 a0 e1                                      mov r0, r5
0047b800  01 10 8f e0                                      add r1, pc, r1
0047b804  70 40 bd e8                                      pop {r4, r5, r6, lr}
0047b808  fd 49 fa ea                                      b #0x30e004
; mapping-symbol data/literal pool
0047b80c  08 26 45 00 b8 92 51 00 f4 37 00 00 80 71 44 00  .byte 0x08, 0x26, 0x45, 0x00, 0xb8, 0x92, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x80, 0x71, 0x44, 0x00
0047b81c  58 25 45 00                                      .byte 0x58, 0x25, 0x45, 0x00

; FUNCTION 0x0047b9b8, declared_size=88, range_size=88, mode=arm
; class-group: Objective
; alias: _ZNK9Objective10GetDescStrEv
; demangled: Objective::GetDescStr() const
; decoder-mode: arm
0047b9b8  10 40 2d e9                                      push {r4, lr}
0047b9bc  00 40 a0 e1                                      mov r4, r0
0047b9c0  76 fa ff eb                                      bl #0x47a3a0
0047b9c4  38 30 9f e5                                      ldr r3, [pc, #0x38]
0047b9c8  00 00 50 e3                                      cmp r0, #0
0047b9cc  03 30 8f e0                                      add r3, pc, r3
0047b9d0  08 00 00 da                                      ble #0x47b9f8
0047b9d4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0047b9d8  04 00 a0 e1                                      mov r0, r4
0047b9dc  02 30 93 e7                                      ldr r3, [r3, r2]
0047b9e0  34 40 93 e5                                      ldr r4, [r3, #0x34]
0047b9e4  6d fa ff eb                                      bl #0x47a3a0
0047b9e8  00 10 a0 e1                                      mov r1, r0
0047b9ec  04 00 a0 e1                                      mov r0, r4
0047b9f0  10 40 bd e8                                      pop {r4, lr}
0047b9f4  38 35 02 ea                                      b #0x508edc
0047b9f8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0047b9fc  00 00 8f e0                                      add r0, pc, r0
0047ba00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047ba04  c4 90 51 00 f4 37 00 00 0c fe 44 00              .byte 0xc4, 0x90, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x0c, 0xfe, 0x44, 0x00

; FUNCTION 0x0047ba10, declared_size=76, range_size=76, mode=arm
; class-group: Objective
; alias: _ZN9Objective14SetIsCompletedEv
; demangled: Objective::SetIsCompleted()
; decoder-mode: arm
0047ba10  14 30 d0 e5                                      ldrb r3, [r0, #0x14]
0047ba14  38 c0 9f e5                                      ldr ip, [pc, #0x38]
0047ba18  00 00 53 e3                                      cmp r3, #0
0047ba1c  0c c0 8f e0                                      add ip, pc, ip
0047ba20  1e ff 2f 11                                      bxne lr
0047ba24  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0047ba28  01 10 a0 e3                                      mov r1, #1
0047ba2c  14 10 c0 e5                                      strb r1, [r0, #0x14]
0047ba30  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0047ba34  00 00 51 e3                                      cmp r1, #0
0047ba38  1e ff 2f b1                                      bxlt lr
0047ba3c  14 00 9f e5                                      ldr r0, [pc, #0x14]
0047ba40  00 20 e0 e3                                      mvn r2, #0
0047ba44  00 00 9c e7                                      ldr r0, [ip, r0]
0047ba48  08 c0 90 e5                                      ldr ip, [r0, #8]
0047ba4c  0c 10 81 e0                                      add r1, r1, ip
0047ba50  da 92 ff ea                                      b #0x4605c0
; mapping-symbol data/literal pool
0047ba54  74 90 51 00 20 1a 00 00                          .byte 0x74, 0x90, 0x51, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x0047bd8c, declared_size=116, range_size=116, mode=arm
; class-group: Objective
; alias: _ZN9ObjectiveC1Ev
; demangled: Objective::Objective()
; decoder-mode: arm
0047bd8c  58 30 9f e5                                      ldr r3, [pc, #0x58]
0047bd90  58 20 9f e5                                      ldr r2, [pc, #0x58]
0047bd94  58 10 9f e5                                      ldr r1, [pc, #0x58]
0047bd98  03 30 8f e0                                      add r3, pc, r3
0047bd9c  10 40 2d e9                                      push {r4, lr}
0047bda0  02 20 93 e7                                      ldr r2, [r3, r2]
0047bda4  01 10 93 e7                                      ldr r1, [r3, r1]
0047bda8  00 40 a0 e1                                      mov r4, r0
0047bdac  08 20 82 e2                                      add r2, r2, #8
0047bdb0  00 20 80 e5                                      str r2, [r0]
0047bdb4  2c 00 91 e5                                      ldr r0, [r1, #0x2c]
0047bdb8  38 20 9f e5                                      ldr r2, [pc, #0x38]
0047bdbc  38 10 9f e5                                      ldr r1, [pc, #0x38]
0047bdc0  02 20 8f e0                                      add r2, pc, r2
0047bdc4  01 10 8f e0                                      add r1, pc, r1
0047bdc8  83 23 01 eb                                      bl #0x4c4bdc
0047bdcc  00 30 a0 e3                                      mov r3, #0
0047bdd0  04 00 84 e5                                      str r0, [r4, #4]
0047bdd4  14 30 c4 e5                                      strb r3, [r4, #0x14]
0047bdd8  08 30 c4 e5                                      strb r3, [r4, #8]
0047bddc  0c 30 84 e5                                      str r3, [r4, #0xc]
0047bde0  10 30 84 e5                                      str r3, [r4, #0x10]
0047bde4  04 00 a0 e1                                      mov r0, r4
0047bde8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047bdec  f8 8c 51 00 ac 46 00 00 f4 37 00 00 e0 e8 45 00  .byte 0xf8, 0x8c, 0x51, 0x00, 0xac, 0x46, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe0, 0xe8, 0x45, 0x00
0047bdfc  a4 6b 44 00                                      .byte 0xa4, 0x6b, 0x44, 0x00

; FUNCTION 0x0047be00, declared_size=116, range_size=116, mode=arm
; class-group: Objective
; alias: _ZN9ObjectiveC2Ev
; demangled: Objective::Objective()
; decoder-mode: arm
0047be00  58 30 9f e5                                      ldr r3, [pc, #0x58]
0047be04  58 20 9f e5                                      ldr r2, [pc, #0x58]
0047be08  58 10 9f e5                                      ldr r1, [pc, #0x58]
0047be0c  03 30 8f e0                                      add r3, pc, r3
0047be10  10 40 2d e9                                      push {r4, lr}
0047be14  02 20 93 e7                                      ldr r2, [r3, r2]
0047be18  01 10 93 e7                                      ldr r1, [r3, r1]
0047be1c  00 40 a0 e1                                      mov r4, r0
0047be20  08 20 82 e2                                      add r2, r2, #8
0047be24  00 20 80 e5                                      str r2, [r0]
0047be28  2c 00 91 e5                                      ldr r0, [r1, #0x2c]
0047be2c  38 20 9f e5                                      ldr r2, [pc, #0x38]
0047be30  38 10 9f e5                                      ldr r1, [pc, #0x38]
0047be34  02 20 8f e0                                      add r2, pc, r2
0047be38  01 10 8f e0                                      add r1, pc, r1
0047be3c  66 23 01 eb                                      bl #0x4c4bdc
0047be40  00 30 a0 e3                                      mov r3, #0
0047be44  04 00 84 e5                                      str r0, [r4, #4]
0047be48  14 30 c4 e5                                      strb r3, [r4, #0x14]
0047be4c  08 30 c4 e5                                      strb r3, [r4, #8]
0047be50  0c 30 84 e5                                      str r3, [r4, #0xc]
0047be54  10 30 84 e5                                      str r3, [r4, #0x10]
0047be58  04 00 a0 e1                                      mov r0, r4
0047be5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047be60  84 8c 51 00 ac 46 00 00 f4 37 00 00 6c e8 45 00  .byte 0x84, 0x8c, 0x51, 0x00, 0xac, 0x46, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x6c, 0xe8, 0x45, 0x00
0047be70  30 6b 44 00                                      .byte 0x30, 0x6b, 0x44, 0x00

; FUNCTION 0x0047e8e4, declared_size=48, range_size=48, mode=arm
; class-group: Objective
; alias: _ZNK9Objective7GetDescEv
; demangled: Objective::GetDesc() const
; decoder-mode: arm
0047e8e4  10 40 2d e9                                      push {r4, lr}
0047e8e8  00 40 a0 e1                                      mov r4, r0
0047e8ec  08 d0 4d e2                                      sub sp, sp, #8
0047e8f0  01 00 a0 e1                                      mov r0, r1
0047e8f4  2f f4 ff eb                                      bl #0x47b9b8
0047e8f8  04 20 8d e2                                      add r2, sp, #4
0047e8fc  00 10 a0 e1                                      mov r1, r0
0047e900  04 00 a0 e1                                      mov r0, r4
0047e904  f8 55 fa eb                                      bl #0x3140ec
0047e908  04 00 a0 e1                                      mov r0, r4
0047e90c  08 d0 8d e2                                      add sp, sp, #8
0047e910  10 80 bd e8                                      pop {r4, pc}
