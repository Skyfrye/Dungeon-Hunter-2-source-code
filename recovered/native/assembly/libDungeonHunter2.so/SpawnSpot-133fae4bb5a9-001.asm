; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ea6e4, declared_size=8, range_size=8, mode=arm
; class-group: SpawnSpot
; alias: _ZNK9SpawnSpot11IsUpdatableEv
; demangled: SpawnSpot::IsUpdatable() const
; decoder-mode: arm
003ea6e4  00 00 a0 e3                                      mov r0, #0
003ea6e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ea6ec, declared_size=8, range_size=8, mode=arm
; class-group: SpawnSpot
; alias: _ZNK9SpawnSpot9IsZonableEv
; demangled: SpawnSpot::IsZonable() const
; decoder-mode: arm
003ea6ec  01 00 a0 e3                                      mov r0, #1
003ea6f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ea6f4, declared_size=8, range_size=8, mode=arm
; class-group: SpawnSpot
; alias: _ZNK9SpawnSpot10IsAnimatedEv
; demangled: SpawnSpot::IsAnimated() const
; decoder-mode: arm
003ea6f4  00 00 a0 e3                                      mov r0, #0
003ea6f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ea6fc, declared_size=8, range_size=8, mode=arm
; class-group: SpawnSpot
; alias: _ZNK9SpawnSpot13IsInteractiveEP10GameObject
; demangled: SpawnSpot::IsInteractive(GameObject*) const
; decoder-mode: arm
003ea6fc  00 00 a0 e3                                      mov r0, #0
003ea700  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ea704, declared_size=44, range_size=44, mode=arm
; class-group: SpawnSpot
; alias: _ZN9SpawnSpot11PlaceObjectEP10GameObject
; demangled: SpawnSpot::PlaceObject(GameObject*)
; decoder-mode: arm
003ea704  70 40 2d e9                                      push {r4, r5, r6, lr}
003ea708  00 40 a0 e1                                      mov r4, r0
003ea70c  01 50 a0 e1                                      mov r5, r1
003ea710  01 00 a0 e1                                      mov r0, r1
003ea714  01 20 a0 e3                                      mov r2, #1
003ea718  16 1e 84 e2                                      add r1, r4, #0x160
003ea71c  a4 a5 fe eb                                      bl #0x393db4
003ea720  05 00 a0 e1                                      mov r0, r5
003ea724  5b 1f 84 e2                                      add r1, r4, #0x16c
003ea728  70 40 bd e8                                      pop {r4, r5, r6, lr}
003ea72c  5b a4 fe ea                                      b #0x3938a0

