; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004796f0, declared_size=40, range_size=40, mode=arm
; class-group: GameEventManager
; alias: _ZNK16GameEventManager12GetEventByIDEi
; demangled: GameEventManager::GetEventByID(int) const
; decoder-mode: arm
004796f0  00 00 51 e3                                      cmp r1, #0
004796f4  05 00 00 ba                                      blt #0x479710
004796f8  04 20 90 e5                                      ldr r2, [r0, #4]
004796fc  00 30 90 e5                                      ldr r3, [r0]
00479700  02 20 63 e0                                      rsb r2, r3, r2
00479704  42 01 51 e1                                      cmp r1, r2, asr #2
00479708  01 01 93 b7                                      ldrlt r0, [r3, r1, lsl #2]
0047970c  1e ff 2f b1                                      bxlt lr
00479710  00 00 a0 e3                                      mov r0, #0
00479714  1e ff 2f e1                                      bx lr

; FUNCTION 0x00479718, declared_size=100, range_size=100, mode=arm
; class-group: GameEventManager
; alias: _ZN16GameEventManager15LoopOnAllEventsEM9GameEventFvvE
; demangled: GameEventManager::LoopOnAllEvents(void (GameEvent::*)())
; decoder-mode: arm
00479718  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047971c  00 40 90 e5                                      ldr r4, [r0]
00479720  04 30 90 e5                                      ldr r3, [r0, #4]
00479724  08 d0 4d e2                                      sub sp, sp, #8
00479728  00 50 a0 e1                                      mov r5, r0
0047972c  03 00 54 e1                                      cmp r4, r3
00479730  06 00 8d e8                                      stm sp, {r1, r2}
00479734  01 70 a0 e1                                      mov r7, r1
00479738  0d 00 00 0a                                      beq #0x479774
0047973c  c2 60 a0 e1                                      asr r6, r2, #1
00479740  01 80 02 e2                                      and r8, r2, #1
00479744  00 00 94 e5                                      ldr r0, [r4]
00479748  00 00 58 e3                                      cmp r8, #0
0047974c  07 30 a0 01                                      moveq r3, r7
00479750  06 30 90 17                                      ldrne r3, [r0, r6]
00479754  06 00 80 00                                      addeq r0, r0, r6
00479758  06 00 80 10                                      addne r0, r0, r6
0047975c  07 30 93 17                                      ldrne r3, [r3, r7]
00479760  33 ff 2f e1                                      blx r3
00479764  04 30 95 e5                                      ldr r3, [r5, #4]
00479768  04 40 84 e2                                      add r4, r4, #4
0047976c  03 00 54 e1                                      cmp r4, r3
00479770  f3 ff ff 1a                                      bne #0x479744
00479774  08 d0 8d e2                                      add sp, sp, #8
00479778  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047977c, declared_size=52, range_size=52, mode=arm
; class-group: GameEventManager
; alias: _ZN16GameEventManager7CompileEv
; demangled: GameEventManager::Compile()
; decoder-mode: arm
0047977c  24 10 9f e5                                      ldr r1, [pc, #0x24]
00479780  24 30 9f e5                                      ldr r3, [pc, #0x24]
00479784  00 c0 a0 e3                                      mov ip, #0
00479788  01 10 8f e0                                      add r1, pc, r1
0047978c  03 30 91 e7                                      ldr r3, [r1, r3]
00479790  08 d0 4d e2                                      sub sp, sp, #8
00479794  0c 20 a0 e1                                      mov r2, ip
00479798  03 10 a0 e1                                      mov r1, r3
0047979c  08 10 8d e8                                      stm sp, {r3, ip}
004797a0  08 d0 8d e2                                      add sp, sp, #8
004797a4  db ff ff ea                                      b #0x479718
; mapping-symbol data/literal pool
004797a8  08 b3 51 00 f4 18 00 00                          .byte 0x08, 0xb3, 0x51, 0x00, 0xf4, 0x18, 0x00, 0x00

; FUNCTION 0x004797b0, declared_size=100, range_size=100, mode=arm
; class-group: GameEventManager
; alias: _ZNK16GameEventManager15LoopOnAllEventsEM9GameEventKFvvE
; demangled: GameEventManager::LoopOnAllEvents(void (GameEvent::*)() const) const
; decoder-mode: arm
004797b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004797b4  00 40 90 e5                                      ldr r4, [r0]
004797b8  04 30 90 e5                                      ldr r3, [r0, #4]
004797bc  08 d0 4d e2                                      sub sp, sp, #8
004797c0  00 50 a0 e1                                      mov r5, r0
004797c4  03 00 54 e1                                      cmp r4, r3
004797c8  06 00 8d e8                                      stm sp, {r1, r2}
004797cc  01 70 a0 e1                                      mov r7, r1
004797d0  0d 00 00 0a                                      beq #0x47980c
004797d4  c2 60 a0 e1                                      asr r6, r2, #1
004797d8  01 80 02 e2                                      and r8, r2, #1
004797dc  00 00 94 e5                                      ldr r0, [r4]
004797e0  00 00 58 e3                                      cmp r8, #0
004797e4  07 30 a0 01                                      moveq r3, r7
004797e8  06 30 90 17                                      ldrne r3, [r0, r6]
004797ec  06 00 80 00                                      addeq r0, r0, r6
004797f0  06 00 80 10                                      addne r0, r0, r6
004797f4  07 30 93 17                                      ldrne r3, [r3, r7]
004797f8  33 ff 2f e1                                      blx r3
004797fc  04 30 95 e5                                      ldr r3, [r5, #4]
00479800  04 40 84 e2                                      add r4, r4, #4
00479804  03 00 54 e1                                      cmp r4, r3
00479808  f3 ff ff 1a                                      bne #0x4797dc
0047980c  08 d0 8d e2                                      add sp, sp, #8
00479810  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00479814, declared_size=52, range_size=52, mode=arm
; class-group: GameEventManager
; alias: _ZNK16GameEventManager28DBG_TraceDetailedInformationEv
; demangled: GameEventManager::DBG_TraceDetailedInformation() const
; decoder-mode: arm
00479814  24 10 9f e5                                      ldr r1, [pc, #0x24]
00479818  24 30 9f e5                                      ldr r3, [pc, #0x24]
0047981c  00 c0 a0 e3                                      mov ip, #0
00479820  01 10 8f e0                                      add r1, pc, r1
00479824  03 30 91 e7                                      ldr r3, [r1, r3]
00479828  08 d0 4d e2                                      sub sp, sp, #8
0047982c  0c 20 a0 e1                                      mov r2, ip
00479830  03 10 a0 e1                                      mov r1, r3
00479834  08 10 8d e8                                      stm sp, {r3, ip}
00479838  08 d0 8d e2                                      add sp, sp, #8
0047983c  db ff ff ea                                      b #0x4797b0
; mapping-symbol data/literal pool
00479840  70 b2 51 00 b0 41 00 00                          .byte 0x70, 0xb2, 0x51, 0x00, 0xb0, 0x41, 0x00, 0x00

; FUNCTION 0x00479848, declared_size=128, range_size=128, mode=arm
; class-group: GameEventManager
; alias: _ZNK16GameEventManager14GetEventByNameEPKc
; demangled: GameEventManager::GetEventByName(char const*) const
; decoder-mode: arm
00479848  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0047984c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00479850  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00479854  03 30 8f e0                                      add r3, pc, r3
00479858  02 20 93 e7                                      ldr r2, [r3, r2]
0047985c  00 80 a0 e1                                      mov r8, r0
00479860  01 60 a0 e1                                      mov r6, r1
00479864  00 50 92 e5                                      ldr r5, [r2]
00479868  00 00 55 e3                                      cmp r5, #0
0047986c  0e 00 00 0a                                      beq #0x4798ac
00479870  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00479874  00 40 a0 e3                                      mov r4, #0
00479878  02 30 93 e7                                      ldr r3, [r3, r2]
0047987c  00 70 93 e5                                      ldr r7, [r3]
00479880  02 00 00 ea                                      b #0x479890
00479884  01 40 84 e2                                      add r4, r4, #1
00479888  05 00 54 e1                                      cmp r4, r5
0047988c  06 00 00 0a                                      beq #0x4798ac
00479890  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
00479894  06 00 a0 e1                                      mov r0, r6
00479898  9f 52 fa eb                                      bl #0x30e31c
0047989c  00 00 50 e3                                      cmp r0, #0
004798a0  f7 ff ff 1a                                      bne #0x479884
004798a4  04 10 a0 e1                                      mov r1, r4
004798a8  00 00 00 ea                                      b #0x4798b0
004798ac  00 10 e0 e3                                      mvn r1, #0
004798b0  08 00 a0 e1                                      mov r0, r8
004798b4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
004798b8  8c ff ff ea                                      b #0x4796f0
; mapping-symbol data/literal pool
004798bc  3c b2 51 00 60 08 00 00 d0 37 00 00              .byte 0x3c, 0xb2, 0x51, 0x00, 0x60, 0x08, 0x00, 0x00, 0xd0, 0x37, 0x00, 0x00

; FUNCTION 0x004798c8, declared_size=100, range_size=100, mode=arm
; class-group: GameEventManager
; alias: _ZN16GameEventManager6UpdateEv
; demangled: GameEventManager::Update()
; decoder-mode: arm
004798c8  70 40 2d e9                                      push {r4, r5, r6, lr}
004798cc  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
004798d0  08 d0 4d e2                                      sub sp, sp, #8
004798d4  00 60 a0 e1                                      mov r6, r0
004798d8  05 50 8f e0                                      add r5, pc, r5
004798dc  05 00 a0 e1                                      mov r0, r5
004798e0  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
004798e4  72 67 fa eb                                      bl #0x3136b4
004798e8  38 20 9f e5                                      ldr r2, [pc, #0x38]
004798ec  04 40 8f e0                                      add r4, pc, r4
004798f0  00 30 a0 e3                                      mov r3, #0
004798f4  02 c0 94 e7                                      ldr ip, [r4, r2]
004798f8  06 00 a0 e1                                      mov r0, r6
004798fc  03 20 a0 e1                                      mov r2, r3
00479900  0c 10 a0 e1                                      mov r1, ip
00479904  00 c0 8d e5                                      str ip, [sp]
00479908  04 30 8d e5                                      str r3, [sp, #4]
0047990c  81 ff ff eb                                      bl #0x479718
00479910  05 00 a0 e1                                      mov r0, r5
00479914  08 d0 8d e2                                      add sp, sp, #8
00479918  70 40 bd e8                                      pop {r4, r5, r6, lr}
0047991c  65 67 fa ea                                      b #0x3136b8
; mapping-symbol data/literal pool
00479920  68 42 45 00 a4 b1 51 00 e4 40 00 00              .byte 0x68, 0x42, 0x45, 0x00, 0xa4, 0xb1, 0x51, 0x00, 0xe4, 0x40, 0x00, 0x00

; FUNCTION 0x0047992c, declared_size=60, range_size=60, mode=arm
; class-group: GameEventManager
; alias: _ZN16GameEventManager6ReInitEv
; demangled: GameEventManager::ReInit()
; decoder-mode: arm
0047992c  70 40 2d e9                                      push {r4, r5, r6, lr}
00479930  00 40 90 e5                                      ldr r4, [r0]
00479934  04 30 90 e5                                      ldr r3, [r0, #4]
00479938  00 60 a0 e1                                      mov r6, r0
0047993c  03 00 54 e1                                      cmp r4, r3
00479940  07 00 00 0a                                      beq #0x479964
00479944  04 50 94 e4                                      ldr r5, [r4], #4
00479948  05 00 a0 e1                                      mov r0, r5
0047994c  f9 fe ff eb                                      bl #0x479538
00479950  05 00 a0 e1                                      mov r0, r5
00479954  e8 fe ff eb                                      bl #0x4794fc
00479958  04 30 96 e5                                      ldr r3, [r6, #4]
0047995c  03 00 54 e1                                      cmp r4, r3
00479960  f7 ff ff 1a                                      bne #0x479944
00479964  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00479968, declared_size=84, range_size=84, mode=arm
; class-group: GameEventManager
; alias: _ZN16GameEventManager6UnloadEv
; demangled: GameEventManager::Unload()
; decoder-mode: arm
00479968  70 40 2d e9                                      push {r4, r5, r6, lr}
0047996c  00 40 90 e5                                      ldr r4, [r0]
00479970  04 30 90 e5                                      ldr r3, [r0, #4]
00479974  00 60 a0 e1                                      mov r6, r0
00479978  03 00 54 e1                                      cmp r4, r3
0047997c  0d 00 00 0a                                      beq #0x4799b8
00479980  00 50 94 e5                                      ldr r5, [r4]
00479984  04 40 84 e2                                      add r4, r4, #4
00479988  00 00 55 e3                                      cmp r5, #0
0047998c  04 00 00 0a                                      beq #0x4799a4
00479990  05 00 a0 e1                                      mov r0, r5
00479994  f8 fe ff eb                                      bl #0x47957c
00479998  05 00 a0 e1                                      mov r0, r5
0047999c  a7 5a fa eb                                      bl #0x310440
004799a0  04 30 96 e5                                      ldr r3, [r6, #4]
004799a4  03 00 54 e1                                      cmp r4, r3
004799a8  f4 ff ff 1a                                      bne #0x479980
004799ac  00 30 96 e5                                      ldr r3, [r6]
004799b0  03 00 54 e1                                      cmp r4, r3
004799b4  04 30 86 15                                      strne r3, [r6, #4]
004799b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00479bec, declared_size=56, range_size=56, mode=arm
; class-group: GameEventManager
; alias: _ZN16GameEventManagerD1Ev
; demangled: GameEventManager::~GameEventManager()
; decoder-mode: arm
00479bec  10 40 2d e9                                      push {r4, lr}
00479bf0  00 40 a0 e1                                      mov r4, r0
00479bf4  5b ff ff eb                                      bl #0x479968
00479bf8  00 30 94 e5                                      ldr r3, [r4]
00479bfc  00 00 53 e3                                      cmp r3, #0
00479c00  05 00 00 0a                                      beq #0x479c1c
00479c04  08 20 94 e5                                      ldr r2, [r4, #8]
00479c08  03 10 a0 e1                                      mov r1, r3
00479c0c  08 00 84 e2                                      add r0, r4, #8
00479c10  02 30 63 e0                                      rsb r3, r3, r2
00479c14  43 21 a0 e1                                      asr r2, r3, #2
00479c18  ec ff ff eb                                      bl #0x479bd0
00479c1c  04 00 a0 e1                                      mov r0, r4
00479c20  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00479cf4, declared_size=20, range_size=20, mode=arm
; class-group: GameEventManager
; alias: _ZN16GameEventManagerC2Ev
; demangled: GameEventManager::GameEventManager()
; decoder-mode: arm
00479cf4  10 40 2d e9                                      push {r4, lr}
00479cf8  00 40 a0 e1                                      mov r4, r0
00479cfc  ea ff ff eb                                      bl #0x479cac
00479d00  04 00 a0 e1                                      mov r0, r4
00479d04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00479d08, declared_size=20, range_size=20, mode=arm
; class-group: GameEventManager
; alias: _ZN16GameEventManagerC1Ev
; demangled: GameEventManager::GameEventManager()
; decoder-mode: arm
00479d08  10 40 2d e9                                      push {r4, lr}
00479d0c  00 40 a0 e1                                      mov r4, r0
00479d10  e5 ff ff eb                                      bl #0x479cac
00479d14  04 00 a0 e1                                      mov r0, r4
00479d18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00479e5c, declared_size=216, range_size=216, mode=arm
; class-group: GameEventManager
; alias: _ZN16GameEventManager4LoadEv
; demangled: GameEventManager::Load()
; decoder-mode: arm
00479e5c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00479e60  08 04 90 e8                                      ldm r0, {r3, sl}
00479e64  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
00479e68  14 d0 4d e2                                      sub sp, sp, #0x14
00479e6c  0a a0 63 e0                                      rsb sl, r3, sl
00479e70  4a a1 b0 e1                                      asrs sl, sl, #2
00479e74  00 50 a0 e1                                      mov r5, r0
00479e78  04 40 8f e0                                      add r4, pc, r4
00479e7c  01 00 00 0a                                      beq #0x479e88
00479e80  14 d0 8d e2                                      add sp, sp, #0x14
00479e84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00479e88  98 30 9f e5                                      ldr r3, [pc, #0x98]
00479e8c  10 20 8d e2                                      add r2, sp, #0x10
00479e90  04 a0 22 e5                                      str sl, [r2, #-4]!
00479e94  03 30 94 e7                                      ldr r3, [r4, r3]
00479e98  00 60 93 e5                                      ldr r6, [r3]
00479e9c  06 10 a0 e1                                      mov r1, r6
00479ea0  dc ff ff eb                                      bl #0x479e18
00479ea4  00 00 56 e3                                      cmp r6, #0
00479ea8  f4 ff ff 0a                                      beq #0x479e80
00479eac  78 30 9f e5                                      ldr r3, [pc, #0x78]
00479eb0  78 20 9f e5                                      ldr r2, [pc, #0x78]
00479eb4  0a 70 a0 e1                                      mov r7, sl
00479eb8  03 b0 94 e7                                      ldr fp, [r4, r3]
00479ebc  04 20 8d e5                                      str r2, [sp, #4]
00479ec0  00 10 a0 e3                                      mov r1, #0
00479ec4  20 00 a0 e3                                      mov r0, #0x20
00479ec8  00 90 9b e5                                      ldr sb, [fp]
00479ecc  a7 59 fa eb                                      bl #0x310570
00479ed0  00 80 a0 e1                                      mov r8, r0
00479ed4  b4 fd ff eb                                      bl #0x4795ac
00479ed8  04 20 9d e5                                      ldr r2, [sp, #4]
00479edc  0a 90 89 e0                                      add sb, sb, sl
00479ee0  09 10 a0 e1                                      mov r1, sb
00479ee4  02 30 94 e7                                      ldr r3, [r4, r2]
00479ee8  08 00 a0 e1                                      mov r0, r8
00479eec  18 a0 8a e2                                      add sl, sl, #0x18
00479ef0  00 30 93 e5                                      ldr r3, [r3]
00479ef4  07 31 93 e7                                      ldr r3, [r3, r7, lsl #2]
00479ef8  04 70 88 e5                                      str r7, [r8, #4]
00479efc  08 30 88 e5                                      str r3, [r8, #8]
00479f00  98 fd ff eb                                      bl #0x479568
00479f04  08 00 a0 e1                                      mov r0, r8
00479f08  8a fd ff eb                                      bl #0x479538
00479f0c  00 30 95 e5                                      ldr r3, [r5]
00479f10  07 81 83 e7                                      str r8, [r3, r7, lsl #2]
00479f14  01 70 87 e2                                      add r7, r7, #1
00479f18  06 00 57 e1                                      cmp r7, r6
00479f1c  e7 ff ff 1a                                      bne #0x479ec0
00479f20  d6 ff ff ea                                      b #0x479e80
; mapping-symbol data/literal pool
00479f24  18 ac 51 00 60 08 00 00 98 1c 00 00 d0 37 00 00  .byte 0x18, 0xac, 0x51, 0x00, 0x60, 0x08, 0x00, 0x00, 0x98, 0x1c, 0x00, 0x00, 0xd0, 0x37, 0x00, 0x00

; FUNCTION 0x00479f34, declared_size=56, range_size=56, mode=arm
; class-group: GameEventManager
; alias: _ZN16GameEventManagerD2Ev
; demangled: GameEventManager::~GameEventManager()
; decoder-mode: arm
00479f34  10 40 2d e9                                      push {r4, lr}
00479f38  00 40 a0 e1                                      mov r4, r0
00479f3c  89 fe ff eb                                      bl #0x479968
00479f40  00 30 94 e5                                      ldr r3, [r4]
00479f44  00 00 53 e3                                      cmp r3, #0
00479f48  05 00 00 0a                                      beq #0x479f64
00479f4c  08 20 94 e5                                      ldr r2, [r4, #8]
00479f50  03 10 a0 e1                                      mov r1, r3
00479f54  08 00 84 e2                                      add r0, r4, #8
00479f58  02 30 63 e0                                      rsb r3, r3, r2
00479f5c  43 21 a0 e1                                      asr r2, r3, #2
00479f60  1a ff ff eb                                      bl #0x479bd0
00479f64  04 00 a0 e1                                      mov r0, r4
00479f68  10 80 bd e8                                      pop {r4, pc}
