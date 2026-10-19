; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004091d0, declared_size=4, range_size=4, mode=arm
; class-group: v2NetController
; alias: _ZN15v2NetControllerD2Ev
; demangled: v2NetController::~v2NetController()
; decoder-mode: arm
004091d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004091d4, declared_size=4, range_size=4, mode=arm
; class-group: v2NetController
; alias: _ZN15v2NetControllerD1Ev
; demangled: v2NetController::~v2NetController()
; decoder-mode: arm
004091d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004091d8, declared_size=28, range_size=28, mode=arm
; class-group: v2NetController
; alias: _ZN15v2NetControllerD0Ev
; demangled: v2NetController::~v2NetController()
; decoder-mode: arm
004091d8  10 40 2d e9                                      push {r4, lr}
004091dc  00 40 a0 e1                                      mov r4, r0
004091e0  fb ff ff eb                                      bl #0x4091d4
004091e4  04 00 a0 e1                                      mov r0, r4
004091e8  94 1c fc eb                                      bl #0x310440
004091ec  04 00 a0 e1                                      mov r0, r4
004091f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004091f4, declared_size=212, range_size=212, mode=arm
; class-group: v2NetController
; alias: _ZN15v2NetControllerC1EP14v2Controllable
; demangled: v2NetController::v2NetController(v2Controllable*)
; decoder-mode: arm
004091f4  30 40 2d e9                                      push {r4, r5, lr}
004091f8  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
004091fc  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00409200  00 20 a0 e3                                      mov r2, #0
00409204  05 50 8f e0                                      add r5, pc, r5
00409208  03 30 95 e7                                      ldr r3, [r5, r3]
0040920c  00 00 51 e3                                      cmp r1, #0
00409210  0c d0 4d e2                                      sub sp, sp, #0xc
00409214  08 30 83 e2                                      add r3, r3, #8
00409218  00 40 a0 e1                                      mov r4, r0
0040921c  00 30 80 e5                                      str r3, [r0]
00409220  0c 20 80 e5                                      str r2, [r0, #0xc]
00409224  04 10 80 e5                                      str r1, [r0, #4]
00409228  08 20 c0 e5                                      strb r2, [r0, #8]
0040922c  09 20 c0 e5                                      strb r2, [r0, #9]
00409230  0a 20 c0 e5                                      strb r2, [r0, #0xa]
00409234  06 00 00 0a                                      beq #0x409254
00409238  70 30 9f e5                                      ldr r3, [pc, #0x70]
0040923c  04 00 a0 e1                                      mov r0, r4
00409240  03 30 95 e7                                      ldr r3, [r5, r3]
00409244  08 30 83 e2                                      add r3, r3, #8
00409248  00 30 84 e5                                      str r3, [r4]
0040924c  0c d0 8d e2                                      add sp, sp, #0xc
00409250  30 80 bd e8                                      pop {r4, r5, pc}
00409254  58 30 9f e5                                      ldr r3, [pc, #0x58]
00409258  03 30 95 e7                                      ldr r3, [r5, r3]
0040925c  00 30 93 e5                                      ldr r3, [r3]
00409260  02 00 53 e3                                      cmp r3, #2
00409264  00 10 81 05                                      streq r1, [r1]
00409268  f2 ff ff 0a                                      beq #0x409238
0040926c  01 00 53 e3                                      cmp r3, #1
00409270  f0 ff ff 1a                                      bne #0x409238
00409274  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00409278  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0040927c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00409280  00 00 95 e7                                      ldr r0, [r5, r0]
00409284  38 30 9f e5                                      ldr r3, [pc, #0x38]
00409288  44 c0 a0 e3                                      mov ip, #0x44
0040928c  01 10 8f e0                                      add r1, pc, r1
00409290  02 20 8f e0                                      add r2, pc, r2
00409294  03 30 8f e0                                      add r3, pc, r3
00409298  a8 00 80 e2                                      add r0, r0, #0xa8
0040929c  00 c0 8d e5                                      str ip, [sp]
004092a0  57 13 fc eb                                      bl #0x30e004
004092a4  e3 ff ff ea                                      b #0x409238
; mapping-symbol data/literal pool
004092a8  8c b8 58 00 a4 2a 00 00 a4 48 00 00 c0 39 00 00  .byte 0x8c, 0xb8, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0xa4, 0x48, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
004092b8  c0 19 00 00 4c 51 4b 00 30 a2 4b 00 44 e7 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x4c, 0x51, 0x4b, 0x00, 0x30, 0xa2, 0x4b, 0x00, 0x44, 0xe7, 0x4b, 0x00

; FUNCTION 0x004092c8, declared_size=212, range_size=212, mode=arm
; class-group: v2NetController
; alias: _ZN15v2NetControllerC2EP14v2Controllable
; demangled: v2NetController::v2NetController(v2Controllable*)
; decoder-mode: arm
004092c8  30 40 2d e9                                      push {r4, r5, lr}
004092cc  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
004092d0  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
004092d4  00 20 a0 e3                                      mov r2, #0
004092d8  05 50 8f e0                                      add r5, pc, r5
004092dc  03 30 95 e7                                      ldr r3, [r5, r3]
004092e0  00 00 51 e3                                      cmp r1, #0
004092e4  0c d0 4d e2                                      sub sp, sp, #0xc
004092e8  08 30 83 e2                                      add r3, r3, #8
004092ec  00 40 a0 e1                                      mov r4, r0
004092f0  00 30 80 e5                                      str r3, [r0]
004092f4  0c 20 80 e5                                      str r2, [r0, #0xc]
004092f8  04 10 80 e5                                      str r1, [r0, #4]
004092fc  08 20 c0 e5                                      strb r2, [r0, #8]
00409300  09 20 c0 e5                                      strb r2, [r0, #9]
00409304  0a 20 c0 e5                                      strb r2, [r0, #0xa]
00409308  06 00 00 0a                                      beq #0x409328
0040930c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00409310  04 00 a0 e1                                      mov r0, r4
00409314  03 30 95 e7                                      ldr r3, [r5, r3]
00409318  08 30 83 e2                                      add r3, r3, #8
0040931c  00 30 84 e5                                      str r3, [r4]
00409320  0c d0 8d e2                                      add sp, sp, #0xc
00409324  30 80 bd e8                                      pop {r4, r5, pc}
00409328  58 30 9f e5                                      ldr r3, [pc, #0x58]
0040932c  03 30 95 e7                                      ldr r3, [r5, r3]
00409330  00 30 93 e5                                      ldr r3, [r3]
00409334  02 00 53 e3                                      cmp r3, #2
00409338  00 10 81 05                                      streq r1, [r1]
0040933c  f2 ff ff 0a                                      beq #0x40930c
00409340  01 00 53 e3                                      cmp r3, #1
00409344  f0 ff ff 1a                                      bne #0x40930c
00409348  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0040934c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00409350  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00409354  00 00 95 e7                                      ldr r0, [r5, r0]
00409358  38 30 9f e5                                      ldr r3, [pc, #0x38]
0040935c  44 c0 a0 e3                                      mov ip, #0x44
00409360  01 10 8f e0                                      add r1, pc, r1
00409364  02 20 8f e0                                      add r2, pc, r2
00409368  03 30 8f e0                                      add r3, pc, r3
0040936c  a8 00 80 e2                                      add r0, r0, #0xa8
00409370  00 c0 8d e5                                      str ip, [sp]
00409374  22 13 fc eb                                      bl #0x30e004
00409378  e3 ff ff ea                                      b #0x40930c
; mapping-symbol data/literal pool
0040937c  b8 b7 58 00 a4 2a 00 00 a4 48 00 00 c0 39 00 00  .byte 0xb8, 0xb7, 0x58, 0x00, 0xa4, 0x2a, 0x00, 0x00, 0xa4, 0x48, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0040938c  c0 19 00 00 78 50 4b 00 5c a1 4b 00 70 e6 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x78, 0x50, 0x4b, 0x00, 0x5c, 0xa1, 0x4b, 0x00, 0x70, 0xe6, 0x4b, 0x00

; FUNCTION 0x0040939c, declared_size=644, range_size=644, mode=arm
; class-group: v2NetController
; alias: _ZN15v2NetController6UpdateEv
; demangled: v2NetController::Update()
; decoder-mode: arm
0040939c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004093a0  34 d0 4d e2                                      sub sp, sp, #0x34
004093a4  00 60 a0 e1                                      mov r6, r0
004093a8  f9 d0 0f eb                                      bl #0x7fd794
004093ac  05 30 d0 e5                                      ldrb r3, [r0, #5]
004093b0  48 52 9f e5                                      ldr r5, [pc, #0x248]
004093b4  00 00 53 e3                                      cmp r3, #0
004093b8  05 50 8f e0                                      add r5, pc, r5
004093bc  09 00 00 0a                                      beq #0x4093e8
004093c0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
004093c4  00 00 53 e3                                      cmp r3, #0
004093c8  06 00 00 0a                                      beq #0x4093e8
004093cc  30 42 9f e5                                      ldr r4, [pc, #0x230]
004093d0  79 07 10 eb                                      bl #0x80b1bc
004093d4  04 40 8f e0                                      add r4, pc, r4
004093d8  04 10 a0 e1                                      mov r1, r4
004093dc  e7 05 10 eb                                      bl #0x80ab80
004093e0  00 00 50 e3                                      cmp r0, #0
004093e4  01 00 00 1a                                      bne #0x4093f0
004093e8  34 d0 8d e2                                      add sp, sp, #0x34
004093ec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
004093f0  71 07 10 eb                                      bl #0x80b1bc
004093f4  70 07 10 eb                                      bl #0x80b1bc
004093f8  04 10 a0 e1                                      mov r1, r4
004093fc  bf 05 10 eb                                      bl #0x80ab00
00409400  00 40 a0 e1                                      mov r4, r0
00409404  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00409408  54 20 d4 e5                                      ldrb r2, [r4, #0x54]
0040940c  08 31 90 e5                                      ldr r3, [r0, #0x108]
00409410  03 00 52 e1                                      cmp r2, r3
00409414  09 00 00 1a                                      bne #0x409440
00409418  50 30 d4 e5                                      ldrb r3, [r4, #0x50]
0040941c  05 00 53 e3                                      cmp r3, #5
00409420  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00409424  1f 00 00 ea                                      b #0x4094a8
00409428  3b 00 00 ea                                      b #0x40951c
0040942c  33 00 00 ea                                      b #0x409500
00409430  6b 00 00 ea                                      b #0x4095e4
00409434  60 00 00 ea                                      b #0x4095bc
00409438  58 00 00 ea                                      b #0x4095a0
0040943c  46 00 00 ea                                      b #0x40955c
00409440  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
00409444  0c 60 8d e2                                      add r6, sp, #0xc
00409448  06 00 a0 e1                                      mov r0, r6
0040944c  03 50 95 e7                                      ldr r5, [r5, r3]
00409450  38 10 95 e5                                      ldr r1, [r5, #0x38]
00409454  d1 dc fc eb                                      bl #0x3407a0
00409458  06 00 a0 e1                                      mov r0, r6
0040945c  bc da fc eb                                      bl #0x33ff54
00409460  00 60 50 e2                                      subs r6, r0, #0
00409464  04 00 00 0a                                      beq #0x40947c
00409468  00 30 96 e5                                      ldr r3, [r6]
0040946c  0f e0 a0 e1                                      mov lr, pc
00409470  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00409474  00 00 50 e3                                      cmp r0, #0
00409478  02 00 00 1a                                      bne #0x409488
0040947c  01 30 a0 e3                                      mov r3, #1
00409480  3c 30 c4 e5                                      strb r3, [r4, #0x3c]
00409484  d7 ff ff ea                                      b #0x4093e8
00409488  40 00 95 e5                                      ldr r0, [r5, #0x40]
0040948c  06 10 a0 e1                                      mov r1, r6
00409490  00 20 a0 e3                                      mov r2, #0
00409494  83 96 fd eb                                      bl #0x36eea8
00409498  6c 36 d0 e5                                      ldrb r3, [r0, #0x66c]
0040949c  01 00 53 e3                                      cmp r3, #1
004094a0  d0 ff ff 1a                                      bne #0x4093e8
004094a4  f4 ff ff ea                                      b #0x40947c
004094a8  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
004094ac  03 30 95 e7                                      ldr r3, [r5, r3]
004094b0  00 30 93 e5                                      ldr r3, [r3]
004094b4  02 00 53 e3                                      cmp r3, #2
004094b8  00 30 a0 03                                      moveq r3, #0
004094bc  00 30 83 05                                      streq r3, [r3]
004094c0  ed ff ff 0a                                      beq #0x40947c
004094c4  01 00 53 e3                                      cmp r3, #1
004094c8  eb ff ff 1a                                      bne #0x40947c
004094cc  3c 01 9f e5                                      ldr r0, [pc, #0x13c]
004094d0  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
004094d4  3c 21 9f e5                                      ldr r2, [pc, #0x13c]
004094d8  00 00 95 e7                                      ldr r0, [r5, r0]
004094dc  38 31 9f e5                                      ldr r3, [pc, #0x138]
004094e0  67 c0 a0 e3                                      mov ip, #0x67
004094e4  01 10 8f e0                                      add r1, pc, r1
004094e8  02 20 8f e0                                      add r2, pc, r2
004094ec  03 30 8f e0                                      add r3, pc, r3
004094f0  a8 00 80 e2                                      add r0, r0, #0xa8
004094f4  00 c0 8d e5                                      str ip, [sp]
004094f8  c1 12 fc eb                                      bl #0x30e004
004094fc  de ff ff ea                                      b #0x40947c
00409500  04 30 96 e5                                      ldr r3, [r6, #4]
00409504  b2 15 d4 e1                                      ldrh r1, [r4, #0x52]
00409508  03 00 a0 e1                                      mov r0, r3
0040950c  00 30 93 e5                                      ldr r3, [r3]
00409510  0f e0 a0 e1                                      mov lr, pc
00409514  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00409518  d7 ff ff ea                                      b #0x40947c
0040951c  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
00409520  24 70 8d e2                                      add r7, sp, #0x24
00409524  b2 25 d4 e1                                      ldrh r2, [r4, #0x52]
00409528  03 30 95 e7                                      ldr r3, [r5, r3]
0040952c  07 00 a0 e1                                      mov r0, r7
00409530  38 10 93 e5                                      ldr r1, [r3, #0x38]
00409534  99 dc fc eb                                      bl #0x3407a0
00409538  07 00 a0 e1                                      mov r0, r7
0040953c  68 da fc eb                                      bl #0x33fee4
00409540  04 30 96 e5                                      ldr r3, [r6, #4]
00409544  00 10 a0 e1                                      mov r1, r0
00409548  03 00 a0 e1                                      mov r0, r3
0040954c  00 30 93 e5                                      ldr r3, [r3]
00409550  0f e0 a0 e1                                      mov lr, pc
00409554  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00409558  c7 ff ff ea                                      b #0x40947c
0040955c  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00409560  18 70 8d e2                                      add r7, sp, #0x18
00409564  b2 25 d4 e1                                      ldrh r2, [r4, #0x52]
00409568  03 30 95 e7                                      ldr r3, [r5, r3]
0040956c  07 00 a0 e1                                      mov r0, r7
00409570  38 10 93 e5                                      ldr r1, [r3, #0x38]
00409574  89 dc fc eb                                      bl #0x3407a0
00409578  07 00 a0 e1                                      mov r0, r7
0040957c  58 da fc eb                                      bl #0x33fee4
00409580  00 10 50 e2                                      subs r1, r0, #0
00409584  bc ff ff 0a                                      beq #0x40947c
00409588  04 30 96 e5                                      ldr r3, [r6, #4]
0040958c  03 00 a0 e1                                      mov r0, r3
00409590  00 30 93 e5                                      ldr r3, [r3]
00409594  0f e0 a0 e1                                      mov lr, pc
00409598  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0040959c  b6 ff ff ea                                      b #0x40947c
004095a0  04 30 96 e5                                      ldr r3, [r6, #4]
004095a4  01 10 a0 e3                                      mov r1, #1
004095a8  03 00 a0 e1                                      mov r0, r3
004095ac  00 30 93 e5                                      ldr r3, [r3]
004095b0  0f e0 a0 e1                                      mov lr, pc
004095b4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
004095b8  af ff ff ea                                      b #0x40947c
004095bc  b2 15 d4 e1                                      ldrh r1, [r4, #0x52]
004095c0  00 20 e0 e3                                      mvn r2, #0
004095c4  03 c9 fe eb                                      bl #0x3bb9d8
004095c8  04 30 96 e5                                      ldr r3, [r6, #4]
004095cc  01 10 a0 e3                                      mov r1, #1
004095d0  03 00 a0 e1                                      mov r0, r3
004095d4  00 30 93 e5                                      ldr r3, [r3]
004095d8  0f e0 a0 e1                                      mov lr, pc
004095dc  44 f0 93 e5                                      ldr pc, [r3, #0x44]
004095e0  a5 ff ff ea                                      b #0x40947c
004095e4  04 30 96 e5                                      ldr r3, [r6, #4]
004095e8  b2 15 d4 e1                                      ldrh r1, [r4, #0x52]
004095ec  03 00 a0 e1                                      mov r0, r3
004095f0  00 30 93 e5                                      ldr r3, [r3]
004095f4  0f e0 a0 e1                                      mov lr, pc
004095f8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
004095fc  9e ff ff ea                                      b #0x40947c
; mapping-symbol data/literal pool
00409600  d8 b6 58 00 34 5b 4b 00 f4 37 00 00 c0 39 00 00  .byte 0xd8, 0xb6, 0x58, 0x00, 0x34, 0x5b, 0x4b, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00409610  c0 19 00 00 f4 4e 4b 00 a8 3f 4c 00 b4 e5 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xf4, 0x4e, 0x4b, 0x00, 0xa8, 0x3f, 0x4c, 0x00, 0xb4, 0xe5, 0x4b, 0x00
