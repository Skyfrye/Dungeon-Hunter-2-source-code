; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00394ec0, declared_size=4, range_size=4, mode=arm
; class-group: SoundEmitter
; alias: _ZNK12SoundEmitter4DrawEv
; demangled: SoundEmitter::Draw() const
; decoder-mode: arm
00394ec0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00394ec4, declared_size=8, range_size=8, mode=arm
; class-group: SoundEmitter
; alias: _ZNK12SoundEmitter9IsZonableEv
; demangled: SoundEmitter::IsZonable() const
; decoder-mode: arm
00394ec4  01 00 a0 e3                                      mov r0, #1
00394ec8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00394ecc, declared_size=8, range_size=8, mode=arm
; class-group: SoundEmitter
; alias: _ZNK12SoundEmitter11IsUpdatableEv
; demangled: SoundEmitter::IsUpdatable() const
; decoder-mode: arm
00394ecc  01 00 a0 e3                                      mov r0, #1
00394ed0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00395144, declared_size=124, range_size=124, mode=arm
; class-group: SoundEmitter
; alias: _ZN12SoundEmitter8InitPostEv
; demangled: SoundEmitter::InitPost()
; decoder-mode: arm
00395144  68 30 9f e5                                      ldr r3, [pc, #0x68]
00395148  68 20 9f e5                                      ldr r2, [pc, #0x68]
0039514c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00395150  03 30 8f e0                                      add r3, pc, r3
00395154  02 20 93 e7                                      ldr r2, [r3, r2]
00395158  00 80 a0 e1                                      mov r8, r0
0039515c  8c 63 90 e5                                      ldr r6, [r0, #0x38c]
00395160  00 50 92 e5                                      ldr r5, [r2]
00395164  00 00 55 e3                                      cmp r5, #0
00395168  0e 00 00 0a                                      beq #0x3951a8
0039516c  48 20 9f e5                                      ldr r2, [pc, #0x48]
00395170  00 40 a0 e3                                      mov r4, #0
00395174  02 30 93 e7                                      ldr r3, [r3, r2]
00395178  00 70 93 e5                                      ldr r7, [r3]
0039517c  02 00 00 ea                                      b #0x39518c
00395180  01 40 84 e2                                      add r4, r4, #1
00395184  05 00 54 e1                                      cmp r4, r5
00395188  06 00 00 0a                                      beq #0x3951a8
0039518c  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
00395190  06 00 a0 e1                                      mov r0, r6
00395194  60 e4 fd eb                                      bl #0x30e31c
00395198  00 00 50 e3                                      cmp r0, #0
0039519c  f7 ff ff 1a                                      bne #0x395180
003951a0  90 43 88 e5                                      str r4, [r8, #0x390]
003951a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003951a8  00 40 e0 e3                                      mvn r4, #0
003951ac  90 43 88 e5                                      str r4, [r8, #0x390]
003951b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003951b4  40 f9 5f 00 38 3d 00 00 a8 39 00 00              .byte 0x40, 0xf9, 0x5f, 0x00, 0x38, 0x3d, 0x00, 0x00, 0xa8, 0x39, 0x00, 0x00

; FUNCTION 0x003951c0, declared_size=536, range_size=536, mode=arm
; class-group: SoundEmitter
; alias: _ZN12SoundEmitter6UpdateEv
; demangled: SoundEmitter::Update()
; decoder-mode: arm
003951c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003951c4  00 42 9f e5                                      ldr r4, [pc, #0x200]
003951c8  00 32 9f e5                                      ldr r3, [pc, #0x200]
003951cc  2c d0 4d e2                                      sub sp, sp, #0x2c
003951d0  04 40 8f e0                                      add r4, pc, r4
003951d4  03 60 94 e7                                      ldr r6, [r4, r3]
003951d8  00 50 a0 e1                                      mov r5, r0
003951dc  06 00 a0 e1                                      mov r0, r6
003951e0  eb 28 fe eb                                      bl #0x31f594
003951e4  00 00 50 e3                                      cmp r0, #0
003951e8  0b 00 00 0a                                      beq #0x39521c
003951ec  40 00 96 e5                                      ldr r0, [r6, #0x40]
003951f0  00 10 a0 e3                                      mov r1, #0
003951f4  01 20 a0 e3                                      mov r2, #1
003951f8  9e 64 ff eb                                      bl #0x36e478
003951fc  60 36 90 e5                                      ldr r3, [r0, #0x660]
00395200  00 00 53 e3                                      cmp r3, #0
00395204  04 00 00 0a                                      beq #0x39521c
00395208  06 00 a0 e1                                      mov r0, r6
0039520c  e0 28 fe eb                                      bl #0x31f594
00395210  30 31 90 e5                                      ldr r3, [r0, #0x130]
00395214  26 00 53 e3                                      cmp r3, #0x26
00395218  01 00 00 0a                                      beq #0x395224
0039521c  2c d0 8d e2                                      add sp, sp, #0x2c
00395220  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00395224  01 20 a0 e3                                      mov r2, #1
00395228  40 00 96 e5                                      ldr r0, [r6, #0x40]
0039522c  00 10 a0 e3                                      mov r1, #0
00395230  90 64 ff eb                                      bl #0x36e478
00395234  60 36 90 e5                                      ldr r3, [r0, #0x660]
00395238  60 01 95 e5                                      ldr r0, [r5, #0x160]
0039523c  60 11 93 e5                                      ldr r1, [r3, #0x160]
00395240  1c 10 8d e5                                      str r1, [sp, #0x1c]
00395244  64 71 93 e5                                      ldr r7, [r3, #0x164]
00395248  20 70 8d e5                                      str r7, [sp, #0x20]
0039524c  68 61 93 e5                                      ldr r6, [r3, #0x168]
00395250  24 60 8d e5                                      str r6, [sp, #0x24]
00395254  54 e4 fd eb                                      bl #0x30e3ac
00395258  07 10 a0 e1                                      mov r1, r7
0039525c  00 a0 a0 e1                                      mov sl, r0
00395260  64 01 95 e5                                      ldr r0, [r5, #0x164]
00395264  50 e4 fd eb                                      bl #0x30e3ac
00395268  06 10 a0 e1                                      mov r1, r6
0039526c  00 80 a0 e1                                      mov r8, r0
00395270  68 01 95 e5                                      ldr r0, [r5, #0x168]
00395274  4c e4 fd eb                                      bl #0x30e3ac
00395278  0a 10 a0 e1                                      mov r1, sl
0039527c  00 70 a0 e1                                      mov r7, r0
00395280  0a 00 a0 e1                                      mov r0, sl
00395284  b8 e6 fd eb                                      bl #0x30ed6c
00395288  08 10 a0 e1                                      mov r1, r8
0039528c  00 60 a0 e1                                      mov r6, r0
00395290  08 00 a0 e1                                      mov r0, r8
00395294  b4 e6 fd eb                                      bl #0x30ed6c
00395298  00 10 a0 e1                                      mov r1, r0
0039529c  06 00 a0 e1                                      mov r0, r6
003952a0  3f e6 fd eb                                      bl #0x30eba4
003952a4  07 10 a0 e1                                      mov r1, r7
003952a8  00 60 a0 e1                                      mov r6, r0
003952ac  07 00 a0 e1                                      mov r0, r7
003952b0  ad e6 fd eb                                      bl #0x30ed6c
003952b4  00 10 a0 e1                                      mov r1, r0
003952b8  06 00 a0 e1                                      mov r0, r6
003952bc  38 e6 fd eb                                      bl #0x30eba4
003952c0  77 e5 fd eb                                      bl #0x30e8a4
003952c4  bd e3 fd eb                                      bl #0x30e1c0
003952c8  f4 e4 fd eb                                      bl #0x30e6a0
003952cc  9c 33 d5 e5                                      ldrb r3, [r5, #0x39c]
003952d0  00 70 a0 e1                                      mov r7, r0
003952d4  00 00 53 e3                                      cmp r3, #0
003952d8  19 00 00 0a                                      beq #0x395344
003952dc  98 63 95 e5                                      ldr r6, [r5, #0x398]
003952e0  00 10 a0 e1                                      mov r1, r0
003952e4  06 00 a0 e1                                      mov r0, r6
003952e8  af e5 fd eb                                      bl #0x30e9ac
003952ec  00 00 50 e3                                      cmp r0, #0
003952f0  c9 ff ff 0a                                      beq #0x39521c
003952f4  06 00 a0 e1                                      mov r0, r6
003952f8  00 10 a0 e3                                      mov r1, #0
003952fc  fd e3 fd eb                                      bl #0x30e2f8
00395300  00 00 50 e3                                      cmp r0, #0
00395304  c4 ff ff 0a                                      beq #0x39521c
00395308  00 30 a0 e3                                      mov r3, #0
0039530c  9c 33 c5 e5                                      strb r3, [r5, #0x39c]
00395310  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00395314  03 30 94 e7                                      ldr r3, [r4, r3]
00395318  00 00 93 e5                                      ldr r0, [r3]
0039531c  00 00 50 e3                                      cmp r0, #0
00395320  08 00 00 0a                                      beq #0x395348
00395324  90 13 95 e5                                      ldr r1, [r5, #0x390]
00395328  1c 30 8d e2                                      add r3, sp, #0x1c
0039532c  fa 20 a0 e3                                      mov r2, #0xfa
00395330  00 60 8d e5                                      str r6, [sp]
00395334  b7 53 ff eb                                      bl #0x36a218
00395338  9c 33 d5 e5                                      ldrb r3, [r5, #0x39c]
0039533c  00 00 53 e3                                      cmp r3, #0
00395340  b5 ff ff 1a                                      bne #0x39521c
00395344  98 63 95 e5                                      ldr r6, [r5, #0x398]
00395348  07 10 a0 e1                                      mov r1, r7
0039534c  06 00 a0 e1                                      mov r0, r6
00395350  e8 e3 fd eb                                      bl #0x30e2f8
00395354  00 00 50 e3                                      cmp r0, #0
00395358  af ff ff 0a                                      beq #0x39521c
0039535c  06 00 a0 e1                                      mov r0, r6
00395360  00 10 a0 e3                                      mov r1, #0
00395364  e3 e3 fd eb                                      bl #0x30e2f8
00395368  00 00 50 e3                                      cmp r0, #0
0039536c  aa ff ff 0a                                      beq #0x39521c
00395370  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00395374  01 c0 a0 e3                                      mov ip, #1
00395378  9c c3 c5 e5                                      strb ip, [r5, #0x39c]
0039537c  03 30 94 e7                                      ldr r3, [r4, r3]
00395380  00 00 93 e5                                      ldr r0, [r3]
00395384  00 00 50 e3                                      cmp r0, #0
00395388  a3 ff ff 0a                                      beq #0x39521c
0039538c  74 33 d5 e5                                      ldrb r3, [r5, #0x374]
00395390  90 13 95 e5                                      ldr r1, [r5, #0x390]
00395394  64 61 95 e5                                      ldr r6, [r5, #0x164]
00395398  68 41 95 e5                                      ldr r4, [r5, #0x168]
0039539c  60 51 95 e5                                      ldr r5, [r5, #0x160]
003953a0  bf e4 a0 e3                                      mov lr, #0xbf000000
003953a4  02 e5 8e e2                                      add lr, lr, #0x800000
003953a8  10 20 8d e2                                      add r2, sp, #0x10
003953ac  10 50 8d e5                                      str r5, [sp, #0x10]
003953b0  14 60 8d e5                                      str r6, [sp, #0x14]
003953b4  18 40 8d e5                                      str r4, [sp, #0x18]
003953b8  00 c0 8d e5                                      str ip, [sp]
003953bc  08 e0 8d e5                                      str lr, [sp, #8]
003953c0  04 e0 8d e5                                      str lr, [sp, #4]
003953c4  83 58 ff eb                                      bl #0x36b5d8
003953c8  93 ff ff ea                                      b #0x39521c
; mapping-symbol data/literal pool
003953cc  c0 f8 5f 00 f4 37 00 00 a4 0d 00 00              .byte 0xc0, 0xf8, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x003953d8, declared_size=8, range_size=8, mode=arm
; class-group: SoundEmitter
; alias: _ZThn36_N12SoundEmitterD1Ev
; demangled: non-virtual thunk to SoundEmitter::~SoundEmitter()
; decoder-mode: arm
003953d8  24 00 40 e2                                      sub r0, r0, #0x24
003953dc  ff ff ff ea                                      b #0x3953e0

; FUNCTION 0x003953e0, declared_size=140, range_size=140, mode=arm
; class-group: SoundEmitter
; alias: _ZN12SoundEmitterD1Ev
; demangled: SoundEmitter::~SoundEmitter()
; decoder-mode: arm
003953e0  10 40 2d e9                                      push {r4, lr}
003953e4  74 30 9f e5                                      ldr r3, [pc, #0x74]
003953e8  74 20 9f e5                                      ldr r2, [pc, #0x74]
003953ec  00 40 a0 e1                                      mov r4, r0
003953f0  03 30 8f e0                                      add r3, pc, r3
003953f4  9c 03 d0 e5                                      ldrb r0, [r0, #0x39c]
003953f8  02 20 93 e7                                      ldr r2, [r3, r2]
003953fc  00 00 50 e3                                      cmp r0, #0
00395400  e4 10 82 e2                                      add r1, r2, #0xe4
00395404  08 00 82 e2                                      add r0, r2, #8
00395408  d8 20 82 e2                                      add r2, r2, #0xd8
0039540c  05 00 84 e8                                      stm r4, {r0, r2}
00395410  24 10 84 e5                                      str r1, [r4, #0x24]
00395414  05 00 00 1a                                      bne #0x395430
00395418  de 0f 84 e2                                      add r0, r4, #0x378
0039541c  62 f9 fd eb                                      bl #0x3139ac
00395420  04 00 a0 e1                                      mov r0, r4
00395424  d3 df ff eb                                      bl #0x38d378
00395428  04 00 a0 e1                                      mov r0, r4
0039542c  10 80 bd e8                                      pop {r4, pc}
00395430  30 00 9f e5                                      ldr r0, [pc, #0x30]
00395434  90 13 94 e5                                      ldr r1, [r4, #0x390]
00395438  00 20 a0 e3                                      mov r2, #0
0039543c  00 30 93 e7                                      ldr r3, [r3, r0]
00395440  00 00 93 e5                                      ldr r0, [r3]
00395444  e8 52 ff eb                                      bl #0x369fec
00395448  de 0f 84 e2                                      add r0, r4, #0x378
0039544c  56 f9 fd eb                                      bl #0x3139ac
00395450  04 00 a0 e1                                      mov r0, r4
00395454  c7 df ff eb                                      bl #0x38d378
00395458  04 00 a0 e1                                      mov r0, r4
0039545c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00395460  a0 f6 5f 00 58 1b 00 00 a4 0d 00 00              .byte 0xa0, 0xf6, 0x5f, 0x00, 0x58, 0x1b, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x0039546c, declared_size=8, range_size=8, mode=arm
; class-group: SoundEmitter
; alias: _ZThn36_N12SoundEmitterD0Ev
; demangled: non-virtual thunk to SoundEmitter::~SoundEmitter()
; decoder-mode: arm
0039546c  24 00 40 e2                                      sub r0, r0, #0x24
00395470  ff ff ff ea                                      b #0x395474

; FUNCTION 0x00395474, declared_size=28, range_size=28, mode=arm
; class-group: SoundEmitter
; alias: _ZN12SoundEmitterD0Ev
; demangled: SoundEmitter::~SoundEmitter()
; decoder-mode: arm
00395474  10 40 2d e9                                      push {r4, lr}
00395478  00 40 a0 e1                                      mov r4, r0
0039547c  d7 ff ff eb                                      bl #0x3953e0
00395480  04 00 a0 e1                                      mov r0, r4
00395484  ed eb fd eb                                      bl #0x310440
00395488  04 00 a0 e1                                      mov r0, r4
0039548c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00395490, declared_size=140, range_size=140, mode=arm
; class-group: SoundEmitter
; alias: _ZN12SoundEmitterD2Ev
; demangled: SoundEmitter::~SoundEmitter()
; decoder-mode: arm
00395490  10 40 2d e9                                      push {r4, lr}
00395494  74 30 9f e5                                      ldr r3, [pc, #0x74]
00395498  74 20 9f e5                                      ldr r2, [pc, #0x74]
0039549c  00 40 a0 e1                                      mov r4, r0
003954a0  03 30 8f e0                                      add r3, pc, r3
003954a4  9c 03 d0 e5                                      ldrb r0, [r0, #0x39c]
003954a8  02 20 93 e7                                      ldr r2, [r3, r2]
003954ac  00 00 50 e3                                      cmp r0, #0
003954b0  e4 10 82 e2                                      add r1, r2, #0xe4
003954b4  08 00 82 e2                                      add r0, r2, #8
003954b8  d8 20 82 e2                                      add r2, r2, #0xd8
003954bc  05 00 84 e8                                      stm r4, {r0, r2}
003954c0  24 10 84 e5                                      str r1, [r4, #0x24]
003954c4  05 00 00 1a                                      bne #0x3954e0
003954c8  de 0f 84 e2                                      add r0, r4, #0x378
003954cc  36 f9 fd eb                                      bl #0x3139ac
003954d0  04 00 a0 e1                                      mov r0, r4
003954d4  a7 df ff eb                                      bl #0x38d378
003954d8  04 00 a0 e1                                      mov r0, r4
003954dc  10 80 bd e8                                      pop {r4, pc}
003954e0  30 00 9f e5                                      ldr r0, [pc, #0x30]
003954e4  90 13 94 e5                                      ldr r1, [r4, #0x390]
003954e8  00 20 a0 e3                                      mov r2, #0
003954ec  00 30 93 e7                                      ldr r3, [r3, r0]
003954f0  00 00 93 e5                                      ldr r0, [r3]
003954f4  bc 52 ff eb                                      bl #0x369fec
003954f8  de 0f 84 e2                                      add r0, r4, #0x378
003954fc  2a f9 fd eb                                      bl #0x3139ac
00395500  04 00 a0 e1                                      mov r0, r4
00395504  9b df ff eb                                      bl #0x38d378
00395508  04 00 a0 e1                                      mov r0, r4
0039550c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00395510  f0 f5 5f 00 58 1b 00 00 a4 0d 00 00              .byte 0xf0, 0xf5, 0x5f, 0x00, 0x58, 0x1b, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x0039551c, declared_size=140, range_size=140, mode=arm
; class-group: SoundEmitter
; alias: _ZN12SoundEmitterC1EN10ObjectBase6GO_IDSE
; demangled: SoundEmitter::SoundEmitter(ObjectBase::GO_IDS)
; decoder-mode: arm
0039551c  70 40 2d e9                                      push {r4, r5, r6, lr}
00395520  78 50 9f e5                                      ldr r5, [pc, #0x78]
00395524  00 40 a0 e1                                      mov r4, r0
00395528  9a db ff eb                                      bl #0x38c398
0039552c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00395530  05 50 8f e0                                      add r5, pc, r5
00395534  de 2f 84 e2                                      add r2, r4, #0x378
00395538  03 30 95 e7                                      ldr r3, [r5, r3]
0039553c  02 00 a0 e1                                      mov r0, r2
00395540  88 23 84 e5                                      str r2, [r4, #0x388]
00395544  08 c0 83 e2                                      add ip, r3, #8
00395548  e4 10 83 e2                                      add r1, r3, #0xe4
0039554c  d8 30 83 e2                                      add r3, r3, #0xd8
00395550  04 30 84 e5                                      str r3, [r4, #4]
00395554  24 10 84 e5                                      str r1, [r4, #0x24]
00395558  8c 23 84 e5                                      str r2, [r4, #0x38c]
0039555c  00 c0 84 e5                                      str ip, [r4]
00395560  10 10 a0 e3                                      mov r1, #0x10
00395564  44 f0 fd eb                                      bl #0x31167c
00395568  88 13 94 e5                                      ldr r1, [r4, #0x388]
0039556c  00 20 a0 e3                                      mov r2, #0
00395570  bf 34 a0 e3                                      mov r3, #0xbf000000
00395574  00 20 c1 e5                                      strb r2, [r1]
00395578  02 35 83 e2                                      add r3, r3, #0x800000
0039557c  00 10 e0 e3                                      mvn r1, #0
00395580  9c 23 c4 e5                                      strb r2, [r4, #0x39c]
00395584  01 20 a0 e3                                      mov r2, #1
00395588  90 13 84 e5                                      str r1, [r4, #0x390]
0039558c  98 33 84 e5                                      str r3, [r4, #0x398]
00395590  85 20 c4 e5                                      strb r2, [r4, #0x85]
00395594  94 33 84 e5                                      str r3, [r4, #0x394]
00395598  04 00 a0 e1                                      mov r0, r4
0039559c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003955a0  60 f5 5f 00 58 1b 00 00                          .byte 0x60, 0xf5, 0x5f, 0x00, 0x58, 0x1b, 0x00, 0x00

; FUNCTION 0x003955a8, declared_size=140, range_size=140, mode=arm
; class-group: SoundEmitter
; alias: _ZN12SoundEmitterC2EN10ObjectBase6GO_IDSE
; demangled: SoundEmitter::SoundEmitter(ObjectBase::GO_IDS)
; decoder-mode: arm
003955a8  70 40 2d e9                                      push {r4, r5, r6, lr}
003955ac  78 50 9f e5                                      ldr r5, [pc, #0x78]
003955b0  00 40 a0 e1                                      mov r4, r0
003955b4  77 db ff eb                                      bl #0x38c398
003955b8  70 30 9f e5                                      ldr r3, [pc, #0x70]
003955bc  05 50 8f e0                                      add r5, pc, r5
003955c0  de 2f 84 e2                                      add r2, r4, #0x378
003955c4  03 30 95 e7                                      ldr r3, [r5, r3]
003955c8  02 00 a0 e1                                      mov r0, r2
003955cc  88 23 84 e5                                      str r2, [r4, #0x388]
003955d0  08 c0 83 e2                                      add ip, r3, #8
003955d4  e4 10 83 e2                                      add r1, r3, #0xe4
003955d8  d8 30 83 e2                                      add r3, r3, #0xd8
003955dc  04 30 84 e5                                      str r3, [r4, #4]
003955e0  24 10 84 e5                                      str r1, [r4, #0x24]
003955e4  8c 23 84 e5                                      str r2, [r4, #0x38c]
003955e8  00 c0 84 e5                                      str ip, [r4]
003955ec  10 10 a0 e3                                      mov r1, #0x10
003955f0  21 f0 fd eb                                      bl #0x31167c
003955f4  88 13 94 e5                                      ldr r1, [r4, #0x388]
003955f8  00 20 a0 e3                                      mov r2, #0
003955fc  bf 34 a0 e3                                      mov r3, #0xbf000000
00395600  00 20 c1 e5                                      strb r2, [r1]
00395604  02 35 83 e2                                      add r3, r3, #0x800000
00395608  00 10 e0 e3                                      mvn r1, #0
0039560c  9c 23 c4 e5                                      strb r2, [r4, #0x39c]
00395610  01 20 a0 e3                                      mov r2, #1
00395614  90 13 84 e5                                      str r1, [r4, #0x390]
00395618  98 33 84 e5                                      str r3, [r4, #0x398]
0039561c  85 20 c4 e5                                      strb r2, [r4, #0x85]
00395620  94 33 84 e5                                      str r3, [r4, #0x394]
00395624  04 00 a0 e1                                      mov r0, r4
00395628  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039562c  d4 f4 5f 00 58 1b 00 00                          .byte 0xd4, 0xf4, 0x5f, 0x00, 0x58, 0x1b, 0x00, 0x00

; FUNCTION 0x00395710, declared_size=8, range_size=8, mode=arm
; class-group: SoundEmitter
; alias: _ZThn4_N12SoundEmitter17DeclarePropertiesEv
; demangled: non-virtual thunk to SoundEmitter::DeclareProperties()
; decoder-mode: arm
00395710  04 00 40 e2                                      sub r0, r0, #4
00395714  ff ff ff ea                                      b #0x395718

; FUNCTION 0x00395718, declared_size=552, range_size=552, mode=arm
; class-group: SoundEmitter
; alias: _ZN12SoundEmitter17DeclarePropertiesEv
; demangled: SoundEmitter::DeclareProperties()
; decoder-mode: arm
00395718  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0039571c  e8 61 9f e5                                      ldr r6, [pc, #0x1e8]
00395720  e8 31 9f e5                                      ldr r3, [pc, #0x1e8]
00395724  4c d0 4d e2                                      sub sp, sp, #0x4c
00395728  06 60 8f e0                                      add r6, pc, r6
0039572c  03 c0 96 e7                                      ldr ip, [r6, r3]
00395730  04 40 80 e2                                      add r4, r0, #4
00395734  00 50 a0 e1                                      mov r5, r0
00395738  00 30 9c e5                                      ldr r3, [ip]
0039573c  dd af 80 e2                                      add sl, r0, #0x374
00395740  04 c0 8d e5                                      str ip, [sp, #4]
00395744  44 30 8d e5                                      str r3, [sp, #0x44]
00395748  e6 dd ff eb                                      bl #0x38cee8
0039574c  00 10 a0 e3                                      mov r1, #0
00395750  24 00 a0 e3                                      mov r0, #0x24
00395754  85 eb fd eb                                      bl #0x310570
00395758  b4 b1 9f e5                                      ldr fp, [pc, #0x1b4]
0039575c  b4 81 9f e5                                      ldr r8, [pc, #0x1b4]
00395760  00 70 a0 e1                                      mov r7, r0
00395764  0b b0 96 e7                                      ldr fp, [r6, fp]
00395768  08 80 8f e0                                      add r8, pc, r8
0039576c  08 10 a0 e1                                      mov r1, r8
00395770  08 b0 8b e2                                      add fp, fp, #8
00395774  10 20 8d e2                                      add r2, sp, #0x10
00395778  08 b0 80 e4                                      str fp, [r0], #8
0039577c  5a fa fd eb                                      bl #0x3140ec
00395780  94 31 9f e5                                      ldr r3, [pc, #0x194]
00395784  0a a0 64 e0                                      rsb sl, r4, sl
00395788  01 20 a0 e3                                      mov r2, #1
0039578c  03 30 96 e7                                      ldr r3, [r6, r3]
00395790  2c 90 8d e2                                      add sb, sp, #0x2c
00395794  04 a0 87 e5                                      str sl, [r7, #4]
00395798  08 30 83 e2                                      add r3, r3, #8
0039579c  00 30 87 e5                                      str r3, [r7]
003957a0  20 20 c7 e5                                      strb r2, [r7, #0x20]
003957a4  08 10 a0 e1                                      mov r1, r8
003957a8  07 20 a0 e1                                      mov r2, r7
003957ac  04 00 a0 e1                                      mov r0, r4
003957b0  4b f9 05 eb                                      bl #0x513ce4
003957b4  09 00 a0 e1                                      mov r0, sb
003957b8  10 10 a0 e3                                      mov r1, #0x10
003957bc  3c 90 8d e5                                      str sb, [sp, #0x3c]
003957c0  40 90 8d e5                                      str sb, [sp, #0x40]
003957c4  ac ef fd eb                                      bl #0x31167c
003957c8  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
003957cc  00 70 a0 e3                                      mov r7, #0
003957d0  14 80 8d e2                                      add r8, sp, #0x14
003957d4  00 70 c3 e5                                      strb r7, [r3]
003957d8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003957dc  08 00 a0 e1                                      mov r0, r8
003957e0  40 10 9d e5                                      ldr r1, [sp, #0x40]
003957e4  24 80 8d e5                                      str r8, [sp, #0x24]
003957e8  28 80 8d e5                                      str r8, [sp, #0x28]
003957ec  bd ef fd eb                                      bl #0x3116e8
003957f0  07 10 a0 e1                                      mov r1, r7
003957f4  38 00 a0 e3                                      mov r0, #0x38
003957f8  5c eb fd eb                                      bl #0x310570
003957fc  1c a1 9f e5                                      ldr sl, [pc, #0x11c]
00395800  00 70 a0 e1                                      mov r7, r0
00395804  0c 20 8d e2                                      add r2, sp, #0xc
00395808  0a a0 8f e0                                      add sl, pc, sl
0039580c  0a 10 a0 e1                                      mov r1, sl
00395810  08 b0 80 e4                                      str fp, [r0], #8
00395814  34 fa fd eb                                      bl #0x3140ec
00395818  04 31 9f e5                                      ldr r3, [pc, #0x104]
0039581c  de 2f 85 e2                                      add r2, r5, #0x378
00395820  07 00 a0 e1                                      mov r0, r7
00395824  03 30 96 e7                                      ldr r3, [r6, r3]
00395828  02 20 64 e0                                      rsb r2, r4, r2
0039582c  04 20 87 e5                                      str r2, [r7, #4]
00395830  08 30 83 e2                                      add r3, r3, #8
00395834  20 30 80 e4                                      str r3, [r0], #0x20
00395838  30 00 87 e5                                      str r0, [r7, #0x30]
0039583c  34 00 87 e5                                      str r0, [r7, #0x34]
00395840  28 10 9d e5                                      ldr r1, [sp, #0x28]
00395844  24 20 9d e5                                      ldr r2, [sp, #0x24]
00395848  a6 ef fd eb                                      bl #0x3116e8
0039584c  0a 10 a0 e1                                      mov r1, sl
00395850  07 20 a0 e1                                      mov r2, r7
00395854  04 00 a0 e1                                      mov r0, r4
00395858  21 f9 05 eb                                      bl #0x513ce4
0039585c  08 00 a0 e1                                      mov r0, r8
00395860  51 f8 fd eb                                      bl #0x3139ac
00395864  09 00 a0 e1                                      mov r0, sb
00395868  4f f8 fd eb                                      bl #0x3139ac
0039586c  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00395870  b4 70 9f e5                                      ldr r7, [pc, #0xb4]
00395874  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00395878  03 60 96 e7                                      ldr r6, [r6, r3]
0039587c  07 70 8f e0                                      add r7, pc, r7
00395880  02 20 8f e0                                      add r2, pc, r2
00395884  07 10 a0 e1                                      mov r1, r7
00395888  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
0039588c  d2 bc 04 eb                                      bl #0x4c4bdc
00395890  33 e4 fd eb                                      bl #0x30e964
00395894  98 80 9f e5                                      ldr r8, [pc, #0x98]
00395898  e5 af 85 e2                                      add sl, r5, #0x394
0039589c  00 30 a0 e1                                      mov r3, r0
003958a0  08 80 8f e0                                      add r8, pc, r8
003958a4  08 10 a0 e1                                      mov r1, r8
003958a8  04 00 a0 e1                                      mov r0, r4
003958ac  0a 20 a0 e1                                      mov r2, sl
003958b0  e1 fd ff eb                                      bl #0x39503c
003958b4  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
003958b8  07 10 a0 e1                                      mov r1, r7
003958bc  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
003958c0  02 20 8f e0                                      add r2, pc, r2
003958c4  c4 bc 04 eb                                      bl #0x4c4bdc
003958c8  25 e4 fd eb                                      bl #0x30e964
003958cc  68 80 9f e5                                      ldr r8, [pc, #0x68]
003958d0  e6 5f 85 e2                                      add r5, r5, #0x398
003958d4  00 30 a0 e1                                      mov r3, r0
003958d8  08 80 8f e0                                      add r8, pc, r8
003958dc  05 20 a0 e1                                      mov r2, r5
003958e0  04 00 a0 e1                                      mov r0, r4
003958e4  08 10 a0 e1                                      mov r1, r8
003958e8  d3 fd ff eb                                      bl #0x39503c
003958ec  04 c0 9d e5                                      ldr ip, [sp, #4]
003958f0  44 20 9d e5                                      ldr r2, [sp, #0x44]
003958f4  00 30 9c e5                                      ldr r3, [ip]
003958f8  03 00 52 e1                                      cmp r2, r3
003958fc  01 00 00 1a                                      bne #0x395908
00395900  4c d0 8d e2                                      add sp, sp, #0x4c
00395904  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00395908  80 e2 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0039590c  68 f3 5f 00 ac 40 00 00 30 23 00 00 28 d1 52 00  .byte 0x68, 0xf3, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x23, 0x00, 0x00, 0x28, 0xd1, 0x52, 0x00
0039591c  4c 3e 00 00 90 d0 52 00 94 34 00 00 f4 37 00 00  .byte 0x4c, 0x3e, 0x00, 0x00, 0x90, 0xd0, 0x52, 0x00, 0x94, 0x34, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0039592c  dc ca 52 00 20 d0 52 00 18 d0 52 00 a8 ca 52 00  .byte 0xdc, 0xca, 0x52, 0x00, 0x20, 0xd0, 0x52, 0x00, 0x18, 0xd0, 0x52, 0x00, 0xa8, 0xca, 0x52, 0x00
0039593c  e8 cf 52 00                                      .byte 0xe8, 0xcf, 0x52, 0x00
