; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8838, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestObjective
; alias: _ZN7Structs16v2QuestObjectiveD2Ev
; demangled: Structs::v2QuestObjective::~v2QuestObjective()
; decoder-mode: arm
004c8838  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c883c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestObjective
; alias: _ZN7Structs16v2QuestObjectiveD1Ev
; demangled: Structs::v2QuestObjective::~v2QuestObjective()
; decoder-mode: arm
004c883c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c8840, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestObjective
; alias: _ZN7Structs16v2QuestObjective8finalizeEv
; demangled: Structs::v2QuestObjective::finalize()
; decoder-mode: arm
004c8840  1e ff 2f e1                                      bx lr

; FUNCTION 0x004cd84c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestObjective
; alias: _ZN7Structs16v2QuestObjectiveD0Ev
; demangled: Structs::v2QuestObjective::~v2QuestObjective()
; decoder-mode: arm
004cd84c  10 40 2d e9                                      push {r4, lr}
004cd850  00 40 a0 e1                                      mov r4, r0
004cd854  f8 eb ff eb                                      bl #0x4c883c
004cd858  04 00 a0 e1                                      mov r0, r4
004cd85c  f7 0a f9 eb                                      bl #0x310440
004cd860  04 00 a0 e1                                      mov r0, r4
004cd864  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0050358c, declared_size=300, range_size=300, mode=arm
; class-group: Structs::v2QuestObjective
; alias: _ZN7Structs16v2QuestObjective4readEP11IStreamBase
; demangled: Structs::v2QuestObjective::read(IStreamBase*)
; decoder-mode: arm
0050358c  30 40 2d e9                                      push {r4, r5, lr}
00503590  00 40 a0 e1                                      mov r4, r0
00503594  0c d0 4d e2                                      sub sp, sp, #0xc
00503598  01 00 a0 e1                                      mov r0, r1
0050359c  01 50 a0 e1                                      mov r5, r1
005035a0  04 10 84 e2                                      add r1, r4, #4
005035a4  b9 56 fd eb                                      bl #0x459090
005035a8  01 30 a0 e3                                      mov r3, #1
005035ac  00 00 53 e3                                      cmp r3, #0
005035b0  04 30 8d e5                                      str r3, [sp, #4]
005035b4  0f 00 00 1a                                      bne #0x5035f8
005035b8  05 30 84 e2                                      add r3, r4, #5
005035bc  06 20 84 e2                                      add r2, r4, #6
005035c0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005035c4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005035c8  02 00 53 e1                                      cmp r3, r2
005035cc  01 10 20 e0                                      eor r1, r0, r1
005035d0  01 10 43 e5                                      strb r1, [r3, #-1]
005035d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005035d8  00 10 21 e0                                      eor r1, r1, r0
005035dc  01 10 c2 e5                                      strb r1, [r2, #1]
005035e0  01 00 53 e5                                      ldrb r0, [r3, #-1]
005035e4  01 20 42 e2                                      sub r2, r2, #1
005035e8  00 10 21 e0                                      eor r1, r1, r0
005035ec  01 10 43 e5                                      strb r1, [r3, #-1]
005035f0  01 30 83 e2                                      add r3, r3, #1
005035f4  f1 ff ff 3a                                      blo #0x5035c0
005035f8  05 00 a0 e1                                      mov r0, r5
005035fc  08 10 84 e2                                      add r1, r4, #8
00503600  a2 56 fd eb                                      bl #0x459090
00503604  01 30 a0 e3                                      mov r3, #1
00503608  00 00 53 e3                                      cmp r3, #0
0050360c  04 30 8d e5                                      str r3, [sp, #4]
00503610  0f 00 00 1a                                      bne #0x503654
00503614  09 30 84 e2                                      add r3, r4, #9
00503618  0a 20 84 e2                                      add r2, r4, #0xa
0050361c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503620  01 10 53 e5                                      ldrb r1, [r3, #-1]
00503624  03 00 52 e1                                      cmp r2, r3
00503628  01 10 20 e0                                      eor r1, r0, r1
0050362c  01 10 43 e5                                      strb r1, [r3, #-1]
00503630  01 00 d2 e5                                      ldrb r0, [r2, #1]
00503634  00 10 21 e0                                      eor r1, r1, r0
00503638  01 10 c2 e5                                      strb r1, [r2, #1]
0050363c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503640  01 20 42 e2                                      sub r2, r2, #1
00503644  00 10 21 e0                                      eor r1, r1, r0
00503648  01 10 43 e5                                      strb r1, [r3, #-1]
0050364c  01 30 83 e2                                      add r3, r3, #1
00503650  f1 ff ff 8a                                      bhi #0x50361c
00503654  05 00 a0 e1                                      mov r0, r5
00503658  0c 10 84 e2                                      add r1, r4, #0xc
0050365c  8b 56 fd eb                                      bl #0x459090
00503660  01 30 a0 e3                                      mov r3, #1
00503664  00 00 53 e3                                      cmp r3, #0
00503668  04 30 8d e5                                      str r3, [sp, #4]
0050366c  0f 00 00 1a                                      bne #0x5036b0
00503670  0e 30 84 e2                                      add r3, r4, #0xe
00503674  0d 40 84 e2                                      add r4, r4, #0xd
00503678  01 10 d3 e5                                      ldrb r1, [r3, #1]
0050367c  01 20 54 e5                                      ldrb r2, [r4, #-1]
00503680  03 00 54 e1                                      cmp r4, r3
00503684  02 20 21 e0                                      eor r2, r1, r2
00503688  01 20 44 e5                                      strb r2, [r4, #-1]
0050368c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503690  01 20 22 e0                                      eor r2, r2, r1
00503694  01 20 c3 e5                                      strb r2, [r3, #1]
00503698  01 10 54 e5                                      ldrb r1, [r4, #-1]
0050369c  01 30 43 e2                                      sub r3, r3, #1
005036a0  01 20 22 e0                                      eor r2, r2, r1
005036a4  01 20 44 e5                                      strb r2, [r4, #-1]
005036a8  01 40 84 e2                                      add r4, r4, #1
005036ac  f1 ff ff 3a                                      blo #0x503678
005036b0  0c d0 8d e2                                      add sp, sp, #0xc
005036b4  30 80 bd e8                                      pop {r4, r5, pc}
