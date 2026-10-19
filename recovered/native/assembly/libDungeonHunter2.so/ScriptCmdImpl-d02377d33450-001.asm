; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455628, declared_size=4, range_size=4, mode=arm
; class-group: ScriptCmdImpl
; alias: _ZN13ScriptCmdImpl4InitEv
; demangled: ScriptCmdImpl::Init()
; decoder-mode: arm
00455628  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045562c, declared_size=4, range_size=4, mode=arm
; class-group: ScriptCmdImpl
; alias: _ZN13ScriptCmdImpl6UpdateEv
; demangled: ScriptCmdImpl::Update()
; decoder-mode: arm
0045562c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004559f8, declared_size=112, range_size=112, mode=arm
; class-group: ScriptCmdImpl
; alias: _ZN13ScriptCmdImplD2Ev
; demangled: ScriptCmdImpl::~ScriptCmdImpl()
; decoder-mode: arm
004559f8  10 40 2d e9                                      push {r4, lr}
004559fc  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00455a00  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00455a04  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00455a08  03 30 8f e0                                      add r3, pc, r3
00455a0c  02 20 93 e7                                      ldr r2, [r3, r2]
00455a10  00 00 51 e3                                      cmp r1, #0
00455a14  00 40 a0 e1                                      mov r4, r0
00455a18  08 20 82 e2                                      add r2, r2, #8
00455a1c  00 20 80 e5                                      str r2, [r0]
00455a20  0c 00 00 0a                                      beq #0x455a58
00455a24  00 30 91 e5                                      ldr r3, [r1]
00455a28  01 00 a0 e1                                      mov r0, r1
00455a2c  0f e0 a0 e1                                      mov lr, pc
00455a30  08 f0 93 e5                                      ldr pc, [r3, #8]
00455a34  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00455a38  00 00 53 e3                                      cmp r3, #0
00455a3c  03 00 00 0a                                      beq #0x455a50
00455a40  03 00 a0 e1                                      mov r0, r3
00455a44  00 30 93 e5                                      ldr r3, [r3]
00455a48  0f e0 a0 e1                                      mov lr, pc
00455a4c  04 f0 93 e5                                      ldr pc, [r3, #4]
00455a50  00 30 a0 e3                                      mov r3, #0
00455a54  0c 30 84 e5                                      str r3, [r4, #0xc]
00455a58  04 00 a0 e1                                      mov r0, r4
00455a5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00455a60  88 f0 53 00 94 3b 00 00                          .byte 0x88, 0xf0, 0x53, 0x00, 0x94, 0x3b, 0x00, 0x00

; FUNCTION 0x00455a68, declared_size=112, range_size=112, mode=arm
; class-group: ScriptCmdImpl
; alias: _ZN13ScriptCmdImplD1Ev
; demangled: ScriptCmdImpl::~ScriptCmdImpl()
; decoder-mode: arm
00455a68  10 40 2d e9                                      push {r4, lr}
00455a6c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00455a70  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00455a74  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00455a78  03 30 8f e0                                      add r3, pc, r3
00455a7c  02 20 93 e7                                      ldr r2, [r3, r2]
00455a80  00 00 51 e3                                      cmp r1, #0
00455a84  00 40 a0 e1                                      mov r4, r0
00455a88  08 20 82 e2                                      add r2, r2, #8
00455a8c  00 20 80 e5                                      str r2, [r0]
00455a90  0c 00 00 0a                                      beq #0x455ac8
00455a94  00 30 91 e5                                      ldr r3, [r1]
00455a98  01 00 a0 e1                                      mov r0, r1
00455a9c  0f e0 a0 e1                                      mov lr, pc
00455aa0  08 f0 93 e5                                      ldr pc, [r3, #8]
00455aa4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00455aa8  00 00 53 e3                                      cmp r3, #0
00455aac  03 00 00 0a                                      beq #0x455ac0
00455ab0  03 00 a0 e1                                      mov r0, r3
00455ab4  00 30 93 e5                                      ldr r3, [r3]
00455ab8  0f e0 a0 e1                                      mov lr, pc
00455abc  04 f0 93 e5                                      ldr pc, [r3, #4]
00455ac0  00 30 a0 e3                                      mov r3, #0
00455ac4  0c 30 84 e5                                      str r3, [r4, #0xc]
00455ac8  04 00 a0 e1                                      mov r0, r4
00455acc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00455ad0  18 f0 53 00 94 3b 00 00                          .byte 0x18, 0xf0, 0x53, 0x00, 0x94, 0x3b, 0x00, 0x00
