; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047935c, declared_size=72, range_size=72, mode=arm
; class-group: GameEvent
; alias: _ZNK9GameEvent23DBG_GetCurrentStateNameEv
; demangled: GameEvent::DBG_GetCurrentStateName() const
; decoder-mode: arm
0047935c  00 20 90 e5                                      ldr r2, [r0]
00479360  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00479364  02 00 52 e3                                      cmp r2, #2
00479368  03 30 8f e0                                      add r3, pc, r3
0047936c  02 00 00 9a                                      bls #0x47937c
00479370  20 00 9f e5                                      ldr r0, [pc, #0x20]
00479374  00 00 8f e0                                      add r0, pc, r0
00479378  1e ff 2f e1                                      bx lr
0047937c  18 10 9f e5                                      ldr r1, [pc, #0x18]
00479380  01 30 93 e7                                      ldr r3, [r3, r1]
00479384  14 10 9f e5                                      ldr r1, [pc, #0x14]
00479388  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0047938c  01 10 8f e0                                      add r1, pc, r1
00479390  dc 2d 01 ea                                      b #0x4c4b08
; mapping-symbol data/literal pool
00479394  28 b7 51 00 ec d0 44 00 f4 37 00 00 94 46 45 00  .byte 0x28, 0xb7, 0x51, 0x00, 0xec, 0xd0, 0x44, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x94, 0x46, 0x45, 0x00

; FUNCTION 0x004793a4, declared_size=44, range_size=44, mode=arm
; class-group: GameEvent
; alias: _ZN9GameEvent10ExecScriptEi
; demangled: GameEvent::ExecScript(int)
; decoder-mode: arm
004793a4  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
004793a8  00 00 51 e3                                      cmp r1, #0
004793ac  00 00 8f e0                                      add r0, pc, r0
004793b0  1e ff 2f b1                                      bxlt lr
004793b4  10 c0 9f e5                                      ldr ip, [pc, #0x10]
004793b8  00 20 e0 e3                                      mvn r2, #0
004793bc  00 30 a0 e3                                      mov r3, #0
004793c0  0c 00 90 e7                                      ldr r0, [r0, ip]
004793c4  7d 9c ff ea                                      b #0x4605c0
; mapping-symbol data/literal pool
004793c8  e4 b6 51 00 20 1a 00 00                          .byte 0xe4, 0xb6, 0x51, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x004793d0, declared_size=56, range_size=56, mode=arm
; class-group: GameEvent
; alias: _ZN9GameEvent8SetStateEi
; demangled: GameEvent::SetState(int)
; decoder-mode: arm
004793d0  02 00 51 e3                                      cmp r1, #2
004793d4  10 40 2d e9                                      push {r4, lr}
004793d8  00 40 a0 e1                                      mov r4, r0
004793dc  01 00 00 8a                                      bhi #0x4793e8
004793e0  00 10 80 e5                                      str r1, [r0]
004793e4  00 00 00 0a                                      beq #0x4793ec
004793e8  10 80 bd e8                                      pop {r4, pc}
004793ec  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
004793f0  0c 00 93 e5                                      ldr r0, [r3, #0xc]
004793f4  8e 19 00 eb                                      bl #0x47fa34
004793f8  00 10 a0 e1                                      mov r1, r0
004793fc  04 00 a0 e1                                      mov r0, r4
00479400  10 40 bd e8                                      pop {r4, lr}
00479404  e6 ff ff ea                                      b #0x4793a4

; FUNCTION 0x00479408, declared_size=244, range_size=244, mode=arm
; class-group: GameEvent
; alias: _ZN9GameEvent6UpdateEv
; demangled: GameEvent::Update()
; decoder-mode: arm
00479408  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0047940c  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
00479410  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00479414  03 30 8f e0                                      add r3, pc, r3
00479418  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
0047941c  02 50 93 e7                                      ldr r5, [r3, r2]
00479420  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
00479424  04 40 8f e0                                      add r4, pc, r4
00479428  00 60 a0 e1                                      mov r6, r0
0047942c  02 20 8f e0                                      add r2, pc, r2
00479430  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00479434  04 10 a0 e1                                      mov r1, r4
00479438  00 70 96 e5                                      ldr r7, [r6]
0047943c  e6 2d 01 eb                                      bl #0x4c4bdc
00479440  00 00 57 e1                                      cmp r7, r0
00479444  0d 00 00 0a                                      beq #0x479480
00479448  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
0047944c  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00479450  04 10 a0 e1                                      mov r1, r4
00479454  02 20 8f e0                                      add r2, pc, r2
00479458  00 70 96 e5                                      ldr r7, [r6]
0047945c  de 2d 01 eb                                      bl #0x4c4bdc
00479460  00 00 57 e1                                      cmp r7, r0
00479464  0a 00 00 0a                                      beq #0x479494
00479468  80 20 9f e5                                      ldr r2, [pc, #0x80]
0047946c  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00479470  04 10 a0 e1                                      mov r1, r4
00479474  02 20 8f e0                                      add r2, pc, r2
00479478  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0047947c  d6 2d 01 ea                                      b #0x4c4bdc
00479480  0c 00 86 e2                                      add r0, r6, #0xc
00479484  03 04 00 eb                                      bl #0x47a498
00479488  00 00 50 e3                                      cmp r0, #0
0047948c  09 00 00 1a                                      bne #0x4794b8
00479490  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00479494  0c 00 86 e2                                      add r0, r6, #0xc
00479498  e9 03 00 eb                                      bl #0x47a444
0047949c  00 00 50 e3                                      cmp r0, #0
004794a0  fa ff ff 0a                                      beq #0x479490
004794a4  48 20 9f e5                                      ldr r2, [pc, #0x48]
004794a8  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
004794ac  04 10 a0 e1                                      mov r1, r4
004794b0  02 20 8f e0                                      add r2, pc, r2
004794b4  03 00 00 ea                                      b #0x4794c8
004794b8  38 20 9f e5                                      ldr r2, [pc, #0x38]
004794bc  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
004794c0  04 10 a0 e1                                      mov r1, r4
004794c4  02 20 8f e0                                      add r2, pc, r2
004794c8  c3 2d 01 eb                                      bl #0x4c4bdc
004794cc  00 10 a0 e1                                      mov r1, r0
004794d0  06 00 a0 e1                                      mov r0, r6
004794d4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
004794d8  bc ff ff ea                                      b #0x4793d0
; mapping-symbol data/literal pool
004794dc  7c b6 51 00 f4 37 00 00 fc 45 45 00 f4 46 45 00  .byte 0x7c, 0xb6, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xfc, 0x45, 0x45, 0x00, 0xf4, 0x46, 0x45, 0x00
004794ec  94 5e 44 00 bc 46 45 00 80 46 45 00 24 5e 44 00  .byte 0x94, 0x5e, 0x44, 0x00, 0xbc, 0x46, 0x45, 0x00, 0x80, 0x46, 0x45, 0x00, 0x24, 0x5e, 0x44, 0x00

; FUNCTION 0x004794fc, declared_size=60, range_size=60, mode=arm
; class-group: GameEvent
; alias: _ZN9GameEvent7CompileEv
; demangled: GameEvent::Compile()
; decoder-mode: arm
004794fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00479500  0c 50 80 e2                                      add r5, r0, #0xc
00479504  00 40 a0 e1                                      mov r4, r0
00479508  05 00 a0 e1                                      mov r0, r5
0047950c  49 04 00 eb                                      bl #0x47a638
00479510  05 00 a0 e1                                      mov r0, r5
00479514  54 04 00 eb                                      bl #0x47a66c
00479518  18 30 d4 e5                                      ldrb r3, [r4, #0x18]
0047951c  00 00 53 e3                                      cmp r3, #0
00479520  03 00 00 1a                                      bne #0x479534
00479524  05 00 a0 e1                                      mov r0, r5
00479528  39 04 00 eb                                      bl #0x47a614
0047952c  01 30 a0 e3                                      mov r3, #1
00479530  18 30 c4 e5                                      strb r3, [r4, #0x18]
00479534  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00479538, declared_size=12, range_size=12, mode=arm
; class-group: GameEvent
; alias: _ZN9GameEvent6ReInitEv
; demangled: GameEvent::ReInit()
; decoder-mode: arm
00479538  00 30 a0 e3                                      mov r3, #0
0047953c  0c 30 80 e4                                      str r3, [r0], #0xc
00479540  18 04 00 ea                                      b #0x47a5a8

; FUNCTION 0x00479544, declared_size=36, range_size=36, mode=arm
; class-group: GameEvent
; alias: _ZNK9GameEvent28DBG_TraceDetailedInformationEv
; demangled: GameEvent::DBG_TraceDetailedInformation() const
; decoder-mode: arm
00479544  14 30 9f e5                                      ldr r3, [pc, #0x14]
00479548  14 10 9f e5                                      ldr r1, [pc, #0x14]
0047954c  0c 00 80 e2                                      add r0, r0, #0xc
00479550  03 30 8f e0                                      add r3, pc, r3
00479554  01 10 93 e7                                      ldr r1, [r3, r1]
00479558  54 10 81 e2                                      add r1, r1, #0x54
0047955c  b5 04 00 ea                                      b #0x47a838
; mapping-symbol data/literal pool
00479560  40 b5 51 00 c0 19 00 00                          .byte 0x40, 0xb5, 0x51, 0x00, 0xc0, 0x19, 0x00, 0x00

; FUNCTION 0x00479568, declared_size=20, range_size=20, mode=arm
; class-group: GameEvent
; alias: _ZN9GameEvent12AssignPyDataEPN7Structs7v2EventE
; demangled: GameEvent::AssignPyData(Structs::v2Event*)
; decoder-mode: arm
00479568  1c 10 80 e5                                      str r1, [r0, #0x1c]
0047956c  10 20 91 e5                                      ldr r2, [r1, #0x10]
00479570  14 10 91 e5                                      ldr r1, [r1, #0x14]
00479574  0c 00 80 e2                                      add r0, r0, #0xc
00479578  32 05 00 ea                                      b #0x47aa48

; FUNCTION 0x0047957c, declared_size=24, range_size=24, mode=arm
; class-group: GameEvent
; alias: _ZN9GameEventD1Ev
; demangled: GameEvent::~GameEvent()
; decoder-mode: arm
0047957c  10 40 2d e9                                      push {r4, lr}
00479580  00 40 a0 e1                                      mov r4, r0
00479584  0c 00 80 e2                                      add r0, r0, #0xc
00479588  cf 04 00 eb                                      bl #0x47a8cc
0047958c  04 00 a0 e1                                      mov r0, r4
00479590  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00479594, declared_size=24, range_size=24, mode=arm
; class-group: GameEvent
; alias: _ZN9GameEventD2Ev
; demangled: GameEvent::~GameEvent()
; decoder-mode: arm
00479594  10 40 2d e9                                      push {r4, lr}
00479598  00 40 a0 e1                                      mov r4, r0
0047959c  0c 00 80 e2                                      add r0, r0, #0xc
004795a0  c9 04 00 eb                                      bl #0x47a8cc
004795a4  04 00 a0 e1                                      mov r0, r4
004795a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004795ac, declared_size=52, range_size=52, mode=arm
; class-group: GameEvent
; alias: _ZN9GameEventC1Ev
; demangled: GameEvent::GameEvent()
; decoder-mode: arm
004795ac  70 40 2d e9                                      push {r4, r5, r6, lr}
004795b0  00 30 e0 e3                                      mvn r3, #0
004795b4  00 50 a0 e3                                      mov r5, #0
004795b8  00 40 a0 e1                                      mov r4, r0
004795bc  04 30 80 e5                                      str r3, [r0, #4]
004795c0  00 30 80 e5                                      str r3, [r0]
004795c4  08 50 80 e5                                      str r5, [r0, #8]
004795c8  0c 00 80 e2                                      add r0, r0, #0xc
004795cc  80 03 00 eb                                      bl #0x47a3d4
004795d0  1c 50 84 e5                                      str r5, [r4, #0x1c]
004795d4  18 50 c4 e5                                      strb r5, [r4, #0x18]
004795d8  04 00 a0 e1                                      mov r0, r4
004795dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004795e0, declared_size=52, range_size=52, mode=arm
; class-group: GameEvent
; alias: _ZN9GameEventC2Ev
; demangled: GameEvent::GameEvent()
; decoder-mode: arm
004795e0  70 40 2d e9                                      push {r4, r5, r6, lr}
004795e4  00 30 e0 e3                                      mvn r3, #0
004795e8  00 50 a0 e3                                      mov r5, #0
004795ec  00 40 a0 e1                                      mov r4, r0
004795f0  04 30 80 e5                                      str r3, [r0, #4]
004795f4  00 30 80 e5                                      str r3, [r0]
004795f8  08 50 80 e5                                      str r5, [r0, #8]
004795fc  0c 00 80 e2                                      add r0, r0, #0xc
00479600  73 03 00 eb                                      bl #0x47a3d4
00479604  1c 50 84 e5                                      str r5, [r4, #0x1c]
00479608  18 50 c4 e5                                      strb r5, [r4, #0x18]
0047960c  04 00 a0 e1                                      mov r0, r4
00479610  70 80 bd e8                                      pop {r4, r5, r6, pc}
