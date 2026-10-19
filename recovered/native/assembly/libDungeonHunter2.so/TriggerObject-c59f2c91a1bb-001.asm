; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00399318, declared_size=8, range_size=8, mode=arm
; class-group: TriggerObject
; alias: _ZNK13TriggerObject11IsUpdatableEv
; demangled: TriggerObject::IsUpdatable() const
; decoder-mode: arm
00399318  01 00 a0 e3                                      mov r0, #1
0039931c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00399320, declared_size=8, range_size=8, mode=arm
; class-group: TriggerObject
; alias: _ZNK13TriggerObject9IsZonableEv
; demangled: TriggerObject::IsZonable() const
; decoder-mode: arm
00399320  01 00 a0 e3                                      mov r0, #1
00399324  1e ff 2f e1                                      bx lr

; FUNCTION 0x00399328, declared_size=8, range_size=8, mode=arm
; class-group: TriggerObject
; alias: _ZNK13TriggerObject10IsAnimatedEv
; demangled: TriggerObject::IsAnimated() const
; decoder-mode: arm
00399328  01 00 a0 e3                                      mov r0, #1
0039932c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00399330, declared_size=56, range_size=56, mode=arm
; class-group: TriggerObject
; alias: _ZNK13TriggerObject18GetInteractionTypeEP10GameObject
; demangled: TriggerObject::GetInteractionType(GameObject*) const
; decoder-mode: arm
00399330  30 07 90 e5                                      ldr r0, [r0, #0x730]
00399334  24 30 9f e5                                      ldr r3, [pc, #0x24]
00399338  01 00 70 e3                                      cmn r0, #1
0039933c  03 30 8f e0                                      add r3, pc, r3
00399340  1e ff 2f 01                                      bxeq lr
00399344  18 20 9f e5                                      ldr r2, [pc, #0x18]
00399348  02 30 93 e7                                      ldr r3, [r3, r2]
0039934c  18 20 a0 e3                                      mov r2, #0x18
00399350  00 30 93 e5                                      ldr r3, [r3]
00399354  92 30 20 e0                                      mla r0, r2, r0, r3
00399358  04 00 90 e5                                      ldr r0, [r0, #4]
0039935c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00399360  54 b7 5f 00 1c 0e 00 00                          .byte 0x54, 0xb7, 0x5f, 0x00, 0x1c, 0x0e, 0x00, 0x00

; FUNCTION 0x0039939c, declared_size=32, range_size=32, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObject26InterpretIncomingNetStructEb
; demangled: TriggerObject::InterpretIncomingNetStruct(bool)
; decoder-mode: arm
0039939c  70 40 2d e9                                      push {r4, r5, r6, lr}
003993a0  01 40 a0 e1                                      mov r4, r1
003993a4  00 50 a0 e1                                      mov r5, r0
003993a8  0b fd ff eb                                      bl #0x3987dc
003993ac  00 00 54 e3                                      cmp r4, #0
003993b0  00 30 a0 13                                      movne r3, #0
003993b4  84 37 c5 15                                      strbne r3, [r5, #0x784]
003993b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003993bc, declared_size=212, range_size=212, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObject19TestInteractiveCondEv
; demangled: TriggerObject::TestInteractiveCond()
; decoder-mode: arm
003993bc  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
003993c0  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
003993c4  10 40 2d e9                                      push {r4, lr}
003993c8  03 30 8f e0                                      add r3, pc, r3
003993cc  00 40 a0 e1                                      mov r4, r0
003993d0  02 00 93 e7                                      ldr r0, [r3, r2]
003993d4  08 d0 4d e2                                      sub sp, sp, #8
003993d8  00 10 a0 e3                                      mov r1, #0
003993dc  01 20 a0 e3                                      mov r2, #1
003993e0  40 00 90 e5                                      ldr r0, [r0, #0x40]
003993e4  23 54 ff eb                                      bl #0x36e478
003993e8  60 36 90 e5                                      ldr r3, [r0, #0x660]
003993ec  00 00 53 e3                                      cmp r3, #0
003993f0  06 00 00 0a                                      beq #0x399410
003993f4  e8 24 01 e3                                      movw r2, #0x14e8
003993f8  02 30 93 e7                                      ldr r3, [r3, r2]
003993fc  00 00 53 e3                                      cmp r3, #0
00399400  1b 00 00 0a                                      beq #0x399474
00399404  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00399408  00 00 53 e3                                      cmp r3, #0
0039940c  18 00 00 0a                                      beq #0x399474
00399410  88 07 94 e5                                      ldr r0, [r4, #0x788]
00399414  00 00 50 e3                                      cmp r0, #0
00399418  03 00 00 0a                                      beq #0x39942c
0039941c  b8 7c 03 eb                                      bl #0x478704
00399420  00 00 50 e3                                      cmp r0, #0
00399424  84 07 c4 05                                      strbeq r0, [r4, #0x784]
00399428  13 00 00 0a                                      beq #0x39947c
0039942c  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
00399430  01 20 a0 e3                                      mov r2, #1
00399434  84 27 c4 e5                                      strb r2, [r4, #0x784]
00399438  00 00 53 e3                                      cmp r3, #0
0039943c  09 00 00 0a                                      beq #0x399468
00399440  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00399444  40 10 9f e5                                      ldr r1, [pc, #0x40]
00399448  00 30 a0 e3                                      mov r3, #0
0039944c  0c 00 a0 e1                                      mov r0, ip
00399450  03 20 a0 e1                                      mov r2, r3
00399454  00 c0 9c e5                                      ldr ip, [ip]
00399458  01 10 8f e0                                      add r1, pc, r1
0039945c  00 30 8d e5                                      str r3, [sp]
00399460  0f e0 a0 e1                                      mov lr, pc
00399464  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00399468  00 30 a0 e3                                      mov r3, #0
0039946c  73 33 c4 e5                                      strb r3, [r4, #0x373]
00399470  01 00 00 ea                                      b #0x39947c
00399474  00 30 a0 e3                                      mov r3, #0
00399478  84 37 c4 e5                                      strb r3, [r4, #0x784]
0039947c  08 d0 8d e2                                      add sp, sp, #8
00399480  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00399484  c8 b6 5f 00 f4 37 00 00 58 96 52 00              .byte 0xc8, 0xb6, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x58, 0x96, 0x52, 0x00

; FUNCTION 0x00399490, declared_size=24, range_size=24, mode=arm
; class-group: TriggerObject
; alias: _ZNK13TriggerObject13IsInteractiveEP10GameObject
; demangled: TriggerObject::IsInteractive(GameObject*) const
; decoder-mode: arm
00399490  10 40 2d e9                                      push {r4, lr}
00399494  00 40 a0 e1                                      mov r4, r0
00399498  c3 fc ff eb                                      bl #0x3987ac
0039949c  00 00 50 e3                                      cmp r0, #0
003994a0  84 07 d4 15                                      ldrbne r0, [r4, #0x784]
003994a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003994a8, declared_size=208, range_size=208, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObject6UpdateEv
; demangled: TriggerObject::Update()
; decoder-mode: arm
003994a8  30 40 2d e9                                      push {r4, r5, lr}
003994ac  00 40 a0 e1                                      mov r4, r0
003994b0  0c d0 4d e2                                      sub sp, sp, #0xc
003994b4  b8 53 90 e5                                      ldr r5, [r0, #0x3b8]
003994b8  de fc ff eb                                      bl #0x398838
003994bc  84 37 d4 e5                                      ldrb r3, [r4, #0x784]
003994c0  00 00 53 e3                                      cmp r3, #0
003994c4  14 00 00 0a                                      beq #0x39951c
003994c8  00 00 55 e3                                      cmp r5, #0
003994cc  03 00 00 da                                      ble #0x3994e0
003994d0  04 00 a0 e1                                      mov r0, r4
003994d4  b4 fc ff eb                                      bl #0x3987ac
003994d8  00 00 50 e3                                      cmp r0, #0
003994dc  12 00 00 1a                                      bne #0x39952c
003994e0  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003994e4  00 00 50 e3                                      cmp r0, #0
003994e8  00 00 00 0a                                      beq #0x3994f0
003994ec  60 c9 ff eb                                      bl #0x38ba74
003994f0  e4 12 94 e5                                      ldr r1, [r4, #0x2e4]
003994f4  00 00 51 e3                                      cmp r1, #0
003994f8  05 00 00 0a                                      beq #0x399514
003994fc  00 30 94 e5                                      ldr r3, [r4]
00399500  04 00 a0 e1                                      mov r0, r4
00399504  0f e0 a0 e1                                      mov lr, pc
00399508  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0039950c  00 30 a0 e3                                      mov r3, #0
00399510  e4 32 84 e5                                      str r3, [r4, #0x2e4]
00399514  0c d0 8d e2                                      add sp, sp, #0xc
00399518  30 80 bd e8                                      pop {r4, r5, pc}
0039951c  04 00 a0 e1                                      mov r0, r4
00399520  a5 ff ff eb                                      bl #0x3993bc
00399524  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00399528  ed ff ff ea                                      b #0x3994e4
0039952c  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00399530  00 00 50 e3                                      cmp r0, #0
00399534  0b 00 00 0a                                      beq #0x399568
00399538  38 c0 90 e5                                      ldr ip, [r0, #0x38]
0039953c  30 10 9f e5                                      ldr r1, [pc, #0x30]
00399540  00 20 a0 e3                                      mov r2, #0
00399544  0c 00 a0 e1                                      mov r0, ip
00399548  02 30 a0 e1                                      mov r3, r2
0039954c  00 c0 9c e5                                      ldr ip, [ip]
00399550  01 10 8f e0                                      add r1, pc, r1
00399554  00 20 8d e5                                      str r2, [sp]
00399558  01 20 a0 e3                                      mov r2, #1
0039955c  0f e0 a0 e1                                      mov lr, pc
00399560  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00399564  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
00399568  00 30 a0 e3                                      mov r3, #0
0039956c  73 33 c4 e5                                      strb r3, [r4, #0x373]
00399570  db ff ff ea                                      b #0x3994e4
; mapping-symbol data/literal pool
00399574  60 8d 52 00                                      .byte 0x60, 0x8d, 0x52, 0x00

; FUNCTION 0x00399578, declared_size=8, range_size=8, mode=arm
; class-group: TriggerObject
; alias: _ZThn36_N13TriggerObject11DeserializeEP11IStreamBase
; demangled: non-virtual thunk to TriggerObject::Deserialize(IStreamBase*)
; decoder-mode: arm
00399578  24 00 40 e2                                      sub r0, r0, #0x24
0039957c  ff ff ff ea                                      b #0x399580

; FUNCTION 0x00399580, declared_size=284, range_size=284, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObject11DeserializeEP11IStreamBase
; demangled: TriggerObject::Deserialize(IStreamBase*)
; decoder-mode: arm
00399580  10 40 2d e9                                      push {r4, lr}
00399584  00 40 a0 e1                                      mov r4, r0
00399588  08 d0 4d e2                                      sub sp, sp, #8
0039958c  de fc ff eb                                      bl #0x39890c
00399590  04 00 a0 e1                                      mov r0, r4
00399594  88 ff ff eb                                      bl #0x3993bc
00399598  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0039959c  00 00 53 e3                                      cmp r3, #0
003995a0  11 00 00 0a                                      beq #0x3995ec
003995a4  04 00 a0 e1                                      mov r0, r4
003995a8  7f fc ff eb                                      bl #0x3987ac
003995ac  00 e0 50 e2                                      subs lr, r0, #0
003995b0  1c 00 00 0a                                      beq #0x399628
003995b4  84 e7 d4 e5                                      ldrb lr, [r4, #0x784]
003995b8  00 00 5e e3                                      cmp lr, #0
003995bc  0c 00 00 1a                                      bne #0x3995f4
003995c0  d8 22 94 e5                                      ldr r2, [r4, #0x2d8]
003995c4  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
003995c8  0e 30 a0 e1                                      mov r3, lr
003995cc  38 c0 92 e5                                      ldr ip, [r2, #0x38]
003995d0  01 10 8f e0                                      add r1, pc, r1
003995d4  01 20 a0 e3                                      mov r2, #1
003995d8  0c 00 a0 e1                                      mov r0, ip
003995dc  00 c0 9c e5                                      ldr ip, [ip]
003995e0  00 e0 8d e5                                      str lr, [sp]
003995e4  0f e0 a0 e1                                      mov lr, pc
003995e8  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003995ec  08 d0 8d e2                                      add sp, sp, #8
003995f0  10 80 bd e8                                      pop {r4, pc}
003995f4  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003995f8  90 10 9f e5                                      ldr r1, [pc, #0x90]
003995fc  00 20 a0 e3                                      mov r2, #0
00399600  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00399604  01 10 8f e0                                      add r1, pc, r1
00399608  02 30 a0 e1                                      mov r3, r2
0039960c  0c 00 a0 e1                                      mov r0, ip
00399610  00 c0 9c e5                                      ldr ip, [ip]
00399614  00 20 8d e5                                      str r2, [sp]
00399618  01 20 a0 e3                                      mov r2, #1
0039961c  0f e0 a0 e1                                      mov lr, pc
00399620  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00399624  f0 ff ff ea                                      b #0x3995ec
00399628  d8 22 94 e5                                      ldr r2, [r4, #0x2d8]
0039962c  60 10 9f e5                                      ldr r1, [pc, #0x60]
00399630  0e 30 a0 e1                                      mov r3, lr
00399634  38 c0 92 e5                                      ldr ip, [r2, #0x38]
00399638  01 10 8f e0                                      add r1, pc, r1
0039963c  01 20 a0 e3                                      mov r2, #1
00399640  0c 00 a0 e1                                      mov r0, ip
00399644  00 c0 9c e5                                      ldr ip, [ip]
00399648  00 e0 8d e5                                      str lr, [sp]
0039964c  0f e0 a0 e1                                      mov lr, pc
00399650  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00399654  00 c0 50 e2                                      subs ip, r0, #0
00399658  e3 ff ff 1a                                      bne #0x3995ec
0039965c  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
00399660  30 10 9f e5                                      ldr r1, [pc, #0x30]
00399664  0c 20 a0 e1                                      mov r2, ip
00399668  38 e0 93 e5                                      ldr lr, [r3, #0x38]
0039966c  01 10 8f e0                                      add r1, pc, r1
00399670  0c 30 a0 e1                                      mov r3, ip
00399674  00 40 9e e5                                      ldr r4, [lr]
00399678  0e 00 a0 e1                                      mov r0, lr
0039967c  00 c0 8d e5                                      str ip, [sp]
00399680  0f e0 a0 e1                                      mov lr, pc
00399684  20 f0 94 e5                                      ldr pc, [r4, #0x20]
00399688  d7 ff ff ea                                      b #0x3995ec
; mapping-symbol data/literal pool
0039968c  e8 94 52 00 ac 8c 52 00 90 94 52 00 6c 94 52 00  .byte 0xe8, 0x94, 0x52, 0x00, 0xac, 0x8c, 0x52, 0x00, 0x90, 0x94, 0x52, 0x00, 0x6c, 0x94, 0x52, 0x00

; FUNCTION 0x0039969c, declared_size=8, range_size=8, mode=arm
; class-group: TriggerObject
; alias: _ZThn36_N13TriggerObject9SerializeEP11IStreamBase
; demangled: non-virtual thunk to TriggerObject::Serialize(IStreamBase*)
; decoder-mode: arm
0039969c  24 00 40 e2                                      sub r0, r0, #0x24
003996a0  ff ff ff ea                                      b #0x3996a4

; FUNCTION 0x003996a4, declared_size=4, range_size=4, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObject9SerializeEP11IStreamBase
; demangled: TriggerObject::Serialize(IStreamBase*)
; decoder-mode: arm
003996a4  b3 fc ff ea                                      b #0x398978

; FUNCTION 0x00399934, declared_size=8, range_size=8, mode=arm
; class-group: TriggerObject
; alias: _ZThn36_N13TriggerObjectD1Ev
; demangled: non-virtual thunk to TriggerObject::~TriggerObject()
; decoder-mode: arm
00399934  24 00 40 e2                                      sub r0, r0, #0x24
00399938  ff ff ff ea                                      b #0x39993c

; FUNCTION 0x0039993c, declared_size=148, range_size=148, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObjectD1Ev
; demangled: TriggerObject::~TriggerObject()
; decoder-mode: arm
0039993c  70 40 2d e9                                      push {r4, r5, r6, lr}
00399940  80 20 9f e5                                      ldr r2, [pc, #0x80]
00399944  80 30 9f e5                                      ldr r3, [pc, #0x80]
00399948  88 57 90 e5                                      ldr r5, [r0, #0x788]
0039994c  02 20 8f e0                                      add r2, pc, r2
00399950  03 30 92 e7                                      ldr r3, [r2, r3]
00399954  00 00 55 e3                                      cmp r5, #0
00399958  00 40 a0 e1                                      mov r4, r0
0039995c  f4 20 83 e2                                      add r2, r3, #0xf4
00399960  08 10 83 e2                                      add r1, r3, #8
00399964  e8 30 83 e2                                      add r3, r3, #0xe8
00399968  0a 00 80 e8                                      stm r0, {r1, r3}
0039996c  24 20 80 e5                                      str r2, [r0, #0x24]
00399970  05 00 00 0a                                      beq #0x39998c
00399974  05 00 a0 e1                                      mov r0, r5
00399978  4b 7d 03 eb                                      bl #0x478eac
0039997c  05 00 a0 e1                                      mov r0, r5
00399980  ae da fd eb                                      bl #0x310440
00399984  00 30 a0 e3                                      mov r3, #0
00399988  88 37 84 e5                                      str r3, [r4, #0x788]
0039998c  76 0e 84 e2                                      add r0, r4, #0x760
00399990  0c 00 80 e2                                      add r0, r0, #0xc
00399994  2e fa fd eb                                      bl #0x318254
00399998  75 0e 84 e2                                      add r0, r4, #0x750
0039999c  2c fa fd eb                                      bl #0x318254
003999a0  73 0e 84 e2                                      add r0, r4, #0x730
003999a4  04 00 80 e2                                      add r0, r0, #4
003999a8  29 fa fd eb                                      bl #0x318254
003999ac  71 0e 84 e2                                      add r0, r4, #0x710
003999b0  08 00 80 e2                                      add r0, r0, #8
003999b4  26 fa fd eb                                      bl #0x318254
003999b8  04 00 a0 e1                                      mov r0, r4
003999bc  14 fe ff eb                                      bl #0x399214
003999c0  04 00 a0 e1                                      mov r0, r4
003999c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003999c8  44 b1 5f 00 64 2b 00 00                          .byte 0x44, 0xb1, 0x5f, 0x00, 0x64, 0x2b, 0x00, 0x00

; FUNCTION 0x003999d0, declared_size=8, range_size=8, mode=arm
; class-group: TriggerObject
; alias: _ZThn36_N13TriggerObjectD0Ev
; demangled: non-virtual thunk to TriggerObject::~TriggerObject()
; decoder-mode: arm
003999d0  24 00 40 e2                                      sub r0, r0, #0x24
003999d4  ff ff ff ea                                      b #0x3999d8

; FUNCTION 0x003999d8, declared_size=28, range_size=28, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObjectD0Ev
; demangled: TriggerObject::~TriggerObject()
; decoder-mode: arm
003999d8  10 40 2d e9                                      push {r4, lr}
003999dc  00 40 a0 e1                                      mov r4, r0
003999e0  d5 ff ff eb                                      bl #0x39993c
003999e4  04 00 a0 e1                                      mov r0, r4
003999e8  94 da fd eb                                      bl #0x310440
003999ec  04 00 a0 e1                                      mov r0, r4
003999f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003999f4, declared_size=148, range_size=148, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObjectD2Ev
; demangled: TriggerObject::~TriggerObject()
; decoder-mode: arm
003999f4  70 40 2d e9                                      push {r4, r5, r6, lr}
003999f8  80 20 9f e5                                      ldr r2, [pc, #0x80]
003999fc  80 30 9f e5                                      ldr r3, [pc, #0x80]
00399a00  88 57 90 e5                                      ldr r5, [r0, #0x788]
00399a04  02 20 8f e0                                      add r2, pc, r2
00399a08  03 30 92 e7                                      ldr r3, [r2, r3]
00399a0c  00 00 55 e3                                      cmp r5, #0
00399a10  00 40 a0 e1                                      mov r4, r0
00399a14  f4 20 83 e2                                      add r2, r3, #0xf4
00399a18  08 10 83 e2                                      add r1, r3, #8
00399a1c  e8 30 83 e2                                      add r3, r3, #0xe8
00399a20  0a 00 80 e8                                      stm r0, {r1, r3}
00399a24  24 20 80 e5                                      str r2, [r0, #0x24]
00399a28  05 00 00 0a                                      beq #0x399a44
00399a2c  05 00 a0 e1                                      mov r0, r5
00399a30  1d 7d 03 eb                                      bl #0x478eac
00399a34  05 00 a0 e1                                      mov r0, r5
00399a38  80 da fd eb                                      bl #0x310440
00399a3c  00 30 a0 e3                                      mov r3, #0
00399a40  88 37 84 e5                                      str r3, [r4, #0x788]
00399a44  76 0e 84 e2                                      add r0, r4, #0x760
00399a48  0c 00 80 e2                                      add r0, r0, #0xc
00399a4c  00 fa fd eb                                      bl #0x318254
00399a50  75 0e 84 e2                                      add r0, r4, #0x750
00399a54  fe f9 fd eb                                      bl #0x318254
00399a58  73 0e 84 e2                                      add r0, r4, #0x730
00399a5c  04 00 80 e2                                      add r0, r0, #4
00399a60  fb f9 fd eb                                      bl #0x318254
00399a64  71 0e 84 e2                                      add r0, r4, #0x710
00399a68  08 00 80 e2                                      add r0, r0, #8
00399a6c  f8 f9 fd eb                                      bl #0x318254
00399a70  04 00 a0 e1                                      mov r0, r4
00399a74  e6 fd ff eb                                      bl #0x399214
00399a78  04 00 a0 e1                                      mov r0, r4
00399a7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00399a80  8c b0 5f 00 64 2b 00 00                          .byte 0x8c, 0xb0, 0x5f, 0x00, 0x64, 0x2b, 0x00, 0x00

; FUNCTION 0x00399af0, declared_size=632, range_size=632, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObject8InteractEP10GameObject
; demangled: TriggerObject::Interact(GameObject*)
; decoder-mode: arm
00399af0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00399af4  00 33 90 e5                                      ldr r3, [r0, #0x300]
00399af8  2c 52 9f e5                                      ldr r5, [pc, #0x22c]
00399afc  40 d0 4d e2                                      sub sp, sp, #0x40
00399b00  00 00 53 e3                                      cmp r3, #0
00399b04  00 40 a0 e1                                      mov r4, r0
00399b08  01 70 a0 e1                                      mov r7, r1
00399b0c  05 50 8f e0                                      add r5, pc, r5
00399b10  02 00 00 0a                                      beq #0x399b20
00399b14  24 fb ff eb                                      bl #0x3987ac
00399b18  00 00 50 e3                                      cmp r0, #0
00399b1c  5f 00 00 1a                                      bne #0x399ca0
00399b20  04 00 a0 e1                                      mov r0, r4
00399b24  1a fb ff eb                                      bl #0x398794
00399b28  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
00399b2c  00 00 53 e3                                      cmp r3, #0
00399b30  09 00 00 0a                                      beq #0x399b5c
00399b34  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00399b38  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
00399b3c  00 30 a0 e3                                      mov r3, #0
00399b40  0c 00 a0 e1                                      mov r0, ip
00399b44  03 20 a0 e1                                      mov r2, r3
00399b48  00 c0 9c e5                                      ldr ip, [ip]
00399b4c  01 10 8f e0                                      add r1, pc, r1
00399b50  00 30 8d e5                                      str r3, [sp]
00399b54  0f e0 a0 e1                                      mov lr, pc
00399b58  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00399b5c  30 37 94 e5                                      ldr r3, [r4, #0x730]
00399b60  01 00 73 e3                                      cmn r3, #1
00399b64  17 00 00 0a                                      beq #0x399bc8
00399b68  c4 21 9f e5                                      ldr r2, [pc, #0x1c4]
00399b6c  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
00399b70  68 e1 94 e5                                      ldr lr, [r4, #0x168]
00399b74  02 20 95 e7                                      ldr r2, [r5, r2]
00399b78  01 10 95 e7                                      ldr r1, [r5, r1]
00399b7c  64 61 94 e5                                      ldr r6, [r4, #0x164]
00399b80  00 20 92 e5                                      ldr r2, [r2]
00399b84  00 00 91 e5                                      ldr r0, [r1]
00399b88  18 10 a0 e3                                      mov r1, #0x18
00399b8c  91 23 23 e0                                      mla r3, r1, r3, r2
00399b90  60 71 94 e5                                      ldr r7, [r4, #0x160]
00399b94  bf c4 a0 e3                                      mov ip, #0xbf000000
00399b98  10 10 93 e5                                      ldr r1, [r3, #0x10]
00399b9c  02 c5 8c e2                                      add ip, ip, #0x800000
00399ba0  34 e0 8d e5                                      str lr, [sp, #0x34]
00399ba4  2c 20 8d e2                                      add r2, sp, #0x2c
00399ba8  01 e0 a0 e3                                      mov lr, #1
00399bac  00 30 a0 e3                                      mov r3, #0
00399bb0  2c 70 8d e5                                      str r7, [sp, #0x2c]
00399bb4  30 60 8d e5                                      str r6, [sp, #0x30]
00399bb8  00 e0 8d e5                                      str lr, [sp]
00399bbc  08 c0 8d e5                                      str ip, [sp, #8]
00399bc0  04 c0 8d e5                                      str ip, [sp, #4]
00399bc4  83 46 ff eb                                      bl #0x36b5d8
00399bc8  68 17 94 e5                                      ldr r1, [r4, #0x768]
00399bcc  01 00 71 e3                                      cmn r1, #1
00399bd0  08 00 00 0a                                      beq #0x399bf8
00399bd4  b4 33 94 e5                                      ldr r3, [r4, #0x3b4]
00399bd8  01 00 13 e3                                      tst r3, #1
00399bdc  05 00 00 0a                                      beq #0x399bf8
00399be0  54 31 9f e5                                      ldr r3, [pc, #0x154]
00399be4  64 20 94 e5                                      ldr r2, [r4, #0x64]
00399be8  03 00 95 e7                                      ldr r0, [r5, r3]
00399bec  00 30 a0 e3                                      mov r3, #0
00399bf0  72 1a 03 eb                                      bl #0x4605c0
00399bf4  27 00 00 ea                                      b #0x399c98
00399bf8  4c 17 94 e5                                      ldr r1, [r4, #0x74c]
00399bfc  01 00 71 e3                                      cmn r1, #1
00399c00  04 00 00 0a                                      beq #0x399c18
00399c04  30 31 9f e5                                      ldr r3, [pc, #0x130]
00399c08  64 20 94 e5                                      ldr r2, [r4, #0x64]
00399c0c  03 00 95 e7                                      ldr r0, [r5, r3]
00399c10  00 30 a0 e3                                      mov r3, #0
00399c14  69 1a 03 eb                                      bl #0x4605c0
00399c18  20 61 9f e5                                      ldr r6, [pc, #0x120]
00399c1c  06 00 95 e7                                      ldr r0, [r5, r6]
00399c20  5b 16 fe eb                                      bl #0x31f594
00399c24  00 70 50 e2                                      subs r7, r0, #0
00399c28  2a 00 00 0a                                      beq #0x399cd8
00399c2c  06 30 95 e7                                      ldr r3, [r5, r6]
00399c30  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
00399c34  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
00399c38  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00399c3c  01 10 8f e0                                      add r1, pc, r1
00399c40  02 20 8f e0                                      add r2, pc, r2
00399c44  30 67 94 e5                                      ldr r6, [r4, #0x730]
00399c48  64 80 94 e5                                      ldr r8, [r4, #0x64]
00399c4c  e2 ab 04 eb                                      bl #0x4c4bdc
00399c50  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
00399c54  40 10 8d e2                                      add r1, sp, #0x40
00399c58  00 30 a0 e3                                      mov r3, #0
00399c5c  02 20 95 e7                                      ldr r2, [r5, r2]
00399c60  14 00 8d e5                                      str r0, [sp, #0x14]
00399c64  07 00 a0 e1                                      mov r0, r7
00399c68  08 20 82 e2                                      add r2, r2, #8
00399c6c  30 20 21 e5                                      str r2, [r1, #-0x30]!
00399c70  00 20 e0 e3                                      mvn r2, #0
00399c74  21 30 cd e5                                      strb r3, [sp, #0x21]
00399c78  18 30 8d e5                                      str r3, [sp, #0x18]
00399c7c  20 30 cd e5                                      strb r3, [sp, #0x20]
00399c80  1c 80 8d e5                                      str r8, [sp, #0x1c]
00399c84  24 20 8d e5                                      str r2, [sp, #0x24]
00399c88  28 60 8d e5                                      str r6, [sp, #0x28]
00399c8c  ff 7c fe eb                                      bl #0x339090
00399c90  01 30 a0 e3                                      mov r3, #1
00399c94  73 33 c4 e5                                      strb r3, [r4, #0x373]
00399c98  40 d0 8d e2                                      add sp, sp, #0x40
00399c9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00399ca0  38 60 8d e2                                      add r6, sp, #0x38
00399ca4  06 00 a0 e1                                      mov r0, r6
00399ca8  81 fd fd eb                                      bl #0x3192b4
00399cac  06 00 a0 e1                                      mov r0, r6
00399cb0  07 10 a0 e1                                      mov r1, r7
00399cb4  9b b4 ff eb                                      bl #0x386f28
00399cb8  90 10 9f e5                                      ldr r1, [pc, #0x90]
00399cbc  00 03 94 e5                                      ldr r0, [r4, #0x300]
00399cc0  06 20 a0 e1                                      mov r2, r6
00399cc4  01 10 8f e0                                      add r1, pc, r1
00399cc8  d3 89 ff eb                                      bl #0x37c41c
00399ccc  06 00 a0 e1                                      mov r0, r6
00399cd0  54 fd fd eb                                      bl #0x319228
00399cd4  91 ff ff ea                                      b #0x399b20
00399cd8  74 30 9f e5                                      ldr r3, [pc, #0x74]
00399cdc  03 30 95 e7                                      ldr r3, [r5, r3]
00399ce0  00 30 93 e5                                      ldr r3, [r3]
00399ce4  02 00 53 e3                                      cmp r3, #2
00399ce8  00 70 87 05                                      streq r7, [r7]
00399cec  ce ff ff 0a                                      beq #0x399c2c
00399cf0  01 00 53 e3                                      cmp r3, #1
00399cf4  cc ff ff 1a                                      bne #0x399c2c
00399cf8  58 00 9f e5                                      ldr r0, [pc, #0x58]
00399cfc  58 10 9f e5                                      ldr r1, [pc, #0x58]
00399d00  58 20 9f e5                                      ldr r2, [pc, #0x58]
00399d04  00 00 95 e7                                      ldr r0, [r5, r0]
00399d08  54 30 9f e5                                      ldr r3, [pc, #0x54]
00399d0c  1e c1 00 e3                                      movw ip, #0x11e
00399d10  01 10 8f e0                                      add r1, pc, r1
00399d14  02 20 8f e0                                      add r2, pc, r2
00399d18  03 30 8f e0                                      add r3, pc, r3
00399d1c  a8 00 80 e2                                      add r0, r0, #0xa8
00399d20  00 c0 8d e5                                      str ip, [sp]
00399d24  b6 d0 fd eb                                      bl #0x30e004
00399d28  bf ff ff ea                                      b #0x399c2c
; mapping-symbol data/literal pool
00399d2c  84 af 5f 00 8c 8f 52 00 1c 0e 00 00 a4 0d 00 00  .byte 0x84, 0xaf, 0x5f, 0x00, 0x8c, 0x8f, 0x52, 0x00, 0x1c, 0x0e, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00
00399d3c  20 1a 00 00 f4 37 00 00 2c 8d 52 00 08 8f 52 00  .byte 0x20, 0x1a, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x2c, 0x8d, 0x52, 0x00, 0x08, 0x8f, 0x52, 0x00
00399d4c  a8 36 00 00 24 8e 52 00 c0 39 00 00 c0 19 00 00  .byte 0xa8, 0x36, 0x00, 0x00, 0x24, 0x8e, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00399d5c  c8 46 52 00 44 5c 57 00 e0 8d 52 00              .byte 0xc8, 0x46, 0x52, 0x00, 0x44, 0x5c, 0x57, 0x00, 0xe0, 0x8d, 0x52, 0x00

; FUNCTION 0x00399d68, declared_size=8, range_size=8, mode=arm
; class-group: TriggerObject
; alias: _ZThn4_N13TriggerObject17DeclarePropertiesEv
; demangled: non-virtual thunk to TriggerObject::DeclareProperties()
; decoder-mode: arm
00399d68  04 00 40 e2                                      sub r0, r0, #4
00399d6c  ff ff ff ea                                      b #0x399d70

; FUNCTION 0x00399d70, declared_size=128, range_size=128, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObject17DeclarePropertiesEv
; demangled: TriggerObject::DeclareProperties()
; decoder-mode: arm
00399d70  70 40 2d e9                                      push {r4, r5, r6, lr}
00399d74  00 40 a0 e1                                      mov r4, r0
00399d78  42 fb ff eb                                      bl #0x398a88
00399d7c  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00399d80  04 50 84 e2                                      add r5, r4, #4
00399d84  71 2e 84 e2                                      add r2, r4, #0x710
00399d88  05 00 a0 e1                                      mov r0, r5
00399d8c  01 10 8f e0                                      add r1, pc, r1
00399d90  08 20 82 e2                                      add r2, r2, #8
00399d94  78 94 fe eb                                      bl #0x33ef7c
00399d98  44 10 9f e5                                      ldr r1, [pc, #0x44]
00399d9c  73 2e 84 e2                                      add r2, r4, #0x730
00399da0  05 00 a0 e1                                      mov r0, r5
00399da4  04 20 82 e2                                      add r2, r2, #4
00399da8  01 10 8f e0                                      add r1, pc, r1
00399dac  72 94 fe eb                                      bl #0x33ef7c
00399db0  30 10 9f e5                                      ldr r1, [pc, #0x30]
00399db4  05 00 a0 e1                                      mov r0, r5
00399db8  75 2e 84 e2                                      add r2, r4, #0x750
00399dbc  01 10 8f e0                                      add r1, pc, r1
00399dc0  6d 94 fe eb                                      bl #0x33ef7c
00399dc4  20 10 9f e5                                      ldr r1, [pc, #0x20]
00399dc8  76 2e 84 e2                                      add r2, r4, #0x760
00399dcc  05 00 a0 e1                                      mov r0, r5
00399dd0  01 10 8f e0                                      add r1, pc, r1
00399dd4  0c 20 82 e2                                      add r2, r2, #0xc
00399dd8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00399ddc  66 94 fe ea                                      b #0x33ef7c
; mapping-symbol data/literal pool
00399de0  cc 8d 52 00 30 7c 52 00 a4 8d 52 00 a0 8d 52 00  .byte 0xcc, 0x8d, 0x52, 0x00, 0x30, 0x7c, 0x52, 0x00, 0xa4, 0x8d, 0x52, 0x00, 0xa0, 0x8d, 0x52, 0x00

; FUNCTION 0x00399df0, declared_size=260, range_size=260, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObjectC1Ev
; demangled: TriggerObject::TriggerObject()
; decoder-mode: arm
00399df0  70 40 2d e9                                      push {r4, r5, r6, lr}
00399df4  00 20 a0 e3                                      mov r2, #0
00399df8  01 30 a0 e3                                      mov r3, #1
00399dfc  14 10 a0 e3                                      mov r1, #0x14
00399e00  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
00399e04  00 40 a0 e1                                      mov r4, r0
00399e08  71 fc ff eb                                      bl #0x398fd4
00399e0c  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
00399e10  05 50 8f e0                                      add r5, pc, r5
00399e14  71 3e 84 e2                                      add r3, r4, #0x710
00399e18  02 20 95 e7                                      ldr r2, [r5, r2]
00399e1c  08 30 83 e2                                      add r3, r3, #8
00399e20  03 00 a0 e1                                      mov r0, r3
00399e24  08 c0 82 e2                                      add ip, r2, #8
00399e28  f4 10 82 e2                                      add r1, r2, #0xf4
00399e2c  e8 20 82 e2                                      add r2, r2, #0xe8
00399e30  00 c0 84 e5                                      str ip, [r4]
00399e34  04 20 84 e5                                      str r2, [r4, #4]
00399e38  24 10 84 e5                                      str r1, [r4, #0x24]
00399e3c  28 37 84 e5                                      str r3, [r4, #0x728]
00399e40  2c 37 84 e5                                      str r3, [r4, #0x72c]
00399e44  10 10 a0 e3                                      mov r1, #0x10
00399e48  0b de fd eb                                      bl #0x31167c
00399e4c  28 27 94 e5                                      ldr r2, [r4, #0x728]
00399e50  00 50 a0 e3                                      mov r5, #0
00399e54  00 60 e0 e3                                      mvn r6, #0
00399e58  04 30 a0 e1                                      mov r3, r4
00399e5c  00 50 c2 e5                                      strb r5, [r2]
00399e60  30 67 a3 e5                                      str r6, [r3, #0x730]!
00399e64  04 30 83 e2                                      add r3, r3, #4
00399e68  03 00 a0 e1                                      mov r0, r3
00399e6c  44 37 84 e5                                      str r3, [r4, #0x744]
00399e70  48 37 84 e5                                      str r3, [r4, #0x748]
00399e74  10 10 a0 e3                                      mov r1, #0x10
00399e78  ff dd fd eb                                      bl #0x31167c
00399e7c  44 27 94 e5                                      ldr r2, [r4, #0x744]
00399e80  75 3e 84 e2                                      add r3, r4, #0x750
00399e84  03 00 a0 e1                                      mov r0, r3
00399e88  00 50 c2 e5                                      strb r5, [r2]
00399e8c  10 10 a0 e3                                      mov r1, #0x10
00399e90  60 37 84 e5                                      str r3, [r4, #0x760]
00399e94  64 37 84 e5                                      str r3, [r4, #0x764]
00399e98  4c 67 84 e5                                      str r6, [r4, #0x74c]
00399e9c  f6 dd fd eb                                      bl #0x31167c
00399ea0  04 30 a0 e1                                      mov r3, r4
00399ea4  60 27 b3 e5                                      ldr r2, [r3, #0x760]!
00399ea8  10 10 a0 e3                                      mov r1, #0x10
00399eac  0c 30 83 e2                                      add r3, r3, #0xc
00399eb0  00 50 c2 e5                                      strb r5, [r2]
00399eb4  03 00 a0 e1                                      mov r0, r3
00399eb8  7c 37 84 e5                                      str r3, [r4, #0x77c]
00399ebc  80 37 84 e5                                      str r3, [r4, #0x780]
00399ec0  ed dd fd eb                                      bl #0x31167c
00399ec4  7c 27 94 e5                                      ldr r2, [r4, #0x77c]
00399ec8  01 30 a0 e3                                      mov r3, #1
00399ecc  04 00 a0 e1                                      mov r0, r4
00399ed0  00 50 c2 e5                                      strb r5, [r2]
00399ed4  84 50 c4 e5                                      strb r5, [r4, #0x84]
00399ed8  85 30 c4 e5                                      strb r3, [r4, #0x85]
00399edc  84 57 c4 e5                                      strb r5, [r4, #0x784]
00399ee0  88 57 84 e5                                      str r5, [r4, #0x788]
00399ee4  28 30 c4 e5                                      strb r3, [r4, #0x28]
00399ee8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00399eec  80 ac 5f 00 64 2b 00 00                          .byte 0x80, 0xac, 0x5f, 0x00, 0x64, 0x2b, 0x00, 0x00

; FUNCTION 0x00399ef4, declared_size=260, range_size=260, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObjectC2Ev
; demangled: TriggerObject::TriggerObject()
; decoder-mode: arm
00399ef4  70 40 2d e9                                      push {r4, r5, r6, lr}
00399ef8  00 20 a0 e3                                      mov r2, #0
00399efc  01 30 a0 e3                                      mov r3, #1
00399f00  14 10 a0 e3                                      mov r1, #0x14
00399f04  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
00399f08  00 40 a0 e1                                      mov r4, r0
00399f0c  30 fc ff eb                                      bl #0x398fd4
00399f10  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
00399f14  05 50 8f e0                                      add r5, pc, r5
00399f18  71 3e 84 e2                                      add r3, r4, #0x710
00399f1c  02 20 95 e7                                      ldr r2, [r5, r2]
00399f20  08 30 83 e2                                      add r3, r3, #8
00399f24  03 00 a0 e1                                      mov r0, r3
00399f28  08 c0 82 e2                                      add ip, r2, #8
00399f2c  f4 10 82 e2                                      add r1, r2, #0xf4
00399f30  e8 20 82 e2                                      add r2, r2, #0xe8
00399f34  00 c0 84 e5                                      str ip, [r4]
00399f38  04 20 84 e5                                      str r2, [r4, #4]
00399f3c  24 10 84 e5                                      str r1, [r4, #0x24]
00399f40  28 37 84 e5                                      str r3, [r4, #0x728]
00399f44  2c 37 84 e5                                      str r3, [r4, #0x72c]
00399f48  10 10 a0 e3                                      mov r1, #0x10
00399f4c  ca dd fd eb                                      bl #0x31167c
00399f50  28 27 94 e5                                      ldr r2, [r4, #0x728]
00399f54  00 50 a0 e3                                      mov r5, #0
00399f58  00 60 e0 e3                                      mvn r6, #0
00399f5c  04 30 a0 e1                                      mov r3, r4
00399f60  00 50 c2 e5                                      strb r5, [r2]
00399f64  30 67 a3 e5                                      str r6, [r3, #0x730]!
00399f68  04 30 83 e2                                      add r3, r3, #4
00399f6c  03 00 a0 e1                                      mov r0, r3
00399f70  44 37 84 e5                                      str r3, [r4, #0x744]
00399f74  48 37 84 e5                                      str r3, [r4, #0x748]
00399f78  10 10 a0 e3                                      mov r1, #0x10
00399f7c  be dd fd eb                                      bl #0x31167c
00399f80  44 27 94 e5                                      ldr r2, [r4, #0x744]
00399f84  75 3e 84 e2                                      add r3, r4, #0x750
00399f88  03 00 a0 e1                                      mov r0, r3
00399f8c  00 50 c2 e5                                      strb r5, [r2]
00399f90  10 10 a0 e3                                      mov r1, #0x10
00399f94  60 37 84 e5                                      str r3, [r4, #0x760]
00399f98  64 37 84 e5                                      str r3, [r4, #0x764]
00399f9c  4c 67 84 e5                                      str r6, [r4, #0x74c]
00399fa0  b5 dd fd eb                                      bl #0x31167c
00399fa4  04 30 a0 e1                                      mov r3, r4
00399fa8  60 27 b3 e5                                      ldr r2, [r3, #0x760]!
00399fac  10 10 a0 e3                                      mov r1, #0x10
00399fb0  0c 30 83 e2                                      add r3, r3, #0xc
00399fb4  00 50 c2 e5                                      strb r5, [r2]
00399fb8  03 00 a0 e1                                      mov r0, r3
00399fbc  7c 37 84 e5                                      str r3, [r4, #0x77c]
00399fc0  80 37 84 e5                                      str r3, [r4, #0x780]
00399fc4  ac dd fd eb                                      bl #0x31167c
00399fc8  7c 27 94 e5                                      ldr r2, [r4, #0x77c]
00399fcc  01 30 a0 e3                                      mov r3, #1
00399fd0  04 00 a0 e1                                      mov r0, r4
00399fd4  00 50 c2 e5                                      strb r5, [r2]
00399fd8  84 50 c4 e5                                      strb r5, [r4, #0x84]
00399fdc  85 30 c4 e5                                      strb r3, [r4, #0x85]
00399fe0  84 57 c4 e5                                      strb r5, [r4, #0x784]
00399fe4  88 57 84 e5                                      str r5, [r4, #0x788]
00399fe8  28 30 c4 e5                                      strb r3, [r4, #0x28]
00399fec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00399ff0  7c ab 5f 00 64 2b 00 00                          .byte 0x7c, 0xab, 0x5f, 0x00, 0x64, 0x2b, 0x00, 0x00

; FUNCTION 0x00399ff8, declared_size=920, range_size=920, mode=arm
; class-group: TriggerObject
; alias: _ZN13TriggerObject8InitPostEv
; demangled: TriggerObject::InitPost()
; decoder-mode: arm
00399ff8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00399ffc  24 d0 4d e2                                      sub sp, sp, #0x24
0039a000  00 40 a0 e1                                      mov r4, r0
0039a004  56 c7 ff eb                                      bl #0x38bd64
0039a008  74 32 94 e5                                      ldr r3, [r4, #0x274]
0039a00c  3c 53 9f e5                                      ldr r5, [pc, #0x33c]
0039a010  03 00 50 e1                                      cmp r0, r3
0039a014  05 50 8f e0                                      add r5, pc, r5
0039a018  b6 00 00 aa                                      bge #0x39a2f8
0039a01c  30 33 9f e5                                      ldr r3, [pc, #0x330]
0039a020  2c 87 94 e5                                      ldr r8, [r4, #0x72c]
0039a024  03 30 95 e7                                      ldr r3, [r5, r3]
0039a028  00 70 93 e5                                      ldr r7, [r3]
0039a02c  00 00 57 e3                                      cmp r7, #0
0039a030  b5 00 00 0a                                      beq #0x39a30c
0039a034  1c 33 9f e5                                      ldr r3, [pc, #0x31c]
0039a038  00 60 a0 e3                                      mov r6, #0
0039a03c  03 30 95 e7                                      ldr r3, [r5, r3]
0039a040  00 a0 93 e5                                      ldr sl, [r3]
0039a044  02 00 00 ea                                      b #0x39a054
0039a048  01 60 86 e2                                      add r6, r6, #1
0039a04c  07 00 56 e1                                      cmp r6, r7
0039a050  ad 00 00 0a                                      beq #0x39a30c
0039a054  06 11 9a e7                                      ldr r1, [sl, r6, lsl #2]
0039a058  08 00 a0 e1                                      mov r0, r8
0039a05c  ae d0 fd eb                                      bl #0x30e31c
0039a060  00 00 50 e3                                      cmp r0, #0
0039a064  f7 ff ff 1a                                      bne #0x39a048
0039a068  01 00 76 e3                                      cmn r6, #1
0039a06c  30 67 84 e5                                      str r6, [r4, #0x730]
0039a070  13 00 00 0a                                      beq #0x39a0c4
0039a074  e0 72 9f e5                                      ldr r7, [pc, #0x2e0]
0039a078  18 20 a0 e3                                      mov r2, #0x18
0039a07c  07 30 95 e7                                      ldr r3, [r5, r7]
0039a080  00 30 93 e5                                      ldr r3, [r3]
0039a084  92 36 26 e0                                      mla r6, r2, r6, r3
0039a088  14 30 96 e5                                      ldr r3, [r6, #0x14]
0039a08c  01 00 73 e3                                      cmn r3, #1
0039a090  0b 00 00 0a                                      beq #0x39a0c4
0039a094  c4 22 9f e5                                      ldr r2, [pc, #0x2c4]
0039a098  0c 10 a0 e3                                      mov r1, #0xc
0039a09c  02 20 95 e7                                      ldr r2, [r5, r2]
0039a0a0  00 20 92 e5                                      ldr r2, [r2]
0039a0a4  91 23 23 e0                                      mla r3, r1, r3, r2
0039a0a8  08 60 93 e5                                      ldr r6, [r3, #8]
0039a0ac  06 00 a0 e1                                      mov r0, r6
0039a0b0  67 cf fd eb                                      bl #0x30de54
0039a0b4  06 10 a0 e1                                      mov r1, r6
0039a0b8  00 20 86 e0                                      add r2, r6, r0
0039a0bc  29 0e 84 e2                                      add r0, r4, #0x290
0039a0c0  46 da fd eb                                      bl #0x3109e0
0039a0c4  98 32 9f e5                                      ldr r3, [pc, #0x298]
0039a0c8  48 17 94 e5                                      ldr r1, [r4, #0x748]
0039a0cc  00 20 a0 e3                                      mov r2, #0
0039a0d0  03 60 95 e7                                      ldr r6, [r5, r3]
0039a0d4  06 00 a0 e1                                      mov r0, r6
0039a0d8  44 fc 02 eb                                      bl #0x4591f0
0039a0dc  64 17 94 e5                                      ldr r1, [r4, #0x764]
0039a0e0  4c 07 84 e5                                      str r0, [r4, #0x74c]
0039a0e4  00 20 a0 e3                                      mov r2, #0
0039a0e8  06 00 a0 e1                                      mov r0, r6
0039a0ec  3f fc 02 eb                                      bl #0x4591f0
0039a0f0  68 07 84 e5                                      str r0, [r4, #0x768]
0039a0f4  04 00 a0 e1                                      mov r0, r4
0039a0f8  dd f9 ff eb                                      bl #0x398874
0039a0fc  80 77 94 e5                                      ldr r7, [r4, #0x780]
0039a100  7c 37 94 e5                                      ldr r3, [r4, #0x77c]
0039a104  07 00 53 e1                                      cmp r3, r7
0039a108  7c 00 00 0a                                      beq #0x39a300
0039a10c  54 12 9f e5                                      ldr r1, [pc, #0x254]
0039a110  07 00 a0 e1                                      mov r0, r7
0039a114  01 10 8f e0                                      add r1, pc, r1
0039a118  7f d0 fd eb                                      bl #0x30e31c
0039a11c  00 00 50 e3                                      cmp r0, #0
0039a120  76 00 00 0a                                      beq #0x39a300
0039a124  40 32 9f e5                                      ldr r3, [pc, #0x240]
0039a128  03 30 95 e7                                      ldr r3, [r5, r3]
0039a12c  00 80 93 e5                                      ldr r8, [r3]
0039a130  00 00 58 e3                                      cmp r8, #0
0039a134  1c 00 00 0a                                      beq #0x39a1ac
0039a138  30 32 9f e5                                      ldr r3, [pc, #0x230]
0039a13c  00 60 a0 e3                                      mov r6, #0
0039a140  03 30 95 e7                                      ldr r3, [r5, r3]
0039a144  00 a0 93 e5                                      ldr sl, [r3]
0039a148  02 00 00 ea                                      b #0x39a158
0039a14c  01 60 86 e2                                      add r6, r6, #1
0039a150  08 00 56 e1                                      cmp r6, r8
0039a154  14 00 00 0a                                      beq #0x39a1ac
0039a158  06 11 9a e7                                      ldr r1, [sl, r6, lsl #2]
0039a15c  07 00 a0 e1                                      mov r0, r7
0039a160  6d d0 fd eb                                      bl #0x30e31c
0039a164  00 00 50 e3                                      cmp r0, #0
0039a168  f7 ff ff 1a                                      bne #0x39a14c
0039a16c  01 00 76 e3                                      cmn r6, #1
0039a170  0d 00 00 0a                                      beq #0x39a1ac
0039a174  00 10 a0 e1                                      mov r1, r0
0039a178  0c 00 a0 e3                                      mov r0, #0xc
0039a17c  fb d8 fd eb                                      bl #0x310570
0039a180  00 70 a0 e1                                      mov r7, r0
0039a184  59 79 03 eb                                      bl #0x4786f0
0039a188  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
0039a18c  88 77 84 e5                                      str r7, [r4, #0x788]
0039a190  07 00 a0 e1                                      mov r0, r7
0039a194  03 30 95 e7                                      ldr r3, [r5, r3]
0039a198  00 30 93 e5                                      ldr r3, [r3]
0039a19c  06 62 83 e0                                      add r6, r3, r6, lsl #4
0039a1a0  04 20 96 e5                                      ldr r2, [r6, #4]
0039a1a4  08 10 96 e5                                      ldr r1, [r6, #8]
0039a1a8  d9 79 03 eb                                      bl #0x478914
0039a1ac  30 37 94 e5                                      ldr r3, [r4, #0x730]
0039a1b0  01 00 73 e3                                      cmn r3, #1
0039a1b4  4a 00 00 0a                                      beq #0x39a2e4
0039a1b8  04 00 a0 e1                                      mov r0, r4
0039a1bc  67 c2 ff eb                                      bl #0x38ab60
0039a1c0  00 00 50 e3                                      cmp r0, #0
0039a1c4  46 00 00 0a                                      beq #0x39a2e4
0039a1c8  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
0039a1cc  00 00 53 e3                                      cmp r3, #0
0039a1d0  0c 00 00 0a                                      beq #0x39a208
0039a1d4  84 27 d4 e5                                      ldrb r2, [r4, #0x784]
0039a1d8  00 00 52 e3                                      cmp r2, #0
0039a1dc  4d 00 00 1a                                      bne #0x39a318
0039a1e0  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0039a1e4  8c 11 9f e5                                      ldr r1, [pc, #0x18c]
0039a1e8  02 30 a0 e1                                      mov r3, r2
0039a1ec  0c 00 a0 e1                                      mov r0, ip
0039a1f0  01 10 8f e0                                      add r1, pc, r1
0039a1f4  00 c0 9c e5                                      ldr ip, [ip]
0039a1f8  00 20 8d e5                                      str r2, [sp]
0039a1fc  01 20 a0 e3                                      mov r2, #1
0039a200  0f e0 a0 e1                                      mov lr, pc
0039a204  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039a208  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
0039a20c  00 10 a0 e3                                      mov r1, #0
0039a210  28 00 a0 e3                                      mov r0, #0x28
0039a214  03 30 95 e7                                      ldr r3, [r5, r3]
0039a218  01 60 a0 e1                                      mov r6, r1
0039a21c  44 80 93 e5                                      ldr r8, [r3, #0x44]
0039a220  d2 d8 fd eb                                      bl #0x310570
0039a224  01 c0 a0 e3                                      mov ip, #1
0039a228  02 e0 a0 e3                                      mov lr, #2
0039a22c  0c 30 a0 e1                                      mov r3, ip
0039a230  08 10 a0 e1                                      mov r1, r8
0039a234  04 20 a0 e1                                      mov r2, r4
0039a238  10 e0 8d e5                                      str lr, [sp, #0x10]
0039a23c  ff ef 0f e3                                      movw lr, #0xffff
0039a240  00 70 a0 e1                                      mov r7, r0
0039a244  14 e0 8d e5                                      str lr, [sp, #0x14]
0039a248  18 c0 8d e5                                      str ip, [sp, #0x18]
0039a24c  00 60 8d e5                                      str r6, [sp]
0039a250  04 60 8d e5                                      str r6, [sp, #4]
0039a254  08 60 8d e5                                      str r6, [sp, #8]
0039a258  0c 60 8d e5                                      str r6, [sp, #0xc]
0039a25c  23 54 03 eb                                      bl #0x46f2f0
0039a260  18 31 9f e5                                      ldr r3, [pc, #0x118]
0039a264  04 00 a0 e1                                      mov r0, r4
0039a268  07 10 a0 e1                                      mov r1, r7
0039a26c  03 30 95 e7                                      ldr r3, [r5, r3]
0039a270  06 20 a0 e1                                      mov r2, r6
0039a274  08 30 83 e2                                      add r3, r3, #8
0039a278  00 30 87 e5                                      str r3, [r7]
0039a27c  5d ea ff eb                                      bl #0x394bf8
0039a280  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0039a284  03 30 95 e7                                      ldr r3, [r5, r3]
0039a288  00 00 93 e5                                      ldr r0, [r3]
0039a28c  06 00 50 e1                                      cmp r0, r6
0039a290  2c 00 00 0a                                      beq #0x39a348
0039a294  c0 70 9f e5                                      ldr r7, [pc, #0xc0]
0039a298  30 37 94 e5                                      ldr r3, [r4, #0x730]
0039a29c  18 10 a0 e3                                      mov r1, #0x18
0039a2a0  07 20 95 e7                                      ldr r2, [r5, r7]
0039a2a4  00 20 92 e5                                      ldr r2, [r2]
0039a2a8  91 23 23 e0                                      mla r3, r1, r3, r2
0039a2ac  10 10 93 e5                                      ldr r1, [r3, #0x10]
0039a2b0  d1 3d ff eb                                      bl #0x3699fc
0039a2b4  07 20 95 e7                                      ldr r2, [r5, r7]
0039a2b8  30 37 94 e5                                      ldr r3, [r4, #0x730]
0039a2bc  18 10 a0 e3                                      mov r1, #0x18
0039a2c0  00 20 92 e5                                      ldr r2, [r2]
0039a2c4  04 00 a0 e1                                      mov r0, r4
0039a2c8  91 23 23 e0                                      mla r3, r1, r3, r2
0039a2cc  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0039a2d0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0039a2d4  02 20 8f e0                                      add r2, pc, r2
0039a2d8  24 d0 8d e2                                      add sp, sp, #0x24
0039a2dc  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
0039a2e0  1e d3 ff ea                                      b #0x38ef60
0039a2e4  04 00 a0 e1                                      mov r0, r4
0039a2e8  00 30 94 e5                                      ldr r3, [r4]
0039a2ec  00 10 a0 e3                                      mov r1, #0
0039a2f0  0f e0 a0 e1                                      mov lr, pc
0039a2f4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0039a2f8  24 d0 8d e2                                      add sp, sp, #0x24
0039a2fc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0039a300  01 30 a0 e3                                      mov r3, #1
0039a304  84 37 c4 e5                                      strb r3, [r4, #0x784]
0039a308  a7 ff ff ea                                      b #0x39a1ac
0039a30c  00 30 e0 e3                                      mvn r3, #0
0039a310  30 37 84 e5                                      str r3, [r4, #0x730]
0039a314  6a ff ff ea                                      b #0x39a0c4
0039a318  38 c0 93 e5                                      ldr ip, [r3, #0x38]
0039a31c  68 10 9f e5                                      ldr r1, [pc, #0x68]
0039a320  00 20 a0 e3                                      mov r2, #0
0039a324  02 30 a0 e1                                      mov r3, r2
0039a328  0c 00 a0 e1                                      mov r0, ip
0039a32c  01 10 8f e0                                      add r1, pc, r1
0039a330  00 c0 9c e5                                      ldr ip, [ip]
0039a334  00 20 8d e5                                      str r2, [sp]
0039a338  01 20 a0 e3                                      mov r2, #1
0039a33c  0f e0 a0 e1                                      mov lr, pc
0039a340  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0039a344  af ff ff ea                                      b #0x39a208
0039a348  0c 70 9f e5                                      ldr r7, [pc, #0xc]
0039a34c  d8 ff ff ea                                      b #0x39a2b4
; mapping-symbol data/literal pool
0039a350  7c aa 5f 00 a8 0c 00 00 58 42 00 00 1c 0e 00 00  .byte 0x7c, 0xaa, 0x5f, 0x00, 0xa8, 0x0c, 0x00, 0x00, 0x58, 0x42, 0x00, 0x00, 0x1c, 0x0e, 0x00, 0x00
0039a360  a8 1c 00 00 20 1a 00 00 8c 05 54 00 64 2f 00 00  .byte 0xa8, 0x1c, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00, 0x8c, 0x05, 0x54, 0x00, 0x64, 0x2f, 0x00, 0x00
0039a370  54 35 00 00 40 28 00 00 c8 88 52 00 f4 37 00 00  .byte 0x54, 0x35, 0x00, 0x00, 0x40, 0x28, 0x00, 0x00, 0xc8, 0x88, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00
0039a380  18 24 00 00 a4 0d 00 00 ac 88 52 00 84 7f 52 00  .byte 0x18, 0x24, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xac, 0x88, 0x52, 0x00, 0x84, 0x7f, 0x52, 0x00
