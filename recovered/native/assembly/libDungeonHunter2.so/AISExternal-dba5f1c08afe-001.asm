; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003dccd0, declared_size=36, range_size=36, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal11OnEndOfAnimEv
; demangled: AISExternal::OnEndOfAnim()
; decoder-mode: arm
003dccd0  10 40 2d e9                                      push {r4, lr}
003dccd4  00 40 a0 e1                                      mov r4, r0
003dccd8  83 fc ff eb                                      bl #0x3dbeec
003dccdc  0c 10 9f e5                                      ldr r1, [pc, #0xc]
003dcce0  04 00 a0 e1                                      mov r0, r4
003dcce4  01 10 8f e0                                      add r1, pc, r1
003dcce8  10 40 bd e8                                      pop {r4, lr}
003dccec  08 7e fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dccf0  c4 8c 4e 00                                      .byte 0xc4, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dccf4, declared_size=28, range_size=28, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal20OnMasterInMeleeRangeEv
; demangled: AISExternal::OnMasterInMeleeRange()
; decoder-mode: arm
003dccf4  b8 30 90 e5                                      ldr r3, [r0, #0xb8]
003dccf8  02 0c 13 e3                                      tst r3, #0x200
003dccfc  1e ff 2f 01                                      bxeq lr
003dcd00  04 10 9f e5                                      ldr r1, [pc, #4]
003dcd04  01 10 8f e0                                      add r1, pc, r1
003dcd08  01 7e fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcd0c  b4 8c 4e 00                                      .byte 0xb4, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcd10, declared_size=28, range_size=28, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal20OnMasterInCloseRangeEv
; demangled: AISExternal::OnMasterInCloseRange()
; decoder-mode: arm
003dcd10  b8 30 90 e5                                      ldr r3, [r0, #0xb8]
003dcd14  01 0c 13 e3                                      tst r3, #0x100
003dcd18  1e ff 2f 01                                      bxeq lr
003dcd1c  04 10 9f e5                                      ldr r1, [pc, #4]
003dcd20  01 10 8f e0                                      add r1, pc, r1
003dcd24  fa 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcd28  b0 8c 4e 00                                      .byte 0xb0, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcd2c, declared_size=28, range_size=28, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal21OnMasterInRangedRangeEv
; demangled: AISExternal::OnMasterInRangedRange()
; decoder-mode: arm
003dcd2c  b8 30 90 e5                                      ldr r3, [r0, #0xb8]
003dcd30  80 00 13 e3                                      tst r3, #0x80
003dcd34  1e ff 2f 01                                      bxeq lr
003dcd38  04 10 9f e5                                      ldr r1, [pc, #4]
003dcd3c  01 10 8f e0                                      add r1, pc, r1
003dcd40  f3 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcd44  ac 8c 4e 00                                      .byte 0xac, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcd48, declared_size=28, range_size=28, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal18OnMasterOutOfRangeEv
; demangled: AISExternal::OnMasterOutOfRange()
; decoder-mode: arm
003dcd48  b8 30 90 e5                                      ldr r3, [r0, #0xb8]
003dcd4c  40 00 13 e3                                      tst r3, #0x40
003dcd50  1e ff 2f 01                                      bxeq lr
003dcd54  04 10 9f e5                                      ldr r1, [pc, #4]
003dcd58  01 10 8f e0                                      add r1, pc, r1
003dcd5c  ec 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcd60  a8 8c 4e 00                                      .byte 0xa8, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcd64, declared_size=16, range_size=16, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal15OnMasterInSightEv
; demangled: AISExternal::OnMasterInSight()
; decoder-mode: arm
003dcd64  04 10 9f e5                                      ldr r1, [pc, #4]
003dcd68  01 10 8f e0                                      add r1, pc, r1
003dcd6c  e8 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcd70  b0 8c 4e 00                                      .byte 0xb0, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcd74, declared_size=16, range_size=16, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal18OnMasterOutOfSightEv
; demangled: AISExternal::OnMasterOutOfSight()
; decoder-mode: arm
003dcd74  04 10 9f e5                                      ldr r1, [pc, #4]
003dcd78  01 10 8f e0                                      add r1, pc, r1
003dcd7c  e4 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcd80  b0 8c 4e 00                                      .byte 0xb0, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcd84, declared_size=16, range_size=16, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal12OnMasterDiedEv
; demangled: AISExternal::OnMasterDied()
; decoder-mode: arm
003dcd84  04 10 9f e5                                      ldr r1, [pc, #4]
003dcd88  01 10 8f e0                                      add r1, pc, r1
003dcd8c  e0 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcd90  b8 8c 4e 00                                      .byte 0xb8, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcd94, declared_size=28, range_size=28, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal20OnTargetInMeleeRangeEv
; demangled: AISExternal::OnTargetInMeleeRange()
; decoder-mode: arm
003dcd94  b8 30 90 e5                                      ldr r3, [r0, #0xb8]
003dcd98  20 00 13 e3                                      tst r3, #0x20
003dcd9c  1e ff 2f 01                                      bxeq lr
003dcda0  04 10 9f e5                                      ldr r1, [pc, #4]
003dcda4  01 10 8f e0                                      add r1, pc, r1
003dcda8  d9 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcdac  ac 8c 4e 00                                      .byte 0xac, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcdb0, declared_size=28, range_size=28, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal20OnTargetInCloseRangeEv
; demangled: AISExternal::OnTargetInCloseRange()
; decoder-mode: arm
003dcdb0  b8 30 90 e5                                      ldr r3, [r0, #0xb8]
003dcdb4  10 00 13 e3                                      tst r3, #0x10
003dcdb8  1e ff 2f 01                                      bxeq lr
003dcdbc  04 10 9f e5                                      ldr r1, [pc, #4]
003dcdc0  01 10 8f e0                                      add r1, pc, r1
003dcdc4  d2 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcdc8  a8 8c 4e 00                                      .byte 0xa8, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcdcc, declared_size=28, range_size=28, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal21OnTargetInRangedRangeEv
; demangled: AISExternal::OnTargetInRangedRange()
; decoder-mode: arm
003dcdcc  b8 30 90 e5                                      ldr r3, [r0, #0xb8]
003dcdd0  08 00 13 e3                                      tst r3, #8
003dcdd4  1e ff 2f 01                                      bxeq lr
003dcdd8  04 10 9f e5                                      ldr r1, [pc, #4]
003dcddc  01 10 8f e0                                      add r1, pc, r1
003dcde0  cb 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcde4  a4 8c 4e 00                                      .byte 0xa4, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcde8, declared_size=28, range_size=28, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal18OnTargetOutOfRangeEv
; demangled: AISExternal::OnTargetOutOfRange()
; decoder-mode: arm
003dcde8  b8 30 90 e5                                      ldr r3, [r0, #0xb8]
003dcdec  04 00 13 e3                                      tst r3, #4
003dcdf0  1e ff 2f 01                                      bxeq lr
003dcdf4  04 10 9f e5                                      ldr r1, [pc, #4]
003dcdf8  01 10 8f e0                                      add r1, pc, r1
003dcdfc  c4 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dce00  a0 8c 4e 00                                      .byte 0xa0, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dce04, declared_size=16, range_size=16, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal15OnTargetInSightEv
; demangled: AISExternal::OnTargetInSight()
; decoder-mode: arm
003dce04  04 10 9f e5                                      ldr r1, [pc, #4]
003dce08  01 10 8f e0                                      add r1, pc, r1
003dce0c  c0 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dce10  a8 8c 4e 00                                      .byte 0xa8, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dce14, declared_size=16, range_size=16, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal18OnTargetOutOfSightEv
; demangled: AISExternal::OnTargetOutOfSight()
; decoder-mode: arm
003dce14  04 10 9f e5                                      ldr r1, [pc, #4]
003dce18  01 10 8f e0                                      add r1, pc, r1
003dce1c  bc 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dce20  a8 8c 4e 00                                      .byte 0xa8, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dce24, declared_size=16, range_size=16, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal12OnTargetDiedEv
; demangled: AISExternal::OnTargetDied()
; decoder-mode: arm
003dce24  04 10 9f e5                                      ldr r1, [pc, #4]
003dce28  01 10 8f e0                                      add r1, pc, r1
003dce2c  b8 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dce30  b8 4d 4e 00                                      .byte 0xb8, 0x4d, 0x4e, 0x00

; FUNCTION 0x003dce34, declared_size=16, range_size=16, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal11OnTerminateEv
; demangled: AISExternal::OnTerminate()
; decoder-mode: arm
003dce34  04 10 9f e5                                      ldr r1, [pc, #4]
003dce38  01 10 8f e0                                      add r1, pc, r1
003dce3c  b4 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dce40  a0 8c 4e 00                                      .byte 0xa0, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dce44, declared_size=16, range_size=16, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal11OnInitFinalEv
; demangled: AISExternal::OnInitFinal()
; decoder-mode: arm
003dce44  04 10 9f e5                                      ldr r1, [pc, #4]
003dce48  01 10 8f e0                                      add r1, pc, r1
003dce4c  b0 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dce50  a0 8c 4e 00                                      .byte 0xa0, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dce54, declared_size=16, range_size=16, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal10OnInitPostEv
; demangled: AISExternal::OnInitPost()
; decoder-mode: arm
003dce54  04 10 9f e5                                      ldr r1, [pc, #4]
003dce58  01 10 8f e0                                      add r1, pc, r1
003dce5c  ac 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dce60  a0 8c 4e 00                                      .byte 0xa0, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dce64, declared_size=64, range_size=64, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal8OnUpdateEv
; demangled: AISExternal::OnUpdate()
; decoder-mode: arm
003dce64  10 40 2d e9                                      push {r4, lr}
003dce68  00 40 a0 e1                                      mov r4, r0
003dce6c  49 fe ff eb                                      bl #0x3dc798
003dce70  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
003dce74  01 00 13 e3                                      tst r3, #1
003dce78  03 00 00 0a                                      beq #0x3dce8c
003dce7c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
003dce80  04 00 a0 e1                                      mov r0, r4
003dce84  01 10 8f e0                                      add r1, pc, r1
003dce88  a1 7d fe eb                                      bl #0x37c514
003dce8c  04 00 a0 e1                                      mov r0, r4
003dce90  07 f0 ff eb                                      bl #0x3d8eb4
003dce94  04 00 a0 e1                                      mov r0, r4
003dce98  10 40 bd e8                                      pop {r4, lr}
003dce9c  ff ef ff ea                                      b #0x3d8ea0
; mapping-symbol data/literal pool
003dcea0  84 8c 4e 00                                      .byte 0x84, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcea4, declared_size=36, range_size=36, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal6OnInitEv
; demangled: AISExternal::OnInit()
; decoder-mode: arm
003dcea4  10 40 2d e9                                      push {r4, lr}
003dcea8  00 40 a0 e1                                      mov r4, r0
003dceac  f1 fb ff eb                                      bl #0x3dbe78
003dceb0  0c 10 9f e5                                      ldr r1, [pc, #0xc]
003dceb4  04 00 a0 e1                                      mov r0, r4
003dceb8  01 10 8f e0                                      add r1, pc, r1
003dcebc  10 40 bd e8                                      pop {r4, lr}
003dcec0  93 7d fe ea                                      b #0x37c514
; mapping-symbol data/literal pool
003dcec4  60 8c 4e 00                                      .byte 0x60, 0x8c, 0x4e, 0x00

; FUNCTION 0x003dcec8, declared_size=408, range_size=408, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal7InitVCBEv
; demangled: AISExternal::InitVCB()
; decoder-mode: arm
003dcec8  70 40 2d e9                                      push {r4, r5, r6, lr}
003dcecc  00 40 a0 e1                                      mov r4, r0
003dced0  40 fe ff eb                                      bl #0x3dc7d8
003dced4  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
003dced8  04 00 a0 e1                                      mov r0, r4
003dcedc  b8 50 94 e5                                      ldr r5, [r4, #0xb8]
003dcee0  01 10 8f e0                                      add r1, pc, r1
003dcee4  ed 7c fe eb                                      bl #0x37c2a0
003dcee8  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
003dceec  05 50 80 e1                                      orr r5, r0, r5
003dcef0  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dcef4  01 10 8f e0                                      add r1, pc, r1
003dcef8  04 00 a0 e1                                      mov r0, r4
003dcefc  e7 7c fe eb                                      bl #0x37c2a0
003dcf00  38 11 9f e5                                      ldr r1, [pc, #0x138]
003dcf04  00 00 50 e3                                      cmp r0, #0
003dcf08  02 00 a0 13                                      movne r0, #2
003dcf0c  00 00 a0 03                                      moveq r0, #0
003dcf10  05 50 80 e1                                      orr r5, r0, r5
003dcf14  01 10 8f e0                                      add r1, pc, r1
003dcf18  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dcf1c  04 00 a0 e1                                      mov r0, r4
003dcf20  de 7c fe eb                                      bl #0x37c2a0
003dcf24  18 11 9f e5                                      ldr r1, [pc, #0x118]
003dcf28  00 00 50 e3                                      cmp r0, #0
003dcf2c  04 00 a0 13                                      movne r0, #4
003dcf30  00 00 a0 03                                      moveq r0, #0
003dcf34  05 50 80 e1                                      orr r5, r0, r5
003dcf38  01 10 8f e0                                      add r1, pc, r1
003dcf3c  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dcf40  04 00 a0 e1                                      mov r0, r4
003dcf44  d5 7c fe eb                                      bl #0x37c2a0
003dcf48  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
003dcf4c  00 00 50 e3                                      cmp r0, #0
003dcf50  08 00 a0 13                                      movne r0, #8
003dcf54  00 00 a0 03                                      moveq r0, #0
003dcf58  05 50 80 e1                                      orr r5, r0, r5
003dcf5c  01 10 8f e0                                      add r1, pc, r1
003dcf60  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dcf64  04 00 a0 e1                                      mov r0, r4
003dcf68  cc 7c fe eb                                      bl #0x37c2a0
003dcf6c  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
003dcf70  00 00 50 e3                                      cmp r0, #0
003dcf74  10 00 a0 13                                      movne r0, #0x10
003dcf78  00 00 a0 03                                      moveq r0, #0
003dcf7c  05 50 80 e1                                      orr r5, r0, r5
003dcf80  01 10 8f e0                                      add r1, pc, r1
003dcf84  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dcf88  04 00 a0 e1                                      mov r0, r4
003dcf8c  c3 7c fe eb                                      bl #0x37c2a0
003dcf90  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
003dcf94  00 00 50 e3                                      cmp r0, #0
003dcf98  20 00 a0 13                                      movne r0, #0x20
003dcf9c  00 00 a0 03                                      moveq r0, #0
003dcfa0  05 50 80 e1                                      orr r5, r0, r5
003dcfa4  01 10 8f e0                                      add r1, pc, r1
003dcfa8  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dcfac  04 00 a0 e1                                      mov r0, r4
003dcfb0  ba 7c fe eb                                      bl #0x37c2a0
003dcfb4  98 10 9f e5                                      ldr r1, [pc, #0x98]
003dcfb8  00 00 50 e3                                      cmp r0, #0
003dcfbc  40 00 a0 13                                      movne r0, #0x40
003dcfc0  00 00 a0 03                                      moveq r0, #0
003dcfc4  05 50 80 e1                                      orr r5, r0, r5
003dcfc8  01 10 8f e0                                      add r1, pc, r1
003dcfcc  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dcfd0  04 00 a0 e1                                      mov r0, r4
003dcfd4  b1 7c fe eb                                      bl #0x37c2a0
003dcfd8  78 10 9f e5                                      ldr r1, [pc, #0x78]
003dcfdc  00 00 50 e3                                      cmp r0, #0
003dcfe0  80 00 a0 13                                      movne r0, #0x80
003dcfe4  00 00 a0 03                                      moveq r0, #0
003dcfe8  05 50 80 e1                                      orr r5, r0, r5
003dcfec  01 10 8f e0                                      add r1, pc, r1
003dcff0  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dcff4  04 00 a0 e1                                      mov r0, r4
003dcff8  a8 7c fe eb                                      bl #0x37c2a0
003dcffc  58 10 9f e5                                      ldr r1, [pc, #0x58]
003dd000  00 00 50 e3                                      cmp r0, #0
003dd004  01 0c a0 13                                      movne r0, #0x100
003dd008  00 00 a0 03                                      moveq r0, #0
003dd00c  05 50 80 e1                                      orr r5, r0, r5
003dd010  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dd014  01 10 8f e0                                      add r1, pc, r1
003dd018  04 00 a0 e1                                      mov r0, r4
003dd01c  9f 7c fe eb                                      bl #0x37c2a0
003dd020  00 00 50 e3                                      cmp r0, #0
003dd024  02 0c a0 13                                      movne r0, #0x200
003dd028  00 00 a0 03                                      moveq r0, #0
003dd02c  05 50 80 e1                                      orr r5, r0, r5
003dd030  b8 50 84 e5                                      str r5, [r4, #0xb8]
003dd034  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd038  28 8c 4e 00 2c 8c 4e 00 84 8b 4e 00 48 8b 4e 00  .byte 0x28, 0x8c, 0x4e, 0x00, 0x2c, 0x8c, 0x4e, 0x00, 0x84, 0x8b, 0x4e, 0x00, 0x48, 0x8b, 0x4e, 0x00
003dd048  0c 8b 4e 00 d0 8a 4e 00 5c 8a 4e 00 20 8a 4e 00  .byte 0x0c, 0x8b, 0x4e, 0x00, 0xd0, 0x8a, 0x4e, 0x00, 0x5c, 0x8a, 0x4e, 0x00, 0x20, 0x8a, 0x4e, 0x00
003dd058  e4 89 4e 00 a4 89 4e 00                          .byte 0xe4, 0x89, 0x4e, 0x00, 0xa4, 0x89, 0x4e, 0x00

; FUNCTION 0x003dd060, declared_size=52, range_size=52, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternalD1Ev
; demangled: AISExternal::~AISExternal()
; decoder-mode: arm
003dd060  24 30 9f e5                                      ldr r3, [pc, #0x24]
003dd064  24 20 9f e5                                      ldr r2, [pc, #0x24]
003dd068  10 40 2d e9                                      push {r4, lr}
003dd06c  03 30 8f e0                                      add r3, pc, r3
003dd070  02 20 93 e7                                      ldr r2, [r3, r2]
003dd074  00 40 a0 e1                                      mov r4, r0
003dd078  08 20 82 e2                                      add r2, r2, #8
003dd07c  00 20 80 e5                                      str r2, [r0]
003dd080  9a f0 ff eb                                      bl #0x3d92f0
003dd084  04 00 a0 e1                                      mov r0, r4
003dd088  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003dd08c  24 7a 5b 00 ac 2a 00 00                          .byte 0x24, 0x7a, 0x5b, 0x00, 0xac, 0x2a, 0x00, 0x00

; FUNCTION 0x003dd094, declared_size=28, range_size=28, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternalD0Ev
; demangled: AISExternal::~AISExternal()
; decoder-mode: arm
003dd094  10 40 2d e9                                      push {r4, lr}
003dd098  00 40 a0 e1                                      mov r4, r0
003dd09c  ef ff ff eb                                      bl #0x3dd060
003dd0a0  04 00 a0 e1                                      mov r0, r4
003dd0a4  e5 cc fc eb                                      bl #0x310440
003dd0a8  04 00 a0 e1                                      mov r0, r4
003dd0ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003dd0b0, declared_size=52, range_size=52, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternalD2Ev
; demangled: AISExternal::~AISExternal()
; decoder-mode: arm
003dd0b0  24 30 9f e5                                      ldr r3, [pc, #0x24]
003dd0b4  24 20 9f e5                                      ldr r2, [pc, #0x24]
003dd0b8  10 40 2d e9                                      push {r4, lr}
003dd0bc  03 30 8f e0                                      add r3, pc, r3
003dd0c0  02 20 93 e7                                      ldr r2, [r3, r2]
003dd0c4  00 40 a0 e1                                      mov r4, r0
003dd0c8  08 20 82 e2                                      add r2, r2, #8
003dd0cc  00 20 80 e5                                      str r2, [r0]
003dd0d0  86 f0 ff eb                                      bl #0x3d92f0
003dd0d4  04 00 a0 e1                                      mov r0, r4
003dd0d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003dd0dc  d4 79 5b 00 ac 2a 00 00                          .byte 0xd4, 0x79, 0x5b, 0x00, 0xac, 0x2a, 0x00, 0x00

; FUNCTION 0x003dd0e4, declared_size=68, range_size=68, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternalC1Eb
; demangled: AISExternal::AISExternal(bool)
; decoder-mode: arm
003dd0e4  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd0e8  30 50 9f e5                                      ldr r5, [pc, #0x30]
003dd0ec  00 40 a0 e1                                      mov r4, r0
003dd0f0  ae ef ff eb                                      bl #0x3d8fb0
003dd0f4  28 20 9f e5                                      ldr r2, [pc, #0x28]
003dd0f8  05 50 8f e0                                      add r5, pc, r5
003dd0fc  00 30 a0 e3                                      mov r3, #0
003dd100  02 20 95 e7                                      ldr r2, [r5, r2]
003dd104  c0 30 84 e5                                      str r3, [r4, #0xc0]
003dd108  b8 30 84 e5                                      str r3, [r4, #0xb8]
003dd10c  08 20 82 e2                                      add r2, r2, #8
003dd110  00 20 84 e5                                      str r2, [r4]
003dd114  bc 30 84 e5                                      str r3, [r4, #0xbc]
003dd118  04 00 a0 e1                                      mov r0, r4
003dd11c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd120  98 79 5b 00 64 09 00 00                          .byte 0x98, 0x79, 0x5b, 0x00, 0x64, 0x09, 0x00, 0x00

; FUNCTION 0x003dd128, declared_size=68, range_size=68, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternalC2Eb
; demangled: AISExternal::AISExternal(bool)
; decoder-mode: arm
003dd128  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd12c  30 50 9f e5                                      ldr r5, [pc, #0x30]
003dd130  00 40 a0 e1                                      mov r4, r0
003dd134  9d ef ff eb                                      bl #0x3d8fb0
003dd138  28 20 9f e5                                      ldr r2, [pc, #0x28]
003dd13c  05 50 8f e0                                      add r5, pc, r5
003dd140  00 30 a0 e3                                      mov r3, #0
003dd144  02 20 95 e7                                      ldr r2, [r5, r2]
003dd148  c0 30 84 e5                                      str r3, [r4, #0xc0]
003dd14c  b8 30 84 e5                                      str r3, [r4, #0xb8]
003dd150  08 20 82 e2                                      add r2, r2, #8
003dd154  00 20 84 e5                                      str r2, [r4]
003dd158  bc 30 84 e5                                      str r3, [r4, #0xbc]
003dd15c  04 00 a0 e1                                      mov r0, r4
003dd160  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd164  54 79 5b 00 64 09 00 00                          .byte 0x54, 0x79, 0x5b, 0x00, 0x64, 0x09, 0x00, 0x00

; FUNCTION 0x003dd250, declared_size=80, range_size=80, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal15OnCombatResultsEP10GameObjectPv
; demangled: AISExternal::OnCombatResults(GameObject*, void*)
; decoder-mode: arm
003dd250  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd254  08 d0 4d e2                                      sub sp, sp, #8
003dd258  02 60 a0 e1                                      mov r6, r2
003dd25c  00 50 a0 e1                                      mov r5, r0
003dd260  0d 00 a0 e1                                      mov r0, sp
003dd264  12 f0 fc eb                                      bl #0x3192b4
003dd268  0d 00 a0 e1                                      mov r0, sp
003dd26c  06 10 a0 e1                                      mov r1, r6
003dd270  7d f4 fc eb                                      bl #0x31a46c
003dd274  20 10 9f e5                                      ldr r1, [pc, #0x20]
003dd278  05 00 a0 e1                                      mov r0, r5
003dd27c  0d 20 a0 e1                                      mov r2, sp
003dd280  01 10 8f e0                                      add r1, pc, r1
003dd284  64 7c fe eb                                      bl #0x37c41c
003dd288  0d 00 a0 e1                                      mov r0, sp
003dd28c  0d 40 a0 e1                                      mov r4, sp
003dd290  e4 ef fc eb                                      bl #0x319228
003dd294  08 d0 8d e2                                      add sp, sp, #8
003dd298  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd29c  b0 88 4e 00                                      .byte 0xb0, 0x88, 0x4e, 0x00

; FUNCTION 0x003dd2a0, declared_size=84, range_size=84, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal15OnProjectileHitEP10GameObject
; demangled: AISExternal::OnProjectileHit(GameObject*)
; decoder-mode: arm
003dd2a0  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd2a4  08 d0 4d e2                                      sub sp, sp, #8
003dd2a8  00 50 a0 e1                                      mov r5, r0
003dd2ac  01 60 a0 e1                                      mov r6, r1
003dd2b0  11 fb ff eb                                      bl #0x3dbefc
003dd2b4  0d 00 a0 e1                                      mov r0, sp
003dd2b8  fd ef fc eb                                      bl #0x3192b4
003dd2bc  0d 00 a0 e1                                      mov r0, sp
003dd2c0  06 10 a0 e1                                      mov r1, r6
003dd2c4  17 a7 fe eb                                      bl #0x386f28
003dd2c8  20 10 9f e5                                      ldr r1, [pc, #0x20]
003dd2cc  05 00 a0 e1                                      mov r0, r5
003dd2d0  0d 20 a0 e1                                      mov r2, sp
003dd2d4  01 10 8f e0                                      add r1, pc, r1
003dd2d8  4f 7c fe eb                                      bl #0x37c41c
003dd2dc  0d 00 a0 e1                                      mov r0, sp
003dd2e0  0d 40 a0 e1                                      mov r4, sp
003dd2e4  cf ef fc eb                                      bl #0x319228
003dd2e8  08 d0 8d e2                                      add sp, sp, #8
003dd2ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd2f0  6c 88 4e 00                                      .byte 0x6c, 0x88, 0x4e, 0x00

; FUNCTION 0x003dd2f4, declared_size=80, range_size=80, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal14OnEnemySpottedEP9Character
; demangled: AISExternal::OnEnemySpotted(Character*)
; decoder-mode: arm
003dd2f4  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd2f8  08 d0 4d e2                                      sub sp, sp, #8
003dd2fc  00 50 a0 e1                                      mov r5, r0
003dd300  01 60 a0 e1                                      mov r6, r1
003dd304  0d 00 a0 e1                                      mov r0, sp
003dd308  e9 ef fc eb                                      bl #0x3192b4
003dd30c  0d 00 a0 e1                                      mov r0, sp
003dd310  06 10 a0 e1                                      mov r1, r6
003dd314  03 a7 fe eb                                      bl #0x386f28
003dd318  20 10 9f e5                                      ldr r1, [pc, #0x20]
003dd31c  05 00 a0 e1                                      mov r0, r5
003dd320  0d 20 a0 e1                                      mov r2, sp
003dd324  01 10 8f e0                                      add r1, pc, r1
003dd328  3b 7c fe eb                                      bl #0x37c41c
003dd32c  0d 00 a0 e1                                      mov r0, sp
003dd330  0d 40 a0 e1                                      mov r4, sp
003dd334  bb ef fc eb                                      bl #0x319228
003dd338  08 d0 8d e2                                      add sp, sp, #8
003dd33c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd340  2c 88 4e 00                                      .byte 0x2c, 0x88, 0x4e, 0x00

; FUNCTION 0x003dd344, declared_size=80, range_size=80, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal16OnNeutralSpottedEP9Character
; demangled: AISExternal::OnNeutralSpotted(Character*)
; decoder-mode: arm
003dd344  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd348  08 d0 4d e2                                      sub sp, sp, #8
003dd34c  00 50 a0 e1                                      mov r5, r0
003dd350  01 60 a0 e1                                      mov r6, r1
003dd354  0d 00 a0 e1                                      mov r0, sp
003dd358  d5 ef fc eb                                      bl #0x3192b4
003dd35c  0d 00 a0 e1                                      mov r0, sp
003dd360  06 10 a0 e1                                      mov r1, r6
003dd364  ef a6 fe eb                                      bl #0x386f28
003dd368  20 10 9f e5                                      ldr r1, [pc, #0x20]
003dd36c  05 00 a0 e1                                      mov r0, r5
003dd370  0d 20 a0 e1                                      mov r2, sp
003dd374  01 10 8f e0                                      add r1, pc, r1
003dd378  27 7c fe eb                                      bl #0x37c41c
003dd37c  0d 00 a0 e1                                      mov r0, sp
003dd380  0d 40 a0 e1                                      mov r4, sp
003dd384  a7 ef fc eb                                      bl #0x319228
003dd388  08 d0 8d e2                                      add sp, sp, #8
003dd38c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd390  ec 87 4e 00                                      .byte 0xec, 0x87, 0x4e, 0x00

; FUNCTION 0x003dd394, declared_size=92, range_size=92, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal15OnFriendSpottedEP9Character
; demangled: AISExternal::OnFriendSpotted(Character*)
; decoder-mode: arm
003dd394  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd398  b8 30 90 e5                                      ldr r3, [r0, #0xb8]
003dd39c  08 d0 4d e2                                      sub sp, sp, #8
003dd3a0  00 50 a0 e1                                      mov r5, r0
003dd3a4  02 00 13 e3                                      tst r3, #2
003dd3a8  01 60 a0 e1                                      mov r6, r1
003dd3ac  0c 00 00 0a                                      beq #0x3dd3e4
003dd3b0  0d 00 a0 e1                                      mov r0, sp
003dd3b4  be ef fc eb                                      bl #0x3192b4
003dd3b8  0d 00 a0 e1                                      mov r0, sp
003dd3bc  06 10 a0 e1                                      mov r1, r6
003dd3c0  d8 a6 fe eb                                      bl #0x386f28
003dd3c4  20 10 9f e5                                      ldr r1, [pc, #0x20]
003dd3c8  05 00 a0 e1                                      mov r0, r5
003dd3cc  0d 20 a0 e1                                      mov r2, sp
003dd3d0  01 10 8f e0                                      add r1, pc, r1
003dd3d4  10 7c fe eb                                      bl #0x37c41c
003dd3d8  0d 00 a0 e1                                      mov r0, sp
003dd3dc  0d 40 a0 e1                                      mov r4, sp
003dd3e0  90 ef fc eb                                      bl #0x319228
003dd3e4  08 d0 8d e2                                      add sp, sp, #8
003dd3e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd3ec  50 87 4e 00                                      .byte 0x50, 0x87, 0x4e, 0x00

; FUNCTION 0x003dd3f0, declared_size=80, range_size=80, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal9OnRevivedEP10GameObject
; demangled: AISExternal::OnRevived(GameObject*)
; decoder-mode: arm
003dd3f0  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd3f4  08 d0 4d e2                                      sub sp, sp, #8
003dd3f8  00 50 a0 e1                                      mov r5, r0
003dd3fc  01 60 a0 e1                                      mov r6, r1
003dd400  0d 00 a0 e1                                      mov r0, sp
003dd404  aa ef fc eb                                      bl #0x3192b4
003dd408  0d 00 a0 e1                                      mov r0, sp
003dd40c  06 10 a0 e1                                      mov r1, r6
003dd410  c4 a6 fe eb                                      bl #0x386f28
003dd414  20 10 9f e5                                      ldr r1, [pc, #0x20]
003dd418  05 00 a0 e1                                      mov r0, r5
003dd41c  0d 20 a0 e1                                      mov r2, sp
003dd420  01 10 8f e0                                      add r1, pc, r1
003dd424  fc 7b fe eb                                      bl #0x37c41c
003dd428  0d 00 a0 e1                                      mov r0, sp
003dd42c  0d 40 a0 e1                                      mov r4, sp
003dd430  7c ef fc eb                                      bl #0x319228
003dd434  08 d0 8d e2                                      add sp, sp, #8
003dd438  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd43c  58 87 4e 00                                      .byte 0x58, 0x87, 0x4e, 0x00

; FUNCTION 0x003dd440, declared_size=80, range_size=80, mode=arm
; class-group: AISExternal
; alias: _ZN11AISExternal6OnDiedEP10GameObject
; demangled: AISExternal::OnDied(GameObject*)
; decoder-mode: arm
003dd440  70 40 2d e9                                      push {r4, r5, r6, lr}
003dd444  08 d0 4d e2                                      sub sp, sp, #8
003dd448  00 50 a0 e1                                      mov r5, r0
003dd44c  01 60 a0 e1                                      mov r6, r1
003dd450  0d 00 a0 e1                                      mov r0, sp
003dd454  96 ef fc eb                                      bl #0x3192b4
003dd458  0d 00 a0 e1                                      mov r0, sp
003dd45c  06 10 a0 e1                                      mov r1, r6
003dd460  b0 a6 fe eb                                      bl #0x386f28
003dd464  20 10 9f e5                                      ldr r1, [pc, #0x20]
003dd468  05 00 a0 e1                                      mov r0, r5
003dd46c  0d 20 a0 e1                                      mov r2, sp
003dd470  01 10 8f e0                                      add r1, pc, r1
003dd474  e8 7b fe eb                                      bl #0x37c41c
003dd478  0d 00 a0 e1                                      mov r0, sp
003dd47c  0d 40 a0 e1                                      mov r4, sp
003dd480  68 ef fc eb                                      bl #0x319228
003dd484  08 d0 8d e2                                      add sp, sp, #8
003dd488  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dd48c  18 87 4e 00                                      .byte 0x18, 0x87, 0x4e, 0x00
