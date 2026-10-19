; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004787dc, declared_size=52, range_size=52, mode=arm
; class-group: Condition_IsPlayerInLevel
; alias: _ZN25Condition_IsPlayerInLevelD1Ev
; demangled: Condition_IsPlayerInLevel::~Condition_IsPlayerInLevel()
; decoder-mode: arm
004787dc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004787e0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004787e4  10 40 2d e9                                      push {r4, lr}
004787e8  03 30 8f e0                                      add r3, pc, r3
004787ec  02 20 93 e7                                      ldr r2, [r3, r2]
004787f0  00 40 a0 e1                                      mov r4, r0
004787f4  08 20 82 e2                                      add r2, r2, #8
004787f8  00 20 80 e5                                      str r2, [r0]
004787fc  a7 ff ff eb                                      bl #0x4786a0
00478800  04 00 a0 e1                                      mov r0, r4
00478804  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00478808  a8 c2 51 00 68 1b 00 00                          .byte 0xa8, 0xc2, 0x51, 0x00, 0x68, 0x1b, 0x00, 0x00

; FUNCTION 0x00478ba4, declared_size=108, range_size=108, mode=arm
; class-group: Condition_IsPlayerInLevel
; alias: _ZN25Condition_IsPlayerInLevel37DBG_TraceDetailedConditionInformationEP7__sFILE
; demangled: Condition_IsPlayerInLevel::DBG_TraceDetailedConditionInformation(__sFILE*)
; decoder-mode: arm
00478ba4  04 20 90 e5                                      ldr r2, [r0, #4]
00478ba8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00478bac  08 20 92 e5                                      ldr r2, [r2, #8]
00478bb0  03 30 8f e0                                      add r3, pc, r3
00478bb4  00 00 52 e3                                      cmp r2, #0
00478bb8  09 00 00 ba                                      blt #0x478be4
00478bbc  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00478bc0  00 00 93 e7                                      ldr r0, [r3, r0]
00478bc4  00 00 90 e5                                      ldr r0, [r0]
00478bc8  00 00 52 e1                                      cmp r2, r0
00478bcc  04 00 00 2a                                      bhs #0x478be4
00478bd0  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
00478bd4  00 30 93 e7                                      ldr r3, [r3, r0]
00478bd8  00 30 93 e5                                      ldr r3, [r3]
00478bdc  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
00478be0  01 00 00 ea                                      b #0x478bec
00478be4  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00478be8  02 20 8f e0                                      add r2, pc, r2
00478bec  01 00 a0 e1                                      mov r0, r1
00478bf0  14 10 9f e5                                      ldr r1, [pc, #0x14]
00478bf4  01 10 8f e0                                      add r1, pc, r1
00478bf8  01 55 fa ea                                      b #0x30e004
; mapping-symbol data/literal pool
00478bfc  e0 be 51 00 c0 18 00 00 5c 3b 00 00 28 6c 44 00  .byte 0xe0, 0xbe, 0x51, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x5c, 0x3b, 0x00, 0x00, 0x28, 0x6c, 0x44, 0x00
00478c0c  fc 4d 45 00                                      .byte 0xfc, 0x4d, 0x45, 0x00

; FUNCTION 0x00478d78, declared_size=60, range_size=60, mode=arm
; class-group: Condition_IsPlayerInLevel
; alias: _ZN25Condition_IsPlayerInLevel4EvalEv
; demangled: Condition_IsPlayerInLevel::Eval()
; decoder-mode: arm
00478d78  10 40 2d e9                                      push {r4, lr}
00478d7c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00478d80  28 20 9f e5                                      ldr r2, [pc, #0x28]
00478d84  04 40 90 e5                                      ldr r4, [r0, #4]
00478d88  03 30 8f e0                                      add r3, pc, r3
00478d8c  02 00 93 e7                                      ldr r0, [r3, r2]
00478d90  ff 99 fa eb                                      bl #0x31f594
00478d94  08 30 94 e5                                      ldr r3, [r4, #8]
00478d98  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
00478d9c  00 00 53 e1                                      cmp r3, r0
00478da0  00 00 a0 13                                      movne r0, #0
00478da4  01 00 a0 03                                      moveq r0, #1
00478da8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00478dac  08 bd 51 00 f4 37 00 00                          .byte 0x08, 0xbd, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00479230, declared_size=60, range_size=60, mode=arm
; class-group: Condition_IsPlayerInLevel
; alias: _ZN25Condition_IsPlayerInLevelD0Ev
; demangled: Condition_IsPlayerInLevel::~Condition_IsPlayerInLevel()
; decoder-mode: arm
00479230  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00479234  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00479238  10 40 2d e9                                      push {r4, lr}
0047923c  03 30 8f e0                                      add r3, pc, r3
00479240  02 20 93 e7                                      ldr r2, [r3, r2]
00479244  00 40 a0 e1                                      mov r4, r0
00479248  08 20 82 e2                                      add r2, r2, #8
0047924c  00 20 80 e5                                      str r2, [r0]
00479250  12 fd ff eb                                      bl #0x4786a0
00479254  04 00 a0 e1                                      mov r0, r4
00479258  78 5c fa eb                                      bl #0x310440
0047925c  04 00 a0 e1                                      mov r0, r4
00479260  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00479264  54 b8 51 00 68 1b 00 00                          .byte 0x54, 0xb8, 0x51, 0x00, 0x68, 0x1b, 0x00, 0x00
