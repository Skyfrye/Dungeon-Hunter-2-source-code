; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf4d8, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly
; alias: _ZN7Structs48v2QuestInteractWithDoNotUseThisObjectiveDirectly8finalizeEv
; demangled: Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::finalize()
; decoder-mode: arm
004cf4d8  10 40 2d e9                                      push {r4, lr}
004cf4dc  00 40 a0 e1                                      mov r4, r0
004cf4e0  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf4e4  00 00 50 e3                                      cmp r0, #0
004cf4e8  03 00 00 0a                                      beq #0x4cf4fc
004cf4ec  d3 03 f9 eb                                      bl #0x310440
004cf4f0  00 30 a0 e3                                      mov r3, #0
004cf4f4  10 30 84 e5                                      str r3, [r4, #0x10]
004cf4f8  14 30 84 e5                                      str r3, [r4, #0x14]
004cf4fc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf500  00 00 50 e3                                      cmp r0, #0
004cf504  03 00 00 0a                                      beq #0x4cf518
004cf508  cc 03 f9 eb                                      bl #0x310440
004cf50c  00 30 a0 e3                                      mov r3, #0
004cf510  18 30 84 e5                                      str r3, [r4, #0x18]
004cf514  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf518  04 00 a0 e1                                      mov r0, r4
004cf51c  10 40 bd e8                                      pop {r4, lr}
004cf520  c6 e4 ff ea                                      b #0x4c8840

; FUNCTION 0x004cf6ec, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly
; alias: _ZN7Structs48v2QuestInteractWithDoNotUseThisObjectiveDirectlyD1Ev
; demangled: Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::~v2QuestInteractWithDoNotUseThisObjectiveDirectly()
; decoder-mode: arm
004cf6ec  10 40 2d e9                                      push {r4, lr}
004cf6f0  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf6f4  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf6f8  00 40 a0 e1                                      mov r4, r0
004cf6fc  03 30 8f e0                                      add r3, pc, r3
004cf700  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf704  02 20 93 e7                                      ldr r2, [r3, r2]
004cf708  00 00 50 e3                                      cmp r0, #0
004cf70c  08 20 82 e2                                      add r2, r2, #8
004cf710  00 20 84 e5                                      str r2, [r4]
004cf714  00 00 00 0a                                      beq #0x4cf71c
004cf718  48 03 f9 eb                                      bl #0x310440
004cf71c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf720  00 00 50 e3                                      cmp r0, #0
004cf724  00 00 00 0a                                      beq #0x4cf72c
004cf728  44 03 f9 eb                                      bl #0x310440
004cf72c  04 00 a0 e1                                      mov r0, r4
004cf730  40 e4 ff eb                                      bl #0x4c8838
004cf734  04 00 a0 e1                                      mov r0, r4
004cf738  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf73c  94 53 4c 00 94 1f 00 00                          .byte 0x94, 0x53, 0x4c, 0x00, 0x94, 0x1f, 0x00, 0x00

; FUNCTION 0x004cf744, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly
; alias: _ZN7Structs48v2QuestInteractWithDoNotUseThisObjectiveDirectlyD0Ev
; demangled: Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::~v2QuestInteractWithDoNotUseThisObjectiveDirectly()
; decoder-mode: arm
004cf744  10 40 2d e9                                      push {r4, lr}
004cf748  00 40 a0 e1                                      mov r4, r0
004cf74c  e6 ff ff eb                                      bl #0x4cf6ec
004cf750  04 00 a0 e1                                      mov r0, r4
004cf754  39 03 f9 eb                                      bl #0x310440
004cf758  04 00 a0 e1                                      mov r0, r4
004cf75c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cf760, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly
; alias: _ZN7Structs48v2QuestInteractWithDoNotUseThisObjectiveDirectlyD2Ev
; demangled: Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::~v2QuestInteractWithDoNotUseThisObjectiveDirectly()
; decoder-mode: arm
004cf760  10 40 2d e9                                      push {r4, lr}
004cf764  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf768  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf76c  00 40 a0 e1                                      mov r4, r0
004cf770  03 30 8f e0                                      add r3, pc, r3
004cf774  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf778  02 20 93 e7                                      ldr r2, [r3, r2]
004cf77c  00 00 50 e3                                      cmp r0, #0
004cf780  08 20 82 e2                                      add r2, r2, #8
004cf784  00 20 84 e5                                      str r2, [r4]
004cf788  00 00 00 0a                                      beq #0x4cf790
004cf78c  2b 03 f9 eb                                      bl #0x310440
004cf790  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf794  00 00 50 e3                                      cmp r0, #0
004cf798  00 00 00 0a                                      beq #0x4cf7a0
004cf79c  27 03 f9 eb                                      bl #0x310440
004cf7a0  04 00 a0 e1                                      mov r0, r4
004cf7a4  23 e4 ff eb                                      bl #0x4c8838
004cf7a8  04 00 a0 e1                                      mov r0, r4
004cf7ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf7b0  20 53 4c 00 94 1f 00 00                          .byte 0x20, 0x53, 0x4c, 0x00, 0x94, 0x1f, 0x00, 0x00

; FUNCTION 0x00504588, declared_size=632, range_size=632, mode=arm
; class-group: Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly
; alias: _ZN7Structs48v2QuestInteractWithDoNotUseThisObjectiveDirectly4readEP11IStreamBase
; demangled: Structs::v2QuestInteractWithDoNotUseThisObjectiveDirectly::read(IStreamBase*)
; decoder-mode: arm
00504588  70 40 2d e9                                      push {r4, r5, r6, lr}
0050458c  00 40 a0 e1                                      mov r4, r0
00504590  08 d0 4d e2                                      sub sp, sp, #8
00504594  01 50 a0 e1                                      mov r5, r1
00504598  fb fb ff eb                                      bl #0x50358c
0050459c  05 00 a0 e1                                      mov r0, r5
005045a0  10 10 84 e2                                      add r1, r4, #0x10
005045a4  fd 6a fb eb                                      bl #0x3df1a0
005045a8  01 30 a0 e3                                      mov r3, #1
005045ac  00 00 53 e3                                      cmp r3, #0
005045b0  04 30 8d e5                                      str r3, [sp, #4]
005045b4  0f 00 00 1a                                      bne #0x5045f8
005045b8  11 30 84 e2                                      add r3, r4, #0x11
005045bc  12 20 84 e2                                      add r2, r4, #0x12
005045c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005045c4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005045c8  03 00 52 e1                                      cmp r2, r3
005045cc  01 10 20 e0                                      eor r1, r0, r1
005045d0  01 10 43 e5                                      strb r1, [r3, #-1]
005045d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005045d8  00 10 21 e0                                      eor r1, r1, r0
005045dc  01 10 c2 e5                                      strb r1, [r2, #1]
005045e0  01 00 53 e5                                      ldrb r0, [r3, #-1]
005045e4  01 20 42 e2                                      sub r2, r2, #1
005045e8  00 10 21 e0                                      eor r1, r1, r0
005045ec  01 10 43 e5                                      strb r1, [r3, #-1]
005045f0  01 30 83 e2                                      add r3, r3, #1
005045f4  f1 ff ff 8a                                      bhi #0x5045c0
005045f8  14 00 94 e5                                      ldr r0, [r4, #0x14]
005045fc  00 00 50 e3                                      cmp r0, #0
00504600  00 00 00 0a                                      beq #0x504608
00504604  8d 2f f8 eb                                      bl #0x310440
00504608  10 00 94 e5                                      ldr r0, [r4, #0x10]
0050460c  01 10 a0 e3                                      mov r1, #1
00504610  00 60 a0 e3                                      mov r6, #0
00504614  01 00 80 e0                                      add r0, r0, r1
00504618  d3 2f f8 eb                                      bl #0x31056c
0050461c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00504620  00 10 a0 e1                                      mov r1, r0
00504624  14 00 84 e5                                      str r0, [r4, #0x14]
00504628  06 30 a0 e1                                      mov r3, r6
0050462c  05 00 a0 e1                                      mov r0, r5
00504630  87 4b f8 eb                                      bl #0x317454
00504634  10 30 94 e5                                      ldr r3, [r4, #0x10]
00504638  14 20 94 e5                                      ldr r2, [r4, #0x14]
0050463c  05 00 a0 e1                                      mov r0, r5
00504640  18 10 84 e2                                      add r1, r4, #0x18
00504644  03 60 c2 e7                                      strb r6, [r2, r3]
00504648  d4 6a fb eb                                      bl #0x3df1a0
0050464c  01 30 a0 e3                                      mov r3, #1
00504650  06 00 53 e1                                      cmp r3, r6
00504654  04 30 8d e5                                      str r3, [sp, #4]
00504658  0f 00 00 1a                                      bne #0x50469c
0050465c  19 30 84 e2                                      add r3, r4, #0x19
00504660  1a 20 84 e2                                      add r2, r4, #0x1a
00504664  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504668  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050466c  03 00 52 e1                                      cmp r2, r3
00504670  01 10 20 e0                                      eor r1, r0, r1
00504674  01 10 43 e5                                      strb r1, [r3, #-1]
00504678  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050467c  00 10 21 e0                                      eor r1, r1, r0
00504680  01 10 c2 e5                                      strb r1, [r2, #1]
00504684  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504688  01 20 42 e2                                      sub r2, r2, #1
0050468c  00 10 21 e0                                      eor r1, r1, r0
00504690  01 10 43 e5                                      strb r1, [r3, #-1]
00504694  01 30 83 e2                                      add r3, r3, #1
00504698  f1 ff ff 8a                                      bhi #0x504664
0050469c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005046a0  00 00 50 e3                                      cmp r0, #0
005046a4  00 00 00 0a                                      beq #0x5046ac
005046a8  64 2f f8 eb                                      bl #0x310440
005046ac  18 00 94 e5                                      ldr r0, [r4, #0x18]
005046b0  01 10 a0 e3                                      mov r1, #1
005046b4  00 60 a0 e3                                      mov r6, #0
005046b8  01 00 80 e0                                      add r0, r0, r1
005046bc  aa 2f f8 eb                                      bl #0x31056c
005046c0  18 20 94 e5                                      ldr r2, [r4, #0x18]
005046c4  00 10 a0 e1                                      mov r1, r0
005046c8  1c 00 84 e5                                      str r0, [r4, #0x1c]
005046cc  06 30 a0 e1                                      mov r3, r6
005046d0  05 00 a0 e1                                      mov r0, r5
005046d4  5e 4b f8 eb                                      bl #0x317454
005046d8  18 30 94 e5                                      ldr r3, [r4, #0x18]
005046dc  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005046e0  05 00 a0 e1                                      mov r0, r5
005046e4  20 10 84 e2                                      add r1, r4, #0x20
005046e8  03 60 c2 e7                                      strb r6, [r2, r3]
005046ec  67 52 fd eb                                      bl #0x459090
005046f0  01 30 a0 e3                                      mov r3, #1
005046f4  06 00 53 e1                                      cmp r3, r6
005046f8  04 30 8d e5                                      str r3, [sp, #4]
005046fc  0f 00 00 1a                                      bne #0x504740
00504700  21 30 84 e2                                      add r3, r4, #0x21
00504704  22 20 84 e2                                      add r2, r4, #0x22
00504708  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050470c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00504710  03 00 52 e1                                      cmp r2, r3
00504714  01 10 20 e0                                      eor r1, r0, r1
00504718  01 10 43 e5                                      strb r1, [r3, #-1]
0050471c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504720  00 10 21 e0                                      eor r1, r1, r0
00504724  01 10 c2 e5                                      strb r1, [r2, #1]
00504728  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050472c  01 20 42 e2                                      sub r2, r2, #1
00504730  00 10 21 e0                                      eor r1, r1, r0
00504734  01 10 43 e5                                      strb r1, [r3, #-1]
00504738  01 30 83 e2                                      add r3, r3, #1
0050473c  f1 ff ff 8a                                      bhi #0x504708
00504740  05 00 a0 e1                                      mov r0, r5
00504744  24 10 84 e2                                      add r1, r4, #0x24
00504748  50 52 fd eb                                      bl #0x459090
0050474c  01 30 a0 e3                                      mov r3, #1
00504750  00 00 53 e3                                      cmp r3, #0
00504754  04 30 8d e5                                      str r3, [sp, #4]
00504758  0f 00 00 1a                                      bne #0x50479c
0050475c  25 30 84 e2                                      add r3, r4, #0x25
00504760  26 20 84 e2                                      add r2, r4, #0x26
00504764  01 00 d2 e5                                      ldrb r0, [r2, #1]
00504768  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050476c  03 00 52 e1                                      cmp r2, r3
00504770  01 10 20 e0                                      eor r1, r0, r1
00504774  01 10 43 e5                                      strb r1, [r3, #-1]
00504778  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050477c  00 10 21 e0                                      eor r1, r1, r0
00504780  01 10 c2 e5                                      strb r1, [r2, #1]
00504784  01 00 53 e5                                      ldrb r0, [r3, #-1]
00504788  01 20 42 e2                                      sub r2, r2, #1
0050478c  00 10 21 e0                                      eor r1, r1, r0
00504790  01 10 43 e5                                      strb r1, [r3, #-1]
00504794  01 30 83 e2                                      add r3, r3, #1
00504798  f1 ff ff 8a                                      bhi #0x504764
0050479c  05 00 a0 e1                                      mov r0, r5
005047a0  28 10 84 e2                                      add r1, r4, #0x28
005047a4  39 52 fd eb                                      bl #0x459090
005047a8  01 30 a0 e3                                      mov r3, #1
005047ac  00 00 53 e3                                      cmp r3, #0
005047b0  04 30 8d e5                                      str r3, [sp, #4]
005047b4  0f 00 00 1a                                      bne #0x5047f8
005047b8  2a 30 84 e2                                      add r3, r4, #0x2a
005047bc  29 40 84 e2                                      add r4, r4, #0x29
005047c0  01 10 d3 e5                                      ldrb r1, [r3, #1]
005047c4  01 20 54 e5                                      ldrb r2, [r4, #-1]
005047c8  04 00 53 e1                                      cmp r3, r4
005047cc  02 20 21 e0                                      eor r2, r1, r2
005047d0  01 20 44 e5                                      strb r2, [r4, #-1]
005047d4  01 10 d3 e5                                      ldrb r1, [r3, #1]
005047d8  01 20 22 e0                                      eor r2, r2, r1
005047dc  01 20 c3 e5                                      strb r2, [r3, #1]
005047e0  01 10 54 e5                                      ldrb r1, [r4, #-1]
005047e4  01 30 43 e2                                      sub r3, r3, #1
005047e8  01 20 22 e0                                      eor r2, r2, r1
005047ec  01 20 44 e5                                      strb r2, [r4, #-1]
005047f0  01 40 84 e2                                      add r4, r4, #1
005047f4  f1 ff ff 8a                                      bhi #0x5047c0
005047f8  08 d0 8d e2                                      add sp, sp, #8
005047fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
