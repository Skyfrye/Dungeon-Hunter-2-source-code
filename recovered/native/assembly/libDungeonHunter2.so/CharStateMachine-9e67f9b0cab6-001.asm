; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0084, declared_size=92, range_size=92, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine9_HasStateEi
; demangled: CharStateMachine::_HasState(int) const
; decoder-mode: arm
003c0084  0c 30 90 e5                                      ldr r3, [r0, #0xc]
003c0088  08 00 80 e2                                      add r0, r0, #8
003c008c  00 00 53 e3                                      cmp r3, #0
003c0090  10 00 00 0a                                      beq #0x3c00d8
003c0094  00 c0 a0 e1                                      mov ip, r0
003c0098  00 00 00 ea                                      b #0x3c00a0
003c009c  02 30 a0 e1                                      mov r3, r2
003c00a0  10 20 93 e5                                      ldr r2, [r3, #0x10]
003c00a4  02 00 51 e1                                      cmp r1, r2
003c00a8  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
003c00ac  08 20 93 d5                                      ldrle r2, [r3, #8]
003c00b0  0c 30 a0 c1                                      movgt r3, ip
003c00b4  03 c0 a0 e1                                      mov ip, r3
003c00b8  00 00 52 e3                                      cmp r2, #0
003c00bc  f6 ff ff 1a                                      bne #0x3c009c
003c00c0  03 00 50 e1                                      cmp r0, r3
003c00c4  03 00 00 0a                                      beq #0x3c00d8
003c00c8  10 30 93 e5                                      ldr r3, [r3, #0x10]
003c00cc  03 00 51 e1                                      cmp r1, r3
003c00d0  01 00 a0 a3                                      movge r0, #1
003c00d4  1e ff 2f a1                                      bxge lr
003c00d8  00 00 a0 e3                                      mov r0, #0
003c00dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c00e0, declared_size=204, range_size=204, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine9_HasEventEii
; demangled: CharStateMachine::_HasEvent(int, int) const
; decoder-mode: arm
003c00e0  04 40 2d e5                                      str r4, [sp, #-4]!
003c00e4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
003c00e8  08 00 80 e2                                      add r0, r0, #8
003c00ec  00 00 53 e3                                      cmp r3, #0
003c00f0  28 00 00 0a                                      beq #0x3c0198
003c00f4  00 40 a0 e1                                      mov r4, r0
003c00f8  00 00 00 ea                                      b #0x3c0100
003c00fc  0c 30 a0 e1                                      mov r3, ip
003c0100  10 c0 93 e5                                      ldr ip, [r3, #0x10]
003c0104  0c 00 51 e1                                      cmp r1, ip
003c0108  0c c0 93 c5                                      ldrgt ip, [r3, #0xc]
003c010c  08 c0 93 d5                                      ldrle ip, [r3, #8]
003c0110  04 30 a0 c1                                      movgt r3, r4
003c0114  03 40 a0 e1                                      mov r4, r3
003c0118  00 00 5c e3                                      cmp ip, #0
003c011c  f6 ff ff 1a                                      bne #0x3c00fc
003c0120  03 00 50 e1                                      cmp r0, r3
003c0124  18 00 00 0a                                      beq #0x3c018c
003c0128  10 c0 93 e5                                      ldr ip, [r3, #0x10]
003c012c  0c 00 51 e1                                      cmp r1, ip
003c0130  18 00 00 ba                                      blt #0x3c0198
003c0134  03 00 50 e1                                      cmp r0, r3
003c0138  13 00 00 0a                                      beq #0x3c018c
003c013c  20 10 93 e5                                      ldr r1, [r3, #0x20]
003c0140  1c 30 83 e2                                      add r3, r3, #0x1c
003c0144  00 00 51 e3                                      cmp r1, #0
003c0148  0f 00 00 0a                                      beq #0x3c018c
003c014c  03 40 a0 e1                                      mov r4, r3
003c0150  00 00 00 ea                                      b #0x3c0158
003c0154  0c 10 a0 e1                                      mov r1, ip
003c0158  10 c0 91 e5                                      ldr ip, [r1, #0x10]
003c015c  0c 00 52 e1                                      cmp r2, ip
003c0160  0c c0 91 c5                                      ldrgt ip, [r1, #0xc]
003c0164  08 c0 91 d5                                      ldrle ip, [r1, #8]
003c0168  04 10 a0 c1                                      movgt r1, r4
003c016c  01 40 a0 e1                                      mov r4, r1
003c0170  00 00 5c e3                                      cmp ip, #0
003c0174  f6 ff ff 1a                                      bne #0x3c0154
003c0178  01 00 53 e1                                      cmp r3, r1
003c017c  02 00 00 0a                                      beq #0x3c018c
003c0180  10 00 91 e5                                      ldr r0, [r1, #0x10]
003c0184  00 00 52 e1                                      cmp r2, r0
003c0188  04 00 00 aa                                      bge #0x3c01a0
003c018c  00 00 a0 e3                                      mov r0, #0
003c0190  10 00 bd e8                                      ldm sp!, {r4}
003c0194  1e ff 2f e1                                      bx lr
003c0198  00 30 a0 e1                                      mov r3, r0
003c019c  e4 ff ff ea                                      b #0x3c0134
003c01a0  03 00 51 e0                                      subs r0, r1, r3
003c01a4  01 00 a0 13                                      movne r0, #1
003c01a8  f8 ff ff ea                                      b #0x3c0190

; FUNCTION 0x003c01ac, declared_size=20, range_size=20, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine11SM_GetStateEv
; demangled: CharStateMachine::SM_GetState() const
; decoder-mode: arm
003c01ac  20 30 90 e5                                      ldr r3, [r0, #0x20]
003c01b0  00 00 53 e3                                      cmp r3, #0
003c01b4  00 00 e0 03                                      mvneq r0, #0
003c01b8  00 00 93 15                                      ldrne r0, [r3]
003c01bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c01c0, declared_size=20, range_size=20, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine13SM_IsInLimbusEv
; demangled: CharStateMachine::SM_IsInLimbus() const
; decoder-mode: arm
003c01c0  10 40 2d e9                                      push {r4, lr}
003c01c4  f8 ff ff eb                                      bl #0x3c01ac
003c01c8  01 00 70 e2                                      rsbs r0, r0, #1
003c01cc  00 00 a0 33                                      movlo r0, #0
003c01d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c01d4, declared_size=24, range_size=24, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine15SM_IsInPreSpawnEv
; demangled: CharStateMachine::SM_IsInPreSpawn() const
; decoder-mode: arm
003c01d4  10 40 2d e9                                      push {r4, lr}
003c01d8  f3 ff ff eb                                      bl #0x3c01ac
003c01dc  11 00 50 e3                                      cmp r0, #0x11
003c01e0  00 00 a0 13                                      movne r0, #0
003c01e4  01 00 a0 03                                      moveq r0, #1
003c01e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c01ec, declared_size=68, range_size=68, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine21SM_IsAwaitingToReviveEv
; demangled: CharStateMachine::SM_IsAwaitingToRevive() const
; decoder-mode: arm
003c01ec  10 40 2d e9                                      push {r4, lr}
003c01f0  00 40 a0 e1                                      mov r4, r0
003c01f4  ec ff ff eb                                      bl #0x3c01ac
003c01f8  00 00 50 e3                                      cmp r0, #0
003c01fc  01 00 00 1a                                      bne #0x3c0208
003c0200  01 00 a0 e3                                      mov r0, #1
003c0204  10 80 bd e8                                      pop {r4, pc}
003c0208  04 00 a0 e1                                      mov r0, r4
003c020c  e6 ff ff eb                                      bl #0x3c01ac
003c0210  11 00 50 e3                                      cmp r0, #0x11
003c0214  f9 ff ff 0a                                      beq #0x3c0200
003c0218  04 00 a0 e1                                      mov r0, r4
003c021c  e2 ff ff eb                                      bl #0x3c01ac
003c0220  10 00 50 e3                                      cmp r0, #0x10
003c0224  00 00 a0 13                                      movne r0, #0
003c0228  01 00 a0 03                                      moveq r0, #1
003c022c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c0230, declared_size=24, range_size=24, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine20SM_IsAwaitingToSpawnEv
; demangled: CharStateMachine::SM_IsAwaitingToSpawn() const
; decoder-mode: arm
003c0230  10 40 2d e9                                      push {r4, lr}
003c0234  dc ff ff eb                                      bl #0x3c01ac
003c0238  11 00 50 e3                                      cmp r0, #0x11
003c023c  00 00 a0 13                                      movne r0, #0
003c0240  01 00 a0 03                                      moveq r0, #1
003c0244  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c0248, declared_size=24, range_size=24, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine13SM_IsSpawningEv
; demangled: CharStateMachine::SM_IsSpawning() const
; decoder-mode: arm
003c0248  10 40 2d e9                                      push {r4, lr}
003c024c  d6 ff ff eb                                      bl #0x3c01ac
003c0250  01 00 50 e3                                      cmp r0, #1
003c0254  00 00 a0 13                                      movne r0, #0
003c0258  01 00 a0 03                                      moveq r0, #1
003c025c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c0260, declared_size=60, range_size=60, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine9SM_IsIdleEb
; demangled: CharStateMachine::SM_IsIdle(bool) const
; decoder-mode: arm
003c0260  10 40 2d e9                                      push {r4, lr}
003c0264  01 40 a0 e1                                      mov r4, r1
003c0268  cf ff ff eb                                      bl #0x3c01ac
003c026c  0d 00 50 e3                                      cmp r0, #0xd
003c0270  05 00 00 0a                                      beq #0x3c028c
003c0274  12 00 50 e3                                      cmp r0, #0x12
003c0278  05 00 00 0a                                      beq #0x3c0294
003c027c  03 00 50 e3                                      cmp r0, #3
003c0280  01 00 00 0a                                      beq #0x3c028c
003c0284  00 00 a0 e3                                      mov r0, #0
003c0288  10 80 bd e8                                      pop {r4, pc}
003c028c  01 00 a0 e3                                      mov r0, #1
003c0290  10 80 bd e8                                      pop {r4, pc}
003c0294  01 00 24 e2                                      eor r0, r4, #1
003c0298  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c029c, declared_size=52, range_size=52, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine11SM_IsMovingEb
; demangled: CharStateMachine::SM_IsMoving(bool) const
; decoder-mode: arm
003c029c  10 40 2d e9                                      push {r4, lr}
003c02a0  01 40 a0 e1                                      mov r4, r1
003c02a4  c0 ff ff eb                                      bl #0x3c01ac
003c02a8  04 00 50 e3                                      cmp r0, #4
003c02ac  03 00 00 0a                                      beq #0x3c02c0
003c02b0  13 00 50 e3                                      cmp r0, #0x13
003c02b4  03 00 00 0a                                      beq #0x3c02c8
003c02b8  00 00 a0 e3                                      mov r0, #0
003c02bc  10 80 bd e8                                      pop {r4, pc}
003c02c0  01 00 a0 e3                                      mov r0, #1
003c02c4  10 80 bd e8                                      pop {r4, pc}
003c02c8  01 00 24 e2                                      eor r0, r4, #1
003c02cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c02d0, declared_size=24, range_size=24, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine14SM_IsAttackingEv
; demangled: CharStateMachine::SM_IsAttacking() const
; decoder-mode: arm
003c02d0  10 40 2d e9                                      push {r4, lr}
003c02d4  b4 ff ff eb                                      bl #0x3c01ac
003c02d8  05 00 50 e3                                      cmp r0, #5
003c02dc  00 00 a0 13                                      movne r0, #0
003c02e0  01 00 a0 03                                      moveq r0, #1
003c02e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c02e8, declared_size=24, range_size=24, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine15SM_IsUsingSkillEv
; demangled: CharStateMachine::SM_IsUsingSkill() const
; decoder-mode: arm
003c02e8  10 40 2d e9                                      push {r4, lr}
003c02ec  ae ff ff eb                                      bl #0x3c01ac
003c02f0  06 00 50 e3                                      cmp r0, #6
003c02f4  00 00 a0 13                                      movne r0, #0
003c02f8  01 00 a0 03                                      moveq r0, #1
003c02fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c0300, declared_size=52, range_size=52, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine15SM_IsUsingSkillEj
; demangled: CharStateMachine::SM_IsUsingSkill(unsigned int) const
; decoder-mode: arm
003c0300  70 40 2d e9                                      push {r4, r5, r6, lr}
003c0304  01 40 a0 e1                                      mov r4, r1
003c0308  00 50 a0 e1                                      mov r5, r0
003c030c  a6 ff ff eb                                      bl #0x3c01ac
003c0310  06 00 50 e3                                      cmp r0, #6
003c0314  01 00 00 0a                                      beq #0x3c0320
003c0318  00 00 a0 e3                                      mov r0, #0
003c031c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003c0320  54 00 95 e5                                      ldr r0, [r5, #0x54]
003c0324  04 00 50 e1                                      cmp r0, r4
003c0328  00 00 a0 13                                      movne r0, #0
003c032c  01 00 a0 03                                      moveq r0, #1
003c0330  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003c0334, declared_size=24, range_size=24, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine12SM_IsCastingEv
; demangled: CharStateMachine::SM_IsCasting() const
; decoder-mode: arm
003c0334  10 40 2d e9                                      push {r4, lr}
003c0338  9b ff ff eb                                      bl #0x3c01ac
003c033c  07 00 50 e3                                      cmp r0, #7
003c0340  00 00 a0 13                                      movne r0, #0
003c0344  01 00 a0 03                                      moveq r0, #1
003c0348  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c034c, declared_size=44, range_size=44, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine11SM_IsScaredEb
; demangled: CharStateMachine::SM_IsScared(bool) const
; decoder-mode: arm
003c034c  00 00 51 e3                                      cmp r1, #0
003c0350  10 40 2d e9                                      push {r4, lr}
003c0354  02 00 00 0a                                      beq #0x3c0364
003c0358  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
003c035c  50 01 e0 e7                                      ubfx r0, r0, #2, #1
003c0360  10 80 bd e8                                      pop {r4, pc}
003c0364  90 ff ff eb                                      bl #0x3c01ac
003c0368  08 00 50 e3                                      cmp r0, #8
003c036c  00 00 a0 13                                      movne r0, #0
003c0370  01 00 a0 03                                      moveq r0, #1
003c0374  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c0378, declared_size=44, range_size=44, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine12SM_IsStunnedEb
; demangled: CharStateMachine::SM_IsStunned(bool) const
; decoder-mode: arm
003c0378  00 00 51 e3                                      cmp r1, #0
003c037c  10 40 2d e9                                      push {r4, lr}
003c0380  02 00 00 0a                                      beq #0x3c0390
003c0384  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
003c0388  d0 00 e0 e7                                      ubfx r0, r0, #1, #1
003c038c  10 80 bd e8                                      pop {r4, pc}
003c0390  85 ff ff eb                                      bl #0x3c01ac
003c0394  09 00 50 e3                                      cmp r0, #9
003c0398  00 00 a0 13                                      movne r0, #0
003c039c  01 00 a0 03                                      moveq r0, #1
003c03a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c03a4, declared_size=24, range_size=24, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine16SM_IsKnockedBackEv
; demangled: CharStateMachine::SM_IsKnockedBack() const
; decoder-mode: arm
003c03a4  10 40 2d e9                                      push {r4, lr}
003c03a8  7f ff ff eb                                      bl #0x3c01ac
003c03ac  0a 00 50 e3                                      cmp r0, #0xa
003c03b0  00 00 a0 13                                      movne r0, #0
003c03b4  01 00 a0 03                                      moveq r0, #1
003c03b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c03bc, declared_size=52, range_size=52, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine18SM_IsIncapacitatedEv
; demangled: CharStateMachine::SM_IsIncapacitated() const
; decoder-mode: arm
003c03bc  10 40 2d e9                                      push {r4, lr}
003c03c0  79 ff ff eb                                      bl #0x3c01ac
003c03c4  08 30 40 e2                                      sub r3, r0, #8
003c03c8  03 00 53 e3                                      cmp r3, #3
003c03cc  04 00 00 8a                                      bhi #0x3c03e4
003c03d0  14 30 9f e5                                      ldr r3, [pc, #0x14]
003c03d4  03 30 8f e0                                      add r3, pc, r3
003c03d8  00 00 83 e0                                      add r0, r3, r0
003c03dc  08 00 50 e5                                      ldrb r0, [r0, #-8]
003c03e0  10 80 bd e8                                      pop {r4, pc}
003c03e4  00 00 a0 e3                                      mov r0, #0
003c03e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c03ec  7c 47 50 00                                      .byte 0x7c, 0x47, 0x50, 0x00

; FUNCTION 0x003c03f0, declared_size=24, range_size=24, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine9SM_IsDeadEv
; demangled: CharStateMachine::SM_IsDead() const
; decoder-mode: arm
003c03f0  10 40 2d e9                                      push {r4, lr}
003c03f4  6c ff ff eb                                      bl #0x3c01ac
003c03f8  0c 00 50 e3                                      cmp r0, #0xc
003c03fc  00 00 a0 13                                      movne r0, #0
003c0400  01 00 a0 03                                      moveq r0, #1
003c0404  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c0408, declared_size=24, range_size=24, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine16SM_IsInteractingEv
; demangled: CharStateMachine::SM_IsInteracting() const
; decoder-mode: arm
003c0408  10 40 2d e9                                      push {r4, lr}
003c040c  66 ff ff eb                                      bl #0x3c01ac
003c0410  0d 00 50 e3                                      cmp r0, #0xd
003c0414  00 00 a0 13                                      movne r0, #0
003c0418  01 00 a0 03                                      moveq r0, #1
003c041c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c0420, declared_size=52, range_size=52, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine12SM_IsLiftingEv
; demangled: CharStateMachine::SM_IsLifting() const
; decoder-mode: arm
003c0420  10 40 2d e9                                      push {r4, lr}
003c0424  60 ff ff eb                                      bl #0x3c01ac
003c0428  12 30 40 e2                                      sub r3, r0, #0x12
003c042c  01 00 53 e3                                      cmp r3, #1
003c0430  01 00 00 9a                                      bls #0x3c043c
003c0434  00 00 a0 e3                                      mov r0, #0
003c0438  10 80 bd e8                                      pop {r4, pc}
003c043c  0c 30 9f e5                                      ldr r3, [pc, #0xc]
003c0440  03 30 8f e0                                      add r3, pc, r3
003c0444  00 00 83 e0                                      add r0, r3, r0
003c0448  0e 00 50 e5                                      ldrb r0, [r0, #-0xe]
003c044c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0450  10 47 50 00                                      .byte 0x10, 0x47, 0x50, 0x00

; FUNCTION 0x003c0b50, declared_size=40, range_size=40, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine10SM_SetAnimEi
; demangled: CharStateMachine::SM_SetAnim(int)
; decoder-mode: arm
003c0b50  28 30 90 e5                                      ldr r3, [r0, #0x28]
003c0b54  01 00 73 e3                                      cmn r3, #1
003c0b58  00 20 e0 13                                      mvnne r2, #0
003c0b5c  28 20 80 15                                      strne r2, [r0, #0x28]
003c0b60  04 00 90 e5                                      ldr r0, [r0, #4]
003c0b64  01 30 a0 01                                      moveq r3, r1
003c0b68  03 10 a0 e1                                      mov r1, r3
003c0b6c  49 0e 80 e2                                      add r0, r0, #0x490
003c0b70  0c 00 80 e2                                      add r0, r0, #0xc
003c0b74  4d 28 00 ea                                      b #0x3cacb0

; FUNCTION 0x003c1600, declared_size=148, range_size=148, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine12SetCharacterEP9Character
; demangled: CharStateMachine::SetCharacter(Character*)
; decoder-mode: arm
003c1600  30 40 2d e9                                      push {r4, r5, lr}
003c1604  70 30 9f e5                                      ldr r3, [pc, #0x70]
003c1608  00 40 51 e2                                      subs r4, r1, #0
003c160c  0c d0 4d e2                                      sub sp, sp, #0xc
003c1610  00 50 a0 e1                                      mov r5, r0
003c1614  03 30 8f e0                                      add r3, pc, r3
003c1618  02 00 00 0a                                      beq #0x3c1628
003c161c  04 40 85 e5                                      str r4, [r5, #4]
003c1620  0c d0 8d e2                                      add sp, sp, #0xc
003c1624  30 80 bd e8                                      pop {r4, r5, pc}
003c1628  50 20 9f e5                                      ldr r2, [pc, #0x50]
003c162c  02 20 93 e7                                      ldr r2, [r3, r2]
003c1630  00 20 92 e5                                      ldr r2, [r2]
003c1634  02 00 52 e3                                      cmp r2, #2
003c1638  00 40 84 05                                      streq r4, [r4]
003c163c  f6 ff ff 0a                                      beq #0x3c161c
003c1640  01 00 52 e3                                      cmp r2, #1
003c1644  f4 ff ff 1a                                      bne #0x3c161c
003c1648  34 00 9f e5                                      ldr r0, [pc, #0x34]
003c164c  34 10 9f e5                                      ldr r1, [pc, #0x34]
003c1650  34 20 9f e5                                      ldr r2, [pc, #0x34]
003c1654  00 00 93 e7                                      ldr r0, [r3, r0]
003c1658  30 30 9f e5                                      ldr r3, [pc, #0x30]
003c165c  e1 c0 a0 e3                                      mov ip, #0xe1
003c1660  01 10 8f e0                                      add r1, pc, r1
003c1664  02 20 8f e0                                      add r2, pc, r2
003c1668  03 30 8f e0                                      add r3, pc, r3
003c166c  a8 00 80 e2                                      add r0, r0, #0xa8
003c1670  00 c0 8d e5                                      str ip, [sp]
003c1674  62 32 fd eb                                      bl #0x30e004
003c1678  e7 ff ff ea                                      b #0x3c161c
; mapping-symbol data/literal pool
003c167c  7c 34 5d 00 c0 39 00 00 c0 19 00 00 78 cd 4f 00  .byte 0x7c, 0x34, 0x5d, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x78, 0xcd, 0x4f, 0x00
003c168c  24 0a 53 00 80 35 50 00                          .byte 0x24, 0x0a, 0x53, 0x00, 0x80, 0x35, 0x50, 0x00

; FUNCTION 0x003c1694, declared_size=440, range_size=440, mode=arm
; class-group: CharStateMachine
; alias: _ZNK16CharStateMachine9_GetEventEii
; demangled: CharStateMachine::_GetEvent(int, int) const
; decoder-mode: arm
003c1694  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c1698  0c d0 4d e2                                      sub sp, sp, #0xc
003c169c  02 40 a0 e1                                      mov r4, r2
003c16a0  00 70 a0 e1                                      mov r7, r0
003c16a4  01 50 a0 e1                                      mov r5, r1
003c16a8  75 fa ff eb                                      bl #0x3c0084
003c16ac  74 61 9f e5                                      ldr r6, [pc, #0x174]
003c16b0  00 00 50 e3                                      cmp r0, #0
003c16b4  06 60 8f e0                                      add r6, pc, r6
003c16b8  07 00 00 1a                                      bne #0x3c16dc
003c16bc  68 31 9f e5                                      ldr r3, [pc, #0x168]
003c16c0  03 30 96 e7                                      ldr r3, [r6, r3]
003c16c4  00 30 93 e5                                      ldr r3, [r3]
003c16c8  02 00 53 e3                                      cmp r3, #2
003c16cc  00 00 80 05                                      streq r0, [r0]
003c16d0  01 00 00 0a                                      beq #0x3c16dc
003c16d4  01 00 53 e3                                      cmp r3, #1
003c16d8  38 00 00 0a                                      beq #0x3c17c0
003c16dc  07 00 a0 e1                                      mov r0, r7
003c16e0  05 10 a0 e1                                      mov r1, r5
003c16e4  04 20 a0 e1                                      mov r2, r4
003c16e8  7c fa ff eb                                      bl #0x3c00e0
003c16ec  00 00 50 e3                                      cmp r0, #0
003c16f0  07 00 00 1a                                      bne #0x3c1714
003c16f4  30 31 9f e5                                      ldr r3, [pc, #0x130]
003c16f8  03 30 96 e7                                      ldr r3, [r6, r3]
003c16fc  00 30 93 e5                                      ldr r3, [r3]
003c1700  02 00 53 e3                                      cmp r3, #2
003c1704  00 00 80 05                                      streq r0, [r0]
003c1708  01 00 00 0a                                      beq #0x3c1714
003c170c  01 00 53 e3                                      cmp r3, #1
003c1710  37 00 00 0a                                      beq #0x3c17f4
003c1714  0c 30 97 e5                                      ldr r3, [r7, #0xc]
003c1718  08 70 87 e2                                      add r7, r7, #8
003c171c  00 00 53 e3                                      cmp r3, #0
003c1720  0f 00 00 0a                                      beq #0x3c1764
003c1724  07 10 a0 e1                                      mov r1, r7
003c1728  00 00 00 ea                                      b #0x3c1730
003c172c  02 30 a0 e1                                      mov r3, r2
003c1730  10 20 93 e5                                      ldr r2, [r3, #0x10]
003c1734  02 00 55 e1                                      cmp r5, r2
003c1738  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
003c173c  08 20 93 d5                                      ldrle r2, [r3, #8]
003c1740  01 30 a0 c1                                      movgt r3, r1
003c1744  03 10 a0 e1                                      mov r1, r3
003c1748  00 00 52 e3                                      cmp r2, #0
003c174c  f6 ff ff 1a                                      bne #0x3c172c
003c1750  03 00 57 e1                                      cmp r7, r3
003c1754  02 00 00 0a                                      beq #0x3c1764
003c1758  10 20 93 e5                                      ldr r2, [r3, #0x10]
003c175c  02 00 55 e1                                      cmp r5, r2
003c1760  03 70 a0 a1                                      movge r7, r3
003c1764  20 30 97 e5                                      ldr r3, [r7, #0x20]
003c1768  1c 50 87 e2                                      add r5, r7, #0x1c
003c176c  00 00 53 e3                                      cmp r3, #0
003c1770  0f 00 00 0a                                      beq #0x3c17b4
003c1774  05 10 a0 e1                                      mov r1, r5
003c1778  00 00 00 ea                                      b #0x3c1780
003c177c  02 30 a0 e1                                      mov r3, r2
003c1780  10 20 93 e5                                      ldr r2, [r3, #0x10]
003c1784  04 00 52 e1                                      cmp r2, r4
003c1788  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
003c178c  08 20 93 a5                                      ldrge r2, [r3, #8]
003c1790  01 30 a0 b1                                      movlt r3, r1
003c1794  03 10 a0 e1                                      mov r1, r3
003c1798  00 00 52 e3                                      cmp r2, #0
003c179c  f6 ff ff 1a                                      bne #0x3c177c
003c17a0  03 00 55 e1                                      cmp r5, r3
003c17a4  02 00 00 0a                                      beq #0x3c17b4
003c17a8  10 20 93 e5                                      ldr r2, [r3, #0x10]
003c17ac  04 00 52 e1                                      cmp r2, r4
003c17b0  03 50 a0 d1                                      movle r5, r3
003c17b4  14 00 85 e2                                      add r0, r5, #0x14
003c17b8  0c d0 8d e2                                      add sp, sp, #0xc
003c17bc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c17c0  68 00 9f e5                                      ldr r0, [pc, #0x68]
003c17c4  68 10 9f e5                                      ldr r1, [pc, #0x68]
003c17c8  68 20 9f e5                                      ldr r2, [pc, #0x68]
003c17cc  00 00 96 e7                                      ldr r0, [r6, r0]
003c17d0  64 30 9f e5                                      ldr r3, [pc, #0x64]
003c17d4  d0 c0 a0 e3                                      mov ip, #0xd0
003c17d8  01 10 8f e0                                      add r1, pc, r1
003c17dc  02 20 8f e0                                      add r2, pc, r2
003c17e0  03 30 8f e0                                      add r3, pc, r3
003c17e4  a8 00 80 e2                                      add r0, r0, #0xa8
003c17e8  00 c0 8d e5                                      str ip, [sp]
003c17ec  04 32 fd eb                                      bl #0x30e004
003c17f0  b9 ff ff ea                                      b #0x3c16dc
003c17f4  34 00 9f e5                                      ldr r0, [pc, #0x34]
003c17f8  40 10 9f e5                                      ldr r1, [pc, #0x40]
003c17fc  40 20 9f e5                                      ldr r2, [pc, #0x40]
003c1800  00 00 96 e7                                      ldr r0, [r6, r0]
003c1804  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003c1808  d1 c0 a0 e3                                      mov ip, #0xd1
003c180c  01 10 8f e0                                      add r1, pc, r1
003c1810  02 20 8f e0                                      add r2, pc, r2
003c1814  03 30 8f e0                                      add r3, pc, r3
003c1818  a8 00 80 e2                                      add r0, r0, #0xa8
003c181c  00 c0 8d e5                                      str ip, [sp]
003c1820  f7 31 fd eb                                      bl #0x30e004
003c1824  ba ff ff ea                                      b #0x3c1714
; mapping-symbol data/literal pool
003c1828  dc 33 5d 00 c0 39 00 00 c0 19 00 00 00 cc 4f 00  .byte 0xdc, 0x33, 0x5d, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x00, 0xcc, 0x4f, 0x00
003c1838  74 34 50 00 08 34 50 00 cc cb 4f 00 58 34 50 00  .byte 0x74, 0x34, 0x50, 0x00, 0x08, 0x34, 0x50, 0x00, 0xcc, 0xcb, 0x4f, 0x00, 0x58, 0x34, 0x50, 0x00
003c1848  d4 33 50 00                                      .byte 0xd4, 0x33, 0x50, 0x00

; FUNCTION 0x003c184c, declared_size=236, range_size=236, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine9_GetStateEi
; demangled: CharStateMachine::_GetState(int)
; decoder-mode: arm
003c184c  30 40 2d e9                                      push {r4, r5, lr}
003c1850  0c d0 4d e2                                      sub sp, sp, #0xc
003c1854  00 50 a0 e1                                      mov r5, r0
003c1858  01 40 a0 e1                                      mov r4, r1
003c185c  08 fa ff eb                                      bl #0x3c0084
003c1860  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
003c1864  00 00 50 e3                                      cmp r0, #0
003c1868  03 30 8f e0                                      add r3, pc, r3
003c186c  07 00 00 1a                                      bne #0x3c1890
003c1870  ac 20 9f e5                                      ldr r2, [pc, #0xac]
003c1874  02 20 93 e7                                      ldr r2, [r3, r2]
003c1878  00 20 92 e5                                      ldr r2, [r2]
003c187c  02 00 52 e3                                      cmp r2, #2
003c1880  00 00 80 05                                      streq r0, [r0]
003c1884  01 00 00 0a                                      beq #0x3c1890
003c1888  01 00 52 e3                                      cmp r2, #1
003c188c  16 00 00 0a                                      beq #0x3c18ec
003c1890  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003c1894  08 50 85 e2                                      add r5, r5, #8
003c1898  00 00 53 e3                                      cmp r3, #0
003c189c  0f 00 00 0a                                      beq #0x3c18e0
003c18a0  05 10 a0 e1                                      mov r1, r5
003c18a4  00 00 00 ea                                      b #0x3c18ac
003c18a8  02 30 a0 e1                                      mov r3, r2
003c18ac  10 20 93 e5                                      ldr r2, [r3, #0x10]
003c18b0  02 00 54 e1                                      cmp r4, r2
003c18b4  0c 20 93 c5                                      ldrgt r2, [r3, #0xc]
003c18b8  08 20 93 d5                                      ldrle r2, [r3, #8]
003c18bc  01 30 a0 c1                                      movgt r3, r1
003c18c0  03 10 a0 e1                                      mov r1, r3
003c18c4  00 00 52 e3                                      cmp r2, #0
003c18c8  f6 ff ff 1a                                      bne #0x3c18a8
003c18cc  03 00 55 e1                                      cmp r5, r3
003c18d0  02 00 00 0a                                      beq #0x3c18e0
003c18d4  10 20 93 e5                                      ldr r2, [r3, #0x10]
003c18d8  02 00 54 e1                                      cmp r4, r2
003c18dc  03 50 a0 a1                                      movge r5, r3
003c18e0  14 00 85 e2                                      add r0, r5, #0x14
003c18e4  0c d0 8d e2                                      add sp, sp, #0xc
003c18e8  30 80 bd e8                                      pop {r4, r5, pc}
003c18ec  34 00 9f e5                                      ldr r0, [pc, #0x34]
003c18f0  34 10 9f e5                                      ldr r1, [pc, #0x34]
003c18f4  34 20 9f e5                                      ldr r2, [pc, #0x34]
003c18f8  00 00 93 e7                                      ldr r0, [r3, r0]
003c18fc  30 30 9f e5                                      ldr r3, [pc, #0x30]
003c1900  97 c0 a0 e3                                      mov ip, #0x97
003c1904  01 10 8f e0                                      add r1, pc, r1
003c1908  02 20 8f e0                                      add r2, pc, r2
003c190c  03 30 8f e0                                      add r3, pc, r3
003c1910  a8 00 80 e2                                      add r0, r0, #0xa8
003c1914  00 c0 8d e5                                      str ip, [sp]
003c1918  b9 31 fd eb                                      bl #0x30e004
003c191c  db ff ff ea                                      b #0x3c1890
; mapping-symbol data/literal pool
003c1920  28 32 5d 00 c0 39 00 00 c0 19 00 00 d4 ca 4f 00  .byte 0x28, 0x32, 0x5d, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xd4, 0xca, 0x4f, 0x00
003c1930  48 33 50 00 dc 32 50 00                          .byte 0x48, 0x33, 0x50, 0x00, 0xdc, 0x32, 0x50, 0x00

; FUNCTION 0x003c1938, declared_size=200, range_size=200, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine9_SetStateEiiPv
; demangled: CharStateMachine::_SetState(int, int, void*)
; decoder-mode: arm
003c1938  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c193c  20 c0 90 e5                                      ldr ip, [r0, #0x20]
003c1940  14 d0 4d e2                                      sub sp, sp, #0x14
003c1944  00 40 a0 e1                                      mov r4, r0
003c1948  00 00 5c e3                                      cmp ip, #0
003c194c  00 70 e0 03                                      mvneq r7, #0
003c1950  01 50 a0 e1                                      mov r5, r1
003c1954  02 80 a0 e1                                      mov r8, r2
003c1958  03 a0 a0 e1                                      mov sl, r3
003c195c  07 60 a0 01                                      moveq r6, r7
003c1960  0a 00 00 0a                                      beq #0x3c1990
003c1964  04 30 9c e5                                      ldr r3, [ip, #4]
003c1968  00 60 9c e5                                      ldr r6, [ip]
003c196c  04 20 90 e5                                      ldr r2, [r0, #4]
003c1970  00 c0 93 e5                                      ldr ip, [r3]
003c1974  03 00 a0 e1                                      mov r0, r3
003c1978  00 10 8d e5                                      str r1, [sp]
003c197c  04 30 a0 e1                                      mov r3, r4
003c1980  06 10 a0 e1                                      mov r1, r6
003c1984  0f e0 a0 e1                                      mov lr, pc
003c1988  10 f0 9c e5                                      ldr pc, [ip, #0x10]
003c198c  06 70 a0 e1                                      mov r7, r6
003c1990  04 00 a0 e1                                      mov r0, r4
003c1994  05 10 a0 e1                                      mov r1, r5
003c1998  b9 f9 ff eb                                      bl #0x3c0084
003c199c  00 00 50 e3                                      cmp r0, #0
003c19a0  20 00 84 05                                      streq r0, [r4, #0x20]
003c19a4  05 00 00 1a                                      bne #0x3c19c0
003c19a8  04 00 94 e5                                      ldr r0, [r4, #4]
003c19ac  07 20 a0 e1                                      mov r2, r7
003c19b0  1d 10 a0 e3                                      mov r1, #0x1d
003c19b4  14 d0 8d e2                                      add sp, sp, #0x14
003c19b8  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
003c19bc  e6 8c ff ea                                      b #0x3a4d5c
003c19c0  05 10 a0 e1                                      mov r1, r5
003c19c4  04 00 a0 e1                                      mov r0, r4
003c19c8  9f ff ff eb                                      bl #0x3c184c
003c19cc  05 00 56 e1                                      cmp r6, r5
003c19d0  00 30 a0 13                                      movne r3, #0
003c19d4  20 00 84 e5                                      str r0, [r4, #0x20]
003c19d8  60 30 84 15                                      strne r3, [r4, #0x60]
003c19dc  0a 00 90 e8                                      ldm r0, {r1, r3}
003c19e0  04 20 94 e5                                      ldr r2, [r4, #4]
003c19e4  00 c0 93 e5                                      ldr ip, [r3]
003c19e8  03 00 a0 e1                                      mov r0, r3
003c19ec  40 05 8d e8                                      stm sp, {r6, r8, sl}
003c19f0  04 30 a0 e1                                      mov r3, r4
003c19f4  0f e0 a0 e1                                      mov lr, pc
003c19f8  0c f0 9c e5                                      ldr pc, [ip, #0xc]
003c19fc  e9 ff ff ea                                      b #0x3c19a8

; FUNCTION 0x003c1a00, declared_size=20, range_size=20, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine15SM_SetIdleStateEb
; demangled: CharStateMachine::SM_SetIdleState(bool)
; decoder-mode: arm
003c1a00  3c 10 c0 e5                                      strb r1, [r0, #0x3c]
003c1a04  00 20 e0 e3                                      mvn r2, #0
003c1a08  03 10 a0 e3                                      mov r1, #3
003c1a0c  00 30 a0 e3                                      mov r3, #0
003c1a10  c8 ff ff ea                                      b #0x3c1938

; FUNCTION 0x003c1a64, declared_size=16, range_size=16, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine19SM_SetPreSpawnStateEv
; demangled: CharStateMachine::SM_SetPreSpawnState()
; decoder-mode: arm
003c1a64  11 10 a0 e3                                      mov r1, #0x11
003c1a68  00 20 e0 e3                                      mvn r2, #0
003c1a6c  00 30 a0 e3                                      mov r3, #0
003c1a70  b0 ff ff ea                                      b #0x3c1938

; FUNCTION 0x003c1a74, declared_size=52, range_size=52, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine17SM_SetLimbusStateEb
; demangled: CharStateMachine::SM_SetLimbusState(bool)
; decoder-mode: arm
003c1a74  10 40 2d e9                                      push {r4, lr}
003c1a78  34 10 c0 e5                                      strb r1, [r0, #0x34]
003c1a7c  00 40 a0 e1                                      mov r4, r0
003c1a80  d9 f9 ff eb                                      bl #0x3c01ec
003c1a84  00 00 50 e3                                      cmp r0, #0
003c1a88  00 30 a0 13                                      movne r3, #0
003c1a8c  00 10 a0 e3                                      mov r1, #0
003c1a90  20 30 84 15                                      strne r3, [r4, #0x20]
003c1a94  04 00 a0 e1                                      mov r0, r4
003c1a98  00 20 e0 e3                                      mvn r2, #0
003c1a9c  01 30 a0 e1                                      mov r3, r1
003c1aa0  10 40 bd e8                                      pop {r4, lr}
003c1aa4  a3 ff ff ea                                      b #0x3c1938

; FUNCTION 0x003c1aa8, declared_size=28, range_size=28, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine15SM_SetAnimStateEibb
; demangled: CharStateMachine::SM_SetAnimState(int, bool, bool)
; decoder-mode: arm
003c1aa8  45 30 c0 e5                                      strb r3, [r0, #0x45]
003c1aac  28 10 80 e5                                      str r1, [r0, #0x28]
003c1ab0  44 20 c0 e5                                      strb r2, [r0, #0x44]
003c1ab4  0e 10 a0 e3                                      mov r1, #0xe
003c1ab8  00 20 e0 e3                                      mvn r2, #0
003c1abc  00 30 a0 e3                                      mov r3, #0
003c1ac0  9c ff ff ea                                      b #0x3c1938

; FUNCTION 0x003c1ac4, declared_size=148, range_size=148, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachineC1Ev
; demangled: CharStateMachine::CharStateMachine()
; decoder-mode: arm
003c1ac4  84 c0 9f e5                                      ldr ip, [pc, #0x84]
003c1ac8  04 40 2d e5                                      str r4, [sp, #-4]!
003c1acc  80 40 9f e5                                      ldr r4, [pc, #0x80]
003c1ad0  0c c0 8f e0                                      add ip, pc, ip
003c1ad4  00 20 a0 e3                                      mov r2, #0
003c1ad8  04 40 9c e7                                      ldr r4, [ip, r4]
003c1adc  00 10 a0 e1                                      mov r1, r0
003c1ae0  04 20 80 e5                                      str r2, [r0, #4]
003c1ae4  08 40 84 e2                                      add r4, r4, #8
003c1ae8  00 40 80 e5                                      str r4, [r0]
003c1aec  0c 20 80 e5                                      str r2, [r0, #0xc]
003c1af0  00 40 e0 e3                                      mvn r4, #0
003c1af4  08 20 e1 e5                                      strb r2, [r1, #8]!
003c1af8  14 10 80 e5                                      str r1, [r0, #0x14]
003c1afc  28 40 80 e5                                      str r4, [r0, #0x28]
003c1b00  5c 20 80 e5                                      str r2, [r0, #0x5c]
003c1b04  10 10 80 e5                                      str r1, [r0, #0x10]
003c1b08  18 20 80 e5                                      str r2, [r0, #0x18]
003c1b0c  20 20 80 e5                                      str r2, [r0, #0x20]
003c1b10  24 20 80 e5                                      str r2, [r0, #0x24]
003c1b14  60 20 80 e5                                      str r2, [r0, #0x60]
003c1b18  2c 20 80 e5                                      str r2, [r0, #0x2c]
003c1b1c  30 20 80 e5                                      str r2, [r0, #0x30]
003c1b20  34 20 80 e5                                      str r2, [r0, #0x34]
003c1b24  38 20 80 e5                                      str r2, [r0, #0x38]
003c1b28  3c 20 80 e5                                      str r2, [r0, #0x3c]
003c1b2c  40 20 80 e5                                      str r2, [r0, #0x40]
003c1b30  44 20 80 e5                                      str r2, [r0, #0x44]
003c1b34  48 20 80 e5                                      str r2, [r0, #0x48]
003c1b38  4c 20 80 e5                                      str r2, [r0, #0x4c]
003c1b3c  50 20 80 e5                                      str r2, [r0, #0x50]
003c1b40  54 20 80 e5                                      str r2, [r0, #0x54]
003c1b44  58 20 80 e5                                      str r2, [r0, #0x58]
003c1b48  10 00 bd e8                                      ldm sp!, {r4}
003c1b4c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003c1b50  c0 2f 5d 00 f8 23 00 00                          .byte 0xc0, 0x2f, 0x5d, 0x00, 0xf8, 0x23, 0x00, 0x00

; FUNCTION 0x003c1b58, declared_size=148, range_size=148, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachineC2Ev
; demangled: CharStateMachine::CharStateMachine()
; decoder-mode: arm
003c1b58  84 c0 9f e5                                      ldr ip, [pc, #0x84]
003c1b5c  04 40 2d e5                                      str r4, [sp, #-4]!
003c1b60  80 40 9f e5                                      ldr r4, [pc, #0x80]
003c1b64  0c c0 8f e0                                      add ip, pc, ip
003c1b68  00 20 a0 e3                                      mov r2, #0
003c1b6c  04 40 9c e7                                      ldr r4, [ip, r4]
003c1b70  00 10 a0 e1                                      mov r1, r0
003c1b74  04 20 80 e5                                      str r2, [r0, #4]
003c1b78  08 40 84 e2                                      add r4, r4, #8
003c1b7c  00 40 80 e5                                      str r4, [r0]
003c1b80  0c 20 80 e5                                      str r2, [r0, #0xc]
003c1b84  00 40 e0 e3                                      mvn r4, #0
003c1b88  08 20 e1 e5                                      strb r2, [r1, #8]!
003c1b8c  14 10 80 e5                                      str r1, [r0, #0x14]
003c1b90  28 40 80 e5                                      str r4, [r0, #0x28]
003c1b94  5c 20 80 e5                                      str r2, [r0, #0x5c]
003c1b98  10 10 80 e5                                      str r1, [r0, #0x10]
003c1b9c  18 20 80 e5                                      str r2, [r0, #0x18]
003c1ba0  20 20 80 e5                                      str r2, [r0, #0x20]
003c1ba4  24 20 80 e5                                      str r2, [r0, #0x24]
003c1ba8  60 20 80 e5                                      str r2, [r0, #0x60]
003c1bac  2c 20 80 e5                                      str r2, [r0, #0x2c]
003c1bb0  30 20 80 e5                                      str r2, [r0, #0x30]
003c1bb4  34 20 80 e5                                      str r2, [r0, #0x34]
003c1bb8  38 20 80 e5                                      str r2, [r0, #0x38]
003c1bbc  3c 20 80 e5                                      str r2, [r0, #0x3c]
003c1bc0  40 20 80 e5                                      str r2, [r0, #0x40]
003c1bc4  44 20 80 e5                                      str r2, [r0, #0x44]
003c1bc8  48 20 80 e5                                      str r2, [r0, #0x48]
003c1bcc  4c 20 80 e5                                      str r2, [r0, #0x4c]
003c1bd0  50 20 80 e5                                      str r2, [r0, #0x50]
003c1bd4  54 20 80 e5                                      str r2, [r0, #0x54]
003c1bd8  58 20 80 e5                                      str r2, [r0, #0x58]
003c1bdc  10 00 bd e8                                      ldm sp!, {r4}
003c1be0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003c1be4  2c 2f 5d 00 f8 23 00 00                          .byte 0x2c, 0x2f, 0x5d, 0x00, 0xf8, 0x23, 0x00, 0x00

; FUNCTION 0x003c2734, declared_size=220, range_size=220, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine16SM_SetSpawnStateEbb
; demangled: CharStateMachine::SM_SetSpawnState(bool, bool)
; decoder-mode: arm
003c2734  30 40 2d e9                                      push {r4, r5, lr}
003c2738  00 30 51 e2                                      subs r3, r1, #0
003c273c  0c d0 4d e2                                      sub sp, sp, #0xc
003c2740  00 40 a0 e1                                      mov r4, r0
003c2744  23 00 00 0a                                      beq #0x3c27d8
003c2748  04 20 90 e5                                      ldr r2, [r0, #4]
003c274c  34 14 01 e3                                      movw r1, #0x1434
003c2750  01 30 92 e7                                      ldr r3, [r2, r1]
003c2754  00 00 53 e3                                      cmp r3, #0
003c2758  00 30 a0 b3                                      movlt r3, #0
003c275c  01 30 82 b7                                      strlt r3, [r2, r1]
003c2760  38 14 01 e3                                      movw r1, #0x1438
003c2764  01 00 92 e7                                      ldr r0, [r2, r1]
003c2768  03 00 50 e1                                      cmp r0, r3
003c276c  34 04 01 b3                                      movwlt r0, #0x1434
003c2770  00 50 92 b7                                      ldrlt r5, [r2, r0]
003c2774  03 50 a0 a1                                      movge r5, r3
003c2778  00 30 a0 a1                                      movge r3, r0
003c277c  01 30 82 b7                                      strlt r3, [r2, r1]
003c2780  05 00 53 e1                                      cmp r3, r5
003c2784  07 00 00 1a                                      bne #0x3c27a8
003c2788  00 00 53 e3                                      cmp r3, #0
003c278c  16 00 00 1a                                      bne #0x3c27ec
003c2790  04 00 a0 e1                                      mov r0, r4
003c2794  01 10 a0 e3                                      mov r1, #1
003c2798  00 20 e0 e3                                      mvn r2, #0
003c279c  0c d0 8d e2                                      add sp, sp, #0xc
003c27a0  30 40 bd e8                                      pop {r4, r5, lr}
003c27a4  63 fc ff ea                                      b #0x3c1938
003c27a8  03 00 65 e0                                      rsb r0, r5, r3
003c27ac  bb ff ff eb                                      bl #0x3c26a0
003c27b0  04 30 94 e5                                      ldr r3, [r4, #4]
003c27b4  00 c0 a0 e3                                      mov ip, #0
003c27b8  05 10 80 e0                                      add r1, r0, r5
003c27bc  0c 20 a0 e1                                      mov r2, ip
003c27c0  ed 0f 83 e2                                      add r0, r3, #0x3b4
003c27c4  2d 30 a0 e3                                      mov r3, #0x2d
003c27c8  00 c0 8d e5                                      str ip, [sp]
003c27cc  94 65 00 eb                                      bl #0x3dbe24
003c27d0  0c d0 8d e2                                      add sp, sp, #0xc
003c27d4  30 80 bd e8                                      pop {r4, r5, pc}
003c27d8  01 10 a0 e3                                      mov r1, #1
003c27dc  00 20 e0 e3                                      mvn r2, #0
003c27e0  0c d0 8d e2                                      add sp, sp, #0xc
003c27e4  30 40 bd e8                                      pop {r4, r5, lr}
003c27e8  52 fc ff ea                                      b #0x3c1938
003c27ec  04 00 94 e5                                      ldr r0, [r4, #4]
003c27f0  00 c0 a0 e3                                      mov ip, #0
003c27f4  03 10 a0 e1                                      mov r1, r3
003c27f8  0c 20 a0 e1                                      mov r2, ip
003c27fc  2d 30 a0 e3                                      mov r3, #0x2d
003c2800  ed 0f 80 e2                                      add r0, r0, #0x3b4
003c2804  00 c0 8d e5                                      str ip, [sp]
003c2808  85 65 00 eb                                      bl #0x3dbe24
003c280c  ef ff ff ea                                      b #0x3c27d0

; FUNCTION 0x003c2a00, declared_size=68, range_size=68, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine5FlushEv
; demangled: CharStateMachine::Flush()
; decoder-mode: arm
003c2a00  70 40 2d e9                                      push {r4, r5, r6, lr}
003c2a04  18 30 90 e5                                      ldr r3, [r0, #0x18]
003c2a08  00 40 a0 e1                                      mov r4, r0
003c2a0c  00 00 53 e3                                      cmp r3, #0
003c2a10  08 00 00 0a                                      beq #0x3c2a38
003c2a14  08 50 80 e2                                      add r5, r0, #8
003c2a18  05 00 a0 e1                                      mov r0, r5
003c2a1c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003c2a20  d6 ff ff eb                                      bl #0x3c2980
003c2a24  00 30 a0 e3                                      mov r3, #0
003c2a28  14 50 84 e5                                      str r5, [r4, #0x14]
003c2a2c  18 30 84 e5                                      str r3, [r4, #0x18]
003c2a30  10 50 84 e5                                      str r5, [r4, #0x10]
003c2a34  0c 30 84 e5                                      str r3, [r4, #0xc]
003c2a38  00 30 a0 e3                                      mov r3, #0
003c2a3c  20 30 84 e5                                      str r3, [r4, #0x20]
003c2a40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003c2a44, declared_size=100, range_size=100, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachineD1Ev
; demangled: CharStateMachine::~CharStateMachine()
; decoder-mode: arm
003c2a44  54 30 9f e5                                      ldr r3, [pc, #0x54]
003c2a48  54 20 9f e5                                      ldr r2, [pc, #0x54]
003c2a4c  70 40 2d e9                                      push {r4, r5, r6, lr}
003c2a50  03 30 8f e0                                      add r3, pc, r3
003c2a54  02 20 93 e7                                      ldr r2, [r3, r2]
003c2a58  00 40 a0 e1                                      mov r4, r0
003c2a5c  08 20 82 e2                                      add r2, r2, #8
003c2a60  00 20 80 e5                                      str r2, [r0]
003c2a64  e5 ff ff eb                                      bl #0x3c2a00
003c2a68  18 30 94 e5                                      ldr r3, [r4, #0x18]
003c2a6c  00 00 53 e3                                      cmp r3, #0
003c2a70  08 00 00 0a                                      beq #0x3c2a98
003c2a74  08 50 84 e2                                      add r5, r4, #8
003c2a78  05 00 a0 e1                                      mov r0, r5
003c2a7c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003c2a80  be ff ff eb                                      bl #0x3c2980
003c2a84  00 30 a0 e3                                      mov r3, #0
003c2a88  14 50 84 e5                                      str r5, [r4, #0x14]
003c2a8c  18 30 84 e5                                      str r3, [r4, #0x18]
003c2a90  10 50 84 e5                                      str r5, [r4, #0x10]
003c2a94  0c 30 84 e5                                      str r3, [r4, #0xc]
003c2a98  04 00 a0 e1                                      mov r0, r4
003c2a9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003c2aa0  40 20 5d 00 f8 23 00 00                          .byte 0x40, 0x20, 0x5d, 0x00, 0xf8, 0x23, 0x00, 0x00

; FUNCTION 0x003c2aa8, declared_size=28, range_size=28, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachineD0Ev
; demangled: CharStateMachine::~CharStateMachine()
; decoder-mode: arm
003c2aa8  10 40 2d e9                                      push {r4, lr}
003c2aac  00 40 a0 e1                                      mov r4, r0
003c2ab0  e3 ff ff eb                                      bl #0x3c2a44
003c2ab4  04 00 a0 e1                                      mov r0, r4
003c2ab8  60 36 fd eb                                      bl #0x310440
003c2abc  04 00 a0 e1                                      mov r0, r4
003c2ac0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003c2ac4, declared_size=100, range_size=100, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachineD2Ev
; demangled: CharStateMachine::~CharStateMachine()
; decoder-mode: arm
003c2ac4  54 30 9f e5                                      ldr r3, [pc, #0x54]
003c2ac8  54 20 9f e5                                      ldr r2, [pc, #0x54]
003c2acc  70 40 2d e9                                      push {r4, r5, r6, lr}
003c2ad0  03 30 8f e0                                      add r3, pc, r3
003c2ad4  02 20 93 e7                                      ldr r2, [r3, r2]
003c2ad8  00 40 a0 e1                                      mov r4, r0
003c2adc  08 20 82 e2                                      add r2, r2, #8
003c2ae0  00 20 80 e5                                      str r2, [r0]
003c2ae4  c5 ff ff eb                                      bl #0x3c2a00
003c2ae8  18 30 94 e5                                      ldr r3, [r4, #0x18]
003c2aec  00 00 53 e3                                      cmp r3, #0
003c2af0  08 00 00 0a                                      beq #0x3c2b18
003c2af4  08 50 84 e2                                      add r5, r4, #8
003c2af8  05 00 a0 e1                                      mov r0, r5
003c2afc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003c2b00  9e ff ff eb                                      bl #0x3c2980
003c2b04  00 30 a0 e3                                      mov r3, #0
003c2b08  14 50 84 e5                                      str r5, [r4, #0x14]
003c2b0c  18 30 84 e5                                      str r3, [r4, #0x18]
003c2b10  10 50 84 e5                                      str r5, [r4, #0x10]
003c2b14  0c 30 84 e5                                      str r3, [r4, #0xc]
003c2b18  04 00 a0 e1                                      mov r0, r4
003c2b1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003c2b20  c0 1f 5d 00 f8 23 00 00                          .byte 0xc0, 0x1f, 0x5d, 0x00, 0xf8, 0x23, 0x00, 0x00

; FUNCTION 0x003c5684, declared_size=508, range_size=508, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine15RaiseStateEventEiPv
; demangled: CharStateMachine::RaiseStateEvent(int, void*)
; decoder-mode: arm
003c5684  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c5688  e0 51 9f e5                                      ldr r5, [pc, #0x1e0]
003c568c  e0 71 9f e5                                      ldr r7, [pc, #0x1e0]
003c5690  01 60 a0 e1                                      mov r6, r1
003c5694  05 50 8f e0                                      add r5, pc, r5
003c5698  07 10 95 e7                                      ldr r1, [r5, r7]
003c569c  30 d0 4d e2                                      sub sp, sp, #0x30
003c56a0  2a 30 46 e2                                      sub r3, r6, #0x2a
003c56a4  00 10 91 e5                                      ldr r1, [r1]
003c56a8  00 40 a0 e1                                      mov r4, r0
003c56ac  02 80 a0 e1                                      mov r8, r2
003c56b0  2c 10 8d e5                                      str r1, [sp, #0x2c]
003c56b4  06 00 53 e3                                      cmp r3, #6
003c56b8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003c56bc  0f 00 00 ea                                      b #0x3c5700
003c56c0  61 00 00 ea                                      b #0x3c584c
003c56c4  5c 00 00 ea                                      b #0x3c583c
003c56c8  57 00 00 ea                                      b #0x3c582c
003c56cc  0b 00 00 ea                                      b #0x3c5700
003c56d0  0a 00 00 ea                                      b #0x3c5700
003c56d4  09 00 00 ea                                      b #0x3c5700
003c56d8  ff ff ff ea                                      b #0x3c56dc
003c56dc  00 10 a0 e3                                      mov r1, #0
003c56e0  de ea ff eb                                      bl #0x3c0260
003c56e4  00 00 50 e3                                      cmp r0, #0
003c56e8  04 00 00 0a                                      beq #0x3c5700
003c56ec  04 30 94 e5                                      ldr r3, [r4, #4]
003c56f0  dc 02 93 e5                                      ldr r0, [r3, #0x2dc]
003c56f4  00 00 50 e3                                      cmp r0, #0
003c56f8  00 00 00 0a                                      beq #0x3c5700
003c56fc  07 a5 02 eb                                      bl #0x46eb20
003c5700  20 30 94 e5                                      ldr r3, [r4, #0x20]
003c5704  00 00 53 e3                                      cmp r3, #0
003c5708  0f 00 00 0a                                      beq #0x3c574c
003c570c  0a 00 93 e8                                      ldm r3, {r1, r3}
003c5710  04 20 94 e5                                      ldr r2, [r4, #4]
003c5714  00 c0 93 e5                                      ldr ip, [r3]
003c5718  03 00 a0 e1                                      mov r0, r3
003c571c  00 60 8d e5                                      str r6, [sp]
003c5720  04 30 a0 e1                                      mov r3, r4
003c5724  04 80 8d e5                                      str r8, [sp, #4]
003c5728  0f e0 a0 e1                                      mov lr, pc
003c572c  18 f0 9c e5                                      ldr pc, [ip, #0x18]
003c5730  20 30 94 e5                                      ldr r3, [r4, #0x20]
003c5734  04 00 a0 e1                                      mov r0, r4
003c5738  06 20 a0 e1                                      mov r2, r6
003c573c  00 10 93 e5                                      ldr r1, [r3]
003c5740  66 ea ff eb                                      bl #0x3c00e0
003c5744  00 00 50 e3                                      cmp r0, #0
003c5748  06 00 00 1a                                      bne #0x3c5768
003c574c  07 30 95 e7                                      ldr r3, [r5, r7]
003c5750  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003c5754  00 30 93 e5                                      ldr r3, [r3]
003c5758  03 00 52 e1                                      cmp r2, r3
003c575c  42 00 00 1a                                      bne #0x3c586c
003c5760  30 d0 8d e2                                      add sp, sp, #0x30
003c5764  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c5768  08 31 9f e5                                      ldr r3, [pc, #0x108]
003c576c  14 a0 8d e2                                      add sl, sp, #0x14
003c5770  03 90 95 e7                                      ldr sb, [r5, r3]
003c5774  09 00 a0 e1                                      mov r0, sb
003c5778  42 c8 fd eb                                      bl #0x337888
003c577c  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
003c5780  10 20 8d e2                                      add r2, sp, #0x10
003c5784  0a 00 a0 e1                                      mov r0, sl
003c5788  01 10 8f e0                                      add r1, pc, r1
003c578c  56 3a fd eb                                      bl #0x3140ec
003c5790  0a 10 a0 e1                                      mov r1, sl
003c5794  09 00 a0 e1                                      mov r0, sb
003c5798  ba c8 fd eb                                      bl #0x337a88
003c579c  0a 00 a0 e1                                      mov r0, sl
003c57a0  ab 4a fd eb                                      bl #0x318254
003c57a4  20 30 94 e5                                      ldr r3, [r4, #0x20]
003c57a8  04 00 a0 e1                                      mov r0, r4
003c57ac  06 20 a0 e1                                      mov r2, r6
003c57b0  00 10 93 e5                                      ldr r1, [r3]
003c57b4  b6 ef ff eb                                      bl #0x3c1694
003c57b8  08 10 90 e5                                      ldr r1, [r0, #8]
003c57bc  0c 10 8d e5                                      str r1, [sp, #0xc]
003c57c0  00 30 90 e5                                      ldr r3, [r0]
003c57c4  00 00 53 e3                                      cmp r3, #0
003c57c8  23 00 00 0a                                      beq #0x3c585c
003c57cc  04 30 90 e5                                      ldr r3, [r0, #4]
003c57d0  04 20 94 e5                                      ldr r2, [r4, #4]
003c57d4  01 00 13 e3                                      tst r3, #1
003c57d8  00 10 90 15                                      ldrne r1, [r0]
003c57dc  c3 c0 92 17                                      ldrne ip, [r2, r3, asr #1]
003c57e0  c3 00 82 10                                      addne r0, r2, r3, asr #1
003c57e4  00 c0 90 05                                      ldreq ip, [r0]
003c57e8  c3 00 82 00                                      addeq r0, r2, r3, asr #1
003c57ec  20 30 94 e5                                      ldr r3, [r4, #0x20]
003c57f0  0c 20 8d e2                                      add r2, sp, #0xc
003c57f4  01 c0 9c 17                                      ldrne ip, [ip, r1]
003c57f8  00 30 93 e5                                      ldr r3, [r3]
003c57fc  06 10 a0 e1                                      mov r1, r6
003c5800  00 20 8d e5                                      str r2, [sp]
003c5804  08 20 a0 e1                                      mov r2, r8
003c5808  3c ff 2f e1                                      blx ip
003c580c  00 00 50 e3                                      cmp r0, #0
003c5810  cd ff ff 0a                                      beq #0x3c574c
003c5814  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003c5818  04 00 a0 e1                                      mov r0, r4
003c581c  06 20 a0 e1                                      mov r2, r6
003c5820  08 30 a0 e1                                      mov r3, r8
003c5824  43 f0 ff eb                                      bl #0x3c1938
003c5828  c7 ff ff ea                                      b #0x3c574c
003c582c  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
003c5830  04 30 c3 e3                                      bic r3, r3, #4
003c5834  2c 30 80 e5                                      str r3, [r0, #0x2c]
003c5838  b0 ff ff ea                                      b #0x3c5700
003c583c  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
003c5840  02 30 c3 e3                                      bic r3, r3, #2
003c5844  2c 30 80 e5                                      str r3, [r0, #0x2c]
003c5848  ac ff ff ea                                      b #0x3c5700
003c584c  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
003c5850  01 30 c3 e3                                      bic r3, r3, #1
003c5854  2c 30 80 e5                                      str r3, [r0, #0x2c]
003c5858  a8 ff ff ea                                      b #0x3c5700
003c585c  04 30 90 e5                                      ldr r3, [r0, #4]
003c5860  01 00 13 e3                                      tst r3, #1
003c5864  eb ff ff 0a                                      beq #0x3c5818
003c5868  d7 ff ff ea                                      b #0x3c57cc
003c586c  a7 22 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c5870  fc f3 5c 00 ac 40 00 00 84 08 00 00 a8 f7 4f 00  .byte 0xfc, 0xf3, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xa8, 0xf7, 0x4f, 0x00

; FUNCTION 0x003c5880, declared_size=36, range_size=36, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine18SM_SetRevivedStateEPvb
; demangled: CharStateMachine::SM_SetRevivedState(void*, bool)
; decoder-mode: arm
003c5880  00 00 52 e3                                      cmp r2, #0
003c5884  02 00 00 1a                                      bne #0x3c5894
003c5888  01 20 a0 e1                                      mov r2, r1
003c588c  59 13 0c e3                                      movw r1, #0xc359
003c5890  7b ff ff ea                                      b #0x3c5684
003c5894  01 30 a0 e1                                      mov r3, r1
003c5898  59 23 0c e3                                      movw r2, #0xc359
003c589c  10 10 a0 e3                                      mov r1, #0x10
003c58a0  24 f0 ff ea                                      b #0x3c1938

; FUNCTION 0x003c58a4, declared_size=36, range_size=36, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine19SM_SetRevivingStateEPvb
; demangled: CharStateMachine::SM_SetRevivingState(void*, bool)
; decoder-mode: arm
003c58a4  00 00 52 e3                                      cmp r2, #0
003c58a8  02 00 00 1a                                      bne #0x3c58b8
003c58ac  01 20 a0 e1                                      mov r2, r1
003c58b0  57 13 0c e3                                      movw r1, #0xc357
003c58b4  72 ff ff ea                                      b #0x3c5684
003c58b8  01 30 a0 e1                                      mov r3, r1
003c58bc  57 23 0c e3                                      movw r2, #0xc357
003c58c0  0f 10 a0 e3                                      mov r1, #0xf
003c58c4  1b f0 ff ea                                      b #0x3c1938

; FUNCTION 0x003c58c8, declared_size=488, range_size=488, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine15SM_SetDeadStateEbPvb
; demangled: CharStateMachine::SM_SetDeadState(bool, void*, bool)
; decoder-mode: arm
003c58c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003c58cc  00 40 a0 e1                                      mov r4, r0
003c58d0  04 d0 4d e2                                      sub sp, sp, #4
003c58d4  04 00 90 e5                                      ldr r0, [r0, #4]
003c58d8  01 50 a0 e1                                      mov r5, r1
003c58dc  02 90 a0 e1                                      mov sb, r2
003c58e0  03 70 a0 e1                                      mov r7, r3
003c58e4  4f 76 ff eb                                      bl #0x3a3228
003c58e8  90 61 9f e5                                      ldr r6, [pc, #0x190]
003c58ec  00 00 50 e3                                      cmp r0, #0
003c58f0  06 60 8f e0                                      add r6, pc, r6
003c58f4  37 00 00 ba                                      blt #0x3c59d8
003c58f8  84 31 9f e5                                      ldr r3, [pc, #0x184]
003c58fc  03 30 96 e7                                      ldr r3, [r6, r3]
003c5900  00 30 93 e5                                      ldr r3, [r3]
003c5904  03 00 50 e1                                      cmp r0, r3
003c5908  32 00 00 aa                                      bge #0x3c59d8
003c590c  74 31 9f e5                                      ldr r3, [pc, #0x174]
003c5910  3f 20 d4 e5                                      ldrb r2, [r4, #0x3f]
003c5914  a0 80 a0 e3                                      mov r8, #0xa0
003c5918  03 30 96 e7                                      ldr r3, [r6, r3]
003c591c  00 00 52 e3                                      cmp r2, #0
003c5920  00 30 93 e5                                      ldr r3, [r3]
003c5924  98 30 28 e0                                      mla r8, r8, r0, r3
003c5928  38 00 00 0a                                      beq #0x3c5a10
003c592c  58 a1 9f e5                                      ldr sl, [pc, #0x158]
003c5930  58 11 9f e5                                      ldr r1, [pc, #0x158]
003c5934  58 21 9f e5                                      ldr r2, [pc, #0x158]
003c5938  0a 30 96 e7                                      ldr r3, [r6, sl]
003c593c  01 10 8f e0                                      add r1, pc, r1
003c5940  02 20 8f e0                                      add r2, pc, r2
003c5944  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c5948  10 b0 98 e5                                      ldr fp, [r8, #0x10]
003c594c  a2 fc 03 eb                                      bl #0x4c4bdc
003c5950  02 08 10 e2                                      ands r0, r0, #0x20000
003c5954  38 00 00 1a                                      bne #0x3c5a3c
003c5958  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
003c595c  0b b0 80 e0                                      add fp, r0, fp
003c5960  28 b0 84 e5                                      str fp, [r4, #0x28]
003c5964  00 00 53 e3                                      cmp r3, #0
003c5968  1c 00 00 0a                                      beq #0x3c59e0
003c596c  0a 30 96 e7                                      ldr r3, [r6, sl]
003c5970  20 11 9f e5                                      ldr r1, [pc, #0x120]
003c5974  20 21 9f e5                                      ldr r2, [pc, #0x120]
003c5978  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c597c  01 10 8f e0                                      add r1, pc, r1
003c5980  02 20 8f e0                                      add r2, pc, r2
003c5984  18 80 98 e5                                      ldr r8, [r8, #0x18]
003c5988  93 fc 03 eb                                      bl #0x4c4bdc
003c598c  01 07 10 e2                                      ands r0, r0, #0x40000
003c5990  30 00 00 1a                                      bne #0x3c5a58
003c5994  08 60 80 e0                                      add r6, r0, r8
003c5998  00 a0 a0 e3                                      mov sl, #0
003c599c  38 60 84 e5                                      str r6, [r4, #0x38]
003c59a0  3e 50 c4 e5                                      strb r5, [r4, #0x3e]
003c59a4  3f a0 c4 e5                                      strb sl, [r4, #0x3f]
003c59a8  04 00 a0 e1                                      mov r0, r4
003c59ac  0e ea ff eb                                      bl #0x3c01ec
003c59b0  0a 00 50 e1                                      cmp r0, sl
003c59b4  20 a0 84 15                                      strne sl, [r4, #0x20]
003c59b8  00 00 57 e3                                      cmp r7, #0
003c59bc  28 00 00 1a                                      bne #0x3c5a64
003c59c0  04 00 a0 e1                                      mov r0, r4
003c59c4  09 20 a0 e1                                      mov r2, sb
003c59c8  58 13 0c e3                                      movw r1, #0xc358
003c59cc  04 d0 8d e2                                      add sp, sp, #4
003c59d0  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003c59d4  2a ff ff ea                                      b #0x3c5684
003c59d8  04 d0 8d e2                                      add sp, sp, #4
003c59dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003c59e0  0a 30 96 e7                                      ldr r3, [r6, sl]
003c59e4  b4 10 9f e5                                      ldr r1, [pc, #0xb4]
003c59e8  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
003c59ec  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c59f0  01 10 8f e0                                      add r1, pc, r1
003c59f4  02 20 8f e0                                      add r2, pc, r2
003c59f8  14 60 98 e5                                      ldr r6, [r8, #0x14]
003c59fc  76 fc 03 eb                                      bl #0x4c4bdc
003c5a00  01 08 10 e2                                      ands r0, r0, #0x10000
003c5a04  0f 00 00 1a                                      bne #0x3c5a48
003c5a08  06 60 80 e0                                      add r6, r0, r6
003c5a0c  e1 ff ff ea                                      b #0x3c5998
003c5a10  74 a0 9f e5                                      ldr sl, [pc, #0x74]
003c5a14  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
003c5a18  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
003c5a1c  0a 30 96 e7                                      ldr r3, [r6, sl]
003c5a20  01 10 8f e0                                      add r1, pc, r1
003c5a24  02 20 8f e0                                      add r2, pc, r2
003c5a28  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c5a2c  1c b0 98 e5                                      ldr fp, [r8, #0x1c]
003c5a30  69 fc 03 eb                                      bl #0x4c4bdc
003c5a34  02 09 10 e2                                      ands r0, r0, #0x8000
003c5a38  c6 ff ff 0a                                      beq #0x3c5958
003c5a3c  04 00 94 e5                                      ldr r0, [r4, #4]
003c5a40  66 7e ff eb                                      bl #0x3a53e0
003c5a44  c3 ff ff ea                                      b #0x3c5958
003c5a48  04 00 94 e5                                      ldr r0, [r4, #4]
003c5a4c  63 7e ff eb                                      bl #0x3a53e0
003c5a50  06 60 80 e0                                      add r6, r0, r6
003c5a54  cf ff ff ea                                      b #0x3c5998
003c5a58  04 00 94 e5                                      ldr r0, [r4, #4]
003c5a5c  5f 7e ff eb                                      bl #0x3a53e0
003c5a60  cb ff ff ea                                      b #0x3c5994
003c5a64  04 00 a0 e1                                      mov r0, r4
003c5a68  09 30 a0 e1                                      mov r3, sb
003c5a6c  0c 10 a0 e3                                      mov r1, #0xc
003c5a70  58 23 0c e3                                      movw r2, #0xc358
003c5a74  04 d0 8d e2                                      add sp, sp, #4
003c5a78  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003c5a7c  ad ef ff ea                                      b #0x3c1938
; mapping-symbol data/literal pool
003c5a80  a0 f1 5c 00 c0 28 00 00 44 48 00 00 f4 37 00 00  .byte 0xa0, 0xf1, 0x5c, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003c5a90  7c f2 4f 00 88 f2 4f 00 3c f2 4f 00 48 f2 4f 00  .byte 0x7c, 0xf2, 0x4f, 0x00, 0x88, 0xf2, 0x4f, 0x00, 0x3c, 0xf2, 0x4f, 0x00, 0x48, 0xf2, 0x4f, 0x00
003c5aa0  c8 f1 4f 00 d4 f1 4f 00 98 f1 4f 00 a4 f1 4f 00  .byte 0xc8, 0xf1, 0x4f, 0x00, 0xd4, 0xf1, 0x4f, 0x00, 0x98, 0xf1, 0x4f, 0x00, 0xa4, 0xf1, 0x4f, 0x00

; FUNCTION 0x003c5b3c, declared_size=292, range_size=292, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine18SM_SetDodgingStateEPvb
; demangled: CharStateMachine::SM_SetDodgingState(void*, bool)
; decoder-mode: arm
003c5b3c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c5b40  04 50 90 e5                                      ldr r5, [r0, #4]
003c5b44  fc 64 01 e3                                      movw r6, #0x14fc
003c5b48  00 40 a0 e1                                      mov r4, r0
003c5b4c  01 80 a0 e1                                      mov r8, r1
003c5b50  06 00 95 e7                                      ldr r0, [r5, r6]
003c5b54  00 10 a0 e3                                      mov r1, #0
003c5b58  02 70 a0 e1                                      mov r7, r2
003c5b5c  e5 21 fd eb                                      bl #0x30e2f8
003c5b60  e0 a0 9f e5                                      ldr sl, [pc, #0xe0]
003c5b64  00 00 50 e3                                      cmp r0, #0
003c5b68  0a a0 8f e0                                      add sl, pc, sl
003c5b6c  00 00 00 0a                                      beq #0x3c5b74
003c5b70  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c5b74  00 30 95 e5                                      ldr r3, [r5]
003c5b78  05 00 a0 e1                                      mov r0, r5
003c5b7c  0f e0 a0 e1                                      mov lr, pc
003c5b80  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c5b84  04 30 94 e5                                      ldr r3, [r4, #4]
003c5b88  45 24 a0 e3                                      mov r2, #0x45000000
003c5b8c  ee 29 82 e2                                      add r2, r2, #0x3b8000
003c5b90  06 20 83 e7                                      str r2, [r3, r6]
003c5b94  04 00 94 e5                                      ldr r0, [r4, #4]
003c5b98  a2 75 ff eb                                      bl #0x3a3228
003c5b9c  00 00 50 e3                                      cmp r0, #0
003c5ba0  f2 ff ff ba                                      blt #0x3c5b70
003c5ba4  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
003c5ba8  03 30 9a e7                                      ldr r3, [sl, r3]
003c5bac  00 30 93 e5                                      ldr r3, [r3]
003c5bb0  03 00 50 e1                                      cmp r0, r3
003c5bb4  ed ff ff aa                                      bge #0x3c5b70
003c5bb8  90 30 9f e5                                      ldr r3, [pc, #0x90]
003c5bbc  a0 20 a0 e3                                      mov r2, #0xa0
003c5bc0  03 30 9a e7                                      ldr r3, [sl, r3]
003c5bc4  00 30 93 e5                                      ldr r3, [r3]
003c5bc8  92 30 20 e0                                      mla r0, r2, r0, r3
003c5bcc  20 50 90 e5                                      ldr r5, [r0, #0x20]
003c5bd0  01 00 75 e3                                      cmn r5, #1
003c5bd4  e5 ff ff 0a                                      beq #0x3c5b70
003c5bd8  74 30 9f e5                                      ldr r3, [pc, #0x74]
003c5bdc  74 10 9f e5                                      ldr r1, [pc, #0x74]
003c5be0  74 20 9f e5                                      ldr r2, [pc, #0x74]
003c5be4  03 30 9a e7                                      ldr r3, [sl, r3]
003c5be8  01 10 8f e0                                      add r1, pc, r1
003c5bec  02 20 8f e0                                      add r2, pc, r2
003c5bf0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c5bf4  f8 fb 03 eb                                      bl #0x4c4bdc
003c5bf8  01 09 10 e2                                      ands r0, r0, #0x4000
003c5bfc  0e 00 00 1a                                      bne #0x3c5c3c
003c5c00  05 50 80 e0                                      add r5, r0, r5
003c5c04  00 00 57 e3                                      cmp r7, #0
003c5c08  28 50 84 e5                                      str r5, [r4, #0x28]
003c5c0c  04 00 00 1a                                      bne #0x3c5c24
003c5c10  04 00 a0 e1                                      mov r0, r4
003c5c14  08 20 a0 e1                                      mov r2, r8
003c5c18  5a 13 0c e3                                      movw r1, #0xc35a
003c5c1c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c5c20  97 fe ff ea                                      b #0x3c5684
003c5c24  04 00 a0 e1                                      mov r0, r4
003c5c28  08 30 a0 e1                                      mov r3, r8
003c5c2c  0b 10 a0 e3                                      mov r1, #0xb
003c5c30  5a 23 0c e3                                      movw r2, #0xc35a
003c5c34  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c5c38  3e ef ff ea                                      b #0x3c1938
003c5c3c  04 00 94 e5                                      ldr r0, [r4, #4]
003c5c40  e6 7d ff eb                                      bl #0x3a53e0
003c5c44  ed ff ff ea                                      b #0x3c5c00
; mapping-symbol data/literal pool
003c5c48  28 ef 5c 00 c0 28 00 00 44 48 00 00 f4 37 00 00  .byte 0x28, 0xef, 0x5c, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003c5c58  d0 ef 4f 00 dc ef 4f 00                          .byte 0xd0, 0xef, 0x4f, 0x00, 0xdc, 0xef, 0x4f, 0x00

; FUNCTION 0x003c5c60, declared_size=292, range_size=292, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine19SM_SetBlockingStateEPvb
; demangled: CharStateMachine::SM_SetBlockingState(void*, bool)
; decoder-mode: arm
003c5c60  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c5c64  04 50 90 e5                                      ldr r5, [r0, #4]
003c5c68  fc 64 01 e3                                      movw r6, #0x14fc
003c5c6c  00 40 a0 e1                                      mov r4, r0
003c5c70  01 80 a0 e1                                      mov r8, r1
003c5c74  06 00 95 e7                                      ldr r0, [r5, r6]
003c5c78  00 10 a0 e3                                      mov r1, #0
003c5c7c  02 70 a0 e1                                      mov r7, r2
003c5c80  9c 21 fd eb                                      bl #0x30e2f8
003c5c84  e0 a0 9f e5                                      ldr sl, [pc, #0xe0]
003c5c88  00 00 50 e3                                      cmp r0, #0
003c5c8c  0a a0 8f e0                                      add sl, pc, sl
003c5c90  00 00 00 0a                                      beq #0x3c5c98
003c5c94  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c5c98  00 30 95 e5                                      ldr r3, [r5]
003c5c9c  05 00 a0 e1                                      mov r0, r5
003c5ca0  0f e0 a0 e1                                      mov lr, pc
003c5ca4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c5ca8  04 30 94 e5                                      ldr r3, [r4, #4]
003c5cac  45 24 a0 e3                                      mov r2, #0x45000000
003c5cb0  ee 29 82 e2                                      add r2, r2, #0x3b8000
003c5cb4  06 20 83 e7                                      str r2, [r3, r6]
003c5cb8  04 00 94 e5                                      ldr r0, [r4, #4]
003c5cbc  59 75 ff eb                                      bl #0x3a3228
003c5cc0  00 00 50 e3                                      cmp r0, #0
003c5cc4  f2 ff ff ba                                      blt #0x3c5c94
003c5cc8  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
003c5ccc  03 30 9a e7                                      ldr r3, [sl, r3]
003c5cd0  00 30 93 e5                                      ldr r3, [r3]
003c5cd4  03 00 50 e1                                      cmp r0, r3
003c5cd8  ed ff ff aa                                      bge #0x3c5c94
003c5cdc  90 30 9f e5                                      ldr r3, [pc, #0x90]
003c5ce0  a0 20 a0 e3                                      mov r2, #0xa0
003c5ce4  03 30 9a e7                                      ldr r3, [sl, r3]
003c5ce8  00 30 93 e5                                      ldr r3, [r3]
003c5cec  92 30 20 e0                                      mla r0, r2, r0, r3
003c5cf0  0c 50 90 e5                                      ldr r5, [r0, #0xc]
003c5cf4  01 00 75 e3                                      cmn r5, #1
003c5cf8  e5 ff ff 0a                                      beq #0x3c5c94
003c5cfc  74 30 9f e5                                      ldr r3, [pc, #0x74]
003c5d00  74 10 9f e5                                      ldr r1, [pc, #0x74]
003c5d04  74 20 9f e5                                      ldr r2, [pc, #0x74]
003c5d08  03 30 9a e7                                      ldr r3, [sl, r3]
003c5d0c  01 10 8f e0                                      add r1, pc, r1
003c5d10  02 20 8f e0                                      add r2, pc, r2
003c5d14  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c5d18  af fb 03 eb                                      bl #0x4c4bdc
003c5d1c  02 0a 10 e2                                      ands r0, r0, #0x2000
003c5d20  0e 00 00 1a                                      bne #0x3c5d60
003c5d24  05 50 80 e0                                      add r5, r0, r5
003c5d28  00 00 57 e3                                      cmp r7, #0
003c5d2c  28 50 84 e5                                      str r5, [r4, #0x28]
003c5d30  04 00 00 1a                                      bne #0x3c5d48
003c5d34  04 00 a0 e1                                      mov r0, r4
003c5d38  08 20 a0 e1                                      mov r2, r8
003c5d3c  5a 13 0c e3                                      movw r1, #0xc35a
003c5d40  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c5d44  4e fe ff ea                                      b #0x3c5684
003c5d48  04 00 a0 e1                                      mov r0, r4
003c5d4c  08 30 a0 e1                                      mov r3, r8
003c5d50  0b 10 a0 e3                                      mov r1, #0xb
003c5d54  5a 23 0c e3                                      movw r2, #0xc35a
003c5d58  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c5d5c  f5 ee ff ea                                      b #0x3c1938
003c5d60  04 00 94 e5                                      ldr r0, [r4, #4]
003c5d64  9d 7d ff eb                                      bl #0x3a53e0
003c5d68  ed ff ff ea                                      b #0x3c5d24
; mapping-symbol data/literal pool
003c5d6c  04 ee 5c 00 c0 28 00 00 44 48 00 00 f4 37 00 00  .byte 0x04, 0xee, 0x5c, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003c5d7c  ac ee 4f 00 b8 ee 4f 00                          .byte 0xac, 0xee, 0x4f, 0x00, 0xb8, 0xee, 0x4f, 0x00

; FUNCTION 0x003c5d84, declared_size=284, range_size=284, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine17SM_SetInjureStateEPvb
; demangled: CharStateMachine::SM_SetInjureState(void*, bool)
; decoder-mode: arm
003c5d84  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c5d88  04 50 90 e5                                      ldr r5, [r0, #4]
003c5d8c  fc 64 01 e3                                      movw r6, #0x14fc
003c5d90  00 40 a0 e1                                      mov r4, r0
003c5d94  01 70 a0 e1                                      mov r7, r1
003c5d98  06 00 95 e7                                      ldr r0, [r5, r6]
003c5d9c  00 10 a0 e3                                      mov r1, #0
003c5da0  02 80 a0 e1                                      mov r8, r2
003c5da4  53 21 fd eb                                      bl #0x30e2f8
003c5da8  d8 a0 9f e5                                      ldr sl, [pc, #0xd8]
003c5dac  00 00 50 e3                                      cmp r0, #0
003c5db0  0a a0 8f e0                                      add sl, pc, sl
003c5db4  00 00 00 0a                                      beq #0x3c5dbc
003c5db8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c5dbc  00 30 95 e5                                      ldr r3, [r5]
003c5dc0  05 00 a0 e1                                      mov r0, r5
003c5dc4  0f e0 a0 e1                                      mov lr, pc
003c5dc8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c5dcc  04 30 94 e5                                      ldr r3, [r4, #4]
003c5dd0  45 24 a0 e3                                      mov r2, #0x45000000
003c5dd4  ee 29 82 e2                                      add r2, r2, #0x3b8000
003c5dd8  06 20 83 e7                                      str r2, [r3, r6]
003c5ddc  04 00 94 e5                                      ldr r0, [r4, #4]
003c5de0  10 75 ff eb                                      bl #0x3a3228
003c5de4  00 20 50 e2                                      subs r2, r0, #0
003c5de8  f2 ff ff ba                                      blt #0x3c5db8
003c5dec  98 30 9f e5                                      ldr r3, [pc, #0x98]
003c5df0  03 30 9a e7                                      ldr r3, [sl, r3]
003c5df4  00 30 93 e5                                      ldr r3, [r3]
003c5df8  03 00 52 e1                                      cmp r2, r3
003c5dfc  ed ff ff aa                                      bge #0x3c5db8
003c5e00  88 30 9f e5                                      ldr r3, [pc, #0x88]
003c5e04  88 10 9f e5                                      ldr r1, [pc, #0x88]
003c5e08  03 30 9a e7                                      ldr r3, [sl, r3]
003c5e0c  01 10 9a e7                                      ldr r1, [sl, r1]
003c5e10  00 30 93 e5                                      ldr r3, [r3]
003c5e14  2c 00 91 e5                                      ldr r0, [r1, #0x2c]
003c5e18  a0 10 a0 e3                                      mov r1, #0xa0
003c5e1c  91 32 23 e0                                      mla r3, r1, r2, r3
003c5e20  70 10 9f e5                                      ldr r1, [pc, #0x70]
003c5e24  70 20 9f e5                                      ldr r2, [pc, #0x70]
003c5e28  3c 50 93 e5                                      ldr r5, [r3, #0x3c]
003c5e2c  01 10 8f e0                                      add r1, pc, r1
003c5e30  02 20 8f e0                                      add r2, pc, r2
003c5e34  68 fb 03 eb                                      bl #0x4c4bdc
003c5e38  01 0a 10 e2                                      ands r0, r0, #0x1000
003c5e3c  0e 00 00 1a                                      bne #0x3c5e7c
003c5e40  05 50 80 e0                                      add r5, r0, r5
003c5e44  00 00 58 e3                                      cmp r8, #0
003c5e48  28 50 84 e5                                      str r5, [r4, #0x28]
003c5e4c  04 00 00 1a                                      bne #0x3c5e64
003c5e50  04 00 a0 e1                                      mov r0, r4
003c5e54  07 20 a0 e1                                      mov r2, r7
003c5e58  5a 13 0c e3                                      movw r1, #0xc35a
003c5e5c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c5e60  07 fe ff ea                                      b #0x3c5684
003c5e64  04 00 a0 e1                                      mov r0, r4
003c5e68  07 30 a0 e1                                      mov r3, r7
003c5e6c  0b 10 a0 e3                                      mov r1, #0xb
003c5e70  5a 23 0c e3                                      movw r2, #0xc35a
003c5e74  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c5e78  ae ee ff ea                                      b #0x3c1938
003c5e7c  04 00 94 e5                                      ldr r0, [r4, #4]
003c5e80  56 7d ff eb                                      bl #0x3a53e0
003c5e84  ed ff ff ea                                      b #0x3c5e40
; mapping-symbol data/literal pool
003c5e88  e0 ec 5c 00 c0 28 00 00 44 48 00 00 f4 37 00 00  .byte 0xe0, 0xec, 0x5c, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003c5e98  8c ed 4f 00 98 ed 4f 00                          .byte 0x8c, 0xed, 0x4f, 0x00, 0x98, 0xed, 0x4f, 0x00

; FUNCTION 0x003c5ea0, declared_size=348, range_size=348, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine20SM_SetKnockBackStateEbPvb
; demangled: CharStateMachine::SM_SetKnockBackState(bool, void*, bool)
; decoder-mode: arm
003c5ea0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c5ea4  00 40 a0 e1                                      mov r4, r0
003c5ea8  04 00 90 e5                                      ldr r0, [r0, #4]
003c5eac  01 70 a0 e1                                      mov r7, r1
003c5eb0  02 50 a0 e1                                      mov r5, r2
003c5eb4  03 60 a0 e1                                      mov r6, r3
003c5eb8  a6 74 ff eb                                      bl #0x3a3158
003c5ebc  18 81 9f e5                                      ldr r8, [pc, #0x118]
003c5ec0  00 00 50 e3                                      cmp r0, #0
003c5ec4  08 80 8f e0                                      add r8, pc, r8
003c5ec8  00 00 00 0a                                      beq #0x3c5ed0
003c5ecc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c5ed0  04 00 94 e5                                      ldr r0, [r4, #4]
003c5ed4  d3 74 ff eb                                      bl #0x3a3228
003c5ed8  00 00 50 e3                                      cmp r0, #0
003c5edc  fa ff ff ba                                      blt #0x3c5ecc
003c5ee0  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
003c5ee4  03 30 98 e7                                      ldr r3, [r8, r3]
003c5ee8  00 30 93 e5                                      ldr r3, [r3]
003c5eec  03 00 50 e1                                      cmp r0, r3
003c5ef0  f5 ff ff aa                                      bge #0x3c5ecc
003c5ef4  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
003c5ef8  a0 20 a0 e3                                      mov r2, #0xa0
003c5efc  00 00 57 e3                                      cmp r7, #0
003c5f00  03 30 98 e7                                      ldr r3, [r8, r3]
003c5f04  00 30 93 e5                                      ldr r3, [r3]
003c5f08  92 30 23 e0                                      mla r3, r2, r0, r3
003c5f0c  15 00 00 0a                                      beq #0x3c5f68
003c5f10  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
003c5f14  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
003c5f18  24 70 93 e5                                      ldr r7, [r3, #0x24]
003c5f1c  02 00 98 e7                                      ldr r0, [r8, r2]
003c5f20  c8 20 9f e5                                      ldr r2, [pc, #0xc8]
003c5f24  01 10 8f e0                                      add r1, pc, r1
003c5f28  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
003c5f2c  02 20 8f e0                                      add r2, pc, r2
003c5f30  29 fb 03 eb                                      bl #0x4c4bdc
003c5f34  02 0b 10 e2                                      ands r0, r0, #0x800
003c5f38  21 00 00 1a                                      bne #0x3c5fc4
003c5f3c  07 70 80 e0                                      add r7, r0, r7
003c5f40  18 30 a0 e3                                      mov r3, #0x18
003c5f44  28 70 84 e5                                      str r7, [r4, #0x28]
003c5f48  2c 30 84 e5                                      str r3, [r4, #0x2c]
003c5f4c  00 00 56 e3                                      cmp r6, #0
003c5f50  15 00 00 1a                                      bne #0x3c5fac
003c5f54  04 00 a0 e1                                      mov r0, r4
003c5f58  05 20 a0 e1                                      mov r2, r5
003c5f5c  5b 13 0c e3                                      movw r1, #0xc35b
003c5f60  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003c5f64  c6 fd ff ea                                      b #0x3c5684
003c5f68  78 20 9f e5                                      ldr r2, [pc, #0x78]
003c5f6c  80 10 9f e5                                      ldr r1, [pc, #0x80]
003c5f70  48 70 93 e5                                      ldr r7, [r3, #0x48]
003c5f74  02 00 98 e7                                      ldr r0, [r8, r2]
003c5f78  78 20 9f e5                                      ldr r2, [pc, #0x78]
003c5f7c  01 10 8f e0                                      add r1, pc, r1
003c5f80  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
003c5f84  02 20 8f e0                                      add r2, pc, r2
003c5f88  13 fb 03 eb                                      bl #0x4c4bdc
003c5f8c  01 0b 10 e2                                      ands r0, r0, #0x400
003c5f90  0e 00 00 1a                                      bne #0x3c5fd0
003c5f94  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
003c5f98  07 70 80 e0                                      add r7, r0, r7
003c5f9c  28 70 84 e5                                      str r7, [r4, #0x28]
003c5fa0  18 30 c3 e3                                      bic r3, r3, #0x18
003c5fa4  2c 30 84 e5                                      str r3, [r4, #0x2c]
003c5fa8  e7 ff ff ea                                      b #0x3c5f4c
003c5fac  04 00 a0 e1                                      mov r0, r4
003c5fb0  05 30 a0 e1                                      mov r3, r5
003c5fb4  0a 10 a0 e3                                      mov r1, #0xa
003c5fb8  5b 23 0c e3                                      movw r2, #0xc35b
003c5fbc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003c5fc0  5c ee ff ea                                      b #0x3c1938
003c5fc4  04 00 94 e5                                      ldr r0, [r4, #4]
003c5fc8  04 7d ff eb                                      bl #0x3a53e0
003c5fcc  da ff ff ea                                      b #0x3c5f3c
003c5fd0  04 00 94 e5                                      ldr r0, [r4, #4]
003c5fd4  01 7d ff eb                                      bl #0x3a53e0
003c5fd8  ed ff ff ea                                      b #0x3c5f94
; mapping-symbol data/literal pool
003c5fdc  cc eb 5c 00 c0 28 00 00 44 48 00 00 f4 37 00 00  .byte 0xcc, 0xeb, 0x5c, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003c5fec  94 ec 4f 00 9c ec 4f 00 3c ec 4f 00 44 ec 4f 00  .byte 0x94, 0xec, 0x4f, 0x00, 0x9c, 0xec, 0x4f, 0x00, 0x3c, 0xec, 0x4f, 0x00, 0x44, 0xec, 0x4f, 0x00

; FUNCTION 0x003c5ffc, declared_size=328, range_size=328, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine15SM_SetStunStateEjbPvb
; demangled: CharStateMachine::SM_SetStunState(unsigned int, bool, void*, bool)
; decoder-mode: arm
003c5ffc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c6000  00 50 a0 e1                                      mov r5, r0
003c6004  08 d0 4d e2                                      sub sp, sp, #8
003c6008  04 00 90 e5                                      ldr r0, [r0, #4]
003c600c  01 a0 a0 e1                                      mov sl, r1
003c6010  02 80 a0 e1                                      mov r8, r2
003c6014  03 60 a0 e1                                      mov r6, r3
003c6018  28 70 dd e5                                      ldrb r7, [sp, #0x28]
003c601c  4d 74 ff eb                                      bl #0x3a3158
003c6020  04 41 9f e5                                      ldr r4, [pc, #0x104]
003c6024  00 00 50 e3                                      cmp r0, #0
003c6028  04 40 8f e0                                      add r4, pc, r4
003c602c  01 00 00 0a                                      beq #0x3c6038
003c6030  08 d0 8d e2                                      add sp, sp, #8
003c6034  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c6038  04 00 95 e5                                      ldr r0, [r5, #4]
003c603c  79 74 ff eb                                      bl #0x3a3228
003c6040  00 90 50 e2                                      subs sb, r0, #0
003c6044  f9 ff ff ba                                      blt #0x3c6030
003c6048  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
003c604c  03 30 94 e7                                      ldr r3, [r4, r3]
003c6050  00 30 93 e5                                      ldr r3, [r3]
003c6054  03 00 59 e1                                      cmp sb, r3
003c6058  f4 ff ff aa                                      bge #0x3c6030
003c605c  2c c0 95 e5                                      ldr ip, [r5, #0x2c]
003c6060  02 c0 1c e2                                      ands ip, ip, #2
003c6064  25 00 00 0a                                      beq #0x3c6100
003c6068  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003c606c  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
003c6070  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
003c6074  03 30 94 e7                                      ldr r3, [r4, r3]
003c6078  02 20 94 e7                                      ldr r2, [r4, r2]
003c607c  01 10 8f e0                                      add r1, pc, r1
003c6080  00 30 93 e5                                      ldr r3, [r3]
003c6084  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c6088  a0 20 a0 e3                                      mov r2, #0xa0
003c608c  92 39 29 e0                                      mla sb, r2, sb, r3
003c6090  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
003c6094  8c 40 99 e5                                      ldr r4, [sb, #0x8c]
003c6098  02 20 8f e0                                      add r2, pc, r2
003c609c  ce fa 03 eb                                      bl #0x4c4bdc
003c60a0  02 0c 10 e2                                      ands r0, r0, #0x200
003c60a4  12 00 00 1a                                      bne #0x3c60f4
003c60a8  04 40 80 e0                                      add r4, r0, r4
003c60ac  00 00 57 e3                                      cmp r7, #0
003c60b0  28 40 85 e5                                      str r4, [r5, #0x28]
003c60b4  09 00 00 0a                                      beq #0x3c60e0
003c60b8  06 30 a0 e1                                      mov r3, r6
003c60bc  05 00 a0 e1                                      mov r0, r5
003c60c0  09 10 a0 e3                                      mov r1, #9
003c60c4  5c 23 0c e3                                      movw r2, #0xc35c
003c60c8  1a ee ff eb                                      bl #0x3c1938
003c60cc  00 00 58 e3                                      cmp r8, #0
003c60d0  24 30 95 15                                      ldrne r3, [r5, #0x24]
003c60d4  02 3b 83 13                                      orrne r3, r3, #0x800
003c60d8  24 30 85 15                                      strne r3, [r5, #0x24]
003c60dc  d3 ff ff ea                                      b #0x3c6030
003c60e0  06 20 a0 e1                                      mov r2, r6
003c60e4  05 00 a0 e1                                      mov r0, r5
003c60e8  5c 13 0c e3                                      movw r1, #0xc35c
003c60ec  64 fd ff eb                                      bl #0x3c5684
003c60f0  f5 ff ff ea                                      b #0x3c60cc
003c60f4  04 00 95 e5                                      ldr r0, [r5, #4]
003c60f8  b8 7c ff eb                                      bl #0x3a53e0
003c60fc  e9 ff ff ea                                      b #0x3c60a8
003c6100  04 00 95 e5                                      ldr r0, [r5, #4]
003c6104  2b 30 a0 e3                                      mov r3, #0x2b
003c6108  0a 10 a0 e1                                      mov r1, sl
003c610c  0c 20 a0 e1                                      mov r2, ip
003c6110  ed 0f 80 e2                                      add r0, r0, #0x3b4
003c6114  00 c0 8d e5                                      str ip, [sp]
003c6118  41 57 00 eb                                      bl #0x3dbe24
003c611c  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
003c6120  02 30 83 e3                                      orr r3, r3, #2
003c6124  2c 30 85 e5                                      str r3, [r5, #0x2c]
003c6128  ce ff ff ea                                      b #0x3c6068
; mapping-symbol data/literal pool
003c612c  68 ea 5c 00 c0 28 00 00 44 48 00 00 f4 37 00 00  .byte 0x68, 0xea, 0x5c, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003c613c  3c eb 4f 00 30 eb 4f 00                          .byte 0x3c, 0xeb, 0x4f, 0x00, 0x30, 0xeb, 0x4f, 0x00

; FUNCTION 0x003c6144, declared_size=328, range_size=328, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine16SM_SetScareStateEjbPvb
; demangled: CharStateMachine::SM_SetScareState(unsigned int, bool, void*, bool)
; decoder-mode: arm
003c6144  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c6148  00 50 a0 e1                                      mov r5, r0
003c614c  08 d0 4d e2                                      sub sp, sp, #8
003c6150  04 00 90 e5                                      ldr r0, [r0, #4]
003c6154  01 a0 a0 e1                                      mov sl, r1
003c6158  02 80 a0 e1                                      mov r8, r2
003c615c  03 60 a0 e1                                      mov r6, r3
003c6160  28 70 dd e5                                      ldrb r7, [sp, #0x28]
003c6164  fb 73 ff eb                                      bl #0x3a3158
003c6168  04 41 9f e5                                      ldr r4, [pc, #0x104]
003c616c  00 00 50 e3                                      cmp r0, #0
003c6170  04 40 8f e0                                      add r4, pc, r4
003c6174  01 00 00 0a                                      beq #0x3c6180
003c6178  08 d0 8d e2                                      add sp, sp, #8
003c617c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c6180  04 00 95 e5                                      ldr r0, [r5, #4]
003c6184  27 74 ff eb                                      bl #0x3a3228
003c6188  00 90 50 e2                                      subs sb, r0, #0
003c618c  f9 ff ff ba                                      blt #0x3c6178
003c6190  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
003c6194  03 30 94 e7                                      ldr r3, [r4, r3]
003c6198  00 30 93 e5                                      ldr r3, [r3]
003c619c  03 00 59 e1                                      cmp sb, r3
003c61a0  f4 ff ff aa                                      bge #0x3c6178
003c61a4  2c c0 95 e5                                      ldr ip, [r5, #0x2c]
003c61a8  04 c0 1c e2                                      ands ip, ip, #4
003c61ac  25 00 00 0a                                      beq #0x3c6248
003c61b0  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003c61b4  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
003c61b8  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
003c61bc  03 30 94 e7                                      ldr r3, [r4, r3]
003c61c0  02 20 94 e7                                      ldr r2, [r4, r2]
003c61c4  01 10 8f e0                                      add r1, pc, r1
003c61c8  00 30 93 e5                                      ldr r3, [r3]
003c61cc  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c61d0  a0 20 a0 e3                                      mov r2, #0xa0
003c61d4  92 39 29 e0                                      mla sb, r2, sb, r3
003c61d8  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
003c61dc  7c 40 99 e5                                      ldr r4, [sb, #0x7c]
003c61e0  02 20 8f e0                                      add r2, pc, r2
003c61e4  7c fa 03 eb                                      bl #0x4c4bdc
003c61e8  01 0c 10 e2                                      ands r0, r0, #0x100
003c61ec  12 00 00 1a                                      bne #0x3c623c
003c61f0  04 40 80 e0                                      add r4, r0, r4
003c61f4  00 00 57 e3                                      cmp r7, #0
003c61f8  28 40 85 e5                                      str r4, [r5, #0x28]
003c61fc  09 00 00 0a                                      beq #0x3c6228
003c6200  06 30 a0 e1                                      mov r3, r6
003c6204  05 00 a0 e1                                      mov r0, r5
003c6208  08 10 a0 e3                                      mov r1, #8
003c620c  5d 23 0c e3                                      movw r2, #0xc35d
003c6210  c8 ed ff eb                                      bl #0x3c1938
003c6214  00 00 58 e3                                      cmp r8, #0
003c6218  24 30 95 15                                      ldrne r3, [r5, #0x24]
003c621c  01 3b 83 13                                      orrne r3, r3, #0x400
003c6220  24 30 85 15                                      strne r3, [r5, #0x24]
003c6224  d3 ff ff ea                                      b #0x3c6178
003c6228  06 20 a0 e1                                      mov r2, r6
003c622c  05 00 a0 e1                                      mov r0, r5
003c6230  5d 13 0c e3                                      movw r1, #0xc35d
003c6234  12 fd ff eb                                      bl #0x3c5684
003c6238  f5 ff ff ea                                      b #0x3c6214
003c623c  04 00 95 e5                                      ldr r0, [r5, #4]
003c6240  66 7c ff eb                                      bl #0x3a53e0
003c6244  e9 ff ff ea                                      b #0x3c61f0
003c6248  04 00 95 e5                                      ldr r0, [r5, #4]
003c624c  2c 30 a0 e3                                      mov r3, #0x2c
003c6250  0a 10 a0 e1                                      mov r1, sl
003c6254  0c 20 a0 e1                                      mov r2, ip
003c6258  ed 0f 80 e2                                      add r0, r0, #0x3b4
003c625c  00 c0 8d e5                                      str ip, [sp]
003c6260  ef 56 00 eb                                      bl #0x3dbe24
003c6264  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
003c6268  04 30 83 e3                                      orr r3, r3, #4
003c626c  2c 30 85 e5                                      str r3, [r5, #0x2c]
003c6270  ce ff ff ea                                      b #0x3c61b0
; mapping-symbol data/literal pool
003c6274  20 e9 5c 00 c0 28 00 00 44 48 00 00 f4 37 00 00  .byte 0x20, 0xe9, 0x5c, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003c6284  f4 e9 4f 00 e8 e9 4f 00                          .byte 0xf4, 0xe9, 0x4f, 0x00, 0xe8, 0xe9, 0x4f, 0x00

; FUNCTION 0x003c628c, declared_size=264, range_size=264, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine6UpdateEv
; demangled: CharStateMachine::Update()
; decoder-mode: arm
003c628c  70 40 2d e9                                      push {r4, r5, r6, lr}
003c6290  00 40 a0 e1                                      mov r4, r0
003c6294  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
003c6298  08 d0 4d e2                                      sub sp, sp, #8
003c629c  e4 50 9f e5                                      ldr r5, [pc, #0xe4]
003c62a0  00 00 8f e0                                      add r0, pc, r0
003c62a4  02 35 fd eb                                      bl #0x3136b4
003c62a8  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
003c62ac  05 50 8f e0                                      add r5, pc, r5
003c62b0  60 60 94 e5                                      ldr r6, [r4, #0x60]
003c62b4  03 00 95 e7                                      ldr r0, [r5, r3]
003c62b8  eb 64 fd eb                                      bl #0x31f66c
003c62bc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
003c62c0  06 00 80 e0                                      add r0, r0, r6
003c62c4  60 00 84 e5                                      str r0, [r4, #0x60]
003c62c8  02 00 13 e3                                      tst r3, #2
003c62cc  10 00 00 1a                                      bne #0x3c6314
003c62d0  04 00 13 e3                                      tst r3, #4
003c62d4  1d 00 00 1a                                      bne #0x3c6350
003c62d8  20 30 94 e5                                      ldr r3, [r4, #0x20]
003c62dc  00 00 53 e3                                      cmp r3, #0
003c62e0  06 00 00 0a                                      beq #0x3c6300
003c62e4  06 00 93 e8                                      ldm r3, {r1, r2}
003c62e8  04 30 a0 e1                                      mov r3, r4
003c62ec  02 00 a0 e1                                      mov r0, r2
003c62f0  00 c0 92 e5                                      ldr ip, [r2]
003c62f4  04 20 94 e5                                      ldr r2, [r4, #4]
003c62f8  0f e0 a0 e1                                      mov lr, pc
003c62fc  14 f0 9c e5                                      ldr pc, [ip, #0x14]
003c6300  88 00 9f e5                                      ldr r0, [pc, #0x88]
003c6304  00 00 8f e0                                      add r0, pc, r0
003c6308  08 d0 8d e2                                      add sp, sp, #8
003c630c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003c6310  e8 34 fd ea                                      b #0x3136b8
003c6314  04 00 a0 e1                                      mov r0, r4
003c6318  00 10 a0 e3                                      mov r1, #0
003c631c  15 e8 ff eb                                      bl #0x3c0378
003c6320  00 c0 50 e2                                      subs ip, r0, #0
003c6324  06 00 00 1a                                      bne #0x3c6344
003c6328  24 20 94 e5                                      ldr r2, [r4, #0x24]
003c632c  0c 30 a0 e1                                      mov r3, ip
003c6330  04 00 a0 e1                                      mov r0, r4
003c6334  d2 25 e0 e7                                      ubfx r2, r2, #0xb, #1
003c6338  00 10 e0 e3                                      mvn r1, #0
003c633c  00 c0 8d e5                                      str ip, [sp]
003c6340  2d ff ff eb                                      bl #0x3c5ffc
003c6344  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
003c6348  04 00 13 e3                                      tst r3, #4
003c634c  e1 ff ff 0a                                      beq #0x3c62d8
003c6350  04 00 a0 e1                                      mov r0, r4
003c6354  00 10 a0 e3                                      mov r1, #0
003c6358  fb e7 ff eb                                      bl #0x3c034c
003c635c  00 c0 50 e2                                      subs ip, r0, #0
003c6360  dc ff ff 1a                                      bne #0x3c62d8
003c6364  24 20 94 e5                                      ldr r2, [r4, #0x24]
003c6368  0c 30 a0 e1                                      mov r3, ip
003c636c  04 00 a0 e1                                      mov r0, r4
003c6370  52 25 e0 e7                                      ubfx r2, r2, #0xa, #1
003c6374  00 10 e0 e3                                      mvn r1, #0
003c6378  00 c0 8d e5                                      str ip, [sp]
003c637c  70 ff ff eb                                      bl #0x3c6144
003c6380  d4 ff ff ea                                      b #0x3c62d8
; mapping-symbol data/literal pool
003c6384  a0 ec 4f 00 e4 e7 5c 00 f4 37 00 00 3c ec 4f 00  .byte 0xa0, 0xec, 0x4f, 0x00, 0xe4, 0xe7, 0x5c, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x3c, 0xec, 0x4f, 0x00

; FUNCTION 0x003c6394, declared_size=244, range_size=244, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine15SM_SetCastStateEjPvb
; demangled: CharStateMachine::SM_SetCastState(unsigned int, void*, bool)
; decoder-mode: arm
003c6394  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c6398  00 40 a0 e1                                      mov r4, r0
003c639c  04 00 90 e5                                      ldr r0, [r0, #4]
003c63a0  03 70 a0 e1                                      mov r7, r3
003c63a4  01 50 a0 e1                                      mov r5, r1
003c63a8  02 60 a0 e1                                      mov r6, r2
003c63ac  9d 73 ff eb                                      bl #0x3a3228
003c63b0  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
003c63b4  00 00 50 e3                                      cmp r0, #0
003c63b8  03 30 8f e0                                      add r3, pc, r3
003c63bc  0c 00 00 ba                                      blt #0x3c63f4
003c63c0  ac 20 9f e5                                      ldr r2, [pc, #0xac]
003c63c4  02 20 93 e7                                      ldr r2, [r3, r2]
003c63c8  00 20 92 e5                                      ldr r2, [r2]
003c63cc  02 00 50 e1                                      cmp r0, r2
003c63d0  07 00 00 aa                                      bge #0x3c63f4
003c63d4  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
003c63d8  a0 10 a0 e3                                      mov r1, #0xa0
003c63dc  02 20 93 e7                                      ldr r2, [r3, r2]
003c63e0  00 20 92 e5                                      ldr r2, [r2]
003c63e4  91 20 20 e0                                      mla r0, r1, r0, r2
003c63e8  84 20 90 e5                                      ldr r2, [r0, #0x84]
003c63ec  05 00 52 e1                                      cmp r2, r5
003c63f0  00 00 00 8a                                      bhi #0x3c63f8
003c63f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c63f8  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
003c63fc  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
003c6400  02 20 93 e7                                      ldr r2, [r3, r2]
003c6404  88 30 90 e5                                      ldr r3, [r0, #0x88]
003c6408  01 10 8f e0                                      add r1, pc, r1
003c640c  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c6410  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003c6414  05 51 93 e7                                      ldr r5, [r3, r5, lsl #2]
003c6418  02 20 8f e0                                      add r2, pc, r2
003c641c  ee f9 03 eb                                      bl #0x4c4bdc
003c6420  01 05 10 e2                                      ands r0, r0, #0x400000
003c6424  0e 00 00 1a                                      bne #0x3c6464
003c6428  05 50 80 e0                                      add r5, r0, r5
003c642c  00 00 57 e3                                      cmp r7, #0
003c6430  28 50 84 e5                                      str r5, [r4, #0x28]
003c6434  04 00 00 1a                                      bne #0x3c644c
003c6438  04 00 a0 e1                                      mov r0, r4
003c643c  06 20 a0 e1                                      mov r2, r6
003c6440  56 13 0c e3                                      movw r1, #0xc356
003c6444  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003c6448  8d fc ff ea                                      b #0x3c5684
003c644c  04 00 a0 e1                                      mov r0, r4
003c6450  06 30 a0 e1                                      mov r3, r6
003c6454  07 10 a0 e3                                      mov r1, #7
003c6458  56 23 0c e3                                      movw r2, #0xc356
003c645c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003c6460  34 ed ff ea                                      b #0x3c1938
003c6464  04 00 94 e5                                      ldr r0, [r4, #4]
003c6468  dc 7b ff eb                                      bl #0x3a53e0
003c646c  ed ff ff ea                                      b #0x3c6428
; mapping-symbol data/literal pool
003c6470  d8 e6 5c 00 c0 28 00 00 44 48 00 00 f4 37 00 00  .byte 0xd8, 0xe6, 0x5c, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003c6480  b0 e7 4f 00 b0 e7 4f 00                          .byte 0xb0, 0xe7, 0x4f, 0x00, 0xb0, 0xe7, 0x4f, 0x00

; FUNCTION 0x003c6488, declared_size=36, range_size=36, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine17SM_SetAttackStateEPvb
; demangled: CharStateMachine::SM_SetAttackState(void*, bool)
; decoder-mode: arm
003c6488  00 00 52 e3                                      cmp r2, #0
003c648c  02 00 00 1a                                      bne #0x3c649c
003c6490  01 20 a0 e1                                      mov r2, r1
003c6494  54 13 0c e3                                      movw r1, #0xc354
003c6498  79 fc ff ea                                      b #0x3c5684
003c649c  01 30 a0 e1                                      mov r3, r1
003c64a0  54 23 0c e3                                      movw r2, #0xc354
003c64a4  05 10 a0 e3                                      mov r1, #5
003c64a8  22 ed ff ea                                      b #0x3c1938

; FUNCTION 0x003c64ac, declared_size=348, range_size=348, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine19SM_SetInteractStateEibPvb
; demangled: CharStateMachine::SM_SetInteractState(int, bool, void*, bool)
; decoder-mode: arm
003c64ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c64b0  00 40 a0 e1                                      mov r4, r0
003c64b4  04 00 90 e5                                      ldr r0, [r0, #4]
003c64b8  03 70 a0 e1                                      mov r7, r3
003c64bc  01 50 a0 e1                                      mov r5, r1
003c64c0  02 60 a0 e1                                      mov r6, r2
003c64c4  20 80 dd e5                                      ldrb r8, [sp, #0x20]
003c64c8  56 73 ff eb                                      bl #0x3a3228
003c64cc  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
003c64d0  00 00 50 e3                                      cmp r0, #0
003c64d4  03 30 8f e0                                      add r3, pc, r3
003c64d8  12 00 00 ba                                      blt #0x3c6528
003c64dc  10 21 9f e5                                      ldr r2, [pc, #0x110]
003c64e0  02 20 93 e7                                      ldr r2, [r3, r2]
003c64e4  00 20 92 e5                                      ldr r2, [r2]
003c64e8  02 00 50 e1                                      cmp r0, r2
003c64ec  0d 00 00 aa                                      bge #0x3c6528
003c64f0  00 21 9f e5                                      ldr r2, [pc, #0x100]
003c64f4  08 00 55 e3                                      cmp r5, #8
003c64f8  02 20 93 e7                                      ldr r2, [r3, r2]
003c64fc  00 20 92 e5                                      ldr r2, [r2]
003c6500  27 00 00 0a                                      beq #0x3c65a4
003c6504  0a 00 55 e3                                      cmp r5, #0xa
003c6508  2d 00 00 0a                                      beq #0x3c65c4
003c650c  00 00 55 e3                                      cmp r5, #0
003c6510  04 00 00 ba                                      blt #0x3c6528
003c6514  a0 10 a0 e3                                      mov r1, #0xa0
003c6518  91 20 20 e0                                      mla r0, r1, r0, r2
003c651c  40 20 90 e5                                      ldr r2, [r0, #0x40]
003c6520  02 00 55 e1                                      cmp r5, r2
003c6524  00 00 00 ba                                      blt #0x3c652c
003c6528  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c652c  c8 20 9f e5                                      ldr r2, [pc, #0xc8]
003c6530  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
003c6534  02 20 93 e7                                      ldr r2, [r3, r2]
003c6538  44 30 90 e5                                      ldr r3, [r0, #0x44]
003c653c  01 10 8f e0                                      add r1, pc, r1
003c6540  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c6544  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
003c6548  05 a1 93 e7                                      ldr sl, [r3, r5, lsl #2]
003c654c  02 20 8f e0                                      add r2, pc, r2
003c6550  a1 f9 03 eb                                      bl #0x4c4bdc
003c6554  02 05 10 e2                                      ands r0, r0, #0x800000
003c6558  21 00 00 1a                                      bne #0x3c65e4
003c655c  0a a0 80 e0                                      add sl, r0, sl
003c6560  00 00 58 e3                                      cmp r8, #0
003c6564  28 a0 84 e5                                      str sl, [r4, #0x28]
003c6568  48 50 84 e5                                      str r5, [r4, #0x48]
003c656c  4c 60 c4 e5                                      strb r6, [r4, #0x4c]
003c6570  50 70 84 e5                                      str r7, [r4, #0x50]
003c6574  04 00 00 1a                                      bne #0x3c658c
003c6578  04 00 a0 e1                                      mov r0, r4
003c657c  07 20 a0 e1                                      mov r2, r7
003c6580  53 13 0c e3                                      movw r1, #0xc353
003c6584  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c6588  3d fc ff ea                                      b #0x3c5684
003c658c  04 00 a0 e1                                      mov r0, r4
003c6590  07 30 a0 e1                                      mov r3, r7
003c6594  0d 10 a0 e3                                      mov r1, #0xd
003c6598  53 23 0c e3                                      movw r2, #0xc353
003c659c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c65a0  e4 ec ff ea                                      b #0x3c1938
003c65a4  04 00 a0 e1                                      mov r0, r4
003c65a8  07 10 a0 e1                                      mov r1, r7
003c65ac  08 20 a0 e1                                      mov r2, r8
003c65b0  48 50 84 e5                                      str r5, [r4, #0x48]
003c65b4  4c 60 c4 e5                                      strb r6, [r4, #0x4c]
003c65b8  50 70 84 e5                                      str r7, [r4, #0x50]
003c65bc  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c65c0  b0 ff ff ea                                      b #0x3c6488
003c65c4  04 00 a0 e1                                      mov r0, r4
003c65c8  07 10 a0 e1                                      mov r1, r7
003c65cc  08 20 a0 e1                                      mov r2, r8
003c65d0  48 50 84 e5                                      str r5, [r4, #0x48]
003c65d4  4c 60 c4 e5                                      strb r6, [r4, #0x4c]
003c65d8  50 70 84 e5                                      str r7, [r4, #0x50]
003c65dc  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c65e0  af fc ff ea                                      b #0x3c58a4
003c65e4  04 00 94 e5                                      ldr r0, [r4, #4]
003c65e8  7c 7b ff eb                                      bl #0x3a53e0
003c65ec  da ff ff ea                                      b #0x3c655c
; mapping-symbol data/literal pool
003c65f0  bc e5 5c 00 c0 28 00 00 44 48 00 00 f4 37 00 00  .byte 0xbc, 0xe5, 0x5c, 0x00, 0xc0, 0x28, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003c6600  7c e6 4f 00 7c e6 4f 00                          .byte 0x7c, 0xe6, 0x4f, 0x00, 0x7c, 0xe6, 0x4f, 0x00

; FUNCTION 0x003c6670, declared_size=180, range_size=180, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine16SM_SetSkillStateEjbPvb
; demangled: CharStateMachine::SM_SetSkillState(unsigned int, bool, void*, bool)
; decoder-mode: arm
003c6670  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c6674  00 40 a0 e1                                      mov r4, r0
003c6678  04 00 90 e5                                      ldr r0, [r0, #4]
003c667c  02 90 a0 e1                                      mov sb, r2
003c6680  03 60 a0 e1                                      mov r6, r3
003c6684  01 70 a0 e1                                      mov r7, r1
003c6688  20 80 dd e5                                      ldrb r8, [sp, #0x20]
003c668c  3c d8 ff eb                                      bl #0x3bc784
003c6690  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
003c6694  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003c6698  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
003c669c  05 50 8f e0                                      add r5, pc, r5
003c66a0  03 30 95 e7                                      ldr r3, [r5, r3]
003c66a4  74 20 9f e5                                      ldr r2, [pc, #0x74]
003c66a8  04 a0 90 e5                                      ldr sl, [r0, #4]
003c66ac  01 10 8f e0                                      add r1, pc, r1
003c66b0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003c66b4  02 20 8f e0                                      add r2, pc, r2
003c66b8  47 f9 03 eb                                      bl #0x4c4bdc
003c66bc  02 06 10 e2                                      ands r0, r0, #0x200000
003c66c0  10 00 00 1a                                      bne #0x3c6708
003c66c4  0a a0 80 e0                                      add sl, r0, sl
003c66c8  00 00 58 e3                                      cmp r8, #0
003c66cc  28 a0 84 e5                                      str sl, [r4, #0x28]
003c66d0  54 70 84 e5                                      str r7, [r4, #0x54]
003c66d4  58 90 c4 e5                                      strb sb, [r4, #0x58]
003c66d8  04 00 00 1a                                      bne #0x3c66f0
003c66dc  04 00 a0 e1                                      mov r0, r4
003c66e0  06 20 a0 e1                                      mov r2, r6
003c66e4  55 13 0c e3                                      movw r1, #0xc355
003c66e8  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c66ec  e4 fb ff ea                                      b #0x3c5684
003c66f0  04 00 a0 e1                                      mov r0, r4
003c66f4  06 30 a0 e1                                      mov r3, r6
003c66f8  06 10 a0 e3                                      mov r1, #6
003c66fc  55 23 0c e3                                      movw r2, #0xc355
003c6700  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003c6704  8b ec ff ea                                      b #0x3c1938
003c6708  04 00 94 e5                                      ldr r0, [r4, #4]
003c670c  33 7b ff eb                                      bl #0x3a53e0
003c6710  eb ff ff ea                                      b #0x3c66c4
; mapping-symbol data/literal pool
003c6714  f4 e3 5c 00 f4 37 00 00 0c e5 4f 00 14 e5 4f 00  .byte 0xf4, 0xe3, 0x5c, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x0c, 0xe5, 0x4f, 0x00, 0x14, 0xe5, 0x4f, 0x00

; FUNCTION 0x003c7318, declared_size=408, range_size=408, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine13RegisterStateEi
; demangled: CharStateMachine::RegisterState(int)
; decoder-mode: arm
003c7318  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003c731c  78 41 9f e5                                      ldr r4, [pc, #0x178]
003c7320  78 51 9f e5                                      ldr r5, [pc, #0x178]
003c7324  0c 30 90 e5                                      ldr r3, [r0, #0xc]
003c7328  04 40 8f e0                                      add r4, pc, r4
003c732c  05 20 94 e7                                      ldr r2, [r4, r5]
003c7330  2c d0 4d e2                                      sub sp, sp, #0x2c
003c7334  00 00 53 e3                                      cmp r3, #0
003c7338  00 20 92 e5                                      ldr r2, [r2]
003c733c  00 70 a0 e1                                      mov r7, r0
003c7340  04 10 8d e5                                      str r1, [sp, #4]
003c7344  08 80 80 e2                                      add r8, r0, #8
003c7348  24 20 8d e5                                      str r2, [sp, #0x24]
003c734c  18 00 00 0a                                      beq #0x3c73b4
003c7350  08 00 a0 e1                                      mov r0, r8
003c7354  01 00 00 ea                                      b #0x3c7360
003c7358  03 00 a0 e1                                      mov r0, r3
003c735c  02 30 a0 e1                                      mov r3, r2
003c7360  10 20 93 e5                                      ldr r2, [r3, #0x10]
003c7364  01 00 52 e1                                      cmp r2, r1
003c7368  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
003c736c  08 20 93 a5                                      ldrge r2, [r3, #8]
003c7370  00 30 a0 b1                                      movlt r3, r0
003c7374  00 00 52 e3                                      cmp r2, #0
003c7378  f6 ff ff 1a                                      bne #0x3c7358
003c737c  03 00 58 e1                                      cmp r8, r3
003c7380  0e 00 00 0a                                      beq #0x3c73c0
003c7384  10 20 93 e5                                      ldr r2, [r3, #0x10]
003c7388  02 00 51 e1                                      cmp r1, r2
003c738c  08 00 00 ba                                      blt #0x3c73b4
003c7390  03 00 58 e1                                      cmp r8, r3
003c7394  09 00 00 0a                                      beq #0x3c73c0
003c7398  05 30 94 e7                                      ldr r3, [r4, r5]
003c739c  24 20 9d e5                                      ldr r2, [sp, #0x24]
003c73a0  00 30 93 e5                                      ldr r3, [r3]
003c73a4  03 00 52 e1                                      cmp r2, r3
003c73a8  3a 00 00 1a                                      bne #0x3c7498
003c73ac  2c d0 8d e2                                      add sp, sp, #0x2c
003c73b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003c73b4  08 30 a0 e1                                      mov r3, r8
003c73b8  03 00 58 e1                                      cmp r8, r3
003c73bc  f5 ff ff 1a                                      bne #0x3c7398
003c73c0  dc a0 9f e5                                      ldr sl, [pc, #0xdc]
003c73c4  04 10 9d e5                                      ldr r1, [sp, #4]
003c73c8  00 30 a0 e3                                      mov r3, #0
003c73cc  0a a0 8f e0                                      add sl, pc, sl
003c73d0  02 00 00 ea                                      b #0x3c73e0
003c73d4  01 30 83 e2                                      add r3, r3, #1
003c73d8  14 00 53 e3                                      cmp r3, #0x14
003c73dc  ed ff ff 0a                                      beq #0x3c7398
003c73e0  83 21 9a e7                                      ldr r2, [sl, r3, lsl #3]
003c73e4  83 91 a0 e1                                      lsl sb, r3, #3
003c73e8  02 00 51 e1                                      cmp r1, r2
003c73ec  f8 ff ff 1a                                      bne #0x3c73d4
003c73f0  04 b0 8d e2                                      add fp, sp, #4
003c73f4  0b 10 a0 e1                                      mov r1, fp
003c73f8  08 00 a0 e1                                      mov r0, r8
003c73fc  77 ff ff eb                                      bl #0x3c71e0
003c7400  04 30 9d e5                                      ldr r3, [sp, #4]
003c7404  0b 10 a0 e1                                      mov r1, fp
003c7408  09 a0 8a e0                                      add sl, sl, sb
003c740c  00 30 80 e5                                      str r3, [r0]
003c7410  08 00 a0 e1                                      mov r0, r8
003c7414  71 ff ff eb                                      bl #0x3c71e0
003c7418  00 00 8d e5                                      str r0, [sp]
003c741c  0f e0 a0 e1                                      mov lr, pc
003c7420  04 f0 9a e5                                      ldr pc, [sl, #4]
003c7424  00 30 9d e5                                      ldr r3, [sp]
003c7428  0b 10 a0 e1                                      mov r1, fp
003c742c  0c 60 8d e2                                      add r6, sp, #0xc
003c7430  04 00 83 e5                                      str r0, [r3, #4]
003c7434  08 00 a0 e1                                      mov r0, r8
003c7438  68 ff ff eb                                      bl #0x3c71e0
003c743c  04 c0 90 e5                                      ldr ip, [r0, #4]
003c7440  04 10 9d e5                                      ldr r1, [sp, #4]
003c7444  04 20 97 e5                                      ldr r2, [r7, #4]
003c7448  07 30 a0 e1                                      mov r3, r7
003c744c  0c 00 a0 e1                                      mov r0, ip
003c7450  00 c0 9c e5                                      ldr ip, [ip]
003c7454  0f e0 a0 e1                                      mov lr, pc
003c7458  08 f0 9c e5                                      ldr pc, [ip, #8]
003c745c  44 30 9f e5                                      ldr r3, [pc, #0x44]
003c7460  03 70 94 e7                                      ldr r7, [r4, r3]
003c7464  07 00 a0 e1                                      mov r0, r7
003c7468  06 c1 fd eb                                      bl #0x337888
003c746c  38 10 9f e5                                      ldr r1, [pc, #0x38]
003c7470  08 20 8d e2                                      add r2, sp, #8
003c7474  06 00 a0 e1                                      mov r0, r6
003c7478  01 10 8f e0                                      add r1, pc, r1
003c747c  1a 33 fd eb                                      bl #0x3140ec
003c7480  07 00 a0 e1                                      mov r0, r7
003c7484  06 10 a0 e1                                      mov r1, r6
003c7488  7e c1 fd eb                                      bl #0x337a88
003c748c  06 00 a0 e1                                      mov r0, r6
003c7490  6f 43 fd eb                                      bl #0x318254
003c7494  bf ff ff ea                                      b #0x3c7398
003c7498  9c 1b fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c749c  68 d7 5c 00 ac 40 00 00 ec f2 59 00 84 08 00 00  .byte 0x68, 0xd7, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xec, 0xf2, 0x59, 0x00, 0x84, 0x08, 0x00, 0x00
003c74ac  b8 da 4f 00                                      .byte 0xb8, 0xda, 0x4f, 0x00

; FUNCTION 0x003c7b18, declared_size=424, range_size=424, mode=arm
; class-group: CharStateMachine
; alias: _ZN16CharStateMachine16SM_RegisterEventEiiiM9CharacterFbiPviRiE
; demangled: CharStateMachine::SM_RegisterEvent(int, int, int, bool (Character::*)(int, void*, int, int&))
; decoder-mode: arm
003c7b18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003c7b1c  0c 40 90 e5                                      ldr r4, [r0, #0xc]
003c7b20  30 d0 4d e2                                      sub sp, sp, #0x30
003c7b24  02 50 a0 e1                                      mov r5, r2
003c7b28  00 00 54 e3                                      cmp r4, #0
003c7b2c  03 a0 a0 e1                                      mov sl, r3
003c7b30  50 70 9d e5                                      ldr r7, [sp, #0x50]
003c7b34  54 80 9d e5                                      ldr r8, [sp, #0x54]
003c7b38  08 00 80 e2                                      add r0, r0, #8
003c7b3c  41 00 00 0a                                      beq #0x3c7c48
003c7b40  00 20 a0 e1                                      mov r2, r0
003c7b44  00 00 00 ea                                      b #0x3c7b4c
003c7b48  03 40 a0 e1                                      mov r4, r3
003c7b4c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003c7b50  03 00 51 e1                                      cmp r1, r3
003c7b54  0c 30 94 c5                                      ldrgt r3, [r4, #0xc]
003c7b58  08 30 94 d5                                      ldrle r3, [r4, #8]
003c7b5c  02 40 a0 c1                                      movgt r4, r2
003c7b60  04 20 a0 e1                                      mov r2, r4
003c7b64  00 00 53 e3                                      cmp r3, #0
003c7b68  f6 ff ff 1a                                      bne #0x3c7b48
003c7b6c  04 00 50 e1                                      cmp r0, r4
003c7b70  32 00 00 0a                                      beq #0x3c7c40
003c7b74  10 30 94 e5                                      ldr r3, [r4, #0x10]
003c7b78  03 00 51 e1                                      cmp r1, r3
003c7b7c  31 00 00 ba                                      blt #0x3c7c48
003c7b80  04 00 50 e1                                      cmp r0, r4
003c7b84  2d 00 00 0a                                      beq #0x3c7c40
003c7b88  20 c0 94 e5                                      ldr ip, [r4, #0x20]
003c7b8c  1c 60 84 e2                                      add r6, r4, #0x1c
003c7b90  00 00 5c e3                                      cmp ip, #0
003c7b94  06 c0 a0 01                                      moveq ip, r6
003c7b98  0a 00 00 0a                                      beq #0x3c7bc8
003c7b9c  06 20 a0 e1                                      mov r2, r6
003c7ba0  00 00 00 ea                                      b #0x3c7ba8
003c7ba4  03 c0 a0 e1                                      mov ip, r3
003c7ba8  10 30 9c e5                                      ldr r3, [ip, #0x10]
003c7bac  05 00 53 e1                                      cmp r3, r5
003c7bb0  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
003c7bb4  08 30 9c a5                                      ldrge r3, [ip, #8]
003c7bb8  02 c0 a0 b1                                      movlt ip, r2
003c7bbc  0c 20 a0 e1                                      mov r2, ip
003c7bc0  00 00 53 e3                                      cmp r3, #0
003c7bc4  f6 ff ff 1a                                      bne #0x3c7ba4
003c7bc8  0c 00 56 e1                                      cmp r6, ip
003c7bcc  2d 00 00 0a                                      beq #0x3c7c88
003c7bd0  10 20 9c e5                                      ldr r2, [ip, #0x10]
003c7bd4  0c 30 a0 e1                                      mov r3, ip
003c7bd8  05 00 52 e1                                      cmp r2, r5
003c7bdc  29 00 00 ca                                      bgt #0x3c7c88
003c7be0  14 70 83 e5                                      str r7, [r3, #0x14]
003c7be4  18 80 83 e5                                      str r8, [r3, #0x18]
003c7be8  20 c0 94 e5                                      ldr ip, [r4, #0x20]
003c7bec  00 00 5c e3                                      cmp ip, #0
003c7bf0  06 c0 a0 01                                      moveq ip, r6
003c7bf4  0a 00 00 0a                                      beq #0x3c7c24
003c7bf8  06 20 a0 e1                                      mov r2, r6
003c7bfc  00 00 00 ea                                      b #0x3c7c04
003c7c00  03 c0 a0 e1                                      mov ip, r3
003c7c04  10 30 9c e5                                      ldr r3, [ip, #0x10]
003c7c08  05 00 53 e1                                      cmp r3, r5
003c7c0c  0c 30 9c b5                                      ldrlt r3, [ip, #0xc]
003c7c10  08 30 9c a5                                      ldrge r3, [ip, #8]
003c7c14  02 c0 a0 b1                                      movlt ip, r2
003c7c18  0c 20 a0 e1                                      mov r2, ip
003c7c1c  00 00 53 e3                                      cmp r3, #0
003c7c20  f6 ff ff 1a                                      bne #0x3c7c00
003c7c24  0c 00 56 e1                                      cmp r6, ip
003c7c28  08 00 00 0a                                      beq #0x3c7c50
003c7c2c  10 20 9c e5                                      ldr r2, [ip, #0x10]
003c7c30  0c 30 a0 e1                                      mov r3, ip
003c7c34  05 00 52 e1                                      cmp r2, r5
003c7c38  04 00 00 ca                                      bgt #0x3c7c50
003c7c3c  1c a0 83 e5                                      str sl, [r3, #0x1c]
003c7c40  30 d0 8d e2                                      add sp, sp, #0x30
003c7c44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003c7c48  00 40 a0 e1                                      mov r4, r0
003c7c4c  cb ff ff ea                                      b #0x3c7b80
003c7c50  00 e0 a0 e3                                      mov lr, #0
003c7c54  0d 30 a0 e1                                      mov r3, sp
003c7c58  06 10 a0 e1                                      mov r1, r6
003c7c5c  20 00 8d e2                                      add r0, sp, #0x20
003c7c60  24 20 8d e2                                      add r2, sp, #0x24
003c7c64  00 40 e0 e3                                      mvn r4, #0
003c7c68  00 50 8d e5                                      str r5, [sp]
003c7c6c  0c 40 8d e5                                      str r4, [sp, #0xc]
003c7c70  04 e0 8d e5                                      str lr, [sp, #4]
003c7c74  24 c0 8d e5                                      str ip, [sp, #0x24]
003c7c78  08 e0 8d e5                                      str lr, [sp, #8]
003c7c7c  c8 fe ff eb                                      bl #0x3c77a4
003c7c80  20 30 9d e5                                      ldr r3, [sp, #0x20]
003c7c84  ec ff ff ea                                      b #0x3c7c3c
003c7c88  00 e0 a0 e3                                      mov lr, #0
003c7c8c  10 30 8d e2                                      add r3, sp, #0x10
003c7c90  28 00 8d e2                                      add r0, sp, #0x28
003c7c94  06 10 a0 e1                                      mov r1, r6
003c7c98  2c 20 8d e2                                      add r2, sp, #0x2c
003c7c9c  00 90 e0 e3                                      mvn sb, #0
003c7ca0  1c 90 8d e5                                      str sb, [sp, #0x1c]
003c7ca4  14 e0 8d e5                                      str lr, [sp, #0x14]
003c7ca8  2c c0 8d e5                                      str ip, [sp, #0x2c]
003c7cac  10 50 8d e5                                      str r5, [sp, #0x10]
003c7cb0  18 e0 8d e5                                      str lr, [sp, #0x18]
003c7cb4  ba fe ff eb                                      bl #0x3c77a4
003c7cb8  28 30 9d e5                                      ldr r3, [sp, #0x28]
003c7cbc  c7 ff ff ea                                      b #0x3c7be0
