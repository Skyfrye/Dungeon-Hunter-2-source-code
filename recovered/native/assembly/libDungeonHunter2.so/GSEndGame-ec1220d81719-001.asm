; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038358c, declared_size=44, range_size=44, mode=arm
; class-group: GSEndGame
; alias: _ZN9GSEndGameC2Ev
; demangled: GSEndGame::GSEndGame()
; decoder-mode: arm
0038358c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00383590  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00383594  00 c0 a0 e3                                      mov ip, #0
00383598  03 30 8f e0                                      add r3, pc, r3
0038359c  02 20 93 e7                                      ldr r2, [r3, r2]
003835a0  04 c0 80 e5                                      str ip, [r0, #4]
003835a4  08 20 82 e2                                      add r2, r2, #8
003835a8  00 20 80 e5                                      str r2, [r0]
003835ac  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003835b0  f8 14 61 00 d4 0c 00 00                          .byte 0xf8, 0x14, 0x61, 0x00, 0xd4, 0x0c, 0x00, 0x00

; FUNCTION 0x003835b8, declared_size=44, range_size=44, mode=arm
; class-group: GSEndGame
; alias: _ZN9GSEndGameC1Ev
; demangled: GSEndGame::GSEndGame()
; decoder-mode: arm
003835b8  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
003835bc  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
003835c0  00 c0 a0 e3                                      mov ip, #0
003835c4  03 30 8f e0                                      add r3, pc, r3
003835c8  02 20 93 e7                                      ldr r2, [r3, r2]
003835cc  04 c0 80 e5                                      str ip, [r0, #4]
003835d0  08 20 82 e2                                      add r2, r2, #8
003835d4  00 20 80 e5                                      str r2, [r0]
003835d8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003835dc  cc 14 61 00 d4 0c 00 00                          .byte 0xcc, 0x14, 0x61, 0x00, 0xd4, 0x0c, 0x00, 0x00

; FUNCTION 0x003835e4, declared_size=4, range_size=4, mode=arm
; class-group: GSEndGame
; alias: _ZN9GSEndGameD2Ev
; demangled: GSEndGame::~GSEndGame()
; decoder-mode: arm
003835e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003835e8, declared_size=4, range_size=4, mode=arm
; class-group: GSEndGame
; alias: _ZN9GSEndGameD1Ev
; demangled: GSEndGame::~GSEndGame()
; decoder-mode: arm
003835e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003835ec, declared_size=12, range_size=12, mode=arm
; class-group: GSEndGame
; alias: _ZN9GSEndGame4CtorEPK12StateMachine
; demangled: GSEndGame::Ctor(StateMachine const*)
; decoder-mode: arm
003835ec  00 30 a0 e3                                      mov r3, #0
003835f0  04 30 80 e5                                      str r3, [r0, #4]
003835f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003835f8, declared_size=4, range_size=4, mode=arm
; class-group: GSEndGame
; alias: _ZN9GSEndGame4DtorEPK12StateMachine
; demangled: GSEndGame::Dtor(StateMachine const*)
; decoder-mode: arm
003835f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003835fc, declared_size=28, range_size=28, mode=arm
; class-group: GSEndGame
; alias: _ZN9GSEndGameD0Ev
; demangled: GSEndGame::~GSEndGame()
; decoder-mode: arm
003835fc  10 40 2d e9                                      push {r4, lr}
00383600  00 40 a0 e1                                      mov r4, r0
00383604  f7 ff ff eb                                      bl #0x3835e8
00383608  04 00 a0 e1                                      mov r0, r4
0038360c  8b 33 fe eb                                      bl #0x310440
00383610  04 00 a0 e1                                      mov r0, r4
00383614  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00383618, declared_size=20, range_size=20, mode=arm
; class-group: GSEndGame
; alias: _ZN9GSEndGame4DrawEPK12StateMachine
; demangled: GSEndGame::Draw(StateMachine const*)
; decoder-mode: arm
00383618  10 40 2d e9                                      push {r4, lr}
0038361c  1a a5 02 eb                                      bl #0x42ca8c
00383620  00 10 a0 e3                                      mov r1, #0
00383624  10 40 bd e8                                      pop {r4, lr}
00383628  7a ac 02 ea                                      b #0x42e818

; FUNCTION 0x00383fbc, declared_size=492, range_size=492, mode=arm
; class-group: GSEndGame
; alias: _ZN9GSEndGame6UpdateEP12StateMachined
; demangled: GSEndGame::Update(StateMachine*, double)
; decoder-mode: arm
00383fbc  70 40 2d e9                                      push {r4, r5, r6, lr}
00383fc0  04 50 90 e5                                      ldr r5, [r0, #4]
00383fc4  b8 41 9f e5                                      ldr r4, [pc, #0x1b8]
00383fc8  00 60 a0 e1                                      mov r6, r0
00383fcc  01 00 55 e3                                      cmp r5, #1
00383fd0  04 40 8f e0                                      add r4, pc, r4
00383fd4  12 00 00 0a                                      beq #0x384024
00383fd8  02 00 55 e3                                      cmp r5, #2
00383fdc  17 00 00 0a                                      beq #0x384040
00383fe0  00 00 55 e3                                      cmp r5, #0
00383fe4  0a 00 00 1a                                      bne #0x384014
00383fe8  e9 e5 11 eb                                      bl #0x7fd794
00383fec  05 30 d0 e5                                      ldrb r3, [r0, #5]
00383ff0  00 00 53 e3                                      cmp r3, #0
00383ff4  53 00 00 1a                                      bne #0x384148
00383ff8  a3 a2 02 eb                                      bl #0x42ca8c
00383ffc  84 11 9f e5                                      ldr r1, [pc, #0x184]
00384000  01 10 8f e0                                      add r1, pc, r1
00384004  46 b6 02 eb                                      bl #0x431924
00384008  04 30 96 e5                                      ldr r3, [r6, #4]
0038400c  01 30 83 e2                                      add r3, r3, #1
00384010  04 30 86 e5                                      str r3, [r6, #4]
00384014  9c a2 02 eb                                      bl #0x42ca8c
00384018  00 10 a0 e3                                      mov r1, #0
0038401c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00384020  77 aa 02 ea                                      b #0x42ea04
00384024  98 a2 02 eb                                      bl #0x42ca8c
00384028  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
0038402c  01 10 8f e0                                      add r1, pc, r1
00384030  6e a4 02 eb                                      bl #0x42d1f0
00384034  ee 6c 02 eb                                      bl #0x41f3f4
00384038  00 00 50 e3                                      cmp r0, #0
0038403c  f4 ff ff 1a                                      bne #0x384014
00384040  98 ff ff eb                                      bl #0x383ea8
00384044  44 31 9f e5                                      ldr r3, [pc, #0x144]
00384048  03 50 94 e7                                      ldr r5, [r4, r3]
0038404c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00384050  04 30 95 e5                                      ldr r3, [r5, #4]
00384054  03 00 52 e1                                      cmp r2, r3
00384058  06 00 00 0a                                      beq #0x384078
0038405c  04 60 85 e2                                      add r6, r5, #4
00384060  06 00 a0 e1                                      mov r0, r6
00384064  a2 ff ff eb                                      bl #0x383ef4
00384068  14 20 95 e5                                      ldr r2, [r5, #0x14]
0038406c  04 30 95 e5                                      ldr r3, [r5, #4]
00384070  03 00 52 e1                                      cmp r2, r3
00384074  f9 ff ff 1a                                      bne #0x384060
00384078  8a ff ff eb                                      bl #0x383ea8
0038407c  10 31 9f e5                                      ldr r3, [pc, #0x110]
00384080  03 50 94 e7                                      ldr r5, [r4, r3]
00384084  14 20 95 e5                                      ldr r2, [r5, #0x14]
00384088  04 30 95 e5                                      ldr r3, [r5, #4]
0038408c  03 00 52 e1                                      cmp r2, r3
00384090  06 00 00 0a                                      beq #0x3840b0
00384094  04 60 85 e2                                      add r6, r5, #4
00384098  06 00 a0 e1                                      mov r0, r6
0038409c  1b ff ff eb                                      bl #0x383d10
003840a0  14 20 95 e5                                      ldr r2, [r5, #0x14]
003840a4  04 30 95 e5                                      ldr r3, [r5, #4]
003840a8  03 00 52 e1                                      cmp r2, r3
003840ac  f9 ff ff 1a                                      bne #0x384098
003840b0  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
003840b4  03 50 94 e7                                      ldr r5, [r4, r3]
003840b8  14 20 95 e5                                      ldr r2, [r5, #0x14]
003840bc  04 30 95 e5                                      ldr r3, [r5, #4]
003840c0  03 00 52 e1                                      cmp r2, r3
003840c4  06 00 00 0a                                      beq #0x3840e4
003840c8  04 60 85 e2                                      add r6, r5, #4
003840cc  06 00 a0 e1                                      mov r0, r6
003840d0  34 ff ff eb                                      bl #0x383da8
003840d4  14 20 95 e5                                      ldr r2, [r5, #0x14]
003840d8  04 30 95 e5                                      ldr r3, [r5, #4]
003840dc  03 00 52 e1                                      cmp r2, r3
003840e0  f9 ff ff 1a                                      bne #0x3840cc
003840e4  68 a2 02 eb                                      bl #0x42ca8c
003840e8  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
003840ec  01 10 a0 e3                                      mov r1, #1
003840f0  03 00 a0 e1                                      mov r0, r3
003840f4  00 30 93 e5                                      ldr r3, [r3]
003840f8  0f e0 a0 e1                                      mov lr, pc
003840fc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00384100  61 a2 02 eb                                      bl #0x42ca8c
00384104  90 10 9f e5                                      ldr r1, [pc, #0x90]
00384108  01 10 8f e0                                      add r1, pc, r1
0038410c  37 a4 02 eb                                      bl #0x42d1f0
00384110  88 20 9f e5                                      ldr r2, [pc, #0x88]
00384114  88 30 9f e5                                      ldr r3, [pc, #0x88]
00384118  01 c0 a0 e3                                      mov ip, #1
0038411c  03 30 94 e7                                      ldr r3, [r4, r3]
00384120  02 40 94 e7                                      ldr r4, [r4, r2]
00384124  00 20 a0 e3                                      mov r2, #0
00384128  0c 00 83 e5                                      str r0, [r3, #0xc]
0038412c  03 10 a0 e1                                      mov r1, r3
00384130  18 00 94 e5                                      ldr r0, [r4, #0x18]
00384134  29 c0 c3 e5                                      strb ip, [r3, #0x29]
00384138  92 d8 fe eb                                      bl #0x33a388
0038413c  40 00 94 e5                                      ldr r0, [r4, #0x40]
00384140  9e b9 ff eb                                      bl #0x3727c0
00384144  b2 ff ff ea                                      b #0x384014
00384148  8f f3 11 eb                                      bl #0x800f8c
0038414c  00 30 90 e5                                      ldr r3, [r0]
00384150  0f e0 a0 e1                                      mov lr, pc
00384154  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00384158  8b f3 11 eb                                      bl #0x800f8c
0038415c  01 00 a0 e3                                      mov r0, #1
00384160  d6 e8 11 eb                                      bl #0x7fe4c0
00384164  88 f3 11 eb                                      bl #0x800f8c
00384168  87 ea 11 eb                                      bl #0x7feb8c
0038416c  88 e5 11 eb                                      bl #0x7fd794
00384170  05 10 a0 e1                                      mov r1, r5
00384174  e4 e4 11 eb                                      bl #0x7fd50c
00384178  46 73 fe eb                                      bl #0x320e98
0038417c  28 50 c0 e5                                      strb r5, [r0, #0x28]
00384180  9c ff ff ea                                      b #0x383ff8
; mapping-symbol data/literal pool
00384184  c0 0a 61 00 b0 dd 53 00 84 dd 53 00 bc 25 00 00  .byte 0xc0, 0x0a, 0x61, 0x00, 0xb0, 0xdd, 0x53, 0x00, 0x84, 0xdd, 0x53, 0x00, 0xbc, 0x25, 0x00, 0x00
00384194  ec 14 00 00 d8 0f 00 00 c8 af 53 00 f4 37 00 00  .byte 0xec, 0x14, 0x00, 0x00, 0xd8, 0x0f, 0x00, 0x00, 0xc8, 0xaf, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00
003841a4  54 21 00 00                                      .byte 0x54, 0x21, 0x00, 0x00
