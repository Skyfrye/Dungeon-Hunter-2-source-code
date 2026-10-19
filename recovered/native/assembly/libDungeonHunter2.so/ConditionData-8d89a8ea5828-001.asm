; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033dd24, declared_size=8, range_size=8, mode=arm
; class-group: ConditionData
; alias: _ZN13ConditionData11SetAsTestedEb
; demangled: ConditionData::SetAsTested(bool)
; decoder-mode: arm
0033dd24  20 10 c0 e5                                      strb r1, [r0, #0x20]
0033dd28  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033e5f8, declared_size=36, range_size=36, mode=arm
; class-group: ConditionData
; alias: _ZNK13ConditionData6IsTrueEv
; demangled: ConditionData::IsTrue() const
; decoder-mode: arm
0033e5f8  20 30 d0 e5                                      ldrb r3, [r0, #0x20]
0033e5fc  00 00 53 e3                                      cmp r3, #0
0033e600  03 00 00 1a                                      bne #0x33e614
0033e604  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0033e608  00 00 50 e3                                      cmp r0, #0
0033e60c  00 00 00 0a                                      beq #0x33e614
0033e610  3b e8 04 ea                                      b #0x478704
0033e614  01 00 a0 e3                                      mov r0, #1
0033e618  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033e7c8, declared_size=48, range_size=48, mode=arm
; class-group: ConditionData
; alias: _ZN13ConditionData5ClearEv
; demangled: ConditionData::Clear()
; decoder-mode: arm
0033e7c8  70 40 2d e9                                      push {r4, r5, r6, lr}
0033e7cc  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
0033e7d0  00 50 a0 e1                                      mov r5, r0
0033e7d4  00 00 54 e3                                      cmp r4, #0
0033e7d8  05 00 00 0a                                      beq #0x33e7f4
0033e7dc  04 00 a0 e1                                      mov r0, r4
0033e7e0  b1 e9 04 eb                                      bl #0x478eac
0033e7e4  04 00 a0 e1                                      mov r0, r4
0033e7e8  14 47 ff eb                                      bl #0x310440
0033e7ec  00 30 a0 e3                                      mov r3, #0
0033e7f0  1c 30 85 e5                                      str r3, [r5, #0x1c]
0033e7f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0033e7f8, declared_size=64, range_size=64, mode=arm
; class-group: ConditionData
; alias: _ZN13ConditionDataD1Ev
; demangled: ConditionData::~ConditionData()
; decoder-mode: arm
0033e7f8  30 30 9f e5                                      ldr r3, [pc, #0x30]
0033e7fc  30 20 9f e5                                      ldr r2, [pc, #0x30]
0033e800  70 40 2d e9                                      push {r4, r5, r6, lr}
0033e804  03 30 8f e0                                      add r3, pc, r3
0033e808  02 20 93 e7                                      ldr r2, [r3, r2]
0033e80c  00 40 a0 e1                                      mov r4, r0
0033e810  00 50 a0 e1                                      mov r5, r0
0033e814  08 20 82 e2                                      add r2, r2, #8
0033e818  04 20 84 e4                                      str r2, [r4], #4
0033e81c  e9 ff ff eb                                      bl #0x33e7c8
0033e820  04 00 a0 e1                                      mov r0, r4
0033e824  60 54 ff eb                                      bl #0x3139ac
0033e828  05 00 a0 e1                                      mov r0, r5
0033e82c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033e830  8c 62 65 00 58 2e 00 00                          .byte 0x8c, 0x62, 0x65, 0x00, 0x58, 0x2e, 0x00, 0x00

; FUNCTION 0x0033eacc, declared_size=28, range_size=28, mode=arm
; class-group: ConditionData
; alias: _ZN13ConditionDataD0Ev
; demangled: ConditionData::~ConditionData()
; decoder-mode: arm
0033eacc  10 40 2d e9                                      push {r4, lr}
0033ead0  00 40 a0 e1                                      mov r4, r0
0033ead4  47 ff ff eb                                      bl #0x33e7f8
0033ead8  04 00 a0 e1                                      mov r0, r4
0033eadc  57 46 ff eb                                      bl #0x310440
0033eae0  04 00 a0 e1                                      mov r0, r4
0033eae4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033eae8, declared_size=64, range_size=64, mode=arm
; class-group: ConditionData
; alias: _ZN13ConditionDataD2Ev
; demangled: ConditionData::~ConditionData()
; decoder-mode: arm
0033eae8  30 30 9f e5                                      ldr r3, [pc, #0x30]
0033eaec  30 20 9f e5                                      ldr r2, [pc, #0x30]
0033eaf0  70 40 2d e9                                      push {r4, r5, r6, lr}
0033eaf4  03 30 8f e0                                      add r3, pc, r3
0033eaf8  02 20 93 e7                                      ldr r2, [r3, r2]
0033eafc  00 40 a0 e1                                      mov r4, r0
0033eb00  00 50 a0 e1                                      mov r5, r0
0033eb04  08 20 82 e2                                      add r2, r2, #8
0033eb08  04 20 84 e4                                      str r2, [r4], #4
0033eb0c  2d ff ff eb                                      bl #0x33e7c8
0033eb10  04 00 a0 e1                                      mov r0, r4
0033eb14  a4 53 ff eb                                      bl #0x3139ac
0033eb18  05 00 a0 e1                                      mov r0, r5
0033eb1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033eb20  9c 5f 65 00 58 2e 00 00                          .byte 0x9c, 0x5f, 0x65, 0x00, 0x58, 0x2e, 0x00, 0x00

; FUNCTION 0x0033eb28, declared_size=228, range_size=228, mode=arm
; class-group: ConditionData
; alias: _ZN13ConditionData4InitEv
; demangled: ConditionData::Init()
; decoder-mode: arm
0033eb28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033eb2c  18 50 90 e5                                      ldr r5, [r0, #0x18]
0033eb30  14 30 90 e5                                      ldr r3, [r0, #0x14]
0033eb34  bc 80 9f e5                                      ldr r8, [pc, #0xbc]
0033eb38  00 a0 a0 e1                                      mov sl, r0
0033eb3c  05 00 53 e1                                      cmp r3, r5
0033eb40  08 80 8f e0                                      add r8, pc, r8
0033eb44  28 00 00 0a                                      beq #0x33ebec
0033eb48  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0033eb4c  05 00 a0 e1                                      mov r0, r5
0033eb50  01 10 8f e0                                      add r1, pc, r1
0033eb54  f0 3d ff eb                                      bl #0x30e31c
0033eb58  00 00 50 e3                                      cmp r0, #0
0033eb5c  22 00 00 0a                                      beq #0x33ebec
0033eb60  98 30 9f e5                                      ldr r3, [pc, #0x98]
0033eb64  03 30 98 e7                                      ldr r3, [r8, r3]
0033eb68  00 60 93 e5                                      ldr r6, [r3]
0033eb6c  00 00 56 e3                                      cmp r6, #0
0033eb70  1d 00 00 0a                                      beq #0x33ebec
0033eb74  88 30 9f e5                                      ldr r3, [pc, #0x88]
0033eb78  00 40 a0 e3                                      mov r4, #0
0033eb7c  03 30 98 e7                                      ldr r3, [r8, r3]
0033eb80  00 70 93 e5                                      ldr r7, [r3]
0033eb84  02 00 00 ea                                      b #0x33eb94
0033eb88  01 40 84 e2                                      add r4, r4, #1
0033eb8c  06 00 54 e1                                      cmp r4, r6
0033eb90  16 00 00 0a                                      beq #0x33ebf0
0033eb94  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
0033eb98  05 00 a0 e1                                      mov r0, r5
0033eb9c  de 3d ff eb                                      bl #0x30e31c
0033eba0  00 00 50 e3                                      cmp r0, #0
0033eba4  f7 ff ff 1a                                      bne #0x33eb88
0033eba8  01 00 74 e3                                      cmn r4, #1
0033ebac  10 00 00 0a                                      beq #0x33ebf4
0033ebb0  00 10 a0 e1                                      mov r1, r0
0033ebb4  0c 00 a0 e3                                      mov r0, #0xc
0033ebb8  6c 46 ff eb                                      bl #0x310570
0033ebbc  00 50 a0 e1                                      mov r5, r0
0033ebc0  ca e6 04 eb                                      bl #0x4786f0
0033ebc4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0033ebc8  1c 50 8a e5                                      str r5, [sl, #0x1c]
0033ebcc  05 00 a0 e1                                      mov r0, r5
0033ebd0  03 30 98 e7                                      ldr r3, [r8, r3]
0033ebd4  00 30 93 e5                                      ldr r3, [r3]
0033ebd8  04 42 83 e0                                      add r4, r3, r4, lsl #4
0033ebdc  04 20 94 e5                                      ldr r2, [r4, #4]
0033ebe0  08 10 94 e5                                      ldr r1, [r4, #8]
0033ebe4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0033ebe8  49 e7 04 ea                                      b #0x478914
0033ebec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033ebf0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033ebf4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0033ebf8  50 5f 65 00 50 bb 59 00 64 2f 00 00 54 35 00 00  .byte 0x50, 0x5f, 0x65, 0x00, 0x50, 0xbb, 0x59, 0x00, 0x64, 0x2f, 0x00, 0x00, 0x54, 0x35, 0x00, 0x00
0033ec08  40 28 00 00                                      .byte 0x40, 0x28, 0x00, 0x00

; FUNCTION 0x0033ed7c, declared_size=92, range_size=92, mode=arm
; class-group: ConditionData
; alias: _ZN13ConditionDataC1Ev
; demangled: ConditionData::ConditionData()
; decoder-mode: arm
0033ed7c  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0033ed80  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
0033ed84  00 30 a0 e1                                      mov r3, r0
0033ed88  02 20 8f e0                                      add r2, pc, r2
0033ed8c  0c c0 92 e7                                      ldr ip, [r2, ip]
0033ed90  10 40 2d e9                                      push {r4, lr}
0033ed94  08 c0 8c e2                                      add ip, ip, #8
0033ed98  00 40 a0 e1                                      mov r4, r0
0033ed9c  04 c0 83 e4                                      str ip, [r3], #4
0033eda0  03 00 a0 e1                                      mov r0, r3
0033eda4  14 30 84 e5                                      str r3, [r4, #0x14]
0033eda8  18 30 84 e5                                      str r3, [r4, #0x18]
0033edac  10 10 a0 e3                                      mov r1, #0x10
0033edb0  31 4a ff eb                                      bl #0x31167c
0033edb4  14 20 94 e5                                      ldr r2, [r4, #0x14]
0033edb8  00 30 a0 e3                                      mov r3, #0
0033edbc  04 00 a0 e1                                      mov r0, r4
0033edc0  00 30 c2 e5                                      strb r3, [r2]
0033edc4  20 30 c4 e5                                      strb r3, [r4, #0x20]
0033edc8  1c 30 84 e5                                      str r3, [r4, #0x1c]
0033edcc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033edd0  08 5d 65 00 58 2e 00 00                          .byte 0x08, 0x5d, 0x65, 0x00, 0x58, 0x2e, 0x00, 0x00

; FUNCTION 0x0033edd8, declared_size=92, range_size=92, mode=arm
; class-group: ConditionData
; alias: _ZN13ConditionDataC2Ev
; demangled: ConditionData::ConditionData()
; decoder-mode: arm
0033edd8  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0033eddc  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
0033ede0  00 30 a0 e1                                      mov r3, r0
0033ede4  02 20 8f e0                                      add r2, pc, r2
0033ede8  0c c0 92 e7                                      ldr ip, [r2, ip]
0033edec  10 40 2d e9                                      push {r4, lr}
0033edf0  08 c0 8c e2                                      add ip, ip, #8
0033edf4  00 40 a0 e1                                      mov r4, r0
0033edf8  04 c0 83 e4                                      str ip, [r3], #4
0033edfc  03 00 a0 e1                                      mov r0, r3
0033ee00  14 30 84 e5                                      str r3, [r4, #0x14]
0033ee04  18 30 84 e5                                      str r3, [r4, #0x18]
0033ee08  10 10 a0 e3                                      mov r1, #0x10
0033ee0c  1a 4a ff eb                                      bl #0x31167c
0033ee10  14 20 94 e5                                      ldr r2, [r4, #0x14]
0033ee14  00 30 a0 e3                                      mov r3, #0
0033ee18  04 00 a0 e1                                      mov r0, r4
0033ee1c  00 30 c2 e5                                      strb r3, [r2]
0033ee20  20 30 c4 e5                                      strb r3, [r4, #0x20]
0033ee24  1c 30 84 e5                                      str r3, [r4, #0x1c]
0033ee28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033ee2c  ac 5c 65 00 58 2e 00 00                          .byte 0xac, 0x5c, 0x65, 0x00, 0x58, 0x2e, 0x00, 0x00
