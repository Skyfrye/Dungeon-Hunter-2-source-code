; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003858ec, declared_size=4, range_size=4, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboardD2Ev
; demangled: GSKeyboard::~GSKeyboard()
; decoder-mode: arm
003858ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x003858f0, declared_size=4, range_size=4, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboardD1Ev
; demangled: GSKeyboard::~GSKeyboard()
; decoder-mode: arm
003858f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003858f4, declared_size=4, range_size=4, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboard4CtorEPK12StateMachine
; demangled: GSKeyboard::Ctor(StateMachine const*)
; decoder-mode: arm
003858f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003858f8, declared_size=28, range_size=28, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboardD0Ev
; demangled: GSKeyboard::~GSKeyboard()
; decoder-mode: arm
003858f8  10 40 2d e9                                      push {r4, lr}
003858fc  00 40 a0 e1                                      mov r4, r0
00385900  fa ff ff eb                                      bl #0x3858f0
00385904  04 00 a0 e1                                      mov r0, r4
00385908  cc 2a fe eb                                      bl #0x310440
0038590c  04 00 a0 e1                                      mov r0, r4
00385910  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00385914, declared_size=152, range_size=152, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboard11ClearStringEv
; demangled: GSKeyboard::ClearString()
; decoder-mode: arm
00385914  10 40 2d e9                                      push {r4, lr}
00385918  78 40 9f e5                                      ldr r4, [pc, #0x78]
0038591c  a0 56 06 eb                                      bl #0x51b3a4
00385920  74 30 9f e5                                      ldr r3, [pc, #0x74]
00385924  04 40 8f e0                                      add r4, pc, r4
00385928  00 10 a0 e3                                      mov r1, #0
0038592c  03 00 94 e7                                      ldr r0, [r4, r3]
00385930  64 20 a0 e3                                      mov r2, #0x64
00385934  c9 22 fe eb                                      bl #0x30e460
00385938  60 30 9f e5                                      ldr r3, [pc, #0x60]
0038593c  00 10 a0 e3                                      mov r1, #0
00385940  64 20 a0 e3                                      mov r2, #0x64
00385944  03 00 94 e7                                      ldr r0, [r4, r3]
00385948  c4 22 fe eb                                      bl #0x30e460
0038594c  50 30 9f e5                                      ldr r3, [pc, #0x50]
00385950  03 30 94 e7                                      ldr r3, [r4, r3]
00385954  14 20 93 e5                                      ldr r2, [r3, #0x14]
00385958  10 10 93 e5                                      ldr r1, [r3, #0x10]
0038595c  01 00 52 e1                                      cmp r2, r1
00385960  00 10 a0 13                                      movne r1, #0
00385964  00 10 c2 15                                      strbne r1, [r2]
00385968  14 20 93 15                                      ldrne r2, [r3, #0x14]
0038596c  10 20 83 15                                      strne r2, [r3, #0x10]
00385970  30 30 9f e5                                      ldr r3, [pc, #0x30]
00385974  03 30 94 e7                                      ldr r3, [r4, r3]
00385978  14 20 93 e5                                      ldr r2, [r3, #0x14]
0038597c  10 10 93 e5                                      ldr r1, [r3, #0x10]
00385980  01 00 52 e1                                      cmp r2, r1
00385984  00 10 a0 13                                      movne r1, #0
00385988  00 10 c2 15                                      strbne r1, [r2]
0038598c  14 20 93 15                                      ldrne r2, [r3, #0x14]
00385990  10 20 83 15                                      strne r2, [r3, #0x10]
00385994  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00385998  6c f1 60 00 08 1f 00 00 5c 13 00 00 d8 3e 00 00  .byte 0x6c, 0xf1, 0x60, 0x00, 0x08, 0x1f, 0x00, 0x00, 0x5c, 0x13, 0x00, 0x00, 0xd8, 0x3e, 0x00, 0x00
003859a8  c4 12 00 00                                      .byte 0xc4, 0x12, 0x00, 0x00

; FUNCTION 0x003859ac, declared_size=108, range_size=108, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboardC1Ev
; demangled: GSKeyboard::GSKeyboard()
; decoder-mode: arm
003859ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003859b0  50 40 9f e5                                      ldr r4, [pc, #0x50]
003859b4  50 30 9f e5                                      ldr r3, [pc, #0x50]
003859b8  00 60 a0 e3                                      mov r6, #0
003859bc  04 40 8f e0                                      add r4, pc, r4
003859c0  03 30 94 e7                                      ldr r3, [r4, r3]
003859c4  64 70 a0 e3                                      mov r7, #0x64
003859c8  00 50 a0 e1                                      mov r5, r0
003859cc  08 30 83 e2                                      add r3, r3, #8
003859d0  00 30 80 e5                                      str r3, [r0]
003859d4  34 30 9f e5                                      ldr r3, [pc, #0x34]
003859d8  04 60 c0 e5                                      strb r6, [r0, #4]
003859dc  06 10 a0 e1                                      mov r1, r6
003859e0  03 00 94 e7                                      ldr r0, [r4, r3]
003859e4  07 20 a0 e1                                      mov r2, r7
003859e8  9c 22 fe eb                                      bl #0x30e460
003859ec  20 30 9f e5                                      ldr r3, [pc, #0x20]
003859f0  06 10 a0 e1                                      mov r1, r6
003859f4  07 20 a0 e1                                      mov r2, r7
003859f8  03 00 94 e7                                      ldr r0, [r4, r3]
003859fc  97 22 fe eb                                      bl #0x30e460
00385a00  05 00 a0 e1                                      mov r0, r5
00385a04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00385a08  d4 f0 60 00 40 33 00 00 08 1f 00 00 5c 13 00 00  .byte 0xd4, 0xf0, 0x60, 0x00, 0x40, 0x33, 0x00, 0x00, 0x08, 0x1f, 0x00, 0x00, 0x5c, 0x13, 0x00, 0x00

; FUNCTION 0x00385a18, declared_size=108, range_size=108, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboardC2Ev
; demangled: GSKeyboard::GSKeyboard()
; decoder-mode: arm
00385a18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00385a1c  50 40 9f e5                                      ldr r4, [pc, #0x50]
00385a20  50 30 9f e5                                      ldr r3, [pc, #0x50]
00385a24  00 60 a0 e3                                      mov r6, #0
00385a28  04 40 8f e0                                      add r4, pc, r4
00385a2c  03 30 94 e7                                      ldr r3, [r4, r3]
00385a30  64 70 a0 e3                                      mov r7, #0x64
00385a34  00 50 a0 e1                                      mov r5, r0
00385a38  08 30 83 e2                                      add r3, r3, #8
00385a3c  00 30 80 e5                                      str r3, [r0]
00385a40  34 30 9f e5                                      ldr r3, [pc, #0x34]
00385a44  04 60 c0 e5                                      strb r6, [r0, #4]
00385a48  06 10 a0 e1                                      mov r1, r6
00385a4c  03 00 94 e7                                      ldr r0, [r4, r3]
00385a50  07 20 a0 e1                                      mov r2, r7
00385a54  81 22 fe eb                                      bl #0x30e460
00385a58  20 30 9f e5                                      ldr r3, [pc, #0x20]
00385a5c  06 10 a0 e1                                      mov r1, r6
00385a60  07 20 a0 e1                                      mov r2, r7
00385a64  03 00 94 e7                                      ldr r0, [r4, r3]
00385a68  7c 22 fe eb                                      bl #0x30e460
00385a6c  05 00 a0 e1                                      mov r0, r5
00385a70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00385a74  68 f0 60 00 40 33 00 00 08 1f 00 00 5c 13 00 00  .byte 0x68, 0xf0, 0x60, 0x00, 0x40, 0x33, 0x00, 0x00, 0x08, 0x1f, 0x00, 0x00, 0x5c, 0x13, 0x00, 0x00

; FUNCTION 0x00385a84, declared_size=8, range_size=8, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboard4DrawEPK12StateMachine
; demangled: GSKeyboard::Draw(StateMachine const*)
; decoder-mode: arm
00385a84  01 00 a0 e1                                      mov r0, r1
00385a88  80 d1 fe ea                                      b #0x33a090

; FUNCTION 0x00385a8c, declared_size=188, range_size=188, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboard6UpdateEP12StateMachined
; demangled: GSKeyboard::Update(StateMachine*, double)
; decoder-mode: arm
00385a8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00385a90  04 30 d0 e5                                      ldrb r3, [r0, #4]
00385a94  94 20 9f e5                                      ldr r2, [pc, #0x94]
00385a98  00 40 a0 e1                                      mov r4, r0
00385a9c  00 00 53 e3                                      cmp r3, #0
00385aa0  01 50 a0 e1                                      mov r5, r1
00385aa4  02 20 8f e0                                      add r2, pc, r2
00385aa8  0d 00 00 0a                                      beq #0x385ae4
00385aac  80 30 9f e5                                      ldr r3, [pc, #0x80]
00385ab0  03 30 92 e7                                      ldr r3, [r2, r3]
00385ab4  00 60 d3 e5                                      ldrb r6, [r3]
00385ab8  00 00 56 e3                                      cmp r6, #0
00385abc  03 00 00 1a                                      bne #0x385ad0
00385ac0  f1 9b 02 eb                                      bl #0x42ca8c
00385ac4  06 10 a0 e1                                      mov r1, r6
00385ac8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00385acc  cc a3 02 ea                                      b #0x42ea04
00385ad0  00 10 a0 e3                                      mov r1, #0
00385ad4  05 00 a0 e1                                      mov r0, r5
00385ad8  04 10 c4 e5                                      strb r1, [r4, #4]
00385adc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00385ae0  39 d2 fe ea                                      b #0x33a3cc
00385ae4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00385ae8  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00385aec  03 c0 92 e7                                      ldr ip, [r2, r3]
00385af0  01 30 a0 e3                                      mov r3, #1
00385af4  04 30 c0 e5                                      strb r3, [r0, #4]
00385af8  01 00 92 e7                                      ldr r0, [r2, r1]
00385afc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00385b00  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00385b04  14 00 90 e5                                      ldr r0, [r0, #0x14]
00385b08  03 30 92 e7                                      ldr r3, [r2, r3]
00385b0c  01 10 92 e7                                      ldr r1, [r2, r1]
00385b10  00 20 9c e5                                      ldr r2, [ip]
00385b14  14 30 93 e5                                      ldr r3, [r3, #0x14]
00385b18  00 10 91 e5                                      ldr r1, [r1]
00385b1c  01 20 82 e2                                      add r2, r2, #1
00385b20  b2 56 06 eb                                      bl #0x51b5f0
00385b24  00 10 50 e2                                      subs r1, r0, #0
00385b28  e9 ff ff 0a                                      beq #0x385ad4
00385b2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00385b30  ec ef 60 00 30 29 00 00 84 0a 00 00 d8 3e 00 00  .byte 0xec, 0xef, 0x60, 0x00, 0x30, 0x29, 0x00, 0x00, 0x84, 0x0a, 0x00, 0x00, 0xd8, 0x3e, 0x00, 0x00
00385b40  c4 12 00 00 10 1f 00 00                          .byte 0xc4, 0x12, 0x00, 0x00, 0x10, 0x1f, 0x00, 0x00

; FUNCTION 0x00385b48, declared_size=12, range_size=12, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboard4DtorEPK12StateMachine
; demangled: GSKeyboard::Dtor(StateMachine const*)
; decoder-mode: arm
00385b48  00 30 a0 e3                                      mov r3, #0
00385b4c  04 30 c0 e5                                      strb r3, [r0, #4]
00385b50  8c 56 06 ea                                      b #0x51b588

; FUNCTION 0x00385b54, declared_size=104, range_size=104, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboard13GetLastStringEv
; demangled: GSKeyboard::GetLastString()
; decoder-mode: arm
00385b54  10 40 2d e9                                      push {r4, lr}
00385b58  48 40 9f e5                                      ldr r4, [pc, #0x48]
00385b5c  48 30 9f e5                                      ldr r3, [pc, #0x48]
00385b60  04 40 8f e0                                      add r4, pc, r4
00385b64  03 30 94 e7                                      ldr r3, [r4, r3]
00385b68  10 20 93 e5                                      ldr r2, [r3, #0x10]
00385b6c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00385b70  02 20 60 e0                                      rsb r2, r0, r2
00385b74  0a 00 52 e3                                      cmp r2, #0xa
00385b78  02 00 00 0a                                      beq #0x385b88
00385b7c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00385b80  03 00 94 e7                                      ldr r0, [r4, r3]
00385b84  10 80 bd e8                                      pop {r4, pc}
00385b88  24 10 9f e5                                      ldr r1, [pc, #0x24]
00385b8c  01 10 8f e0                                      add r1, pc, r1
00385b90  92 22 fe eb                                      bl #0x30e5e0
00385b94  00 00 50 e3                                      cmp r0, #0
00385b98  f7 ff ff 1a                                      bne #0x385b7c
00385b9c  14 30 9f e5                                      ldr r3, [pc, #0x14]
00385ba0  03 00 94 e7                                      ldr r0, [r4, r3]
00385ba4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00385ba8  30 ef 60 00 d8 3e 00 00 08 1f 00 00 d4 c3 53 00  .byte 0x30, 0xef, 0x60, 0x00, 0xd8, 0x3e, 0x00, 0x00, 0x08, 0x1f, 0x00, 0x00, 0xd4, 0xc3, 0x53, 0x00
00385bb8  5c 13 00 00                                      .byte 0x5c, 0x13, 0x00, 0x00

; FUNCTION 0x00385cf0, declared_size=432, range_size=432, mode=arm
; class-group: GSKeyboard
; alias: _ZN10GSKeyboard11QueryStringEPKcjS1_b
; demangled: GSKeyboard::QueryString(char const*, unsigned int, char const*, bool)
; decoder-mode: arm
00385cf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00385cf4  01 90 a0 e1                                      mov sb, r1
00385cf8  64 11 9f e5                                      ldr r1, [pc, #0x164]
00385cfc  0c d0 4d e2                                      sub sp, sp, #0xc
00385d00  02 b0 a0 e1                                      mov fp, r2
00385d04  01 10 8f e0                                      add r1, pc, r1
00385d08  03 80 a0 e1                                      mov r8, r3
00385d0c  00 50 a0 e1                                      mov r5, r0
00385d10  81 21 fe eb                                      bl #0x30e31c
00385d14  4c 41 9f e5                                      ldr r4, [pc, #0x14c]
00385d18  00 00 50 e3                                      cmp r0, #0
00385d1c  04 40 8f e0                                      add r4, pc, r4
00385d20  31 00 00 1a                                      bne #0x385dec
00385d24  40 61 9f e5                                      ldr r6, [pc, #0x140]
00385d28  40 21 9f e5                                      ldr r2, [pc, #0x140]
00385d2c  06 30 94 e7                                      ldr r3, [r4, r6]
00385d30  02 20 94 e7                                      ldr r2, [r4, r2]
00385d34  00 20 83 e5                                      str r2, [r3]
00385d38  34 71 9f e5                                      ldr r7, [pc, #0x134]
00385d3c  07 30 94 e7                                      ldr r3, [r4, r7]
00385d40  04 30 d3 e5                                      ldrb r3, [r3, #4]
00385d44  00 00 53 e3                                      cmp r3, #0
00385d48  08 00 00 0a                                      beq #0x385d70
00385d4c  24 31 9f e5                                      ldr r3, [pc, #0x124]
00385d50  03 30 94 e7                                      ldr r3, [r4, r3]
00385d54  00 30 93 e5                                      ldr r3, [r3]
00385d58  02 00 53 e3                                      cmp r3, #2
00385d5c  00 30 a0 03                                      moveq r3, #0
00385d60  00 30 83 05                                      streq r3, [r3]
00385d64  01 00 00 0a                                      beq #0x385d70
00385d68  01 00 53 e3                                      cmp r3, #1
00385d6c  2f 00 00 0a                                      beq #0x385e30
00385d70  00 00 58 e3                                      cmp r8, #0
00385d74  22 00 00 0a                                      beq #0x385e04
00385d78  06 30 94 e7                                      ldr r3, [r4, r6]
00385d7c  64 00 59 e3                                      cmp sb, #0x64
00385d80  64 90 a0 23                                      movhs sb, #0x64
00385d84  00 60 93 e5                                      ldr r6, [r3]
00385d88  06 00 a0 e1                                      mov r0, r6
00385d8c  30 20 fe eb                                      bl #0x30de54
00385d90  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
00385d94  00 20 86 e0                                      add r2, r6, r0
00385d98  06 10 a0 e1                                      mov r1, r6
00385d9c  03 00 94 e7                                      ldr r0, [r4, r3]
00385da0  0e 2b fe eb                                      bl #0x3109e0
00385da4  05 00 a0 e1                                      mov r0, r5
00385da8  29 20 fe eb                                      bl #0x30de54
00385dac  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00385db0  00 20 85 e0                                      add r2, r5, r0
00385db4  05 10 a0 e1                                      mov r1, r5
00385db8  03 00 94 e7                                      ldr r0, [r4, r3]
00385dbc  07 2b fe eb                                      bl #0x3109e0
00385dc0  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00385dc4  07 10 94 e7                                      ldr r1, [r4, r7]
00385dc8  03 20 94 e7                                      ldr r2, [r4, r3]
00385dcc  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00385dd0  18 00 92 e5                                      ldr r0, [r2, #0x18]
00385dd4  03 30 94 e7                                      ldr r3, [r4, r3]
00385dd8  00 20 a0 e3                                      mov r2, #0
00385ddc  00 90 83 e5                                      str sb, [r3]
00385de0  0c d0 8d e2                                      add sp, sp, #0xc
00385de4  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00385de8  55 d1 fe ea                                      b #0x33a344
00385dec  78 60 9f e5                                      ldr r6, [pc, #0x78]
00385df0  94 20 9f e5                                      ldr r2, [pc, #0x94]
00385df4  06 30 94 e7                                      ldr r3, [r4, r6]
00385df8  02 20 94 e7                                      ldr r2, [r4, r2]
00385dfc  00 20 83 e5                                      str r2, [r3]
00385e00  cc ff ff ea                                      b #0x385d38
00385e04  06 a0 94 e7                                      ldr sl, [r4, r6]
00385e08  08 10 a0 e1                                      mov r1, r8
00385e0c  64 20 a0 e3                                      mov r2, #0x64
00385e10  00 00 9a e5                                      ldr r0, [sl]
00385e14  91 21 fe eb                                      bl #0x30e460
00385e18  00 00 5b e3                                      cmp fp, #0
00385e1c  d5 ff ff 0a                                      beq #0x385d78
00385e20  00 00 9a e5                                      ldr r0, [sl]
00385e24  0b 10 a0 e1                                      mov r1, fp
00385e28  bc 21 fe eb                                      bl #0x30e520
00385e2c  d1 ff ff ea                                      b #0x385d78
00385e30  58 00 9f e5                                      ldr r0, [pc, #0x58]
00385e34  58 10 9f e5                                      ldr r1, [pc, #0x58]
00385e38  58 20 9f e5                                      ldr r2, [pc, #0x58]
00385e3c  00 00 94 e7                                      ldr r0, [r4, r0]
00385e40  54 30 9f e5                                      ldr r3, [pc, #0x54]
00385e44  27 c0 a0 e3                                      mov ip, #0x27
00385e48  01 10 8f e0                                      add r1, pc, r1
00385e4c  02 20 8f e0                                      add r2, pc, r2
00385e50  03 30 8f e0                                      add r3, pc, r3
00385e54  a8 00 80 e2                                      add r0, r0, #0xa8
00385e58  00 c0 8d e5                                      str ip, [sp]
00385e5c  68 20 fe eb                                      bl #0x30e004
00385e60  c2 ff ff ea                                      b #0x385d70
; mapping-symbol data/literal pool
00385e64  5c c2 53 00 74 ed 60 00 10 1f 00 00 5c 13 00 00  .byte 0x5c, 0xc2, 0x53, 0x00, 0x74, 0xed, 0x60, 0x00, 0x10, 0x1f, 0x00, 0x00, 0x5c, 0x13, 0x00, 0x00
00385e74  b0 25 00 00 c0 39 00 00 c4 12 00 00 d8 3e 00 00  .byte 0xb0, 0x25, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc4, 0x12, 0x00, 0x00, 0xd8, 0x3e, 0x00, 0x00
00385e84  f4 37 00 00 84 0a 00 00 08 1f 00 00 c0 19 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x84, 0x0a, 0x00, 0x00, 0x08, 0x1f, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00385e94  90 85 53 00 24 c1 53 00 38 c1 53 00              .byte 0x90, 0x85, 0x53, 0x00, 0x24, 0xc1, 0x53, 0x00, 0x38, 0xc1, 0x53, 0x00
