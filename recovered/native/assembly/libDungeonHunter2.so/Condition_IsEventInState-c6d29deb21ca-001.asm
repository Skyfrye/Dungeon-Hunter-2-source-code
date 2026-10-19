; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004787a8, declared_size=52, range_size=52, mode=arm
; class-group: Condition_IsEventInState
; alias: _ZN24Condition_IsEventInStateD1Ev
; demangled: Condition_IsEventInState::~Condition_IsEventInState()
; decoder-mode: arm
004787a8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004787ac  24 20 9f e5                                      ldr r2, [pc, #0x24]
004787b0  10 40 2d e9                                      push {r4, lr}
004787b4  03 30 8f e0                                      add r3, pc, r3
004787b8  02 20 93 e7                                      ldr r2, [r3, r2]
004787bc  00 40 a0 e1                                      mov r4, r0
004787c0  08 20 82 e2                                      add r2, r2, #8
004787c4  00 20 80 e5                                      str r2, [r0]
004787c8  b4 ff ff eb                                      bl #0x4786a0
004787cc  04 00 a0 e1                                      mov r0, r4
004787d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004787d4  dc c2 51 00 64 0c 00 00                          .byte 0xdc, 0xc2, 0x51, 0x00, 0x64, 0x0c, 0x00, 0x00

; FUNCTION 0x00478c10, declared_size=180, range_size=180, mode=arm
; class-group: Condition_IsEventInState
; alias: _ZN24Condition_IsEventInState37DBG_TraceDetailedConditionInformationEP7__sFILE
; demangled: Condition_IsEventInState::DBG_TraceDetailedConditionInformation(__sFILE*)
; decoder-mode: arm
00478c10  70 40 2d e9                                      push {r4, r5, r6, lr}
00478c14  04 60 90 e5                                      ldr r6, [r0, #4]
00478c18  84 40 9f e5                                      ldr r4, [pc, #0x84]
00478c1c  01 50 a0 e1                                      mov r5, r1
00478c20  08 30 96 e5                                      ldr r3, [r6, #8]
00478c24  04 40 8f e0                                      add r4, pc, r4
00478c28  00 00 53 e3                                      cmp r3, #0
00478c2c  09 00 00 ba                                      blt #0x478c58
00478c30  70 20 9f e5                                      ldr r2, [pc, #0x70]
00478c34  02 20 94 e7                                      ldr r2, [r4, r2]
00478c38  00 20 92 e5                                      ldr r2, [r2]
00478c3c  02 00 53 e1                                      cmp r3, r2
00478c40  04 00 00 2a                                      bhs #0x478c58
00478c44  60 20 9f e5                                      ldr r2, [pc, #0x60]
00478c48  02 20 94 e7                                      ldr r2, [r4, r2]
00478c4c  00 20 92 e5                                      ldr r2, [r2]
00478c50  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
00478c54  01 00 00 ea                                      b #0x478c60
00478c58  50 20 9f e5                                      ldr r2, [pc, #0x50]
00478c5c  02 20 8f e0                                      add r2, pc, r2
00478c60  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00478c64  05 00 a0 e1                                      mov r0, r5
00478c68  01 10 8f e0                                      add r1, pc, r1
00478c6c  e4 54 fa eb                                      bl #0x30e004
00478c70  40 30 9f e5                                      ldr r3, [pc, #0x40]
00478c74  40 10 9f e5                                      ldr r1, [pc, #0x40]
00478c78  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00478c7c  03 30 94 e7                                      ldr r3, [r4, r3]
00478c80  01 10 8f e0                                      add r1, pc, r1
00478c84  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00478c88  9e 2f 01 eb                                      bl #0x4c4b08
00478c8c  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00478c90  00 20 a0 e1                                      mov r2, r0
00478c94  05 00 a0 e1                                      mov r0, r5
00478c98  01 10 8f e0                                      add r1, pc, r1
00478c9c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00478ca0  d7 54 fa ea                                      b #0x30e004
; mapping-symbol data/literal pool
00478ca4  6c be 51 00 60 08 00 00 d0 37 00 00 b4 6b 44 00  .byte 0x6c, 0xbe, 0x51, 0x00, 0x60, 0x08, 0x00, 0x00, 0xd0, 0x37, 0x00, 0x00, 0xb4, 0x6b, 0x44, 0x00
00478cb4  a0 4d 45 00 f4 37 00 00 a0 4d 45 00 98 4d 45 00  .byte 0xa0, 0x4d, 0x45, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa0, 0x4d, 0x45, 0x00, 0x98, 0x4d, 0x45, 0x00

; FUNCTION 0x00478db4, declared_size=220, range_size=220, mode=arm
; class-group: Condition_IsEventInState
; alias: _ZN24Condition_IsEventInState4EvalEv
; demangled: Condition_IsEventInState::Eval()
; decoder-mode: arm
00478db4  70 40 2d e9                                      push {r4, r5, r6, lr}
00478db8  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
00478dbc  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00478dc0  04 50 90 e5                                      ldr r5, [r0, #4]
00478dc4  06 60 8f e0                                      add r6, pc, r6
00478dc8  08 d0 4d e2                                      sub sp, sp, #8
00478dcc  03 00 96 e7                                      ldr r0, [r6, r3]
00478dd0  ef 99 fa eb                                      bl #0x31f594
00478dd4  00 00 50 e3                                      cmp r0, #0
00478dd8  15 00 00 0a                                      beq #0x478e34
00478ddc  94 41 90 e5                                      ldr r4, [r0, #0x194]
00478de0  00 00 54 e3                                      cmp r4, #0
00478de4  09 00 00 0a                                      beq #0x478e10
00478de8  04 00 a0 e1                                      mov r0, r4
00478dec  08 10 95 e5                                      ldr r1, [r5, #8]
00478df0  3e 02 00 eb                                      bl #0x4796f0
00478df4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00478df8  00 00 90 e5                                      ldr r0, [r0]
00478dfc  00 00 53 e1                                      cmp r3, r0
00478e00  00 00 a0 13                                      movne r0, #0
00478e04  01 00 a0 03                                      moveq r0, #1
00478e08  08 d0 8d e2                                      add sp, sp, #8
00478e0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00478e10  64 30 9f e5                                      ldr r3, [pc, #0x64]
00478e14  03 30 96 e7                                      ldr r3, [r6, r3]
00478e18  00 30 93 e5                                      ldr r3, [r3]
00478e1c  02 00 53 e3                                      cmp r3, #2
00478e20  00 40 84 05                                      streq r4, [r4]
00478e24  04 00 a0 01                                      moveq r0, r4
00478e28  f6 ff ff 0a                                      beq #0x478e08
00478e2c  01 00 53 e3                                      cmp r3, #1
00478e30  01 00 00 0a                                      beq #0x478e3c
00478e34  00 00 a0 e3                                      mov r0, #0
00478e38  f2 ff ff ea                                      b #0x478e08
00478e3c  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00478e40  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00478e44  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00478e48  00 00 96 e7                                      ldr r0, [r6, r0]
00478e4c  38 30 9f e5                                      ldr r3, [pc, #0x38]
00478e50  93 c0 a0 e3                                      mov ip, #0x93
00478e54  01 10 8f e0                                      add r1, pc, r1
00478e58  a8 00 80 e2                                      add r0, r0, #0xa8
00478e5c  02 20 8f e0                                      add r2, pc, r2
00478e60  03 30 8f e0                                      add r3, pc, r3
00478e64  00 c0 8d e5                                      str ip, [sp]
00478e68  65 54 fa eb                                      bl #0x30e004
00478e6c  04 00 a0 e1                                      mov r0, r4
00478e70  e4 ff ff ea                                      b #0x478e08
; mapping-symbol data/literal pool
00478e74  cc bc 51 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0xcc, 0xbc, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00478e84  84 55 44 00 04 4c 45 00 10 4c 45 00              .byte 0x84, 0x55, 0x44, 0x00, 0x04, 0x4c, 0x45, 0x00, 0x10, 0x4c, 0x45, 0x00

; FUNCTION 0x004791f4, declared_size=60, range_size=60, mode=arm
; class-group: Condition_IsEventInState
; alias: _ZN24Condition_IsEventInStateD0Ev
; demangled: Condition_IsEventInState::~Condition_IsEventInState()
; decoder-mode: arm
004791f4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004791f8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004791fc  10 40 2d e9                                      push {r4, lr}
00479200  03 30 8f e0                                      add r3, pc, r3
00479204  02 20 93 e7                                      ldr r2, [r3, r2]
00479208  00 40 a0 e1                                      mov r4, r0
0047920c  08 20 82 e2                                      add r2, r2, #8
00479210  00 20 80 e5                                      str r2, [r0]
00479214  21 fd ff eb                                      bl #0x4786a0
00479218  04 00 a0 e1                                      mov r0, r4
0047921c  87 5c fa eb                                      bl #0x310440
00479220  04 00 a0 e1                                      mov r0, r4
00479224  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00479228  90 b8 51 00 64 0c 00 00                          .byte 0x90, 0xb8, 0x51, 0x00, 0x64, 0x0c, 0x00, 0x00
