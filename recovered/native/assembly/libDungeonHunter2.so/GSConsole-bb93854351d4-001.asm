; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00383274, declared_size=36, range_size=36, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsoleC2Ev
; demangled: GSConsole::GSConsole()
; decoder-mode: arm
00383274  14 30 9f e5                                      ldr r3, [pc, #0x14]
00383278  14 20 9f e5                                      ldr r2, [pc, #0x14]
0038327c  03 30 8f e0                                      add r3, pc, r3
00383280  02 20 93 e7                                      ldr r2, [r3, r2]
00383284  08 20 82 e2                                      add r2, r2, #8
00383288  00 20 80 e5                                      str r2, [r0]
0038328c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00383290  14 18 61 00 ec 0b 00 00                          .byte 0x14, 0x18, 0x61, 0x00, 0xec, 0x0b, 0x00, 0x00

; FUNCTION 0x00383298, declared_size=36, range_size=36, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsoleC1Ev
; demangled: GSConsole::GSConsole()
; decoder-mode: arm
00383298  14 30 9f e5                                      ldr r3, [pc, #0x14]
0038329c  14 20 9f e5                                      ldr r2, [pc, #0x14]
003832a0  03 30 8f e0                                      add r3, pc, r3
003832a4  02 20 93 e7                                      ldr r2, [r3, r2]
003832a8  08 20 82 e2                                      add r2, r2, #8
003832ac  00 20 80 e5                                      str r2, [r0]
003832b0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003832b4  f0 17 61 00 ec 0b 00 00                          .byte 0xf0, 0x17, 0x61, 0x00, 0xec, 0x0b, 0x00, 0x00

; FUNCTION 0x003832bc, declared_size=4, range_size=4, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsoleD2Ev
; demangled: GSConsole::~GSConsole()
; decoder-mode: arm
003832bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003832c0, declared_size=4, range_size=4, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsoleD1Ev
; demangled: GSConsole::~GSConsole()
; decoder-mode: arm
003832c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003832c4, declared_size=56, range_size=56, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsole6Draw2DEPK12StateMachine
; demangled: GSConsole::Draw2D(StateMachine const*)
; decoder-mode: arm
003832c4  28 30 9f e5                                      ldr r3, [pc, #0x28]
003832c8  28 20 9f e5                                      ldr r2, [pc, #0x28]
003832cc  10 40 2d e9                                      push {r4, lr}
003832d0  03 30 8f e0                                      add r3, pc, r3
003832d4  02 20 93 e7                                      ldr r2, [r3, r2]
003832d8  10 30 92 e5                                      ldr r3, [r2, #0x10]
003832dc  18 30 93 e5                                      ldr r3, [r3, #0x18]
003832e0  03 00 a0 e1                                      mov r0, r3
003832e4  00 30 93 e5                                      ldr r3, [r3]
003832e8  0f e0 a0 e1                                      mov lr, pc
003832ec  0c f0 93 e5                                      ldr pc, [r3, #0xc]
003832f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003832f4  c0 17 61 00 f4 37 00 00                          .byte 0xc0, 0x17, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003832fc, declared_size=8, range_size=8, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsole4DrawEPK12StateMachine
; demangled: GSConsole::Draw(StateMachine const*)
; decoder-mode: arm
003832fc  01 00 a0 e1                                      mov r0, r1
00383300  62 db fe ea                                      b #0x33a090

; FUNCTION 0x00383304, declared_size=40, range_size=40, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsole6UpdateEP12StateMachined
; demangled: GSConsole::Update(StateMachine*, double)
; decoder-mode: arm
00383304  18 10 9f e5                                      ldr r1, [pc, #0x18]
00383308  18 00 9f e5                                      ldr r0, [pc, #0x18]
0038330c  01 10 8f e0                                      add r1, pc, r1
00383310  00 00 91 e7                                      ldr r0, [r1, r0]
00383314  48 00 90 e5                                      ldr r0, [r0, #0x48]
00383318  00 00 50 e3                                      cmp r0, #0
0038331c  1e ff 2f 01                                      bxeq lr
00383320  d2 b3 fe ea                                      b #0x330270
; mapping-symbol data/literal pool
00383324  84 17 61 00 f4 37 00 00                          .byte 0x84, 0x17, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038332c, declared_size=52, range_size=52, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsole4DtorEPK12StateMachine
; demangled: GSConsole::Dtor(StateMachine const*)
; decoder-mode: arm
0038332c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00383330  24 20 9f e5                                      ldr r2, [pc, #0x24]
00383334  03 30 8f e0                                      add r3, pc, r3
00383338  02 20 93 e7                                      ldr r2, [r3, r2]
0038333c  48 00 92 e5                                      ldr r0, [r2, #0x48]
00383340  00 00 50 e3                                      cmp r0, #0
00383344  1e ff 2f 01                                      bxeq lr
00383348  04 30 d0 e5                                      ldrb r3, [r0, #4]
0038334c  00 00 53 e3                                      cmp r3, #0
00383350  1e ff 2f 01                                      bxeq lr
00383354  1f c6 fe ea                                      b #0x334bd8
; mapping-symbol data/literal pool
00383358  5c 17 61 00 f4 37 00 00                          .byte 0x5c, 0x17, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00383360, declared_size=52, range_size=52, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsole4CtorEPK12StateMachine
; demangled: GSConsole::Ctor(StateMachine const*)
; decoder-mode: arm
00383360  24 30 9f e5                                      ldr r3, [pc, #0x24]
00383364  24 20 9f e5                                      ldr r2, [pc, #0x24]
00383368  03 30 8f e0                                      add r3, pc, r3
0038336c  02 20 93 e7                                      ldr r2, [r3, r2]
00383370  48 00 92 e5                                      ldr r0, [r2, #0x48]
00383374  00 00 50 e3                                      cmp r0, #0
00383378  1e ff 2f 01                                      bxeq lr
0038337c  04 30 d0 e5                                      ldrb r3, [r0, #4]
00383380  00 00 53 e3                                      cmp r3, #0
00383384  1e ff 2f 11                                      bxne lr
00383388  12 c6 fe ea                                      b #0x334bd8
; mapping-symbol data/literal pool
0038338c  28 17 61 00 f4 37 00 00                          .byte 0x28, 0x17, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00383394, declared_size=28, range_size=28, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsoleD0Ev
; demangled: GSConsole::~GSConsole()
; decoder-mode: arm
00383394  10 40 2d e9                                      push {r4, lr}
00383398  00 40 a0 e1                                      mov r4, r0
0038339c  c7 ff ff eb                                      bl #0x3832c0
003833a0  04 00 a0 e1                                      mov r0, r4
003833a4  25 34 fe eb                                      bl #0x310440
003833a8  04 00 a0 e1                                      mov r0, r4
003833ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003833e4, declared_size=240, range_size=240, mode=arm
; class-group: GSConsole
; alias: _ZN9GSConsole6ToggleEv
; demangled: GSConsole::Toggle()
; decoder-mode: arm
003833e4  30 40 2d e9                                      push {r4, r5, lr}
003833e8  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
003833ec  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003833f0  0c d0 4d e2                                      sub sp, sp, #0xc
003833f4  04 40 8f e0                                      add r4, pc, r4
003833f8  03 30 94 e7                                      ldr r3, [r4, r3]
003833fc  18 50 93 e5                                      ldr r5, [r3, #0x18]
00383400  00 00 55 e3                                      cmp r5, #0
00383404  15 00 00 0a                                      beq #0x383460
00383408  10 30 95 e5                                      ldr r3, [r5, #0x10]
0038340c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00383410  03 20 62 e0                                      rsb r2, r2, r3
00383414  a2 21 b0 e1                                      lsrs r2, r2, #3
00383418  06 00 00 1a                                      bne #0x383438
0038341c  98 20 9f e5                                      ldr r2, [pc, #0x98]
00383420  02 10 94 e7                                      ldr r1, [r4, r2]
00383424  05 00 a0 e1                                      mov r0, r5
00383428  00 20 a0 e3                                      mov r2, #0
0038342c  0c d0 8d e2                                      add sp, sp, #0xc
00383430  30 40 bd e8                                      pop {r4, r5, lr}
00383434  c2 db fe ea                                      b #0x33a344
00383438  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0038343c  08 10 13 e5                                      ldr r1, [r3, #-8]
00383440  02 30 94 e7                                      ldr r3, [r4, r2]
00383444  03 00 51 e1                                      cmp r1, r3
00383448  f4 ff ff 1a                                      bne #0x383420
0038344c  05 00 a0 e1                                      mov r0, r5
00383450  00 10 a0 e3                                      mov r1, #0
00383454  0c d0 8d e2                                      add sp, sp, #0xc
00383458  30 40 bd e8                                      pop {r4, r5, lr}
0038345c  da db fe ea                                      b #0x33a3cc
00383460  58 30 9f e5                                      ldr r3, [pc, #0x58]
00383464  03 30 94 e7                                      ldr r3, [r4, r3]
00383468  00 30 93 e5                                      ldr r3, [r3]
0038346c  02 00 53 e3                                      cmp r3, #2
00383470  00 50 85 05                                      streq r5, [r5]
00383474  e3 ff ff 0a                                      beq #0x383408
00383478  01 00 53 e3                                      cmp r3, #1
0038347c  e1 ff ff 1a                                      bne #0x383408
00383480  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00383484  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00383488  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0038348c  00 00 94 e7                                      ldr r0, [r4, r0]
00383490  38 30 9f e5                                      ldr r3, [pc, #0x38]
00383494  1a c0 a0 e3                                      mov ip, #0x1a
00383498  01 10 8f e0                                      add r1, pc, r1
0038349c  02 20 8f e0                                      add r2, pc, r2
003834a0  03 30 8f e0                                      add r3, pc, r3
003834a4  a8 00 80 e2                                      add r0, r0, #0xa8
003834a8  00 c0 8d e5                                      str ip, [sp]
003834ac  d4 2a fe eb                                      bl #0x30e004
003834b0  d4 ff ff ea                                      b #0x383408
; mapping-symbol data/literal pool
003834b4  9c 16 61 00 f4 37 00 00 a0 37 00 00 c0 39 00 00  .byte 0x9c, 0x16, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa0, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003834c4  c0 19 00 00 40 af 53 00 c4 e8 53 00 c8 e8 53 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x40, 0xaf, 0x53, 0x00, 0xc4, 0xe8, 0x53, 0x00, 0xc8, 0xe8, 0x53, 0x00
