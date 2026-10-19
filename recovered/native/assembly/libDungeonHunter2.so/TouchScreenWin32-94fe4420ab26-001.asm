; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033d48c, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenWin32
; alias: _ZNK16TouchScreenWin3212getLeftBoundEv
; demangled: TouchScreenWin32::getLeftBound() const
; decoder-mode: arm
0033d48c  00 00 a0 e3                                      mov r0, #0
0033d490  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d494, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenWin32
; alias: _ZNK16TouchScreenWin3213getRightBoundEv
; demangled: TouchScreenWin32::getRightBound() const
; decoder-mode: arm
0033d494  00 00 a0 e3                                      mov r0, #0
0033d498  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d49c, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenWin32
; alias: _ZNK16TouchScreenWin3211getTopBoundEv
; demangled: TouchScreenWin32::getTopBound() const
; decoder-mode: arm
0033d49c  00 00 a0 e3                                      mov r0, #0
0033d4a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d4a4, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenWin32
; alias: _ZNK16TouchScreenWin3214getBottomBoundEv
; demangled: TouchScreenWin32::getBottomBound() const
; decoder-mode: arm
0033d4a4  00 00 a0 e3                                      mov r0, #0
0033d4a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d4ac, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenWin32
; alias: _ZThn436_N16TouchScreenWin327onEventERKN6glitch6SEventE
; demangled: non-virtual thunk to TouchScreenWin32::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0033d4ac  6d 0f 40 e2                                      sub r0, r0, #0x1b4
0033d4b0  ff ff ff ea                                      b #0x33d4b4

