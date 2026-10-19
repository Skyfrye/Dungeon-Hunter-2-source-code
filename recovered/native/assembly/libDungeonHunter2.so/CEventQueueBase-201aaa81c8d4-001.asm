; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fde10, declared_size=48, range_size=48, mode=arm
; class-group: CEventQueueBase
; alias: _ZN15CEventQueueBase9HasEventsEv
; demangled: CEventQueueBase::HasEvents()
; decoder-mode: arm
007fde10  08 30 b0 e5                                      ldr r3, [r0, #8]!
007fde14  00 00 53 e1                                      cmp r3, r0
007fde18  00 00 a0 03                                      moveq r0, #0
007fde1c  1e ff 2f 01                                      bxeq lr
007fde20  00 20 a0 e3                                      mov r2, #0
007fde24  00 30 93 e5                                      ldr r3, [r3]
007fde28  01 20 82 e2                                      add r2, r2, #1
007fde2c  03 00 50 e1                                      cmp r0, r3
007fde30  fb ff ff 1a                                      bne #0x7fde24
007fde34  00 00 52 e2                                      subs r0, r2, #0
007fde38  01 00 a0 13                                      movne r0, #1
007fde3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fdf64, declared_size=124, range_size=124, mode=arm
; class-group: CEventQueueBase
; alias: _ZN15CEventQueueBase12GetEventDataEiPvi
; demangled: CEventQueueBase::GetEventData(int, void*, int)
; decoder-mode: arm
007fdf64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fdf68  04 40 80 e2                                      add r4, r0, #4
007fdf6c  00 50 a0 e1                                      mov r5, r0
007fdf70  04 00 a0 e1                                      mov r0, r4
007fdf74  01 60 a0 e1                                      mov r6, r1
007fdf78  02 80 a0 e1                                      mov r8, r2
007fdf7c  03 70 a0 e1                                      mov r7, r3
007fdf80  f9 40 00 eb                                      bl #0x80e36c
007fdf84  08 00 b5 e5                                      ldr r0, [r5, #8]!
007fdf88  00 00 00 ea                                      b #0x7fdf90
007fdf8c  02 00 a0 e1                                      mov r0, r2
007fdf90  00 00 55 e1                                      cmp r5, r0
007fdf94  0c 00 00 0a                                      beq #0x7fdfcc
007fdf98  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007fdf9c  00 20 90 e5                                      ldr r2, [r0]
007fdfa0  03 00 56 e1                                      cmp r6, r3
007fdfa4  f8 ff ff 1a                                      bne #0x7fdf8c
007fdfa8  08 10 a0 e1                                      mov r1, r8
007fdfac  07 20 a0 e1                                      mov r2, r7
007fdfb0  08 00 80 e2                                      add r0, r0, #8
007fdfb4  da ff ff eb                                      bl #0x7fdf24
007fdfb8  00 50 a0 e1                                      mov r5, r0
007fdfbc  04 00 a0 e1                                      mov r0, r4
007fdfc0  e8 40 00 eb                                      bl #0x80e368
007fdfc4  05 00 a0 e1                                      mov r0, r5
007fdfc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007fdfcc  04 00 a0 e1                                      mov r0, r4
007fdfd0  00 50 e0 e3                                      mvn r5, #0
007fdfd4  e3 40 00 eb                                      bl #0x80e368
007fdfd8  05 00 a0 e1                                      mov r0, r5
007fdfdc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fe204, declared_size=112, range_size=112, mode=arm
; class-group: CEventQueueBase
; alias: _ZN15CEventQueueBase8AddEventEiPvi
; demangled: CEventQueueBase::AddEvent(int, void*, int)
; decoder-mode: arm
007fe204  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007fe208  04 50 80 e2                                      add r5, r0, #4
007fe20c  24 d0 4d e2                                      sub sp, sp, #0x24
007fe210  08 40 8d e2                                      add r4, sp, #8
007fe214  01 a0 a0 e1                                      mov sl, r1
007fe218  02 80 a0 e1                                      mov r8, r2
007fe21c  03 70 a0 e1                                      mov r7, r3
007fe220  00 60 a0 e1                                      mov r6, r0
007fe224  05 00 a0 e1                                      mov r0, r5
007fe228  4f 40 00 eb                                      bl #0x80e36c
007fe22c  08 60 86 e2                                      add r6, r6, #8
007fe230  0a 10 a0 e1                                      mov r1, sl
007fe234  08 20 a0 e1                                      mov r2, r8
007fe238  07 30 a0 e1                                      mov r3, r7
007fe23c  04 00 a0 e1                                      mov r0, r4
007fe240  b7 ff ff eb                                      bl #0x7fe124
007fe244  06 10 a0 e1                                      mov r1, r6
007fe248  1c 20 8d e2                                      add r2, sp, #0x1c
007fe24c  04 30 a0 e1                                      mov r3, r4
007fe250  0d 00 a0 e1                                      mov r0, sp
007fe254  1c 60 8d e5                                      str r6, [sp, #0x1c]
007fe258  d1 ff ff eb                                      bl #0x7fe1a4
007fe25c  04 00 a0 e1                                      mov r0, r4
007fe260  f6 fe ff eb                                      bl #0x7fde40
007fe264  05 00 a0 e1                                      mov r0, r5
007fe268  3e 40 00 eb                                      bl #0x80e368
007fe26c  24 d0 8d e2                                      add sp, sp, #0x24
007fe270  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x007fe2b8, declared_size=120, range_size=120, mode=arm
; class-group: CEventQueueBase
; alias: _ZN15CEventQueueBase5ClearEi
; demangled: CEventQueueBase::Clear(int)
; decoder-mode: arm
007fe2b8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007fe2bc  04 a0 80 e2                                      add sl, r0, #4
007fe2c0  14 d0 4d e2                                      sub sp, sp, #0x14
007fe2c4  00 50 a0 e1                                      mov r5, r0
007fe2c8  0a 00 a0 e1                                      mov r0, sl
007fe2cc  01 60 a0 e1                                      mov r6, r1
007fe2d0  25 40 00 eb                                      bl #0x80e36c
007fe2d4  08 30 b5 e5                                      ldr r3, [r5, #8]!
007fe2d8  0d 80 a0 e1                                      mov r8, sp
007fe2dc  0c 70 8d e2                                      add r7, sp, #0xc
007fe2e0  03 00 55 e1                                      cmp r5, r3
007fe2e4  06 00 00 0a                                      beq #0x7fe304
007fe2e8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
007fe2ec  00 40 93 e5                                      ldr r4, [r3]
007fe2f0  02 00 56 e1                                      cmp r6, r2
007fe2f4  06 00 00 0a                                      beq #0x7fe314
007fe2f8  04 30 a0 e1                                      mov r3, r4
007fe2fc  03 00 55 e1                                      cmp r5, r3
007fe300  f8 ff ff 1a                                      bne #0x7fe2e8
007fe304  0a 00 a0 e1                                      mov r0, sl
007fe308  16 40 00 eb                                      bl #0x80e368
007fe30c  14 d0 8d e2                                      add sp, sp, #0x14
007fe310  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007fe314  0d 00 a0 e1                                      mov r0, sp
007fe318  05 10 a0 e1                                      mov r1, r5
007fe31c  07 20 a0 e1                                      mov r2, r7
007fe320  0c 30 8d e5                                      str r3, [sp, #0xc]
007fe324  d2 ff ff eb                                      bl #0x7fe274
007fe328  04 30 a0 e1                                      mov r3, r4
007fe32c  f2 ff ff ea                                      b #0x7fe2fc

; FUNCTION 0x007fe330, declared_size=192, range_size=192, mode=arm
; class-group: CEventQueueBase
; alias: _ZN15CEventQueueBase9FindEventEib
; demangled: CEventQueueBase::FindEvent(int, bool)
; decoder-mode: arm
007fe330  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007fe334  00 70 a0 e1                                      mov r7, r0
007fe338  04 b0 80 e2                                      add fp, r0, #4
007fe33c  1c d0 4d e2                                      sub sp, sp, #0x1c
007fe340  0b 00 a0 e1                                      mov r0, fp
007fe344  07 60 a0 e1                                      mov r6, r7
007fe348  01 a0 a0 e1                                      mov sl, r1
007fe34c  04 20 8d e5                                      str r2, [sp, #4]
007fe350  05 40 00 eb                                      bl #0x80e36c
007fe354  08 40 b6 e5                                      ldr r4, [r6, #8]!
007fe358  08 80 8d e2                                      add r8, sp, #8
007fe35c  14 90 8d e2                                      add sb, sp, #0x14
007fe360  04 00 56 e1                                      cmp r6, r4
007fe364  04 00 a0 e1                                      mov r0, r4
007fe368  0d 00 00 0a                                      beq #0x7fe3a4
007fe36c  08 50 90 e4                                      ldr r5, [r0], #8
007fe370  10 10 97 e5                                      ldr r1, [r7, #0x10]
007fe374  dc fe ff eb                                      bl #0x7fdeec
007fe378  00 00 50 e3                                      cmp r0, #0
007fe37c  0e 00 00 0a                                      beq #0x7fe3bc
007fe380  08 00 a0 e1                                      mov r0, r8
007fe384  06 10 a0 e1                                      mov r1, r6
007fe388  09 20 a0 e1                                      mov r2, sb
007fe38c  14 40 8d e5                                      str r4, [sp, #0x14]
007fe390  b7 ff ff eb                                      bl #0x7fe274
007fe394  05 40 a0 e1                                      mov r4, r5
007fe398  04 00 56 e1                                      cmp r6, r4
007fe39c  04 00 a0 e1                                      mov r0, r4
007fe3a0  f1 ff ff 1a                                      bne #0x7fe36c
007fe3a4  00 40 a0 e3                                      mov r4, #0
007fe3a8  0b 00 a0 e1                                      mov r0, fp
007fe3ac  ed 3f 00 eb                                      bl #0x80e368
007fe3b0  04 00 a0 e1                                      mov r0, r4
007fe3b4  1c d0 8d e2                                      add sp, sp, #0x1c
007fe3b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007fe3bc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007fe3c0  03 00 5a e1                                      cmp sl, r3
007fe3c4  f2 ff ff 1a                                      bne #0x7fe394
007fe3c8  04 30 9d e5                                      ldr r3, [sp, #4]
007fe3cc  00 00 53 e3                                      cmp r3, #0
007fe3d0  04 00 00 0a                                      beq #0x7fe3e8
007fe3d4  06 10 a0 e1                                      mov r1, r6
007fe3d8  08 00 8d e2                                      add r0, sp, #8
007fe3dc  10 20 8d e2                                      add r2, sp, #0x10
007fe3e0  10 40 8d e5                                      str r4, [sp, #0x10]
007fe3e4  a2 ff ff eb                                      bl #0x7fe274
007fe3e8  01 40 a0 e3                                      mov r4, #1
007fe3ec  ed ff ff ea                                      b #0x7fe3a8

; FUNCTION 0x007fe3f0, declared_size=8, range_size=8, mode=arm
; class-group: CEventQueueBase
; alias: _ZN15CEventQueueBase12ConsumeEventEi
; demangled: CEventQueueBase::ConsumeEvent(int)
; decoder-mode: arm
007fe3f0  01 20 a0 e3                                      mov r2, #1
007fe3f4  cd ff ff ea                                      b #0x7fe330

; FUNCTION 0x007fe3f8, declared_size=4, range_size=4, mode=arm
; class-group: CEventQueueBase
; alias: _ZN15CEventQueueBase15HasEventOccuredEib
; demangled: CEventQueueBase::HasEventOccured(int, bool)
; decoder-mode: arm
007fe3f8  cc ff ff ea                                      b #0x7fe330

; FUNCTION 0x007fe3fc, declared_size=60, range_size=60, mode=arm
; class-group: CEventQueueBase
; alias: _ZN15CEventQueueBaseD1Ev
; demangled: CEventQueueBase::~CEventQueueBase()
; decoder-mode: arm
007fe3fc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007fe400  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007fe404  10 40 2d e9                                      push {r4, lr}
007fe408  03 30 8f e0                                      add r3, pc, r3
007fe40c  02 20 93 e7                                      ldr r2, [r3, r2]
007fe410  00 40 a0 e1                                      mov r4, r0
007fe414  08 20 82 e2                                      add r2, r2, #8
007fe418  08 20 80 e4                                      str r2, [r0], #8
007fe41c  d3 fb ff eb                                      bl #0x7fd370
007fe420  04 00 84 e2                                      add r0, r4, #4
007fe424  d1 3f 00 eb                                      bl #0x80e370
007fe428  04 00 a0 e1                                      mov r0, r4
007fe42c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fe430  88 66 19 00 4c 0a 00 00                          .byte 0x88, 0x66, 0x19, 0x00, 0x4c, 0x0a, 0x00, 0x00

; FUNCTION 0x007fe438, declared_size=40, range_size=40, mode=arm
; class-group: CEventQueueBase
; alias: _ZN15CEventQueueBase5ClearEv
; demangled: CEventQueueBase::Clear()
; decoder-mode: arm
007fe438  70 40 2d e9                                      push {r4, r5, r6, lr}
007fe43c  04 40 80 e2                                      add r4, r0, #4
007fe440  00 50 a0 e1                                      mov r5, r0
007fe444  04 00 a0 e1                                      mov r0, r4
007fe448  c7 3f 00 eb                                      bl #0x80e36c
007fe44c  08 00 85 e2                                      add r0, r5, #8
007fe450  c6 fb ff eb                                      bl #0x7fd370
007fe454  04 00 a0 e1                                      mov r0, r4
007fe458  70 40 bd e8                                      pop {r4, r5, r6, lr}
007fe45c  c1 3f 00 ea                                      b #0x80e368

; FUNCTION 0x007fe460, declared_size=68, range_size=68, mode=arm
; class-group: CEventQueueBase
; alias: _ZN15CEventQueueBaseD0Ev
; demangled: CEventQueueBase::~CEventQueueBase()
; decoder-mode: arm
007fe460  34 30 9f e5                                      ldr r3, [pc, #0x34]
007fe464  34 20 9f e5                                      ldr r2, [pc, #0x34]
007fe468  10 40 2d e9                                      push {r4, lr}
007fe46c  03 30 8f e0                                      add r3, pc, r3
007fe470  02 20 93 e7                                      ldr r2, [r3, r2]
007fe474  00 40 a0 e1                                      mov r4, r0
007fe478  08 20 82 e2                                      add r2, r2, #8
007fe47c  08 20 80 e4                                      str r2, [r0], #8
007fe480  ba fb ff eb                                      bl #0x7fd370
007fe484  04 00 84 e2                                      add r0, r4, #4
007fe488  b8 3f 00 eb                                      bl #0x80e370
007fe48c  04 00 a0 e1                                      mov r0, r4
007fe490  ea 47 ec eb                                      bl #0x310440
007fe494  04 00 a0 e1                                      mov r0, r4
007fe498  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fe49c  24 66 19 00 4c 0a 00 00                          .byte 0x24, 0x66, 0x19, 0x00, 0x4c, 0x0a, 0x00, 0x00
