; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00386a5c, declared_size=36, range_size=36, mode=arm
; class-group: GSTest
; alias: _ZN6GSTestC2Ev
; demangled: GSTest::GSTest()
; decoder-mode: arm
00386a5c  14 30 9f e5                                      ldr r3, [pc, #0x14]
00386a60  14 20 9f e5                                      ldr r2, [pc, #0x14]
00386a64  03 30 8f e0                                      add r3, pc, r3
00386a68  02 20 93 e7                                      ldr r2, [r3, r2]
00386a6c  08 20 82 e2                                      add r2, r2, #8
00386a70  00 20 80 e5                                      str r2, [r0]
00386a74  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00386a78  2c e0 60 00 14 39 00 00                          .byte 0x2c, 0xe0, 0x60, 0x00, 0x14, 0x39, 0x00, 0x00

; FUNCTION 0x00386a80, declared_size=36, range_size=36, mode=arm
; class-group: GSTest
; alias: _ZN6GSTestC1Ev
; demangled: GSTest::GSTest()
; decoder-mode: arm
00386a80  14 30 9f e5                                      ldr r3, [pc, #0x14]
00386a84  14 20 9f e5                                      ldr r2, [pc, #0x14]
00386a88  03 30 8f e0                                      add r3, pc, r3
00386a8c  02 20 93 e7                                      ldr r2, [r3, r2]
00386a90  08 20 82 e2                                      add r2, r2, #8
00386a94  00 20 80 e5                                      str r2, [r0]
00386a98  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00386a9c  08 e0 60 00 14 39 00 00                          .byte 0x08, 0xe0, 0x60, 0x00, 0x14, 0x39, 0x00, 0x00

; FUNCTION 0x00386aa4, declared_size=4, range_size=4, mode=arm
; class-group: GSTest
; alias: _ZN6GSTestD2Ev
; demangled: GSTest::~GSTest()
; decoder-mode: arm
00386aa4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386aa8, declared_size=4, range_size=4, mode=arm
; class-group: GSTest
; alias: _ZN6GSTestD1Ev
; demangled: GSTest::~GSTest()
; decoder-mode: arm
00386aa8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386aac, declared_size=4, range_size=4, mode=arm
; class-group: GSTest
; alias: _ZN6GSTest4CtorEPK12StateMachine
; demangled: GSTest::Ctor(StateMachine const*)
; decoder-mode: arm
00386aac  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386ab0, declared_size=4, range_size=4, mode=arm
; class-group: GSTest
; alias: _ZN6GSTest4DtorEPK12StateMachine
; demangled: GSTest::Dtor(StateMachine const*)
; decoder-mode: arm
00386ab0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386adc, declared_size=4, range_size=4, mode=arm
; class-group: GSTest
; alias: _ZN6GSTest4DrawEPK12StateMachine
; demangled: GSTest::Draw(StateMachine const*)
; decoder-mode: arm
00386adc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00386b4c, declared_size=28, range_size=28, mode=arm
; class-group: GSTest
; alias: _ZN6GSTestD0Ev
; demangled: GSTest::~GSTest()
; decoder-mode: arm
00386b4c  10 40 2d e9                                      push {r4, lr}
00386b50  00 40 a0 e1                                      mov r4, r0
00386b54  d3 ff ff eb                                      bl #0x386aa8
00386b58  04 00 a0 e1                                      mov r0, r4
00386b5c  37 26 fe eb                                      bl #0x310440
00386b60  04 00 a0 e1                                      mov r0, r4
00386b64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00386f90, declared_size=456, range_size=456, mode=arm
; class-group: GSTest
; alias: _ZN6GSTest6UpdateEP12StateMachined
; demangled: GSTest::Update(StateMachine*, double)
; decoder-mode: arm
00386f90  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00386f94  90 41 9f e5                                      ldr r4, [pc, #0x190]
00386f98  90 51 9f e5                                      ldr r5, [pc, #0x190]
00386f9c  ac d0 4d e2                                      sub sp, sp, #0xac
00386fa0  04 40 8f e0                                      add r4, pc, r4
00386fa4  05 30 94 e7                                      ldr r3, [r4, r5]
00386fa8  00 30 93 e5                                      ldr r3, [r3]
00386fac  a4 30 8d e5                                      str r3, [sp, #0xa4]
00386fb0  7b 1b ff eb                                      bl #0x34dda4
00386fb4  fe 19 ff eb                                      bl #0x34d7b4
00386fb8  00 60 50 e2                                      subs r6, r0, #0
00386fbc  52 00 00 0a                                      beq #0x38710c
00386fc0  20 10 96 e5                                      ldr r1, [r6, #0x20]
00386fc4  24 00 96 e5                                      ldr r0, [r6, #0x24]
00386fc8  f5 1e fe eb                                      bl #0x30eba4
00386fcc  fe 15 a0 e3                                      mov r1, #0x3f800000
00386fd0  f3 1e fe eb                                      bl #0x30eba4
00386fd4  3f 14 a0 e3                                      mov r1, #0x3f000000
00386fd8  63 1f fe eb                                      bl #0x30ed6c
00386fdc  00 10 a0 e1                                      mov r1, r0
00386fe0  18 00 96 e5                                      ldr r0, [r6, #0x18]
00386fe4  32 1d fe eb                                      bl #0x30e4b4
00386fe8  00 00 50 e3                                      cmp r0, #0
00386fec  46 00 00 0a                                      beq #0x38710c
00386ff0  28 80 d6 e5                                      ldrb r8, [r6, #0x28]
00386ff4  00 00 58 e3                                      cmp r8, #0
00386ff8  43 00 00 1a                                      bne #0x38710c
00386ffc  30 31 9f e5                                      ldr r3, [pc, #0x130]
00387000  0c 70 8d e2                                      add r7, sp, #0xc
00387004  a8 a0 8d e2                                      add sl, sp, #0xa8
00387008  03 30 94 e7                                      ldr r3, [r4, r3]
0038700c  0d 60 a0 e1                                      mov r6, sp
00387010  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
00387014  f3 cb ff eb                                      bl #0x379fe8
00387018  08 10 a0 e1                                      mov r1, r8
0038701c  14 81 9f e5                                      ldr r8, [pc, #0x114]
00387020  07 00 a0 e1                                      mov r0, r7
00387024  56 d5 ff eb                                      bl #0x37c584
00387028  08 80 94 e7                                      ldr r8, [r4, r8]
0038702c  08 01 9f e5                                      ldr r0, [pc, #0x108]
00387030  08 80 88 e2                                      add r8, r8, #8
00387034  00 00 8f e0                                      add r0, pc, r0
00387038  a0 80 2a e5                                      str r8, [sl, #-0xa0]!
0038703c  20 1c fe eb                                      bl #0x30e0c4
00387040  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
00387044  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00387048  0a 30 a0 e1                                      mov r3, sl
0038704c  01 10 8f e0                                      add r1, pc, r1
00387050  02 20 94 e7                                      ldr r2, [r4, r2]
00387054  10 00 87 e2                                      add r0, r7, #0x10
00387058  1d 4d fe eb                                      bl #0x31a4d4
0038705c  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
00387060  07 00 a0 e1                                      mov r0, r7
00387064  01 10 8f e0                                      add r1, pc, r1
00387068  41 d1 ff eb                                      bl #0x37b574
0038706c  0d 00 a0 e1                                      mov r0, sp
00387070  8f 48 fe eb                                      bl #0x3192b4
00387074  04 00 a0 e3                                      mov r0, #4
00387078  f5 24 fe eb                                      bl #0x310454
0038707c  00 10 a0 e1                                      mov r1, r0
00387080  00 80 80 e5                                      str r8, [r0]
00387084  0d 00 a0 e1                                      mov r0, sp
00387088  a6 ff ff eb                                      bl #0x386f28
0038708c  04 00 a0 e3                                      mov r0, #4
00387090  ef 24 fe eb                                      bl #0x310454
00387094  b0 80 9f e5                                      ldr r8, [pc, #0xb0]
00387098  00 30 a0 e1                                      mov r3, r0
0038709c  00 10 a0 e1                                      mov r1, r0
003870a0  08 80 94 e7                                      ldr r8, [r4, r8]
003870a4  0d 00 a0 e1                                      mov r0, sp
003870a8  08 80 88 e2                                      add r8, r8, #8
003870ac  00 80 83 e5                                      str r8, [r3]
003870b0  9c ff ff eb                                      bl #0x386f28
003870b4  04 00 a0 e3                                      mov r0, #4
003870b8  e5 24 fe eb                                      bl #0x310454
003870bc  00 10 a0 e1                                      mov r1, r0
003870c0  00 80 80 e5                                      str r8, [r0]
003870c4  0d 00 a0 e1                                      mov r0, sp
003870c8  96 ff ff eb                                      bl #0x386f28
003870cc  0d 00 a0 e1                                      mov r0, sp
003870d0  07 10 a0 e1                                      mov r1, r7
003870d4  e4 4c fe eb                                      bl #0x31a46c
003870d8  70 10 9f e5                                      ldr r1, [pc, #0x70]
003870dc  0d 20 a0 e1                                      mov r2, sp
003870e0  07 00 a0 e1                                      mov r0, r7
003870e4  01 10 8f e0                                      add r1, pc, r1
003870e8  cb d4 ff eb                                      bl #0x37c41c
003870ec  0d 00 a0 e1                                      mov r0, sp
003870f0  4c 48 fe eb                                      bl #0x319228
003870f4  58 30 9f e5                                      ldr r3, [pc, #0x58]
003870f8  07 00 a0 e1                                      mov r0, r7
003870fc  03 30 94 e7                                      ldr r3, [r4, r3]
00387100  08 30 83 e2                                      add r3, r3, #8
00387104  08 30 8d e5                                      str r3, [sp, #8]
00387108  bd d3 ff eb                                      bl #0x37c004
0038710c  05 30 94 e7                                      ldr r3, [r4, r5]
00387110  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
00387114  00 30 93 e5                                      ldr r3, [r3]
00387118  03 00 52 e1                                      cmp r2, r3
0038711c  01 00 00 1a                                      bne #0x387128
00387120  ac d0 8d e2                                      add sp, sp, #0xac
00387124  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00387128  78 1c fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038712c  f0 da 60 00 ac 40 00 00 f4 37 00 00 e0 08 00 00  .byte 0xf0, 0xda, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe0, 0x08, 0x00, 0x00
0038713c  fc b0 53 00 3c b0 53 00 1c 45 00 00 04 b1 53 00  .byte 0xfc, 0xb0, 0x53, 0x00, 0x3c, 0xb0, 0x53, 0x00, 0x1c, 0x45, 0x00, 0x00, 0x04, 0xb1, 0x53, 0x00
0038714c  30 43 00 00 9c b0 53 00 8c 10 00 00              .byte 0x30, 0x43, 0x00, 0x00, 0x9c, 0xb0, 0x53, 0x00, 0x8c, 0x10, 0x00, 0x00