; FUNCTION 0x0033d4b4, declared_size=252, range_size=252, mode=arm
; class-group: TouchScreenWin32
; alias: _ZN16TouchScreenWin327onEventERKN6glitch6SEventE
; demangled: TouchScreenWin32::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0033d4b4  10 40 2d e9                                      push {r4, lr}
0033d4b8  00 40 91 e5                                      ldr r4, [r1]
0033d4bc  10 d0 4d e2                                      sub sp, sp, #0x10
0033d4c0  01 30 a0 e1                                      mov r3, r1
0033d4c4  01 00 54 e3                                      cmp r4, #1
0033d4c8  02 00 00 0a                                      beq #0x33d4d8
0033d4cc  00 00 a0 e3                                      mov r0, #0
0033d4d0  10 d0 8d e2                                      add sp, sp, #0x10
0033d4d4  10 80 bd e8                                      pop {r4, pc}
0033d4d8  14 20 91 e5                                      ldr r2, [r1, #0x14]
0033d4dc  03 00 52 e3                                      cmp r2, #3
0033d4e0  20 00 00 0a                                      beq #0x33d568
0033d4e4  06 00 52 e3                                      cmp r2, #6
0033d4e8  0e 00 00 0a                                      beq #0x33d528
0033d4ec  00 00 52 e3                                      cmp r2, #0
0033d4f0  f5 ff ff 1a                                      bne #0x33d4cc
0033d4f4  a8 e0 9f e5                                      ldr lr, [pc, #0xa8]
0033d4f8  0c 10 8d e2                                      add r1, sp, #0xc
0033d4fc  0e e0 8f e0                                      add lr, pc, lr
0033d500  00 40 ce e5                                      strb r4, [lr]
0033d504  00 c0 90 e5                                      ldr ip, [r0]
0033d508  bc e0 d3 e1                                      ldrh lr, [r3, #0xc]
0033d50c  b8 30 d3 e1                                      ldrh r3, [r3, #8]
0033d510  20 c0 9c e5                                      ldr ip, [ip, #0x20]
0033d514  be e0 cd e1                                      strh lr, [sp, #0xe]
0033d518  bc 30 cd e1                                      strh r3, [sp, #0xc]
0033d51c  3c ff 2f e1                                      blx ip
0033d520  04 00 a0 e1                                      mov r0, r4
0033d524  e9 ff ff ea                                      b #0x33d4d0
0033d528  78 20 9f e5                                      ldr r2, [pc, #0x78]
0033d52c  02 20 8f e0                                      add r2, pc, r2
0033d530  00 20 d2 e5                                      ldrb r2, [r2]
0033d534  00 00 52 e3                                      cmp r2, #0
0033d538  e3 ff ff 0a                                      beq #0x33d4cc
0033d53c  00 c0 90 e5                                      ldr ip, [r0]
0033d540  bc 20 d1 e1                                      ldrh r2, [r1, #0xc]
0033d544  b8 30 d3 e1                                      ldrh r3, [r3, #8]
0033d548  24 c0 9c e5                                      ldr ip, [ip, #0x24]
0033d54c  04 10 8d e2                                      add r1, sp, #4
0033d550  b6 20 cd e1                                      strh r2, [sp, #6]
0033d554  b4 30 cd e1                                      strh r3, [sp, #4]
0033d558  00 20 a0 e3                                      mov r2, #0
0033d55c  3c ff 2f e1                                      blx ip
0033d560  04 00 a0 e1                                      mov r0, r4
0033d564  d9 ff ff ea                                      b #0x33d4d0
0033d568  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0033d56c  00 e0 a0 e3                                      mov lr, #0
0033d570  0e 20 a0 e1                                      mov r2, lr
0033d574  01 10 8f e0                                      add r1, pc, r1
0033d578  00 e0 c1 e5                                      strb lr, [r1]
0033d57c  00 c0 90 e5                                      ldr ip, [r0]
0033d580  bc e0 d3 e1                                      ldrh lr, [r3, #0xc]
0033d584  b8 30 d3 e1                                      ldrh r3, [r3, #8]
0033d588  28 c0 9c e5                                      ldr ip, [ip, #0x28]
0033d58c  08 10 8d e2                                      add r1, sp, #8
0033d590  b8 30 cd e1                                      strh r3, [sp, #8]
0033d594  ba e0 cd e1                                      strh lr, [sp, #0xa]
0033d598  3c ff 2f e1                                      blx ip
0033d59c  04 00 a0 e1                                      mov r0, r4
0033d5a0  ca ff ff ea                                      b #0x33d4d0
; mapping-symbol data/literal pool
0033d5a4  e8 48 66 00 b8 48 66 00 70 48 66 00              .byte 0xe8, 0x48, 0x66, 0x00, 0xb8, 0x48, 0x66, 0x00, 0x70, 0x48, 0x66, 0x00

; FUNCTION 0x0033d5d0, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenWin32
; alias: _ZThn436_N16TouchScreenWin32D1Ev
; demangled: non-virtual thunk to TouchScreenWin32::~TouchScreenWin32()
; decoder-mode: arm
0033d5d0  6d 0f 40 e2                                      sub r0, r0, #0x1b4
0033d5d4  ff ff ff ea                                      b #0x33d5d8

; FUNCTION 0x0033d5d8, declared_size=72, range_size=72, mode=arm
; class-group: TouchScreenWin32
; alias: _ZN16TouchScreenWin32D1Ev
; demangled: TouchScreenWin32::~TouchScreenWin32()
; decoder-mode: arm
0033d5d8  34 30 9f e5                                      ldr r3, [pc, #0x34]
0033d5dc  34 10 9f e5                                      ldr r1, [pc, #0x34]
0033d5e0  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033d5e4  03 30 8f e0                                      add r3, pc, r3
0033d5e8  01 10 93 e7                                      ldr r1, [r3, r1]
0033d5ec  02 20 93 e7                                      ldr r2, [r3, r2]
0033d5f0  10 40 2d e9                                      push {r4, lr}
0033d5f4  08 10 81 e2                                      add r1, r1, #8
0033d5f8  08 20 82 e2                                      add r2, r2, #8
0033d5fc  00 40 a0 e1                                      mov r4, r0
0033d600  00 10 80 e5                                      str r1, [r0]
0033d604  b4 21 80 e5                                      str r2, [r0, #0x1b4]
0033d608  15 fa ff eb                                      bl #0x33be64
0033d60c  04 00 a0 e1                                      mov r0, r4
0033d610  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033d614  ac 74 65 00 d0 22 00 00 4c 27 00 00              .byte 0xac, 0x74, 0x65, 0x00, 0xd0, 0x22, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x0033d620, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenWin32
; alias: _ZThn436_N16TouchScreenWin32D0Ev
; demangled: non-virtual thunk to TouchScreenWin32::~TouchScreenWin32()
; decoder-mode: arm
0033d620  6d 0f 40 e2                                      sub r0, r0, #0x1b4
0033d624  ff ff ff ea                                      b #0x33d628

; FUNCTION 0x0033d628, declared_size=28, range_size=28, mode=arm
; class-group: TouchScreenWin32
; alias: _ZN16TouchScreenWin32D0Ev
; demangled: TouchScreenWin32::~TouchScreenWin32()
; decoder-mode: arm
0033d628  10 40 2d e9                                      push {r4, lr}
0033d62c  00 40 a0 e1                                      mov r4, r0
0033d630  e8 ff ff eb                                      bl #0x33d5d8
0033d634  04 00 a0 e1                                      mov r0, r4
0033d638  80 4b ff eb                                      bl #0x310440
0033d63c  04 00 a0 e1                                      mov r0, r4
0033d640  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033d644, declared_size=72, range_size=72, mode=arm
; class-group: TouchScreenWin32
; alias: _ZN16TouchScreenWin32D2Ev
; demangled: TouchScreenWin32::~TouchScreenWin32()
; decoder-mode: arm
0033d644  34 30 9f e5                                      ldr r3, [pc, #0x34]
0033d648  34 10 9f e5                                      ldr r1, [pc, #0x34]
0033d64c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033d650  03 30 8f e0                                      add r3, pc, r3
0033d654  01 10 93 e7                                      ldr r1, [r3, r1]
0033d658  02 20 93 e7                                      ldr r2, [r3, r2]
0033d65c  10 40 2d e9                                      push {r4, lr}
0033d660  08 10 81 e2                                      add r1, r1, #8
0033d664  08 20 82 e2                                      add r2, r2, #8
0033d668  00 40 a0 e1                                      mov r4, r0
0033d66c  00 10 80 e5                                      str r1, [r0]
0033d670  b4 21 80 e5                                      str r2, [r0, #0x1b4]
0033d674  fa f9 ff eb                                      bl #0x33be64
0033d678  04 00 a0 e1                                      mov r0, r4
0033d67c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033d680  40 74 65 00 d0 22 00 00 4c 27 00 00              .byte 0x40, 0x74, 0x65, 0x00, 0xd0, 0x22, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x0033d68c, declared_size=68, range_size=68, mode=arm
; class-group: TouchScreenWin32
; alias: _ZN16TouchScreenWin32C1Ess
; demangled: TouchScreenWin32::TouchScreenWin32(short, short)
; decoder-mode: arm
0033d68c  70 40 2d e9                                      push {r4, r5, r6, lr}
0033d690  30 50 9f e5                                      ldr r5, [pc, #0x30]
0033d694  00 40 a0 e1                                      mov r4, r0
0033d698  fe fa ff eb                                      bl #0x33c298
0033d69c  28 30 9f e5                                      ldr r3, [pc, #0x28]
0033d6a0  05 50 8f e0                                      add r5, pc, r5
0033d6a4  00 20 a0 e3                                      mov r2, #0
0033d6a8  03 30 95 e7                                      ldr r3, [r5, r3]
0033d6ac  90 21 84 e5                                      str r2, [r4, #0x190]
0033d6b0  04 00 a0 e1                                      mov r0, r4
0033d6b4  68 20 83 e2                                      add r2, r3, #0x68
0033d6b8  08 30 83 e2                                      add r3, r3, #8
0033d6bc  00 30 84 e5                                      str r3, [r4]
0033d6c0  b4 21 84 e5                                      str r2, [r4, #0x1b4]
0033d6c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033d6c8  f0 73 65 00 d0 22 00 00                          .byte 0xf0, 0x73, 0x65, 0x00, 0xd0, 0x22, 0x00, 0x00

; FUNCTION 0x0033d6d0, declared_size=68, range_size=68, mode=arm
; class-group: TouchScreenWin32
; alias: _ZN16TouchScreenWin32C2Ess
; demangled: TouchScreenWin32::TouchScreenWin32(short, short)
; decoder-mode: arm
0033d6d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0033d6d4  30 50 9f e5                                      ldr r5, [pc, #0x30]
0033d6d8  00 40 a0 e1                                      mov r4, r0
0033d6dc  ed fa ff eb                                      bl #0x33c298
0033d6e0  28 30 9f e5                                      ldr r3, [pc, #0x28]
0033d6e4  05 50 8f e0                                      add r5, pc, r5
0033d6e8  00 20 a0 e3                                      mov r2, #0
0033d6ec  03 30 95 e7                                      ldr r3, [r5, r3]
0033d6f0  90 21 84 e5                                      str r2, [r4, #0x190]
0033d6f4  04 00 a0 e1                                      mov r0, r4
0033d6f8  68 20 83 e2                                      add r2, r3, #0x68
0033d6fc  08 30 83 e2                                      add r3, r3, #8
0033d700  00 30 84 e5                                      str r3, [r4]
0033d704  b4 21 84 e5                                      str r2, [r4, #0x1b4]
0033d708  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033d70c  ac 73 65 00 d0 22 00 00                          .byte 0xac, 0x73, 0x65, 0x00, 0xd0, 0x22, 0x00, 0x00
