; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455948, declared_size=8, range_size=8, mode=arm
; class-group: Script_SkipAllTutorialMessages
; alias: _ZNK30Script_SkipAllTutorialMessages10IsBlockingEv
; demangled: Script_SkipAllTutorialMessages::IsBlocking() const
; decoder-mode: arm
00455948  00 00 a0 e3                                      mov r0, #0
0045594c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0046033c, declared_size=148, range_size=148, mode=arm
; class-group: Script_SkipAllTutorialMessages
; alias: _ZN30Script_SkipAllTutorialMessages7ExecuteEbi
; demangled: Script_SkipAllTutorialMessages::Execute(bool, int)
; decoder-mode: arm
0046033c  70 40 2d e9                                      push {r4, r5, r6, lr}
00460340  80 50 9f e5                                      ldr r5, [pc, #0x80]
00460344  80 60 9f e5                                      ldr r6, [pc, #0x80]
00460348  05 50 8f e0                                      add r5, pc, r5
0046034c  06 30 95 e7                                      ldr r3, [r5, r6]
00460350  03 40 a0 e1                                      mov r4, r3
00460354  04 30 93 e5                                      ldr r3, [r3, #4]
00460358  14 20 94 e5                                      ldr r2, [r4, #0x14]
0046035c  03 00 52 e1                                      cmp r2, r3
00460360  16 00 00 0a                                      beq #0x4603c0
00460364  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00460368  08 20 42 e2                                      sub r2, r2, #8
0046036c  02 00 53 e1                                      cmp r3, r2
00460370  08 30 83 12                                      addne r3, r3, #8
00460374  04 30 84 15                                      strne r3, [r4, #4]
00460378  f6 ff ff 1a                                      bne #0x460358
0046037c  08 00 94 e5                                      ldr r0, [r4, #8]
00460380  80 10 a0 e3                                      mov r1, #0x80
00460384  00 00 50 e3                                      cmp r0, #0
00460388  00 00 00 0a                                      beq #0x460390
0046038c  db a2 0a eb                                      bl #0x708f00
00460390  06 20 95 e7                                      ldr r2, [r5, r6]
00460394  10 30 92 e5                                      ldr r3, [r2, #0x10]
00460398  04 10 83 e2                                      add r1, r3, #4
0046039c  10 10 82 e5                                      str r1, [r2, #0x10]
004603a0  04 30 93 e5                                      ldr r3, [r3, #4]
004603a4  80 10 83 e2                                      add r1, r3, #0x80
004603a8  0c 10 82 e5                                      str r1, [r2, #0xc]
004603ac  04 30 82 e5                                      str r3, [r2, #4]
004603b0  08 30 82 e5                                      str r3, [r2, #8]
004603b4  14 20 94 e5                                      ldr r2, [r4, #0x14]
004603b8  03 00 52 e1                                      cmp r2, r3
004603bc  e8 ff ff 1a                                      bne #0x460364
004603c0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004603c4  a8 ff ff ea                                      b #0x46026c
; mapping-symbol data/literal pool
004603c8  48 47 53 00 10 1c 00 00                          .byte 0x48, 0x47, 0x53, 0x00, 0x10, 0x1c, 0x00, 0x00