; FUNCTION 0x003ea7b8, declared_size=68, range_size=68, mode=arm
; class-group: SpawnSpot
; alias: _ZN9SpawnSpot9InitFinalEv
; demangled: SpawnSpot::InitFinal()
; decoder-mode: arm
003ea7b8  10 40 2d e9                                      push {r4, lr}
003ea7bc  00 40 a0 e1                                      mov r4, r0
003ea7c0  67 85 fe eb                                      bl #0x38bd64
003ea7c4  74 32 94 e5                                      ldr r3, [r4, #0x274]
003ea7c8  03 00 50 e1                                      cmp r0, r3
003ea7cc  00 00 00 ba                                      blt #0x3ea7d4
003ea7d0  10 80 bd e8                                      pop {r4, pc}
003ea7d4  04 00 a0 e1                                      mov r0, r4
003ea7d8  5a 89 fe eb                                      bl #0x38cd48
003ea7dc  04 00 a0 e1                                      mov r0, r4
003ea7e0  de 80 fe eb                                      bl #0x38ab60
003ea7e4  00 00 50 e3                                      cmp r0, #0
003ea7e8  f8 ff ff 0a                                      beq #0x3ea7d0
003ea7ec  cf ff ff eb                                      bl #0x3ea730
003ea7f0  04 10 a0 e1                                      mov r1, r4
003ea7f4  10 40 bd e8                                      pop {r4, lr}
003ea7f8  26 fe ff ea                                      b #0x3ea098

; FUNCTION 0x003ea7fc, declared_size=4, range_size=4, mode=arm
; class-group: SpawnSpot
; alias: _ZN9SpawnSpot8InitPostEv
; demangled: SpawnSpot::InitPost()
; decoder-mode: arm
003ea7fc  96 85 fe ea                                      b #0x38be5c

; FUNCTION 0x003ea800, declared_size=8, range_size=8, mode=arm
; class-group: SpawnSpot
; alias: _ZThn36_N9SpawnSpotD1Ev
; demangled: non-virtual thunk to SpawnSpot::~SpawnSpot()
; decoder-mode: arm
003ea800  24 00 40 e2                                      sub r0, r0, #0x24
003ea804  ff ff ff ea                                      b #0x3ea808

; FUNCTION 0x003ea808, declared_size=92, range_size=92, mode=arm
; class-group: SpawnSpot
; alias: _ZN9SpawnSpotD1Ev
; demangled: SpawnSpot::~SpawnSpot()
; decoder-mode: arm
003ea808  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
003ea80c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003ea810  10 40 2d e9                                      push {r4, lr}
003ea814  02 20 8f e0                                      add r2, pc, r2
003ea818  03 30 92 e7                                      ldr r3, [r2, r3]
003ea81c  00 40 a0 e1                                      mov r4, r0
003ea820  e4 20 83 e2                                      add r2, r3, #0xe4
003ea824  08 10 83 e2                                      add r1, r3, #8
003ea828  d8 30 83 e2                                      add r3, r3, #0xd8
003ea82c  04 30 80 e5                                      str r3, [r0, #4]
003ea830  24 20 80 e5                                      str r2, [r0, #0x24]
003ea834  00 10 80 e5                                      str r1, [r0]
003ea838  bc ff ff eb                                      bl #0x3ea730
003ea83c  04 10 a0 e1                                      mov r1, r4
003ea840  0d fa ff eb                                      bl #0x3e907c
003ea844  dd 0f 84 e2                                      add r0, r4, #0x374
003ea848  57 a4 fc eb                                      bl #0x3139ac
003ea84c  04 00 a0 e1                                      mov r0, r4
003ea850  c8 8a fe eb                                      bl #0x38d378
003ea854  04 00 a0 e1                                      mov r0, r4
003ea858  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ea85c  7c a2 5a 00 84 48 00 00                          .byte 0x7c, 0xa2, 0x5a, 0x00, 0x84, 0x48, 0x00, 0x00

; FUNCTION 0x003ea864, declared_size=8, range_size=8, mode=arm
; class-group: SpawnSpot
; alias: _ZThn36_N9SpawnSpotD0Ev
; demangled: non-virtual thunk to SpawnSpot::~SpawnSpot()
; decoder-mode: arm
003ea864  24 00 40 e2                                      sub r0, r0, #0x24
003ea868  ff ff ff ea                                      b #0x3ea86c

; FUNCTION 0x003ea86c, declared_size=28, range_size=28, mode=arm
; class-group: SpawnSpot
; alias: _ZN9SpawnSpotD0Ev
; demangled: SpawnSpot::~SpawnSpot()
; decoder-mode: arm
003ea86c  10 40 2d e9                                      push {r4, lr}
003ea870  00 40 a0 e1                                      mov r4, r0
003ea874  e3 ff ff eb                                      bl #0x3ea808
003ea878  04 00 a0 e1                                      mov r0, r4
003ea87c  ef 96 fc eb                                      bl #0x310440
003ea880  04 00 a0 e1                                      mov r0, r4
003ea884  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ea888, declared_size=92, range_size=92, mode=arm
; class-group: SpawnSpot
; alias: _ZN9SpawnSpotD2Ev
; demangled: SpawnSpot::~SpawnSpot()
; decoder-mode: arm
003ea888  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
003ea88c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003ea890  10 40 2d e9                                      push {r4, lr}
003ea894  02 20 8f e0                                      add r2, pc, r2
003ea898  03 30 92 e7                                      ldr r3, [r2, r3]
003ea89c  00 40 a0 e1                                      mov r4, r0
003ea8a0  e4 20 83 e2                                      add r2, r3, #0xe4
003ea8a4  08 10 83 e2                                      add r1, r3, #8
003ea8a8  d8 30 83 e2                                      add r3, r3, #0xd8
003ea8ac  04 30 80 e5                                      str r3, [r0, #4]
003ea8b0  24 20 80 e5                                      str r2, [r0, #0x24]
003ea8b4  00 10 80 e5                                      str r1, [r0]
003ea8b8  9c ff ff eb                                      bl #0x3ea730
003ea8bc  04 10 a0 e1                                      mov r1, r4
003ea8c0  ed f9 ff eb                                      bl #0x3e907c
003ea8c4  dd 0f 84 e2                                      add r0, r4, #0x374
003ea8c8  37 a4 fc eb                                      bl #0x3139ac
003ea8cc  04 00 a0 e1                                      mov r0, r4
003ea8d0  a8 8a fe eb                                      bl #0x38d378
003ea8d4  04 00 a0 e1                                      mov r0, r4
003ea8d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003ea8dc  fc a1 5a 00 84 48 00 00                          .byte 0xfc, 0xa1, 0x5a, 0x00, 0x84, 0x48, 0x00, 0x00

; FUNCTION 0x003ea8e4, declared_size=104, range_size=104, mode=arm
; class-group: SpawnSpot
; alias: _ZN9SpawnSpotC1EN10ObjectBase6GO_IDSE
; demangled: SpawnSpot::SpawnSpot(ObjectBase::GO_IDS)
; decoder-mode: arm
003ea8e4  70 40 2d e9                                      push {r4, r5, r6, lr}
003ea8e8  54 50 9f e5                                      ldr r5, [pc, #0x54]
003ea8ec  00 40 a0 e1                                      mov r4, r0
003ea8f0  a8 86 fe eb                                      bl #0x38c398
003ea8f4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003ea8f8  05 50 8f e0                                      add r5, pc, r5
003ea8fc  dd 2f 84 e2                                      add r2, r4, #0x374
003ea900  03 30 95 e7                                      ldr r3, [r5, r3]
003ea904  02 00 a0 e1                                      mov r0, r2
003ea908  84 23 84 e5                                      str r2, [r4, #0x384]
003ea90c  08 c0 83 e2                                      add ip, r3, #8
003ea910  e4 10 83 e2                                      add r1, r3, #0xe4
003ea914  d8 30 83 e2                                      add r3, r3, #0xd8
003ea918  04 30 84 e5                                      str r3, [r4, #4]
003ea91c  24 10 84 e5                                      str r1, [r4, #0x24]
003ea920  88 23 84 e5                                      str r2, [r4, #0x388]
003ea924  00 c0 84 e5                                      str ip, [r4]
003ea928  10 10 a0 e3                                      mov r1, #0x10
003ea92c  52 9b fc eb                                      bl #0x31167c
003ea930  84 33 94 e5                                      ldr r3, [r4, #0x384]
003ea934  00 20 a0 e3                                      mov r2, #0
003ea938  04 00 a0 e1                                      mov r0, r4
003ea93c  00 20 c3 e5                                      strb r2, [r3]
003ea940  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ea944  98 a1 5a 00 84 48 00 00                          .byte 0x98, 0xa1, 0x5a, 0x00, 0x84, 0x48, 0x00, 0x00

; FUNCTION 0x003ea94c, declared_size=104, range_size=104, mode=arm
; class-group: SpawnSpot
; alias: _ZN9SpawnSpotC2EN10ObjectBase6GO_IDSE
; demangled: SpawnSpot::SpawnSpot(ObjectBase::GO_IDS)
; decoder-mode: arm
003ea94c  70 40 2d e9                                      push {r4, r5, r6, lr}
003ea950  54 50 9f e5                                      ldr r5, [pc, #0x54]
003ea954  00 40 a0 e1                                      mov r4, r0
003ea958  8e 86 fe eb                                      bl #0x38c398
003ea95c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003ea960  05 50 8f e0                                      add r5, pc, r5
003ea964  dd 2f 84 e2                                      add r2, r4, #0x374
003ea968  03 30 95 e7                                      ldr r3, [r5, r3]
003ea96c  02 00 a0 e1                                      mov r0, r2
003ea970  84 23 84 e5                                      str r2, [r4, #0x384]
003ea974  08 c0 83 e2                                      add ip, r3, #8
003ea978  e4 10 83 e2                                      add r1, r3, #0xe4
003ea97c  d8 30 83 e2                                      add r3, r3, #0xd8
003ea980  04 30 84 e5                                      str r3, [r4, #4]
003ea984  24 10 84 e5                                      str r1, [r4, #0x24]
003ea988  88 23 84 e5                                      str r2, [r4, #0x388]
003ea98c  00 c0 84 e5                                      str ip, [r4]
003ea990  10 10 a0 e3                                      mov r1, #0x10
003ea994  38 9b fc eb                                      bl #0x31167c
003ea998  84 33 94 e5                                      ldr r3, [r4, #0x384]
003ea99c  00 20 a0 e3                                      mov r2, #0
003ea9a0  04 00 a0 e1                                      mov r0, r4
003ea9a4  00 20 c3 e5                                      strb r2, [r3]
003ea9a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ea9ac  30 a1 5a 00 84 48 00 00                          .byte 0x30, 0xa1, 0x5a, 0x00, 0x84, 0x48, 0x00, 0x00

; FUNCTION 0x003eaa90, declared_size=8, range_size=8, mode=arm
; class-group: SpawnSpot
; alias: _ZThn4_N9SpawnSpot17DeclarePropertiesEv
; demangled: non-virtual thunk to SpawnSpot::DeclareProperties()
; decoder-mode: arm
003eaa90  04 00 40 e2                                      sub r0, r0, #4
003eaa94  ff ff ff ea                                      b #0x3eaa98

; FUNCTION 0x003eaa98, declared_size=308, range_size=308, mode=arm
; class-group: SpawnSpot
; alias: _ZN9SpawnSpot17DeclarePropertiesEv
; demangled: SpawnSpot::DeclareProperties()
; decoder-mode: arm
003eaa98  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003eaa9c  14 51 9f e5                                      ldr r5, [pc, #0x114]
003eaaa0  14 31 9f e5                                      ldr r3, [pc, #0x114]
003eaaa4  3c d0 4d e2                                      sub sp, sp, #0x3c
003eaaa8  05 50 8f e0                                      add r5, pc, r5
003eaaac  03 90 95 e7                                      ldr sb, [r5, r3]
003eaab0  1c 70 8d e2                                      add r7, sp, #0x1c
003eaab4  00 a0 a0 e1                                      mov sl, r0
003eaab8  00 30 99 e5                                      ldr r3, [sb]
003eaabc  00 40 a0 e3                                      mov r4, #0
003eaac0  04 80 8d e2                                      add r8, sp, #4
003eaac4  34 30 8d e5                                      str r3, [sp, #0x34]
003eaac8  06 89 fe eb                                      bl #0x38cee8
003eaacc  07 00 a0 e1                                      mov r0, r7
003eaad0  10 10 a0 e3                                      mov r1, #0x10
003eaad4  2c 70 8d e5                                      str r7, [sp, #0x2c]
003eaad8  30 70 8d e5                                      str r7, [sp, #0x30]
003eaadc  e6 9a fc eb                                      bl #0x31167c
003eaae0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003eaae4  08 00 a0 e1                                      mov r0, r8
003eaae8  d0 60 9f e5                                      ldr r6, [pc, #0xd0]
003eaaec  00 40 c3 e5                                      strb r4, [r3]
003eaaf0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003eaaf4  30 10 9d e5                                      ldr r1, [sp, #0x30]
003eaaf8  14 80 8d e5                                      str r8, [sp, #0x14]
003eaafc  18 80 8d e5                                      str r8, [sp, #0x18]
003eab00  f8 9a fc eb                                      bl #0x3116e8
003eab04  04 10 a0 e1                                      mov r1, r4
003eab08  38 00 a0 e3                                      mov r0, #0x38
003eab0c  97 96 fc eb                                      bl #0x310570
003eab10  00 40 a0 e1                                      mov r4, r0
003eab14  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
003eab18  04 30 a0 e1                                      mov r3, r4
003eab1c  06 60 8f e0                                      add r6, pc, r6
003eab20  00 00 95 e7                                      ldr r0, [r5, r0]
003eab24  06 10 a0 e1                                      mov r1, r6
003eab28  05 20 86 e2                                      add r2, r6, #5
003eab2c  08 00 80 e2                                      add r0, r0, #8
003eab30  08 00 83 e4                                      str r0, [r3], #8
003eab34  03 00 a0 e1                                      mov r0, r3
003eab38  18 30 84 e5                                      str r3, [r4, #0x18]
003eab3c  1c 30 84 e5                                      str r3, [r4, #0x1c]
003eab40  e8 9a fc eb                                      bl #0x3116e8
003eab44  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003eab48  dd bf 8a e2                                      add fp, sl, #0x374
003eab4c  04 a0 8a e2                                      add sl, sl, #4
003eab50  03 30 95 e7                                      ldr r3, [r5, r3]
003eab54  04 00 a0 e1                                      mov r0, r4
003eab58  0b b0 6a e0                                      rsb fp, sl, fp
003eab5c  08 30 83 e2                                      add r3, r3, #8
003eab60  04 b0 84 e5                                      str fp, [r4, #4]
003eab64  20 30 80 e4                                      str r3, [r0], #0x20
003eab68  30 00 84 e5                                      str r0, [r4, #0x30]
003eab6c  34 00 84 e5                                      str r0, [r4, #0x34]
003eab70  18 10 9d e5                                      ldr r1, [sp, #0x18]
003eab74  14 20 9d e5                                      ldr r2, [sp, #0x14]
003eab78  da 9a fc eb                                      bl #0x3116e8
003eab7c  04 20 a0 e1                                      mov r2, r4
003eab80  06 10 a0 e1                                      mov r1, r6
003eab84  0a 00 a0 e1                                      mov r0, sl
003eab88  55 a4 04 eb                                      bl #0x513ce4
003eab8c  08 00 a0 e1                                      mov r0, r8
003eab90  85 a3 fc eb                                      bl #0x3139ac
003eab94  07 00 a0 e1                                      mov r0, r7
003eab98  83 a3 fc eb                                      bl #0x3139ac
003eab9c  34 20 9d e5                                      ldr r2, [sp, #0x34]
003eaba0  00 30 99 e5                                      ldr r3, [sb]
003eaba4  03 00 52 e1                                      cmp r2, r3
003eaba8  01 00 00 1a                                      bne #0x3eabb4
003eabac  3c d0 8d e2                                      add sp, sp, #0x3c
003eabb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003eabb4  d5 8d fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003eabb8  e8 9f 5a 00 ac 40 00 00 ec 6b 4f 00 30 23 00 00  .byte 0xe8, 0x9f, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0xec, 0x6b, 0x4f, 0x00, 0x30, 0x23, 0x00, 0x00
003eabc8  94 34 00 00                                      .byte 0x94, 0x34, 0x00, 0x00
