; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ea20c, declared_size=8, range_size=8, mode=arm
; class-group: SpawnPoint
; alias: _ZNK10SpawnPoint11IsUpdatableEv
; demangled: SpawnPoint::IsUpdatable() const
; decoder-mode: arm
003ea20c  00 00 a0 e3                                      mov r0, #0
003ea210  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ea214, declared_size=8, range_size=8, mode=arm
; class-group: SpawnPoint
; alias: _ZNK10SpawnPoint9IsZonableEv
; demangled: SpawnPoint::IsZonable() const
; decoder-mode: arm
003ea214  00 00 a0 e3                                      mov r0, #0
003ea218  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ea21c, declared_size=8, range_size=8, mode=arm
; class-group: SpawnPoint
; alias: _ZNK10SpawnPoint10IsAnimatedEv
; demangled: SpawnPoint::IsAnimated() const
; decoder-mode: arm
003ea21c  00 00 a0 e3                                      mov r0, #0
003ea220  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ea224, declared_size=8, range_size=8, mode=arm
; class-group: SpawnPoint
; alias: _ZNK10SpawnPoint13IsInteractiveEP10GameObject
; demangled: SpawnPoint::IsInteractive(GameObject*) const
; decoder-mode: arm
003ea224  00 00 a0 e3                                      mov r0, #0
003ea228  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ea22c, declared_size=96, range_size=96, mode=arm
; class-group: SpawnPoint
; alias: _ZN10SpawnPoint11PlaceObjectEP10GameObject
; demangled: SpawnPoint::PlaceObject(GameObject*)
; decoder-mode: arm
003ea22c  70 40 2d e9                                      push {r4, r5, r6, lr}
003ea230  01 50 a0 e1                                      mov r5, r1
003ea234  00 40 a0 e1                                      mov r4, r0
003ea238  16 1e 80 e2                                      add r1, r0, #0x160
003ea23c  01 20 a0 e3                                      mov r2, #1
003ea240  05 00 a0 e1                                      mov r0, r5
003ea244  da a6 fe eb                                      bl #0x393db4
003ea248  5b 1f 84 e2                                      add r1, r4, #0x16c
003ea24c  05 00 a0 e1                                      mov r0, r5
003ea250  92 a5 fe eb                                      bl #0x3938a0
003ea254  90 13 94 e5                                      ldr r1, [r4, #0x390]
003ea258  24 30 9f e5                                      ldr r3, [pc, #0x24]
003ea25c  01 00 71 e3                                      cmn r1, #1
003ea260  03 30 8f e0                                      add r3, pc, r3
003ea264  05 00 00 0a                                      beq #0x3ea280
003ea268  18 00 9f e5                                      ldr r0, [pc, #0x18]
003ea26c  64 20 94 e5                                      ldr r2, [r4, #0x64]
003ea270  00 00 93 e7                                      ldr r0, [r3, r0]
003ea274  00 30 a0 e3                                      mov r3, #0
003ea278  70 40 bd e8                                      pop {r4, r5, r6, lr}
003ea27c  cf d8 01 ea                                      b #0x4605c0
003ea280  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ea284  30 a8 5a 00 20 1a 00 00                          .byte 0x30, 0xa8, 0x5a, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x003ea28c, declared_size=56, range_size=56, mode=arm
; class-group: SpawnPoint
; alias: _ZN10SpawnPoint8InitPostEv
; demangled: SpawnPoint::InitPost()
; decoder-mode: arm
003ea28c  70 40 2d e9                                      push {r4, r5, r6, lr}
003ea290  24 40 9f e5                                      ldr r4, [pc, #0x24]
003ea294  00 50 a0 e1                                      mov r5, r0
003ea298  ef 86 fe eb                                      bl #0x38be5c
003ea29c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
003ea2a0  04 40 8f e0                                      add r4, pc, r4
003ea2a4  8c 13 95 e5                                      ldr r1, [r5, #0x38c]
003ea2a8  03 00 94 e7                                      ldr r0, [r4, r3]
003ea2ac  00 20 a0 e3                                      mov r2, #0
003ea2b0  ce bb 01 eb                                      bl #0x4591f0
003ea2b4  90 03 85 e5                                      str r0, [r5, #0x390]
003ea2b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ea2bc  f0 a7 5a 00 20 1a 00 00                          .byte 0xf0, 0xa7, 0x5a, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x003ea2c4, declared_size=8, range_size=8, mode=arm
; class-group: SpawnPoint
; alias: _ZThn36_N10SpawnPointD1Ev
; demangled: non-virtual thunk to SpawnPoint::~SpawnPoint()
; decoder-mode: arm
003ea2c4  24 00 40 e2                                      sub r0, r0, #0x24
003ea2c8  ff ff ff ea                                      b #0x3ea2cc

; FUNCTION 0x003ea2cc, declared_size=76, range_size=76, mode=arm
; class-group: SpawnPoint
; alias: _ZN10SpawnPointD1Ev
; demangled: SpawnPoint::~SpawnPoint()
; decoder-mode: arm
003ea2cc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003ea2d0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003ea2d4  10 40 2d e9                                      push {r4, lr}
003ea2d8  02 20 8f e0                                      add r2, pc, r2
003ea2dc  03 30 92 e7                                      ldr r3, [r2, r3]
003ea2e0  00 40 a0 e1                                      mov r4, r0
003ea2e4  de 0f 80 e2                                      add r0, r0, #0x378
003ea2e8  e4 20 83 e2                                      add r2, r3, #0xe4
003ea2ec  08 10 83 e2                                      add r1, r3, #8
003ea2f0  d8 30 83 e2                                      add r3, r3, #0xd8
003ea2f4  0a 00 84 e8                                      stm r4, {r1, r3}
003ea2f8  24 20 84 e5                                      str r2, [r4, #0x24]
003ea2fc  aa a5 fc eb                                      bl #0x3139ac
003ea300  04 00 a0 e1                                      mov r0, r4
003ea304  1b 8c fe eb                                      bl #0x38d378
003ea308  04 00 a0 e1                                      mov r0, r4
003ea30c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ea310  b8 a7 5a 00 9c 30 00 00                          .byte 0xb8, 0xa7, 0x5a, 0x00, 0x9c, 0x30, 0x00, 0x00

; FUNCTION 0x003ea318, declared_size=8, range_size=8, mode=arm
; class-group: SpawnPoint
; alias: _ZThn36_N10SpawnPointD0Ev
; demangled: non-virtual thunk to SpawnPoint::~SpawnPoint()
; decoder-mode: arm
003ea318  24 00 40 e2                                      sub r0, r0, #0x24
003ea31c  ff ff ff ea                                      b #0x3ea320

; FUNCTION 0x003ea320, declared_size=28, range_size=28, mode=arm
; class-group: SpawnPoint
; alias: _ZN10SpawnPointD0Ev
; demangled: SpawnPoint::~SpawnPoint()
; decoder-mode: arm
003ea320  10 40 2d e9                                      push {r4, lr}
003ea324  00 40 a0 e1                                      mov r4, r0
003ea328  e7 ff ff eb                                      bl #0x3ea2cc
003ea32c  04 00 a0 e1                                      mov r0, r4
003ea330  42 98 fc eb                                      bl #0x310440
003ea334  04 00 a0 e1                                      mov r0, r4
003ea338  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ea33c, declared_size=76, range_size=76, mode=arm
; class-group: SpawnPoint
; alias: _ZN10SpawnPointD2Ev
; demangled: SpawnPoint::~SpawnPoint()
; decoder-mode: arm
003ea33c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003ea340  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003ea344  10 40 2d e9                                      push {r4, lr}
003ea348  02 20 8f e0                                      add r2, pc, r2
003ea34c  03 30 92 e7                                      ldr r3, [r2, r3]
003ea350  00 40 a0 e1                                      mov r4, r0
003ea354  de 0f 80 e2                                      add r0, r0, #0x378
003ea358  e4 20 83 e2                                      add r2, r3, #0xe4
003ea35c  08 10 83 e2                                      add r1, r3, #8
003ea360  d8 30 83 e2                                      add r3, r3, #0xd8
003ea364  0a 00 84 e8                                      stm r4, {r1, r3}
003ea368  24 20 84 e5                                      str r2, [r4, #0x24]
003ea36c  8e a5 fc eb                                      bl #0x3139ac
003ea370  04 00 a0 e1                                      mov r0, r4
003ea374  ff 8b fe eb                                      bl #0x38d378
003ea378  04 00 a0 e1                                      mov r0, r4
003ea37c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ea380  48 a7 5a 00 9c 30 00 00                          .byte 0x48, 0xa7, 0x5a, 0x00, 0x9c, 0x30, 0x00, 0x00

; FUNCTION 0x003ea388, declared_size=116, range_size=116, mode=arm
; class-group: SpawnPoint
; alias: _ZN10SpawnPointC1EN10ObjectBase6GO_IDSE
; demangled: SpawnPoint::SpawnPoint(ObjectBase::GO_IDS)
; decoder-mode: arm
003ea388  70 40 2d e9                                      push {r4, r5, r6, lr}
003ea38c  60 50 9f e5                                      ldr r5, [pc, #0x60]
003ea390  00 40 a0 e1                                      mov r4, r0
003ea394  ff 87 fe eb                                      bl #0x38c398
003ea398  58 30 9f e5                                      ldr r3, [pc, #0x58]
003ea39c  05 50 8f e0                                      add r5, pc, r5
003ea3a0  de 2f 84 e2                                      add r2, r4, #0x378
003ea3a4  03 30 95 e7                                      ldr r3, [r5, r3]
003ea3a8  00 60 e0 e3                                      mvn r6, #0
003ea3ac  02 00 a0 e1                                      mov r0, r2
003ea3b0  08 c0 83 e2                                      add ip, r3, #8
003ea3b4  e4 10 83 e2                                      add r1, r3, #0xe4
003ea3b8  d8 30 83 e2                                      add r3, r3, #0xd8
003ea3bc  04 30 84 e5                                      str r3, [r4, #4]
003ea3c0  24 10 84 e5                                      str r1, [r4, #0x24]
003ea3c4  88 23 84 e5                                      str r2, [r4, #0x388]
003ea3c8  8c 23 84 e5                                      str r2, [r4, #0x38c]
003ea3cc  00 c0 84 e5                                      str ip, [r4]
003ea3d0  74 63 84 e5                                      str r6, [r4, #0x374]
003ea3d4  10 10 a0 e3                                      mov r1, #0x10
003ea3d8  a7 9c fc eb                                      bl #0x31167c
003ea3dc  88 33 94 e5                                      ldr r3, [r4, #0x388]
003ea3e0  00 20 a0 e3                                      mov r2, #0
003ea3e4  04 00 a0 e1                                      mov r0, r4
003ea3e8  00 20 c3 e5                                      strb r2, [r3]
003ea3ec  90 63 84 e5                                      str r6, [r4, #0x390]
003ea3f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ea3f4  f4 a6 5a 00 9c 30 00 00                          .byte 0xf4, 0xa6, 0x5a, 0x00, 0x9c, 0x30, 0x00, 0x00

; FUNCTION 0x003ea3fc, declared_size=116, range_size=116, mode=arm
; class-group: SpawnPoint
; alias: _ZN10SpawnPointC2EN10ObjectBase6GO_IDSE
; demangled: SpawnPoint::SpawnPoint(ObjectBase::GO_IDS)
; decoder-mode: arm
003ea3fc  70 40 2d e9                                      push {r4, r5, r6, lr}
003ea400  60 50 9f e5                                      ldr r5, [pc, #0x60]
003ea404  00 40 a0 e1                                      mov r4, r0
003ea408  e2 87 fe eb                                      bl #0x38c398
003ea40c  58 30 9f e5                                      ldr r3, [pc, #0x58]
003ea410  05 50 8f e0                                      add r5, pc, r5
003ea414  de 2f 84 e2                                      add r2, r4, #0x378
003ea418  03 30 95 e7                                      ldr r3, [r5, r3]
003ea41c  00 60 e0 e3                                      mvn r6, #0
003ea420  02 00 a0 e1                                      mov r0, r2
003ea424  08 c0 83 e2                                      add ip, r3, #8
003ea428  e4 10 83 e2                                      add r1, r3, #0xe4
003ea42c  d8 30 83 e2                                      add r3, r3, #0xd8
003ea430  04 30 84 e5                                      str r3, [r4, #4]
003ea434  24 10 84 e5                                      str r1, [r4, #0x24]
003ea438  88 23 84 e5                                      str r2, [r4, #0x388]
003ea43c  8c 23 84 e5                                      str r2, [r4, #0x38c]
003ea440  00 c0 84 e5                                      str ip, [r4]
003ea444  74 63 84 e5                                      str r6, [r4, #0x374]
003ea448  10 10 a0 e3                                      mov r1, #0x10
003ea44c  8a 9c fc eb                                      bl #0x31167c
003ea450  88 33 94 e5                                      ldr r3, [r4, #0x388]
003ea454  00 20 a0 e3                                      mov r2, #0
003ea458  04 00 a0 e1                                      mov r0, r4
003ea45c  00 20 c3 e5                                      strb r2, [r3]
003ea460  90 63 84 e5                                      str r6, [r4, #0x390]
003ea464  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ea468  80 a6 5a 00 9c 30 00 00                          .byte 0x80, 0xa6, 0x5a, 0x00, 0x9c, 0x30, 0x00, 0x00

; FUNCTION 0x003ea54c, declared_size=8, range_size=8, mode=arm
; class-group: SpawnPoint
; alias: _ZThn4_N10SpawnPoint17DeclarePropertiesEv
; demangled: non-virtual thunk to SpawnPoint::DeclareProperties()
; decoder-mode: arm
003ea54c  04 00 40 e2                                      sub r0, r0, #4
003ea550  ff ff ff ea                                      b #0x3ea554

; FUNCTION 0x003ea554, declared_size=400, range_size=400, mode=arm
; class-group: SpawnPoint
; alias: _ZN10SpawnPoint17DeclarePropertiesEv
; demangled: SpawnPoint::DeclareProperties()
; decoder-mode: arm
003ea554  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003ea558  68 41 9f e5                                      ldr r4, [pc, #0x168]
003ea55c  68 31 9f e5                                      ldr r3, [pc, #0x168]
003ea560  4c d0 4d e2                                      sub sp, sp, #0x4c
003ea564  04 40 8f e0                                      add r4, pc, r4
003ea568  03 30 94 e7                                      ldr r3, [r4, r3]
003ea56c  04 a0 80 e2                                      add sl, r0, #4
003ea570  00 90 a0 e1                                      mov sb, r0
003ea574  00 20 93 e5                                      ldr r2, [r3]
003ea578  dd 8f 80 e2                                      add r8, r0, #0x374
003ea57c  04 30 8d e5                                      str r3, [sp, #4]
003ea580  44 20 8d e5                                      str r2, [sp, #0x44]
003ea584  57 8a fe eb                                      bl #0x38cee8
003ea588  00 10 a0 e3                                      mov r1, #0
003ea58c  24 00 a0 e3                                      mov r0, #0x24
003ea590  f6 97 fc eb                                      bl #0x310570
003ea594  34 b1 9f e5                                      ldr fp, [pc, #0x134]
003ea598  34 71 9f e5                                      ldr r7, [pc, #0x134]
003ea59c  00 50 a0 e1                                      mov r5, r0
003ea5a0  0b b0 94 e7                                      ldr fp, [r4, fp]
003ea5a4  07 70 8f e0                                      add r7, pc, r7
003ea5a8  07 10 a0 e1                                      mov r1, r7
003ea5ac  08 b0 8b e2                                      add fp, fp, #8
003ea5b0  10 20 8d e2                                      add r2, sp, #0x10
003ea5b4  08 b0 80 e4                                      str fp, [r0], #8
003ea5b8  cb a6 fc eb                                      bl #0x3140ec
003ea5bc  14 21 9f e5                                      ldr r2, [pc, #0x114]
003ea5c0  08 80 6a e0                                      rsb r8, sl, r8
003ea5c4  00 10 e0 e3                                      mvn r1, #0
003ea5c8  02 20 94 e7                                      ldr r2, [r4, r2]
003ea5cc  2c 60 8d e2                                      add r6, sp, #0x2c
003ea5d0  04 80 85 e5                                      str r8, [r5, #4]
003ea5d4  08 20 82 e2                                      add r2, r2, #8
003ea5d8  20 10 85 e5                                      str r1, [r5, #0x20]
003ea5dc  00 20 85 e5                                      str r2, [r5]
003ea5e0  07 10 a0 e1                                      mov r1, r7
003ea5e4  05 20 a0 e1                                      mov r2, r5
003ea5e8  0a 00 a0 e1                                      mov r0, sl
003ea5ec  bc a5 04 eb                                      bl #0x513ce4
003ea5f0  06 00 a0 e1                                      mov r0, r6
003ea5f4  10 10 a0 e3                                      mov r1, #0x10
003ea5f8  3c 60 8d e5                                      str r6, [sp, #0x3c]
003ea5fc  40 60 8d e5                                      str r6, [sp, #0x40]
003ea600  1d 9c fc eb                                      bl #0x31167c
003ea604  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003ea608  00 50 a0 e3                                      mov r5, #0
003ea60c  14 70 8d e2                                      add r7, sp, #0x14
003ea610  00 50 c2 e5                                      strb r5, [r2]
003ea614  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003ea618  07 00 a0 e1                                      mov r0, r7
003ea61c  40 10 9d e5                                      ldr r1, [sp, #0x40]
003ea620  24 70 8d e5                                      str r7, [sp, #0x24]
003ea624  28 70 8d e5                                      str r7, [sp, #0x28]
003ea628  2e 9c fc eb                                      bl #0x3116e8
003ea62c  05 10 a0 e1                                      mov r1, r5
003ea630  38 00 a0 e3                                      mov r0, #0x38
003ea634  cd 97 fc eb                                      bl #0x310570
003ea638  9c 80 9f e5                                      ldr r8, [pc, #0x9c]
003ea63c  00 50 a0 e1                                      mov r5, r0
003ea640  0c 20 8d e2                                      add r2, sp, #0xc
003ea644  08 80 8f e0                                      add r8, pc, r8
003ea648  08 10 a0 e1                                      mov r1, r8
003ea64c  08 b0 80 e4                                      str fp, [r0], #8
003ea650  a5 a6 fc eb                                      bl #0x3140ec
003ea654  84 20 9f e5                                      ldr r2, [pc, #0x84]
003ea658  de 9f 89 e2                                      add sb, sb, #0x378
003ea65c  05 00 a0 e1                                      mov r0, r5
003ea660  02 20 94 e7                                      ldr r2, [r4, r2]
003ea664  09 90 6a e0                                      rsb sb, sl, sb
003ea668  04 90 85 e5                                      str sb, [r5, #4]
003ea66c  08 20 82 e2                                      add r2, r2, #8
003ea670  20 20 80 e4                                      str r2, [r0], #0x20
003ea674  30 00 85 e5                                      str r0, [r5, #0x30]
003ea678  34 00 85 e5                                      str r0, [r5, #0x34]
003ea67c  28 10 9d e5                                      ldr r1, [sp, #0x28]
003ea680  24 20 9d e5                                      ldr r2, [sp, #0x24]
003ea684  17 9c fc eb                                      bl #0x3116e8
003ea688  05 20 a0 e1                                      mov r2, r5
003ea68c  08 10 a0 e1                                      mov r1, r8
003ea690  0a 00 a0 e1                                      mov r0, sl
003ea694  92 a5 04 eb                                      bl #0x513ce4
003ea698  07 00 a0 e1                                      mov r0, r7
003ea69c  c2 a4 fc eb                                      bl #0x3139ac
003ea6a0  06 00 a0 e1                                      mov r0, r6
003ea6a4  c0 a4 fc eb                                      bl #0x3139ac
003ea6a8  04 30 9d e5                                      ldr r3, [sp, #4]
003ea6ac  44 20 9d e5                                      ldr r2, [sp, #0x44]
003ea6b0  00 30 93 e5                                      ldr r3, [r3]
003ea6b4  03 00 52 e1                                      cmp r2, r3
003ea6b8  01 00 00 1a                                      bne #0x3ea6c4
003ea6bc  4c d0 8d e2                                      add sp, sp, #0x4c
003ea6c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003ea6c4  11 8f fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003ea6c8  2c a5 5a 00 ac 40 00 00 30 23 00 00 cc 87 4d 00  .byte 0x2c, 0xa5, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x23, 0x00, 0x00, 0xcc, 0x87, 0x4d, 0x00
003ea6d8  90 25 00 00 94 73 4d 00 94 34 00 00              .byte 0x90, 0x25, 0x00, 0x00, 0x94, 0x73, 0x4d, 0x00, 0x94, 0x34, 0x00, 0x00
