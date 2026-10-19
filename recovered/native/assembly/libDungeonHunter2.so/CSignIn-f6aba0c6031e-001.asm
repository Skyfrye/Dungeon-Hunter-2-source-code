; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081a4dc, declared_size=24, range_size=24, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignIn10InitializeEv
; demangled: CSignIn::Initialize()
; decoder-mode: arm
0081a4dc  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
0081a4e0  00 00 53 e3                                      cmp r3, #0
0081a4e4  01 30 a0 03                                      moveq r3, #1
0081a4e8  10 30 c0 05                                      strbeq r3, [r0, #0x10]
0081a4ec  00 00 a0 e3                                      mov r0, #0
0081a4f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081a4f4, declared_size=4, range_size=4, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignIn11CancelLoginEv
; demangled: CSignIn::CancelLogin()
; decoder-mode: arm
0081a4f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081a4f8, declared_size=4, range_size=4, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignIn6UpdateEv
; demangled: CSignIn::Update()
; decoder-mode: arm
0081a4f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081a4fc, declared_size=44, range_size=44, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignIn9TerminateEv
; demangled: CSignIn::Terminate()
; decoder-mode: arm
0081a4fc  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
0081a500  10 40 2d e9                                      push {r4, lr}
0081a504  00 00 53 e3                                      cmp r3, #0
0081a508  00 40 a0 e1                                      mov r4, r0
0081a50c  04 00 00 0a                                      beq #0x81a524
0081a510  00 30 90 e5                                      ldr r3, [r0]
0081a514  0f e0 a0 e1                                      mov lr, pc
0081a518  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0081a51c  00 30 a0 e3                                      mov r3, #0
0081a520  10 30 c4 e5                                      strb r3, [r4, #0x10]
0081a524  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081a528, declared_size=96, range_size=96, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignIn7DestroyEv
; demangled: CSignIn::Destroy()
; decoder-mode: arm
0081a528  50 30 9f e5                                      ldr r3, [pc, #0x50]
0081a52c  50 20 9f e5                                      ldr r2, [pc, #0x50]
0081a530  10 40 2d e9                                      push {r4, lr}
0081a534  03 30 8f e0                                      add r3, pc, r3
0081a538  02 40 93 e7                                      ldr r4, [r3, r2]
0081a53c  00 30 94 e5                                      ldr r3, [r4]
0081a540  00 00 53 e3                                      cmp r3, #0
0081a544  0c 00 00 0a                                      beq #0x81a57c
0081a548  03 00 a0 e1                                      mov r0, r3
0081a54c  00 30 93 e5                                      ldr r3, [r3]
0081a550  0f e0 a0 e1                                      mov lr, pc
0081a554  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0081a558  00 30 94 e5                                      ldr r3, [r4]
0081a55c  00 00 53 e3                                      cmp r3, #0
0081a560  05 00 00 0a                                      beq #0x81a57c
0081a564  03 00 a0 e1                                      mov r0, r3
0081a568  00 30 93 e5                                      ldr r3, [r3]
0081a56c  0f e0 a0 e1                                      mov lr, pc
0081a570  04 f0 93 e5                                      ldr pc, [r3, #4]
0081a574  00 30 a0 e3                                      mov r3, #0
0081a578  00 30 84 e5                                      str r3, [r4]
0081a57c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081a580  5c a5 17 00 d8 2b 00 00                          .byte 0x5c, 0xa5, 0x17, 0x00, 0xd8, 0x2b, 0x00, 0x00

; FUNCTION 0x0081a58c, declared_size=144, range_size=144, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignInC1Ev
; demangled: CSignIn::CSignIn()
; decoder-mode: arm
0081a58c  70 40 2d e9                                      push {r4, r5, r6, lr}
0081a590  74 50 9f e5                                      ldr r5, [pc, #0x74]
0081a594  74 30 9f e5                                      ldr r3, [pc, #0x74]
0081a598  00 10 a0 e3                                      mov r1, #0
0081a59c  05 50 8f e0                                      add r5, pc, r5
0081a5a0  03 30 95 e7                                      ldr r3, [r5, r3]
0081a5a4  00 40 a0 e1                                      mov r4, r0
0081a5a8  01 20 a0 e1                                      mov r2, r1
0081a5ac  08 30 83 e2                                      add r3, r3, #8
0081a5b0  04 30 80 e4                                      str r3, [r0], #4
0081a5b4  01 30 a0 e1                                      mov r3, r1
0081a5b8  03 01 00 eb                                      bl #0x81a9cc
0081a5bc  50 30 9f e5                                      ldr r3, [pc, #0x50]
0081a5c0  00 20 a0 e3                                      mov r2, #0
0081a5c4  11 20 c4 e5                                      strb r2, [r4, #0x11]
0081a5c8  03 30 95 e7                                      ldr r3, [r5, r3]
0081a5cc  10 20 c4 e5                                      strb r2, [r4, #0x10]
0081a5d0  18 00 84 e2                                      add r0, r4, #0x18
0081a5d4  08 30 83 e2                                      add r3, r3, #8
0081a5d8  14 30 84 e5                                      str r3, [r4, #0x14]
0081a5dc  6d cf ff eb                                      bl #0x80e398
0081a5e0  30 30 9f e5                                      ldr r3, [pc, #0x30]
0081a5e4  1c 20 84 e2                                      add r2, r4, #0x1c
0081a5e8  64 10 a0 e3                                      mov r1, #0x64
0081a5ec  03 30 95 e7                                      ldr r3, [r5, r3]
0081a5f0  20 20 84 e5                                      str r2, [r4, #0x20]
0081a5f4  24 10 84 e5                                      str r1, [r4, #0x24]
0081a5f8  08 30 83 e2                                      add r3, r3, #8
0081a5fc  14 30 84 e5                                      str r3, [r4, #0x14]
0081a600  1c 20 84 e5                                      str r2, [r4, #0x1c]
0081a604  04 00 a0 e1                                      mov r0, r4
0081a608  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081a60c  f4 a4 17 00 54 33 00 00 4c 0a 00 00 04 27 00 00  .byte 0xf4, 0xa4, 0x17, 0x00, 0x54, 0x33, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0x04, 0x27, 0x00, 0x00

; FUNCTION 0x0081a61c, declared_size=144, range_size=144, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignInC2Ev
; demangled: CSignIn::CSignIn()
; decoder-mode: arm
0081a61c  70 40 2d e9                                      push {r4, r5, r6, lr}
0081a620  74 50 9f e5                                      ldr r5, [pc, #0x74]
0081a624  74 30 9f e5                                      ldr r3, [pc, #0x74]
0081a628  00 10 a0 e3                                      mov r1, #0
0081a62c  05 50 8f e0                                      add r5, pc, r5
0081a630  03 30 95 e7                                      ldr r3, [r5, r3]
0081a634  00 40 a0 e1                                      mov r4, r0
0081a638  01 20 a0 e1                                      mov r2, r1
0081a63c  08 30 83 e2                                      add r3, r3, #8
0081a640  04 30 80 e4                                      str r3, [r0], #4
0081a644  01 30 a0 e1                                      mov r3, r1
0081a648  df 00 00 eb                                      bl #0x81a9cc
0081a64c  50 30 9f e5                                      ldr r3, [pc, #0x50]
0081a650  00 20 a0 e3                                      mov r2, #0
0081a654  11 20 c4 e5                                      strb r2, [r4, #0x11]
0081a658  03 30 95 e7                                      ldr r3, [r5, r3]
0081a65c  10 20 c4 e5                                      strb r2, [r4, #0x10]
0081a660  18 00 84 e2                                      add r0, r4, #0x18
0081a664  08 30 83 e2                                      add r3, r3, #8
0081a668  14 30 84 e5                                      str r3, [r4, #0x14]
0081a66c  49 cf ff eb                                      bl #0x80e398
0081a670  30 30 9f e5                                      ldr r3, [pc, #0x30]
0081a674  1c 20 84 e2                                      add r2, r4, #0x1c
0081a678  64 10 a0 e3                                      mov r1, #0x64
0081a67c  03 30 95 e7                                      ldr r3, [r5, r3]
0081a680  20 20 84 e5                                      str r2, [r4, #0x20]
0081a684  24 10 84 e5                                      str r1, [r4, #0x24]
0081a688  08 30 83 e2                                      add r3, r3, #8
0081a68c  14 30 84 e5                                      str r3, [r4, #0x14]
0081a690  1c 20 84 e5                                      str r2, [r4, #0x1c]
0081a694  04 00 a0 e1                                      mov r0, r4
0081a698  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081a69c  64 a4 17 00 54 33 00 00 4c 0a 00 00 04 27 00 00  .byte 0x64, 0xa4, 0x17, 0x00, 0x54, 0x33, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00, 0x04, 0x27, 0x00, 0x00

; FUNCTION 0x0081a6ac, declared_size=204, range_size=204, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignIn3GetEv
; demangled: CSignIn::Get()
; decoder-mode: arm
0081a6ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081a6b0  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
0081a6b4  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0081a6b8  04 40 8f e0                                      add r4, pc, r4
0081a6bc  03 60 94 e7                                      ldr r6, [r4, r3]
0081a6c0  00 50 96 e5                                      ldr r5, [r6]
0081a6c4  00 00 55 e3                                      cmp r5, #0
0081a6c8  01 00 00 0a                                      beq #0x81a6d4
0081a6cc  05 00 a0 e1                                      mov r0, r5
0081a6d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081a6d4  94 30 9f e5                                      ldr r3, [pc, #0x94]
0081a6d8  03 30 94 e7                                      ldr r3, [r4, r3]
0081a6dc  00 30 93 e5                                      ldr r3, [r3]
0081a6e0  00 00 53 e3                                      cmp r3, #0
0081a6e4  16 00 00 1a                                      bne #0x81a744
0081a6e8  02 10 a0 e3                                      mov r1, #2
0081a6ec  28 00 a0 e3                                      mov r0, #0x28
0081a6f0  9e d7 eb eb                                      bl #0x310570
0081a6f4  24 50 80 e5                                      str r5, [r0, #0x24]
0081a6f8  00 50 80 e5                                      str r5, [r0]
0081a6fc  04 50 80 e5                                      str r5, [r0, #4]
0081a700  08 50 80 e5                                      str r5, [r0, #8]
0081a704  0c 50 80 e5                                      str r5, [r0, #0xc]
0081a708  10 50 c0 e5                                      strb r5, [r0, #0x10]
0081a70c  11 50 c0 e5                                      strb r5, [r0, #0x11]
0081a710  14 50 80 e5                                      str r5, [r0, #0x14]
0081a714  18 50 80 e5                                      str r5, [r0, #0x18]
0081a718  1c 50 80 e5                                      str r5, [r0, #0x1c]
0081a71c  20 50 80 e5                                      str r5, [r0, #0x20]
0081a720  00 70 a0 e1                                      mov r7, r0
0081a724  bc ff ff eb                                      bl #0x81a61c
0081a728  44 30 9f e5                                      ldr r3, [pc, #0x44]
0081a72c  07 50 a0 e1                                      mov r5, r7
0081a730  03 30 94 e7                                      ldr r3, [r4, r3]
0081a734  08 30 83 e2                                      add r3, r3, #8
0081a738  00 30 87 e5                                      str r3, [r7]
0081a73c  00 70 86 e5                                      str r7, [r6]
0081a740  e1 ff ff ea                                      b #0x81a6cc
0081a744  01 00 53 e3                                      cmp r3, #1
0081a748  df ff ff 1a                                      bne #0x81a6cc
0081a74c  02 10 a0 e3                                      mov r1, #2
0081a750  40 00 a0 e3                                      mov r0, #0x40
0081a754  85 d7 eb eb                                      bl #0x310570
0081a758  00 50 a0 e1                                      mov r5, r0
0081a75c  d5 27 00 eb                                      bl #0x8246b8
0081a760  00 50 86 e5                                      str r5, [r6]
0081a764  d8 ff ff ea                                      b #0x81a6cc
; mapping-symbol data/literal pool
0081a768  d8 a3 17 00 d8 2b 00 00 64 3c 00 00 18 2a 00 00  .byte 0xd8, 0xa3, 0x17, 0x00, 0xd8, 0x2b, 0x00, 0x00, 0x64, 0x3c, 0x00, 0x00, 0x18, 0x2a, 0x00, 0x00

; FUNCTION 0x0081a7b4, declared_size=160, range_size=160, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignInD1Ev
; demangled: CSignIn::~CSignIn()
; decoder-mode: arm
0081a7b4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0081a7b8  88 60 9f e5                                      ldr r6, [pc, #0x88]
0081a7bc  88 30 9f e5                                      ldr r3, [pc, #0x88]
0081a7c0  14 d0 4d e2                                      sub sp, sp, #0x14
0081a7c4  06 60 8f e0                                      add r6, pc, r6
0081a7c8  03 30 96 e7                                      ldr r3, [r6, r3]
0081a7cc  00 10 a0 e3                                      mov r1, #0
0081a7d0  04 70 8d e2                                      add r7, sp, #4
0081a7d4  00 50 a0 e1                                      mov r5, r0
0081a7d8  08 30 83 e2                                      add r3, r3, #8
0081a7dc  00 40 a0 e1                                      mov r4, r0
0081a7e0  04 30 85 e4                                      str r3, [r5], #4
0081a7e4  01 20 a0 e1                                      mov r2, r1
0081a7e8  01 30 a0 e1                                      mov r3, r1
0081a7ec  07 00 a0 e1                                      mov r0, r7
0081a7f0  75 00 00 eb                                      bl #0x81a9cc
0081a7f4  06 00 9d e9                                      ldmib sp, {r1, r2}
0081a7f8  08 30 97 e5                                      ldr r3, [r7, #8]
0081a7fc  04 50 85 e2                                      add r5, r5, #4
0081a800  04 10 84 e5                                      str r1, [r4, #4]
0081a804  04 20 85 e4                                      str r2, [r5], #4
0081a808  00 30 85 e5                                      str r3, [r5]
0081a80c  07 00 a0 e1                                      mov r0, r7
0081a810  70 00 00 eb                                      bl #0x81a9d8
0081a814  34 30 9f e5                                      ldr r3, [pc, #0x34]
0081a818  1c 00 84 e2                                      add r0, r4, #0x1c
0081a81c  03 30 96 e7                                      ldr r3, [r6, r3]
0081a820  08 30 83 e2                                      add r3, r3, #8
0081a824  14 30 84 e5                                      str r3, [r4, #0x14]
0081a828  d0 8a ff eb                                      bl #0x7fd370
0081a82c  18 00 84 e2                                      add r0, r4, #0x18
0081a830  ce ce ff eb                                      bl #0x80e370
0081a834  04 00 84 e2                                      add r0, r4, #4
0081a838  66 00 00 eb                                      bl #0x81a9d8
0081a83c  04 00 a0 e1                                      mov r0, r4
0081a840  14 d0 8d e2                                      add sp, sp, #0x14
0081a844  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0081a848  cc a2 17 00 54 33 00 00 4c 0a 00 00              .byte 0xcc, 0xa2, 0x17, 0x00, 0x54, 0x33, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x0081a854, declared_size=28, range_size=28, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignInD0Ev
; demangled: CSignIn::~CSignIn()
; decoder-mode: arm
0081a854  10 40 2d e9                                      push {r4, lr}
0081a858  00 40 a0 e1                                      mov r4, r0
0081a85c  d4 ff ff eb                                      bl #0x81a7b4
0081a860  04 00 a0 e1                                      mov r0, r4
0081a864  f5 d6 eb eb                                      bl #0x310440
0081a868  04 00 a0 e1                                      mov r0, r4
0081a86c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081a8b4, declared_size=160, range_size=160, mode=arm
; class-group: CSignIn
; alias: _ZN7CSignInD2Ev
; demangled: CSignIn::~CSignIn()
; decoder-mode: arm
0081a8b4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0081a8b8  88 60 9f e5                                      ldr r6, [pc, #0x88]
0081a8bc  88 30 9f e5                                      ldr r3, [pc, #0x88]
0081a8c0  14 d0 4d e2                                      sub sp, sp, #0x14
0081a8c4  06 60 8f e0                                      add r6, pc, r6
0081a8c8  03 30 96 e7                                      ldr r3, [r6, r3]
0081a8cc  00 10 a0 e3                                      mov r1, #0
0081a8d0  04 70 8d e2                                      add r7, sp, #4
0081a8d4  00 50 a0 e1                                      mov r5, r0
0081a8d8  08 30 83 e2                                      add r3, r3, #8
0081a8dc  00 40 a0 e1                                      mov r4, r0
0081a8e0  04 30 85 e4                                      str r3, [r5], #4
0081a8e4  01 20 a0 e1                                      mov r2, r1
0081a8e8  01 30 a0 e1                                      mov r3, r1
0081a8ec  07 00 a0 e1                                      mov r0, r7
0081a8f0  35 00 00 eb                                      bl #0x81a9cc
0081a8f4  06 00 9d e9                                      ldmib sp, {r1, r2}
0081a8f8  08 30 97 e5                                      ldr r3, [r7, #8]
0081a8fc  04 50 85 e2                                      add r5, r5, #4
0081a900  04 10 84 e5                                      str r1, [r4, #4]
0081a904  04 20 85 e4                                      str r2, [r5], #4
0081a908  00 30 85 e5                                      str r3, [r5]
0081a90c  07 00 a0 e1                                      mov r0, r7
0081a910  30 00 00 eb                                      bl #0x81a9d8
0081a914  34 30 9f e5                                      ldr r3, [pc, #0x34]
0081a918  1c 00 84 e2                                      add r0, r4, #0x1c
0081a91c  03 30 96 e7                                      ldr r3, [r6, r3]
0081a920  08 30 83 e2                                      add r3, r3, #8
0081a924  14 30 84 e5                                      str r3, [r4, #0x14]
0081a928  90 8a ff eb                                      bl #0x7fd370
0081a92c  18 00 84 e2                                      add r0, r4, #0x18
0081a930  8e ce ff eb                                      bl #0x80e370
0081a934  04 00 84 e2                                      add r0, r4, #4
0081a938  26 00 00 eb                                      bl #0x81a9d8
0081a93c  04 00 a0 e1                                      mov r0, r4
0081a940  14 d0 8d e2                                      add sp, sp, #0x14
0081a944  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0081a948  cc a1 17 00 54 33 00 00 4c 0a 00 00              .byte 0xcc, 0xa1, 0x17, 0x00, 0x54, 0x33, 0x00, 0x00, 0x4c, 0x0a, 0x00, 0x00
