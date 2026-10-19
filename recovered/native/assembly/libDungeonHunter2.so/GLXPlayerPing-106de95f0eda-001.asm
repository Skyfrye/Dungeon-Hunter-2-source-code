; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0084008c, declared_size=60, range_size=60, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPing4InitEv
; demangled: GLXPlayerPing::Init()
; decoder-mode: arm
0084008c  10 40 2d e9                                      push {r4, lr}
00840090  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00840094  00 00 53 e3                                      cmp r3, #0
00840098  08 00 00 0a                                      beq #0x8400c0
0084009c  14 30 90 e5                                      ldr r3, [r0, #0x14]
008400a0  00 00 53 e3                                      cmp r3, #0
008400a4  05 00 00 ba                                      blt #0x8400c0
008400a8  18 30 90 e5                                      ldr r3, [r0, #0x18]
008400ac  03 00 a0 e1                                      mov r0, r3
008400b0  00 30 93 e5                                      ldr r3, [r3]
008400b4  0f e0 a0 e1                                      mov lr, pc
008400b8  74 f0 93 e5                                      ldr pc, [r3, #0x74]
008400bc  10 80 bd e8                                      pop {r4, pc}
008400c0  00 00 a0 e3                                      mov r0, #0
008400c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008400c8, declared_size=36, range_size=36, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPing7PrepareEv
; demangled: GLXPlayerPing::Prepare()
; decoder-mode: arm
008400c8  10 40 2d e9                                      push {r4, lr}
008400cc  00 40 a0 e1                                      mov r4, r0
008400d0  ed ff ff eb                                      bl #0x84008c
008400d4  00 00 50 e3                                      cmp r0, #0
008400d8  02 30 a0 13                                      movne r3, #2
008400dc  00 00 e0 03                                      mvneq r0, #0
008400e0  24 30 84 15                                      strne r3, [r4, #0x24]
008400e4  00 00 a0 13                                      movne r0, #0
008400e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008400ec, declared_size=16, range_size=16, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPing6FinishEv
; demangled: GLXPlayerPing::Finish()
; decoder-mode: arm
008400ec  01 30 a0 e3                                      mov r3, #1
008400f0  24 30 80 e5                                      str r3, [r0, #0x24]
008400f4  00 00 a0 e3                                      mov r0, #0
008400f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008400fc, declared_size=180, range_size=180, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPingD1Ev
; demangled: GLXPlayerPing::~GLXPlayerPing()
; decoder-mode: arm
008400fc  10 40 2d e9                                      push {r4, lr}
00840100  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00840104  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00840108  00 40 a0 e1                                      mov r4, r0
0084010c  03 30 8f e0                                      add r3, pc, r3
00840110  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00840114  02 20 93 e7                                      ldr r2, [r3, r2]
00840118  00 00 50 e3                                      cmp r0, #0
0084011c  08 20 82 e2                                      add r2, r2, #8
00840120  00 20 84 e5                                      str r2, [r4]
00840124  02 00 00 0a                                      beq #0x840134
00840128  60 38 eb eb                                      bl #0x30e2b0
0084012c  00 30 a0 e3                                      mov r3, #0
00840130  0c 30 84 e5                                      str r3, [r4, #0xc]
00840134  10 00 94 e5                                      ldr r0, [r4, #0x10]
00840138  00 00 50 e3                                      cmp r0, #0
0084013c  02 00 00 0a                                      beq #0x84014c
00840140  5a 38 eb eb                                      bl #0x30e2b0
00840144  00 30 a0 e3                                      mov r3, #0
00840148  10 30 84 e5                                      str r3, [r4, #0x10]
0084014c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00840150  00 00 50 e3                                      cmp r0, #0
00840154  02 00 00 0a                                      beq #0x840164
00840158  54 38 eb eb                                      bl #0x30e2b0
0084015c  00 30 a0 e3                                      mov r3, #0
00840160  2c 30 84 e5                                      str r3, [r4, #0x2c]
00840164  28 00 94 e5                                      ldr r0, [r4, #0x28]
00840168  00 00 50 e3                                      cmp r0, #0
0084016c  02 00 00 0a                                      beq #0x84017c
00840170  4e 38 eb eb                                      bl #0x30e2b0
00840174  00 30 a0 e3                                      mov r3, #0
00840178  28 30 84 e5                                      str r3, [r4, #0x28]
0084017c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00840180  00 00 53 e3                                      cmp r3, #0
00840184  05 00 00 0a                                      beq #0x8401a0
00840188  03 00 a0 e1                                      mov r0, r3
0084018c  00 30 93 e5                                      ldr r3, [r3]
00840190  0f e0 a0 e1                                      mov lr, pc
00840194  04 f0 93 e5                                      ldr pc, [r3, #4]
00840198  00 30 a0 e3                                      mov r3, #0
0084019c  18 30 84 e5                                      str r3, [r4, #0x18]
008401a0  04 00 a0 e1                                      mov r0, r4
008401a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008401a8  84 49 15 00 5c 47 00 00                          .byte 0x84, 0x49, 0x15, 0x00, 0x5c, 0x47, 0x00, 0x00

; FUNCTION 0x008401b0, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPingD0Ev
; demangled: GLXPlayerPing::~GLXPlayerPing()
; decoder-mode: arm
008401b0  10 40 2d e9                                      push {r4, lr}
008401b4  00 40 a0 e1                                      mov r4, r0
008401b8  cf ff ff eb                                      bl #0x8400fc
008401bc  04 00 a0 e1                                      mov r0, r4
008401c0  3a 38 eb eb                                      bl #0x30e2b0
008401c4  04 00 a0 e1                                      mov r0, r4
008401c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008401cc, declared_size=180, range_size=180, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPingD2Ev
; demangled: GLXPlayerPing::~GLXPlayerPing()
; decoder-mode: arm
008401cc  10 40 2d e9                                      push {r4, lr}
008401d0  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
008401d4  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
008401d8  00 40 a0 e1                                      mov r4, r0
008401dc  03 30 8f e0                                      add r3, pc, r3
008401e0  0c 00 90 e5                                      ldr r0, [r0, #0xc]
008401e4  02 20 93 e7                                      ldr r2, [r3, r2]
008401e8  00 00 50 e3                                      cmp r0, #0
008401ec  08 20 82 e2                                      add r2, r2, #8
008401f0  00 20 84 e5                                      str r2, [r4]
008401f4  02 00 00 0a                                      beq #0x840204
008401f8  2c 38 eb eb                                      bl #0x30e2b0
008401fc  00 30 a0 e3                                      mov r3, #0
00840200  0c 30 84 e5                                      str r3, [r4, #0xc]
00840204  10 00 94 e5                                      ldr r0, [r4, #0x10]
00840208  00 00 50 e3                                      cmp r0, #0
0084020c  02 00 00 0a                                      beq #0x84021c
00840210  26 38 eb eb                                      bl #0x30e2b0
00840214  00 30 a0 e3                                      mov r3, #0
00840218  10 30 84 e5                                      str r3, [r4, #0x10]
0084021c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00840220  00 00 50 e3                                      cmp r0, #0
00840224  02 00 00 0a                                      beq #0x840234
00840228  20 38 eb eb                                      bl #0x30e2b0
0084022c  00 30 a0 e3                                      mov r3, #0
00840230  2c 30 84 e5                                      str r3, [r4, #0x2c]
00840234  28 00 94 e5                                      ldr r0, [r4, #0x28]
00840238  00 00 50 e3                                      cmp r0, #0
0084023c  02 00 00 0a                                      beq #0x84024c
00840240  1a 38 eb eb                                      bl #0x30e2b0
00840244  00 30 a0 e3                                      mov r3, #0
00840248  28 30 84 e5                                      str r3, [r4, #0x28]
0084024c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00840250  00 00 53 e3                                      cmp r3, #0
00840254  05 00 00 0a                                      beq #0x840270
00840258  03 00 a0 e1                                      mov r0, r3
0084025c  00 30 93 e5                                      ldr r3, [r3]
00840260  0f e0 a0 e1                                      mov lr, pc
00840264  04 f0 93 e5                                      ldr pc, [r3, #4]
00840268  00 30 a0 e3                                      mov r3, #0
0084026c  18 30 84 e5                                      str r3, [r4, #0x18]
00840270  04 00 a0 e1                                      mov r0, r4
00840274  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00840278  b4 48 15 00 5c 47 00 00                          .byte 0xb4, 0x48, 0x15, 0x00, 0x5c, 0x47, 0x00, 0x00

; FUNCTION 0x00840280, declared_size=120, range_size=120, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPing16WaitForEchoReplyEi
; demangled: GLXPlayerPing::WaitForEchoReply(int)
; decoder-mode: arm
00840280  70 40 2d e9                                      push {r4, r5, r6, lr}
00840284  90 d0 4d e2                                      sub sp, sp, #0x90
00840288  08 40 8d e2                                      add r4, sp, #8
0084028c  01 50 a0 e1                                      mov r5, r1
00840290  00 60 a0 e1                                      mov r6, r0
00840294  00 10 a0 e3                                      mov r1, #0
00840298  80 20 a0 e3                                      mov r2, #0x80
0084029c  04 00 a0 e1                                      mov r0, r4
008402a0  6e 38 eb eb                                      bl #0x30e460
008402a4  c5 32 a0 e1                                      asr r3, r5, #5
008402a8  90 20 8d e2                                      add r2, sp, #0x90
008402ac  03 31 82 e0                                      add r3, r2, r3, lsl #2
008402b0  88 20 13 e5                                      ldr r2, [r3, #-0x88]
008402b4  01 00 a0 e3                                      mov r0, #1
008402b8  1f 50 05 e2                                      and r5, r5, #0x1f
008402bc  10 55 82 e1                                      orr r5, r2, r0, lsl r5
008402c0  18 10 96 e5                                      ldr r1, [r6, #0x18]
008402c4  00 20 a0 e3                                      mov r2, #0
008402c8  88 50 03 e5                                      str r5, [r3, #-0x88]
008402cc  88 20 8d e5                                      str r2, [sp, #0x88]
008402d0  8c 20 8d e5                                      str r2, [sp, #0x8c]
008402d4  08 00 91 e5                                      ldr r0, [r1, #8]
008402d8  88 c0 8d e2                                      add ip, sp, #0x88
008402dc  04 10 a0 e1                                      mov r1, r4
008402e0  02 30 a0 e1                                      mov r3, r2
008402e4  01 00 80 e2                                      add r0, r0, #1
008402e8  00 c0 8d e5                                      str ip, [sp]
008402ec  de 36 eb eb                                      bl #0x30de6c
008402f0  90 d0 8d e2                                      add sp, sp, #0x90
008402f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008402f8, declared_size=348, range_size=348, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPing13RecvEchoReplyEv
; demangled: GLXPlayerPing::RecvEchoReply()
; decoder-mode: arm
008402f8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008402fc  3c 41 9f e5                                      ldr r4, [pc, #0x13c]
00840300  3c 51 9f e5                                      ldr r5, [pc, #0x13c]
00840304  55 df 4d e2                                      sub sp, sp, #0x154
00840308  04 40 8f e0                                      add r4, pc, r4
0084030c  05 30 94 e7                                      ldr r3, [r4, r5]
00840310  08 60 8d e2                                      add r6, sp, #8
00840314  00 70 a0 e1                                      mov r7, r0
00840318  00 30 93 e5                                      ldr r3, [r3]
0084031c  06 00 a0 e1                                      mov r0, r6
00840320  00 10 a0 e3                                      mov r1, #0
00840324  51 2f a0 e3                                      mov r2, #0x144
00840328  4c 31 8d e5                                      str r3, [sp, #0x14c]
0084032c  0c ac ff eb                                      bl #0x82b364
00840330  18 30 97 e5                                      ldr r3, [r7, #0x18]
00840334  06 10 a0 e1                                      mov r1, r6
00840338  51 2f a0 e3                                      mov r2, #0x144
0084033c  03 00 a0 e1                                      mov r0, r3
00840340  00 30 93 e5                                      ldr r3, [r3]
00840344  0f e0 a0 e1                                      mov lr, pc
00840348  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0084034c  00 60 50 e2                                      subs r6, r0, #0
00840350  00 60 e0 b3                                      mvnlt r6, #0
00840354  1c 60 87 b5                                      strlt r6, [r7, #0x1c]
00840358  1b 00 00 ba                                      blt #0x8403cc
0084035c  2d 33 a0 e3                                      mov r3, #0xb4000000
00840360  43 3b a0 e1                                      asr r3, r3, #0x16
00840364  15 1e 8d e2                                      add r1, sp, #0x150
00840368  b3 20 91 e1                                      ldrh r2, [r1, r3]
0084036c  30 30 97 e5                                      ldr r3, [r7, #0x30]
00840370  03 00 52 e1                                      cmp r2, r3
00840374  26 00 00 1a                                      bne #0x840414
00840378  1c 30 dd e5                                      ldrb r3, [sp, #0x1c]
0084037c  00 00 53 e3                                      cmp r3, #0
00840380  23 00 00 1a                                      bne #0x840414
00840384  6b ab ff eb                                      bl #0x82b138
00840388  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0084038c  00 c0 6c e0                                      rsb ip, ip, r0
00840390  00 00 5c e3                                      cmp ip, #0
00840394  1c c0 87 e5                                      str ip, [r7, #0x1c]
00840398  13 00 00 da                                      ble #0x8403ec
0084039c  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
008403a0  4b 3f e0 e3                                      mvn r3, #0x12c
008403a4  10 e0 dd e5                                      ldrb lr, [sp, #0x10]
008403a8  15 2e 8d e2                                      add r2, sp, #0x150
008403ac  01 30 43 e2                                      sub r3, r3, #1
008403b0  b3 30 92 e1                                      ldrh r3, [r2, r3]
008403b4  10 10 97 e5                                      ldr r1, [r7, #0x10]
008403b8  00 00 8f e0                                      add r0, pc, r0
008403bc  20 20 a0 e3                                      mov r2, #0x20
008403c0  00 e0 8d e5                                      str lr, [sp]
008403c4  04 c0 8d e5                                      str ip, [sp, #4]
008403c8  ed ac ff eb                                      bl #0x82b784
008403cc  05 30 94 e7                                      ldr r3, [r4, r5]
008403d0  4c 21 9d e5                                      ldr r2, [sp, #0x14c]
008403d4  06 00 a0 e1                                      mov r0, r6
008403d8  00 30 93 e5                                      ldr r3, [r3]
008403dc  03 00 52 e1                                      cmp r2, r3
008403e0  15 00 00 1a                                      bne #0x84043c
008403e4  55 df 8d e2                                      add sp, sp, #0x154
008403e8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
008403ec  58 00 9f e5                                      ldr r0, [pc, #0x58]
008403f0  4b 3f e0 e3                                      mvn r3, #0x12c
008403f4  15 2e 8d e2                                      add r2, sp, #0x150
008403f8  01 30 43 e2                                      sub r3, r3, #1
008403fc  b3 30 92 e1                                      ldrh r3, [r2, r3]
00840400  00 00 8f e0                                      add r0, pc, r0
00840404  10 10 97 e5                                      ldr r1, [r7, #0x10]
00840408  20 20 a0 e3                                      mov r2, #0x20
0084040c  dc ac ff eb                                      bl #0x82b784
00840410  ed ff ff ea                                      b #0x8403cc
00840414  14 00 9d e5                                      ldr r0, [sp, #0x14]
00840418  fb 37 eb eb                                      bl #0x30e40c
0084041c  00 10 a0 e1                                      mov r1, r0
00840420  28 00 9f e5                                      ldr r0, [pc, #0x28]
00840424  1c 20 dd e5                                      ldrb r2, [sp, #0x1c]
00840428  1d 30 dd e5                                      ldrb r3, [sp, #0x1d]
0084042c  00 00 8f e0                                      add r0, pc, r0
00840430  d3 ac ff eb                                      bl #0x82b784
00840434  01 60 e0 e3                                      mvn r6, #1
00840438  e3 ff ff ea                                      b #0x8403cc
0084043c  b3 37 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00840440  88 47 15 00 ac 40 00 00 c0 e4 0c 00 b0 e4 0c 00  .byte 0x88, 0x47, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0xe4, 0x0c, 0x00, 0xb0, 0xe4, 0x0c, 0x00
00840450  1c e4 0c 00                                      .byte 0x1c, 0xe4, 0x0c, 0x00

; FUNCTION 0x00840454, declared_size=272, range_size=272, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPing15SendEchoRequestEv
; demangled: GLXPlayerPing::SendEchoRequest()
; decoder-mode: arm
00840454  70 40 2d e9                                      push {r4, r5, r6, lr}
00840458  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
0084045c  08 d0 4d e2                                      sub sp, sp, #8
00840460  00 40 a0 e1                                      mov r4, r0
00840464  05 50 8f e0                                      add r5, pc, r5
00840468  00 30 95 e5                                      ldr r3, [r5]
0084046c  01 00 13 e3                                      tst r3, #1
00840470  2e 00 00 0a                                      beq #0x840530
00840474  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
00840478  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0084047c  00 00 a0 e3                                      mov r0, #0
00840480  03 30 8f e0                                      add r3, pc, r3
00840484  b0 10 d3 e1                                      ldrh r1, [r3]
00840488  02 20 8f e0                                      add r2, pc, r2
0084048c  ba 00 c2 e1                                      strh r0, [r2, #0xa]
00840490  01 c0 81 e2                                      add ip, r1, #1
00840494  b0 c0 c3 e1                                      strh ip, [r3]
00840498  08 30 a0 e3                                      mov r3, #8
0084049c  08 30 c2 e5                                      strb r3, [r2, #8]
008404a0  b4 30 d2 e1                                      ldrh r3, [r2, #4]
008404a4  09 00 c2 e5                                      strb r0, [r2, #9]
008404a8  be 10 c2 e1                                      strh r1, [r2, #0xe]
008404ac  bc 30 c2 e1                                      strh r3, [r2, #0xc]
008404b0  08 20 82 e2                                      add r2, r2, #8
008404b4  20 30 a0 e3                                      mov r3, #0x20
008404b8  01 10 83 e2                                      add r1, r3, #1
008404bc  10 30 c2 e5                                      strb r3, [r2, #0x10]
008404c0  71 30 ef e6                                      uxtb r3, r1
008404c4  40 00 53 e3                                      cmp r3, #0x40
008404c8  01 20 82 e2                                      add r2, r2, #1
008404cc  f9 ff ff 1a                                      bne #0x8404b8
008404d0  18 ab ff eb                                      bl #0x82b138
008404d4  84 50 9f e5                                      ldr r5, [pc, #0x84]
008404d8  30 10 a0 e3                                      mov r1, #0x30
008404dc  05 50 8f e0                                      add r5, pc, r5
008404e0  08 60 85 e2                                      add r6, r5, #8
008404e4  14 00 85 e5                                      str r0, [r5, #0x14]
008404e8  06 00 a0 e1                                      mov r0, r6
008404ec  c3 fe ff eb                                      bl #0x840000
008404f0  ba 00 c5 e1                                      strh r0, [r5, #0xa]
008404f4  18 20 94 e5                                      ldr r2, [r4, #0x18]
008404f8  14 e0 94 e5                                      ldr lr, [r4, #0x14]
008404fc  10 30 94 e5                                      ldr r3, [r4, #0x10]
00840500  00 c0 92 e5                                      ldr ip, [r2]
00840504  02 00 a0 e1                                      mov r0, r2
00840508  06 10 a0 e1                                      mov r1, r6
0084050c  00 e0 8d e5                                      str lr, [sp]
00840510  30 20 a0 e3                                      mov r2, #0x30
00840514  0f e0 a0 e1                                      mov lr, pc
00840518  58 f0 9c e5                                      ldr pc, [ip, #0x58]
0084051c  00 00 50 e3                                      cmp r0, #0
00840520  00 30 e0 b3                                      mvnlt r3, #0
00840524  1c 30 84 b5                                      strlt r3, [r4, #0x1c]
00840528  08 d0 8d e2                                      add sp, sp, #8
0084052c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00840530  05 00 a0 e1                                      mov r0, r5
00840534  8c 38 eb eb                                      bl #0x30e76c
00840538  00 00 50 e3                                      cmp r0, #0
0084053c  cc ff ff 0a                                      beq #0x840474
00840540  b0 33 d4 e1                                      ldrh r3, [r4, #0x30]
00840544  05 00 a0 e1                                      mov r0, r5
00840548  b4 30 c5 e1                                      strh r3, [r5, #4]
0084054c  3a 39 eb eb                                      bl #0x30ea3c
00840550  c7 ff ff ea                                      b #0x840474
; mapping-symbol data/literal pool
00840554  4c 35 1f 00 bc dd 15 00 28 35 1f 00 d4 34 1f 00  .byte 0x4c, 0x35, 0x1f, 0x00, 0xbc, 0xdd, 0x15, 0x00, 0x28, 0x35, 0x1f, 0x00, 0xd4, 0x34, 0x1f, 0x00

; FUNCTION 0x00840564, declared_size=156, range_size=156, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPingC1EPKci
; demangled: GLXPlayerPing::GLXPlayerPing(char const*, int)
; decoder-mode: arm
00840564  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00840568  8c c0 9f e5                                      ldr ip, [pc, #0x8c]
0084056c  70 40 2d e9                                      push {r4, r5, r6, lr}
00840570  03 30 8f e0                                      add r3, pc, r3
00840574  0c c0 93 e7                                      ldr ip, [r3, ip]
00840578  00 40 a0 e1                                      mov r4, r0
0084057c  02 60 a0 e1                                      mov r6, r2
00840580  08 c0 8c e2                                      add ip, ip, #8
00840584  00 c0 80 e5                                      str ip, [r0]
00840588  01 20 a0 e3                                      mov r2, #1
0084058c  00 00 e0 e3                                      mvn r0, #0
00840590  1c 00 84 e5                                      str r0, [r4, #0x1c]
00840594  24 20 84 e5                                      str r2, [r4, #0x24]
00840598  08 20 c4 e5                                      strb r2, [r4, #8]
0084059c  14 60 84 e5                                      str r6, [r4, #0x14]
008405a0  01 00 a0 e1                                      mov r0, r1
008405a4  fd ac ff eb                                      bl #0x82b9a0
008405a8  00 50 a0 e3                                      mov r5, #0
008405ac  06 10 a0 e1                                      mov r1, r6
008405b0  05 20 a0 e1                                      mov r2, r5
008405b4  0c 00 84 e5                                      str r0, [r4, #0xc]
008405b8  10 50 84 e5                                      str r5, [r4, #0x10]
008405bc  d9 c3 ff eb                                      bl #0x831528
008405c0  18 00 84 e5                                      str r0, [r4, #0x18]
008405c4  08 00 a0 e3                                      mov r0, #8
008405c8  af 38 eb eb                                      bl #0x30e88c
008405cc  88 63 01 e3                                      movw r6, #0x1388
008405d0  60 00 80 e8                                      stm r0, {r5, r6}
008405d4  2c 00 84 e5                                      str r0, [r4, #0x2c]
008405d8  08 00 a0 e3                                      mov r0, #8
008405dc  aa 38 eb eb                                      bl #0x30e88c
008405e0  7b 30 a0 e3                                      mov r3, #0x7b
008405e4  60 00 80 e8                                      stm r0, {r5, r6}
008405e8  28 00 84 e5                                      str r0, [r4, #0x28]
008405ec  30 30 84 e5                                      str r3, [r4, #0x30]
008405f0  04 00 a0 e1                                      mov r0, r4
008405f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008405f8  20 45 15 00 5c 47 00 00                          .byte 0x20, 0x45, 0x15, 0x00, 0x5c, 0x47, 0x00, 0x00

; FUNCTION 0x00840600, declared_size=156, range_size=156, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPingC2EPKci
; demangled: GLXPlayerPing::GLXPlayerPing(char const*, int)
; decoder-mode: arm
00840600  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00840604  8c c0 9f e5                                      ldr ip, [pc, #0x8c]
00840608  70 40 2d e9                                      push {r4, r5, r6, lr}
0084060c  03 30 8f e0                                      add r3, pc, r3
00840610  0c c0 93 e7                                      ldr ip, [r3, ip]
00840614  00 40 a0 e1                                      mov r4, r0
00840618  02 60 a0 e1                                      mov r6, r2
0084061c  08 c0 8c e2                                      add ip, ip, #8
00840620  00 c0 80 e5                                      str ip, [r0]
00840624  01 20 a0 e3                                      mov r2, #1
00840628  00 00 e0 e3                                      mvn r0, #0
0084062c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00840630  24 20 84 e5                                      str r2, [r4, #0x24]
00840634  08 20 c4 e5                                      strb r2, [r4, #8]
00840638  14 60 84 e5                                      str r6, [r4, #0x14]
0084063c  01 00 a0 e1                                      mov r0, r1
00840640  d6 ac ff eb                                      bl #0x82b9a0
00840644  00 50 a0 e3                                      mov r5, #0
00840648  06 10 a0 e1                                      mov r1, r6
0084064c  05 20 a0 e1                                      mov r2, r5
00840650  0c 00 84 e5                                      str r0, [r4, #0xc]
00840654  10 50 84 e5                                      str r5, [r4, #0x10]
00840658  b2 c3 ff eb                                      bl #0x831528
0084065c  18 00 84 e5                                      str r0, [r4, #0x18]
00840660  08 00 a0 e3                                      mov r0, #8
00840664  88 38 eb eb                                      bl #0x30e88c
00840668  88 63 01 e3                                      movw r6, #0x1388
0084066c  60 00 80 e8                                      stm r0, {r5, r6}
00840670  2c 00 84 e5                                      str r0, [r4, #0x2c]
00840674  08 00 a0 e3                                      mov r0, #8
00840678  83 38 eb eb                                      bl #0x30e88c
0084067c  7b 30 a0 e3                                      mov r3, #0x7b
00840680  60 00 80 e8                                      stm r0, {r5, r6}
00840684  28 00 84 e5                                      str r0, [r4, #0x28]
00840688  30 30 84 e5                                      str r3, [r4, #0x30]
0084068c  04 00 a0 e1                                      mov r0, r4
00840690  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00840694  84 44 15 00 5c 47 00 00                          .byte 0x84, 0x44, 0x15, 0x00, 0x5c, 0x47, 0x00, 0x00

; FUNCTION 0x0084069c, declared_size=484, range_size=484, mode=arm
; class-group: GLXPlayerPing
; alias: _ZN13GLXPlayerPing6KernelEv
; demangled: GLXPlayerPing::Kernel()
; decoder-mode: arm
0084069c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008406a0  cc 51 9f e5                                      ldr r5, [pc, #0x1cc]
008406a4  cc 61 9f e5                                      ldr r6, [pc, #0x1cc]
008406a8  24 30 90 e5                                      ldr r3, [r0, #0x24]
008406ac  05 50 8f e0                                      add r5, pc, r5
008406b0  06 20 95 e7                                      ldr r2, [r5, r6]
008406b4  1c d0 4d e2                                      sub sp, sp, #0x1c
008406b8  02 30 43 e2                                      sub r3, r3, #2
008406bc  00 20 92 e5                                      ldr r2, [r2]
008406c0  00 40 a0 e1                                      mov r4, r0
008406c4  14 20 8d e5                                      str r2, [sp, #0x14]
008406c8  03 00 53 e3                                      cmp r3, #3
008406cc  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
008406d0  0a 00 00 ea                                      b #0x840700
008406d4  13 00 00 ea                                      b #0x840728
008406d8  31 00 00 ea                                      b #0x8407a4
008406dc  39 00 00 ea                                      b #0x8407c8
008406e0  50 00 00 ea                                      b #0x840828
008406e4  00 30 e0 e3                                      mvn r3, #0
008406e8  1c 30 84 e5                                      str r3, [r4, #0x1c]
008406ec  2c 70 94 e5                                      ldr r7, [r4, #0x2c]
008406f0  90 aa ff eb                                      bl #0x82b138
008406f4  05 30 a0 e3                                      mov r3, #5
008406f8  00 00 87 e5                                      str r0, [r7]
008406fc  24 30 84 e5                                      str r3, [r4, #0x24]
00840700  fa 0f a0 e3                                      mov r0, #0x3e8
00840704  5d 38 eb eb                                      bl #0x30e880
00840708  06 30 95 e7                                      ldr r3, [r5, r6]
0084070c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00840710  00 00 a0 e3                                      mov r0, #0
00840714  00 30 93 e5                                      ldr r3, [r3]
00840718  03 00 52 e1                                      cmp r2, r3
0084071c  53 00 00 1a                                      bne #0x840870
00840720  1c d0 8d e2                                      add sp, sp, #0x1c
00840724  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00840728  18 30 90 e5                                      ldr r3, [r0, #0x18]
0084072c  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00840730  03 00 a0 e1                                      mov r0, r3
00840734  00 30 93 e5                                      ldr r3, [r3]
00840738  0f e0 a0 e1                                      mov lr, pc
0084073c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00840740  00 20 50 e2                                      subs r2, r0, #0
00840744  ed ff ff 0a                                      beq #0x840700
00840748  04 00 8d e2                                      add r0, sp, #4
0084074c  00 70 a0 e3                                      mov r7, #0
00840750  08 30 80 e2                                      add r3, r0, #8
00840754  04 70 83 e4                                      str r7, [r3], #4
00840758  00 70 83 e5                                      str r7, [r3]
0084075c  02 30 a0 e3                                      mov r3, #2
00840760  04 70 8d e5                                      str r7, [sp, #4]
00840764  08 70 8d e5                                      str r7, [sp, #8]
00840768  b4 30 cd e1                                      strh r3, [sp, #4]
0084076c  10 30 92 e5                                      ldr r3, [r2, #0x10]
00840770  04 00 80 e2                                      add r0, r0, #4
00840774  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00840778  00 10 93 e5                                      ldr r1, [r3]
0084077c  39 38 eb eb                                      bl #0x30e868
00840780  10 00 94 e5                                      ldr r0, [r4, #0x10]
00840784  07 00 50 e1                                      cmp r0, r7
00840788  01 00 00 0a                                      beq #0x840794
0084078c  c7 36 eb eb                                      bl #0x30e2b0
00840790  10 70 84 e5                                      str r7, [r4, #0x10]
00840794  08 00 9d e5                                      ldr r0, [sp, #8]
00840798  1b 37 eb eb                                      bl #0x30e40c
0084079c  7f ac ff eb                                      bl #0x82b9a0
008407a0  10 00 84 e5                                      str r0, [r4, #0x10]
008407a4  04 00 a0 e1                                      mov r0, r4
008407a8  29 ff ff eb                                      bl #0x840454
008407ac  00 00 50 e3                                      cmp r0, #0
008407b0  cb ff ff ba                                      blt #0x8406e4
008407b4  04 30 a0 e3                                      mov r3, #4
008407b8  24 30 84 e5                                      str r3, [r4, #0x24]
008407bc  28 70 94 e5                                      ldr r7, [r4, #0x28]
008407c0  5c aa ff eb                                      bl #0x82b138
008407c4  00 00 87 e5                                      str r0, [r7]
008407c8  18 30 94 e5                                      ldr r3, [r4, #0x18]
008407cc  04 00 a0 e1                                      mov r0, r4
008407d0  08 10 93 e5                                      ldr r1, [r3, #8]
008407d4  a9 fe ff eb                                      bl #0x840280
008407d8  00 00 50 e3                                      cmp r0, #0
008407dc  c0 ff ff ba                                      blt #0x8406e4
008407e0  18 00 00 1a                                      bne #0x840848
008407e4  28 70 94 e5                                      ldr r7, [r4, #0x28]
008407e8  52 aa ff eb                                      bl #0x82b138
008407ec  0c 00 97 e8                                      ldm r7, {r2, r3}
008407f0  00 20 62 e0                                      rsb r2, r2, r0
008407f4  03 00 52 e1                                      cmp r2, r3
008407f8  c0 ff ff ba                                      blt #0x840700
008407fc  78 00 9f e5                                      ldr r0, [pc, #0x78]
00840800  00 00 8f e0                                      add r0, pc, r0
00840804  de ab ff eb                                      bl #0x82b784
00840808  2c 70 94 e5                                      ldr r7, [r4, #0x2c]
0084080c  49 aa ff eb                                      bl #0x82b138
00840810  01 30 e0 e3                                      mvn r3, #1
00840814  00 00 87 e5                                      str r0, [r7]
00840818  1c 30 84 e5                                      str r3, [r4, #0x1c]
0084081c  03 30 a0 e3                                      mov r3, #3
00840820  24 30 84 e5                                      str r3, [r4, #0x24]
00840824  b5 ff ff ea                                      b #0x840700
00840828  2c 70 90 e5                                      ldr r7, [r0, #0x2c]
0084082c  41 aa ff eb                                      bl #0x82b138
00840830  0c 00 97 e8                                      ldm r7, {r2, r3}
00840834  00 20 62 e0                                      rsb r2, r2, r0
00840838  03 00 52 e1                                      cmp r2, r3
0084083c  03 30 a0 a3                                      movge r3, #3
00840840  24 30 84 a5                                      strge r3, [r4, #0x24]
00840844  ad ff ff ea                                      b #0x840700
00840848  04 00 a0 e1                                      mov r0, r4
0084084c  a9 fe ff eb                                      bl #0x8402f8
00840850  00 00 50 e3                                      cmp r0, #0
00840854  a9 ff ff ba                                      blt #0x840700
00840858  2c 70 94 e5                                      ldr r7, [r4, #0x2c]
0084085c  35 aa ff eb                                      bl #0x82b138
00840860  05 30 a0 e3                                      mov r3, #5
00840864  00 00 87 e5                                      str r0, [r7]
00840868  24 30 84 e5                                      str r3, [r4, #0x24]
0084086c  a3 ff ff ea                                      b #0x840700
00840870  a6 36 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00840874  e4 43 15 00 ac 40 00 00 e0 e0 0c 00              .byte 0xe4, 0x43, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0xe0, 0x0c, 0x00
