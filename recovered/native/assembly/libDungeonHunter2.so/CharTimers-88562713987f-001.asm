; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003db298, declared_size=32, range_size=32, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimers9TMR_PauseEj
; demangled: CharTimers::TMR_Pause(unsigned int)
; decoder-mode: arm
003db298  08 30 90 e5                                      ldr r3, [r0, #8]
003db29c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003db2a0  02 20 63 e0                                      rsb r2, r3, r2
003db2a4  c2 02 51 e1                                      cmp r1, r2, asr #5
003db2a8  81 32 83 30                                      addlo r3, r3, r1, lsl #5
003db2ac  01 20 a0 33                                      movlo r2, #1
003db2b0  15 20 c3 35                                      strblo r2, [r3, #0x15]
003db2b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003db2b8, declared_size=32, range_size=32, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimers10TMR_ResumeEj
; demangled: CharTimers::TMR_Resume(unsigned int)
; decoder-mode: arm
003db2b8  08 30 90 e5                                      ldr r3, [r0, #8]
003db2bc  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003db2c0  02 20 63 e0                                      rsb r2, r3, r2
003db2c4  c2 02 51 e1                                      cmp r1, r2, asr #5
003db2c8  81 32 83 30                                      addlo r3, r3, r1, lsl #5
003db2cc  00 20 a0 33                                      movlo r2, #0
003db2d0  15 20 c3 35                                      strblo r2, [r3, #0x15]
003db2d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003db2d8, declared_size=32, range_size=32, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimers8TMR_StopEj
; demangled: CharTimers::TMR_Stop(unsigned int)
; decoder-mode: arm
003db2d8  08 30 90 e5                                      ldr r3, [r0, #8]
003db2dc  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003db2e0  02 20 63 e0                                      rsb r2, r3, r2
003db2e4  c2 02 51 e1                                      cmp r1, r2, asr #5
003db2e8  81 32 83 30                                      addlo r3, r3, r1, lsl #5
003db2ec  00 20 a0 33                                      movlo r2, #0
003db2f0  14 20 c3 35                                      strblo r2, [r3, #0x14]
003db2f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003db2f8, declared_size=76, range_size=76, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimers11TMR_StopAllEv
; demangled: CharTimers::TMR_StopAll()
; decoder-mode: arm
003db2f8  08 20 90 e5                                      ldr r2, [r0, #8]
003db2fc  0c 10 90 e5                                      ldr r1, [r0, #0xc]
003db300  01 10 62 e0                                      rsb r1, r2, r1
003db304  c1 12 b0 e1                                      asrs r1, r1, #5
003db308  1e ff 2f 01                                      bxeq lr
003db30c  00 30 a0 e3                                      mov r3, #0
003db310  03 c0 a0 e1                                      mov ip, r3
003db314  83 22 82 e0                                      add r2, r2, r3, lsl #5
003db318  01 30 83 e2                                      add r3, r3, #1
003db31c  01 00 53 e1                                      cmp r3, r1
003db320  14 c0 c2 e5                                      strb ip, [r2, #0x14]
003db324  1e ff 2f 01                                      bxeq lr
003db328  08 20 90 e5                                      ldr r2, [r0, #8]
003db32c  83 22 82 e0                                      add r2, r2, r3, lsl #5
003db330  01 30 83 e2                                      add r3, r3, #1
003db334  01 00 53 e1                                      cmp r3, r1
003db338  14 c0 c2 e5                                      strb ip, [r2, #0x14]
003db33c  f9 ff ff 1a                                      bne #0x3db328
003db340  1e ff 2f e1                                      bx lr

; FUNCTION 0x003db344, declared_size=68, range_size=68, mode=arm
; class-group: CharTimers
; alias: _ZNK10CharTimers12TMR_TimeLeftEjRjS0_
; demangled: CharTimers::TMR_TimeLeft(unsigned int, unsigned int&, unsigned int&) const
; decoder-mode: arm
003db344  0c c0 90 e5                                      ldr ip, [r0, #0xc]
003db348  08 00 90 e5                                      ldr r0, [r0, #8]
003db34c  0c c0 60 e0                                      rsb ip, r0, ip
003db350  cc 02 51 e1                                      cmp r1, ip, asr #5
003db354  09 00 00 2a                                      bhs #0x3db380
003db358  81 12 80 e0                                      add r1, r0, r1, lsl #5
003db35c  14 00 d1 e5                                      ldrb r0, [r1, #0x14]
003db360  00 00 50 e3                                      cmp r0, #0
003db364  05 00 00 0a                                      beq #0x3db380
003db368  10 c0 91 e5                                      ldr ip, [r1, #0x10]
003db36c  01 00 a0 e3                                      mov r0, #1
003db370  00 c0 82 e5                                      str ip, [r2]
003db374  0c 20 91 e5                                      ldr r2, [r1, #0xc]
003db378  00 20 83 e5                                      str r2, [r3]
003db37c  1e ff 2f e1                                      bx lr
003db380  00 00 a0 e3                                      mov r0, #0
003db384  1e ff 2f e1                                      bx lr

; FUNCTION 0x003db3fc, declared_size=52, range_size=52, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimersD1Ev
; demangled: CharTimers::~CharTimers()
; decoder-mode: arm
003db3fc  24 30 9f e5                                      ldr r3, [pc, #0x24]
003db400  24 20 9f e5                                      ldr r2, [pc, #0x24]
003db404  10 40 2d e9                                      push {r4, lr}
003db408  03 30 8f e0                                      add r3, pc, r3
003db40c  02 20 93 e7                                      ldr r2, [r3, r2]
003db410  00 40 a0 e1                                      mov r4, r0
003db414  08 20 82 e2                                      add r2, r2, #8
003db418  08 20 80 e4                                      str r2, [r0], #8
003db41c  d9 ff ff eb                                      bl #0x3db388
003db420  04 00 a0 e1                                      mov r0, r4
003db424  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003db428  88 96 5b 00 44 1f 00 00                          .byte 0x88, 0x96, 0x5b, 0x00, 0x44, 0x1f, 0x00, 0x00

; FUNCTION 0x003db430, declared_size=52, range_size=52, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimersD2Ev
; demangled: CharTimers::~CharTimers()
; decoder-mode: arm
003db430  24 30 9f e5                                      ldr r3, [pc, #0x24]
003db434  24 20 9f e5                                      ldr r2, [pc, #0x24]
003db438  10 40 2d e9                                      push {r4, lr}
003db43c  03 30 8f e0                                      add r3, pc, r3
003db440  02 20 93 e7                                      ldr r2, [r3, r2]
003db444  00 40 a0 e1                                      mov r4, r0
003db448  08 20 82 e2                                      add r2, r2, #8
003db44c  08 20 80 e4                                      str r2, [r0], #8
003db450  cc ff ff eb                                      bl #0x3db388
003db454  04 00 a0 e1                                      mov r0, r4
003db458  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003db45c  54 96 5b 00 44 1f 00 00                          .byte 0x54, 0x96, 0x5b, 0x00, 0x44, 0x1f, 0x00, 0x00

; FUNCTION 0x003db464, declared_size=28, range_size=28, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimersD0Ev
; demangled: CharTimers::~CharTimers()
; decoder-mode: arm
003db464  10 40 2d e9                                      push {r4, lr}
003db468  00 40 a0 e1                                      mov r4, r0
003db46c  e2 ff ff eb                                      bl #0x3db3fc
003db470  04 00 a0 e1                                      mov r0, r4
003db474  f1 d3 fc eb                                      bl #0x310440
003db478  04 00 a0 e1                                      mov r0, r4
003db47c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003db480, declared_size=148, range_size=148, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimers12SetCharacterEP9Character
; demangled: CharTimers::SetCharacter(Character*)
; decoder-mode: arm
003db480  30 40 2d e9                                      push {r4, r5, lr}
003db484  70 30 9f e5                                      ldr r3, [pc, #0x70]
003db488  00 40 51 e2                                      subs r4, r1, #0
003db48c  0c d0 4d e2                                      sub sp, sp, #0xc
003db490  00 50 a0 e1                                      mov r5, r0
003db494  03 30 8f e0                                      add r3, pc, r3
003db498  02 00 00 0a                                      beq #0x3db4a8
003db49c  04 40 85 e5                                      str r4, [r5, #4]
003db4a0  0c d0 8d e2                                      add sp, sp, #0xc
003db4a4  30 80 bd e8                                      pop {r4, r5, pc}
003db4a8  50 20 9f e5                                      ldr r2, [pc, #0x50]
003db4ac  02 20 93 e7                                      ldr r2, [r3, r2]
003db4b0  00 20 92 e5                                      ldr r2, [r2]
003db4b4  02 00 52 e3                                      cmp r2, #2
003db4b8  00 40 84 05                                      streq r4, [r4]
003db4bc  f6 ff ff 0a                                      beq #0x3db49c
003db4c0  01 00 52 e3                                      cmp r2, #1
003db4c4  f4 ff ff 1a                                      bne #0x3db49c
003db4c8  34 00 9f e5                                      ldr r0, [pc, #0x34]
003db4cc  34 10 9f e5                                      ldr r1, [pc, #0x34]
003db4d0  34 20 9f e5                                      ldr r2, [pc, #0x34]
003db4d4  00 00 93 e7                                      ldr r0, [r3, r0]
003db4d8  30 30 9f e5                                      ldr r3, [pc, #0x30]
003db4dc  3d c0 a0 e3                                      mov ip, #0x3d
003db4e0  01 10 8f e0                                      add r1, pc, r1
003db4e4  02 20 8f e0                                      add r2, pc, r2
003db4e8  03 30 8f e0                                      add r3, pc, r3
003db4ec  a8 00 80 e2                                      add r0, r0, #0xa8
003db4f0  00 c0 8d e5                                      str ip, [sp]
003db4f4  c2 ca fc eb                                      bl #0x30e004
003db4f8  e7 ff ff ea                                      b #0x3db49c
; mapping-symbol data/literal pool
003db4fc  fc 95 5b 00 c0 39 00 00 c0 19 00 00 f8 2e 4e 00  .byte 0xfc, 0x95, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xf8, 0x2e, 0x4e, 0x00
003db50c  a4 6b 51 00 08 a4 4e 00                          .byte 0xa4, 0x6b, 0x51, 0x00, 0x08, 0xa4, 0x4e, 0x00

; FUNCTION 0x003db640, declared_size=612, range_size=612, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimers6UpdateEv
; demangled: CharTimers::Update()
; decoder-mode: arm
003db640  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003db644  3c 82 9f e5                                      ldr r8, [pc, #0x23c]
003db648  3c 32 9f e5                                      ldr r3, [pc, #0x23c]
003db64c  3c 12 9f e5                                      ldr r1, [pc, #0x23c]
003db650  08 80 8f e0                                      add r8, pc, r8
003db654  03 20 98 e7                                      ldr r2, [r8, r3]
003db658  01 30 98 e7                                      ldr r3, [r8, r1]
003db65c  54 d0 4d e2                                      sub sp, sp, #0x54
003db660  30 a0 d2 e5                                      ldrb sl, [r2, #0x30]
003db664  00 30 93 e5                                      ldr r3, [r3]
003db668  10 10 8d e5                                      str r1, [sp, #0x10]
003db66c  00 00 5a e3                                      cmp sl, #0
003db670  00 60 a0 e1                                      mov r6, r0
003db674  4c 30 8d e5                                      str r3, [sp, #0x4c]
003db678  07 00 00 0a                                      beq #0x3db69c
003db67c  10 20 9d e5                                      ldr r2, [sp, #0x10]
003db680  02 30 98 e7                                      ldr r3, [r8, r2]
003db684  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
003db688  00 30 93 e5                                      ldr r3, [r3]
003db68c  03 00 52 e1                                      cmp r2, r3
003db690  7b 00 00 1a                                      bne #0x3db884
003db694  54 d0 8d e2                                      add sp, sp, #0x54
003db698  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003db69c  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
003db6a0  03 00 98 e7                                      ldr r0, [r8, r3]
003db6a4  f0 0f fd eb                                      bl #0x31f66c
003db6a8  14 00 8d e5                                      str r0, [sp, #0x14]
003db6ac  08 40 96 e5                                      ldr r4, [r6, #8]
003db6b0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
003db6b4  03 30 64 e0                                      rsb r3, r4, r3
003db6b8  c3 32 b0 e1                                      asrs r3, r3, #5
003db6bc  08 30 8d e5                                      str r3, [sp, #8]
003db6c0  ed ff ff 0a                                      beq #0x3db67c
003db6c4  cc 21 9f e5                                      ldr r2, [pc, #0x1cc]
003db6c8  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
003db6cc  08 90 a0 e1                                      mov sb, r8
003db6d0  00 20 8d e5                                      str r2, [sp]
003db6d4  c4 21 9f e5                                      ldr r2, [pc, #0x1c4]
003db6d8  03 30 8f e0                                      add r3, pc, r3
003db6dc  13 30 83 e2                                      add r3, r3, #0x13
003db6e0  02 20 8f e0                                      add r2, pc, r2
003db6e4  13 20 82 e2                                      add r2, r2, #0x13
003db6e8  04 20 8d e5                                      str r2, [sp, #4]
003db6ec  0c 30 8d e5                                      str r3, [sp, #0xc]
003db6f0  04 00 00 ea                                      b #0x3db708
003db6f4  08 10 9d e5                                      ldr r1, [sp, #8]
003db6f8  01 a0 8a e2                                      add sl, sl, #1
003db6fc  01 00 5a e1                                      cmp sl, r1
003db700  5d 00 00 0a                                      beq #0x3db87c
003db704  08 40 96 e5                                      ldr r4, [r6, #8]
003db708  8a 72 a0 e1                                      lsl r7, sl, #5
003db70c  07 40 84 e0                                      add r4, r4, r7
003db710  14 30 d4 e5                                      ldrb r3, [r4, #0x14]
003db714  00 00 53 e3                                      cmp r3, #0
003db718  f5 ff ff 0a                                      beq #0x3db6f4
003db71c  15 20 d4 e5                                      ldrb r2, [r4, #0x15]
003db720  00 00 52 e3                                      cmp r2, #0
003db724  f2 ff ff 1a                                      bne #0x3db6f4
003db728  10 20 94 e5                                      ldr r2, [r4, #0x10]
003db72c  14 10 9d e5                                      ldr r1, [sp, #0x14]
003db730  1c 50 8d e2                                      add r5, sp, #0x1c
003db734  34 80 8d e2                                      add r8, sp, #0x34
003db738  01 20 82 e0                                      add r2, r2, r1
003db73c  10 20 84 e5                                      str r2, [r4, #0x10]
003db740  00 00 53 e3                                      cmp r3, #0
003db744  ea ff ff 0a                                      beq #0x3db6f4
003db748  10 20 94 e5                                      ldr r2, [r4, #0x10]
003db74c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003db750  03 00 52 e1                                      cmp r2, r3
003db754  e6 ff ff 3a                                      blo #0x3db6f4
003db758  00 00 53 e3                                      cmp r3, #0
003db75c  e4 ff ff 0a                                      beq #0x3db6f4
003db760  08 10 94 e5                                      ldr r1, [r4, #8]
003db764  00 00 51 e3                                      cmp r1, #0
003db768  14 10 c4 05                                      strbeq r1, [r4, #0x14]
003db76c  03 00 00 0a                                      beq #0x3db780
003db770  02 30 63 e0                                      rsb r3, r3, r2
003db774  01 10 41 c2                                      subgt r1, r1, #1
003db778  10 30 84 e5                                      str r3, [r4, #0x10]
003db77c  08 10 84 c5                                      strgt r1, [r4, #8]
003db780  18 30 94 e5                                      ldr r3, [r4, #0x18]
003db784  01 00 73 e3                                      cmn r3, #1
003db788  1b 00 00 0a                                      beq #0x3db7fc
003db78c  00 30 9d e5                                      ldr r3, [sp]
003db790  03 b0 99 e7                                      ldr fp, [sb, r3]
003db794  0b 00 a0 e1                                      mov r0, fp
003db798  3a 70 fd eb                                      bl #0x337888
003db79c  05 00 a0 e1                                      mov r0, r5
003db7a0  04 10 9d e5                                      ldr r1, [sp, #4]
003db7a4  2c 50 8d e5                                      str r5, [sp, #0x2c]
003db7a8  30 50 8d e5                                      str r5, [sp, #0x30]
003db7ac  8f ff ff eb                                      bl #0x3db5f0
003db7b0  0b 00 a0 e1                                      mov r0, fp
003db7b4  05 10 a0 e1                                      mov r1, r5
003db7b8  b2 70 fd eb                                      bl #0x337a88
003db7bc  30 00 9d e5                                      ldr r0, [sp, #0x30]
003db7c0  05 00 50 e1                                      cmp r0, r5
003db7c4  06 00 00 0a                                      beq #0x3db7e4
003db7c8  00 00 50 e3                                      cmp r0, #0
003db7cc  04 00 00 0a                                      beq #0x3db7e4
003db7d0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003db7d4  01 10 60 e0                                      rsb r1, r0, r1
003db7d8  80 00 51 e3                                      cmp r1, #0x80
003db7dc  22 00 00 8a                                      bhi #0x3db86c
003db7e0  c6 b5 0c eb                                      bl #0x708f00
003db7e4  05 00 96 e9                                      ldmib r6, {r0, r2}
003db7e8  18 10 94 e5                                      ldr r1, [r4, #0x18]
003db7ec  07 20 82 e0                                      add r2, r2, r7
003db7f0  59 25 ff eb                                      bl #0x3a4d5c
003db7f4  14 30 d4 e5                                      ldrb r3, [r4, #0x14]
003db7f8  d0 ff ff ea                                      b #0x3db740
003db7fc  00 20 9d e5                                      ldr r2, [sp]
003db800  02 b0 99 e7                                      ldr fp, [sb, r2]
003db804  0b 00 a0 e1                                      mov r0, fp
003db808  1e 70 fd eb                                      bl #0x337888
003db80c  08 00 a0 e1                                      mov r0, r8
003db810  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003db814  44 80 8d e5                                      str r8, [sp, #0x44]
003db818  48 80 8d e5                                      str r8, [sp, #0x48]
003db81c  73 ff ff eb                                      bl #0x3db5f0
003db820  0b 00 a0 e1                                      mov r0, fp
003db824  08 10 a0 e1                                      mov r1, r8
003db828  96 70 fd eb                                      bl #0x337a88
003db82c  48 00 9d e5                                      ldr r0, [sp, #0x48]
003db830  08 00 50 e1                                      cmp r0, r8
003db834  06 00 00 0a                                      beq #0x3db854
003db838  00 00 50 e3                                      cmp r0, #0
003db83c  04 00 00 0a                                      beq #0x3db854
003db840  34 10 9d e5                                      ldr r1, [sp, #0x34]
003db844  01 10 60 e0                                      rsb r1, r0, r1
003db848  80 00 51 e3                                      cmp r1, #0x80
003db84c  08 00 00 8a                                      bhi #0x3db874
003db850  aa b5 0c eb                                      bl #0x708f00
003db854  05 00 96 e9                                      ldmib r6, {r0, r2}
003db858  29 10 a0 e3                                      mov r1, #0x29
003db85c  07 20 82 e0                                      add r2, r2, r7
003db860  3d 25 ff eb                                      bl #0x3a4d5c
003db864  14 30 d4 e5                                      ldrb r3, [r4, #0x14]
003db868  b4 ff ff ea                                      b #0x3db740
003db86c  f3 d2 fc eb                                      bl #0x310440
003db870  db ff ff ea                                      b #0x3db7e4
003db874  f1 d2 fc eb                                      bl #0x310440
003db878  f5 ff ff ea                                      b #0x3db854
003db87c  09 80 a0 e1                                      mov r8, sb
003db880  7d ff ff ea                                      b #0x3db67c
003db884  a1 ca fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003db888  40 94 5b 00 20 1a 00 00 ac 40 00 00 f4 37 00 00  .byte 0x40, 0x94, 0x5b, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003db898  84 08 00 00 70 a2 4e 00 68 a2 4e 00              .byte 0x84, 0x08, 0x00, 0x00, 0x70, 0xa2, 0x4e, 0x00, 0x68, 0xa2, 0x4e, 0x00

; FUNCTION 0x003dbb0c, declared_size=76, range_size=76, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimersC2Ev
; demangled: CharTimers::CharTimers()
; decoder-mode: arm
003dbb0c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003dbb10  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003dbb14  00 10 a0 e3                                      mov r1, #0
003dbb18  03 30 8f e0                                      add r3, pc, r3
003dbb1c  02 20 93 e7                                      ldr r2, [r3, r2]
003dbb20  10 40 2d e9                                      push {r4, lr}
003dbb24  08 20 82 e2                                      add r2, r2, #8
003dbb28  00 40 a0 e1                                      mov r4, r0
003dbb2c  10 10 80 e5                                      str r1, [r0, #0x10]
003dbb30  00 20 80 e5                                      str r2, [r0]
003dbb34  04 10 80 e5                                      str r1, [r0, #4]
003dbb38  08 10 80 e5                                      str r1, [r0, #8]
003dbb3c  0c 10 80 e5                                      str r1, [r0, #0xc]
003dbb40  08 00 80 e2                                      add r0, r0, #8
003dbb44  ce ff ff eb                                      bl #0x3dba84
003dbb48  04 00 a0 e1                                      mov r0, r4
003dbb4c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003dbb50  78 8f 5b 00 44 1f 00 00                          .byte 0x78, 0x8f, 0x5b, 0x00, 0x44, 0x1f, 0x00, 0x00

; FUNCTION 0x003dbb58, declared_size=76, range_size=76, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimersC1Ev
; demangled: CharTimers::CharTimers()
; decoder-mode: arm
003dbb58  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003dbb5c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003dbb60  00 10 a0 e3                                      mov r1, #0
003dbb64  03 30 8f e0                                      add r3, pc, r3
003dbb68  02 20 93 e7                                      ldr r2, [r3, r2]
003dbb6c  10 40 2d e9                                      push {r4, lr}
003dbb70  08 20 82 e2                                      add r2, r2, #8
003dbb74  00 40 a0 e1                                      mov r4, r0
003dbb78  10 10 80 e5                                      str r1, [r0, #0x10]
003dbb7c  00 20 80 e5                                      str r2, [r0]
003dbb80  04 10 80 e5                                      str r1, [r0, #4]
003dbb84  08 10 80 e5                                      str r1, [r0, #8]
003dbb88  0c 10 80 e5                                      str r1, [r0, #0xc]
003dbb8c  08 00 80 e2                                      add r0, r0, #8
003dbb90  bb ff ff eb                                      bl #0x3dba84
003dbb94  04 00 a0 e1                                      mov r0, r4
003dbb98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003dbb9c  2c 8f 5b 00 44 1f 00 00                          .byte 0x2c, 0x8f, 0x5b, 0x00, 0x44, 0x1f, 0x00, 0x00

; FUNCTION 0x003dbd70, declared_size=180, range_size=180, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimers14_findTimerSlotEv
; demangled: CharTimers::_findTimerSlot()
; decoder-mode: arm
003dbd70  30 40 2d e9                                      push {r4, r5, lr}
003dbd74  00 40 a0 e1                                      mov r4, r0
003dbd78  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003dbd7c  08 00 90 e5                                      ldr r0, [r0, #8]
003dbd80  94 20 9f e5                                      ldr r2, [pc, #0x94]
003dbd84  24 d0 4d e2                                      sub sp, sp, #0x24
003dbd88  03 30 60 e0                                      rsb r3, r0, r3
003dbd8c  c3 32 b0 e1                                      asrs r3, r3, #5
003dbd90  02 20 8f e0                                      add r2, pc, r2
003dbd94  0b 00 00 0a                                      beq #0x3dbdc8
003dbd98  14 10 d0 e5                                      ldrb r1, [r0, #0x14]
003dbd9c  00 00 51 e3                                      cmp r1, #0
003dbda0  00 10 a0 13                                      movne r1, #0
003dbda4  03 00 00 1a                                      bne #0x3dbdb8
003dbda8  17 00 00 ea                                      b #0x3dbe0c
003dbdac  14 50 dc e5                                      ldrb r5, [ip, #0x14]
003dbdb0  00 00 55 e3                                      cmp r5, #0
003dbdb4  16 00 00 0a                                      beq #0x3dbe14
003dbdb8  01 10 81 e2                                      add r1, r1, #1
003dbdbc  03 00 51 e1                                      cmp r1, r3
003dbdc0  81 c2 80 e0                                      add ip, r0, r1, lsl #5
003dbdc4  f8 ff ff 1a                                      bne #0x3dbdac
003dbdc8  50 c0 9f e5                                      ldr ip, [pc, #0x50]
003dbdcc  00 e0 a0 e3                                      mov lr, #0
003dbdd0  08 00 84 e2                                      add r0, r4, #8
003dbdd4  0c c0 92 e7                                      ldr ip, [r2, ip]
003dbdd8  0d 10 a0 e1                                      mov r1, sp
003dbddc  04 30 8d e5                                      str r3, [sp, #4]
003dbde0  08 c0 8c e2                                      add ip, ip, #8
003dbde4  00 c0 8d e5                                      str ip, [sp]
003dbde8  15 e0 cd e5                                      strb lr, [sp, #0x15]
003dbdec  14 e0 cd e5                                      strb lr, [sp, #0x14]
003dbdf0  6b ff ff eb                                      bl #0x3dbba4
003dbdf4  08 30 94 e5                                      ldr r3, [r4, #8]
003dbdf8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
003dbdfc  00 00 63 e0                                      rsb r0, r3, r0
003dbe00  1f 00 c0 e3                                      bic r0, r0, #0x1f
003dbe04  20 00 40 e2                                      sub r0, r0, #0x20
003dbe08  00 00 83 e0                                      add r0, r3, r0
003dbe0c  24 d0 8d e2                                      add sp, sp, #0x24
003dbe10  30 80 bd e8                                      pop {r4, r5, pc}
003dbe14  0c 00 a0 e1                                      mov r0, ip
003dbe18  fb ff ff ea                                      b #0x3dbe0c
; mapping-symbol data/literal pool
003dbe1c  00 8d 5b 00 88 38 00 00                          .byte 0x00, 0x8d, 0x5b, 0x00, 0x88, 0x38, 0x00, 0x00

; FUNCTION 0x003dbe24, declared_size=84, range_size=84, mode=arm
; class-group: CharTimers
; alias: _ZN10CharTimers9TMR_StartEjiiPv
; demangled: CharTimers::TMR_Start(unsigned int, int, int, void*)
; decoder-mode: arm
003dbe24  70 40 2d e9                                      push {r4, r5, r6, lr}
003dbe28  03 60 a0 e1                                      mov r6, r3
003dbe2c  01 40 a0 e1                                      mov r4, r1
003dbe30  02 50 a0 e1                                      mov r5, r2
003dbe34  cd ff ff eb                                      bl #0x3dbd70
003dbe38  00 30 50 e2                                      subs r3, r0, #0
003dbe3c  0b 00 00 0a                                      beq #0x3dbe70
003dbe40  00 20 a0 e3                                      mov r2, #0
003dbe44  01 10 a0 e3                                      mov r1, #1
003dbe48  14 10 c3 e5                                      strb r1, [r3, #0x14]
003dbe4c  08 50 83 e5                                      str r5, [r3, #8]
003dbe50  0c 40 83 e5                                      str r4, [r3, #0xc]
003dbe54  10 20 83 e5                                      str r2, [r3, #0x10]
003dbe58  18 60 83 e5                                      str r6, [r3, #0x18]
003dbe5c  10 10 9d e5                                      ldr r1, [sp, #0x10]
003dbe60  04 00 93 e5                                      ldr r0, [r3, #4]
003dbe64  15 20 c3 e5                                      strb r2, [r3, #0x15]
003dbe68  1c 10 83 e5                                      str r1, [r3, #0x1c]
003dbe6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003dbe70  00 00 e0 e3                                      mvn r0, #0
003dbe74  70 80 bd e8                                      pop {r4, r5, r6, pc}
