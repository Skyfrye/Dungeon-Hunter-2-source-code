; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004786a4, declared_size=52, range_size=52, mode=arm
; class-group: Condition_IsQuestInStateGeneric
; alias: _ZN31Condition_IsQuestInStateGenericD1Ev
; demangled: Condition_IsQuestInStateGeneric::~Condition_IsQuestInStateGeneric()
; decoder-mode: arm
004786a4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004786a8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004786ac  10 40 2d e9                                      push {r4, lr}
004786b0  03 30 8f e0                                      add r3, pc, r3
004786b4  02 20 93 e7                                      ldr r2, [r3, r2]
004786b8  00 40 a0 e1                                      mov r4, r0
004786bc  08 20 82 e2                                      add r2, r2, #8
004786c0  00 20 80 e5                                      str r2, [r0]
004786c4  f5 ff ff eb                                      bl #0x4786a0
004786c8  04 00 a0 e1                                      mov r0, r4
004786cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004786d0  e0 c3 51 00 0c 15 00 00                          .byte 0xe0, 0xc3, 0x51, 0x00, 0x0c, 0x15, 0x00, 0x00

; FUNCTION 0x00478cc4, declared_size=180, range_size=180, mode=arm
; class-group: Condition_IsQuestInStateGeneric
; alias: _ZN31Condition_IsQuestInStateGeneric37DBG_TraceDetailedConditionInformationEP7__sFILE
; demangled: Condition_IsQuestInStateGeneric::DBG_TraceDetailedConditionInformation(__sFILE*)
; decoder-mode: arm
00478cc4  70 40 2d e9                                      push {r4, r5, r6, lr}
00478cc8  04 60 90 e5                                      ldr r6, [r0, #4]
00478ccc  84 40 9f e5                                      ldr r4, [pc, #0x84]
00478cd0  01 50 a0 e1                                      mov r5, r1
00478cd4  08 30 96 e5                                      ldr r3, [r6, #8]
00478cd8  04 40 8f e0                                      add r4, pc, r4
00478cdc  00 00 53 e3                                      cmp r3, #0
00478ce0  09 00 00 ba                                      blt #0x478d0c
00478ce4  70 20 9f e5                                      ldr r2, [pc, #0x70]
00478ce8  02 20 94 e7                                      ldr r2, [r4, r2]
00478cec  00 20 92 e5                                      ldr r2, [r2]
00478cf0  02 00 53 e1                                      cmp r3, r2
00478cf4  04 00 00 2a                                      bhs #0x478d0c
00478cf8  60 20 9f e5                                      ldr r2, [pc, #0x60]
00478cfc  02 20 94 e7                                      ldr r2, [r4, r2]
00478d00  00 20 92 e5                                      ldr r2, [r2]
00478d04  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
00478d08  01 00 00 ea                                      b #0x478d14
00478d0c  50 20 9f e5                                      ldr r2, [pc, #0x50]
00478d10  02 20 8f e0                                      add r2, pc, r2
00478d14  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00478d18  05 00 a0 e1                                      mov r0, r5
00478d1c  01 10 8f e0                                      add r1, pc, r1
00478d20  b7 54 fa eb                                      bl #0x30e004
00478d24  40 30 9f e5                                      ldr r3, [pc, #0x40]
00478d28  40 10 9f e5                                      ldr r1, [pc, #0x40]
00478d2c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00478d30  03 30 94 e7                                      ldr r3, [r4, r3]
00478d34  01 10 8f e0                                      add r1, pc, r1
00478d38  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00478d3c  71 2f 01 eb                                      bl #0x4c4b08
00478d40  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00478d44  00 20 a0 e1                                      mov r2, r0
00478d48  05 00 a0 e1                                      mov r0, r5
00478d4c  01 10 8f e0                                      add r1, pc, r1
00478d50  70 40 bd e8                                      pop {r4, r5, r6, lr}
00478d54  aa 54 fa ea                                      b #0x30e004
; mapping-symbol data/literal pool
00478d58  b8 bd 51 00 24 44 00 00 cc 20 00 00 00 6b 44 00  .byte 0xb8, 0xbd, 0x51, 0x00, 0x24, 0x44, 0x00, 0x00, 0xcc, 0x20, 0x00, 0x00, 0x00, 0x6b, 0x44, 0x00
00478d68  2c 4d 45 00 f4 37 00 00 a4 65 44 00 e4 4c 45 00  .byte 0x2c, 0x4d, 0x45, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x65, 0x44, 0x00, 0xe4, 0x4c, 0x45, 0x00

; FUNCTION 0x00478fe8, declared_size=184, range_size=184, mode=arm
; class-group: Condition_IsQuestInStateGeneric
; alias: _ZN31Condition_IsQuestInStateGeneric4EvalEv
; demangled: Condition_IsQuestInStateGeneric::Eval()
; decoder-mode: arm
00478fe8  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00478fec  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00478ff0  70 40 2d e9                                      push {r4, r5, r6, lr}
00478ff4  03 30 8f e0                                      add r3, pc, r3
00478ff8  00 40 a0 e1                                      mov r4, r0
00478ffc  02 00 93 e7                                      ldr r0, [r3, r2]
00479000  00 10 a0 e3                                      mov r1, #0
00479004  01 20 a0 e3                                      mov r2, #1
00479008  40 00 90 e5                                      ldr r0, [r0, #0x40]
0047900c  04 50 94 e5                                      ldr r5, [r4, #4]
00479010  18 d5 fb eb                                      bl #0x36e478
00479014  60 06 90 e5                                      ldr r0, [r0, #0x660]
00479018  00 00 50 e3                                      cmp r0, #0
0047901c  16 00 00 0a                                      beq #0x47907c
00479020  08 10 95 e5                                      ldr r1, [r5, #8]
00479024  00 20 e0 e3                                      mvn r2, #0
00479028  b2 0c fd eb                                      bl #0x3bc2f8
0047902c  00 00 50 e3                                      cmp r0, #0
00479030  11 00 00 0a                                      beq #0x47907c
00479034  08 30 94 e5                                      ldr r3, [r4, #8]
00479038  00 20 90 e5                                      ldr r2, [r0]
0047903c  01 00 53 e3                                      cmp r3, #1
00479040  0f 00 00 0a                                      beq #0x479084
00479044  02 00 53 e3                                      cmp r3, #2
00479048  06 00 00 0a                                      beq #0x479068
0047904c  00 00 53 e3                                      cmp r3, #0
00479050  09 00 00 1a                                      bne #0x47907c
00479054  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00479058  02 00 50 e1                                      cmp r0, r2
0047905c  00 00 a0 13                                      movne r0, #0
00479060  01 00 a0 03                                      moveq r0, #1
00479064  70 80 bd e8                                      pop {r4, r5, r6, pc}
00479068  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0047906c  02 00 50 e1                                      cmp r0, r2
00479070  00 00 a0 a3                                      movge r0, #0
00479074  01 00 a0 b3                                      movlt r0, #1
00479078  70 80 bd e8                                      pop {r4, r5, r6, pc}
0047907c  00 00 a0 e3                                      mov r0, #0
00479080  70 80 bd e8                                      pop {r4, r5, r6, pc}
00479084  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00479088  02 00 50 e1                                      cmp r0, r2
0047908c  00 00 a0 d3                                      movle r0, #0
00479090  01 00 a0 c3                                      movgt r0, #1
00479094  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00479098  9c ba 51 00 f4 37 00 00                          .byte 0x9c, 0xba, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004791b8, declared_size=60, range_size=60, mode=arm
; class-group: Condition_IsQuestInStateGeneric
; alias: _ZN31Condition_IsQuestInStateGenericD0Ev
; demangled: Condition_IsQuestInStateGeneric::~Condition_IsQuestInStateGeneric()
; decoder-mode: arm
004791b8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004791bc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004791c0  10 40 2d e9                                      push {r4, lr}
004791c4  03 30 8f e0                                      add r3, pc, r3
004791c8  02 20 93 e7                                      ldr r2, [r3, r2]
004791cc  00 40 a0 e1                                      mov r4, r0
004791d0  08 20 82 e2                                      add r2, r2, #8
004791d4  00 20 80 e5                                      str r2, [r0]
004791d8  30 fd ff eb                                      bl #0x4786a0
004791dc  04 00 a0 e1                                      mov r0, r4
004791e0  96 5c fa eb                                      bl #0x310440
004791e4  04 00 a0 e1                                      mov r0, r4
004791e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004791ec  cc b8 51 00 0c 15 00 00                          .byte 0xcc, 0xb8, 0x51, 0x00, 0x0c, 0x15, 0x00, 0x00
