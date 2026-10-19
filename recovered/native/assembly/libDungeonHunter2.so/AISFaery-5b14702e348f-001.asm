; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003de2d0, declared_size=20, range_size=20, mode=arm
; class-group: AISFaery
; alias: _ZN8AISFaery20OnMasterInCloseRangeEv
; demangled: AISFaery::OnMasterInCloseRange()
; decoder-mode: arm
003de2d0  10 40 2d e9                                      push {r4, lr}
003de2d4  00 30 90 e5                                      ldr r3, [r0]
003de2d8  0f e0 a0 e1                                      mov lr, pc
003de2dc  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
003de2e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003de2e4, declared_size=52, range_size=52, mode=arm
; class-group: AISFaery
; alias: _ZN8AISFaeryD1Ev
; demangled: AISFaery::~AISFaery()
; decoder-mode: arm
003de2e4  24 30 9f e5                                      ldr r3, [pc, #0x24]
003de2e8  24 20 9f e5                                      ldr r2, [pc, #0x24]
003de2ec  10 40 2d e9                                      push {r4, lr}
003de2f0  03 30 8f e0                                      add r3, pc, r3
003de2f4  02 20 93 e7                                      ldr r2, [r3, r2]
003de2f8  00 40 a0 e1                                      mov r4, r0
003de2fc  08 20 82 e2                                      add r2, r2, #8
003de300  00 20 80 e5                                      str r2, [r0]
003de304  f9 eb ff eb                                      bl #0x3d92f0
003de308  04 00 a0 e1                                      mov r0, r4
003de30c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003de310  a0 67 5b 00 ac 2a 00 00                          .byte 0xa0, 0x67, 0x5b, 0x00, 0xac, 0x2a, 0x00, 0x00

; FUNCTION 0x003de318, declared_size=300, range_size=300, mode=arm
; class-group: AISFaery
; alias: _ZN8AISFaery20OnMasterInMeleeRangeEv
; demangled: AISFaery::OnMasterInMeleeRange()
; decoder-mode: arm
003de318  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003de31c  00 50 a0 e1                                      mov r5, r0
003de320  98 00 90 e5                                      ldr r0, [r0, #0x98]
003de324  18 d0 4d e2                                      sub sp, sp, #0x18
003de328  00 10 a0 e3                                      mov r1, #0
003de32c  4f 0e 80 e2                                      add r0, r0, #0x4f0
003de330  0c 00 80 e2                                      add r0, r0, #0xc
003de334  c9 87 ff eb                                      bl #0x3c0260
003de338  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
003de33c  00 00 50 e3                                      cmp r0, #0
003de340  04 40 8f e0                                      add r4, pc, r4
003de344  3a 00 00 0a                                      beq #0x3de434
003de348  98 30 95 e5                                      ldr r3, [r5, #0x98]
003de34c  18 64 93 e5                                      ldr r6, [r3, #0x418]
003de350  00 00 56 e3                                      cmp r6, #0
003de354  36 00 00 0a                                      beq #0x3de434
003de358  4f 0e 86 e2                                      add r0, r6, #0x4f0
003de35c  0c 00 80 e2                                      add r0, r0, #0xc
003de360  00 10 a0 e3                                      mov r1, #0
003de364  bd 87 ff eb                                      bl #0x3c0260
003de368  00 00 50 e3                                      cmp r0, #0
003de36c  30 00 00 0a                                      beq #0x3de434
003de370  00 30 a0 e3                                      mov r3, #0
003de374  06 00 a0 e1                                      mov r0, r6
003de378  0c 10 8d e2                                      add r1, sp, #0xc
003de37c  14 30 8d e5                                      str r3, [sp, #0x14]
003de380  0c 30 8d e5                                      str r3, [sp, #0xc]
003de384  10 30 8d e5                                      str r3, [sp, #0x10]
003de388  d5 d5 fe eb                                      bl #0x393ae4
003de38c  ac 30 9f e5                                      ldr r3, [pc, #0xac]
003de390  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003de394  10 80 9d e5                                      ldr r8, [sp, #0x10]
003de398  03 30 94 e7                                      ldr r3, [r4, r3]
003de39c  02 01 80 e2                                      add r0, r0, #0x80000000
003de3a0  02 81 88 e2                                      add r8, r8, #0x80000000
003de3a4  00 40 93 e5                                      ldr r4, [r3]
003de3a8  14 70 9d e5                                      ldr r7, [sp, #0x14]
003de3ac  04 10 a0 e1                                      mov r1, r4
003de3b0  6d c2 fc eb                                      bl #0x30ed6c
003de3b4  04 10 a0 e1                                      mov r1, r4
003de3b8  0c 00 8d e5                                      str r0, [sp, #0xc]
003de3bc  08 00 a0 e1                                      mov r0, r8
003de3c0  69 c2 fc eb                                      bl #0x30ed6c
003de3c4  02 71 87 e2                                      add r7, r7, #0x80000000
003de3c8  04 10 a0 e1                                      mov r1, r4
003de3cc  10 00 8d e5                                      str r0, [sp, #0x10]
003de3d0  07 00 a0 e1                                      mov r0, r7
003de3d4  64 c2 fc eb                                      bl #0x30ed6c
003de3d8  98 30 95 e5                                      ldr r3, [r5, #0x98]
003de3dc  14 00 8d e5                                      str r0, [sp, #0x14]
003de3e0  06 00 a0 e1                                      mov r0, r6
003de3e4  78 73 93 e5                                      ldr r7, [r3, #0x378]
003de3e8  7b d4 fe eb                                      bl #0x3935dc
003de3ec  10 10 9d e5                                      ldr r1, [sp, #0x10]
003de3f0  00 40 a0 e1                                      mov r4, r0
003de3f4  04 00 90 e5                                      ldr r0, [r0, #4]
003de3f8  e9 c1 fc eb                                      bl #0x30eba4
003de3fc  14 10 9d e5                                      ldr r1, [sp, #0x14]
003de400  00 60 a0 e1                                      mov r6, r0
003de404  08 00 94 e5                                      ldr r0, [r4, #8]
003de408  e5 c1 fc eb                                      bl #0x30eba4
003de40c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003de410  00 50 a0 e1                                      mov r5, r0
003de414  00 00 94 e5                                      ldr r0, [r4]
003de418  e1 c1 fc eb                                      bl #0x30eba4
003de41c  0d 10 a0 e1                                      mov r1, sp
003de420  00 00 8d e5                                      str r0, [sp]
003de424  07 00 a0 e1                                      mov r0, r7
003de428  04 60 8d e5                                      str r6, [sp, #4]
003de42c  08 50 8d e5                                      str r5, [sp, #8]
003de430  fd 9b 00 eb                                      bl #0x40542c
003de434  18 d0 8d e2                                      add sp, sp, #0x18
003de438  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003de43c  50 67 5b 00 dc 27 00 00                          .byte 0x50, 0x67, 0x5b, 0x00, 0xdc, 0x27, 0x00, 0x00

; FUNCTION 0x003de444, declared_size=12, range_size=12, mode=arm
; class-group: AISFaery
; alias: _ZN8AISFaery21OnMasterInRangedRangeEv
; demangled: AISFaery::OnMasterInRangedRange()
; decoder-mode: arm
003de444  98 30 90 e5                                      ldr r3, [r0, #0x98]
003de448  78 03 93 e5                                      ldr r0, [r3, #0x378]
003de44c  52 9c 00 ea                                      b #0x40559c

; FUNCTION 0x003de450, declared_size=120, range_size=120, mode=arm
; class-group: AISFaery
; alias: _ZN8AISFaery18OnMasterOutOfRangeEv
; demangled: AISFaery::OnMasterOutOfRange()
; decoder-mode: arm
003de450  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003de454  98 30 90 e5                                      ldr r3, [r0, #0x98]
003de458  10 d0 4d e2                                      sub sp, sp, #0x10
003de45c  00 40 a0 e1                                      mov r4, r0
003de460  18 04 93 e5                                      ldr r0, [r3, #0x418]
003de464  5c d4 fe eb                                      bl #0x3935dc
003de468  00 50 a0 e1                                      mov r5, r0
003de46c  98 00 94 e5                                      ldr r0, [r4, #0x98]
003de470  59 d4 fe eb                                      bl #0x3935dc
003de474  04 10 90 e5                                      ldr r1, [r0, #4]
003de478  00 60 a0 e1                                      mov r6, r0
003de47c  04 00 95 e5                                      ldr r0, [r5, #4]
003de480  c9 bf fc eb                                      bl #0x30e3ac
003de484  08 10 96 e5                                      ldr r1, [r6, #8]
003de488  00 80 a0 e1                                      mov r8, r0
003de48c  08 00 95 e5                                      ldr r0, [r5, #8]
003de490  c5 bf fc eb                                      bl #0x30e3ac
003de494  00 10 96 e5                                      ldr r1, [r6]
003de498  00 70 a0 e1                                      mov r7, r0
003de49c  00 00 95 e5                                      ldr r0, [r5]
003de4a0  c1 bf fc eb                                      bl #0x30e3ac
003de4a4  98 30 94 e5                                      ldr r3, [r4, #0x98]
003de4a8  04 00 8d e5                                      str r0, [sp, #4]
003de4ac  08 80 8d e5                                      str r8, [sp, #8]
003de4b0  0c 70 8d e5                                      str r7, [sp, #0xc]
003de4b4  78 03 93 e5                                      ldr r0, [r3, #0x378]
003de4b8  04 10 8d e2                                      add r1, sp, #4
003de4bc  ac 9b 00 eb                                      bl #0x405374
003de4c0  10 d0 8d e2                                      add sp, sp, #0x10
003de4c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003de4c8, declared_size=36, range_size=36, mode=arm
; class-group: AISFaery
; alias: _ZN8AISFaery18OnMasterOutOfSightEv
; demangled: AISFaery::OnMasterOutOfSight()
; decoder-mode: arm
003de4c8  10 40 2d e9                                      push {r4, lr}
003de4cc  98 30 90 e5                                      ldr r3, [r0, #0x98]
003de4d0  18 04 93 e5                                      ldr r0, [r3, #0x418]
003de4d4  78 43 93 e5                                      ldr r4, [r3, #0x378]
003de4d8  3f d4 fe eb                                      bl #0x3935dc
003de4dc  00 10 a0 e1                                      mov r1, r0
003de4e0  04 00 a0 e1                                      mov r0, r4
003de4e4  10 40 bd e8                                      pop {r4, lr}
003de4e8  8a 9b 00 ea                                      b #0x405318

; FUNCTION 0x003de4ec, declared_size=88, range_size=88, mode=arm
; class-group: AISFaery
; alias: _ZN8AISFaery15OnFriendSpottedEP9Character
; demangled: AISFaery::OnFriendSpotted(Character*)
; decoder-mode: arm
003de4ec  70 40 2d e9                                      push {r4, r5, r6, lr}
003de4f0  00 40 a0 e1                                      mov r4, r0
003de4f4  98 00 90 e5                                      ldr r0, [r0, #0x98]
003de4f8  01 50 a0 e1                                      mov r5, r1
003de4fc  18 34 90 e5                                      ldr r3, [r0, #0x418]
003de500  00 00 53 e3                                      cmp r3, #0
003de504  00 00 00 0a                                      beq #0x3de50c
003de508  70 80 bd e8                                      pop {r4, r5, r6, pc}
003de50c  20 34 91 e5                                      ldr r3, [r1, #0x420]
003de510  00 00 53 e3                                      cmp r3, #0
003de514  fb ff ff 1a                                      bne #0x3de508
003de518  f2 0f 80 e2                                      add r0, r0, #0x3c8
003de51c  17 da ff eb                                      bl #0x3d4d80
003de520  98 30 94 e5                                      ldr r3, [r4, #0x98]
003de524  05 00 a0 e1                                      mov r0, r5
003de528  00 10 e0 e3                                      mvn r1, #0
003de52c  20 34 85 e5                                      str r3, [r5, #0x420]
003de530  15 75 ff eb                                      bl #0x3bb98c
003de534  00 10 a0 e1                                      mov r1, r0
003de538  05 00 a0 e1                                      mov r0, r5
003de53c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003de540  15 41 ff ea                                      b #0x3ae99c

; FUNCTION 0x003de544, declared_size=104, range_size=104, mode=arm
; class-group: AISFaery
; alias: _ZN8AISFaery8OnUpdateEv
; demangled: AISFaery::OnUpdate()
; decoder-mode: arm
003de544  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003de548  00 40 a0 e1                                      mov r4, r0
003de54c  91 f8 ff eb                                      bl #0x3dc798
003de550  98 30 94 e5                                      ldr r3, [r4, #0x98]
003de554  18 54 93 e5                                      ldr r5, [r3, #0x418]
003de558  00 00 55 e3                                      cmp r5, #0
003de55c  02 00 00 0a                                      beq #0x3de56c
003de560  d8 62 93 e5                                      ldr r6, [r3, #0x2d8]
003de564  00 00 56 e3                                      cmp r6, #0
003de568  00 00 00 1a                                      bne #0x3de570
003de56c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003de570  05 00 a0 e1                                      mov r0, r5
003de574  00 10 e0 e3                                      mvn r1, #0
003de578  c4 70 94 e5                                      ldr r7, [r4, #0xc4]
003de57c  02 75 ff eb                                      bl #0x3bb98c
003de580  00 00 57 e1                                      cmp r7, r0
003de584  f8 ff ff 0a                                      beq #0x3de56c
003de588  05 00 a0 e1                                      mov r0, r5
003de58c  00 10 e0 e3                                      mvn r1, #0
003de590  fd 74 ff eb                                      bl #0x3bb98c
003de594  00 10 a0 e3                                      mov r1, #0
003de598  00 20 a0 e1                                      mov r2, r0
003de59c  c4 00 84 e5                                      str r0, [r4, #0xc4]
003de5a0  06 00 a0 e1                                      mov r0, r6
003de5a4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003de5a8  1a 4a 02 ea                                      b #0x470e18

; FUNCTION 0x003de688, declared_size=60, range_size=60, mode=arm
; class-group: AISFaery
; alias: _ZN8AISFaeryD0Ev
; demangled: AISFaery::~AISFaery()
; decoder-mode: arm
003de688  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003de68c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003de690  10 40 2d e9                                      push {r4, lr}
003de694  03 30 8f e0                                      add r3, pc, r3
003de698  02 20 93 e7                                      ldr r2, [r3, r2]
003de69c  00 40 a0 e1                                      mov r4, r0
003de6a0  08 20 82 e2                                      add r2, r2, #8
003de6a4  00 20 80 e5                                      str r2, [r0]
003de6a8  10 eb ff eb                                      bl #0x3d92f0
003de6ac  04 00 a0 e1                                      mov r0, r4
003de6b0  62 c7 fc eb                                      bl #0x310440
003de6b4  04 00 a0 e1                                      mov r0, r4
003de6b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003de6bc  fc 63 5b 00 ac 2a 00 00                          .byte 0xfc, 0x63, 0x5b, 0x00, 0xac, 0x2a, 0x00, 0x00
